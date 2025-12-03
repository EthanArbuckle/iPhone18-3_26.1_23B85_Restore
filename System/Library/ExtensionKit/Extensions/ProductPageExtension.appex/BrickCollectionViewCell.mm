@interface BrickCollectionViewCell
- (_TtC20ProductPageExtension23BrickCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BrickCollectionViewCell

- (_TtC20ProductPageExtension23BrickCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText);
  *v6 = 0;
  v6[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003CEB60();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(BrickCollectionViewCell *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  *v3 = 0;
  *(v3 + 1) = 0;

  sub_1003CE7AC();
}

@end