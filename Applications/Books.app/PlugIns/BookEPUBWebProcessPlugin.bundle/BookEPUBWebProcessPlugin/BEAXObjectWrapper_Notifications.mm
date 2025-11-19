@interface BEAXObjectWrapper_Notifications
- (id)_accessibilityMakeScrollStatus;
- (id)_beaxParentWebPageObject;
@end

@implementation BEAXObjectWrapper_Notifications

- (id)_accessibilityMakeScrollStatus
{
  v2 = [(BEAXObjectWrapper_Notifications *)self _beaxParentWebPageObject];
  v3 = [v2 _accessibilityScrollStatus];

  return v3;
}

- (id)_beaxParentWebPageObject
{
  v2 = [(BEAXObjectWrapper_Notifications *)self accessibilityContainer];
  if (v2)
  {
    while (1)
    {
      NSClassFromString(@"WKAccessibilityWebPageObject");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 accessibilityContainer];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

@end