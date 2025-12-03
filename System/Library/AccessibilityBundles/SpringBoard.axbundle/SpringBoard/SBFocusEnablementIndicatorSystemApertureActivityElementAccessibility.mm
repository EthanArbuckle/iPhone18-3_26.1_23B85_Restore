@interface SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility)initWithActivityDescription:(id)description enabled:(BOOL)enabled;
@end

@implementation SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFocusEnablementIndicatorSystemApertureActivityElement" hasInstanceMethod:@"initWithActivityDescription:enabled:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateProtocol:@"FCActivityDescribing" hasMethod:@"activityDisplayName" isInstanceMethod:1 isRequired:1];
}

- (SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility)initWithActivityDescription:(id)description enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12.receiver = self;
  v12.super_class = SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility;
  descriptionCopy = description;
  v6 = [(SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility *)&v12 initWithActivityDescription:descriptionCopy enabled:enabledCopy];
  v7 = [descriptionCopy safeStringForKey:@"activityDisplayName"];

  if (enabledCopy)
  {
    v8 = @"focus.off";
  }

  else
  {
    v8 = @"focus.on";
  }

  v9 = accessibilityLocalizedString(v8);
  v10 = AXCFormattedString();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);

  return v6;
}

@end