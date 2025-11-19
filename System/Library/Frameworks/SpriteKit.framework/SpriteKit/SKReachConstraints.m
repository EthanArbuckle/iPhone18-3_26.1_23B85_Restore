@interface SKReachConstraints
- (SKReachConstraints)initWithCoder:(id)a3;
- (SKReachConstraints)initWithLowerAngleLimit:(CGFloat)lowerAngleLimit upperAngleLimit:(CGFloat)upperAngleLimit;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  lowerAngleLimit = self->_lowerAngleLimit;
  upperAngleLimit = self->_upperAngleLimit;

  return [v4 initWithLowerAngleLimit:lowerAngleLimit upperAngleLimit:upperAngleLimit];
}

- (void)encodeWithCoder:(id)a3
{
  lowerAngleLimit = self->_lowerAngleLimit;
  v5 = a3;
  [v5 encodeDouble:@"_lowerAngleLimit" forKey:lowerAngleLimit];
  [v5 encodeDouble:@"_upperAngleLimit" forKey:self->_upperAngleLimit];
}

- (SKReachConstraints)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"_lowerAngleLimit"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"_upperAngleLimit"];
  v8 = v7;

  return [(SKReachConstraints *)self initWithLowerAngleLimit:v6 upperAngleLimit:v8];
}

@end