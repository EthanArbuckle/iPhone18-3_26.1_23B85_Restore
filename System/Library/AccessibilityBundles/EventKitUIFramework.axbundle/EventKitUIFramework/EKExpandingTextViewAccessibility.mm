@interface EKExpandingTextViewAccessibility
- (id)accessibilityLabel;
@end

@implementation EKExpandingTextViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(EKExpandingTextViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"TextViewInInlineCell"];

  if (v4)
  {
    v5 = [(EKExpandingTextViewAccessibility *)self safeValueForKey:@"superview"];
    v6 = [v5 safeValueForKey:@"textLabel"];
    v7 = [v6 accessibilityLabel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EKExpandingTextViewAccessibility;
    v7 = [(EKExpandingTextViewAccessibility *)&v9 accessibilityLabel];
  }

  return v7;
}

@end