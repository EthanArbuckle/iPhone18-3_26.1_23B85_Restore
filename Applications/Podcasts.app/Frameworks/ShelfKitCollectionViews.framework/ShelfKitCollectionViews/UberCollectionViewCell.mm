@interface UberCollectionViewCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation UberCollectionViewCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  [(UberCollectionViewCell *)selfCopy layoutIfNeeded];
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for UberCollectionViewCell();
  v6 = [(UberCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];

  return v6;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_14F4B4();
}

@end