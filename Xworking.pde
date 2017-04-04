import processing.serial.*;
Serial myPort;
float valuex;
float valuey;


void setup()
{
  myPort = new Serial(this, Serial.list()[2], 9600);
  size(1024,1024);
  background(255);
  
}

void draw()
{
  line(valuex, 25, valuex, 25); 
  
} 

void serialEvent(Serial myPort) {
  // get message till line break (ASCII > 13)
  String pot = myPort.readStringUntil(13);
  if(pot != null){
    valuex = float(pot);
    println(valuex);
  }
}