@interface ExpandableFollowButton
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityLabel;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)didTapButton;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ExpandableFollowButton

- (CGSize)intrinsicContentSize
{
  v4 = 28.0;
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState) == 4)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = type metadata accessor for ExpandableFollowButton();
    [(ExpandableFollowButton *)&v6 intrinsicContentSize];
  }

  v5 = 28.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExpandableFollowButton();
  return [(ExpandableFollowButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_A9D94(highlighted);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_124C4(0, &qword_400A88);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_B8A24(0, 0, 0, sub_AB2F8, v4);

  return v5;
}

- (void)didTapButton
{
  selfCopy = self;
  sub_AA78C();
}

- (NSString)accessibilityLabel
{
  sub_ADFEC(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews22ExpandableFollowButton_followState));
  if (v2)
  {
    v3 = sub_30C098();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end