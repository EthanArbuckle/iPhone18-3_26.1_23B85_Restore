@interface HOMainLoadingViewController
- (HUWallpaperView)wallpaperView;
- (void)viewDidLoad;
@end

@implementation HOMainLoadingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HOMainLoadingViewController;
  [(HOMainLoadingViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBlackColor];
  view = [(HOMainLoadingViewController *)self view];
  [view setBackgroundColor:v3];
}

- (HUWallpaperView)wallpaperView
{
  wallpaperView = self->_wallpaperView;
  if (!wallpaperView)
  {
    v4 = [HUWallpaperView alloc];
    view = [(HOMainLoadingViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_wallpaperView;
    self->_wallpaperView = v6;

    [(HUWallpaperView *)self->_wallpaperView setAutoresizingMask:18];
    view2 = [(HOMainLoadingViewController *)self view];
    [view2 addSubview:self->_wallpaperView];

    wallpaperView = self->_wallpaperView;
  }

  return wallpaperView;
}

@end