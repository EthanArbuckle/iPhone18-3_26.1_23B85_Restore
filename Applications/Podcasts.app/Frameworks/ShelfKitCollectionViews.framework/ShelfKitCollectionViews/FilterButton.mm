@interface FilterButton
- (_TtC23ShelfKitCollectionViews12FilterButton)initWithCoder:(id)a3;
- (void)didHover:(id)a3;
- (void)updateConfiguration;
@end

@implementation FilterButton

- (_TtC23ShelfKitCollectionViews12FilterButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_hoverRecognizer) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_19C4F8();
}

- (void)didHover:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if ((v5 - 1) <= 3)
  {
    *(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering) = 0x101u >> (8 * (v5 - 1));
  }

  sub_19C4F8();
}

@end