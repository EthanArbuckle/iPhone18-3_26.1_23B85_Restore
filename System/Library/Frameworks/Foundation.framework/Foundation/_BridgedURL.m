@interface _BridgedURL
- (_TtC10Foundation11_BridgedURL)init;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation _BridgedURL

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = one-time initialization token for logForwardingErrorOnce;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = *(&v4->super.isa + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
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