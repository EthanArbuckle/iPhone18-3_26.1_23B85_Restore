@interface NTKTimeIntervalLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKTimeIntervalLabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(NTKTimeIntervalLabelAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = [[AXAttributedString alloc] initWithString:accessibilityLabel];
    [accessibilityLabel2 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenDurationTimeHHMMSS];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKTimeIntervalLabelAccessibility;
    accessibilityLabel2 = [(NTKTimeIntervalLabelAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel2;
}

@end