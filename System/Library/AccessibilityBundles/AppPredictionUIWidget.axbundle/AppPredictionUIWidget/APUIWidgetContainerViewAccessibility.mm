@interface APUIWidgetContainerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation APUIWidgetContainerViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(APUIWidgetContainerViewAccessibility *)self safeUIViewForKey:@"_stackView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
  v6 = AXLabelForElements();

  return v6;
}

uint64_t __58__APUIWidgetContainerViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end