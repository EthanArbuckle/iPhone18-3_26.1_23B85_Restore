@interface MUPlaceSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (unint64_t)accessibilityTraits;
@end

@implementation MUPlaceSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPlaceSectionHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"MUPlaceSectionHeaderView" hasInstanceVariable:@"_seeAllButton" withType:"UIButton"];
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = MUPlaceSectionHeaderViewAccessibility;
  v3 = *MEMORY[0x29EDC7F80] | [(MUPlaceSectionHeaderViewAccessibility *)&v10 accessibilityTraits];
  v4 = [(MUPlaceSectionHeaderViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_seeAllButton"];
  v5 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    v8 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v8 = 0;
  }

  return v3 | v8;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MUPlaceSectionHeaderViewAccessibility *)self safeUIViewForKey:@"_seeAllButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end