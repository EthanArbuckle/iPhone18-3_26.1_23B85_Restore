@interface UIView
- (void)applyClearGlassBackground;
- (void)applyClearGlassBackgroundWithTintColor:(id)color;
- (void)applyDiscreetRegularGlassBackgroundWithTintColor:(id)color;
- (void)applyGlassBackground;
- (void)applyRegularGlassBackground;
- (void)applyRegularGlassBackgroundWithTintColor:(id)color;
- (void)applySmallClearGlassBackground;
- (void)applySmallClearGlassBackgroundWithTintColor:(id)color;
- (void)removeBackground;
@end

@implementation UIView

- (void)applyGlassBackground
{
  selfCopy = self;
  UIView.applyGlassBackground()();
}

- (void)applyClearGlassBackground
{
  selfCopy = self;
  UIView.applyClearGlassBackground()();
}

- (void)applyClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

- (void)applyRegularGlassBackground
{
  selfCopy = self;
  UIView.applyRegularGlassBackground()();
}

- (void)applyRegularGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applyRegularGlassBackgroundWithTintColor(_:)(colorCopy);
}

- (void)applyDiscreetRegularGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applyDiscreetRegularGlassBackgroundWithTintColor(_:)(colorCopy);
}

- (void)removeBackground
{
  selfCopy = self;
  UIView.removeBackground()();
}

- (void)applySmallClearGlassBackground
{
  selfCopy = self;
  UIView.applySmallClearGlassBackground()();
}

- (void)applySmallClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applySmallClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

@end