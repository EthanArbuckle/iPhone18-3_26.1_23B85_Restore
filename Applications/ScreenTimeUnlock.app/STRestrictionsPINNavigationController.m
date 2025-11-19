@interface STRestrictionsPINNavigationController
+ (BOOL)st_isPad;
- (BOOL)prefersStatusBarHidden;
- (CGRect)lastKnownSuperviewFrame;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustToSuperviewFrame;
- (void)_freezeSupportedOrientations;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation STRestrictionsPINNavigationController

- (void)viewWillLayoutSubviews
{
  [(STRestrictionsPINNavigationController *)self lastKnownSuperviewFrame];
  if (CGRectGetWidth(v4) == 0.0)
  {

    [(STRestrictionsPINNavigationController *)self _adjustToSuperviewFrame];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  [(STRestrictionsPINNavigationController *)self setPrefersStatusBarHiddenOverride:1];
  [(STRestrictionsPINNavigationController *)self setNeedsStatusBarAppearanceUpdate];
  v6 = [(STRestrictionsPINNavigationController *)self view];
  [v6 frame];
  v11.receiver = self;
  v11.super_class = STRestrictionsPINNavigationController;
  [(STRestrictionsPINNavigationController *)&v11 viewWillTransitionToSize:v5 withTransitionCoordinator:v7, v8];

  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002B78;
  v10[3] = &unk_1000083E0;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002B80;
  v9[3] = &unk_1000083E0;
  [v5 animateAlongsideTransition:v10 completion:v9];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(STRestrictionsPINNavigationController *)self prefersStatusBarHiddenOverride])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = STRestrictionsPINNavigationController;
  return [(STRestrictionsPINNavigationController *)&v4 prefersStatusBarHidden];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (![objc_opt_class() st_isPad])
  {
    return 26;
  }

  return [(STRestrictionsPINNavigationController *)self internalSupportedOrientations];
}

+ (BOOL)st_isPad
{
  if (qword_10000CED8 != -1)
  {
    sub_100003270();
  }

  return byte_10000CEE0;
}

- (void)_adjustToSuperviewFrame
{
  v13 = [(STRestrictionsPINNavigationController *)self view];
  v3 = [v13 superview];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(STRestrictionsPINNavigationController *)self lastKnownSuperviewFrame];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  if (!CGRectEqualToRect(v15, v16))
  {
    [(STRestrictionsPINNavigationController *)self setLastKnownSuperviewFrame:v5, v7, v9, v11];
    if ([objc_opt_class() st_isPad])
    {
      v12 = [v13 layer];
      [v12 setCornerRadius:10.0];

      [v13 setClipsToBounds:1];
      [(STRestrictionsPINNavigationController *)self _freezeSupportedOrientations];
    }

    else
    {
      [v13 setFrame:{v5, v7, v9, v11}];
    }
  }
}

- (void)_freezeSupportedOrientations
{
  v3 = [(STRestrictionsPINNavigationController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 effectiveGeometry];
  v7 = [v6 interfaceOrientation];

  if ((v7 - 2) > 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = qword_1000045F0[(v7 - 2)];
  }

  [(STRestrictionsPINNavigationController *)self setInternalSupportedOrientations:v8];
}

- (CGRect)lastKnownSuperviewFrame
{
  objc_copyStruct(v6, &self->_lastKnownSuperviewFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end