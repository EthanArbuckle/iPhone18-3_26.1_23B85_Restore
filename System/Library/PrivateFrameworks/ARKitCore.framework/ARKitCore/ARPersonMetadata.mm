@interface ARPersonMetadata
- (ARPersonMetadata)initWithBoundingBox:(CGRect)box meanDepth:(double)depth;
- (ARPersonMetadata)initWithCoder:(id)coder;
- (ARPersonMetadata)initWithDepthBasedPersonDetectionResult:(id)result;
- (CGRect)boundingBox;
- (CGRect)rectScaledToSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPersonMetadata

- (ARPersonMetadata)initWithDepthBasedPersonDetectionResult:(id)result
{
  resultCopy = result;
  [resultCopy boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [resultCopy meanValue];
  v14 = v13;

  return [(ARPersonMetadata *)self initWithBoundingBox:v6 meanDepth:v8, v10, v12, v14];
}

- (ARPersonMetadata)initWithBoundingBox:(CGRect)box meanDepth:(double)depth
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v10.receiver = self;
  v10.super_class = ARPersonMetadata;
  result = [(ARPersonMetadata *)&v10 init];
  if (result)
  {
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    result->_meanDepth = depth;
    result->_boundingBox.origin.x = x;
  }

  return result;
}

- (CGRect)rectScaledToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(ARPersonMetadata *)self boundingBox];
  v7 = width * v6;
  [(ARPersonMetadata *)self boundingBox];
  v9 = height * v8;
  [(ARPersonMetadata *)self boundingBox];
  v11 = width * v10;
  [(ARPersonMetadata *)self boundingBox];
  v13 = height * v12;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  if (result)
  {
    size = self->_boundingBox.size;
    *(result + 1) = self->_boundingBox.origin;
    *(result + 2) = size;
    *(result + 1) = *&self->_meanDepth;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  meanDepth = self->_meanDepth;
  coderCopy = coder;
  *&v5 = meanDepth;
  [coderCopy encodeFloat:@"meanDepth" forKey:v5];
  [coderCopy encodeRect:@"boundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
}

- (ARPersonMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ARPersonMetadata;
  v5 = [(ARPersonMetadata *)&v12 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"meanDepth"];
    v5->_meanDepth = v6;
    [coderCopy decodeRectForKey:@"boundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
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