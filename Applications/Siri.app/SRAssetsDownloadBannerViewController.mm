@interface SRAssetsDownloadBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (UIEdgeInsets)bannerContentOutsets;
- (_TtC4Siri36SRAssetsDownloadBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)openSettings:(id)settings;
- (void)showBannerFor:(double)for;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SRAssetsDownloadBannerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000C86E8();
}

- (void)viewDidLayoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView);
  selfCopy = self;
  v3 = v2;
  view = [(SRAssetsDownloadBannerViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    [view bounds];
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

- (void)showBannerFor:(double)for
{
  selfCopy = self;
  sub_1000C88DC(for);
}

- (void)openSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  sub_1000CA2E0();
}

- (_TtC4Siri36SRAssetsDownloadBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView) systemLayoutSizeFittingSize:{size.width, size.height, containerSize.width, containerSize.height}];
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