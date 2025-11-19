@interface ArcadeDownloadPackSuggestionsPageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackSuggestionsPageView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(ArcadeDownloadPackSuggestionsPageView *)v2 bounds];
  v3 = [(ArcadeDownloadPackSuggestionsPageView *)v2 traitCollection];
  sub_100379970(v10);
  sub_10000C888(v10, v10[3]);
  sub_100751254();
  v5 = v4;
  v7 = v6;

  sub_10000C620(v10);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(ArcadeDownloadPackSuggestionsPageView *)v3 traitCollection];
  sub_100379970(v11);
  sub_10000C888(v11, v11[3]);
  sub_100751254();
  v6 = v5;
  v8 = v7;

  sub_10000C620(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100379FF0();
}

- (void)invalidateMeasurements
{
  v2 = self;
  [(ArcadeDownloadPackSuggestionsPageView *)v2 setNeedsLayout];
  [(ArcadeDownloadPackSuggestionsPageView *)v2 invalidateIntrinsicContentSize];
}

- (void)preferredContentSizeCategoryDidChange
{
  v2 = self;
  sub_10037A198();
}

@end