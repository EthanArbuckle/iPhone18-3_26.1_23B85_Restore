@interface DAUserInterruptAlert
- (DAUserInterruptAlert)initWithSuiteName:(id)a3 withHandler:(id)a4;
- (void)activate;
@end

@implementation DAUserInterruptAlert

- (DAUserInterruptAlert)initWithSuiteName:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = DAUserInterruptAlert;
  v9 = [(DAUserInterruptAlert *)&v13 init];
  if (v9)
  {
    v10 = objc_retainBlock(v8);
    handler = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_suiteName, a3);
  }

  return v9;
}

- (void)activate
{
  v3 = [(DAUserInterruptAlert *)self suiteName];
  v14 = sub_10000F490(@"SKIP_SUITE", @"%@", v4, v5, v6, v7, v8, v9, v3);

  v10 = +[DAPlatform currentPlatform];
  v11 = sub_10000F3A4(@"SKIP");
  v12 = sub_10000F3A4(@"CANCEL");
  v13 = [(DAUserInterruptAlert *)self handler];
  [v10 activateSimpleAlertWithTitle:v14 message:0 defaultButtonName:v11 cancelButtonName:v12 handler:v13];
}

@end