@interface TUISystemInputAssistantViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isPredictionOrCandidateView:(id)a3;
- (id)_accessibilityScannerGroupElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddCurrentGroup:(id)a3 toElements:(id)a4;
- (void)_didTapExpandButton:(id)a3;
@end

@implementation TUISystemInputAssistantViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUISystemInputAssistantView" hasInstanceMethod:@"_didTapExpandButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TUISystemInputAssistantView" hasInstanceMethod:@"setShowsExpandableButtonBarItems:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TUISystemInputAssistantView" hasInstanceMethod:@"centerPageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TUISystemInputAssistantPageView" hasInstanceMethod:@"expandButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TUISystemInputAssistantViewAccessibility;
  [(TUISystemInputAssistantViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(TUISystemInputAssistantViewAccessibility *)self safeValueForKeyPath:@"centerPageView.expandButton"];
  v4 = accessibilityLocalizedString(@"expand.toolbar");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axAddCurrentGroup:(id)a3 toElements:(id)a4
{
  v11[3] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  if ([v5 count] >= 2)
  {
    v10[0] = @"GroupElements";
    v10[1] = @"GroupTraits";
    v11[0] = v5;
    v11[1] = &unk_2A2349E58;
    v10[2] = @"GroupScanBehaviorTraits";
    v11[2] = &unk_2A2349E70;
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
LABEL_5:
    v8 = v7;
    [v6 addObject:v7];

    goto LABEL_6;
  }

  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
    goto LABEL_5;
  }

LABEL_6:

  v9 = *MEMORY[0x29EDCA608];
}

- (BOOL)_isPredictionOrCandidateView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)_accessibilityScannerGroupElements
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [v4 setShouldReturnScannerGroups:0];
  v5 = [v4 leafNodePredicate];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __78__TUISystemInputAssistantViewAccessibility__accessibilityScannerGroupElements__block_invoke;
  v26[3] = &unk_29F30A1A8;
  v26[4] = self;
  v20 = v5;
  v27 = v20;
  [v4 setLeafNodePredicate:v26];
  v21 = v4;
  v6 = [(TUISystemInputAssistantViewAccessibility *)self _accessibilityLeafDescendantsWithOptions:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([(TUISystemInputAssistantViewAccessibility *)self _isPredictionOrCandidateView:v13])
        {
          v14 = v13;

          [(TUISystemInputAssistantViewAccessibility *)self _axAddCurrentGroup:v10 toElements:v3];
          v10 = 0;
          v9 = v14;
        }

        else
        {
          if (!v10)
          {
            v10 = [MEMORY[0x29EDB8DE8] array];
          }

          [v10 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  [(TUISystemInputAssistantViewAccessibility *)self _axAddCurrentGroup:v10 toElements:v3];
  [v21 setLeafNodePredicate:v20];
  [v21 setShouldReturnScannerGroups:1];
  v15 = [v9 _accessibilityLeafDescendantsWithOptions:v21];
  if ([v15 count])
  {
    v16 = [v15 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v16 = v3;
  }

  v17 = v16;

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

uint64_t __78__TUISystemInputAssistantViewAccessibility__accessibilityScannerGroupElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isPredictionOrCandidateView:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  return v4;
}

- (void)_didTapExpandButton:(id)a3
{
  v3.receiver = self;
  v3.super_class = TUISystemInputAssistantViewAccessibility;
  [(TUISystemInputAssistantViewAccessibility *)&v3 _didTapExpandButton:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __64__TUISystemInputAssistantViewAccessibility__didTapExpandButton___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFirstDescendant];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v1);
}

@end