@interface ARDirectionalLightEstimate
- (ARDirectionalLightEstimate)initWithCoder:(id)a3;
- (ARDirectionalLightEstimate)initWithDirectionalLightEstimate:(id)a3;
- (ARDirectionalLightEstimate)initWithSphericalHarmonics:(id *)a3 ambientIntensity:(double)a4 temperature:(double)a5;
- (ARDirectionalLightEstimate)lightEstimateByApplyingRotation:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARDirectionalLightEstimate

- (ARDirectionalLightEstimate)initWithSphericalHarmonics:(id *)a3 ambientIntensity:(double)a4 temperature:(double)a5
{
  v22 = 0u;
  v23 = 0u;
  ARPrimaryLightFromSphericalHarmonics(a3, &v22, 1000.0, *&a5, v5);
  v21.receiver = self;
  v21.super_class = ARDirectionalLightEstimate;
  v10 = [(ARLightEstimate *)&v21 initWithAmbientIntensity:a4 temperature:a5];
  v11 = v10;
  if (v10)
  {
    v12 = a3->var0[8];
    v13 = *&a3->var0[4];
    *(v10 + 24) = *a3->var0;
    *(v10 + 40) = v13;
    *(v10 + 14) = v12;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    ARSphericalHarmonicsByFlippingZAxis(a3, v19);
    v14 = vnegq_f32(v22);
    v11[6] = v14;
    *v14.i64 = *&v23;
    *&v11[4].i64[1] = *&v23;
    v14.f32[0] = a5;
    v16 = ARSphericalHarmonicsDataWithCoefficients(v19, v14, v15);
    v17 = v11[4].i64[0];
    v11[4].i64[0] = v16;
  }

  return v11;
}

- (ARDirectionalLightEstimate)initWithDirectionalLightEstimate:(id)a3
{
  v4 = a3;
  [v4 ambientIntensity];
  v6 = v5;
  [v4 ambientColorTemperature];
  v13.receiver = self;
  v13.super_class = ARDirectionalLightEstimate;
  v8 = [(ARLightEstimate *)&v13 initWithAmbientIntensity:v6 temperature:v7];
  v9 = v8;
  if (v8)
  {
    v10 = *(v4 + 14);
    v11 = *(v4 + 40);
    *(v8 + 24) = *(v4 + 24);
    *(v8 + 40) = v11;
    *(v8 + 14) = v10;
    *(v8 + 6) = *(v4 + 6);
    *(v8 + 9) = *(v4 + 9);
    objc_storeStrong(v8 + 8, *(v4 + 8));
    v9->_timestamp = *(v4 + 10);
    v9->_confidenceRating = *(v4 + 11);
  }

  return v9;
}

- (ARDirectionalLightEstimate)lightEstimateByApplyingRotation:(void *)a1
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  ARSphericalHarmonicsByApplyingRotation(a1 + 24, &v11, a2);
  v3 = [ARDirectionalLightEstimate alloc];
  [a1 ambientIntensity];
  v5 = v4;
  [a1 ambientColorTemperature];
  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  v7 = [(ARDirectionalLightEstimate *)v3 initWithSphericalHarmonics:v9 ambientIntensity:v5 temperature:v6];
  [a1 timestamp];
  [(ARDirectionalLightEstimate *)v7 setTimestamp:?];
  [a1 confidenceRating];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithDirectionalLightEstimate:self];
}

- (ARDirectionalLightEstimate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ARDirectionalLightEstimate;
  v5 = [(ARLightEstimate *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sphericalHarmonicsCoefficients"];
    sphericalHarmonicsCoefficients = v5->_sphericalHarmonicsCoefficients;
    v5->_sphericalHarmonicsCoefficients = v6;

    [v4 ar_decodeVector3ForKey:@"primaryLightDirection"];
    *v5->_primaryLightDirection = v8;
    [v4 decodeDoubleForKey:@"primaryLightIntensity"];
    v5->_primaryLightIntensity = v9;
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v10;
    [v4 decodeDoubleForKey:@"confidenceRating"];
    v5->_confidenceRating = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ARDirectionalLightEstimate;
  v4 = a3;
  [(ARLightEstimate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sphericalHarmonicsCoefficients forKey:{@"sphericalHarmonicsCoefficients", v5.receiver, v5.super_class}];
  [v4 ar_encodeVector3:@"primaryLightDirection" forKey:*self->_primaryLightDirection];
  [v4 encodeDouble:@"primaryLightIntensity" forKey:self->_primaryLightIntensity];
  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v4 encodeDouble:@"confidenceRating" forKey:self->_confidenceRating];
}

@end