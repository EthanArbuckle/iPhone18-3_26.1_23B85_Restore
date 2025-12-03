@interface EKExpandingTextViewAccessibility
- (id)accessibilityLabel;
@end

@implementation EKExpandingTextViewAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentification = [(EKExpandingTextViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"TextViewInInlineCell"];

  if (v4)
  {
    v5 = [(EKExpandingTextViewAccessibility *)self safeValueForKey:@"superview"];
    v6 = [v5 safeValueForKey:@"textLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKExpandingTextViewAccessibility;
    accessibilityLabel = [(EKExpandingTextViewAccessibility *)&v9 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end