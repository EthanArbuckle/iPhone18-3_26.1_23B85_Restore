@interface BKUIButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation BKUIButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(BKUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"CloudDownloadButton"];

  if (v4)
  {
    v5 = sub_1000765EC(@"download.icloud.button");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKUIButtonAccessibility;
    v5 = [(BKUIButtonAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

@end