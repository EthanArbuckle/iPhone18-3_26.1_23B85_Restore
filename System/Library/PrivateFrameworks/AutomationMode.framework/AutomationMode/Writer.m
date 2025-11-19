@interface Writer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC21automationmode_writer6Writer)init;
- (void)disableAutomationModeWithCompletion:(id)a3;
- (void)enableAutomationModeWithAuthorization:(id)a3 completion:(id)a4;
- (void)enableAutomationModeWithCompletion:(id)a3;
@end

@implementation Writer

- (_TtC21automationmode_writer6Writer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100007E98(v7);

  return v9 & 1;
}

- (void)disableAutomationModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  sub_100003670(0);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)enableAutomationModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v7 = self;
  if (sub_1000066A8())
  {
    v5 = [objc_allocWithZone(NSError) initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:1 userInfo:0];
    v6 = _convertErrorToNSError(_:)();
    v4[2](v4, v6);
  }

  else
  {
    sub_100003670(1);
    v4[2](v4, 0);
  }

  _Block_release(v4);
}

- (void)enableAutomationModeWithAuthorization:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100008264(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_100008E2C(v8, v10);
}

@end