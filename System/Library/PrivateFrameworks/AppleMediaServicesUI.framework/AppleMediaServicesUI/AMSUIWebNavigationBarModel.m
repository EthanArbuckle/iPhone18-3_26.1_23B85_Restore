@interface AMSUIWebNavigationBarModel
- (AMSUIWebNavigationBarModel)initWithJSObject:(id)a3 context:(id)a4;
- (BOOL)includesLeftItems;
- (BOOL)includesRightItems;
- (NSString)description;
@end

@implementation AMSUIWebNavigationBarModel

- (AMSUIWebNavigationBarModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47.receiver = self;
    v47.super_class = AMSUIWebNavigationBarModel;
    v9 = [(AMSUIWebNavigationBarModel *)&v47 init];
    if (v9)
    {
      v10 = [AMSUIWebBarButtonItemModel alloc];
      v11 = [v6 objectForKeyedSubscript:@"accessoryButton"];
      v12 = [(AMSUIWebBarButtonItemModel *)v10 initWithJSObject:v11 context:v7];
      accessoryBarButtonItemModel = v9->_accessoryBarButtonItemModel;
      v9->_accessoryBarButtonItemModel = v12;

      v14 = [v6 objectForKeyedSubscript:@"backButtonTitle"];
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

      v17 = [AMSUIWebModel backgroundColorFromPageModel:v6];
      backgroundColor = v9->_backgroundColor;
      v9->_backgroundColor = v17;

      v19 = [v6 objectForKeyedSubscript:@"backgroundStyle"];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v6 objectForKeyedSubscript:@"backgroundStyle"];
        v9->_backgroundStyle = [v20 longLongValue];
      }

      else
      {
        v9->_backgroundStyle = 0;
      }

      v21 = [v6 objectForKeyedSubscript:@"hideBackButton"];
      if (objc_opt_respondsToSelector())
      {
        v9->_hidesBackButton = [v21 BOOLValue];
      }

      v22 = [AMSUIWebBarButtonItemModel alloc];
      v23 = [v6 objectForKeyedSubscript:@"leftButton"];
      v24 = [(AMSUIWebBarButtonItemModel *)v22 initWithJSObject:v23 context:v7];
      leftBarButtonItemModel = v9->_leftBarButtonItemModel;
      v9->_leftBarButtonItemModel = v24;

      v26 = [v6 objectForKeyedSubscript:@"otherButtons"];
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
        v46 = v7;
        v28 = [v27 ams_mapWithTransformIgnoresNil:v45];
        otherBarButtonItemModels = v9->_otherBarButtonItemModels;
        v9->_otherBarButtonItemModels = v28;

        v30 = v46;
      }

      else
      {
        v31 = [v6 objectForKeyedSubscript:@"otherButton"];
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
        v33 = [[AMSUIWebBarButtonItemModel alloc] initWithJSObject:v30 context:v7];
        v34 = [v32 initWithObjects:{v33, 0}];
        v35 = v9->_otherBarButtonItemModels;
        v9->_otherBarButtonItemModels = v34;
      }

      v36 = [AMSUIWebBarButtonItemModel alloc];
      v37 = [v6 objectForKeyedSubscript:@"rightButton"];
      v38 = [(AMSUIWebBarButtonItemModel *)v36 initWithJSObject:v37 context:v7];
      rightBarButtonItemModel = v9->_rightBarButtonItemModel;
      v9->_rightBarButtonItemModel = v38;

      v40 = [v6 objectForKeyedSubscript:@"style"];
      if (objc_opt_respondsToSelector())
      {
        v9->_style = [v40 integerValue];
      }

      v41 = [v6 objectForKeyedSubscript:@"title"];
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
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

AMSUIWebBarButtonItemModel *__55__AMSUIWebNavigationBarModel_initWithJSObject_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSUIWebBarButtonItemModel alloc] initWithJSObject:v3 context:*(a1 + 32)];

  return v4;
}

- (BOOL)includesLeftItems
{
  v2 = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
}

- (BOOL)includesRightItems
{
  v2 = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
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

  v10 = [(AMSUIWebNavigationBarModel *)self accessoryBarButtonItemModel];

  if (v10)
  {
    v11 = [(AMSUIWebNavigationBarModel *)self accessoryBarButtonItemModel];
    [v9 setObject:v11 forKey:@"accessoryButton"];
  }

  v12 = [(AMSUIWebNavigationBarModel *)self backButtonTitle];

  if (v12)
  {
    v13 = [(AMSUIWebNavigationBarModel *)self backButtonTitle];
    [v9 setObject:v13 forKey:@"backButtonTitle"];
  }

  v14 = [(AMSUIWebNavigationBarModel *)self backgroundColor];

  if (v14)
  {
    v15 = [(AMSUIWebNavigationBarModel *)self backgroundColor];
    [v9 setObject:v15 forKey:@"backgroundColor"];
  }

  v16 = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];

  if (v16)
  {
    v17 = [(AMSUIWebNavigationBarModel *)self leftBarButtonItemModel];
    [v9 setObject:v17 forKey:@"leftButton"];
  }

  v18 = [(AMSUIWebNavigationBarModel *)self otherBarButtonItemModels];

  if (v18)
  {
    v19 = [(AMSUIWebNavigationBarModel *)self otherBarButtonItemModels];
    [v9 setObject:v19 forKey:@"otherButtons"];
  }

  v20 = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];

  if (v20)
  {
    v21 = [(AMSUIWebNavigationBarModel *)self rightBarButtonItemModel];
    [v9 setObject:v21 forKey:@"rightButton"];
  }

  v22 = [(AMSUIWebNavigationBarModel *)self title];

  if (v22)
  {
    v23 = [(AMSUIWebNavigationBarModel *)self title];
    [v9 setObject:v23 forKey:@"title"];
  }

  v24 = [v9 description];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end