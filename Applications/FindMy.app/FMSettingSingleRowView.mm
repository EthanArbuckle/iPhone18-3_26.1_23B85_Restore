@interface FMSettingSingleRowView
- (NSString)accessibilityLabel;
- (UIImage)accessibilityChevronImage;
- (_TtC6FindMy22FMSettingSingleRowView)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation FMSettingSingleRowView

- (UIImage)accessibilityChevronImage
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron) image];

  return v2;
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_10030E378();
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
  sub_10030F74C(v6, a4);
}

- (_TtC6FindMy22FMSettingSingleRowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end