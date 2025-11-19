@interface VNRecognizedPoint
- (BOOL)isEqual:(id)a3;
- (VNRecognizedPoint)initWithCoder:(id)a3;
- (VNRecognizedPoint)initWithLocation:(CGPoint)a3 confidence:(float)a4 identifier:(id)a5;
- (id)transformedWith:(CGAffineTransform *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedPoint

- (id)transformedWith:(CGAffineTransform *)a3
{
  [(VNPoint *)self location];
  v7 = a3->tx + v5 * a3->c + a3->a * v6;
  v8 = a3->ty + v5 * a3->d + a3->b * v6;
  v9 = objc_alloc(objc_opt_class());
  [(VNDetectedPoint *)self confidence];
  v11 = v10;
  v12 = [(VNRecognizedPoint *)self identifier];
  LODWORD(v13) = v11;
  v14 = [v9 initWithLocation:v12 confidence:v7 identifier:{v8, v13}];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNRecognizedPoint;
  if ([(VNDetectedPoint *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = self->_identifier;
    v6 = VisionCoreEqualOrNilObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNRecognizedPoint;
  [(VNDetectedPoint *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:@"Iden"];
}

- (VNRecognizedPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNRecognizedPoint;
  v5 = [(VNDetectedPoint *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Iden"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedPoint;
  return [(NSString *)self->_identifier hash]^ __ROR8__([(VNDetectedPoint *)&v3 hash], 51);
}

- (VNRecognizedPoint)initWithLocation:(CGPoint)a3 confidence:(float)a4 identifier:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = VNRecognizedPoint;
  *&v10 = a4;
  v11 = [(VNDetectedPoint *)&v16 initWithLocation:x confidence:y, v10];
  if (v11)
  {
    v12 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = v11;
  }

  return v11;
}

@end