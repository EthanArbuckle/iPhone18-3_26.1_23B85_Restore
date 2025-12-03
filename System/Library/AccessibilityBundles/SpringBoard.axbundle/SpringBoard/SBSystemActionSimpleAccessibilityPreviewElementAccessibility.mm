@interface SBSystemActionSimpleAccessibilityPreviewElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBSystemActionSimpleAccessibilityPreviewElementAccessibility)initWithSystemAction:(id)action contentProvider:(id)provider keyColor:(id)color;
@end

@implementation SBSystemActionSimpleAccessibilityPreviewElementAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFocusEnablementIndicatorSystemApertureActivityElement" hasInstanceMethod:@"initWithActivityDescription:enabled:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"SBSystemAction" hasInstanceMethod:@"configuredAction" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFConfiguredSystemIntentAction" hasInstanceMethod:@"intent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFConfiguredStaccatoIntentAction" hasInstanceMethod:@"templateParameterValues" withFullSignature:{"@", 0}];
}

- (SBSystemActionSimpleAccessibilityPreviewElementAccessibility)initWithSystemAction:(id)action contentProvider:(id)provider keyColor:(id)color
{
  actionCopy = action;
  providerCopy = provider;
  colorCopy = color;
  v30.receiver = self;
  v30.super_class = SBSystemActionSimpleAccessibilityPreviewElementAccessibility;
  v11 = [(SBSystemActionSimpleAccessibilityPreviewElementAccessibility *)&v30 initWithSystemAction:actionCopy contentProvider:providerCopy keyColor:colorCopy];
  v12 = [actionCopy safeValueForKey:@"configuredAction"];
  v13 = __UIAccessibilitySafeClass();

  name = [v13 name];
  v15 = [v13 safeDictionaryForKey:@"templateParameterValues"];
  v16 = [v15 objectForKey:*MEMORY[0x29EDBDE20]];
  v17 = [v16 safeValueForKey:@"identifier"];
  intValue = [v17 intValue];

  v19 = [MEMORY[0x29EDBDFB8] stateForTripleClickOption:intValue];
  if (v19 == 1)
  {
    v29 = actionCopy;
    v20 = colorCopy;
    v21 = providerCopy;
    v22 = v11;
    v23 = @"ax.shortcut.off";
    goto LABEL_5;
  }

  if (v19 == 2)
  {
    v29 = actionCopy;
    v20 = colorCopy;
    v21 = providerCopy;
    v22 = v11;
    v23 = @"ax.shortcut.on";
LABEL_5:
    v24 = *MEMORY[0x29EDC7EA8];
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(v23);
    v27 = [v25 stringWithFormat:v26, name];
    UIAccessibilityPostNotification(v24, v27);

    v11 = v22;
    providerCopy = v21;
    colorCopy = v20;
    actionCopy = v29;
  }

  return v11;
}

@end