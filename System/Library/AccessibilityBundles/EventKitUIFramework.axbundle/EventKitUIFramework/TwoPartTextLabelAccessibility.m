@interface TwoPartTextLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoPartTextLabelAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = TwoPartTextLabelAccessibility;
  v3 = [(TwoPartTextLabelAccessibility *)&v7 accessibilityLabel];
  v6 = [(TwoPartTextLabelAccessibility *)self safeValueForKey:@"_secondTextPart"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end