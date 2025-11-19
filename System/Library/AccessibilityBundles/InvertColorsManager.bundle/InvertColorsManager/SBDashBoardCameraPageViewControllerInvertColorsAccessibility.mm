@interface SBDashBoardCameraPageViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation SBDashBoardCameraPageViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityMaskViewColor];

  if (!v3)
  {
    objc_opt_class();
    v4 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_maskView"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 backgroundColor];

    if (v6)
    {
      [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _setAccessibilityMaskViewColor:v6];
    }
  }

  v7 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityTintViewColor];

  if (!v7)
  {
    objc_opt_class();
    v8 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_tintView"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = [v9 backgroundColor];

    if (v10)
    {
      [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _setAccessibilityTintViewColor:v10];
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
    v15 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityMaskViewColor];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[UIColor blackColor];
    }

    v13 = v17;

    v18 = [(SBDashBoardCameraPageViewControllerInvertColorsAccessibility *)self _accessibilityTintViewColor];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
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