@interface AMSUIWebActivityIndicatorModel
- (AMSUIWebActivityIndicatorModel)initWithJSObject:(id)object context:(id)context;
- (NSString)debugDescription;
@end

@implementation AMSUIWebActivityIndicatorModel

- (AMSUIWebActivityIndicatorModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = AMSUIWebActivityIndicatorModel;
  v6 = [(AMSUIWebActivityIndicatorModel *)&v10 init];
  if (v6)
  {
    v7 = [objectCopy objectForKeyedSubscript:@"animate"];
    if (objc_opt_respondsToSelector())
    {
      v8 = [objectCopy objectForKeyedSubscript:@"animate"];
      v6->_animate = [v8 BOOLValue];
    }

    else
    {
      v6->_animate = 1;
    }
  }

  return v6;
}

- (NSString)debugDescription
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"animate";
  animate = [(AMSUIWebActivityIndicatorModel *)self animate];
  v3 = @"false";
  if (animate)
  {
    v3 = @"true";
  }

  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v4 description];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end