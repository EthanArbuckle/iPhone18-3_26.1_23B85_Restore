@interface SRAssetsDownloadBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (UIEdgeInsets)bannerContentOutsets;
- (_TtC4Siri36SRAssetsDownloadBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)openSettings:(id)a3;
- (void)showBannerFor:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SRAssetsDownloadBannerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000C86E8();
}

- (void)viewDidLayoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView);
  v14 = self;
  v3 = v2;
  v4 = [(SRAssetsDownloadBannerViewController *)v14 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }
}

- (void)showBannerFor:(double)a3
{
  v4 = self;
  sub_1000C88DC(a3);
}

- (void)openSettings:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000CA2E0();
}

- (_TtC4Siri36SRAssetsDownloadBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView) systemLayoutSizeFittingSize:{a3.width, a3.height, a4.width, a4.height}];
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView) shadowOutsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end