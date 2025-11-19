@interface SmallContactCardCollectionViewCell
- (_TtC22SubscribePageExtension34SmallContactCardCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SmallContactCardCollectionViewCell

- (_TtC22SubscribePageExtension34SmallContactCardCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(SmallContactCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SmallContactCardCollectionViewCell *)&v3 prepareForReuse];
  sub_10074FE24();
}

@end