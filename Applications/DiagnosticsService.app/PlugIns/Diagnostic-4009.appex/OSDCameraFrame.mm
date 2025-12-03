@interface OSDCameraFrame
- (void)dealloc;
- (void)setBuffer:(__CVBuffer *)buffer;
@end

@implementation OSDCameraFrame

- (void)setBuffer:(__CVBuffer *)buffer
{
  buffer = self->_buffer;
  if (buffer)
  {
    CVPixelBufferRelease(buffer);
    self->_buffer = 0;
  }

  if (buffer)
  {
    CVPixelBufferRetain(buffer);
    self->_buffer = buffer;
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