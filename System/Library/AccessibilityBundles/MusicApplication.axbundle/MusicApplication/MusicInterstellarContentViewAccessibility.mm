@interface MusicInterstellarContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation MusicInterstellarContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicInterstellarContentView" hasInstanceMethod:@"pill" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicInterstellarContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicInterstellarContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicInterstellarContentView" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MusicInterstellarContentViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(MusicInterstellarContentViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(MusicInterstellarContentViewAccessibility *)self safeUIViewForKey:@"badgeView"];
  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v6 accessibilityLabel];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v10 = __AXStringForVariables();

  return v10;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = [(MusicInterstellarContentViewAccessibility *)self safeUIViewForKey:@"pill"];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x29EDB8E90];
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

@end