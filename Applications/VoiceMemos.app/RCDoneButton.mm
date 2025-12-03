@interface RCDoneButton
- (NSString)title;
- (void)setTitle:(id)title;
- (void)updateConfiguration;
@end

@implementation RCDoneButton

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setTitle:(id)title
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_titleString);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  [(RCDoneButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_1001B5274();
}

@end