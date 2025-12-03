@interface DaemonSBSendAskResponsePayload
- (_TtC9AskToCore30DaemonSBSendAskResponsePayload)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DaemonSBSendAskResponsePayload

- (_TtC9AskToCore30DaemonSBSendAskResponsePayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DaemonSBSendAskResponsePayload.encode(with:)(coderCopy);
}

@end