@interface ARBody2D
- (ARBody2D)initWithCoder:(id)coder;
- (ARBody2D)initWithSkeleton2D:(id)d;
- (BOOL)isEqual:(id)equal;
@end

@implementation ARBody2D

- (ARBody2D)initWithSkeleton2D:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ARBody2D;
  v6 = [(ARBody2D *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_skeleton, d);
  }

  return v7;
}

- (ARBody2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARBody2D;
  v5 = [(ARBody2D *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"skeleton"];
    skeleton = v5->_skeleton;
    v5->_skeleton = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARSkeleton2D *)self->_skeleton isEqual:equalCopy[1]];

  return v5;
}

@end