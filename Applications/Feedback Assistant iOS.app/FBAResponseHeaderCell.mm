@interface FBAResponseHeaderCell
- (NSLayoutConstraint)leadingConstraint;
- (NSLayoutConstraint)topConstraint;
- (_TtC18Feedback_Assistant21FBAResponseHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (int64_t)selectionStyle;
- (void)awakeFromNib;
- (void)configureAssigneeForContentItem:(id)item;
- (void)configureForAppleFeedbackWithFollowup:(id)followup;
- (void)configureForContentItem:(id)item;
- (void)configureForFollowup:(id)followup;
- (void)prepareForReuse;
- (void)setContactImageView:(id)view;
- (void)setDateLabel:(id)label;
- (void)setNameLabel:(id)label;
- (void)setRoleLabel:(id)label;
- (void)setRoleView:(id)view;
- (void)setSelectionStyle:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FBAResponseHeaderCell

- (void)setNameLabel:(id)label
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel) = label;
  labelCopy = label;
}

- (void)setDateLabel:(id)label
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel) = label;
  labelCopy = label;
}

- (void)setContactImageView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView) = view;
  viewCopy = view;
}

- (void)setRoleView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView) = view;
  viewCopy = view;
}

- (void)setRoleLabel:(id)label
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel) = label;
  labelCopy = label;
}

- (NSLayoutConstraint)leadingConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)topConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  traitCollection = [(FBAResponseHeaderCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!changeCopy || userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    sub_10008A49C();
  }
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_10008A5CC();
}

- (void)configureForContentItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10008AA2C(itemCopy);
}

- (void)configureForFollowup:(id)followup
{
  followupCopy = followup;
  selfCopy = self;
  sub_10008AC64(followupCopy);
}

- (void)configureAssigneeForContentItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10008B3B0(itemCopy);
}

- (void)configureForAppleFeedbackWithFollowup:(id)followup
{
  followupCopy = followup;
  selfCopy = self;
  sub_10008B6E4(followupCopy);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FBAResponseHeaderCell();
  v2 = v4.receiver;
  [(FBAResponseHeaderCell *)&v4 prepareForReuse];
  [v2 setSelectionStyle:{0, v4.receiver, v4.super_class}];
  v3 = [v2 setAccessoryType:0];
  *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState) = 0;
  sub_100089B78(v3);
}

- (int64_t)selectionStyle
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBAResponseHeaderCell();
  return [(FBAResponseHeaderCell *)&v3 selectionStyle];
}

- (void)setSelectionStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBAResponseHeaderCell();
  v4 = v6.receiver;
  [(FBAResponseHeaderCell *)&v6 setSelectionStyle:style];
  if ([v4 selectionStyle])
  {
    v5 = UIAccessibilityTraitButton;
  }

  else
  {
    v5 = 0;
  }

  [v4 setAccessibilityTraits:v5];
}

- (_TtC18Feedback_Assistant21FBAResponseHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10008BC58(style, identifier, v6);
}

@end