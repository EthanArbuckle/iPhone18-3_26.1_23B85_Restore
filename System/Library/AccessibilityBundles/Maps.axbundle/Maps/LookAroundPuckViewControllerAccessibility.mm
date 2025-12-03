@interface LookAroundPuckViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation LookAroundPuckViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LookAroundModeController"];
  [validationsCopy validateClass:@"UIApplication" hasClassMethod:@"sharedMapsDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MapsAppDelegate" hasInstanceMethod:@"chromeViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ChromeViewController" hasInstanceMethod:@"topContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LookAroundModeController" hasInstanceMethod:@"actionCoordinator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LookAroundActionCoordinator" hasInstanceMethod:@"dataCoordinator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LookAroundPIPDataCoordinatorImpl" hasInstanceMethod:@"lookAroundViewHeading" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"LookAroundPuckViewController" hasInstanceVariable:@"_puckView" withType:"LookAroundPuckView"];
  [validationsCopy validateClass:@"IOSBasedChromeViewController" isKindOfClass:@"ChromeViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = LookAroundPuckViewControllerAccessibility;
  [(LookAroundPuckViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(LookAroundPuckViewControllerAccessibility *)self safeUIViewForKey:@"_puckView"];
  [v3 setIsAccessibilityElement:1];
  v4 = AXMapsLocString(@"LOOK_AROUND_PUCK");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:{objc_msgSend(v3, "accessibilityTraits") & ~*MEMORY[0x29EDC7F88]}];
  [v3 _setAccessibilityValueBlock:&__block_literal_global_10];
}

id __87__LookAroundPuckViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = [MEMORY[0x29EDC7938] safeValueForKey:@"sharedMapsDelegate"];
  v1 = [v0 safeValueForKey:@"chromeViewController"];
  v2 = [v1 safeValueForKey:@"topContext"];

  NSClassFromString(&cfstr_Lookaroundmode.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"actionCoordinator"];
    v4 = [v3 safeValueForKey:@"dataCoordinator"];
    [v4 safeDoubleForKey:@"lookAroundViewHeading"];

    v5 = MEMORY[0x29EDBA0F8];
    v6 = AXMapKitLocString(@"HEADING_FORMAT");
    v7 = AXDescriptionForHeadingInDegrees();
    v8 = [v5 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end