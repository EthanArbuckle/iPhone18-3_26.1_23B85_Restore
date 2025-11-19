@interface BKViewController
- (BKViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (UIViewController)currentOverlayViewController;
- (id)barButtonItemForButton:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)dealloc;
- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4;
- (void)hideOverlayViewControllerWithCompletion:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)releaseViews;
- (void)setCurrentOverlayViewController:(id)a3;
- (void)showOverlayViewController:(id)a3 fromItem:(id)a4 popoverOnPhone:(BOOL)a5 passthroughViews:(id)a6 popoverBackgroundColor:(id)a7;
@end

@implementation BKViewController

- (BKViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = AEBundle();
  v10.receiver = self;
  v10.super_class = BKViewController;
  v7 = [(BKViewController *)&v10 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    -[BKViewController setLayoutDirection:](v7, "setLayoutDirection:", [v8 userInterfaceLayoutDirection]);
  }

  return v7;
}

- (void)dealloc
{
  [(BKViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKViewController;
  [(BKViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  topLeftCorner = self->_topLeftCorner;
  self->_topLeftCorner = 0;

  topRightCorner = self->_topRightCorner;
  self->_topRightCorner = 0;

  [(BKViewController *)self dismissCurrentPopover];
  [(BKViewController *)self cleanupPopovers];
  v5.receiver = self;
  v5.super_class = BKViewController;
  [(BKViewController *)&v5 releaseViews];
}

- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKViewController *)self bc_contextualPresentedViewController];
  v8 = [v7 bc_deepestPresentedViewController];

  if (!v8)
  {
    [(BKViewController *)self cleanupPopovers];
    v10 = objc_retainBlock(v6);
    v9 = v10;
    if (v10)
    {
      (v10[2].isa)(v10);
    }

    goto LABEL_6;
  }

  if (([v8 isBeingPresented] & 1) != 0 || objc_msgSend(v8, "isBeingDismissed"))
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_137F74(v8, v9);
    }

LABEL_6:

    goto LABEL_13;
  }

  v11 = BCIMLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "dismissCurrentPopoverWithCompletion: dismissing top view controller: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_72E5C;
  v12[3] = &unk_1E4838;
  objc_copyWeak(&v14, buf);
  v13 = v6;
  v15 = v4;
  [v8 dismissViewControllerAnimated:v4 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
LABEL_13:
}

- (void)setCurrentOverlayViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentOverlayViewController);
  v6 = [WeakRetained isEqual:v4];

  objc_storeWeak(&self->_currentOverlayViewController, v4);
  if ((v6 & 1) == 0)
  {

    [(BKViewController *)self didChangeCurrentOverlayViewController];
  }
}

- (id)barButtonItemForButton:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (void)showOverlayViewController:(id)a3 fromItem:(id)a4 popoverOnPhone:(BOOL)a5 passthroughViews:(id)a6 popoverBackgroundColor:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_73184;
  v29[3] = &unk_1E4860;
  v29[4] = self;
  v34 = a5;
  v16 = v12;
  v30 = v16;
  v31 = v15;
  v32 = v14;
  v33 = v13;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_733CC;
  v26 = &unk_1E3438;
  v27 = v16;
  v28 = objc_retainBlock(v29);
  v20 = v28;
  v21 = v16;
  v22 = objc_retainBlock(&v23);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v22, v23, v24, v25, v26];
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v43 = a3;
  v8 = [v43 bc_realSourceBarButtonItem];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [(BKViewController *)self view];
  v10 = [v8 _viewForPresenting];
  [v8 _rectForPresenting];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 bounds];
  [v10 convertRect:v9 toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [v10 convertRect:v9 toView:{v12, v14, v16, v18}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [v43 bc_fakeSourceView];
  if (!v35)
  {
    v36 = [[UIView alloc] initWithFrame:{v20, v22, v24, v26}];
    v42 = +[UIColor clearColor];
    [v36 setBackgroundColor:v42];

    [v36 setUserInteractionEnabled:0];
    [v9 addSubview:v36];
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v36 = v35;
  [v35 setFrame:{v20, v22, v24, v26}];
  if (a5)
  {
LABEL_4:
    v37 = v36;
    *a5 = v36;
  }

LABEL_5:
  if (a4)
  {
    [v9 convertRect:v36 toView:{v28, v30, v32, v34}];
    a4->origin.x = v38;
    a4->origin.y = v39;
    a4->size.width = v40;
    a4->size.height = v41;
  }

LABEL_8:
}

- (void)hideOverlayViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKViewController *)self bc_contextualPresentedViewController];
  [v5 dismissViewControllerAnimated:1 completion:v4];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v5 = a4;
  if ([(BKViewController *)self forcePopoverInsteadOfSheet])
  {
    v6 = -1;
  }

  else if (v5 || ([(BKViewController *)self traitCollection], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [v5 horizontalSizeClass];
    if ([v5 verticalSizeClass] == &dword_0 + 1 || v7 == &dword_0 + 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 presentedViewController];

  v5 = BUDynamicCast();

  [v5 ae_willDismissPopoverContainingThisViewController];
  return 1;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = a3;
  objc_opt_class();
  v4 = [v9 presentedViewController];
  v5 = BUDynamicCast();

  [v5 ae_didDismissPopoverContainingThisViewController];
  v6 = [v9 presentedViewController];
  v7 = [(BKViewController *)self currentOverlayViewController];

  if (v6 == v7)
  {
    [(BKViewController *)self setCurrentOverlayViewController:0];
  }

  v8 = [v9 bc_fakeSourceView];
  [v8 removeFromSuperview];

  [v9 setBc_fakeSourceView:0];
  [v9 setBc_realSourceBarButtonItem:0];
}

- (UIViewController)currentOverlayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentOverlayViewController);

  return WeakRetained;
}

@end