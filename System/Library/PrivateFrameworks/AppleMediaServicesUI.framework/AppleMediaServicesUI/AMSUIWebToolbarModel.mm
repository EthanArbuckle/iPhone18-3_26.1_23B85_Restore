@interface AMSUIWebToolbarModel
- (AMSUIWebToolbarModel)initWithJSObject:(id)object context:(id)context;
- (NSString)description;
@end

@implementation AMSUIWebToolbarModel

- (AMSUIWebToolbarModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19.receiver = self;
    v19.super_class = AMSUIWebToolbarModel;
    v9 = [(AMSUIWebToolbarModel *)&v19 init];
    if (v9)
    {
      v10 = [objectCopy objectForKeyedSubscript:@"leftButton"];
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
        v12 = [[AMSUIWebButtonModel alloc] initWithJSObject:v11 context:contextCopy];
        leftButton = v9->_leftButton;
        v9->_leftButton = v12;
      }

      v14 = [objectCopy objectForKeyedSubscript:@"rightButton"];
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
        v16 = [[AMSUIWebButtonModel alloc] initWithJSObject:v15 context:contextCopy];
        rightButton = v9->_rightButton;
        v9->_rightButton = v16;
      }
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

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  leftButton = [(AMSUIWebToolbarModel *)self leftButton];

  if (leftButton)
  {
    leftButton2 = [(AMSUIWebToolbarModel *)self leftButton];
    [v3 setObject:leftButton2 forKey:@"leftButton"];
  }

  rightButton = [(AMSUIWebToolbarModel *)self rightButton];

  if (rightButton)
  {
    rightButton2 = [(AMSUIWebToolbarModel *)self rightButton];
    [v3 setObject:rightButton2 forKey:@"rightButton"];
  }

  v8 = [v3 description];

  return v8;
}

@end