@interface FMMultiSettingsRowView
- (NSString)accessibilityLabel;
- (_TtC6FindMy22FMMultiSettingsRowView)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation FMMultiSettingsRowView

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1004EE0BC();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_1004EF60C(v6, event);
}

- (_TtC6FindMy22FMMultiSettingsRowView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end