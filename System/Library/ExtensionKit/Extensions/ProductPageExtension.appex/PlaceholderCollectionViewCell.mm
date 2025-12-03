@interface PlaceholderCollectionViewCell
- (_TtC20ProductPageExtension29PlaceholderCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PlaceholderCollectionViewCell

- (_TtC20ProductPageExtension29PlaceholderCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(UIView) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(PlaceholderCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView];
  contentView = [v2 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end