@interface NTKTimeIntervalLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKTimeIntervalLabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(NTKTimeIntervalLabelAccessibility *)self safeValueForKey:@"_label"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = [[AXAttributedString alloc] initWithString:v4];
    [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenDurationTimeHHMMSS];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKTimeIntervalLabelAccessibility;
    v5 = [(NTKTimeIntervalLabelAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

@end