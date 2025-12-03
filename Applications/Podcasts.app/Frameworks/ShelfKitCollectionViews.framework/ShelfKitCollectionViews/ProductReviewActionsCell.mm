@interface ProductReviewActionsCell
- (_TtC23ShelfKitCollectionViews24ProductReviewActionsCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ProductReviewActionsCell

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ProductReviewActionsCell *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton];
  tintColor = [v2 tintColor];
  [v3 setTitleColor:tintColor forState:0];
}

- (_TtC23ShelfKitCollectionViews24ProductReviewActionsCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewAction) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportAction) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B4AF0();
}

@end