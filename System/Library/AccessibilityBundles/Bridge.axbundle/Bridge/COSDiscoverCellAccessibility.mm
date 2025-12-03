@interface COSDiscoverCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_hasArrowUnicodeInSubtitleLabel;
- (id)accessibilityHint;
- (id)accessibilityValue;
@end

@implementation COSDiscoverCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSDiscoverCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"COSDiscoverCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v3 = [(COSDiscoverCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([(COSDiscoverCellAccessibility *)self _hasArrowUnicodeInSubtitleLabel])
  {
    v5 = [accessibilityLabel stringByReplacingCharactersInRange:objc_msgSend(accessibilityLabel withString:{"length") - 1, 1, &stru_2A21289B8}];

    accessibilityLabel = v5;
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(COSDiscoverCellAccessibility *)self _hasArrowUnicodeInSubtitleLabel])
  {
    accessibilityHint = accessibilityLocalizedString(@"discovery.link.to.content");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = COSDiscoverCellAccessibility;
    accessibilityHint = [(COSDiscoverCellAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)_hasArrowUnicodeInSubtitleLabel
{
  v2 = [(COSDiscoverCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  v4 = [accessibilityLabel length];
  if (accessibilityLabel)
  {
    v5 = v4 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = [accessibilityLabel substringWithRange:{v4 - 1, 1}];
  if ([v6 length] != 1)
  {

    goto LABEL_9;
  }

  v7 = [v6 characterAtIndex:0];

  if (v7 != 8599)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

@end