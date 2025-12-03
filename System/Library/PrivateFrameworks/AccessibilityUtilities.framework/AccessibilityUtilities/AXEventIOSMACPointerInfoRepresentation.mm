@interface AXEventIOSMACPointerInfoRepresentation
- (AXEventIOSMACPointerInfoRepresentation)initWithCoder:(id)coder;
- (CGPoint)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXEventIOSMACPointerInfoRepresentation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AXEventIOSMACPointerInfoRepresentation pressed](self forKey:{"pressed"), @"pressed"}];
  [coderCopy encodeInteger:-[AXEventIOSMACPointerInfoRepresentation buttonIndex](self forKey:{"buttonIndex"), @"buttonIndex"}];
  v5 = MEMORY[0x1E696B098];
  [(AXEventIOSMACPointerInfoRepresentation *)self location];
  v6 = [v5 valueWithPoint:?];
  [coderCopy encodeObject:v6 forKey:@"location"];
}

- (AXEventIOSMACPointerInfoRepresentation)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AXEventIOSMACPointerInfoRepresentation;
  coderCopy = coder;
  v4 = [(AXEventIOSMACPointerInfoRepresentation *)&v7 init];
  -[AXEventIOSMACPointerInfoRepresentation setPressed:](v4, "setPressed:", [coderCopy decodeBoolForKey:{@"pressed", v7.receiver, v7.super_class}]);
  -[AXEventIOSMACPointerInfoRepresentation setButtonIndex:](v4, "setButtonIndex:", [coderCopy decodeIntegerForKey:@"buttonIndex"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  [v5 pointValue];
  [(AXEventIOSMACPointerInfoRepresentation *)v4 setLocation:?];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AXEventIOSMACPointerInfoRepresentation alloc] init];
  [(AXEventIOSMACPointerInfoRepresentation *)v4 setPressed:[(AXEventIOSMACPointerInfoRepresentation *)self pressed]];
  [(AXEventIOSMACPointerInfoRepresentation *)v4 setButtonIndex:[(AXEventIOSMACPointerInfoRepresentation *)self buttonIndex]];
  [(AXEventIOSMACPointerInfoRepresentation *)self location];
  [(AXEventIOSMACPointerInfoRepresentation *)v4 setLocation:?];
  return v4;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end