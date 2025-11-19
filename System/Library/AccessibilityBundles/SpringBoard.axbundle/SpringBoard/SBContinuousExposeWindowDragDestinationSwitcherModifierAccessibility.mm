@interface SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)handleGestureEvent:(id)a3;
@end

@implementation SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBContinuousExposeWindowDragDestinationSwitcherModifier" hasInstanceMethod:@"proposedDestination" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBContinuousExposeWindowDragDestinationSwitcherModifier" hasInstanceMethod:@"selectedDisplayItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBContinuousExposeWindowDragDestinationSwitcherModifier" hasInstanceMethod:@"handleGestureEvent:" withFullSignature:{"@", "@", 0}];
}

- (id)handleGestureEvent:(id)a3
{
  v14.receiver = self;
  v14.super_class = SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility;
  v4 = [(SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility *)&v14 handleGestureEvent:a3];
  v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility *)self safeIntegerForKey:@"proposedDestination"];
  v6 = [(SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility *)self safeValueForKey:@"selectedDisplayItem"];
  v7 = v6;
  if (v5 == 2)
  {
    if (cancelDrag)
    {
      goto LABEL_12;
    }

    v9 = [v6 accessibilityLabel];
    if (v9)
    {
      v10 = accessibilityLocalizedString(@"continuous.expose.window.drag.destination.add.to.stage");
      v13 = [v7 accessibilityLabel];
      v8 = AXCFormattedString();
    }

    else
    {
      v8 = 0;
    }

    cancelDrag = 1;

    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v5 && cancelDrag == 1)
  {
    v8 = accessibilityLocalizedString(@"continuous.expose.window.drag.destination.cancel");
    cancelDrag = 0;
    if (v8)
    {
LABEL_11:
      v11 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v8, v13}];
      [v11 setAttribute:&unk_2A230C8E0 forKey:*MEMORY[0x29EDBD860]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v11);
    }
  }

LABEL_12:

  return v4;
}

@end