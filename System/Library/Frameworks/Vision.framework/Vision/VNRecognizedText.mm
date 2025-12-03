@interface VNRecognizedText
- (BOOL)isEqual:(id)equal;
- (NSString)string;
- (VNConfidence)confidence;
- (VNRecognizedText)initWithCoder:(id)coder;
- (VNRecognizedText)initWithRequestRevision:(unint64_t)revision CRImageReaderOutput:(id)output;
- (VNRectangleObservation)boundingBoxForRange:(NSRange)range error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedText

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = VNRecognizedText;
  v3 = [(VNRecognizedText *)&v8 debugDescription];
  string = [(VNRecognizedText *)self string];
  [(VNRecognizedText *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" %@ - (%f) revision: %ld", string, v5, -[VNRecognizedText requestRevision](self, "requestRevision")];

  return v6;
}

- (VNRectangleObservation)boundingBoxForRange:(NSRange)range error:(NSError *)error
{
  length = range.length;
  location = range.location;
  crOutput = [(VNRecognizedText *)self crOutput];
  v9 = [crOutput cornersForCharacterRange:location error:{length, error}];

  if (v9 && [v9 count] == 4)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 pointValue];
    v12 = v11;
    v14 = v13;

    v15 = [v9 objectAtIndexedSubscript:1];
    [v15 pointValue];
    v17 = v16;
    v19 = v18;

    v20 = [v9 objectAtIndexedSubscript:2];
    [v20 pointValue];
    v22 = v21;
    v24 = v23;

    v25 = [v9 objectAtIndexedSubscript:3];
    [v25 pointValue];
    v27 = v26;
    v29 = v28;

    v30 = [[VNRectangleObservation alloc] initWithRequestRevision:[(VNRecognizedText *)self requestRevision] topLeft:v12 bottomLeft:1.0 - v14 bottomRight:v27 topRight:1.0 - v29, v22, 1.0 - v24, v17, 1.0 - v19];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (VNConfidence)confidence
{
  crOutput = [(VNRecognizedText *)self crOutput];
  confidence = [crOutput confidence];
  v4 = 0.0;
  if (confidence < 3)
  {
    v4 = *&dword_1A6050128[confidence];
  }

  return v4;
}

- (NSString)string
{
  crOutput = [(VNRecognizedText *)self crOutput];
  stringValue = [crOutput stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      crOutput = [(VNRecognizedText *)v5 crOutput];
      v7 = VisionCoreEqualOrNilObjects();

      if (v7)
      {
        v8 = v5;
        [(VNRecognizedText *)self requestRevision];
        [(VNRecognizedText *)v8 requestRevision];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedText;
  return self->_requestRevision ^ __ROR8__([(CRImageReaderOutput *)self->_crOutput hash]^ __ROR8__([(VNRecognizedText *)&v3 hash], 51), 51);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VNRecognizedText alloc];
  requestRevision = self->_requestRevision;
  v6 = [(CRImageReaderOutput *)self->_crOutput copy];
  v7 = [(VNRecognizedText *)v4 initWithRequestRevision:requestRevision CRImageReaderOutput:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_crOutput forKey:@"crOutput"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestRevision];
  [coderCopy encodeObject:v4 forKey:@"requestRevision"];
}

- (VNRecognizedText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crOutput"];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestRevision"];
    v8 = v7;
    if (v7)
    {
      self = -[VNRecognizedText initWithRequestRevision:CRImageReaderOutput:](self, "initWithRequestRevision:CRImageReaderOutput:", [v7 unsignedIntegerValue], v6);
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

- (VNRecognizedText)initWithRequestRevision:(unint64_t)revision CRImageReaderOutput:(id)output
{
  outputCopy = output;
  v11.receiver = self;
  v11.super_class = VNRecognizedText;
  v8 = [(VNRecognizedText *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crOutput, output);
    v9->_requestRevision = revision;
  }

  return v9;
}

@end