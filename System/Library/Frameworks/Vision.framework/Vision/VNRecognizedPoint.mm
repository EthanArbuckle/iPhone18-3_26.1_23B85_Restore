@interface VNRecognizedPoint
- (BOOL)isEqual:(id)equal;
- (VNRecognizedPoint)initWithCoder:(id)coder;
- (VNRecognizedPoint)initWithLocation:(CGPoint)location confidence:(float)confidence identifier:(id)identifier;
- (id)transformedWith:(CGAffineTransform *)with;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedPoint

- (id)transformedWith:(CGAffineTransform *)with
{
  [(VNPoint *)self location];
  v7 = with->tx + v5 * with->c + with->a * v6;
  v8 = with->ty + v5 * with->d + with->b * v6;
  v9 = objc_alloc(objc_opt_class());
  [(VNDetectedPoint *)self confidence];
  v11 = v10;
  identifier = [(VNRecognizedPoint *)self identifier];
  LODWORD(v13) = v11;
  v14 = [v9 initWithLocation:identifier confidence:v7 identifier:{v8, v13}];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = VNRecognizedPoint;
  if ([(VNDetectedPoint *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNRecognizedPoint;
  [(VNDetectedPoint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:@"Iden"];
}

- (VNRecognizedPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VNRecognizedPoint;
  v5 = [(VNDetectedPoint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Iden"];
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

- (VNRecognizedPoint)initWithLocation:(CGPoint)location confidence:(float)confidence identifier:(id)identifier
{
  y = location.y;
  x = location.x;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = VNRecognizedPoint;
  *&v10 = confidence;
  v11 = [(VNDetectedPoint *)&v16 initWithLocation:x confidence:y, v10];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = v11;
  }

  return v11;
}

@end