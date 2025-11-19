@interface FBAActionSheetCell
- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithCoder:(id)a3;
- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setActionImageView:(id)a3;
- (void)setActionTitleLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FBAActionSheetCell

- (void)setActionTitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = a3;
  v3 = a3;
}

- (void)setActionImageView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = a3;
  v3 = a3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = self;
  v4 = a3;
  v5 = [(FBAActionSheetCell *)v9 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v8 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel);
  if (v8)
  {
    [v8 setNumberOfLines:(v7 & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for FBAActionSheetCell();
  v7 = [(FBAActionSheetCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetCell();
  v4 = a3;
  v5 = [(FBAActionSheetCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end