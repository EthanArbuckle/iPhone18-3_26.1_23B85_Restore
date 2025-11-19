@interface ModernProductReviewCollectionViewCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation ModernProductReviewCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_2866DC();
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  v2 = v5.receiver;
  [(ModernProductReviewCollectionViewCell *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];
  v4 = [v2 tintColor];
  [v3 setTitleColor:v4 forState:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  v4 = a3;
  v5 = v8.receiver;
  v6 = [(ModernProductReviewCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  if (*(v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded) == 1)
  {
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
  }

  return v6;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_286980();
}

@end