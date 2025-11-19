@interface ARLightEstimate
- (ARLightEstimate)initWithAmbientIntensity:(double)a3 temperature:(double)a4;
- (ARLightEstimate)initWithCoder:(id)a3;
- (NSData)sphericalHarmonicsCoefficients;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARLightEstimate

- (ARLightEstimate)initWithAmbientIntensity:(double)a3 temperature:(double)a4
{
  v7.receiver = self;
  v7.super_class = ARLightEstimate;
  result = [(ARLightEstimate *)&v7 init];
  if (result)
  {
    result->_ambientIntensity = a3;
    result->_ambientColorTemperature = a4;
  }

  return result;
}

- (NSData)sphericalHarmonicsCoefficients
{
  v2.i64[0] = *&self->_ambientIntensity;
  ambientColorTemperature = self->_ambientColorTemperature;
  v5 = *v2.i64 / 1000.0;
  v2.f32[0] = ambientColorTemperature;
  return ARSphericalHarmonicsDataWithAmbientLight(v5, v2, ambientColorTemperature, v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARLightEstimate *)self ambientIntensity];
  [v6 appendFormat:@" ambientIntensity=%.2f", v7];
  [(ARLightEstimate *)self ambientColorTemperature];
  [v6 appendFormat:@" ambientColorTemperature=%.2f", v8];
  [v6 appendString:@">"];

  return v6;
}

- (ARLightEstimate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARLightEstimate;
  v5 = [(ARLightEstimate *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"ambientIntensity"];
    v5->_ambientIntensity = v6;
    [v4 decodeDoubleForKey:@"ambientColorTemperature"];
    v5->_ambientColorTemperature = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ambientIntensity = self->_ambientIntensity;
  v5 = a3;
  [v5 encodeDouble:@"ambientIntensity" forKey:ambientIntensity];
  [v5 encodeDouble:@"ambientColorTemperature" forKey:self->_ambientColorTemperature];
}

@end