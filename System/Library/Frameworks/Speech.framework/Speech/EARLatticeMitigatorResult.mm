@interface EARLatticeMitigatorResult
- (EARLatticeMitigatorResult)initWithCoder:(id)coder;
- (EARLatticeMitigatorResult)initWithLatticeMitigatorResult:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARLatticeMitigatorResult

- (EARLatticeMitigatorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = EARLatticeMitigatorResult;
  v5 = [(EARLatticeMitigatorResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    [coderCopy decodeFloatForKey:@"score"];
    v5->_score = v8;
    [coderCopy decodeFloatForKey:@"threshold"];
    v5->_threshold = v9;
    [coderCopy decodeFloatForKey:@"calibrationScale"];
    v5->_calibrationScale = v10;
    [coderCopy decodeFloatForKey:@"calibrationOffset"];
    v5->_calibrationOffset = v11;
    v5->_processed = [coderCopy decodeBoolForKey:@"processed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"version"];
  *&v5 = self->_score;
  [coderCopy encodeFloat:@"score" forKey:v5];
  *&v6 = self->_threshold;
  [coderCopy encodeFloat:@"threshold" forKey:v6];
  *&v7 = self->_calibrationScale;
  [coderCopy encodeFloat:@"calibrationScale" forKey:v7];
  *&v8 = self->_calibrationOffset;
  [coderCopy encodeFloat:@"calibrationOffset" forKey:v8];
  [coderCopy encodeBool:self->_processed forKey:@"processed"];
}

- (EARLatticeMitigatorResult)initWithLatticeMitigatorResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v14.receiver = self;
    v14.super_class = EARLatticeMitigatorResult;
    v5 = [(EARLatticeMitigatorResult *)&v14 init];
    if (v5)
    {
      version = [resultCopy version];
      version = v5->_version;
      v5->_version = version;

      [resultCopy score];
      v5->_score = v8;
      [resultCopy threshold];
      v5->_threshold = v9;
      [resultCopy calibrationScale];
      v5->_calibrationScale = v10;
      [resultCopy calibrationOffset];
      v5->_calibrationOffset = v11;
      v5->_processed = [resultCopy processed];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end