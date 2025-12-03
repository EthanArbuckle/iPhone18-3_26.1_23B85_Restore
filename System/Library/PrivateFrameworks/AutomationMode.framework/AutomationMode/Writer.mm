@interface Writer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC21automationmode_writer6Writer)init;
- (void)disableAutomationModeWithCompletion:(id)completion;
- (void)enableAutomationModeWithAuthorization:(id)authorization completion:(id)completion;
- (void)enableAutomationModeWithCompletion:(id)completion;
@end

@implementation Writer

- (_TtC21automationmode_writer6Writer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100007E98(connectionCopy);

  return v9 & 1;
}

- (void)disableAutomationModeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  selfCopy = self;
  sub_100003670(0);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)enableAutomationModeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  selfCopy = self;
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

- (void)enableAutomationModeWithAuthorization:(id)authorization completion:(id)completion
{
  v6 = _Block_copy(completion);
  authorizationCopy = authorization;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100008264(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_100008E2C(v8, v10);
}

@end