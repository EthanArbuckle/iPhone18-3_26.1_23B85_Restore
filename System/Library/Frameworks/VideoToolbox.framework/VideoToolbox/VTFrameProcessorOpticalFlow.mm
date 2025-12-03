@interface VTFrameProcessorOpticalFlow
- (VTFrameProcessorOpticalFlow)initWithForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
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

- (VTFrameProcessorOpticalFlow)initWithForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  result = 0;
  if (flow)
  {
    if (backwardFlow)
    {
      loadVEFrameworkOnce();
      v11.receiver = self;
      v11.super_class = VTFrameProcessorOpticalFlow;
      result = [(VTFrameProcessorOpticalFlow *)&v11 init];
      if (result)
      {
        v8 = result;
        IOSurface = CVPixelBufferGetIOSurface(flow);
        v10 = CVPixelBufferGetIOSurface(backwardFlow);
        result = 0;
        if (IOSurface)
        {
          if (v10)
          {
            v8->_forwardFlow = CFRetain(flow);
            v8->_backwardFlow = CFRetain(backwardFlow);
            return v8;
          }
        }
      }
    }
  }

  return result;
}

@end