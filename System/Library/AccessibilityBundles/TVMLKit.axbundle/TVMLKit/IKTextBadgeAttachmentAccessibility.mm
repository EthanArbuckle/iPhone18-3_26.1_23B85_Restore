@interface IKTextBadgeAttachmentAccessibility
- (id)accessibilityLabel;
@end

@implementation IKTextBadgeAttachmentAccessibility

- (id)accessibilityLabel
{
  badge = [(IKTextBadgeAttachmentAccessibility *)self badge];
  accessibilityLabel = [badge accessibilityLabel];
  v5 = accessibilityLabel;
  if (accessibilityLabel)
  {
    textContent = accessibilityLabel;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13.receiver = self;
      v13.super_class = IKTextBadgeAttachmentAccessibility;
      accessibilityLabel2 = [(IKTextBadgeAttachmentAccessibility *)&v13 accessibilityLabel];
      v10 = accessibilityLabel2;
      if (accessibilityLabel2)
      {
        v7 = accessibilityLabel2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          attributes = [badge attributes];
          v12 = [attributes objectForKeyedSubscript:@"src"];
          v7 = accessibilityRetrieveLabelForSource(v12);
        }

        else
        {
          v7 = 0;
        }
      }

      goto LABEL_6;
    }

    textContent = [badge textContent];
  }

  v7 = textContent;
LABEL_6:

  return v7;
}

@end