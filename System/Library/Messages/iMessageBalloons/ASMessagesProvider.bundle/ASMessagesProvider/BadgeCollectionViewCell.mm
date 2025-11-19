@interface BadgeCollectionViewCell
- (_TtC18ASMessagesProvider23BadgeCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BadgeCollectionViewCell

- (_TtC18ASMessagesProvider23BadgeCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23BadgeCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24BD88();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(BadgeCollectionViewCell *)&v3 prepareForReuse];
  sub_4AEC2C();
}

@end