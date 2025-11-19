@interface BCStatusBarBackgroundController
+ (id)backgroundControllerForViewController:(id)a3;
+ (id)backgroundControllerForWindow:(id)a3;
- (BCStatusBarBackgroundController)initWithWindow:(id)a3;
- (CGRect)_statusBarFrame;
- (UIView)cardStackBackgroundView;
- (UIWindow)window;
- (double)opacity;
- (id)windowScene;
- (void)_updateParentViewOfCardStackBackgroundView;
- (void)setOpacity:(double)a3 animated:(BOOL)a4;
- (void)updateParentViewOfCardStackBackgroundViewWithParentViewController:(id)a3;
@end

@implementation BCStatusBarBackgroundController

- (id)windowScene
{
  v2 = [(BCStatusBarBackgroundController *)self window];
  v3 = [v2 windowScene];

  return v3;
}

- (CGRect)_statusBarFrame
{
  v3 = [(BCStatusBarBackgroundController *)self windowScene];
  v4 = [v3 statusBarManager];
  [v4 statusBarFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(BCStatusBarBackgroundController *)self window];
  [v11 safeAreaInsets];
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
  v3 = [(BCStatusBarBackgroundController *)self window];
  v5 = [v3 rootViewController];

  v4 = [v5 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
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

+ (id)backgroundControllerForViewController:(id)a3
{
  v3 = [a3 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCStatusBarBackgroundControllerProviding];
  v4 = [v3 statusBarBackgroundController];

  return v4;
}

+ (id)backgroundControllerForWindow:(id)a3
{
  v3 = [a3 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BCStatusBarBackgroundControllerProviding];
  v4 = [v3 statusBarBackgroundController];

  return v4;
}

- (BCStatusBarBackgroundController)initWithWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BCStatusBarBackgroundController;
  v5 = [(BCStatusBarBackgroundController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, v4);
  }

  return v6;
}

- (double)opacity
{
  v2 = [(BCStatusBarBackgroundController *)self effectiveBackgroundView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setOpacity:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(BCStatusBarBackgroundController *)self _updateParentViewOfCardStackBackgroundView];
  [(BCStatusBarBackgroundController *)self effectiveBackgroundView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_B89B4;
  v10[3] = &unk_2C8DD0;
  v7 = v13 = a3;
  v11 = v7;
  v12 = self;
  v8 = objc_retainBlock(v10);
  v9 = v8;
  if (v4)
  {
    [UIView animateWithDuration:v8 animations:0.2];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)updateParentViewOfCardStackBackgroundViewWithParentViewController:(id)a3
{
  v8 = a3;
  v4 = [(BCStatusBarBackgroundController *)self cardStackBackgroundView];
  v5 = [v4 superview];
  v6 = [v8 view];

  if (v5 != v6)
  {
    v7 = [v8 view];
    [v7 addSubview:v4];
  }
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end