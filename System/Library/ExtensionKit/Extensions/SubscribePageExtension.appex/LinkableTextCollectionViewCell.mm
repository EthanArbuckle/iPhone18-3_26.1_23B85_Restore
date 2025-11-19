@interface LinkableTextCollectionViewCell
- (_TtC22SubscribePageExtension30LinkableTextCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation LinkableTextCollectionViewCell

- (_TtC22SubscribePageExtension30LinkableTextCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyText;
  v7 = sub_10000C518(&unk_1009332A0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100386EF8();
}

@end