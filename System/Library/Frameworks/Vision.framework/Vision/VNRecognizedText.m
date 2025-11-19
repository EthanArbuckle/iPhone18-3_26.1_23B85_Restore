@interface VNRecognizedText
- (BOOL)isEqual:(id)a3;
- (NSString)string;
- (VNConfidence)confidence;
- (VNRecognizedText)initWithCoder:(id)a3;
- (VNRecognizedText)initWithRequestRevision:(unint64_t)a3 CRImageReaderOutput:(id)a4;
- (VNRectangleObservation)boundingBoxForRange:(NSRange)range error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedText

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = VNRecognizedText;
  v3 = [(VNRecognizedText *)&v8 debugDescription];
  v4 = [(VNRecognizedText *)self string];
  [(VNRecognizedText *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" %@ - (%f) revision: %ld", v4, v5, -[VNRecognizedText requestRevision](self, "requestRevision")];

  return v6;
}

- (VNRectangleObservation)boundingBoxForRange:(NSRange)range error:(NSError *)error
{
  length = range.length;
  location = range.location;
  v8 = [(VNRecognizedText *)self crOutput];
  v9 = [v8 cornersForCharacterRange:location error:{length, error}];

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
  v2 = [(VNRecognizedText *)self crOutput];
  v3 = [v2 confidence];
  v4 = 0.0;
  if (v3 < 3)
  {
    v4 = *&dword_1A6050128[v3];
  }

  return v4;
}

- (NSString)string
{
  v2 = [(VNRecognizedText *)self crOutput];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNRecognizedText *)v5 crOutput];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VNRecognizedText alloc];
  requestRevision = self->_requestRevision;
  v6 = [(CRImageReaderOutput *)self->_crOutput copy];
  v7 = [(VNRecognizedText *)v4 initWithRequestRevision:requestRevision CRImageReaderOutput:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_crOutput forKey:@"crOutput"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestRevision];
  [v5 encodeObject:v4 forKey:@"requestRevision"];
}

- (VNRecognizedText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crOutput"];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestRevision"];
    v8 = v7;
    if (v7)
    {
      self = -[VNRecognizedText initWithRequestRevision:CRImageReaderOutput:](self, "initWithRequestRevision:CRImageReaderOutput:", [v7 unsignedIntegerValue], v6);
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

- (VNRecognizedText)initWithRequestRevision:(unint64_t)a3 CRImageReaderOutput:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VNRecognizedText;
  v8 = [(VNRecognizedText *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crOutput, a4);
    v9->_requestRevision = a3;
  }

  return v9;
}

@end