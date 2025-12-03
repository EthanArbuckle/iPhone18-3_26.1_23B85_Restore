@interface BEAXObjectWrapper_Notifications
- (id)_accessibilityMakeScrollStatus;
- (id)_beaxParentWebPageObject;
@end

@implementation BEAXObjectWrapper_Notifications

- (id)_accessibilityMakeScrollStatus
{
  _beaxParentWebPageObject = [(BEAXObjectWrapper_Notifications *)self _beaxParentWebPageObject];
  _accessibilityScrollStatus = [_beaxParentWebPageObject _accessibilityScrollStatus];

  return _accessibilityScrollStatus;
}

- (id)_beaxParentWebPageObject
{
  accessibilityContainer = [(BEAXObjectWrapper_Notifications *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    while (1)
    {
      NSClassFromString(@"WKAccessibilityWebPageObject");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v2AccessibilityContainer;
      if (!v2AccessibilityContainer)
      {
        goto LABEL_6;
      }
    }

    accessibilityContainer = accessibilityContainer;
  }

LABEL_6:

  return accessibilityContainer;
}

@end