@interface VNDetectedPoint
- (BOOL)isEqual:(id)a3;
- (VNDetectedPoint)initWithCoder:(id)a3;
- (VNDetectedPoint)initWithLocation:(CGPoint)a3 confidence:(float)a4;
- (id)transformedWith:(CGAffineTransform *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNDetectedPoint

- (id)transformedWith:(CGAffineTransform *)a3
{
  [(VNPoint *)self location];
  v12 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v5), *&a3->a, v6));
  v7 = objc_alloc(objc_opt_class());
  [(VNDetectedPoint *)self confidence];
  LODWORD(v9) = v8;
  v10 = [v7 initWithLocation:*&v12 confidence:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_confidence == v4[6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNDetectedPoint;
  [(VNPoint *)&v6 encodeWithCoder:v4];
  *&v5 = self->_confidence;
  [v4 vn_encodeValidatedConfidence:@"Confid" forKey:v5];
}

- (VNDetectedPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 vn_decodeValidatedConfidenceForKey:@"Confid"];
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

- (VNDetectedPoint)initWithLocation:(CGPoint)a3 confidence:(float)a4
{
  v9.receiver = self;
  v9.super_class = VNDetectedPoint;
  v5 = [(VNPoint *)&v9 initWithLocation:a3.x, a3.y];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = a4;
    v7 = v5;
  }

  return v6;
}

@end