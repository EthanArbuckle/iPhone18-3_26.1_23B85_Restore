@interface AXEventAccelerometerInfoRepresentation
- (AXEventAccelerometerInfoRepresentation)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXEventAccelerometerInfoRepresentation

- (AXEventAccelerometerInfoRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXEventAccelerometerInfoRepresentation;
  v5 = [(AXEventAccelerometerInfoRepresentation *)&v7 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"x"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setX:?];
    [v4 decodeFloatForKey:@"y"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setY:?];
    [v4 decodeFloatForKey:@"z"];
    [(AXEventAccelerometerInfoRepresentation *)v5 setZ:?];
    -[AXEventAccelerometerInfoRepresentation setType:](v5, "setType:", [v4 decodeInt32ForKey:@"type"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[AXEventAccelerometerInfoRepresentation type](self forKey:{"type"), @"type"}];
  [(AXEventAccelerometerInfoRepresentation *)self x];
  [v4 encodeFloat:@"x" forKey:?];
  [(AXEventAccelerometerInfoRepresentation *)self y];
  [v4 encodeFloat:@"y" forKey:?];
  [(AXEventAccelerometerInfoRepresentation *)self z];
  [v4 encodeFloat:@"z" forKey:?];
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