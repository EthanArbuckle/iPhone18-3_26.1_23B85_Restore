@interface AMSUIWebToolbarModel
- (AMSUIWebToolbarModel)initWithJSObject:(id)a3 context:(id)a4;
- (NSString)description;
@end

@implementation AMSUIWebToolbarModel

- (AMSUIWebToolbarModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19.receiver = self;
    v19.super_class = AMSUIWebToolbarModel;
    v9 = [(AMSUIWebToolbarModel *)&v19 init];
    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"leftButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = [[AMSUIWebButtonModel alloc] initWithJSObject:v11 context:v7];
        leftButton = v9->_leftButton;
        v9->_leftButton = v12;
      }

      v14 = [v6 objectForKeyedSubscript:@"rightButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = [[AMSUIWebButtonModel alloc] initWithJSObject:v15 context:v7];
        rightButton = v9->_rightButton;
        v9->_rightButton = v16;
      }
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

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSUIWebToolbarModel *)self leftButton];

  if (v4)
  {
    v5 = [(AMSUIWebToolbarModel *)self leftButton];
    [v3 setObject:v5 forKey:@"leftButton"];
  }

  v6 = [(AMSUIWebToolbarModel *)self rightButton];

  if (v6)
  {
    v7 = [(AMSUIWebToolbarModel *)self rightButton];
    [v3 setObject:v7 forKey:@"rightButton"];
  }

  v8 = [v3 description];

  return v8;
}

@end