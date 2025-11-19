@interface BEAppearanceViewControllerAccessibility
- (id)brightnessSlider;
- (void)viewDidLoad;
@end

@implementation BEAppearanceViewControllerAccessibility

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BEAppearanceViewControllerAccessibility;
  [(BEAppearanceViewControllerAccessibility *)&v9 viewDidLoad];
  v3 = AEAXLocString(@"brightness");
  v4 = [(BEAppearanceViewControllerAccessibility *)self _imaxBrightnessSlider];
  [v4 setAccessibilityLabel:v3];

  v5 = AEAXLocString(@"decrease.font.size");
  v6 = [(BEAppearanceViewControllerAccessibility *)self _imaxSizeSmallerButton];
  [v6 setAccessibilityLabel:v5];

  v7 = AEAXLocString(@"increase.font.size");
  v8 = [(BEAppearanceViewControllerAccessibility *)self _imaxSizeLargerButton];
  [v8 setAccessibilityLabel:v7];
}

- (id)brightnessSlider
{
  v5.receiver = self;
  v5.super_class = BEAppearanceViewControllerAccessibility;
  v2 = [(BEAppearanceViewControllerAccessibility *)&v5 brightnessSlider];
  v3 = AEAXLocString(@"brightness.slider");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end