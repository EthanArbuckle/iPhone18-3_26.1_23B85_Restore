@interface GenericProductReviewActionCollectionViewCell
- (_TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewActionCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1002A478C();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v2 = v3.receiver;
  [(GenericProductReviewActionCollectionViewCell *)&v3 prepareForReuse];
  sub_1002A46B0(0);
  sub_1002A46BC(0);
}

- (_TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v9 = sub_1007469A4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return [(GenericProductReviewActionCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

@end