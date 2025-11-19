@interface ProductReviewActionsCell
- (_TtC23ShelfKitCollectionViews24ProductReviewActionsCell)initWithCoder:(id)a3;
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
  v4 = [v2 tintColor];
  [v3 setTitleColor:v4 forState:0];
}

- (_TtC23ShelfKitCollectionViews24ProductReviewActionsCell)initWithCoder:(id)a3
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
  v2 = self;
  sub_2B4AF0();
}

@end