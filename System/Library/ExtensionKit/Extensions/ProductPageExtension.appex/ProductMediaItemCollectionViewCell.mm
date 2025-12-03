@interface ProductMediaItemCollectionViewCell
- (_TtC20ProductPageExtension34ProductMediaItemCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductMediaItemCollectionViewCell

- (_TtC20ProductPageExtension34ProductMediaItemCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) = 0;
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_10076475C();
  swift_unknownObjectWeakInit();
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10040C780();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10040C974();
}

@end