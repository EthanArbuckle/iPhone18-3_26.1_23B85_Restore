@interface ARDepthBasedPersonDetectionResult
- (ARDepthBasedPersonDetectionResult)initWithBoundingBox:(CGRect)a3;
- (ARDepthBasedPersonDetectionResult)initWithCoder:(id)a3;
- (float)meanValue;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARDepthBasedPersonDetectionResult

- (ARDepthBasedPersonDetectionResult)initWithBoundingBox:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ARDepthBasedPersonDetectionResult;
  result = [(ARPersonDetectionResult *)&v4 initWithBoundingBox:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_sumDepthValues = 0.0;
    result->_numberDepthPixels = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = ARDepthBasedPersonDetectionResult;
  result = [(ARPersonDetectionResult *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 10) = LODWORD(self->_sumDepthValues);
    *(result + 6) = self->_numberDepthPixels;
    *(result + 8) = self->_numberDepthPixelsWithHighConfidence;
    *(result + 14) = LODWORD(self->_sumDepthValuesWithHighConfidence);
  }

  return result;
}

- (ARDepthBasedPersonDetectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARDepthBasedPersonDetectionResult;
  v5 = [(ARPersonDetectionResult *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"sumDepthValues"];
    v5->_sumDepthValues = v6;
    v5->_numberDepthPixels = [v4 decodeIntegerForKey:@"numberDepthPixels"];
    v5->_numberDepthPixelsWithHighConfidence = [v4 decodeIntegerForKey:@"numberDepthPixelsWithHighConfidence"];
    v5->_sumDepthValuesWithHighConfidence = [v4 decodeIntegerForKey:@"sumDepthValuesWithHighConfidence"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ARDepthBasedPersonDetectionResult;
  v4 = a3;
  [(ARPersonDetectionResult *)&v6 encodeWithCoder:v4];
  *&v5 = self->_sumDepthValues;
  [v4 encodeFloat:@"sumDepthValues" forKey:{v5, v6.receiver, v6.super_class}];
  [v4 encodeInteger:self->_numberDepthPixels forKey:@"numberDepthPixels"];
  [v4 encodeInteger:self->_numberDepthPixelsWithHighConfidence forKey:@"numberDepthPixelsWithHighConfidence"];
  [v4 encodeInteger:self->_sumDepthValuesWithHighConfidence forKey:@"sumDepthValuesWithHighConfidence"];
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