@interface AccountActionSectionFooterViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation AccountActionSectionFooterViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(AccountActionSectionFooterViewAccessibility *)self safeValueForKey:@"accessibilityTextLabel"];
  v3 = v2;
  if (v2)
  {
    accessibilityLabel = [v2 accessibilityLabel];
    v5 = [accessibilityLabel length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end