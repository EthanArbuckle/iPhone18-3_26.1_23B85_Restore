@interface BCStatusBarBackgroundController
+ (id)backgroundControllerForViewController:(id)controller;
+ (id)backgroundControllerForWindow:(id)window;
- (BCStatusBarBackgroundController)initWithWindow:(id)window;
- (CGRect)_statusBarFrame;
- (UIView)cardStackBackgroundView;
- (UIWindow)window;
- (double)opacity;
- (id)windowScene;
- (void)_updateParentViewOfCardStackBackgroundView;
- (void)setOpacity:(double)opacity animated:(BOOL)animated;
- (void)updateParentViewOfCardStackBackgroundViewWithParentViewController:(id)controller;
@end

@implementation BCStatusBarBackgroundController

- (id)windowScene
{
  window = [(BCStatusBarBackgroundController *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (CGRect)_statusBarFrame
{
  windowScene = [(BCStatusBarBackgroundController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  window = [(BCStatusBarBackgroundController *)self window];
  [window safeAreaInsets];
  v13 = v12;

  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_updateParentViewOfCardStackBackgroundView
{
  window = [(BCStatusBarBackgroundController *)self window];
  rootViewController = [window rootViewController];

  v4 = [rootViewController bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
  [(BCStatusBarBackgroundController *)self updateParentViewOfCardStackBackgroundViewWithParentViewController:v4];
}

- (UIView)cardStackBackgroundView
{
  cardStackBackgroundView = self->_cardStackBackgroundView;
  if (!cardStackBackgroundView)
  {
    v4 = [UIVisualEffectView alloc];
    [(BCStatusBarBackgroundController *)self _statusBarFrame];
    v5 = [v4 initWithFrame:?];
    v6 = [UIBlurEffect effectWithStyle:1100];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [(UIView *)v5 setBackgroundEffects:v7];

    v8 = self->_cardStackBackgroundView;
    self->_cardStackBackgroundView = v5;

    cardStackBackgroundView = self->_cardStackBackgroundView;
  }

  return cardStackBackgroundView;
}

+ (id)backgroundControllerForViewController:(id)controller
{
  v3 = [controller im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCStatusBarBackgroundControllerProviding];
  statusBarBackgroundController = [v3 statusBarBackgroundController];

  return statusBarBackgroundController;
}

+ (id)backgroundControllerForWindow:(id)window
{
  v3 = [window im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCStatusBarBackgroundControllerProviding];
  statusBarBackgroundController = [v3 statusBarBackgroundController];

  return statusBarBackgroundController;
}

- (BCStatusBarBackgroundController)initWithWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = BCStatusBarBackgroundController;
  v5 = [(BCStatusBarBackgroundController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, windowCopy);
  }

  return v6;
}

- (double)opacity
{
  effectiveBackgroundView = [(BCStatusBarBackgroundController *)self effectiveBackgroundView];
  [effectiveBackgroundView alpha];
  v4 = v3;

  return v4;
}

- (void)setOpacity:(double)opacity animated:(BOOL)animated
{
  animatedCopy = animated;
  [(BCStatusBarBackgroundController *)self _updateParentViewOfCardStackBackgroundView];
  [(BCStatusBarBackgroundController *)self effectiveBackgroundView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_B89B4;
  v10[3] = &unk_2C8DD0;
  v7 = v13 = opacity;
  v11 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(v10);
  v9 = v8;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v8 animations:0.2];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)updateParentViewOfCardStackBackgroundViewWithParentViewController:(id)controller
{
  controllerCopy = controller;
  cardStackBackgroundView = [(BCStatusBarBackgroundController *)self cardStackBackgroundView];
  superview = [cardStackBackgroundView superview];
  view = [controllerCopy view];

  if (superview != view)
  {
    view2 = [controllerCopy view];
    [view2 addSubview:cardStackBackgroundView];
  }
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end