@interface BSUISharedWithYouFactory
- (id)viewController:(id)controller hostedViewWithType:(id)type identifier:(id)identifier parameters:(id)parameters;
- (void)_attributionView:(id)view displayContext:(id)context;
@end

@implementation BSUISharedWithYouFactory

- (id)viewController:(id)controller hostedViewWithType:(id)type identifier:(id)identifier parameters:(id)parameters
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  controllerCopy = controller;
  v12 = +[_TtC11BookStoreUI27BSUISharedWithYouController shared];
  v13 = [v12 createHighlightAttributionViewFor:identifierCopy viewController:controllerCopy];

  if (!v13)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v14 = [[BSInternalSharedWithYouContainer alloc] initWithAttributionView:v13];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !_os_feature_enabled_impl())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    v15 = BUDynamicCast();
    [(BSUISharedWithYouFactory *)self _attributionView:v13 displayContext:v15];
    goto LABEL_15;
  }

  objc_opt_class();
  v15 = BUDynamicCast();
  v16 = [v15 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v18 = [v15 objectForKeyedSubscript:@"type"];
    v19 = BUDynamicCast();

    [(BSUISharedWithYouFactory *)self _attributionView:v13 displayContext:v19];
  }

  objc_opt_class();
  v20 = [v15 objectForKeyedSubscript:@"userInterfaceStyle"];
  v21 = BUDynamicCast();

  if ([v21 isEqualToString:@"dark"])
  {
    v22 = 2;
LABEL_13:
    [v13 setOverrideUserInterfaceStyle:v22];
    goto LABEL_14;
  }

  if ([v21 isEqualToString:@"light"])
  {
    v22 = 1;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
LABEL_16:

  return v14;
}

- (void)_attributionView:(id)view displayContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  if ([contextCopy isEqualToString:@"summary"])
  {
    [viewCopy setDisplayContext:0];
  }

  else if (([contextCopy isEqualToString:@"detail"] & 1) != 0 || objc_msgSend(contextCopy, "isEqualToString:", @"detailCompact"))
  {
    [viewCopy setDisplayContext:1];
    if ([contextCopy isEqualToString:@"detailCompact"])
    {
      [viewCopy setHorizontalAlignment:2];
    }
  }
}

@end