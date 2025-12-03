@interface MTSettingHeaderAction
+ (MTSettingHeaderAction)headerActionWithTitle:(id)title actionHandler:(id)handler;
- (MTSettingHeaderAction)initWithTitle:(id)title actionHandler:(id)handler;
- (void)performAction;
@end

@implementation MTSettingHeaderAction

+ (MTSettingHeaderAction)headerActionWithTitle:(id)title actionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy actionHandler:handlerCopy];

  return v8;
}

- (MTSettingHeaderAction)initWithTitle:(id)title actionHandler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = MTSettingHeaderAction;
  v9 = [(MTSettingHeaderAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    v11 = objc_retainBlock(handlerCopy);
    actionHandler = v10->_actionHandler;
    v10->_actionHandler = v11;
  }

  return v10;
}

- (void)performAction
{
  actionHandler = [(MTSettingHeaderAction *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(MTSettingHeaderAction *)self actionHandler];
    actionHandler2[2]();
  }
}

@end