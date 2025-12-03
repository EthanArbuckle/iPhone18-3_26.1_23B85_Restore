@interface ARDirectionalLightEstimate
- (ARDirectionalLightEstimate)initWithCoder:(id)coder;
- (ARDirectionalLightEstimate)initWithDirectionalLightEstimate:(id)estimate;
- (ARDirectionalLightEstimate)initWithSphericalHarmonics:(id *)harmonics ambientIntensity:(double)intensity temperature:(double)temperature;
- (ARDirectionalLightEstimate)lightEstimateByApplyingRotation:(void *)rotation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARDirectionalLightEstimate

- (ARDirectionalLightEstimate)initWithSphericalHarmonics:(id *)harmonics ambientIntensity:(double)intensity temperature:(double)temperature
{
  v22 = 0u;
  v23 = 0u;
  ARPrimaryLightFromSphericalHarmonics(harmonics, &v22, 1000.0, *&temperature, v5);
  v21.receiver = self;
  v21.super_class = ARDirectionalLightEstimate;
  v10 = [(ARLightEstimate *)&v21 initWithAmbientIntensity:intensity temperature:temperature];
  v11 = v10;
  if (v10)
  {
    v12 = harmonics->var0[8];
    v13 = *&harmonics->var0[4];
    *(v10 + 24) = *harmonics->var0;
    *(v10 + 40) = v13;
    *(v10 + 14) = v12;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    ARSphericalHarmonicsByFlippingZAxis(harmonics, v19);
    v14 = vnegq_f32(v22);
    v11[6] = v14;
    *v14.i64 = *&v23;
    *&v11[4].i64[1] = *&v23;
    v14.f32[0] = temperature;
    v16 = ARSphericalHarmonicsDataWithCoefficients(v19, v14, v15);
    v17 = v11[4].i64[0];
    v11[4].i64[0] = v16;
  }

  return v11;
}

- (ARDirectionalLightEstimate)initWithDirectionalLightEstimate:(id)estimate
{
  estimateCopy = estimate;
  [estimateCopy ambientIntensity];
  v6 = v5;
  [estimateCopy ambientColorTemperature];
  v13.receiver = self;
  v13.super_class = ARDirectionalLightEstimate;
  v8 = [(ARLightEstimate *)&v13 initWithAmbientIntensity:v6 temperature:v7];
  v9 = v8;
  if (v8)
  {
    v10 = *(estimateCopy + 14);
    v11 = *(estimateCopy + 40);
    *(v8 + 24) = *(estimateCopy + 24);
    *(v8 + 40) = v11;
    *(v8 + 14) = v10;
    *(v8 + 6) = *(estimateCopy + 6);
    *(v8 + 9) = *(estimateCopy + 9);
    objc_storeStrong(v8 + 8, *(estimateCopy + 8));
    v9->_timestamp = *(estimateCopy + 10);
    v9->_confidenceRating = *(estimateCopy + 11);
  }

  return v9;
}

- (ARDirectionalLightEstimate)lightEstimateByApplyingRotation:(void *)rotation
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  ARSphericalHarmonicsByApplyingRotation(rotation + 24, &v11, a2);
  v3 = [ARDirectionalLightEstimate alloc];
  [rotation ambientIntensity];
  v5 = v4;
  [rotation ambientColorTemperature];
  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  v7 = [(ARDirectionalLightEstimate *)v3 initWithSphericalHarmonics:v9 ambientIntensity:v5 temperature:v6];
  [rotation timestamp];
  [(ARDirectionalLightEstimate *)v7 setTimestamp:?];
  [rotation confidenceRating];
  [(ARDirectionalLightEstimate *)v7 setConfidenceRating:?];

  return v7;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARLightEstimate *)self ambientIntensity];
  [v6 appendFormat:@" ambientIntensity=%.2f", v7];
  [(ARLightEstimate *)self ambientColorTemperature];
  [v6 appendFormat:@" ambientColorTemperature=%.2f", v8];
  objc_msgSend(v6, "appendString:", @" coefficients(");
  [(NSData *)self->_sphericalHarmonicsCoefficients getBytes:v14 length:108];
  for (i = 0; i != 27; ++i)
  {
    if (i)
    {
      if (i == 18)
      {
        v10 = @", blue:";
      }

      else
      {
        if (i != 9)
        {
          goto LABEL_9;
        }

        v10 = @", green:";
      }
    }

    else
    {
      v10 = @"red:";
    }

    [v6 appendString:v10];
LABEL_9:
    v11 = v14[i];
    if (v11 == 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = 6;
    }

    [v6 appendFormat:@" %.*f", v12, v11];
  }

  [v6 appendString:@""]);
  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithDirectionalLightEstimate:self];
}

- (ARDirectionalLightEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ARDirectionalLightEstimate;
  v5 = [(ARLightEstimate *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sphericalHarmonicsCoefficients"];
    sphericalHarmonicsCoefficients = v5->_sphericalHarmonicsCoefficients;
    v5->_sphericalHarmonicsCoefficients = v6;

    [coderCopy ar_decodeVector3ForKey:@"primaryLightDirection"];
    *v5->_primaryLightDirection = v8;
    [coderCopy decodeDoubleForKey:@"primaryLightIntensity"];
    v5->_primaryLightIntensity = v9;
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v10;
    [coderCopy decodeDoubleForKey:@"confidenceRating"];
    v5->_confidenceRating = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ARDirectionalLightEstimate;
  coderCopy = coder;
  [(ARLightEstimate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sphericalHarmonicsCoefficients forKey:{@"sphericalHarmonicsCoefficients", v5.receiver, v5.super_class}];
  [coderCopy ar_encodeVector3:@"primaryLightDirection" forKey:*self->_primaryLightDirection];
  [coderCopy encodeDouble:@"primaryLightIntensity" forKey:self->_primaryLightIntensity];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"confidenceRating" forKey:self->_confidenceRating];
}

@end