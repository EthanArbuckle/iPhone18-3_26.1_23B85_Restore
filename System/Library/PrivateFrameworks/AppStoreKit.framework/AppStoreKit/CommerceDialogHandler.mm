@interface CommerceDialogHandler
- (_TtC11AppStoreKit21CommerceDialogHandler)init;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
@end

@implementation CommerceDialogHandler

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_1E167E90C(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC11AppStoreKit21CommerceDialogHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end