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
  _imaxBrightnessSlider = [(BEAppearanceViewControllerAccessibility *)self _imaxBrightnessSlider];
  [_imaxBrightnessSlider setAccessibilityLabel:v3];

  v5 = AEAXLocString(@"decrease.font.size");
  _imaxSizeSmallerButton = [(BEAppearanceViewControllerAccessibility *)self _imaxSizeSmallerButton];
  [_imaxSizeSmallerButton setAccessibilityLabel:v5];

  v7 = AEAXLocString(@"increase.font.size");
  _imaxSizeLargerButton = [(BEAppearanceViewControllerAccessibility *)self _imaxSizeLargerButton];
  [_imaxSizeLargerButton setAccessibilityLabel:v7];
}

- (id)brightnessSlider
{
  v5.receiver = self;
  v5.super_class = BEAppearanceViewControllerAccessibility;
  brightnessSlider = [(BEAppearanceViewControllerAccessibility *)&v5 brightnessSlider];
  v3 = AEAXLocString(@"brightness.slider");
  [brightnessSlider setAccessibilityLabel:v3];

  return brightnessSlider;
}

@end