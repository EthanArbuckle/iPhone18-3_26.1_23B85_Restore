@interface UIViewController
- (BOOL)crl_shouldUpdateNavigationContentSizeWithPreferredContentSize;
- (BOOL)crl_updateContentSizePreservingPreviousWidthWithSize:(CGSize)a3 validateSize:(id)a4;
- (CRLiOSWindowWrapper)crl_windowWrapper;
- (void)crl_adjustScrollIndicatorInsetsForTableView:(id)a3;
@end

@implementation UIViewController

- (CRLiOSWindowWrapper)crl_windowWrapper
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 crl_windowWrapper];

  return v3;
}

- (void)crl_adjustScrollIndicatorInsetsForTableView:(id)a3
{
  v24 = a3;
  if (+[UIDevice crl_phoneUI])
  {
    [v24 horizontalScrollIndicatorInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [v24 verticalScrollIndicatorInsets];
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
      v21 = v24;
    }

    else
    {
      v16 = [v24 superview];
      [v16 safeAreaInsets];
      v18 = v17;

      +[UIScreen crl_screenZoomScale];
      v20 = floor(v18 / v19);
      +[UIScreen crl_screenZoomScale];
      v21 = v24;
      v23 = floor(v18 / v22);
    }

    [v21 setHorizontalScrollIndicatorInsets:{v4, v6, v20, v8}];
    [v24 setVerticalScrollIndicatorInsets:{v10, v12, v23, v14}];
  }
}

- (BOOL)crl_shouldUpdateNavigationContentSizeWithPreferredContentSize
{
  v3 = [(UIViewController *)self navigationController];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(UIViewController *)self parentViewController];
    v6 = sub_100014370(v4, v5);

    v7 = [v3 topViewController];
    if (v6)
    {
      v8 = v7 == self;
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

- (BOOL)crl_updateContentSizePreservingPreviousWidthWithSize:(CGSize)a3 validateSize:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(UIViewController *)self preferredContentSize];
  v10 = height != CGSizeZero.height || width != CGSizeZero.width;
  v11 = height != v9 || width != v8;
  v12 = [(UIViewController *)self navigationController];
  if (v12)
  {
    v13 = [(UIViewController *)self navigationController];
    [v13 preferredContentSize];
    v16 = height != v15 || width != v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v10 && (v11 || v16);
  if (v17 == 1)
  {
    v18 = [(UIViewController *)self navigationController];
    if (v18)
    {
      v19 = [(UIViewController *)self navigationController];
      [v19 preferredContentSize];
      width = v20;
    }

    if (v7)
    {
      width = v7[2](v7, width, height);
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