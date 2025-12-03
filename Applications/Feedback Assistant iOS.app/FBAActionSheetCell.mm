@interface FBAActionSheetCell
- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setActionImageView:(id)view;
- (void)setActionTitleLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FBAActionSheetCell

- (void)setActionTitleLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = label;
  labelCopy = label;
}

- (void)setActionImageView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = view;
  viewCopy = view;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  traitCollection = [(FBAActionSheetCell *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel);
  if (v8)
  {
    [v8 setNumberOfLines:(v7 & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(FBAActionSheetCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC18Feedback_Assistant18FBAActionSheetCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAActionSheetCell();
  coderCopy = coder;
  v5 = [(FBAActionSheetCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end