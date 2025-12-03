@interface ARPersonDetectionResult
- (ARPersonDetectionResult)initWithBoundingBox:(CGRect)box;
- (ARPersonDetectionResult)initWithCoder:(id)coder;
- (CGRect)boundingBox;
- (CGRect)rectScaledToSizeOfPixelBuffer:(__CVBuffer *)buffer;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARPersonDetectionResult

- (ARPersonDetectionResult)initWithBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
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

- (CGRect)rectScaledToSizeOfPixelBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  if (result)
  {
    origin = self->_boundingBox.origin;
    *(result + 24) = self->_boundingBox.size;
    *(result + 8) = origin;
  }

  return result;
}

- (ARPersonDetectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ARPersonDetectionResult;
  v5 = [(ARPersonDetectionResult *)&v7 init];
  if (v5)
  {
    [coderCopy decodeRectForKey:@"boundingBox"];
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