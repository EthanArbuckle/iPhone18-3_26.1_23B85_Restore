@interface HPSListeningModeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForBTListeningMode:(int)mode;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetSegmentLabels;
- (void)addModeOptions;
@end

@implementation HPSListeningModeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HPSListeningModeControl" hasInstanceVariable:@"_segmentedControl" withType:"UISegmentedControl"];
  [validationsCopy validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"HPSListeningModeControl" hasInstanceMethod:@"addModeOptions" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HPSListeningModeControl" hasInstanceMethod:@"getListeningModeFromIndex:" withFullSignature:{"i", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HPSListeningModeControlAccessibility;
  [(HPSListeningModeControlAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HPSListeningModeControlAccessibility *)self _axSetSegmentLabels];
}

- (id)accessibilityElements
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(HPSListeningModeControlAccessibility *)self safeUIViewForKey:@"_segmentedControl"];
  v4 = v3;
  if (v3)
  {
    v10[0] = v3;
    accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HPSListeningModeControlAccessibility;
    accessibilityElements = [(HPSListeningModeControlAccessibility *)&v9 accessibilityElements];
  }

  v6 = accessibilityElements;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)addModeOptions
{
  v3.receiver = self;
  v3.super_class = HPSListeningModeControlAccessibility;
  [(HPSListeningModeControlAccessibility *)&v3 addModeOptions];
  [(HPSListeningModeControlAccessibility *)self _axSetSegmentLabels];
}

- (void)_axSetSegmentLabels
{
  LOBYTE(v10) = 0;
  objc_opt_class();
  v3 = [(HPSListeningModeControlAccessibility *)self safeValueForKey:@"_segmentedControl"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeArrayForKey:@"_segments"];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      AXPerformSafeBlock();
      v7 = *(v11 + 6);
      _Block_object_dispose(&v10, 8);
      v8 = [v5 objectAtIndex:v6];
      v9 = [(HPSListeningModeControlAccessibility *)self _axLabelForBTListeningMode:v7];
      [v8 setAccessibilityLabel:v9];

      ++v6;
    }

    while (v6 < [v5 count]);
  }
}

uint64_t __59__HPSListeningModeControlAccessibility__axSetSegmentLabels__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getListeningModeFromIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_axLabelForBTListeningMode:(int)mode
{
  if ((mode - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2C1FD0[mode - 1]);
  }

  return v4;
}

@end