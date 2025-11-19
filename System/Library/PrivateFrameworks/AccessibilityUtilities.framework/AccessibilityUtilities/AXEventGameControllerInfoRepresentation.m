@interface AXEventGameControllerInfoRepresentation
- (AXEventGameControllerInfoRepresentation)initWithCoder:(id)a3;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXEventGameControllerInfoRepresentation

- (AXEventGameControllerInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXEventGameControllerInfoRepresentation;
  v5 = [(AXEventGameControllerInfoRepresentation *)&v7 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"directionPadUp"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadUp:?];
    [v4 decodeDoubleForKey:@"directionPadDown"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadDown:?];
    [v4 decodeDoubleForKey:@"directionPadLeft"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadLeft:?];
    [v4 decodeDoubleForKey:@"directionPadRight"];
    [(AXEventGameControllerInfoRepresentation *)v5 setDirectionPadRight:?];
    [v4 decodeDoubleForKey:@"faceButtonA"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonA:?];
    [v4 decodeDoubleForKey:@"faceButtonB"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonB:?];
    [v4 decodeDoubleForKey:@"faceButtonX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonX:?];
    [v4 decodeDoubleForKey:@"faceButtonY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setFaceButtonY:?];
    [v4 decodeDoubleForKey:@"shoulderButtonL1"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonL1:?];
    [v4 decodeDoubleForKey:@"shoulderButtonL2"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonL2:?];
    [v4 decodeDoubleForKey:@"shoulderButtonR1"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonR1:?];
    [v4 decodeDoubleForKey:@"shoulderButtonR2"];
    [(AXEventGameControllerInfoRepresentation *)v5 setShoulderButtonR2:?];
    [v4 decodeDoubleForKey:@"leftJoystickX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickX:?];
    [v4 decodeDoubleForKey:@"leftJoystickY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickY:?];
    [v4 decodeDoubleForKey:@"leftJoystickButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setLeftJoystickButton:?];
    [v4 decodeDoubleForKey:@"rightJoystickX"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickX:?];
    [v4 decodeDoubleForKey:@"rightJoystickY"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickY:?];
    [v4 decodeDoubleForKey:@"rightJoystickButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setRightJoystickButton:?];
    [v4 decodeDoubleForKey:@"menuButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setMenuButton:?];
    [v4 decodeDoubleForKey:@"viewButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setViewButton:?];
    [v4 decodeDoubleForKey:@"homeButton"];
    [(AXEventGameControllerInfoRepresentation *)v5 setHomeButton:?];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AXEventGameControllerInfoRepresentation *)self directionPadUp];
  [v4 encodeDouble:@"directionPadUp" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadDown];
  [v4 encodeDouble:@"directionPadDown" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadLeft];
  [v4 encodeDouble:@"directionPadLeft" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self directionPadRight];
  [v4 encodeDouble:@"directionPadRight" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonA];
  [v4 encodeDouble:@"faceButtonA" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonB];
  [v4 encodeDouble:@"faceButtonB" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonX];
  [v4 encodeDouble:@"faceButtonX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self faceButtonY];
  [v4 encodeDouble:@"faceButtonY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL1];
  [v4 encodeDouble:@"shoulderButtonL1" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonL2];
  [v4 encodeDouble:@"shoulderButtonL2" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR1];
  [v4 encodeDouble:@"shoulderButtonR1" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self shoulderButtonR2];
  [v4 encodeDouble:@"shoulderButtonR2" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickX];
  [v4 encodeDouble:@"leftJoystickX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickY];
  [v4 encodeDouble:@"leftJoystickY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self leftJoystickButton];
  [v4 encodeDouble:@"leftJoystickButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickX];
  [v4 encodeDouble:@"rightJoystickX" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickY];
  [v4 encodeDouble:@"rightJoystickY" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [v4 encodeDouble:@"rightJoystickButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [v4 encodeDouble:@"menuButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [v4 encodeDouble:@"viewButton" forKey:?];
  [(AXEventGameControllerInfoRepresentation *)self rightJoystickButton];
  [v4 encodeDouble:@"homeButton" forKey:?];
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