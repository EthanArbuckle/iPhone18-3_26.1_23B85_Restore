@interface ZoomUI_UIFocusScrollAnimatorOverride
- (void)setTargetContentOffset:(CGPoint)a3 forEnvironmentScrollableContainer:(id)a4 convergenceRate:(double)a5 completion:(id)a6;
@end

@implementation ZoomUI_UIFocusScrollAnimatorOverride

- (void)setTargetContentOffset:(CGPoint)a3 forEnvironmentScrollableContainer:(id)a4 convergenceRate:(double)a5 completion:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a4;
  v12 = a6;
  if (_AXSZoomTouchEnabled())
  {
    v13 = [getAXSettingsClass() sharedInstance];
    if ([v13 zoomInStandby])
    {
    }

    else
    {
      v14 = [getAXSettingsClass() sharedInstance];
      [v14 zoomScale];
      v16 = v15;

      if (v16 > 1.01)
      {
        a5 = 0.5;
      }
    }
  }

  v17.receiver = self;
  v17.super_class = ZoomUI_UIFocusScrollAnimatorOverride;
  [(ZoomUI_UIFocusScrollAnimatorOverride *)&v17 setTargetContentOffset:v11 forEnvironmentScrollableContainer:v12 convergenceRate:x completion:y, a5];
}

@end