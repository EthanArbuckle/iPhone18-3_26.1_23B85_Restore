@interface VNRecognizedTextBlock
- (BOOL)isEqual:(id)equal;
- (NSArray)getRecognizedLanguages;
- (VNRecognizedTextBlock)initWithCoder:(id)coder;
- (VNRecognizedTextBlock)initWithRequestRevision:(unint64_t)revision crOutputRegion:(id)region;
- (id)boundingBoxForRange:(_NSRange)range error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedTextBlock

- (NSArray)getRecognizedLanguages
{
  v8[1] = *MEMORY[0x1E69E9840];
  getCROutputRegion = [(VNRecognizedTextBlock *)self getCROutputRegion];
  recognizedLocale = [getCROutputRegion recognizedLocale];

  if (recognizedLocale)
  {
    recognizedLocale2 = [getCROutputRegion recognizedLocale];
    v5 = [recognizedLocale2 copy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)boundingBoxForRange:(_NSRange)range error:(id *)error
{
  error = [(CROutputRegion *)self->_crOutputRegion quadForTextInCharacterRange:range.location, range.length, error];
  v6 = error;
  if (error)
  {
    [error topLeft];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CROutputRegion *)self->_crOutputRegion isEqual:equalCopy->_crOutputRegion];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VNRecognizedTextBlock alloc];
  requestRevision = self->_requestRevision;
  v6 = [(CROutputRegion *)self->_crOutputRegion copy];
  v7 = [(VNRecognizedTextBlock *)v4 initWithRequestRevision:requestRevision crOutputRegion:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  crOutputRegion = self->_crOutputRegion;
  coderCopy = coder;
  [coderCopy encodeObject:crOutputRegion forKey:@"crOutputRegion"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestRevision];
  [coderCopy encodeObject:v6 forKey:@"requestRevision"];
}

- (VNRecognizedTextBlock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crOutputRegion"];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestRevision"];
    v8 = v7;
    if (v7)
    {
      self = -[VNRecognizedTextBlock initWithRequestRevision:crOutputRegion:](self, "initWithRequestRevision:crOutputRegion:", [v7 unsignedIntegerValue], v6);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNRecognizedTextBlock)initWithRequestRevision:(unint64_t)revision crOutputRegion:(id)region
{
  regionCopy = region;
  v11.receiver = self;
  v11.super_class = VNRecognizedTextBlock;
  v8 = [(VNRecognizedTextBlock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crOutputRegion, region);
    v9->_requestRevision = revision;
  }

  return v9;
}

@end