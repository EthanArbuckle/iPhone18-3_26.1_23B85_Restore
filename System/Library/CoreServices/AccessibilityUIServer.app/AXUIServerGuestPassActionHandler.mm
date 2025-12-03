@interface AXUIServerGuestPassActionHandler
+ (_TtC21AccessibilityUIServer32AXUIServerGuestPassActionHandler)shared;
- (_TtC21AccessibilityUIServer32AXUIServerGuestPassActionHandler)init;
- (void)handleActions:(id)actions;
@end

@implementation AXUIServerGuestPassActionHandler

+ (_TtC21AccessibilityUIServer32AXUIServerGuestPassActionHandler)shared
{
  v2 = [objc_allocWithZone(type metadata accessor for AXUIServerGuestPassActionHandler()) init];

  return v2;
}

- (void)handleActions:(id)actions
{
  sub_100006CB4();
  sub_100006D00();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100006D58(v4);
}

- (_TtC21AccessibilityUIServer32AXUIServerGuestPassActionHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXUIServerGuestPassActionHandler();
  return [(AXUIServerGuestPassActionHandler *)&v3 init];
}

@end