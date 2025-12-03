@interface DAUserInterruptAlert
- (DAUserInterruptAlert)initWithSuiteName:(id)name withHandler:(id)handler;
- (void)activate;
@end

@implementation DAUserInterruptAlert

- (DAUserInterruptAlert)initWithSuiteName:(id)name withHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = DAUserInterruptAlert;
  v9 = [(DAUserInterruptAlert *)&v13 init];
  if (v9)
  {
    v10 = objc_retainBlock(handlerCopy);
    handler = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_suiteName, name);
  }

  return v9;
}

- (void)activate
{
  suiteName = [(DAUserInterruptAlert *)self suiteName];
  v14 = sub_10000F490(@"SKIP_SUITE", @"%@", v4, v5, v6, v7, v8, v9, suiteName);

  v10 = +[DAPlatform currentPlatform];
  v11 = sub_10000F3A4(@"SKIP");
  v12 = sub_10000F3A4(@"CANCEL");
  handler = [(DAUserInterruptAlert *)self handler];
  [v10 activateSimpleAlertWithTitle:v14 message:0 defaultButtonName:v11 cancelButtonName:v12 handler:handler];
}

@end