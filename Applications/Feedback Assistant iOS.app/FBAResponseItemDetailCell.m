@interface FBAResponseItemDetailCell
- (UIStackView)questionGroupsStack;
- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithCoder:(id)a3;
- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setContentItem:(id)a3;
@end

@implementation FBAResponseItemDetailCell

- (UIStackView)questionGroupsStack
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)setContentItem:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = a3;
  v5 = a3;
  v6 = self;

  sub_100074B88();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000759B4();
}

- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    v6 = 0;
    *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for FBAResponseItemDetailCell();
  v7 = [(FBAResponseItemDetailCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FBAResponseItemDetailCell();
  v5 = a3;
  v6 = [(FBAResponseItemDetailCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end