@interface ARPersonDetectionResult
- (ARPersonDetectionResult)initWithBoundingBox:(CGRect)a3;
- (ARPersonDetectionResult)initWithCoder:(id)a3;
- (CGRect)boundingBox;
- (CGRect)rectScaledToSizeOfPixelBuffer:(__CVBuffer *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ARPersonDetectionResult

- (ARPersonDetectionResult)initWithBoundingBox:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = ARPersonDetectionResult;
  result = [(ARPersonDetectionResult *)&v8 init];
  if (result)
  {
    result->_boundingBox.origin.x = x;
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
  }

  return result;
}

- (CGRect)rectScaledToSizeOfPixelBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  [(ARPersonDetectionResult *)self boundingBox];
  v8 = v7 * Width;
  [(ARPersonDetectionResult *)self boundingBox];
  v10 = v9 * Height;
  [(ARPersonDetectionResult *)self boundingBox];
  v12 = v11 * Width;
  [(ARPersonDetectionResult *)self boundingBox];
  v14 = v13 * Height;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    origin = self->_boundingBox.origin;
    *(result + 24) = self->_boundingBox.size;
    *(result + 8) = origin;
  }

  return result;
}

- (ARPersonDetectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ARPersonDetectionResult;
  v5 = [(ARPersonDetectionResult *)&v7 init];
  if (v5)
  {
    [v4 decodeRectForKey:@"boundingBox"];
    [(ARPersonDetectionResult *)v5 setBoundingBox:?];
  }

  return v5;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end