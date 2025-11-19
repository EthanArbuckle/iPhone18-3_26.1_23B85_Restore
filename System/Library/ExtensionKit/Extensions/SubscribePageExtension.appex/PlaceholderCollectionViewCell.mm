@interface PlaceholderCollectionViewCell
- (_TtC22SubscribePageExtension29PlaceholderCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PlaceholderCollectionViewCell

- (_TtC22SubscribePageExtension29PlaceholderCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(UIView) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(PlaceholderCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView];
  v4 = [v2 contentView];
  sub_100009D34();
  sub_1007477B4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end