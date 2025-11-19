@interface TextViewWithPlaceHolderAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TextViewWithPlaceHolderAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TextViewWithPlaceHolderAccessibility;
  [(TextViewWithPlaceHolderAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(TextViewWithPlaceHolderAccessibility *)self safeValueForKey:@"_axPlaceholderTextView"];
  [v3 setAccessibilityElementsHidden:1];
}

@end