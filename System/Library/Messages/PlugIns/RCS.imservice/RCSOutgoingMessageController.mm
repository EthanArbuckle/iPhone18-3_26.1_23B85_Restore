@interface RCSOutgoingMessageController
- (_TtC3RCS28RCSOutgoingMessageController)init;
- (void)messageSendFailed:(id)a3 forMessageID:(id)a4 withError:(id)a5;
- (void)messageSendSuccess:(id)a3 withID:(id)a4;
@end

@implementation RCSOutgoingMessageController

- (void)messageSendFailed:(id)a3 forMessageID:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSOutgoingMessageController.messageSendFailed(_:for:withError:)(v8, v9, v10);
}

- (void)messageSendSuccess:(id)a3 withID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSOutgoingMessageController.messageSendSuccess(_:with:)(v6, v7);
}

- (_TtC3RCS28RCSOutgoingMessageController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end