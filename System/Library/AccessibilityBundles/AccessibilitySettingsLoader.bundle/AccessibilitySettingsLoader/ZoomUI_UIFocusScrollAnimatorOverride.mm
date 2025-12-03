@interface ZoomUI_UIFocusScrollAnimatorOverride
- (void)setTargetContentOffset:(CGPoint)offset forEnvironmentScrollableContainer:(id)container convergenceRate:(double)rate completion:(id)completion;
@end

@implementation ZoomUI_UIFocusScrollAnimatorOverride

- (void)setTargetContentOffset:(CGPoint)offset forEnvironmentScrollableContainer:(id)container convergenceRate:(double)rate completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  containerCopy = container;
  completionCopy = completion;
  if (_AXSZoomTouchEnabled())
  {
    sharedInstance = [getAXSettingsClass() sharedInstance];
    if ([sharedInstance zoomInStandby])
    {
    }

    else
    {
      sharedInstance2 = [getAXSettingsClass() sharedInstance];
      [sharedInstance2 zoomScale];
      v16 = v15;

      if (v16 > 1.01)
      {
        rate = 0.5;
      }
    }
  }

  v17.receiver = self;
  v17.super_class = ZoomUI_UIFocusScrollAnimatorOverride;
  [(ZoomUI_UIFocusScrollAnimatorOverride *)&v17 setTargetContentOffset:containerCopy forEnvironmentScrollableContainer:completionCopy convergenceRate:x completion:y, rate];
}

@end