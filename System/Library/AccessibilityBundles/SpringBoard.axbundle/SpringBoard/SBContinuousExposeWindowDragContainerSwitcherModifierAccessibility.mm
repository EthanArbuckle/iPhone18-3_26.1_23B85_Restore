@interface SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)handleGestureEvent:(id)event;
@end

@implementation SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBContinuousExposeWindowDragContainerSwitcherModifier" hasInstanceVariable:@"_selectedDisplayItem" withType:"SBDisplayItem"];
  [validationsCopy validateClass:@"SBContinuousExposeWindowDragContainerSwitcherModifier" hasInstanceMethod:@"appLayoutOnStage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBGestureSwitcherModifierEvent" hasInstanceMethod:@"phase" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SBContinuousExposeWindowDragDestinationSwitcherModifier" hasInstanceMethod:@"proposedAppLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBContinuousExposeWindowDragContainerSwitcherModifier" hasInstanceMethod:@"handleGestureEvent:" withFullSignature:{"@", "@", 0}];
}

- (id)handleGestureEvent:(id)event
{
  v24 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility;
  v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility *)&v22 handleGestureEvent:eventCopy];
  v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility *)self safeValueForKey:@"_selectedDisplayItem"];
  if ([eventCopy safeIntegerForKey:@"phase"] == 3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility *)self safeValueForKey:@"appLayoutOnStage"];
    v8 = [v7 safeArrayForKey:@"allItems"];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v18 + 1) + 8 * i) == v6)
          {
            LODWORD(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    accessibilityLabel = [v6 accessibilityLabel];
    v13 = accessibilityLabel;
    if (v9 && accessibilityLabel)
    {
      v14 = accessibilityLocalizedString(@"continuous.expose.window.drag.switcher.modifier.added.to.stage");
      v15 = AXCFormattedString();

      v16 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v15, v13}];
      [v16 setAttribute:&unk_2A230C8C8 forKey:*MEMORY[0x29EDBD860]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v16);
    }
  }

  return v5;
}

@end