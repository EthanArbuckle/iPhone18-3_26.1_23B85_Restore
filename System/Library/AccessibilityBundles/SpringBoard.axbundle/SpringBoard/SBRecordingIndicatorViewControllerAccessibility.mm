@interface SBRecordingIndicatorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)initForLocation:(int64_t)location windowScene:(id)scene minimumOnTimeCoordinator:(id)coordinator;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBRecordingIndicatorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBRecordingIndicatorViewController" hasInstanceMethod:@"indicator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRecordingIndicatorVisualRepresentation" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRecordingIndicatorViewController" hasInstanceMethod:@"initForLocation:windowScene:minimumOnTimeCoordinator:" withFullSignature:{"@", "Q", "@", "@", 0}];
}

- (id)initForLocation:(int64_t)location windowScene:(id)scene minimumOnTimeCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = SBRecordingIndicatorViewControllerAccessibility;
  v5 = [(SBRecordingIndicatorViewControllerAccessibility *)&v7 initForLocation:location windowScene:scene minimumOnTimeCoordinator:coordinator];
  [v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBRecordingIndicatorViewControllerAccessibility;
  [(SBRecordingIndicatorViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBRecordingIndicatorViewControllerAccessibility *)self safeValueForKey:@"indicator"];
  v4 = [v3 safeUIViewForKey:@"contentView"];
  [v4 _accessibilitySetOverridesInvisibility:1];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7580]];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_18];
}

id __93__SBRecordingIndicatorViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"sensorActivityDataProvider"];
  v1 = [v0 safeSetForKey:@"activeSensorActivityAttributions"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {

    goto LABEL_21;
  }

  LOBYTE(v4) = 0;
  LOBYTE(v5) = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if (v4)
      {
        v4 = 1;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v4 = [*(*(&v11 + 1) + 8 * i) safeIntegerForKey:{@"sensor", v11}] == 0;
        if (!v5)
        {
LABEL_8:
          v5 = [v8 safeIntegerForKey:{@"sensor", v11}] == 1;
          continue;
        }
      }

      v5 = 1;
    }

    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v3);

  if (v4 && v5)
  {
    v9 = @"camera.mic.in.use";
    goto LABEL_20;
  }

  if (v4)
  {
    v9 = @"camera.in.use";
    goto LABEL_20;
  }

  if (v5)
  {
    v9 = @"mic.in.use";
LABEL_20:
    v3 = accessibilityLocalizedString(v9);
  }

  else
  {
    v3 = 0;
  }

LABEL_21:

  return v3;
}

@end