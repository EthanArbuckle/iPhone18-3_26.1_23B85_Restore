@interface MSCriticalSMSMessenger
- (_TtC8Messages22MSCriticalSMSMessenger)init;
@end

@implementation MSCriticalSMSMessenger

- (_TtC8Messages22MSCriticalSMSMessenger)init
{
  v3 = OBJC_IVAR____TtC8Messages22MSCriticalSMSMessenger_messenger;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69A5AA8]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for MSCriticalSMSMessenger();
  return [(MSCriticalSMSMessenger *)&v5 init];
}

@end