@interface AVCacheLargestInscribedRectInBoundingPathValue
- (AVCacheLargestInscribedRectInBoundingPathValue)initWithLargestInscribedRect:(CGRect)a3;
- (CGRect)largestInscribedRect;
@end

@implementation AVCacheLargestInscribedRectInBoundingPathValue

- (CGRect)largestInscribedRect
{
  x = self->_largestInscribedRect.origin.x;
  y = self->_largestInscribedRect.origin.y;
  width = self->_largestInscribedRect.size.width;
  height = self->_largestInscribedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVCacheLargestInscribedRectInBoundingPathValue)initWithLargestInscribedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = AVCacheLargestInscribedRectInBoundingPathValue;
  v7 = [(AVCacheLargestInscribedRectInBoundingPathValue *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AVCacheLargestInscribedRectInBoundingPathValue *)v7 setLargestInscribedRect:x, y, width, height];
  }

  return v8;
}

@end