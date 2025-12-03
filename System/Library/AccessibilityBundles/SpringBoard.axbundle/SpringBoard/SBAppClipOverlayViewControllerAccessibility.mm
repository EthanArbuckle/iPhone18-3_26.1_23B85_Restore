@interface SBAppClipOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated;
@end

@implementation SBAppClipOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBAppClipOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBAppClipOverlayViewController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppClipOverlayViewController" hasInstanceMethod:@"setSceneActivationState:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"CPSClipOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CPSClipOverlayViewController" hasInstanceVariable:@"_banner" withType:"CPSAppAttributionBanner"];
  [validationsCopy validateClass:@"CPSAppAttributionBanner" hasInstanceVariable:@"_titleLabel" withType:"CPSLabelWithPlaceholder"];
  [validationsCopy validateClass:@"CPSAppAttributionBanner" hasInstanceVariable:@"_subtitleLabel" withType:"CPSLabelWithPlaceholder"];
  [validationsCopy validateClass:@"CPSAppAttributionBanner" hasInstanceMethod:@"tapAction" withFullSignature:{"@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20.receiver = self;
  v20.super_class = SBAppClipOverlayViewControllerAccessibility;
  [(SBAppClipOverlayViewControllerAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(SBAppClipOverlayViewControllerAccessibility *)self safeValueForKey:@"overlayViewController"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 safeValueForKey:@"_banner"];
  v8 = [v7 safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v8 accessibilityLabel];

  v10 = [v7 safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel2 = [v10 accessibilityLabel];

  [view setIsAccessibilityElement:1];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"appClip.poweredBy.banner.label");
  v14 = [v12 stringWithFormat:v13, accessibilityLabel];
  v15 = accessibilityLocalizedString(@"appClip.appStore.button.label");
  v16 = __UIAXStringForVariables();
  [view setAccessibilityLabel:{v16, accessibilityLabel2, v15, @"__AXStringForVariablesSentinel"}];

  objc_initWeak(&location, v7);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __89__SBAppClipOverlayViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v17[3] = &unk_29F2FBB78;
  objc_copyWeak(&v18, &location);
  [view _setAccessibilityActivateBlock:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __89__SBAppClipOverlayViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"tapAction"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v2;
    AXPerformSafeBlock();

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SBAppClipOverlayViewControllerAccessibility;
  [(SBAppClipOverlayViewControllerAccessibility *)&v5 setSceneActivationState:state animated:animated];
  [(SBAppClipOverlayViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end