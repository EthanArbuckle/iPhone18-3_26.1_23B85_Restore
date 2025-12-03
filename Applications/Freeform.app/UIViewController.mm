@interface UIViewController
- (BOOL)crl_shouldUpdateNavigationContentSizeWithPreferredContentSize;
- (BOOL)crl_updateContentSizePreservingPreviousWidthWithSize:(CGSize)size validateSize:(id)validateSize;
- (CRLiOSWindowWrapper)crl_windowWrapper;
- (void)crl_adjustScrollIndicatorInsetsForTableView:(id)view;
@end

@implementation UIViewController

- (CRLiOSWindowWrapper)crl_windowWrapper
{
  view = [(UIViewController *)self view];
  crl_windowWrapper = [view crl_windowWrapper];

  return crl_windowWrapper;
}

- (void)crl_adjustScrollIndicatorInsetsForTableView:(id)view
{
  viewCopy = view;
  if (+[UIDevice crl_phoneUI])
  {
    [viewCopy horizontalScrollIndicatorInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [viewCopy verticalScrollIndicatorInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = !+[UIScreen crl_screenClassPhoneUIRegularOrLarge](UIScreen, "crl_screenClassPhoneUIRegularOrLarge") && +[UIScreen crl_screenClass]!= 2;
    if (!+[UIScreen crl_deviceIsLandscape]|| v15)
    {
      v14 = UITableViewAutomaticDimension;
      v23 = UITableViewAutomaticDimension;
      v12 = UITableViewAutomaticDimension;
      v8 = UITableViewAutomaticDimension;
      v20 = UITableViewAutomaticDimension;
      v6 = UITableViewAutomaticDimension;
      v21 = viewCopy;
    }

    else
    {
      superview = [viewCopy superview];
      [superview safeAreaInsets];
      v18 = v17;

      +[UIScreen crl_screenZoomScale];
      v20 = floor(v18 / v19);
      +[UIScreen crl_screenZoomScale];
      v21 = viewCopy;
      v23 = floor(v18 / v22);
    }

    [v21 setHorizontalScrollIndicatorInsets:{v4, v6, v20, v8}];
    [viewCopy setVerticalScrollIndicatorInsets:{v10, v12, v23, v14}];
  }
}

- (BOOL)crl_shouldUpdateNavigationContentSizeWithPreferredContentSize
{
  navigationController = [(UIViewController *)self navigationController];
  if (navigationController)
  {
    v4 = objc_opt_class();
    parentViewController = [(UIViewController *)self parentViewController];
    v6 = sub_100014370(v4, parentViewController);

    topViewController = [navigationController topViewController];
    if (v6)
    {
      v8 = topViewController == self;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)crl_updateContentSizePreservingPreviousWidthWithSize:(CGSize)size validateSize:(id)validateSize
{
  height = size.height;
  width = size.width;
  validateSizeCopy = validateSize;
  [(UIViewController *)self preferredContentSize];
  v10 = height != CGSizeZero.height || width != CGSizeZero.width;
  v11 = height != v9 || width != v8;
  navigationController = [(UIViewController *)self navigationController];
  if (navigationController)
  {
    navigationController2 = [(UIViewController *)self navigationController];
    [navigationController2 preferredContentSize];
    v16 = height != v15 || width != v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v10 && (v11 || v16);
  if (v17 == 1)
  {
    navigationController3 = [(UIViewController *)self navigationController];
    if (navigationController3)
    {
      navigationController4 = [(UIViewController *)self navigationController];
      [navigationController4 preferredContentSize];
      width = v20;
    }

    if (validateSizeCopy)
    {
      width = validateSizeCopy[2](validateSizeCopy, width, height);
      height = v21;
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10036A5C0;
    v24[3] = &unk_10183C8A8;
    v24[4] = self;
    *&v24[5] = width;
    *&v24[6] = height;
    v22 = objc_retainBlock(v24);
    [UIView performWithoutAnimation:v22];
  }

  return v17;
}

@end