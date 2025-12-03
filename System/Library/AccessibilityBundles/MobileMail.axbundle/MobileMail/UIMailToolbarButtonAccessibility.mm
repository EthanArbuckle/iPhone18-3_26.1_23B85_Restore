@interface UIMailToolbarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMailToolbarButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UIMailToolbarButtonAccessibility *)self accessibilityIdentification];
  v9.receiver = self;
  v9.super_class = UIMailToolbarButtonAccessibility;
  accessibilityLabel = [(UIMailToolbarButtonAccessibility *)&v9 accessibilityLabel];
  if ([accessibilityIdentification isEqualToString:@"transferButton"])
  {
    v5 = @"transfer.mail.button";
LABEL_3:
    v6 = accessibilityLocalizedString(v5);
    goto LABEL_8;
  }

  if ([accessibilityLabel isEqualToString:@"wildcat_trash"] || objc_msgSend(accessibilityLabel, "isEqualToString:", @"wildcat_reply") || objc_msgSend(accessibilityLabel, "isEqualToString:", @"wildcat_compose"))
  {
    v6 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    if ([accessibilityLabel isEqualToString:@"wildcat_getnewmail"])
    {
      v5 = @"new.mail.button";
      goto LABEL_3;
    }

    if ([accessibilityLabel isEqualToString:@"archive"])
    {
      v5 = @"archive.button";
      goto LABEL_3;
    }

    if ([accessibilityLabel hasPrefix:@"FilterIcon"])
    {
      v5 = @"filter.button";
      goto LABEL_3;
    }

    if ([accessibilityLabel hasPrefix:@"FlagIcon"])
    {
      v5 = @"mark.message.button";
      goto LABEL_3;
    }

    v6 = accessibilityLabel;
  }

LABEL_8:
  v7 = v6;

  return v7;
}

@end