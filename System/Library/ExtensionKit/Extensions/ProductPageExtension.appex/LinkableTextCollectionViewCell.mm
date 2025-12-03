@interface LinkableTextCollectionViewCell
- (_TtC20ProductPageExtension30LinkableTextCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LinkableTextCollectionViewCell

- (_TtC20ProductPageExtension30LinkableTextCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyText;
  v7 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100083EE4();
}

@end