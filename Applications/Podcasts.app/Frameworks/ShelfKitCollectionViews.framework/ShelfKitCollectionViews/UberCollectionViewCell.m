@interface UberCollectionViewCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation UberCollectionViewCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  [(UberCollectionViewCell *)v5 layoutIfNeeded];
  v8.receiver = v5;
  v8.super_class = type metadata accessor for UberCollectionViewCell();
  v6 = [(UberCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];

  return v6;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_14F4B4();
}

@end