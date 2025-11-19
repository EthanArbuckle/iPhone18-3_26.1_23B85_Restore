@interface VNRecognizedTextBlock
- (BOOL)isEqual:(id)a3;
- (NSArray)getRecognizedLanguages;
- (VNRecognizedTextBlock)initWithCoder:(id)a3;
- (VNRecognizedTextBlock)initWithRequestRevision:(unint64_t)a3 crOutputRegion:(id)a4;
- (id)boundingBoxForRange:(_NSRange)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedTextBlock

- (NSArray)getRecognizedLanguages
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(VNRecognizedTextBlock *)self getCROutputRegion];
  v3 = [v2 recognizedLocale];

  if (v3)
  {
    v4 = [v2 recognizedLocale];
    v5 = [v4 copy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)boundingBoxForRange:(_NSRange)a3 error:(id *)a4
{
  v5 = [(CROutputRegion *)self->_crOutputRegion quadForTextInCharacterRange:a3.location, a3.length, a4];
  v6 = v5;
  if (v5)
  {
    [v5 topLeft];
    v8 = v7;
    v10 = 1.0 - v9;
    [v6 topRight];
    v12 = v11;
    v14 = 1.0 - v13;
    [v6 bottomLeft];
    v16 = v15;
    v18 = 1.0 - v17;
    [v6 bottomRight];
    v21 = [[VNRectangleObservation alloc] initWithRequestRevision:self->_requestRevision topLeft:v8 topRight:v10 bottomRight:v12 bottomLeft:v14, v20, 1.0 - v19, v16, v18];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CROutputRegion *)self->_crOutputRegion isEqual:v4->_crOutputRegion];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedTextBlock;
  return [(CROutputRegion *)self->_crOutputRegion hash]^ __ROR8__([(VNRecognizedText *)&v3 hash], 51);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VNRecognizedTextBlock alloc];
  requestRevision = self->_requestRevision;
  v6 = [(CROutputRegion *)self->_crOutputRegion copy];
  v7 = [(VNRecognizedTextBlock *)v4 initWithRequestRevision:requestRevision crOutputRegion:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  crOutputRegion = self->_crOutputRegion;
  v5 = a3;
  [v5 encodeObject:crOutputRegion forKey:@"crOutputRegion"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestRevision];
  [v5 encodeObject:v6 forKey:@"requestRevision"];
}

- (VNRecognizedTextBlock)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crOutputRegion"];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestRevision"];
    v8 = v7;
    if (v7)
    {
      self = -[VNRecognizedTextBlock initWithRequestRevision:crOutputRegion:](self, "initWithRequestRevision:crOutputRegion:", [v7 unsignedIntegerValue], v6);
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (VNRecognizedTextBlock)initWithRequestRevision:(unint64_t)a3 crOutputRegion:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VNRecognizedTextBlock;
  v8 = [(VNRecognizedTextBlock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crOutputRegion, a4);
    v9->_requestRevision = a3;
  }

  return v9;
}

@end