@interface VTFrameProcessorOpticalFlow
- (VTFrameProcessorOpticalFlow)initWithForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4;
- (id)veFrameOpticalFlow;
- (void)dealloc;
@end

@implementation VTFrameProcessorOpticalFlow

- (id)veFrameOpticalFlow
{
  v3 = NSClassFromString(&cfstr_Veframeoptical.isa);
  result = self->_veFrameOpticalFlow;
  if (!result)
  {
    result = [[v3 alloc] initWithForwardFlow:self->_forwardFlow backwardFlow:self->_backwardFlow];
    self->_veFrameOpticalFlow = result;
  }

  return result;
}

- (void)dealloc
{
  forwardFlow = self->_forwardFlow;
  if (forwardFlow)
  {
    CFRelease(forwardFlow);
  }

  backwardFlow = self->_backwardFlow;
  if (backwardFlow)
  {
    CFRelease(backwardFlow);
  }

  v5.receiver = self;
  v5.super_class = VTFrameProcessorOpticalFlow;
  [(VTFrameProcessorOpticalFlow *)&v5 dealloc];
}

- (VTFrameProcessorOpticalFlow)initWithForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      loadVEFrameworkOnce();
      v11.receiver = self;
      v11.super_class = VTFrameProcessorOpticalFlow;
      result = [(VTFrameProcessorOpticalFlow *)&v11 init];
      if (result)
      {
        v8 = result;
        IOSurface = CVPixelBufferGetIOSurface(a3);
        v10 = CVPixelBufferGetIOSurface(a4);
        result = 0;
        if (IOSurface)
        {
          if (v10)
          {
            v8->_forwardFlow = CFRetain(a3);
            v8->_backwardFlow = CFRetain(a4);
            return v8;
          }
        }
      }
    }
  }

  return result;
}

@end