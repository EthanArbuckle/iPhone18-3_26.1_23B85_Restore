@interface PHASESphericalCapDirectivityModelParameters
- (PHASESphericalCapDirectivityModelParameters)init;
- (void)setCapOpeningAngle:(double)angle;
- (void)setSphereRadius:(double)radius;
@end

@implementation PHASESphericalCapDirectivityModelParameters

- (PHASESphericalCapDirectivityModelParameters)init
{
  v3.receiver = self;
  v3.super_class = PHASESphericalCapDirectivityModelParameters;
  result = [(PHASEDirectivityModelParameters *)&v3 initInternal];
  if (result)
  {
    result->_sphereRadius = 0.3;
    result->_capOpeningAngle = 30.0;
  }

  return result;
}

- (void)setSphereRadius:(double)radius
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_sphereRadius = PHASEGetPropertyBounded<double>(v8, v7, radius, 0.001, 10.0);
}

- (void)setCapOpeningAngle:(double)angle
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_capOpeningAngle = PHASEGetPropertyBounded<double>(v8, v7, angle, 0.01, 360.0);
}

@end