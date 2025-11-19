@interface RCDoneButton
- (NSString)title;
- (void)setTitle:(id)a3;
- (void)updateConfiguration;
@end

@implementation RCDoneButton

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_titleString);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  [(RCDoneButton *)v7 setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  v2 = self;
  sub_1001B5274();
}

@end