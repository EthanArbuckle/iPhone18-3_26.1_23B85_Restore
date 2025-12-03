@interface AXEventAccelerometerInfoRepresentation
- (AXEventAccelerometerInfoRepresentation)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXEventAccelerometerInfoRepresentation

- (AXEventAccelerometerInfoRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AXEventAccelerometerInfoRepresentation;
  v5 = [(AXEventAccelerometerInfoRepresentation *)&v7 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"x"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setX:?];
    [coderCopy decodeFloatForKey:@"y"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setY:?];
    [coderCopy decodeFloatForKey:@"z"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setZ:?];
    -[AXEventAccelerometerInfoRepresentation setType:](v5, "setType:", [coderCopy decodeInt32ForKey:@"type"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXEventAccelerometerInfoRepresentation);
  [(AXEventAccelerometerInfoRepresentation *)self x];
  [(AXEventAccelerometerInfoRepresentation *)v4 setX:?];
  [(AXEventAccelerometerInfoRepresentation *)self y];
  [(AXEventAccelerometerInfoRepresentation *)v4 setY:?];
  [(AXEventAccelerometerInfoRepresentation *)self z];
  [(AXEventAccelerometerInfoRepresentation *)v4 setZ:?];
  [(AXEventAccelerometerInfoRepresentation *)v4 setType:[(AXEventAccelerometerInfoRepresentation *)self type]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[AXEventAccelerometerInfoRepresentation type](self forKey:{"type"), @"type"}];
  [(AXEventAccelerometerInfoRepresentation *)self x];
  [coderCopy encodeFloat:@"x" forKey:?];
  [(AXEventAccelerometerInfoRepresentation *)self y];
  [coderCopy encodeFloat:@"y" forKey:?];
  [(AXEventAccelerometerInfoRepresentation *)self z];
  [coderCopy encodeFloat:@"z" forKey:?];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = AXEventAccelerometerInfoRepresentation;
  v4 = [(AXEventAccelerometerInfoRepresentation *)&v12 description];
  [(AXEventAccelerometerInfoRepresentation *)self x];
  v6 = v5;
  [(AXEventAccelerometerInfoRepresentation *)self y];
  v8 = v7;
  [(AXEventAccelerometerInfoRepresentation *)self z];
  v10 = [v3 stringWithFormat:@"%@ [%f %f %f]", v4, *&v6, *&v8, v9];

  return v10;
}

@end