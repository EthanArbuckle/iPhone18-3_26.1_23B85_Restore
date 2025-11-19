@interface CKElasticFunction
+ (id)functionWithTension:(double)a3 friction:(double)a4 initialValue:(double)a5;
- (CKElasticFunction)init;
- (void)step;
@end

@implementation CKElasticFunction

+ (id)functionWithTension:(double)a3 friction:(double)a4 initialValue:(double)a5
{
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setTension:a3];
  [v8 setFriction:a4];
  v8[2] = a5;
  v8[3] = a5;

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