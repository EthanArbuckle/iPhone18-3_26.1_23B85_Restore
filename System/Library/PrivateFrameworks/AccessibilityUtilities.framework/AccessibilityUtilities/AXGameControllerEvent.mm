@interface AXGameControllerEvent
+ (id)axGameControllerInfoRepresentationFromEvent:(__IOHIDEvent *)event;
+ (unsigned)axGameControllerKeyCodeForEvent:(__IOHIDEvent *)event;
@end

@implementation AXGameControllerEvent

+ (unsigned)axGameControllerKeyCodeForEvent:(__IOHIDEvent *)event
{
  IOHIDEventGetFloatMultiple();
  if (v5 != 0.0)
  {
    return 1;
  }

  if (v6 != 0.0)
  {
    return 2;
  }

  if (v7 != 0.0)
  {
    return 3;
  }

  if (v8 != 0.0)
  {
    return 4;
  }

  if (v9 != 0.0)
  {
    return 5;
  }

  if (v10 != 0.0)
  {
    return 6;
  }

  if (v11 != 0.0)
  {
    return 7;
  }

  if (v12 != 0.0)
  {
    return 8;
  }

  if (v13 != 0.0)
  {
    return 9;
  }

  if (v15 != 0.0)
  {
    return 11;
  }

  if (v14 != 0.0)
  {
    return 10;
  }

  if (v16 != 0.0)
  {
    return 12;
  }

  if (v17 != 0.0)
  {
    return 13;
  }

  if (v18 != 0.0)
  {
    return 14;
  }

  if (v19 != 0.0)
  {
    return 15;
  }

  if (v20 != 0.0)
  {
    return 16;
  }

  if (v21 != 0.0)
  {
    return 17;
  }

  if (v22 != 0.0)
  {
    return 18;
  }

  if (v23 == 0.0)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue == 516)
  {
    return 20;
  }

  if (IntegerValue != 547)
  {
    if (IntegerValue == 521)
    {
      return 21;
    }

    return 0;
  }

  return 22;
}

+ (id)axGameControllerInfoRepresentationFromEvent:(__IOHIDEvent *)event
{
  IOHIDEventGetFloatMultiple();
  v3 = objc_alloc_init(AXEventGameControllerInfoRepresentation);
  [(AXEventGameControllerInfoRepresentation *)v3 setDirectionPadUp:v6];
  [(AXEventGameControllerInfoRepresentation *)v3 setDirectionPadDown:v7];
  [(AXEventGameControllerInfoRepresentation *)v3 setDirectionPadLeft:v8];
  [(AXEventGameControllerInfoRepresentation *)v3 setDirectionPadRight:v9];
  [(AXEventGameControllerInfoRepresentation *)v3 setFaceButtonA:v10];
  [(AXEventGameControllerInfoRepresentation *)v3 setFaceButtonB:v11];
  [(AXEventGameControllerInfoRepresentation *)v3 setFaceButtonX:v12];
  [(AXEventGameControllerInfoRepresentation *)v3 setFaceButtonY:v13];
  [(AXEventGameControllerInfoRepresentation *)v3 setShoulderButtonL1:v14];
  [(AXEventGameControllerInfoRepresentation *)v3 setShoulderButtonL2:v16];
  [(AXEventGameControllerInfoRepresentation *)v3 setShoulderButtonR1:v15];
  [(AXEventGameControllerInfoRepresentation *)v3 setShoulderButtonR2:v17];
  [(AXEventGameControllerInfoRepresentation *)v3 setLeftJoystickX:v18];
  [(AXEventGameControllerInfoRepresentation *)v3 setLeftJoystickY:v19];
  [(AXEventGameControllerInfoRepresentation *)v3 setRightJoystickX:v20];
  [(AXEventGameControllerInfoRepresentation *)v3 setRightJoystickY:v21];
  [(AXEventGameControllerInfoRepresentation *)v3 setLeftJoystickButton:v22];
  [(AXEventGameControllerInfoRepresentation *)v3 setRightJoystickButton:v23];
  if (v24 != 0.0)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    switch(IntegerValue)
    {
      case 547:
        [(AXEventGameControllerInfoRepresentation *)v3 setHomeButton:IOHIDEventGetIntegerValue()];
        break;
      case 521:
        [(AXEventGameControllerInfoRepresentation *)v3 setViewButton:IOHIDEventGetIntegerValue()];
        break;
      case 516:
        [(AXEventGameControllerInfoRepresentation *)v3 setMenuButton:IOHIDEventGetIntegerValue()];
        break;
    }
  }

  return v3;
}

@end