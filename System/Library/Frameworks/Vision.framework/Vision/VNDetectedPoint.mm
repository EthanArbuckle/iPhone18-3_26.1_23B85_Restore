@interface VNDetectedPoint
- (BOOL)isEqual:(id)equal;
- (VNDetectedPoint)initWithCoder:(id)coder;
- (VNDetectedPoint)initWithLocation:(CGPoint)location confidence:(float)confidence;
- (id)transformedWith:(CGAffineTransform *)with;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNDetectedPoint

- (id)transformedWith:(CGAffineTransform *)with
{
  [(VNPoint *)self location];
  v12 = vaddq_f64(*&with->tx, vmlaq_n_f64(vmulq_n_f64(*&with->c, v5), *&with->a, v6));
  v7 = objc_alloc(objc_opt_class());
  [(VNDetectedPoint *)self confidence];
  LODWORD(v9) = v8;
  v10 = [v7 initWithLocation:*&v12 confidence:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_confidence == equalCopy[6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNDetectedPoint;
  [(VNPoint *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_confidence;
  [coderCopy vn_encodeValidatedConfidence:@"Confid" forKey:v5];
}

- (VNDetectedPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy vn_decodeValidatedConfidenceForKey:@"Confid"];
    v5->_confidence = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNDetectedPoint;
  v3 = [(VNPoint *)&v7 hash];
  confidence = self->_confidence;
  v5 = LODWORD(confidence);
  if (confidence == 0.0)
  {
    v5 = 0;
  }

  return v5 ^ __ROR8__(v3, 51);
}

- (VNDetectedPoint)initWithLocation:(CGPoint)location confidence:(float)confidence
{
  v9.receiver = self;
  v9.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v9 initWithLocation:location.x, location.y];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = confidence;
    v7 = v5;
  }

  return v6;
}

@end