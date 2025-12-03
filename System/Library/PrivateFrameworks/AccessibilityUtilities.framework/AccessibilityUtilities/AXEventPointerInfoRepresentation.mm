@interface AXEventPointerInfoRepresentation
- (AXEventPointerInfoRepresentation)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)accessibilityEventRepresentationTabularDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXEventPointerInfoRepresentation

- (AXEventPointerInfoRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXEventPointerInfoRepresentation;
  v5 = [(AXEventPointerInfoRepresentation *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"pointerX"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerX:?];
    [coderCopy decodeDoubleForKey:@"pointerY"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerY:?];
    [coderCopy decodeDoubleForKey:@"pointerZ"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerZ:?];
    [coderCopy decodeDoubleForKey:@"pointerAccelX"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelX:?];
    [coderCopy decodeDoubleForKey:@"pointerAccelY"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelY:?];
    [coderCopy decodeDoubleForKey:@"pointerAccelZ"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerAccelZ:?];
    -[AXEventPointerInfoRepresentation setIsPointerMove:](v5, "setIsPointerMove:", [coderCopy decodeBoolForKey:@"isPointerMove"]);
    [coderCopy decodeDoubleForKey:@"pointerButtonMask"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonMask:?];
    [coderCopy decodeDoubleForKey:@"pointerButtonNumber"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonNumber:?];
    [coderCopy decodeDoubleForKey:@"pointerButtonClickCount"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonClickCount:?];
    [coderCopy decodeDoubleForKey:@"pointerButtonPressure"];
    [(AXEventPointerInfoRepresentation *)v5 setPointerButtonPressure:?];
    -[AXEventPointerInfoRepresentation setPointerIsAbsolute:](v5, "setPointerIsAbsolute:", [coderCopy decodeBoolForKey:@"pointerIsAbsolute"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceTypeHint"];
    [(AXEventPointerInfoRepresentation *)v5 setDeviceTypeHint:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scrollEvent"];
    [(AXEventPointerInfoRepresentation *)v5 setScrollEvent:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  deviceTypeHint = [(AXEventPointerInfoRepresentation *)self deviceTypeHint];
  v7 = [deviceTypeHint copy];
  [(AXEventPointerInfoRepresentation *)v5 setDeviceTypeHint:v7];

  scrollEvent = [(AXEventPointerInfoRepresentation *)self scrollEvent];
  v9 = [scrollEvent copyWithZone:zone];
  [(AXEventPointerInfoRepresentation *)v5 setScrollEvent:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AXEventPointerInfoRepresentation *)self pointerX];
  [coderCopy encodeDouble:@"pointerX" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerY];
  [coderCopy encodeDouble:@"pointerY" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerZ];
  [coderCopy encodeDouble:@"pointerZ" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelX];
  [coderCopy encodeDouble:@"pointerAccelX" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelY];
  [coderCopy encodeDouble:@"pointerAccelY" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerAccelZ];
  [coderCopy encodeDouble:@"pointerAccelZ" forKey:?];
  [coderCopy encodeBool:-[AXEventPointerInfoRepresentation isPointerMove](self forKey:{"isPointerMove"), @"isPointerMove"}];
  [(AXEventPointerInfoRepresentation *)self pointerButtonMask];
  [coderCopy encodeDouble:@"pointerButtonMask" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonNumber];
  [coderCopy encodeDouble:@"pointerButtonNumber" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonClickCount];
  [coderCopy encodeDouble:@"pointerButtonClickCount" forKey:?];
  [(AXEventPointerInfoRepresentation *)self pointerButtonPressure];
  [coderCopy encodeDouble:@"pointerButtonPressure" forKey:?];
  [coderCopy encodeBool:-[AXEventPointerInfoRepresentation pointerIsAbsolute](self forKey:{"pointerIsAbsolute"), @"pointerIsAbsolute"}];
  deviceTypeHint = [(AXEventPointerInfoRepresentation *)self deviceTypeHint];
  [coderCopy encodeObject:deviceTypeHint forKey:@"deviceTypeHint"];

  scrollEvent = [(AXEventPointerInfoRepresentation *)self scrollEvent];
  [coderCopy encodeObject:scrollEvent forKey:@"scrollEvent"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(AXEventPointerInfoRepresentation *)self pointerX];
    v7 = v6;
    [v5 pointerX];
    if (v7 == v8 && (-[AXEventPointerInfoRepresentation pointerY](self, "pointerY"), v10 = v9, [v5 pointerY], v10 == v11) && (-[AXEventPointerInfoRepresentation pointerZ](self, "pointerZ"), v13 = v12, objc_msgSend(v5, "pointerZ"), v13 == v14) && (-[AXEventPointerInfoRepresentation pointerAccelX](self, "pointerAccelX"), v16 = v15, objc_msgSend(v5, "pointerAccelX"), v16 == v17) && (-[AXEventPointerInfoRepresentation pointerAccelY](self, "pointerAccelY"), v19 = v18, objc_msgSend(v5, "pointerAccelY"), v19 == v20) && (-[AXEventPointerInfoRepresentation pointerAccelZ](self, "pointerAccelZ"), v22 = v21, objc_msgSend(v5, "pointerAccelZ"), v22 == v23) && (v24 = -[AXEventPointerInfoRepresentation isPointerMove](self, "isPointerMove"), v24 == objc_msgSend(v5, "isPointerMove")) && (-[AXEventPointerInfoRepresentation pointerButtonMask](self, "pointerButtonMask"), v26 = v25, objc_msgSend(v5, "pointerButtonMask"), v26 == v27) && (-[AXEventPointerInfoRepresentation pointerButtonNumber](self, "pointerButtonNumber"), v29 = v28, objc_msgSend(v5, "pointerButtonNumber"), v29 == v30) && (-[AXEventPointerInfoRepresentation pointerButtonClickCount](self, "pointerButtonClickCount"), v32 = v31, objc_msgSend(v5, "pointerButtonClickCount"), v32 == v33) && (-[AXEventPointerInfoRepresentation pointerButtonPressure](self, "pointerButtonPressure"), v35 = v34, objc_msgSend(v5, "pointerButtonPressure"), v35 == v36) && (v37 = -[AXEventPointerInfoRepresentation pointerIsAbsolute](self, "pointerIsAbsolute"), v37 == objc_msgSend(v5, "pointerIsAbsolute")))
    {
      scrollEvent = [(AXEventPointerInfoRepresentation *)self scrollEvent];
      scrollEvent2 = [v5 scrollEvent];
      v38 = scrollEvent == scrollEvent2;
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
  accessibilityEventRepresentationTabularDescription = [(AXEventPointerInfoRepresentation *)self accessibilityEventRepresentationTabularDescription];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, accessibilityEventRepresentationTabularDescription];

  return v6;
}

@end