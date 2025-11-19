@interface ProductReviewActionsCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore24ProductReviewActionsCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductReviewActionsCell

- (_TtC8AppStore24ProductReviewActionsCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100137D5C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

@end