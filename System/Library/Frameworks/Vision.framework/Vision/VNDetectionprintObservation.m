@interface VNDetectionprintObservation
- (BOOL)isEqual:(id)a3;
- (VNDetectionprintObservation)initWithCoder:(id)a3;
- (VNDetectionprintObservation)initWithOriginatingRequestSpecifier:(id)a3 detectionprint:(id)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNDetectionprintObservation

- (VNDetectionprintObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VNDetectionprintObservation;
  v5 = [(VNObservation *)&v10 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"detectionprint"], v6 = objc_claimAutoreleasedReturnValue(), detectionprint = v5->_detectionprint, v5->_detectionprint = v6, detectionprint, !v5->_detectionprint))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNDetectionprintObservation;
  v4 = a3;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_detectionprint forKey:{@"detectionprint", v5.receiver, v5.super_class}];
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNDetectionprintObservation;
  v3 = [(VNObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNDetectionprint *)self->_detectionprint copy];
    v5 = v3[12];
    v3[12] = v4;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNDetectionprintObservation;
    if ([(VNObservation *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNDetectionprintObservation *)self detectionprint];
      v7 = [(VNDetectionprintObservation *)v5 detectionprint];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNDetectionprintObservation;
  v3 = [(VNObservation *)&v7 hash];
  v4 = [(VNDetectionprintObservation *)self detectionprint];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (VNDetectionprintObservation)initWithOriginatingRequestSpecifier:(id)a3 detectionprint:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VNDetectionprintObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:a3];
  if (v7)
  {
    v8 = [v6 copy];
    detectionprint = v7->_detectionprint;
    v7->_detectionprint = v8;
  }

  return v7;
}

@end