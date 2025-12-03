@interface ProductTapToRateCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore34ProductTapToRateCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateCollectionViewCell

- (_TtC8AppStore34ProductTapToRateCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10022C018();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1005DE30C(width);
  v7 = v6;
  isHidden = [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView) isHidden];

  if (isHidden)
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