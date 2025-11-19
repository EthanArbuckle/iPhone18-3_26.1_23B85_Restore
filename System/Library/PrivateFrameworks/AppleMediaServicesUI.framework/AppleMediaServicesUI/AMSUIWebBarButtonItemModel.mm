@interface AMSUIWebBarButtonItemModel
- (AMSUIWebBarButtonItemModel)initWithJSObject:(id)a3 context:(id)a4;
- (BOOL)isEmpty;
- (NSString)description;
@end

@implementation AMSUIWebBarButtonItemModel

- (AMSUIWebBarButtonItemModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = AMSUIWebBarButtonItemModel;
  v8 = [(AMSUIWebBarButtonItemModel *)&v20 init];
  if (v8)
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if ([AMSUIWebAppViewModel validateJSObject:v10])
      {
        v11 = [[AMSUIWebAppViewModel alloc] initWithJSObject:v10 context:v7];
        appViewModel = v8->_appViewModel;
        v8->_appViewModel = v11;
      }

      else
      {
        v14 = [[AMSUIWebButtonModel alloc] initWithJSObject:v10 context:v7];
        appViewModel = v8->_buttonModel;
        v8->_buttonModel = v14;
      }
    }

    else
    {
      v13 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        appViewModel = v13;
      }

      else
      {
        appViewModel = 0;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__AMSUIWebBarButtonItemModel_initWithJSObject_context___block_invoke;
      v18[3] = &unk_1E7F25BF0;
      v19 = v7;
      v15 = [appViewModel ams_mapWithTransformIgnoresNil:v18];
      conditionalButtonModels = v8->_conditionalButtonModels;
      v8->_conditionalButtonModels = v15;
    }
  }

  return v8;
}

AMSUIWebConditionalButtonModel *__55__AMSUIWebBarButtonItemModel_initWithJSObject_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSUIWebConditionalButtonModel alloc] initWithJSObject:v3 context:*(a1 + 32)];

  return v4;
}

- (BOOL)isEmpty
{
  v3 = [(AMSUIWebBarButtonItemModel *)self appViewModel];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(AMSUIWebBarButtonItemModel *)self buttonModel];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(AMSUIWebBarButtonItemModel *)self conditionalButtonModels];
      v4 = [v6 count] == 0;
    }
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSUIWebBarButtonItemModel *)self appViewModel];

  if (v4)
  {
    v5 = [(AMSUIWebBarButtonItemModel *)self appViewModel];
    [v3 setObject:v5 forKey:@"appViewModel"];
  }

  v6 = [(AMSUIWebBarButtonItemModel *)self buttonModel];

  if (v6)
  {
    v7 = [(AMSUIWebBarButtonItemModel *)self buttonModel];
    [v3 setObject:v7 forKey:@"buttonModel"];
  }

  v8 = [(AMSUIWebBarButtonItemModel *)self conditionalButtonModels];

  if (v8)
  {
    v9 = [(AMSUIWebBarButtonItemModel *)self conditionalButtonModels];
    [v3 setObject:v9 forKey:@"conditionalButtonModels"];
  }

  v10 = [v3 description];

  return v10;
}

@end