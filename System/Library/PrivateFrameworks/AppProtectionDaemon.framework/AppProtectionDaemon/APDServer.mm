@interface APDServer
- (void)runWithArguments:(id)arguments;
@end

@implementation APDServer

- (void)runWithArguments:(id)arguments
{
  sub_240069A04();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_serviceQueue);
  v5 = OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_platformExpert;
  sub_2400695FC();
  v8 = swift_allocObject();
  sub_240069650(self + v5, v8 + 16);
  selfCopy = self;
  v7 = v4;
  sub_2400699F4();
  sub_2400699E4();
  __break(1u);
}

@end