@interface CommerceDialogHandler
- (_TtC11AppStoreKit21CommerceDialogHandler)init;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
@end

@implementation CommerceDialogHandler

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1E167E90C(v7, v8, v6);
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