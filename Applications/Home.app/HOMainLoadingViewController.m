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
  v4 = [(HOMainLoadingViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (HUWallpaperView)wallpaperView
{
  wallpaperView = self->_wallpaperView;
  if (!wallpaperView)
  {
    v4 = [HUWallpaperView alloc];
    v5 = [(HOMainLoadingViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_wallpaperView;
    self->_wallpaperView = v6;

    [(HUWallpaperView *)self->_wallpaperView setAutoresizingMask:18];
    v8 = [(HOMainLoadingViewController *)self view];
    [v8 addSubview:self->_wallpaperView];

    wallpaperView = self->_wallpaperView;
  }

  return wallpaperView;
}

@end