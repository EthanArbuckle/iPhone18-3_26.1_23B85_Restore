@interface VNDetectionprintObservation
- (BOOL)isEqual:(id)equal;
- (VNDetectionprintObservation)initWithCoder:(id)coder;
- (VNDetectionprintObservation)initWithOriginatingRequestSpecifier:(id)specifier detectionprint:(id)detectionprint;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNDetectionprintObservation

- (VNDetectionprintObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VNDetectionprintObservation;
  v5 = [(VNObservation *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detectionprint"], v6 = objc_claimAutoreleasedReturnValue(), detectionprint = v5->_detectionprint, v5->_detectionprint = v6, detectionprint, !v5->_detectionprint))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNDetectionprintObservation;
  coderCopy = coder;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_detectionprint forKey:{@"detectionprint", v5.receiver, v5.super_class}];
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNDetectionprintObservation;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNDetectionprint *)self->_detectionprint copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;
  }

  return vn_cloneObject;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNDetectionprintObservation;
    if ([(VNObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      detectionprint = [(VNDetectionprintObservation *)self detectionprint];
      detectionprint2 = [(VNDetectionprintObservation *)v5 detectionprint];

      v8 = [detectionprint isEqual:detectionprint2];
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
  detectionprint = [(VNDetectionprintObservation *)self detectionprint];
  v5 = [detectionprint hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (VNDetectionprintObservation)initWithOriginatingRequestSpecifier:(id)specifier detectionprint:(id)detectionprint
{
  detectionprintCopy = detectionprint;
  v11.receiver = self;
  v11.super_class = VNDetectionprintObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:specifier];
  if (v7)
  {
    v8 = [detectionprintCopy copy];
    detectionprint = v7->_detectionprint;
    v7->_detectionprint = v8;
  }

  return v7;
}

@end