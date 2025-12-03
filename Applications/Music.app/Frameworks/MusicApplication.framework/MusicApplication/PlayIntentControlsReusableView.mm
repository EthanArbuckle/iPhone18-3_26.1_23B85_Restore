@interface PlayIntentControlsReusableView
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlayIntentControlsReusableView

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_414770(attributesCopy);

  return v6;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_41376C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_413844();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_413D48(change);
}

@end