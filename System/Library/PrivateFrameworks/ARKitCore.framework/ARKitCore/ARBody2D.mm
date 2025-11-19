@interface ARBody2D
- (ARBody2D)initWithCoder:(id)a3;
- (ARBody2D)initWithSkeleton2D:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ARBody2D

- (ARBody2D)initWithSkeleton2D:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARBody2D;
  v6 = [(ARBody2D *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_skeleton, a3);
  }

  return v7;
}

- (ARBody2D)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARBody2D;
  v5 = [(ARBody2D *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"skeleton"];
    skeleton = v5->_skeleton;
    v5->_skeleton = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARSkeleton2D *)self->_skeleton isEqual:v4[1]];

  return v5;
}

@end