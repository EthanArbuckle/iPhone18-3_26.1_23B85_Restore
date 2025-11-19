@interface UIMailToolbarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMailToolbarButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIMailToolbarButtonAccessibility *)self accessibilityIdentification];
  v9.receiver = self;
  v9.super_class = UIMailToolbarButtonAccessibility;
  v4 = [(UIMailToolbarButtonAccessibility *)&v9 accessibilityLabel];
  if ([v3 isEqualToString:@"transferButton"])
  {
    v5 = @"transfer.mail.button";
LABEL_3:
    v6 = accessibilityLocalizedString(v5);
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"wildcat_trash"] || objc_msgSend(v4, "isEqualToString:", @"wildcat_reply") || objc_msgSend(v4, "isEqualToString:", @"wildcat_compose"))
  {
    v6 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    if ([v4 isEqualToString:@"wildcat_getnewmail"])
    {
      v5 = @"new.mail.button";
      goto LABEL_3;
    }

    if ([v4 isEqualToString:@"archive"])
    {
      v5 = @"archive.button";
      goto LABEL_3;
    }

    if ([v4 hasPrefix:@"FilterIcon"])
    {
      v5 = @"filter.button";
      goto LABEL_3;
    }

    if ([v4 hasPrefix:@"FlagIcon"])
    {
      v5 = @"mark.message.button";
      goto LABEL_3;
    }

    v6 = v4;
  }

LABEL_8:
  v7 = v6;

  return v7;
}

@end