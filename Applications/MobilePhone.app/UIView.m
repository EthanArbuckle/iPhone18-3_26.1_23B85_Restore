@interface UIView
- (void)applyClearGlassBackgroundWithTintColor:(id)a3;
- (void)applySmallClearGlassBackgroundWithTintColor:(id)a3;
@end

@implementation UIView

- (void)applyClearGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(v4);
}

- (void)applySmallClearGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applySmallClearGlassBackgroundWithTintColor(_:)(v4);
}

@end