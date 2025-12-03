@interface CEKLightingControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axChangeToLightingEffectAtIndex:(int64_t)index;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation CEKLightingControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKLightingControlItem"];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"selectedLightingType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"_effectItemsForType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"_effectTypes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"_selectionIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"orientation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CEKLightingControlItem" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"_setSelectedLightingType:atIndex:shouldNotify:shouldSuppressHaptic:animated:" withFullSignature:{"v", "q", "Q", "B", "B", "B", 0}];
  [validationsCopy validateClass:@"CEKLightingControl" hasInstanceMethod:@"_enabledItemCount" withFullSignature:{"Q", 0}];
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = CEKLightingControlAccessibility;
  accessibilityValue = [(CEKLightingControlAccessibility *)&v11 accessibilityValue];
  v4 = [(CEKLightingControlAccessibility *)self safeIntegerForKey:@"selectedLightingType"];
  objc_opt_class();
  v5 = [(CEKLightingControlAccessibility *)self safeValueForKey:@"_effectItemsForType"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [MEMORY[0x29EDBA070] numberWithInteger:v4];
  v8 = [v6 objectForKey:v7];

  MEMORY[0x29C2CE830](@"CEKLightingControlItem");
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 safeValueForKey:@"displayName"];

    accessibilityValue = v9;
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CEKLightingControlAccessibility;
  return *MEMORY[0x29EDC7F60] | [(CEKLightingControlAccessibility *)&v3 accessibilityTraits];
}

- (void)_axChangeToLightingEffectAtIndex:(int64_t)index
{
  objc_opt_class();
  v5 = [(CEKLightingControlAccessibility *)self safeValueForKey:@"_effectTypes"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(CEKLightingControlAccessibility *)self safeUnsignedIntegerForKey:@"_enabledItemCount"];
  if ((index & 0x8000000000000000) == 0 && v7 > index && [v6 count] > index)
  {
    v8 = [v6 objectAtIndexedSubscript:index];
    [v8 integerValue];

    AXPerformSafeBlock();
  }
}

- (void)accessibilityIncrement
{
  v3 = [(CEKLightingControlAccessibility *)self safeUnsignedIntegerForKey:@"_selectionIndex"]+ 1;

  [(CEKLightingControlAccessibility *)self _axChangeToLightingEffectAtIndex:v3];
}

- (void)accessibilityDecrement
{
  v3 = [(CEKLightingControlAccessibility *)self safeUnsignedIntegerForKey:@"_selectionIndex"]- 1;

  [(CEKLightingControlAccessibility *)self _axChangeToLightingEffectAtIndex:v3];
}

@end