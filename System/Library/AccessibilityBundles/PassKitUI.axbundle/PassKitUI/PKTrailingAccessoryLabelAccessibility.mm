@interface PKTrailingAccessoryLabelAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PKTrailingAccessoryLabelAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKTrailingAccessoryLabelAccessibility;
  [(PKTrailingAccessoryLabelAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  subviews = [(PKTrailingAccessoryLabelAccessibility *)self subviews];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __83__PKTrailingAccessoryLabelAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2E1B08;
  v4[4] = self;
  [subviews enumerateObjectsUsingBlock:v4];
}

void __83__PKTrailingAccessoryLabelAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setAccessibilityTraits:{objc_msgSend(*(a1 + 32), "accessibilityTraits")}];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKTrailingAccessoryLabelAccessibility;
  [(PKTrailingAccessoryLabelAccessibility *)&v3 layoutSubviews];
  [(PKTrailingAccessoryLabelAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end