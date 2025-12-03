@interface SearchResultCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchResultCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3EA8F8();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  traitCollection = [(SearchResultCell *)selfCopy traitCollection];
  sub_3ECF40(traitCollection);

  [attributesCopy frame];
  [attributesCopy setFrame:?];

  return attributesCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3EB490(change);
}

@end