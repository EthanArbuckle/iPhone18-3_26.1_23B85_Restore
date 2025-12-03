@interface TitleSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation TitleSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NowPlayingUI.TitleSectionHeaderView" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.TitleSectionHeaderView" hasInstanceMethod:@"accessibilitySystemStyleButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.TitleSectionHeaderView" hasInstanceMethod:@"accessibilityAdditionalContentView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(TitleSectionHeaderViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TitleSectionHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(TitleSectionHeaderViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(TitleSectionHeaderViewAccessibility *)self safeValueForKey:@"accessibilitySystemStyleButton"];
  if (v4)
  {
    [array addObject:v4];
  }

  v5 = [(TitleSectionHeaderViewAccessibility *)self safeValueForKey:@"accessibilityAdditionalContentView"];
  if (v5)
  {
    [array addObject:v5];
  }

  return array;
}

@end