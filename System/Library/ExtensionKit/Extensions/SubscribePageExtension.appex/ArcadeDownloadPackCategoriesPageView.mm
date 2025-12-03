@interface ArcadeDownloadPackCategoriesPageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)invalidateMeasurements;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackCategoriesPageView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(ArcadeDownloadPackCategoriesPageView *)selfCopy bounds];
  traitCollection = [(ArcadeDownloadPackCategoriesPageView *)selfCopy traitCollection];
  sub_1000B2188(v10);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(ArcadeDownloadPackCategoriesPageView *)selfCopy traitCollection];
  sub_1000B2188(v11);
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
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArcadeDownloadPackCategoriesPageView *)&v5 layoutSubviews];
  sub_1000B2188(v4);
  sub_10000C888(v4, v4[3]);
  [v2 bounds];
  traitCollection = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (void)invalidateMeasurements
{
  selfCopy = self;
  sub_1000B2960();
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1000B2C18();
}

@end