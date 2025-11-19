@interface UIView
- (void)applyClearGlassBackground;
- (void)applyClearGlassBackgroundWithTintColor:(id)a3;
- (void)applyDiscreetRegularGlassBackgroundWithTintColor:(id)a3;
- (void)applyGlassBackground;
- (void)applyRegularGlassBackground;
- (void)applyRegularGlassBackgroundWithTintColor:(id)a3;
- (void)applySmallClearGlassBackground;
- (void)applySmallClearGlassBackgroundWithTintColor:(id)a3;
- (void)removeBackground;
@end

@implementation UIView

- (void)applyGlassBackground
{
  v2 = self;
  UIView.applyGlassBackground()();
}

- (void)applyClearGlassBackground
{
  v2 = self;
  UIView.applyClearGlassBackground()();
}

- (void)applyClearGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(v4);
}

- (void)applyRegularGlassBackground
{
  v2 = self;
  UIView.applyRegularGlassBackground()();
}

- (void)applyRegularGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applyRegularGlassBackgroundWithTintColor(_:)(v4);
}

- (void)applyDiscreetRegularGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applyDiscreetRegularGlassBackgroundWithTintColor(_:)(v4);
}

- (void)removeBackground
{
  v2 = self;
  UIView.removeBackground()();
}

- (void)applySmallClearGlassBackground
{
  v2 = self;
  UIView.applySmallClearGlassBackground()();
}

- (void)applySmallClearGlassBackgroundWithTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  UIView.applySmallClearGlassBackgroundWithTintColor(_:)(v4);
}

@end