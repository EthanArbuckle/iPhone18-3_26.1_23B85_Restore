@interface FMMultiSettingsRowView
- (NSString)accessibilityLabel;
- (_TtC6FindMy22FMMultiSettingsRowView)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation FMMultiSettingsRowView

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1004EF60C(v6, a4);
}

- (_TtC6FindMy22FMMultiSettingsRowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end