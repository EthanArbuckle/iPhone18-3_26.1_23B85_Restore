@interface FBAResponseHeaderCell
- (NSLayoutConstraint)leadingConstraint;
- (NSLayoutConstraint)topConstraint;
- (_TtC18Feedback_Assistant21FBAResponseHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (int64_t)selectionStyle;
- (void)awakeFromNib;
- (void)configureAssigneeForContentItem:(id)a3;
- (void)configureForAppleFeedbackWithFollowup:(id)a3;
- (void)configureForContentItem:(id)a3;
- (void)configureForFollowup:(id)a3;
- (void)prepareForReuse;
- (void)setContactImageView:(id)a3;
- (void)setDateLabel:(id)a3;
- (void)setNameLabel:(id)a3;
- (void)setRoleLabel:(id)a3;
- (void)setRoleView:(id)a3;
- (void)setSelectionStyle:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FBAResponseHeaderCell

- (void)setNameLabel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel) = a3;
  v3 = a3;
}

- (void)setDateLabel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel) = a3;
  v3 = a3;
}

- (void)setContactImageView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView) = a3;
  v3 = a3;
}

- (void)setRoleView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView) = a3;
  v3 = a3;
}

- (void)setRoleLabel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel) = a3;
  v3 = a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v7 = self;
  v4 = a3;
  v5 = [(FBAResponseHeaderCell *)v7 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!v4 || v6 != [v4 userInterfaceStyle])
  {
    sub_10008A49C();
  }
}

- (void)awakeFromNib
{
  v2 = self;
  sub_10008A5CC();
}

- (void)configureForContentItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008AA2C(v4);
}

- (void)configureForFollowup:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008AC64(v4);
}

- (void)configureAssigneeForContentItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008B3B0(v4);
}

- (void)configureForAppleFeedbackWithFollowup:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008B6E4(v4);
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

- (void)setSelectionStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBAResponseHeaderCell();
  v4 = v6.receiver;
  [(FBAResponseHeaderCell *)&v6 setSelectionStyle:a3];
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

- (_TtC18Feedback_Assistant21FBAResponseHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10008BC58(a3, a4, v6);
}

@end