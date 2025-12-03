@interface VNRecognizedTextObservation
- (BOOL)isEqual:(id)equal;
- (NSArray)topCandidates:(NSUInteger)maxCandidateCount;
- (VNRecognizedTextObservation)initWithCoder:(id)coder;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setText:(id)text;
@end

@implementation VNRecognizedTextObservation

- (void)setText:(id)text
{
  textCopy = text;
  v4 = [textCopy copy];
  text = self->_text;
  self->_text = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VNRecognizedTextObservation;
    if ([(VNRectangleObservation *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      textObjects = [(VNRecognizedTextObservation *)equalCopy textObjects];
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
  vn_cloneObject = [(VNRectangleObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSArray *)self->_textObjects copy];
    v5 = vn_cloneObject[29];
    vn_cloneObject[29] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNRecognizedTextObservation;
  [(VNRectangleObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_textObjects forKey:@"textObjects"];
}

- (VNRecognizedTextObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VNRecognizedTextObservation;
  v5 = [(VNRectangleObservation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"textObjects"];
    v10 = [v9 copy];
    textObjects = v5->_textObjects;
    v5->_textObjects = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
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
    textObjects = [(VNRecognizedTextObservation *)self textObjects];
    v5 = [textObjects count];
    if (v5 >= maxCandidateCount)
    {
      v6 = maxCandidateCount;
    }

    else
    {
      v6 = v5;
    }

    v7 = [textObjects subarrayWithRange:{0, v6}];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end