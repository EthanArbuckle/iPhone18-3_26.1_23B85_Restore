@interface AMSUIWebButtonModel
- (AMSUIWebButtonModel)initWithJSObject:(id)a3 context:(id)a4;
- (NSString)description;
- (id)_imageForButtonWithNavStyle:(int64_t)a3;
- (id)_makeActivityIndicatorView;
- (id)_makeProxCardButtonWithActionBlock:(id)a3;
- (id)_systemImage;
- (id)createDialogAction;
- (int64_t)_barButtonItemStyle;
- (int64_t)_systemItem;
@end

@implementation AMSUIWebButtonModel

- (AMSUIWebButtonModel)initWithJSObject:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v41.receiver = self;
    v41.super_class = AMSUIWebButtonModel;
    v10 = [(AMSUIWebButtonModel *)&v41 init];
    if (v10)
    {
      v11 = [v7 objectForKeyedSubscript:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = &stru_1F3921360;
      }

      objc_storeStrong(&v10->_title, v13);

      objc_storeStrong(&v10->_underlyingJSObject, a3);
      v14 = [v7 objectForKeyedSubscript:@"accessibilityLabel"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      accessibilityLabel = v10->_accessibilityLabel;
      v10->_accessibilityLabel = v15;

      v17 = [v7 objectForKeyedSubscript:@"action"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [AMSUIWebActionMapper actionFromJSObject:v18 context:v8];
      action = v10->_action;
      v10->_action = v19;

      v21 = [v7 objectForKeyedSubscript:@"activityIndicator"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        v23 = [[AMSUIWebActivityIndicatorModel alloc] initWithJSObject:v22 context:v8];
        activityIndicator = v10->_activityIndicator;
        v10->_activityIndicator = v23;
      }

      v25 = [v7 objectForKeyedSubscript:@"bold"];
      if (objc_opt_respondsToSelector())
      {
        v26 = [v25 BOOLValue];
      }

      else
      {
        v26 = 0;
      }

      v10->_bold = v26;
      v27 = [v7 objectForKeyedSubscript:@"enabled"];
      if (objc_opt_respondsToSelector())
      {
        v28 = [v27 BOOLValue];
      }

      else
      {
        v28 = 1;
      }

      v10->_enabled = v28;
      v29 = [v7 objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      identifier = v10->_identifier;
      v10->_identifier = v30;

      v32 = [v7 objectForKeyedSubscript:@"keyEquivalent"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      keyEquivalent = v10->_keyEquivalent;
      v10->_keyEquivalent = v33;

      v35 = [v7 objectForKeyedSubscript:@"style"];
      if (objc_opt_respondsToSelector())
      {
        v36 = [v7 objectForKeyedSubscript:@"style"];
        v10->_style = [v36 integerValue];
      }

      else
      {
        v10->_style = 0;
      }

      v37 = [v7 objectForKeyedSubscript:@"systemImageName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      systemImageName = v10->_systemImageName;
      v10->_systemImageName = v38;
    }

    self = v10;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_barButtonItemStyle
{
  if ([(AMSUIWebButtonModel *)self bold])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)_makeActivityIndicatorView
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  v4 = [(AMSUIWebButtonModel *)self activityIndicator];
  v5 = [v4 animate];

  if (v5)
  {
    [v3 startAnimating];
  }

  else
  {
    [v3 stopAnimating];
  }

  return v3;
}

- (id)_makeProxCardButtonWithActionBlock:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69C66D0] buttonWithProximityType:2];
  v5 = MEMORY[0x1E69DC628];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSUIWebButtonModel__makeProxCardButtonWithActionBlock___block_invoke;
  v9[3] = &unk_1E7F24D78;
  v10 = v3;
  v6 = v3;
  v7 = [v5 actionWithHandler:v9];
  [v4 addAction:v7 forControlEvents:64];

  return v4;
}

- (id)createDialogAction
{
  v3 = MEMORY[0x1E698C8B8];
  v4 = [(AMSUIWebButtonModel *)self title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F3921360;
  }

  v7 = [v3 actionWithTitle:v6];

  v8 = [(AMSUIWebButtonModel *)self identifier];

  if (v8)
  {
    v9 = [(AMSUIWebButtonModel *)self identifier];
    [v7 setIdentifier:v9];
  }

  v10 = [(AMSUIWebButtonModel *)self style]- 1;
  if (v10 > 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1BB1EF320[v10];
  }

  [v7 setStyle:v11];
  v12 = [(AMSUIWebButtonModel *)self underlyingJSObject];
  v13 = [v12 mutableCopy];
  [v7 setUserInfo:v13];

  return v7;
}

- (NSString)description
{
  v2 = [(AMSUIWebButtonModel *)self underlyingJSObject];
  v3 = [v2 description];

  return v3;
}

- (int64_t)_systemItem
{
  v2 = [(AMSUIWebButtonModel *)self style];
  if (v2 > 4)
  {
    return 0x8000000000000000;
  }

  else
  {
    return qword_1BB1EF340[v2];
  }
}

- (id)_imageForButtonWithNavStyle:(int64_t)a3
{
  v5 = [(AMSUIWebButtonModel *)self systemImageName];
  if (v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [(AMSUIWebButtonModel *)self systemImageName];
    v8 = [v6 _systemImageNamed:v7];

    if (v8)
    {
      goto LABEL_15;
    }
  }

  if ([(AMSUIWebButtonModel *)self style]!= 3)
  {
    goto LABEL_10;
  }

  if (!_os_feature_enabled_impl())
  {
    if (a3 == 7)
    {
LABEL_9:
      v10 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
      v8 = [v10 ams_imageForResource:@"navigation-close-button"];

      goto LABEL_11;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v9 = _os_feature_enabled_impl();
  v8 = 0;
  if (a3 == 7 && (v9 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  if ([(AMSUIWebButtonModel *)self style]== 4 && (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
    v12 = [v11 ams_imageForResource:@"navigation-close-button"];

    v8 = v12;
  }

LABEL_15:
  v13 = v8;

  return v13;
}

- (id)_systemImage
{
  if ([(AMSUIWebButtonModel *)self style]|| !_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v3 = [(AMSUIWebButtonModel *)self title];
  if (v3)
  {
    v4 = [(AMSUIWebButtonModel *)self title];
    v5 = [v4 isEqualToString:&stru_1F3921360];

    if (v5)
    {
      v3 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"checkmark"];
      goto LABEL_8;
    }

LABEL_7:
    v3 = 0;
  }

LABEL_8:
  if ([(AMSUIWebButtonModel *)self style]== 2)
  {
    if (_os_feature_enabled_impl())
    {
      if (_os_feature_enabled_impl())
      {
        v6 = [(AMSUIWebButtonModel *)self title];
        if (v6)
        {
          v7 = v6;
          v8 = [(AMSUIWebButtonModel *)self title];
          v9 = [v8 isEqualToString:&stru_1F3921360];

          if (v9)
          {
            v10 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"xmark"];

            v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40]];
            v3 = [v10 imageWithSymbolConfiguration:v11];
          }
        }
      }
    }
  }

  if ([(AMSUIWebButtonModel *)self style]== 3 && _os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v12 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"xmark"];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40]];
    v3 = [v12 imageWithSymbolConfiguration:v13];
  }

  if ([(AMSUIWebButtonModel *)self style]== 4 && _os_feature_enabled_impl())
  {
    _os_feature_enabled_impl();
  }

  return v3;
}

@end