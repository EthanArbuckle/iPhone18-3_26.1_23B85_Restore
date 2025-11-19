@interface ArcadeDownloadPackCategoriesPageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackCategoriesPageView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(ArcadeDownloadPackCategoriesPageView *)v2 bounds];
  v3 = [(ArcadeDownloadPackCategoriesPageView *)v2 traitCollection];
  sub_E63EC(v10);
  sub_B170(v10, v10[3]);
  sub_7673F0();
  v5 = v4;
  v7 = v6;

  sub_BEB8(v10);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(ArcadeDownloadPackCategoriesPageView *)v3 traitCollection];
  sub_E63EC(v11);
  sub_B170(v11, v11[3]);
  sub_7673F0();
  v6 = v5;
  v8 = v7;

  sub_BEB8(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArcadeDownloadPackCategoriesPageView *)&v5 layoutSubviews];
  sub_E63EC(v4);
  sub_B170(v4, v4[3]);
  [v2 bounds];
  v3 = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

- (void)invalidateMeasurements
{
  v2 = self;
  sub_E6BC4();
}

- (void)preferredContentSizeCategoryDidChange
{
  v2 = self;
  sub_E6E7C();
}

@end