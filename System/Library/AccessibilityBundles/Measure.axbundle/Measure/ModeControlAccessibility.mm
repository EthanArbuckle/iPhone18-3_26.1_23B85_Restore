@interface ModeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateSelectedButton;
- (void)updateHighlightState;
@end

@implementation ModeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.ModeControl" hasInstanceMethod:@"selectedSegmentIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"Measure.ModeControl" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Measure.ModeControl" hasInstanceMethod:@"updateHighlightState" withFullSignature:{"v", 0}];
}

- (void)_axAnnotateSelectedButton
{
  v3 = [(ModeControlAccessibility *)self safeIntegerForKey:@"selectedSegmentIndex"];
  v4 = [(ModeControlAccessibility *)self _axButtons];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __53__ModeControlAccessibility__axAnnotateSelectedButton__block_invoke;
  v5[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v5[4] = v3;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __53__ModeControlAccessibility__axAnnotateSelectedButton__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  objc_opt_class();
  v7 = __UIAccessibilityCastAsSafeCategory();
  [v7 axSetIsActuallySelected:v6 == a3];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15 = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = ModeControlAccessibility;
  [(ModeControlAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  [(ModeControlAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FE0]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(ModeControlAccessibility *)self _axButtons];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _accessibilityDidMoveToTabBar];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(ModeControlAccessibility *)self _axAnnotateSelectedButton];
  v8 = *MEMORY[0x29EDCA608];
}

- (void)updateHighlightState
{
  v3.receiver = self;
  v3.super_class = ModeControlAccessibility;
  [(ModeControlAccessibility *)&v3 updateHighlightState];
  [(ModeControlAccessibility *)self _axAnnotateSelectedButton];
}

@end