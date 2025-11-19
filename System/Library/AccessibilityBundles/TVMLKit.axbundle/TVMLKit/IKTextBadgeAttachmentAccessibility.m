@interface IKTextBadgeAttachmentAccessibility
- (id)accessibilityLabel;
@end

@implementation IKTextBadgeAttachmentAccessibility

- (id)accessibilityLabel
{
  v3 = [(IKTextBadgeAttachmentAccessibility *)self badge];
  v4 = [v3 accessibilityLabel];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13.receiver = self;
      v13.super_class = IKTextBadgeAttachmentAccessibility;
      v9 = [(IKTextBadgeAttachmentAccessibility *)&v13 accessibilityLabel];
      v10 = v9;
      if (v9)
      {
        v7 = v9;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v3 attributes];
          v12 = [v11 objectForKeyedSubscript:@"src"];
          v7 = accessibilityRetrieveLabelForSource(v12);
        }

        else
        {
          v7 = 0;
        }
      }

      goto LABEL_6;
    }

    v6 = [v3 textContent];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

@end