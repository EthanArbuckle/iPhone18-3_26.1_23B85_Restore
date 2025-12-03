@interface AMSUIWebNavigationBarModel
- (AMSUIWebNavigationBarModel)initWithJSObject:(id)object context:(id)context;
- (BOOL)includesLeftItems;
- (BOOL)includesRightItems;
- (NSString)description;
@end

@implementation AMSUIWebNavigationBarModel

- (AMSUIWebNavigationBarModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47.receiver = self;
    v47.super_class = AMSUIWebNavigationBarModel;
    v9 = [(AMSUIWebNavigationBarModel *)&v47 init];
    if (v9)
    {
      v10 = [AMSUIWebBarButtonItemModel alloc];
      v11 = [objectCopy objectForKeyedSubscript:@"accessoryButton"];
      v12 = [(AMSUIWebBarButtonItemModel *)v10 initWithJSObject:v11 context:contextCopy];
      accessoryBarButtonItemModel = v9->_accessoryBarButtonItemModel;
      v9->_accessoryBarButtonItemModel = v12;

      v14 = [objectCopy objectForKeyedSubscript:@"backButtonTitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      backButtonTitle = v9->_backButtonTitle;
      v9->_backButtonTitle = v15;

      v17 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
      backgroundColor = v9->_backgroundColor;
      v9->_backgroundColor = v17;

      v19 = [objectCopy objectForKeyedSubscript:@"backgroundStyle"];
      if (objc_opt_respondsToSelector())
      {
        v20 = [objectCopy objectForKeyedSubscript:@"backgroundStyle"];
        v9->_backgroundStyle = [v20 longLongValue];
      }

      else
      {
        v9->_backgroundStyle = 0;
      }

      v21 = [objectCopy objectForKeyedSubscript:@"hideBackButton"];
      if (objc_opt_respondsToSelector())
      {
        v9->_hidesBackButton = [v21 BOOLValue];
      }

      v22 = [AMSUIWebBarButtonItemModel alloc];
      v23 = [objectCopy objectForKeyedSubscript:@"leftButton"];
      v24 = [(AMSUIWebBarButtonItemModel *)v22 initWithJSObject:v23 context:contextCopy];
      leftBarButtonItemModel = v9->_leftBarButtonItemModel;
      v9->_leftBarButtonItemModel = v24;

      v26 = [objectCopy objectForKeyedSubscript:@"otherButtons"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __55__AMSUIWebNavigationBarModel_initWithJSObject_context___block_invoke;
        v45[3] = &unk_1E7F267C8;
        v46 = contextCopy;
        v28 = [v27 ams_mapWithTransformIgnoresNil:v45];
        otherBarButtonItemModels = v9->_otherBarButtonItemModels;
        v9->_otherBarButtonItemModels = v28;

        v30 = v46;
      }

      else
      {
        v31 = [objectCopy objectForKeyedSubscript:@"otherButton"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v31;
        }

        else
        {
          v30 = 0;
        }

        v32 = objc_alloc(MEMORY[0x1E695DEC8]);
        v33 = [[AMSUIWebBarButtonItemModel alloc] initWithJSObject:v30 context:contextCopy];
        v34 = [v32 initWithObjects:{v33, 0}];
        v35 = v9->_otherBarButtonItemModels;
        v9->_otherBarButtonItemModels = v34;
      }

      v36 = [AMSUIWebBarButtonItemModel alloc];
      v37 = [objectCopy objectForKeyedSubscript:@"rightButton"];
      v38 = [(AMSUIWebBarButtonItemModel *)v36 initWithJSObject:v37 context:contextCopy];
      rightBarButtonItemModel = v9->_rightBarButtonItemModel;
      v9->_rightBarButtonItemModel = v38;

      v40 = [objectCopy objectForKeyedSubscript:@"style"];
      if (objc_opt_respondsToSelector())
      {
        v9->_style = [v40 integerValue];
      }

      v41 = [objectCopy objectForKeyedSubscript:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      title = v9->_title;
      v9->_title = v42;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

AMSUIWebBarButtonItemModel *__55__AMSUIWebNavigationBarModel_initWithJSObject_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSUIWebBarButtonItemModel alloc] initWithJSObject:v3 context:*(a1 + 32)];

  return v4;
}

- (BOOL)includesLeftItems
{
  leftBarButtonItemModel = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];
  isEmpty = [leftBarButtonItemModel isEmpty];

  return isEmpty ^ 1;
}

- (BOOL)includesRightItems
{
  rightBarButtonItemModel = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];
  isEmpty = [rightBarButtonItemModel isEmpty];

  return isEmpty ^ 1;
}

- (NSString)description
{
  v28[5] = *MEMORY[0x1E69E9840];
  v27[0] = @"backgroundStyle";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSUIWebNavigationBarModel backgroundStyle](self, "backgroundStyle")}];
  v28[0] = v3;
  v27[1] = @"hidesBackButton";
  if ([(AMSUIWebNavigationBarModel *)self hidesBackButton])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v28[1] = v4;
  v27[2] = @"includesLeftItems";
  if ([(AMSUIWebNavigationBarModel *)self includesLeftItems])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v28[2] = v5;
  v27[3] = @"includesRightItems";
  if ([(AMSUIWebNavigationBarModel *)self includesRightItems])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v28[3] = v6;
  v27[4] = @"style";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSUIWebNavigationBarModel style](self, "style")}];
  v28[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  v9 = [v8 mutableCopy];

  accessoryBarButtonItemModel = [(AMSUIWebNavigationBarModel *)self accessoryBarButtonItemModel];

  if (accessoryBarButtonItemModel)
  {
    accessoryBarButtonItemModel2 = [(AMSUIWebNavigationBarModel *)self accessoryBarButtonItemModel];
    [v9 setObject:accessoryBarButtonItemModel2 forKey:@"accessoryButton"];
  }

  backButtonTitle = [(AMSUIWebNavigationBarModel *)self backButtonTitle];

  if (backButtonTitle)
  {
    backButtonTitle2 = [(AMSUIWebNavigationBarModel *)self backButtonTitle];
    [v9 setObject:backButtonTitle2 forKey:@"backButtonTitle"];
  }

  backgroundColor = [(AMSUIWebNavigationBarModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebNavigationBarModel *)self backgroundColor];
    [v9 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  leftBarButtonItemModel = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];

  if (leftBarButtonItemModel)
  {
    leftBarButtonItemModel2 = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];
    [v9 setObject:leftBarButtonItemModel2 forKey:@"leftButton"];
  }

  otherBarButtonItemModels = [(AMSUIWebNavigationBarModel *)self otherBarButtonItemModels];

  if (otherBarButtonItemModels)
  {
    otherBarButtonItemModels2 = [(AMSUIWebNavigationBarModel *)self otherBarButtonItemModels];
    [v9 setObject:otherBarButtonItemModels2 forKey:@"otherButtons"];
  }

  rightBarButtonItemModel = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];

  if (rightBarButtonItemModel)
  {
    rightBarButtonItemModel2 = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];
    [v9 setObject:rightBarButtonItemModel2 forKey:@"rightButton"];
  }

  title = [(AMSUIWebNavigationBarModel *)self title];

  if (title)
  {
    title2 = [(AMSUIWebNavigationBarModel *)self title];
    [v9 setObject:title2 forKey:@"title"];
  }

  v24 = [v9 description];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end