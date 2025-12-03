@interface AMSUIWebConditionalButtonModel
- (AMSUIWebConditionalButtonModel)initWithJSObject:(id)object context:(id)context;
- (NSString)description;
@end

@implementation AMSUIWebConditionalButtonModel

- (AMSUIWebConditionalButtonModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (!objectCopy)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v19.receiver = self;
  v19.super_class = AMSUIWebConditionalButtonModel;
  self = [(AMSUIWebConditionalButtonModel *)&v19 init];
  if (!self)
  {
    goto LABEL_15;
  }

  v9 = [objectCopy objectForKeyedSubscript:@"hideOnPush"];
  v10 = (objc_opt_respondsToSelector() & 1) != 0 ? [v9 BOOLValue] : 0;
  self->_hideOnPush = v10;
  v11 = [objectCopy objectForKeyedSubscript:@"hideOnModal"];
  v12 = (objc_opt_respondsToSelector() & 1) != 0 ? [v11 BOOLValue] : 0;
  self->_hideOnModal = v12;
  v13 = [objectCopy objectForKeyedSubscript:@"button"];
  objc_opt_class();
  v14 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;

  v15 = [[AMSUIWebButtonModel alloc] initWithJSObject:v14 context:contextCopy];
  button = self->_button;
  self->_button = v15;

  v17 = self->_button;
  if (!v17)
  {
LABEL_3:
    selfCopy = 0;
  }

  else
  {
LABEL_15:
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)description
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"button";
  button = [(AMSUIWebConditionalButtonModel *)self button];
  v11[0] = button;
  v10[1] = @"hideOnPush";
  if ([(AMSUIWebConditionalButtonModel *)self hideOnPush])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v11[1] = v4;
  v10[2] = @"hideOnModal";
  if ([(AMSUIWebConditionalButtonModel *)self hideOnModal])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v11[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v7 = [v6 description];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end