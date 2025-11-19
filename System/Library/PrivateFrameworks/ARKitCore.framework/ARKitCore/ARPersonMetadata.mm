@interface ARPersonMetadata
- (ARPersonMetadata)initWithBoundingBox:(CGRect)a3 meanDepth:(double)a4;
- (ARPersonMetadata)initWithCoder:(id)a3;
- (ARPersonMetadata)initWithDepthBasedPersonDetectionResult:(id)a3;
- (CGRect)boundingBox;
- (CGRect)rectScaledToSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPersonMetadata

- (ARPersonMetadata)initWithDepthBasedPersonDetectionResult:(id)a3
{
  v4 = a3;
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 meanValue];
  v14 = v13;

  return [(ARPersonMetadata *)self initWithBoundingBox:v6 meanDepth:v8, v10, v12, v14];
}

- (ARPersonMetadata)initWithBoundingBox:(CGRect)a3 meanDepth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = ARPersonMetadata;
  result = [(ARPersonMetadata *)&v10 init];
  if (result)
  {
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    result->_meanDepth = a4;
    result->_boundingBox.origin.x = x;
  }

  return result;
}

- (CGRect)rectScaledToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    size = self->_boundingBox.size;
    *(result + 1) = self->_boundingBox.origin;
    *(result + 2) = size;
    *(result + 1) = *&self->_meanDepth;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  meanDepth = self->_meanDepth;
  v6 = a3;
  *&v5 = meanDepth;
  [v6 encodeFloat:@"meanDepth" forKey:v5];
  [v6 encodeRect:@"boundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
}

- (ARPersonMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARPersonMetadata;
  v5 = [(ARPersonMetadata *)&v12 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"meanDepth"];
    v5->_meanDepth = v6;
    [v4 decodeRectForKey:@"boundingBox"];
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