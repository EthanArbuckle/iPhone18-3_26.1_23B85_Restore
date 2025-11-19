@interface LinkableTextCollectionViewCell
- (_TtC18ASMessagesProvider30LinkableTextCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation LinkableTextCollectionViewCell

- (_TtC18ASMessagesProvider30LinkableTextCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
  v7 = sub_BD88(&unk_944E80);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3B4FC8();
}

@end