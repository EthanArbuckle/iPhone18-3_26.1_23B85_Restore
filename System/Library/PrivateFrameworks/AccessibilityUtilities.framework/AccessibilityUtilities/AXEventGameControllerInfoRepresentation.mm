@interface AXEventGameControllerInfoRepresentation
- (AXEventGameControllerInfoRepresentation)initWithCoder:(id)coder;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXEventGameControllerInfoRepresentation

- (AXEventGameControllerInfoRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AXEventGameControllerInfoRepresentation;
  v5 = [(AXEventGameControllerInfoRepresentation *)&v7 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"directionPadUp"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadUp:?];
    [coderCopy decodeDoubleForKey:@"directionPadDown"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadDown:?];
    [coderCopy decodeDoubleForKey:@"directionPadLeft"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadLeft:?];
    [coderCopy decodeDoubleForKey:@"directionPadRight"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadRight:?];
    [coderCopy decodeDoubleForKey:@"faceButtonA"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonA:?];
    [coderCopy decodeDoubleForKey:@"faceButtonB"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonB:?];
    [coderCopy decodeDoubleForKey:@"faceButtonX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonX:?];
    [coderCopy decodeDoubleForKey:@"faceButtonY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonY:?];
    [coderCopy decodeDoubleForKey:@"shoulderButtonL1"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonL1:?];
    [coderCopy decodeDoubleForKey:@"shoulderButtonL2"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonL2:?];
    [coderCopy decodeDoubleForKey:@"shoulderButtonR1"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonR1:?];
    [coderCopy decodeDoubleForKey:@"shoulderButtonR2"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonR2:?];
    [coderCopy decodeDoubleForKey:@"leftJoystickX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickX:?];
    [coderCopy decodeDoubleForKey:@"leftJoystickY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickY:?];
    [coderCopy decodeDoubleForKey:@"leftJoystickButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickButton:?];
    [coderCopy decodeDoubleForKey:@"rightJoystickX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickX:?];
    [coderCopy decodeDoubleForKey:@"rightJoystickY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickY:?];
    [coderCopy decodeDoubleForKey:@"rightJoystickButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickButton:?];
    [coderCopy decodeDoubleForKey:@"menuButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setMenuButton:?];
    [coderCopy decodeDoubleForKey:@"viewButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setViewButton:?];
    [coderCopy decodeDoubleForKey:@"homeButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setHomeButton:?];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXEventGameControllerInfoRepresentation);
  [(AXEventGameControllerInfoRepresentation *)self directionPadUp];
  [(AXEventGameControllerInfoRepresentation *)v4 setDirectionPadUp:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadDown];
  [(AXEventGameControllerInfoRepresentation *)v4 setDirectionPadDown:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadLeft];
  [(AXEventGameControllerInfoRepresentation *)v4 setDirectionPadLeft:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadRight];
  [(AXEventGameControllerInfoRepresentation *)v4 setDirectionPadRight:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonA];
  [(AXEventGameControllerInfoRepresentation *)v4 setFaceButtonA:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonB];
  [(AXEventGameControllerInfoRepresentation *)v4 setFaceButtonB:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonX];
  [(AXEventGameControllerInfoRepresentation *)v4 setFaceButtonX:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonY];
  [(AXEventGameControllerInfoRepresentation *)v4 setFaceButtonY:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL1];
  [(AXEventGameControllerInfoRepresentation *)v4 setShoulderButtonL1:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL2];
  [(AXEventGameControllerInfoRepresentation *)v4 setShoulderButtonL2:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR1];
  [(AXEventGameControllerInfoRepresentation *)v4 setShoulderButtonR1:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR2];
  [(AXEventGameControllerInfoRepresentation *)v4 setShoulderButtonR2:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickX];
  [(AXEventGameControllerInfoRepresentation *)v4 setLeftJoystickX:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickY];
  [(AXEventGameControllerInfoRepresentation *)v4 setLeftJoystickY:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickButton];
  [(AXEventGameControllerInfoRepresentation *)v4 setLeftJoystickButton:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickX];
  [(AXEventGameControllerInfoRepresentation *)v4 setRightJoystickX:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickY];
  [(AXEventGameControllerInfoRepresentation *)v4 setRightJoystickY:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [(AXEventGameControllerInfoRepresentation *)v4 setRightJoystickButton:?];
  [(AXEventGameControllerInfoRepresentation *)self menuButton];
  [(AXEventGameControllerInfoRepresentation *)v4 setMenuButton:?];
  [(AXEventGameControllerInfoRepresentation *)self viewButton];
  [(AXEventGameControllerInfoRepresentation *)v4 setViewButton:?];
  [(AXEventGameControllerInfoRepresentation *)self homeButton];
  [(AXEventGameControllerInfoRepresentation *)v4 setHomeButton:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AXEventGameControllerInfoRepresentation *)self directionPadUp];
  [coderCopy encodeDouble:@"directionPadUp" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadDown];
  [coderCopy encodeDouble:@"directionPadDown" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadLeft];
  [coderCopy encodeDouble:@"directionPadLeft" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadRight];
  [coderCopy encodeDouble:@"directionPadRight" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonA];
  [coderCopy encodeDouble:@"faceButtonA" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonB];
  [coderCopy encodeDouble:@"faceButtonB" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonX];
  [coderCopy encodeDouble:@"faceButtonX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonY];
  [coderCopy encodeDouble:@"faceButtonY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL1];
  [coderCopy encodeDouble:@"shoulderButtonL1" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL2];
  [coderCopy encodeDouble:@"shoulderButtonL2" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR1];
  [coderCopy encodeDouble:@"shoulderButtonR1" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR2];
  [coderCopy encodeDouble:@"shoulderButtonR2" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickX];
  [coderCopy encodeDouble:@"leftJoystickX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickY];
  [coderCopy encodeDouble:@"leftJoystickY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickButton];
  [coderCopy encodeDouble:@"leftJoystickButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickX];
  [coderCopy encodeDouble:@"rightJoystickX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickY];
  [coderCopy encodeDouble:@"rightJoystickY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [coderCopy encodeDouble:@"rightJoystickButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [coderCopy encodeDouble:@"menuButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [coderCopy encodeDouble:@"viewButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [coderCopy encodeDouble:@"homeButton" forKey:?];
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(AXEventGameControllerInfoRepresentation *)self directionPadUp];
  v45 = v4;
  [(AXEventGameControllerInfoRepresentation *)self directionPadDown];
  v44 = v5;
  [(AXEventGameControllerInfoRepresentation *)self directionPadLeft];
  v43 = v6;
  [(AXEventGameControllerInfoRepresentation *)self directionPadRight];
  v42 = v7;
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickX];
  v41 = v8;
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickY];
  v40 = v9;
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickX];
  v39 = v10;
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickY];
  v38 = v11;
  [(AXEventGameControllerInfoRepresentation *)self faceButtonA];
  v37 = v12;
  [(AXEventGameControllerInfoRepresentation *)self faceButtonB];
  v36 = v13;
  [(AXEventGameControllerInfoRepresentation *)self faceButtonX];
  v35 = v14;
  [(AXEventGameControllerInfoRepresentation *)self faceButtonY];
  v34 = v15;
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL1];
  v17 = v16;
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL2];
  v19 = v18;
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR1];
  v21 = v20;
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR2];
  v23 = v22;
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickButton];
  v25 = v24;
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  v27 = v26;
  [(AXEventGameControllerInfoRepresentation *)self menuButton];
  v29 = v28;
  [(AXEventGameControllerInfoRepresentation *)self viewButton];
  v31 = v30;
  [(AXEventGameControllerInfoRepresentation *)self homeButton];
  return [v3 stringWithFormat:@" Game Info:\n   D-pad Up: %.2f\n   D-pad Down: %.2f\n   D-pad Left: %.2f\n   D-pad Right: %.2f\n   Left Stick X: %.2f\n   Left Stick Y: %.2f\n   Right Stick X: %.2f\n   Right Stick Y: %.2f\n   A: %.2f\n   B: %.2f\n   X: %.2f\n   Y: %.2f\n   L1: %.2f\n   L2: %.2f\n   R1: %.2f\n   R2: %.2f\n   Left Stick Button: %.2f\n   Right Stick Button: %.2f\n   Menu Button: %.2f\n   View Button: %.2f\n   Home Button: %.2f\n", v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v17, v19, v21, v23, v25, v27, v29, v31, v32];
}

@end