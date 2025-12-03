@interface SBDashBoardCameraPageViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation SBDashBoardCameraPageViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  _accessibilityMaskViewColor = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityMaskViewColor];

  if (!_accessibilityMaskViewColor)
  {
    objc_opt_class();
    v4 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_maskView"];
    v5 = __UIAccessibilityCastAsClass();

    backgroundColor = [v5 backgroundColor];

    if (backgroundColor)
    {
      [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _setAccessibilityMaskViewColor:backgroundColor];
    }
  }

  _accessibilityTintViewColor = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityTintViewColor];

  if (!_accessibilityTintViewColor)
  {
    objc_opt_class();
    v8 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_tintView"];
    v9 = __UIAccessibilityCastAsClass();

    backgroundColor2 = [v9 backgroundColor];

    if (backgroundColor2)
    {
      [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _setAccessibilityTintViewColor:backgroundColor2];
    }
  }

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v11 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_maskView"];
    v12 = +[UIColor whiteColor];
    [v11 setBackgroundColor:v12];

    v13 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_tintView"];
    v14 = +[UIColor whiteColor];
    [v13 setBackgroundColor:v14];
  }

  else
  {
    _accessibilityMaskViewColor2 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityMaskViewColor];
    v16 = _accessibilityMaskViewColor2;
    if (_accessibilityMaskViewColor2)
    {
      v17 = _accessibilityMaskViewColor2;
    }

    else
    {
      v17 = +[UIColor blackColor];
    }

    v13 = v17;

    _accessibilityTintViewColor2 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityTintViewColor];
    v19 = _accessibilityTintViewColor2;
    if (_accessibilityTintViewColor2)
    {
      v20 = _accessibilityTintViewColor2;
    }

    else
    {
      v20 = +[UIColor blackColor];
    }

    v14 = v20;

    v21 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_maskView"];
    [v21 setBackgroundColor:v13];

    v22 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_tintView"];
    [v22 setBackgroundColor:v14];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBDashBoardCameraPageViewControllerInvertColorsAccessibility;
  [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end