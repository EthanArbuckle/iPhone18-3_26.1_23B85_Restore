@interface FBAFollowupDisplayTextCell
- (UILabel)displayText;
- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
@end

@implementation FBAFollowupDisplayTextCell

- (UILabel)displayText
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBAFollowupDisplayTextCell();
  v2 = v6.receiver;
  [(FBAFollowupDisplayTextCell *)&v6 awakeFromNib];
  [v2 setSelectionStyle:{3, v6.receiver, v6.super_class}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    secondaryLabelColor = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:secondaryLabelColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    swift_unknownObjectWeakInit();
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_unknownObjectWeakInit();
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAFollowupDisplayTextCell();
  v9 = [(FBAFollowupDisplayTextCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithCoder:(id)coder
{
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for FBAFollowupDisplayTextCell();
  coderCopy = coder;
  v7 = [(FBAFollowupDisplayTextCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end