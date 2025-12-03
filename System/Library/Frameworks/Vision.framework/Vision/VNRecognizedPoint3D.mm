@interface VNRecognizedPoint3D
- (BOOL)isEqual:(id)equal;
- (VNRecognizedPoint3D)initWithCoder:(id)coder;
- (VNRecognizedPoint3D)initWithPosition:(double)position identifier:(double)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedPoint3D

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6.receiver = self;
  v6.super_class = VNRecognizedPoint3D;
  v4 = [(VNPoint3D *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@" idenfier =%@", self->_identifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = VNRecognizedPoint3D;
  if ([(VNPoint3D *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedPoint3D;
  return [(NSString *)self->_identifier hash]^ __ROR8__([(VNPoint3D *)&v3 hash], 51);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNRecognizedPoint3D;
  coderCopy = coder;
  [(VNPoint3D *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"Iden", v5.receiver, v5.super_class}];
}

- (VNRecognizedPoint3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VNRecognizedPoint3D;
  v5 = [(VNPoint3D *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Iden"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (VNRecognizedPoint3D)initWithPosition:(double)position identifier:(double)identifier
{
  v8 = a7;
  v18.receiver = self;
  v18.super_class = VNRecognizedPoint3D;
  v9 = [(VNPoint3D *)&v18 initWithPosition:a2, position, identifier, a5];
  if (v9)
  {
    v10 = [v8 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = v9;
  }

  return v9;
}

@end