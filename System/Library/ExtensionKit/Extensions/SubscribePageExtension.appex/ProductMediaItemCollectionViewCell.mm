@interface ProductMediaItemCollectionViewCell
- (_TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductMediaItemCollectionViewCell

- (_TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) = 0;
  v6 = self + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_100747CD4();
  swift_unknownObjectWeakInit();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10043D818();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10043DA0C();
}

@end