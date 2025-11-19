@interface EditorialCardCollectionViewCell
- (_TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation EditorialCardCollectionViewCell

- (_TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_objectGraph) = 0;
  v3 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorInset);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_isHovering) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_2378A8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_237B48();
}

@end