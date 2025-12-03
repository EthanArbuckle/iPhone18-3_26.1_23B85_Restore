@interface FilterButton
- (_TtC23ShelfKitCollectionViews12FilterButton)initWithCoder:(id)coder;
- (void)didHover:(id)hover;
- (void)updateConfiguration;
@end

@implementation FilterButton

- (_TtC23ShelfKitCollectionViews12FilterButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_hoverRecognizer) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_19C4F8();
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  state = [hoverCopy state];
  if ((state - 1) <= 3)
  {
    *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering) = 0x101u >> (8 * (state - 1));
  }

  sub_19C4F8();
}

@end