@interface CRLRemoveImageBackgroundData
- (CGPoint)offset;
- (void)dealloc;
- (void)setImage:(CGImage *)a3;
@end

@implementation CRLRemoveImageBackgroundData

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
    self->_image = 0;
  }

  self->_image = CGImageRetain(a3);
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
    self->_image = 0;
  }

  v4.receiver = self;
  v4.super_class = CRLRemoveImageBackgroundData;
  [(CRLRemoveImageBackgroundData *)&v4 dealloc];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end