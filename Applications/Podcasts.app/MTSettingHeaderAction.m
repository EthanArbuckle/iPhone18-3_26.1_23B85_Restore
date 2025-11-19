@interface MTSettingHeaderAction
+ (MTSettingHeaderAction)headerActionWithTitle:(id)a3 actionHandler:(id)a4;
- (MTSettingHeaderAction)initWithTitle:(id)a3 actionHandler:(id)a4;
- (void)performAction;
@end

@implementation MTSettingHeaderAction

+ (MTSettingHeaderAction)headerActionWithTitle:(id)a3 actionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 actionHandler:v6];

  return v8;
}

- (MTSettingHeaderAction)initWithTitle:(id)a3 actionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MTSettingHeaderAction;
  v9 = [(MTSettingHeaderAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    v11 = objc_retainBlock(v8);
    actionHandler = v10->_actionHandler;
    v10->_actionHandler = v11;
  }

  return v10;
}

- (void)performAction
{
  v3 = [(MTSettingHeaderAction *)self actionHandler];

  if (v3)
  {
    v4 = [(MTSettingHeaderAction *)self actionHandler];
    v4[2]();
  }
}

@end