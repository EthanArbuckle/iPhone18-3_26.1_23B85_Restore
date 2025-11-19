@interface SBSystemActionSimpleAccessibilityPreviewElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBSystemActionSimpleAccessibilityPreviewElementAccessibility)initWithSystemAction:(id)a3 contentProvider:(id)a4 keyColor:(id)a5;
@end

@implementation SBSystemActionSimpleAccessibilityPreviewElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFocusEnablementIndicatorSystemApertureActivityElement" hasInstanceMethod:@"initWithActivityDescription:enabled:" withFullSignature:{"@", "@", "B", 0}];
  [v3 validateClass:@"SBSystemAction" hasInstanceMethod:@"configuredAction" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFConfiguredSystemIntentAction" hasInstanceMethod:@"intent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFConfiguredStaccatoIntentAction" hasInstanceMethod:@"templateParameterValues" withFullSignature:{"@", 0}];
}

- (SBSystemActionSimpleAccessibilityPreviewElementAccessibility)initWithSystemAction:(id)a3 contentProvider:(id)a4 keyColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = SBSystemActionSimpleAccessibilityPreviewElementAccessibility;
  v11 = [(SBSystemActionSimpleAccessibilityPreviewElementAccessibility *)&v30 initWithSystemAction:v8 contentProvider:v9 keyColor:v10];
  v12 = [v8 safeValueForKey:@"configuredAction"];
  v13 = __UIAccessibilitySafeClass();

  v14 = [v13 name];
  v15 = [v13 safeDictionaryForKey:@"templateParameterValues"];
  v16 = [v15 objectForKey:*MEMORY[0x29EDBDE20]];
  v17 = [v16 safeValueForKey:@"identifier"];
  v18 = [v17 intValue];

  v19 = [MEMORY[0x29EDBDFB8] stateForTripleClickOption:v18];
  if (v19 == 1)
  {
    v29 = v8;
    v20 = v10;
    v21 = v9;
    v22 = v11;
    v23 = @"ax.shortcut.off";
    goto LABEL_5;
  }

  if (v19 == 2)
  {
    v29 = v8;
    v20 = v10;
    v21 = v9;
    v22 = v11;
    v23 = @"ax.shortcut.on";
LABEL_5:
    v24 = *MEMORY[0x29EDC7EA8];
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(v23);
    v27 = [v25 stringWithFormat:v26, v14];
    UIAccessibilityPostNotification(v24, v27);

    v11 = v22;
    v9 = v21;
    v10 = v20;
    v8 = v29;
  }

  return v11;
}

@end