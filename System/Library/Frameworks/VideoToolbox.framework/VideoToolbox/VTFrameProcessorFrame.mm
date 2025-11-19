@interface VTFrameProcessorFrame
- (VTFrameProcessorFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4;
- (id)veFrame;
- (void)dealloc;
@end

@implementation VTFrameProcessorFrame

- (id)veFrame
{
  v3 = NSClassFromString(&cfstr_Veframe.isa);
  result = self->_veFrame;
  if (!result)
  {
    v5 = [v3 alloc];
    buffer = self->_buffer;
    v7 = *&self->_presentationTimeStamp.value;
    epoch = self->_presentationTimeStamp.epoch;
    result = [v5 initWithBuffer:buffer presentationTimeStamp:&v7];
    self->_veFrame = result;
  }

  return result;
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    CFRelease(buffer);
  }

  v4.receiver = self;
  v4.super_class = VTFrameProcessorFrame;
  [(VTFrameProcessorFrame *)&v4 dealloc];
}

- (VTFrameProcessorFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  loadVEFrameworkOnce();
  v10.receiver = self;
  v10.super_class = VTFrameProcessorFrame;
  v7 = [(VTFrameProcessorFrame *)&v10 init];
  if (v7)
  {
    if (CVPixelBufferGetIOSurface(a3))
    {
      *(v7 + 2) = CFRetain(a3);
      var3 = a4->var3;
      *(v7 + 24) = *&a4->var0;
      *(v7 + 5) = var3;
      return v7;
    }

    return 0;
  }

  return v7;
}

@end