@interface ModernProductReviewCollectionViewCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation ModernProductReviewCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_2866DC();
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  v2 = v5.receiver;
  [(ModernProductReviewCollectionViewCell *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];
  tintColor = [v2 tintColor];
  [v3 setTitleColor:tintColor forState:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  attributesCopy = attributes;
  v5 = v8.receiver;
  v6 = [(ModernProductReviewCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  if (*(v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded) == 1)
  {
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
  }

  return v6;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_286980();
}

@end