@interface COSDiscoverCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_hasArrowUnicodeInSubtitleLabel;
- (id)accessibilityHint;
- (id)accessibilityValue;
@end

@implementation COSDiscoverCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSDiscoverCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"COSDiscoverCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v3 = [(COSDiscoverCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v4 = [v3 accessibilityLabel];

  if ([(COSDiscoverCellAccessibility *)self _hasArrowUnicodeInSubtitleLabel])
  {
    v5 = [v4 stringByReplacingCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, &stru_2A21289B8}];

    v4 = v5;
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(COSDiscoverCellAccessibility *)self _hasArrowUnicodeInSubtitleLabel])
  {
    v3 = accessibilityLocalizedString(@"discovery.link.to.content");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = COSDiscoverCellAccessibility;
    v3 = [(COSDiscoverCellAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (BOOL)_hasArrowUnicodeInSubtitleLabel
{
  v2 = [(COSDiscoverCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v3 = [v2 accessibilityLabel];

  v4 = [v3 length];
  if (v3)
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

  v6 = [v3 substringWithRange:{v4 - 1, 1}];
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