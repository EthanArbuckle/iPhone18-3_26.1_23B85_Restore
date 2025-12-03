@interface FMSettingSingleRowView
- (NSString)accessibilityLabel;
- (UIImage)accessibilityChevronImage;
- (_TtC6FindMy22FMSettingSingleRowView)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation FMSettingSingleRowView

- (UIImage)accessibilityChevronImage
{
  image = [*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron) image];

  return image;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_10030F74C(v6, event);
}

- (_TtC6FindMy22FMSettingSingleRowView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end