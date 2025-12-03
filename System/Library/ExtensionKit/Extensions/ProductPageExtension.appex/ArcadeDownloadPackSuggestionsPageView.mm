@interface ArcadeDownloadPackSuggestionsPageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackSuggestionsPageView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(ArcadeDownloadPackSuggestionsPageView *)selfCopy bounds];
  traitCollection = [(ArcadeDownloadPackSuggestionsPageView *)selfCopy traitCollection];
  sub_10063406C(v10);
  sub_10000CF78(v10, v10[3]);
  sub_10076E0FC();
  v5 = v4;
  v7 = v6;

  sub_10000CD74(v10);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(ArcadeDownloadPackSuggestionsPageView *)selfCopy traitCollection];
  sub_10063406C(v11);
  sub_10000CF78(v11, v11[3]);
  sub_10076E0FC();
  v6 = v5;
  v8 = v7;

  sub_10000CD74(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006346EC();
}

- (void)invalidateMeasurements
{
  selfCopy = self;
  [(ArcadeDownloadPackSuggestionsPageView *)selfCopy setNeedsLayout];
  [(ArcadeDownloadPackSuggestionsPageView *)selfCopy invalidateIntrinsicContentSize];
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_100634894();
}

@end