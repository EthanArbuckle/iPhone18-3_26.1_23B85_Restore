@interface AMSUIWebButtonModel
- (AMSUIWebButtonModel)initWithJSObject:(id)object context:(id)context;
- (NSString)description;
- (id)_imageForButtonWithNavStyle:(int64_t)style;
- (id)_makeActivityIndicatorView;
- (id)_makeProxCardButtonWithActionBlock:(id)block;
- (id)_systemImage;
- (id)createDialogAction;
- (int64_t)_barButtonItemStyle;
- (int64_t)_systemItem;
@end

@implementation AMSUIWebButtonModel

- (AMSUIWebButtonModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v41.receiver = self;
    v41.super_class = AMSUIWebButtonModel;
    v10 = [(AMSUIWebButtonModel *)&v41 init];
    if (v10)
    {
      v11 = [objectCopy objectForKeyedSubscript:@"title"];
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

      objc_storeStrong(&v10->_underlyingJSObject, object);
      v14 = [objectCopy objectForKeyedSubscript:@"accessibilityLabel"];
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

      v17 = [objectCopy objectForKeyedSubscript:@"action"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [AMSUIWebActionMapper actionFromJSObject:v18 context:contextCopy];
      action = v10->_action;
      v10->_action = v19;

      v21 = [objectCopy objectForKeyedSubscript:@"activityIndicator"];
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
        v23 = [[AMSUIWebActivityIndicatorModel alloc] initWithJSObject:v22 context:contextCopy];
        activityIndicator = v10->_activityIndicator;
        v10->_activityIndicator = v23;
      }

      v25 = [objectCopy objectForKeyedSubscript:@"bold"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue = [v25 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v10->_bold = bOOLValue;
      v27 = [objectCopy objectForKeyedSubscript:@"enabled"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue2 = [v27 BOOLValue];
      }

      else
      {
        bOOLValue2 = 1;
      }

      v10->_enabled = bOOLValue2;
      v29 = [objectCopy objectForKeyedSubscript:@"identifier"];
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

      v32 = [objectCopy objectForKeyedSubscript:@"keyEquivalent"];
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

      v35 = [objectCopy objectForKeyedSubscript:@"style"];
      if (objc_opt_respondsToSelector())
      {
        v36 = [objectCopy objectForKeyedSubscript:@"style"];
        v10->_style = [v36 integerValue];
      }

      else
      {
        v10->_style = 0;
      }

      v37 = [objectCopy objectForKeyedSubscript:@"systemImageName"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  activityIndicator = [(AMSUIWebButtonModel *)self activityIndicator];
  animate = [activityIndicator animate];

  if (animate)
  {
    [v3 startAnimating];
  }

  else
  {
    [v3 stopAnimating];
  }

  return v3;
}

- (id)_makeProxCardButtonWithActionBlock:(id)block
{
  blockCopy = block;
  v4 = [MEMORY[0x1E69C66D0] buttonWithProximityType:2];
  v5 = MEMORY[0x1E69DC628];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSUIWebButtonModel__makeProxCardButtonWithActionBlock___block_invoke;
  v9[3] = &unk_1E7F24D78;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [v5 actionWithHandler:v9];
  [v4 addAction:v7 forControlEvents:64];

  return v4;
}

- (id)createDialogAction
{
  v3 = MEMORY[0x1E698C8B8];
  title = [(AMSUIWebButtonModel *)self title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    v6 = &stru_1F3921360;
  }

  v7 = [v3 actionWithTitle:v6];

  identifier = [(AMSUIWebButtonModel *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSUIWebButtonModel *)self identifier];
    [v7 setIdentifier:identifier2];
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
  underlyingJSObject = [(AMSUIWebButtonModel *)self underlyingJSObject];
  v13 = [underlyingJSObject mutableCopy];
  [v7 setUserInfo:v13];

  return v7;
}

- (NSString)description
{
  underlyingJSObject = [(AMSUIWebButtonModel *)self underlyingJSObject];
  v3 = [underlyingJSObject description];

  return v3;
}

- (int64_t)_systemItem
{
  style = [(AMSUIWebButtonModel *)self style];
  if (style > 4)
  {
    return 0x8000000000000000;
  }

  else
  {
    return qword_1BB1EF340[style];
  }
}

- (id)_imageForButtonWithNavStyle:(int64_t)style
{
  systemImageName = [(AMSUIWebButtonModel *)self systemImageName];
  if (systemImageName)
  {
    v6 = MEMORY[0x1E69DCAB8];
    systemImageName2 = [(AMSUIWebButtonModel *)self systemImageName];
    v8 = [v6 _systemImageNamed:systemImageName2];

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
    if (style == 7)
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
  if (style == 7 && (v9 & 1) == 0)
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

  title = [(AMSUIWebButtonModel *)self title];
  if (title)
  {
    title2 = [(AMSUIWebButtonModel *)self title];
    v5 = [title2 isEqualToString:&stru_1F3921360];

    if (v5)
    {
      title = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"checkmark"];
      goto LABEL_8;
    }

LABEL_7:
    title = 0;
  }

LABEL_8:
  if ([(AMSUIWebButtonModel *)self style]== 2)
  {
    if (_os_feature_enabled_impl())
    {
      if (_os_feature_enabled_impl())
      {
        title3 = [(AMSUIWebButtonModel *)self title];
        if (title3)
        {
          v7 = title3;
          title4 = [(AMSUIWebButtonModel *)self title];
          v9 = [title4 isEqualToString:&stru_1F3921360];

          if (v9)
          {
            v10 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"xmark"];

            v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40]];
            title = [v10 imageWithSymbolConfiguration:v11];
          }
        }
      }
    }
  }

  if ([(AMSUIWebButtonModel *)self style]== 3 && _os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v12 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:@"xmark"];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40]];
    title = [v12 imageWithSymbolConfiguration:v13];
  }

  if ([(AMSUIWebButtonModel *)self style]== 4 && _os_feature_enabled_impl())
  {
    _os_feature_enabled_impl();
  }

  return title;
}

@end