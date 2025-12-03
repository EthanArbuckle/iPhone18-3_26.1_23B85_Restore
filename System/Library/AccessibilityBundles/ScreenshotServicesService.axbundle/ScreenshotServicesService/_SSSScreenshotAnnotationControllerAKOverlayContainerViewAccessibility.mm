@interface _SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLabelForOverlayView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupAKOverlayView;
- (void)setManagedView:(id)view;
@end

@implementation _SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSSScreenshotsView" hasInstanceVariable:@"_screenshotViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SSSScreenshotsView"];
  [validationsCopy validateClass:@"SSSScreenshotView"];
  [validationsCopy validateClass:@"_SSSScreenshotAnnotationControllerAKOverlayContainerView" hasInstanceMethod:@"managedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SSSScreenshotAnnotationControllerAKOverlayContainerView" hasInstanceMethod:@"setManagedView:" withFullSignature:{"v", "@", 0}];
}

- (void)setManagedView:(id)view
{
  v4.receiver = self;
  v4.super_class = _SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility;
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)&v4 setManagedView:view];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)self _axMarkupAKOverlayView];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = _SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility;
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)self _axMarkupAKOverlayView];
}

- (void)_axMarkupAKOverlayView
{
  v3 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)self safeValueForKey:@"managedView"];
  MEMORY[0x29C2EC030](@"AKOverlayView");
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"_accessibilityCreateOverlayViewElement"];
    v5 = __UIAccessibilityCastAsClass();

    [v5 setAccessibilityIdentifier:@"ScreenshotImageView"];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __95___SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility__axMarkupAKOverlayView__block_invoke;
    v6[3] = &unk_29F2F4710;
    objc_copyWeak(&v7, &location);
    [v5 _setAccessibilityLabelBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (id)_accessibilityLabelForOverlayView
{
  v3 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2EC030](@"SSSScreenshotView", a2)];
  v4 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2EC030](@"SSSScreenshotsView")];
  v5 = [v4 safeArrayForKey:@"_screenshotViews"];
  v6 = [v5 count];
  v7 = [v5 indexOfObject:v3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = accessibilityLocalizedString(@"screenshot.title");
  }

  else
  {
    v9 = v7;
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"screenshot.with.index");
    v8 = [v10 localizedStringWithFormat:v11, v9 + 1, v6];
  }

  return v8;
}

@end