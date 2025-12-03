@interface CSCoverSheetViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_updateBackground;
- (void)viewDidLoad;
@end

@implementation CSCoverSheetViewControllerInvertColorsAccessibility

- (void)_updateBackground
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewControllerInvertColorsAccessibility;
  [(CSCoverSheetViewControllerInvertColorsAccessibility *)&v3 _updateBackground];
  [(CSCoverSheetViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v4 = [(CSCoverSheetViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_screenWakeAnimationController"];
  v5 = [v4 safeValueForKey:@"target"];
  v6 = [v5 safeUIViewForKey:@"wakeEffectView"];
  layer = [v6 layer];

  v8 = +[AXSpringBoardServer server];
  LODWORD(v5) = [v8 isDarkModeActive];

  if (v5 && IsInvertColorsEnabled)
  {
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
  }

  else
  {
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
  }

  v9 = [(CSCoverSheetViewControllerInvertColorsAccessibility *)self safeValueForKey:@"coverSheetView"];
  v10 = [v9 safeUIViewForKey:@"backgroundView"];
  v11 = __UIAccessibilitySafeClass();

  v12 = [v11 backgroundStyle] == &dword_4 + 2 || objc_msgSend(v11, "backgroundStyle") == &dword_4 + 3;
  v13 = [(CSCoverSheetViewControllerInvertColorsAccessibility *)self _accessibilityValueForKey:@"StoredBackground"];
  v14 = v13;
  if (!v13 || v12 != [v13 BOOLValue])
  {
    v15 = [NSNumber numberWithBool:v12];
    [(CSCoverSheetViewControllerInvertColorsAccessibility *)self _accessibilitySetRetainedValue:v15 forKey:@"StoredBackground"];

    [v11 setAccessibilityIgnoresInvertColors:v12];
    v16 = v12 && IsInvertColorsEnabled;
    window = [v11 window];
    if (v16)
    {
      [(CSCoverSheetViewControllerInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:window];
    }

    else
    {
      [(CSCoverSheetViewControllerInvertColorsAccessibility *)self accessibilityDeapplyIgnoreInvertToWindow:window];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewControllerInvertColorsAccessibility;
  [(CSCoverSheetViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(CSCoverSheetViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end