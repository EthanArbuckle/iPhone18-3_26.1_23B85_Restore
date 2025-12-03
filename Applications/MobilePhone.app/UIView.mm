@interface UIView
- (void)applyClearGlassBackgroundWithTintColor:(id)color;
- (void)applySmallClearGlassBackgroundWithTintColor:(id)color;
@end

@implementation UIView

- (void)applyClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

- (void)applySmallClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applySmallClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

@end