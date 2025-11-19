@interface PanoramaMiniPreviewOutput
- (void)dealloc;
@end

@implementation PanoramaMiniPreviewOutput

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = PanoramaMiniPreviewOutput;
  [(PanoramaMiniPreviewOutput *)&v4 dealloc];
}

@end