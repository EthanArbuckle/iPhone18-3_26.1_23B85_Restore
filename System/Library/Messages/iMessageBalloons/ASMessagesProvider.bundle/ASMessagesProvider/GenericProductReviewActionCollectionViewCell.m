@interface GenericProductReviewActionCollectionViewCell
- (_TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewActionCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_2862C4();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v2 = v3.receiver;
  [(GenericProductReviewActionCollectionViewCell *)&v3 prepareForReuse];
  sub_2861E8(0);
  sub_2861F4(0);
}

- (_TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v9 = sub_75C840();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productTapToRateView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productReviewActionsView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return [(GenericProductReviewActionCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

@end