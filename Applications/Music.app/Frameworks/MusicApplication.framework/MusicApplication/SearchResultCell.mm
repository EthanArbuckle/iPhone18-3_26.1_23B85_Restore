@interface SearchResultCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchResultCell

- (void)layoutSubviews
{
  v2 = self;
  sub_3EA8F8();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SearchResultCell *)v5 traitCollection];
  sub_3ECF40(v6);

  [v4 frame];
  [v4 setFrame:?];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3EB490(a3);
}

@end