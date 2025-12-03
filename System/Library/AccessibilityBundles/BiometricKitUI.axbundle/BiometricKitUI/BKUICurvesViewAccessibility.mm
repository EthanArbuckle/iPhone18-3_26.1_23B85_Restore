@interface BKUICurvesViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityValue;
@end

@implementation BKUICurvesViewAccessibility

- (BOOL)isAccessibilityElement
{
  if (([(BKUICurvesViewAccessibility *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  isAccessibilityUserDefinedElement = [(BKUICurvesViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(BKUICurvesViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"fingerprint.status");
  v5 = [(BKUICurvesViewAccessibility *)self safeValueForKey:@"_progress"];
  [v5 floatValue];
  v6 = AXFormatFloatWithPercentage();
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

@end