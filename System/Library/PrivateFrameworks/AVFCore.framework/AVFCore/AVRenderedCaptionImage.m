@interface AVRenderedCaptionImage
- (AVRenderedCaptionImage)initWithPixelBuffer:(__CVBuffer *)a3 atPosition:(CGPoint)a4;
- (CGPoint)position;
- (void)dealloc;
@end

@implementation AVRenderedCaptionImage

- (AVRenderedCaptionImage)initWithPixelBuffer:(__CVBuffer *)a3 atPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = AVRenderedCaptionImage;
  v7 = [(AVRenderedCaptionImage *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_position.x = x;
    v7->_position.y = y;
    v7->_pixelBuffer = CVPixelBufferRetain(a3);
  }

  return v8;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = AVRenderedCaptionImage;
  [(AVRenderedCaptionImage *)&v3 dealloc];
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end