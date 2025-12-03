@interface LargeLockupCollectionViewCell
- (_TtC20ProductPageExtension29LargeLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LargeLockupCollectionViewCell

- (_TtC20ProductPageExtension29LargeLockupCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_preferredArtworkSize);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002D7218();
}

@end