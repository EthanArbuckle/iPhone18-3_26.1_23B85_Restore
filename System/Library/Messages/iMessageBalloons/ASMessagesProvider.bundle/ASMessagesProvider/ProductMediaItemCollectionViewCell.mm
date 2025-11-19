@interface ProductMediaItemCollectionViewCell
- (_TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductMediaItemCollectionViewCell

- (_TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait) = 0;
  v6 = self + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_75DB70();
  swift_unknownObjectWeakInit();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_419A64();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_419C58();
}

@end