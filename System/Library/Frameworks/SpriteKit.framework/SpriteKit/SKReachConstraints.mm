@interface SKReachConstraints
- (SKReachConstraints)initWithCoder:(id)coder;
- (SKReachConstraints)initWithLowerAngleLimit:(CGFloat)lowerAngleLimit upperAngleLimit:(CGFloat)upperAngleLimit;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKReachConstraints

- (SKReachConstraints)initWithLowerAngleLimit:(CGFloat)lowerAngleLimit upperAngleLimit:(CGFloat)upperAngleLimit
{
  v7.receiver = self;
  v7.super_class = SKReachConstraints;
  result = [(SKReachConstraints *)&v7 init];
  if (result)
  {
    result->_lowerAngleLimit = lowerAngleLimit;
    result->_upperAngleLimit = upperAngleLimit;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  lowerAngleLimit = self->_lowerAngleLimit;
  upperAngleLimit = self->_upperAngleLimit;

  return [v4 initWithLowerAngleLimit:lowerAngleLimit upperAngleLimit:upperAngleLimit];
}

- (void)encodeWithCoder:(id)coder
{
  lowerAngleLimit = self->_lowerAngleLimit;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_lowerAngleLimit" forKey:lowerAngleLimit];
  [coderCopy encodeDouble:@"_upperAngleLimit" forKey:self->_upperAngleLimit];
}

- (SKReachConstraints)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"_lowerAngleLimit"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"_upperAngleLimit"];
  v8 = v7;

  return [(SKReachConstraints *)self initWithLowerAngleLimit:v6 upperAngleLimit:v8];
}

@end