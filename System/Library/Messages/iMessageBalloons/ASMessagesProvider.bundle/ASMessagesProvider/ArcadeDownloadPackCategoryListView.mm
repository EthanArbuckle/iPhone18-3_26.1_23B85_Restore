@interface ArcadeDownloadPackCategoryListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeDownloadPackCategoryListView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;

  [*(&v5->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v10 = sub_6E0FA4();
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
  v2 = self;
  sub_6E1684();
}

@end