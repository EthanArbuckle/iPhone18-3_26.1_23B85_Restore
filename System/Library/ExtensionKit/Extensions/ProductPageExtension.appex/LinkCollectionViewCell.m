@interface LinkCollectionViewCell
- (_TtC20ProductPageExtension22LinkCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation LinkCollectionViewCell

- (_TtC20ProductPageExtension22LinkCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_currentLinkView) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100227494();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(LinkCollectionViewCell *)&v3 prepareForReuse];
  sub_100227054(0);
}

@end