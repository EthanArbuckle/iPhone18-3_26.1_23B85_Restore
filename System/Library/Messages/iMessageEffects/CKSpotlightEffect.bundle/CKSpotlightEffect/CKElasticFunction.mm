@interface CKElasticFunction
+ (id)functionWithTension:(double)tension friction:(double)friction initialValue:(double)value;
- (CKElasticFunction)init;
- (void)step;
@end

@implementation CKElasticFunction

+ (id)functionWithTension:(double)tension friction:(double)friction initialValue:(double)value
{
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setTension:tension];
  [v8 setFriction:friction];
  v8[2] = value;
  v8[3] = value;

  return v8;
}

- (CKElasticFunction)init
{
  v3.receiver = self;
  v3.super_class = CKElasticFunction;
  result = [(CKElasticFunction *)&v3 init];
  if (result)
  {
    *&result->_friction = xmmword_4C80;
  }

  return result;
}

- (void)step
{
  v2 = self->_elastic + (self->_elastic - self->_currentValue) * self->_tension * 0.001 * -0.001;
  v3 = fmax(self->_friction * -0.001 + 1.0, 0.0) * (v2 - self->_oldForce) / 0.001;
  self->_elastic = v2 + v3 * 0.001;
  self->_oldForce = v2;
  self->_velocity = v3;
}

@end