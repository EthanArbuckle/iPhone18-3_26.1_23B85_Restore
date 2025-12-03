@interface RCSOutgoingMessageController
- (_TtC3RCS28RCSOutgoingMessageController)init;
- (void)messageSendFailed:(id)failed forMessageID:(id)d withError:(id)error;
- (void)messageSendSuccess:(id)success withID:(id)d;
@end

@implementation RCSOutgoingMessageController

- (void)messageSendFailed:(id)failed forMessageID:(id)d withError:(id)error
{
  failedCopy = failed;
  dCopy = d;
  errorCopy = error;
  selfCopy = self;
  RCSOutgoingMessageController.messageSendFailed(_:for:withError:)(failedCopy, dCopy, errorCopy);
}

- (void)messageSendSuccess:(id)success withID:(id)d
{
  successCopy = success;
  dCopy = d;
  selfCopy = self;
  RCSOutgoingMessageController.messageSendSuccess(_:with:)(successCopy, dCopy);
}

- (_TtC3RCS28RCSOutgoingMessageController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end