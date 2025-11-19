@interface PHFrecentNavigationController
- (BOOL)needsSplitView;
- (void)viewDidLoad;
@end

@implementation PHFrecentNavigationController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PHFrecentNavigationController;
  [(PHFrecentNavigationController *)&v15 viewDidLoad];
  if (![(PHFrecentNavigationController *)self needsSplitView])
  {
    [(PHFrecentNavigationController *)self _setClipUnderlapWhileTransitioning:1];
    v3 = [(PHFrecentNavigationController *)self navigationBar];
    [v3 setBarStyle:1];

    v4 = [(PHFrecentNavigationController *)self navigationBar];
    [v4 setTranslucent:1];

    v5 = [(PHFrecentNavigationController *)self navigationBar];
    [v5 _setHidesShadow:1];

    v6 = objc_alloc_init(UIImage);
    v7 = [(PHFrecentNavigationController *)self navigationBar];
    [v7 setBackgroundImage:v6 forBarPosition:0 barMetrics:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v8 = [UIBlurEffect effectWithStyle:2];
      v16[0] = v8;
      v9 = [UIApp rootViewController];
      v10 = [v9 backdropView];
      v11 = [v10 captureGroup];
      v12 = [UIVisualEffect _effectCopyingFromCaptureGroup:v11];
      v16[1] = v12;
      v13 = [NSArray arrayWithObjects:v16 count:2];
      v14 = [(PHFrecentNavigationController *)self navigationBar];
      [v14 setBackgroundEffects:v13];
    }
  }
}

- (BOOL)needsSplitView
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = _UISolariumEnabled();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end