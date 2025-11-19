@interface OSDCameraFrame
- (void)dealloc;
- (void)setBuffer:(__CVBuffer *)a3;
@end

@implementation OSDCameraFrame

- (void)setBuffer:(__CVBuffer *)a3
{
  buffer = self->_buffer;
  if (buffer)
  {
    CVPixelBufferRelease(buffer);
    self->_buffer = 0;
  }

  if (a3)
  {
    CVPixelBufferRetain(a3);
    self->_buffer = a3;
  }
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    CVPixelBufferRelease(buffer);
  }

  v4.receiver = self;
  v4.super_class = OSDCameraFrame;
  [(OSDCameraFrame *)&v4 dealloc];
}

@end