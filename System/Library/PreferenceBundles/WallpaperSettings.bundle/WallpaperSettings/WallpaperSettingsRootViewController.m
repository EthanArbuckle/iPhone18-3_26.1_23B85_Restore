@interface WallpaperSettingsRootViewController
- (WallpaperSettingsRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WallpaperSettingsRootViewController

- (void)viewDidLoad
{
  v2 = self;
  WallpaperSettingsRootViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  WallpaperSettingsRootViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  WallpaperSettingsRootViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (WallpaperSettingsRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2A454();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return WallpaperSettingsRootViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_2A3F4();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_379C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  WallpaperSettingsRootViewController.handleURL(_:withCompletion:)(a3, v8, v7);
  sub_3754(v8);
}

@end