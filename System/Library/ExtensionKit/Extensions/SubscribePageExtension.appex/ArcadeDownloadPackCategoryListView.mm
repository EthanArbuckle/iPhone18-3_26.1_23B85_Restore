@interface ArcadeDownloadPackCategoryListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackCategoryListView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v10 = sub_1004B1D88();
  [v10 constant];
  v12 = v11;

  v13 = v9 + v12;
  v14 = v7;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1004B2468();
}

@end