@interface GenericProductReviewActionCollectionViewCell
- (_TtC8AppStore44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewActionCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002DC54C();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v2 = v3.receiver;
  [(GenericProductReviewActionCollectionViewCell *)&v3 prepareForReuse];
  sub_1002DC534(0);
  sub_1002DC540(0);
}

- (_TtC8AppStore44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return [(GenericProductReviewActionCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

@end