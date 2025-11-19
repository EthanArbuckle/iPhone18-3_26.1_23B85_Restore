@interface UIVisualEffectViewInvertColorsAccessibility
- (void)_ensureBackgroundHost;
@end

@implementation UIVisualEffectViewInvertColorsAccessibility

- (void)_ensureBackgroundHost
{
  v7.receiver = self;
  v7.super_class = UIVisualEffectViewInvertColorsAccessibility;
  [(UIVisualEffectViewInvertColorsAccessibility *)&v7 _ensureBackgroundHost];
  if ([(UIVisualEffectViewInvertColorsAccessibility *)self accessibilityVisualEffectHandleBackdrop])
  {
    v3 = [(UIVisualEffectViewInvertColorsAccessibility *)self contentView];
    v4 = +[UIColor blackColor];
    v5 = [v4 colorWithAlphaComponent:0.5];
    v6 = [AXInvertColorsAppHelper insertBackgroundView:v3 color:v5];
  }
}

@end