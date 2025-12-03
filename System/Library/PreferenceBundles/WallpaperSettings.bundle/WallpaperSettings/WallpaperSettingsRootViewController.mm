@interface WallpaperSettingsRootViewController
- (WallpaperSettingsRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WallpaperSettingsRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  WallpaperSettingsRootViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  WallpaperSettingsRootViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  WallpaperSettingsRootViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (WallpaperSettingsRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2A454();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return WallpaperSettingsRootViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_2A3F4();
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

  selfCopy = self;
  WallpaperSettingsRootViewController.handleURL(_:withCompletion:)(l, v8, v7);
  sub_3754(v8);
}

@end