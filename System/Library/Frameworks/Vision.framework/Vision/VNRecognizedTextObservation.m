@interface VNRecognizedTextObservation
- (BOOL)isEqual:(id)a3;
- (NSArray)topCandidates:(NSUInteger)maxCandidateCount;
- (VNRecognizedTextObservation)initWithCoder:(id)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setText:(id)a3;
@end

@implementation VNRecognizedTextObservation

- (void)setText:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  text = self->_text;
  self->_text = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VNRecognizedTextObservation;
    if ([(VNRectangleObservation *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(VNRecognizedTextObservation *)v4 textObjects];
      v6 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedTextObservation;
  return [(NSArray *)self->_textObjects hash]^ __ROR8__([(VNRectangleObservation *)&v3 hash], 51);
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNRecognizedTextObservation;
  v3 = [(VNRectangleObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSArray *)self->_textObjects copy];
    v5 = v3[29];
    v3[29] = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNRecognizedTextObservation;
  [(VNRectangleObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_text forKey:@"text"];
  [v4 encodeObject:self->_textObjects forKey:@"textObjects"];
}

- (VNRecognizedTextObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNRecognizedTextObservation;
  v5 = [(VNRectangleObservation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"textObjects"];
    v10 = [v9 copy];
    textObjects = v5->_textObjects;
    v5->_textObjects = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    if (v12)
    {
      [(VNRecognizedTextObservation *)v5 setText:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (NSArray)topCandidates:(NSUInteger)maxCandidateCount
{
  if (maxCandidateCount)
  {
    v4 = [(VNRecognizedTextObservation *)self textObjects];
    v5 = [v4 count];
    if (v5 >= maxCandidateCount)
    {
      v6 = maxCandidateCount;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 subarrayWithRange:{0, v6}];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end