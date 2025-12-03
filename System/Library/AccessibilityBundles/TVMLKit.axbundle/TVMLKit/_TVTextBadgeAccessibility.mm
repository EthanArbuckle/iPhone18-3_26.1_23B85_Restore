@interface _TVTextBadgeAccessibility
- (id)_processTextBadgeAXLabel:(id)label;
- (id)accessibilityLabel;
@end

@implementation _TVTextBadgeAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = _TVTextBadgeAccessibility;
  accessibilityLabel = [(_TVTextBadgeAccessibility *)&v6 accessibilityLabel];
  if (!accessibilityLabel)
  {
    accessibilityLabel = accessibilityLocalizedString(@"unknown.badge");
  }

  v4 = [(_TVTextBadgeAccessibility *)self _processTextBadgeAXLabel:accessibilityLabel];

  return v4;
}

- (id)_processTextBadgeAXLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"ATV.Search.Product.ADAvailable"])
  {
    mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = mEMORY[0x29EDBDDF0];
    v6 = @"axid.icon.ad";
LABEL_5:
    v7 = [mEMORY[0x29EDBDDF0] atvaccessibilityLocalizedString:v6];

    goto LABEL_7;
  }

  if ([labelCopy isEqualToString:@"ATV.Search.Product.SDHAvailable"])
  {
    mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = mEMORY[0x29EDBDDF0];
    v6 = @"axid.icon.sdh";
    goto LABEL_5;
  }

  v7 = labelCopy;
LABEL_7:

  return v7;
}

@end