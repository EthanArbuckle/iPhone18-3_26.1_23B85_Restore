@interface FMSettingRowViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation FMSettingRowViewAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = FMSettingRowViewAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(FMSettingRowViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(FMSettingRowViewAccessibility *)self safeValueForKey:@"accessibilityChevronImage"];
  if (v4)
  {
    v5 = *MEMORY[0x29EDC7FC0] | v3;
  }

  else
  {
    v5 = v3 & ~*MEMORY[0x29EDC7FC0];
  }

  return v5;
}

@end