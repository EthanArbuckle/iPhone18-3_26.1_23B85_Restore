@interface BKUIButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation BKUIButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(BKUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"CloudDownloadButton"];

  if (v4)
  {
    accessibilityLabel = sub_1000765EC(@"download.icloud.button");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKUIButtonAccessibility;
    accessibilityLabel = [(BKUIButtonAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end