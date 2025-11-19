@interface AXEventPointerInfoRepresentation
- (AXEventPointerInfoRepresentation)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXEventPointerInfoRepresentation

- (AXEventPointerInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXEventPointerInfoRepresentation;
  v5 = [(AXEventPointerInfoRepresentation *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"pointerX"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerX:?];
    [v4 decodeDoubleForKey:@"pointerY"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerY:?];
    [v4 decodeDoubleForKey:@"pointerZ"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerZ:?];
    [v4 decodeDoubleForKey:@"pointerAccelX"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelX:?];
    [v4 decodeDoubleForKey:@"pointerAccelY"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelY:?];
    [v4 decodeDoubleForKey:@"pointerAccelZ"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelZ:?];
    -[AXEventPointerInfoRepresentation setIsPointerMove:](v5, "setIsPointerMove:", [v4 decodeBoolForKey:@"isPointerMove"]);
    [v4 decodeDoubleForKey:@"pointerButtonMask"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonMask:?];
    [v4 decodeDoubleForKey:@"pointerButtonNumber"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonNumber:?];
    [v4 decodeDoubleForKey:@"pointerButtonClickCount"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonClickCount:?];
    [v4 decodeDoubleForKey:@"pointerButtonPressure"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonPressure:?];
    -[AXEventPointerInfoRepresentation setPointerIsAbsolute:](v5, "setPointerIsAbsolute:", [v4 decodeBoolForKey:@"pointerIsAbsolute"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceTypeHint"];
    [(AXEventPointerInfoRepresentation *)v5 setDeviceTypeHint:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scrollEvent"];
    [(AXEventPointerInfoRepresentation *)v5 setScrollEvent:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(AXEventPointerInfoRepresentation);
  [(AXEventPointerInfoRepresentation *)self pointerX];
  [(AXEventPointerInfoRepresentation *)v5 setPointerX:?];
  [(AXEventPointerInfoRepresentation *)self pointerY];
  [(AXEventPointerInfoRepresentation *)v5 setPointerY:?];
  [(AXEventPointerInfoRepresentation *)self pointerZ];
  [(AXEventPointerInfoRepresentation *)v5 setPointerZ:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelX];
  [(AXEventPointerInfoRepresentation *)v5 setPointerAccelX:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelY];
  [(AXEventPointerInfoRepresentation *)v5 setPointerAccelY:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelZ];
  [(AXEventPointerInfoRepresentation *)v5 setPointerAccelZ:?];
  [(AXEventPointerInfoRepresentation *)v5 setIsPointerMove:[(AXEventPointerInfoRepresentation *)self isPointerMove]];
  [(AXEventPointerInfoRepresentation *)self pointerButtonMask];
  [(AXEventPointerInfoRepresentation *)v5 setPointerButtonMask:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonNumber];
  [(AXEventPointerInfoRepresentation *)v5 setPointerButtonNumber:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonClickCount];
  [(AXEventPointerInfoRepresentation *)v5 setPointerButtonClickCount:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonPressure];
  [(AXEventPointerInfoRepresentation *)v5 setPointerButtonPressure:?];
  [(AXEventPointerInfoRepresentation *)v5 setPointerIsAbsolute:[(AXEventPointerInfoRepresentation *)self pointerIsAbsolute]];
  v6 = [(AXEventPointerInfoRepresentation *)self deviceTypeHint];
  v7 = [v6 copy];
  [(AXEventPointerInfoRepresentation *)v5 setDeviceTypeHint:v7];

  v8 = [(AXEventPointerInfoRepresentation *)self scrollEvent];
  v9 = [v8 copyWithZone:a3];
  [(AXEventPointerInfoRepresentation *)v5 setScrollEvent:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AXEventPointerInfoRepresentation *)self pointerX];
  [v4 encodeDouble:@"pointerX" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerY];
  [v4 encodeDouble:@"pointerY" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerZ];
  [v4 encodeDouble:@"pointerZ" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelX];
  [v4 encodeDouble:@"pointerAccelX" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelY];
  [v4 encodeDouble:@"pointerAccelY" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelZ];
  [v4 encodeDouble:@"pointerAccelZ" forKey:?];
  [v4 encodeBool:-[AXEventPointerInfoRepresentation isPointerMove](self forKey:{"isPointerMove"), @"isPointerMove"}];
  [(AXEventPointerInfoRepresentation *)self pointerButtonMask];
  [v4 encodeDouble:@"pointerButtonMask" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonNumber];
  [v4 encodeDouble:@"pointerButtonNumber" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonClickCount];
  [v4 encodeDouble:@"pointerButtonClickCount" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonPressure];
  [v4 encodeDouble:@"pointerButtonPressure" forKey:?];
  [v4 encodeBool:-[AXEventPointerInfoRepresentation pointerIsAbsolute](self forKey:{"pointerIsAbsolute"), @"pointerIsAbsolute"}];
  v5 = [(AXEventPointerInfoRepresentation *)self deviceTypeHint];
  [v4 encodeObject:v5 forKey:@"deviceTypeHint"];

  v6 = [(AXEventPointerInfoRepresentation *)self scrollEvent];
  [v4 encodeObject:v6 forKey:@"scrollEvent"];
}

- (id)accessibilityEventRepresentationTabularDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(AXEventPointerInfoRepresentation *)self pointerX];
  v27 = v4;
  [(AXEventPointerInfoRepresentation *)self pointerY];
  v26 = v5;
  [(AXEventPointerInfoRepresentation *)self pointerZ];
  v7 = v6;
  [(AXEventPointerInfoRepresentation *)self pointerAccelX];
  v9 = v8;
  [(AXEventPointerInfoRepresentation *)self pointerAccelY];
  v11 = v10;
  [(AXEventPointerInfoRepresentation *)self pointerAccelZ];
  v13 = v12;
  [(AXEventPointerInfoRepresentation *)self isPointerMove];
  v14 = NSStringFromBOOL();
  [(AXEventPointerInfoRepresentation *)self pointerButtonMask];
  v16 = v15;
  [(AXEventPointerInfoRepresentation *)self pointerButtonNumber];
  v18 = v17;
  [(AXEventPointerInfoRepresentation *)self pointerButtonClickCount];
  v20 = v19;
  [(AXEventPointerInfoRepresentation *)self pointerButtonPressure];
  v22 = v21;
  [(AXEventPointerInfoRepresentation *)self pointerIsAbsolute];
  v23 = NSStringFromBOOL();
  v24 = [v3 stringWithFormat:@" Pointer Info:\n   X: %.2f\n   Y: %.2f\n   Z: %.2f\n   accelX: %.2f\n   accelY: %.2f\n   accelZ: %.2f\n   isMove: %@\n   Button Mask: %.2f\n   Button Number: %.2f\n   Click Count: %.2f\n   Pressure: %.2f\n   isAbsolute: %@\n", v27, v26, v7, v9, v11, v13, v14, v16, v18, v20, v22, v23];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(AXEventPointerInfoRepresentation *)self pointerX];
    v7 = v6;
    [v5 pointerX];
    if (v7 == v8 && (-[AXEventPointerInfoRepresentation pointerY](self, "pointerY"), v10 = v9, [v5 pointerY], v10 == v11) && (-[AXEventPointerInfoRepresentation pointerZ](self, "pointerZ"), v13 = v12, objc_msgSend(v5, "pointerZ"), v13 == v14) && (-[AXEventPointerInfoRepresentation pointerAccelX](self, "pointerAccelX"), v16 = v15, objc_msgSend(v5, "pointerAccelX"), v16 == v17) && (-[AXEventPointerInfoRepresentation pointerAccelY](self, "pointerAccelY"), v19 = v18, objc_msgSend(v5, "pointerAccelY"), v19 == v20) && (-[AXEventPointerInfoRepresentation pointerAccelZ](self, "pointerAccelZ"), v22 = v21, objc_msgSend(v5, "pointerAccelZ"), v22 == v23) && (v24 = -[AXEventPointerInfoRepresentation isPointerMove](self, "isPointerMove"), v24 == objc_msgSend(v5, "isPointerMove")) && (-[AXEventPointerInfoRepresentation pointerButtonMask](self, "pointerButtonMask"), v26 = v25, objc_msgSend(v5, "pointerButtonMask"), v26 == v27) && (-[AXEventPointerInfoRepresentation pointerButtonNumber](self, "pointerButtonNumber"), v29 = v28, objc_msgSend(v5, "pointerButtonNumber"), v29 == v30) && (-[AXEventPointerInfoRepresentation pointerButtonClickCount](self, "pointerButtonClickCount"), v32 = v31, objc_msgSend(v5, "pointerButtonClickCount"), v32 == v33) && (-[AXEventPointerInfoRepresentation pointerButtonPressure](self, "pointerButtonPressure"), v35 = v34, objc_msgSend(v5, "pointerButtonPressure"), v35 == v36) && (v37 = -[AXEventPointerInfoRepresentation pointerIsAbsolute](self, "pointerIsAbsolute"), v37 == objc_msgSend(v5, "pointerIsAbsolute")))
    {
      v40 = [(AXEventPointerInfoRepresentation *)self scrollEvent];
      v41 = [v5 scrollEvent];
      v38 = v40 == v41;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXEventPointerInfoRepresentation;
  v4 = [(AXEventPointerInfoRepresentation *)&v8 description];
  v5 = [(AXEventPointerInfoRepresentation *)self accessibilityEventRepresentationTabularDescription];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

@end