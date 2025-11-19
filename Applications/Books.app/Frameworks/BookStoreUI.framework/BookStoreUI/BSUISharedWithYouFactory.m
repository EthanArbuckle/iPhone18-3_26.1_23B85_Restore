@interface BSUISharedWithYouFactory
- (id)viewController:(id)a3 hostedViewWithType:(id)a4 identifier:(id)a5 parameters:(id)a6;
- (void)_attributionView:(id)a3 displayContext:(id)a4;
@end

@implementation BSUISharedWithYouFactory

- (id)viewController:(id)a3 hostedViewWithType:(id)a4 identifier:(id)a5 parameters:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = +[_TtC11BookStoreUI27BSUISharedWithYouController shared];
  v13 = [v12 createHighlightAttributionViewFor:v10 viewController:v11];

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

- (void)_attributionView:(id)a3 displayContext:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v5 isEqualToString:@"summary"])
  {
    [v6 setDisplayContext:0];
  }

  else if (([v5 isEqualToString:@"detail"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"detailCompact"))
  {
    [v6 setDisplayContext:1];
    if ([v5 isEqualToString:@"detailCompact"])
    {
      [v6 setHorizontalAlignment:2];
    }
  }
}

@end