@interface PlayIntentControlsReusableView
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlayIntentControlsReusableView

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_414770(v4);

  return v6;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_41376C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_413844();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_413D48(a3);
}

@end