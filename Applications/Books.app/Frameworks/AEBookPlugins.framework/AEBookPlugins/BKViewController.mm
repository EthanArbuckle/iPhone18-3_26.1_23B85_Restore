@interface BKViewController
- (BKViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (UIViewController)currentOverlayViewController;
- (id)barButtonItemForButton:(id)button;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)dealloc;
- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated;
- (void)hideOverlayViewControllerWithCompletion:(id)completion;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)releaseViews;
- (void)setCurrentOverlayViewController:(id)controller;
- (void)showOverlayViewController:(id)controller fromItem:(id)item popoverOnPhone:(BOOL)phone passthroughViews:(id)views popoverBackgroundColor:(id)color;
@end

@implementation BKViewController

- (BKViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  v6 = AEBundle();
  v10.receiver = self;
  v10.super_class = BKViewController;
  v7 = [(BKViewController *)&v10 initWithNibName:nameCopy bundle:v6];

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

- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated
{
  animatedCopy = animated;
  completionCopy = completion;
  bc_contextualPresentedViewController = [(BKViewController *)self bc_contextualPresentedViewController];
  bc_deepestPresentedViewController = [bc_contextualPresentedViewController bc_deepestPresentedViewController];

  if (!bc_deepestPresentedViewController)
  {
    [(BKViewController *)self cleanupPopovers];
    v10 = objc_retainBlock(completionCopy);
    v9 = v10;
    if (v10)
    {
      (v10[2].isa)(v10);
    }

    goto LABEL_6;
  }

  if (([bc_deepestPresentedViewController isBeingPresented] & 1) != 0 || objc_msgSend(bc_deepestPresentedViewController, "isBeingDismissed"))
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_137F74(bc_deepestPresentedViewController, v9);
    }

LABEL_6:

    goto LABEL_13;
  }

  v11 = BCIMLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = bc_deepestPresentedViewController;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "dismissCurrentPopoverWithCompletion: dismissing top view controller: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_72E5C;
  v12[3] = &unk_1E4838;
  objc_copyWeak(&v14, buf);
  v13 = completionCopy;
  v15 = animatedCopy;
  [bc_deepestPresentedViewController dismissViewControllerAnimated:animatedCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
LABEL_13:
}

- (void)setCurrentOverlayViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_currentOverlayViewController);
  v6 = [WeakRetained isEqual:controllerCopy];

  objc_storeWeak(&self->_currentOverlayViewController, controllerCopy);
  if ((v6 & 1) == 0)
  {

    [(BKViewController *)self didChangeCurrentOverlayViewController];
  }
}

- (id)barButtonItemForButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (void)showOverlayViewController:(id)controller fromItem:(id)item popoverOnPhone:(BOOL)phone passthroughViews:(id)views popoverBackgroundColor:(id)color
{
  controllerCopy = controller;
  itemCopy = item;
  viewsCopy = views;
  colorCopy = color;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_73184;
  v29[3] = &unk_1E4860;
  v29[4] = self;
  phoneCopy = phone;
  v16 = controllerCopy;
  v30 = v16;
  v31 = colorCopy;
  v32 = viewsCopy;
  v33 = itemCopy;
  v17 = itemCopy;
  v18 = viewsCopy;
  v19 = colorCopy;
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

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  bc_realSourceBarButtonItem = [controllerCopy bc_realSourceBarButtonItem];
  if (!bc_realSourceBarButtonItem)
  {
    goto LABEL_8;
  }

  view = [(BKViewController *)self view];
  _viewForPresenting = [bc_realSourceBarButtonItem _viewForPresenting];
  [bc_realSourceBarButtonItem _rectForPresenting];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [_viewForPresenting bounds];
  [_viewForPresenting convertRect:view toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [_viewForPresenting convertRect:view toView:{v12, v14, v16, v18}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  bc_fakeSourceView = [controllerCopy bc_fakeSourceView];
  if (!bc_fakeSourceView)
  {
    v36 = [[UIView alloc] initWithFrame:{v20, v22, v24, v26}];
    v42 = +[UIColor clearColor];
    [v36 setBackgroundColor:v42];

    [v36 setUserInteractionEnabled:0];
    [view addSubview:v36];
    if (!view)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v36 = bc_fakeSourceView;
  [bc_fakeSourceView setFrame:{v20, v22, v24, v26}];
  if (view)
  {
LABEL_4:
    v37 = v36;
    *view = v36;
  }

LABEL_5:
  if (rect)
  {
    [view convertRect:v36 toView:{v28, v30, v32, v34}];
    rect->origin.x = v38;
    rect->origin.y = v39;
    rect->size.width = v40;
    rect->size.height = v41;
  }

LABEL_8:
}

- (void)hideOverlayViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  bc_contextualPresentedViewController = [(BKViewController *)self bc_contextualPresentedViewController];
  [bc_contextualPresentedViewController dismissViewControllerAnimated:1 completion:completionCopy];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(BKViewController *)self forcePopoverInsteadOfSheet])
  {
    v6 = -1;
  }

  else if (collectionCopy || ([(BKViewController *)self traitCollection], (collectionCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];
    if ([collectionCopy verticalSizeClass] == &dword_0 + 1 || horizontalSizeClass == &dword_0 + 1)
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

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  objc_opt_class();
  presentedViewController = [dismissCopy presentedViewController];

  v5 = BUDynamicCast();

  [v5 ae_willDismissPopoverContainingThisViewController];
  return 1;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  objc_opt_class();
  presentedViewController = [dismissCopy presentedViewController];
  v5 = BUDynamicCast();

  [v5 ae_didDismissPopoverContainingThisViewController];
  presentedViewController2 = [dismissCopy presentedViewController];
  currentOverlayViewController = [(BKViewController *)self currentOverlayViewController];

  if (presentedViewController2 == currentOverlayViewController)
  {
    [(BKViewController *)self setCurrentOverlayViewController:0];
  }

  bc_fakeSourceView = [dismissCopy bc_fakeSourceView];
  [bc_fakeSourceView removeFromSuperview];

  [dismissCopy setBc_fakeSourceView:0];
  [dismissCopy setBc_realSourceBarButtonItem:0];
}

- (UIViewController)currentOverlayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentOverlayViewController);

  return WeakRetained;
}

@end