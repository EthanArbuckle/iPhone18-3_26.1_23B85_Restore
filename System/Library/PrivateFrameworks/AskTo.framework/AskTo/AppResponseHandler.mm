@interface AppResponseHandler
- (_TtC5AskTo18AppResponseHandler)init;
- (void)notifyApplicationDidFinishLaunching;
- (void)processIncomingResponses:(id)responses;
@end

@implementation AppResponseHandler

- (void)notifyApplicationDidFinishLaunching
{
  *(&self->super.isa + OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses) = 1;
  selfCopy = self;
  sub_2258D56CC();
}

- (void)processIncomingResponses:(id)responses
{
  v4 = sub_2258E0DE0();
  selfCopy = self;
  sub_2258D61C0(v4);
}

- (_TtC5AskTo18AppResponseHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end