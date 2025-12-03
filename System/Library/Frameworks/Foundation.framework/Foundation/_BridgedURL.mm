@interface _BridgedURL
- (_TtC10Foundation11_BridgedURL)init;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation _BridgedURL

- (id)forwardingTargetForSelector:(SEL)selector
{
  v3 = one-time initialization token for logForwardingErrorOnce;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v6 = v5;

  return v5;
}

- (_TtC10Foundation11_BridgedURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end