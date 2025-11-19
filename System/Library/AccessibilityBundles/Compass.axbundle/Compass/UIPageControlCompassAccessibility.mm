@interface UIPageControlCompassAccessibility
- (id)accessibilityValue;
- (int64_t)_axCurrentPage;
- (int64_t)_axNumberOfPages;
@end

@implementation UIPageControlCompassAccessibility

- (int64_t)_axNumberOfPages
{
  v2 = [(UIPageControlCompassAccessibility *)self safeValueForKey:@"numberOfPages"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)_axCurrentPage
{
  v2 = [(UIPageControlCompassAccessibility *)self safeValueForKey:@"currentPage"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)accessibilityValue
{
  [(UIPageControlCompassAccessibility *)self _axNumberOfPages];
  v3 = [(UIPageControlCompassAccessibility *)self _axCurrentPage];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"page.control.format.text");
  v6 = AXFormatInteger();
  v7 = AXFormatInteger();
  v8 = [v4 stringWithFormat:v5, v6, v7];

  if (!v3)
  {
    v9 = @"page.title.compass";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v9 = @"page.title.level";
LABEL_5:
    v10 = accessibilityLocalizedString(v9);
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = __UIAXStringForVariables();

  return v11;
}

@end