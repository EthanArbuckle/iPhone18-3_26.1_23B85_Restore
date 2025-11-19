@interface ProductReviewActionsCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension24ProductReviewActionsCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductReviewActionsCell

- (_TtC20ProductPageExtension24ProductReviewActionsCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10067C0F4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

@end