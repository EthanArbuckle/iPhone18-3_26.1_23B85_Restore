@interface SBAppResizeGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBAppResizeGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBAppResizeGrabberView" hasInstanceVariable:@"_corner" withType:"NSUInteger"];
  [validationsCopy validateClass:@"SBReusableSnapshotItemContainer"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5[1] = *MEMORY[0x29EDCA608];
  v4.receiver = self;
  v4.super_class = SBAppResizeGrabberViewAccessibility;
  [(SBAppResizeGrabberViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v5[0] = *MEMORY[0x29EDBD608];
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  [(SBAppResizeGrabberViewAccessibility *)self _iosAccessibilitySetValue:v3 forAttribute:12015];
}

- (id)accessibilityLabel
{
  v2 = [(SBAppResizeGrabberViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbreusablesnap_0.isa)];
  accessibilityLabel = [v2 accessibilityLabel];
  if (accessibilityLabel)
  {
    [v2 accessibilityLabel];
  }

  else
  {
    accessibilityLocalizedString(@"app.resize.grabber.window.label");
  }
  v4 = ;

  v5 = accessibilityLocalizedString(@"app.resize.grabber.label");
  v6 = AXCFormattedString();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(SBAppResizeGrabberViewAccessibility *)self safeIntegerForKey:@"_corner"];
  if (v3 > 3 || (accessibilityLocalizedString(off_29F2FBC10[v3]), (accessibilityValue = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = SBAppResizeGrabberViewAccessibility;
    accessibilityValue = [(SBAppResizeGrabberViewAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityValue;
}

@end