@interface ARLightEstimate
- (ARLightEstimate)initWithAmbientIntensity:(double)intensity temperature:(double)temperature;
- (ARLightEstimate)initWithCoder:(id)coder;
- (NSData)sphericalHarmonicsCoefficients;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARLightEstimate

- (ARLightEstimate)initWithAmbientIntensity:(double)intensity temperature:(double)temperature
{
  v7.receiver = self;
  v7.super_class = ARLightEstimate;
  result = [(ARLightEstimate *)&v7 init];
  if (result)
  {
    result->_ambientIntensity = intensity;
    result->_ambientColorTemperature = temperature;
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

- (ARLightEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARLightEstimate;
  v5 = [(ARLightEstimate *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"ambientIntensity"];
    v5->_ambientIntensity = v6;
    [coderCopy decodeDoubleForKey:@"ambientColorTemperature"];
    v5->_ambientColorTemperature = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ambientIntensity = self->_ambientIntensity;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ambientIntensity" forKey:ambientIntensity];
  [coderCopy encodeDouble:@"ambientColorTemperature" forKey:self->_ambientColorTemperature];
}

@end