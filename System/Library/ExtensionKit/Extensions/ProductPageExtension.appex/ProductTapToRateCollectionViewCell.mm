@interface ProductTapToRateCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension34ProductTapToRateCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateCollectionViewCell

- (_TtC20ProductPageExtension34ProductTapToRateCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100352400();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_100469230(width);
  v7 = v6;
  v8 = [*(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView) isHidden];

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 24.0;
  }

  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

@end