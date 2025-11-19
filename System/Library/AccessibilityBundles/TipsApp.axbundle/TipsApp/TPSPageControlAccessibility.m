@interface TPSPageControlAccessibility
- (id)accessibilityValue;
@end

@implementation TPSPageControlAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 numberOfPages];
    v5 = [v3 currentPage] + 1;
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"page.scrollStatus.label");
    v8 = [v6 stringWithFormat:v7, v5, v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end