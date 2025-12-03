@interface CAMScreenLuminanceObserverLayer
- (CAMScreenLuminanceObserverLayer)init;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
@end

@implementation CAMScreenLuminanceObserverLayer

- (CAMScreenLuminanceObserverLayer)init
{
  v5.receiver = self;
  v5.super_class = CAMScreenLuminanceObserverLayer;
  v2 = [(CAMScreenLuminanceObserverLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->__interpolatedGainModulation = 0.0;
    [(CAMScreenLuminanceObserverLayer *)v2 setDelegate:v2];
    [(CAMScreenLuminanceObserverLayer *)v3 setCaptureOnly:1];
    [(CAMScreenLuminanceObserverLayer *)v3 setTracksLuma:1];
  }

  return v3;
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  gainModulationCallback = [(CAMScreenLuminanceObserverLayer *)self gainModulationCallback];

  if (gainModulationCallback)
  {
    self->__interpolatedGainModulation = ((luma + -0.25) * 4.0 / 0.75 + 0.0) * 0.25 + self->__interpolatedGainModulation * 0.75;
    gainModulationCallback2 = [(CAMScreenLuminanceObserverLayer *)self gainModulationCallback];
    gainModulationCallback2[2](self->__interpolatedGainModulation);
  }
}

@end