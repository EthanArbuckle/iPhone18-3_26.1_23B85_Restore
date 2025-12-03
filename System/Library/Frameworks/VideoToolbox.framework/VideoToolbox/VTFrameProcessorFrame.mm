@interface VTFrameProcessorFrame
- (VTFrameProcessorFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp;
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

- (VTFrameProcessorFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  if (!buffer)
  {
    return 0;
  }

  loadVEFrameworkOnce();
  v10.receiver = self;
  v10.super_class = VTFrameProcessorFrame;
  v7 = [(VTFrameProcessorFrame *)&v10 init];
  if (v7)
  {
    if (CVPixelBufferGetIOSurface(buffer))
    {
      *(v7 + 2) = CFRetain(buffer);
      var3 = stamp->var3;
      *(v7 + 24) = *&stamp->var0;
      *(v7 + 5) = var3;
      return v7;
    }

    return 0;
  }

  return v7;
}

@end