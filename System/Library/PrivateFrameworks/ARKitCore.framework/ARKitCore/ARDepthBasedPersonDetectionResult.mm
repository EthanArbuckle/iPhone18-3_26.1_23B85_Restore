@interface ARDepthBasedPersonDetectionResult
- (ARDepthBasedPersonDetectionResult)initWithBoundingBox:(CGRect)box;
- (ARDepthBasedPersonDetectionResult)initWithCoder:(id)coder;
- (float)meanValue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARDepthBasedPersonDetectionResult

- (ARDepthBasedPersonDetectionResult)initWithBoundingBox:(CGRect)box
{
  v4.receiver = self;
  v4.super_class = ARDepthBasedPersonDetectionResult;
  result = [(ARPersonDetectionResult *)&v4 initWithBoundingBox:box.origin.x, box.origin.y, box.size.width, box.size.height];
  if (result)
  {
    result->_sumDepthValues = 0.0;
    result->_numberDepthPixels = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = ARDepthBasedPersonDetectionResult;
  result = [(ARPersonDetectionResult *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 10) = LODWORD(self->_sumDepthValues);
    *(result + 6) = self->_numberDepthPixels;
    *(result + 8) = self->_numberDepthPixelsWithHighConfidence;
    *(result + 14) = LODWORD(self->_sumDepthValuesWithHighConfidence);
  }

  return result;
}

- (ARDepthBasedPersonDetectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ARDepthBasedPersonDetectionResult;
  v5 = [(ARPersonDetectionResult *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"sumDepthValues"];
    v5->_sumDepthValues = v6;
    v5->_numberDepthPixels = [coderCopy decodeIntegerForKey:@"numberDepthPixels"];
    v5->_numberDepthPixelsWithHighConfidence = [coderCopy decodeIntegerForKey:@"numberDepthPixelsWithHighConfidence"];
    v5->_sumDepthValuesWithHighConfidence = [coderCopy decodeIntegerForKey:@"sumDepthValuesWithHighConfidence"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARDepthBasedPersonDetectionResult;
  coderCopy = coder;
  [(ARPersonDetectionResult *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_sumDepthValues;
  [coderCopy encodeFloat:@"sumDepthValues" forKey:{v5, v6.receiver, v6.super_class}];
  [coderCopy encodeInteger:self->_numberDepthPixels forKey:@"numberDepthPixels"];
  [coderCopy encodeInteger:self->_numberDepthPixelsWithHighConfidence forKey:@"numberDepthPixelsWithHighConfidence"];
  [coderCopy encodeInteger:self->_sumDepthValuesWithHighConfidence forKey:@"sumDepthValuesWithHighConfidence"];
}

- (float)meanValue
{
  numberDepthPixels = self->_numberDepthPixels;
  if (!numberDepthPixels)
  {
    return NAN;
  }

  numberDepthPixelsWithHighConfidence = self->_numberDepthPixelsWithHighConfidence;
  v4 = numberDepthPixels * 0.75;
  if (numberDepthPixelsWithHighConfidence <= v4)
  {
    return self->_sumDepthValues / numberDepthPixels;
  }

  else
  {
    return self->_sumDepthValuesWithHighConfidence / numberDepthPixelsWithHighConfidence;
  }
}

@end