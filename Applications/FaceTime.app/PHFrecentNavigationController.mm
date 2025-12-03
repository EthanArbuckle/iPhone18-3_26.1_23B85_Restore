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
    navigationBar = [(PHFrecentNavigationController *)self navigationBar];
    [navigationBar setBarStyle:1];

    navigationBar2 = [(PHFrecentNavigationController *)self navigationBar];
    [navigationBar2 setTranslucent:1];

    navigationBar3 = [(PHFrecentNavigationController *)self navigationBar];
    [navigationBar3 _setHidesShadow:1];

    v6 = objc_alloc_init(UIImage);
    navigationBar4 = [(PHFrecentNavigationController *)self navigationBar];
    [navigationBar4 setBackgroundImage:v6 forBarPosition:0 barMetrics:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v8 = [UIBlurEffect effectWithStyle:2];
      v16[0] = v8;
      rootViewController = [UIApp rootViewController];
      backdropView = [rootViewController backdropView];
      captureGroup = [backdropView captureGroup];
      v12 = [UIVisualEffect _effectCopyingFromCaptureGroup:captureGroup];
      v16[1] = v12;
      v13 = [NSArray arrayWithObjects:v16 count:2];
      navigationBar5 = [(PHFrecentNavigationController *)self navigationBar];
      [navigationBar5 setBackgroundEffects:v13];
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