@interface IMPopoverAction
- (void)dealloc;
- (void)dismissPopover;
- (void)showViewController:(id)controller inPopoverFromButton:(id)button;
- (void)updatePopover;
@end

@implementation IMPopoverAction

- (void)showViewController:(id)controller inPopoverFromButton:(id)button
{
  controllerCopy = controller;
  [(IMPopoverPresentationAction *)self setPresentingButton:button];
  controller = [(IMAction *)self controller];
  delegate = [controller delegate];

  [(UIViewController *)controllerCopy setModalPresentationStyle:7];
  [delegate presentViewController:controllerCopy animated:1 completion:0];
  viewControllerPresentedInPopover = self->_viewControllerPresentedInPopover;
  self->_viewControllerPresentedInPopover = controllerCopy;
  v9 = controllerCopy;

  popoverPresentationController = [(UIViewController *)v9 popoverPresentationController];

  [popoverPresentationController setPermittedArrowDirections:3];
  [popoverPresentationController setDelegate:self];
}

- (void)dealloc
{
  [(IMPopoverAction *)self dismissPopover];
  v3.receiver = self;
  v3.super_class = IMPopoverAction;
  [(IMPopoverAction *)&v3 dealloc];
}

- (void)dismissPopover
{
  viewControllerPresentedInPopover = self->_viewControllerPresentedInPopover;
  if (viewControllerPresentedInPopover)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A70C;
    block[3] = &unk_1004D8358;
    v7 = viewControllerPresentedInPopover;
    v4 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v5 = self->_viewControllerPresentedInPopover;
    self->_viewControllerPresentedInPopover = 0;
  }
}

- (void)updatePopover
{
  v3 = self->_viewControllerPresentedInPopover;
  presentingViewController = [(UIViewController *)v3 presentingViewController];
  if (presentingViewController)
  {
    v5 = presentingViewController;
    presentingViewController2 = [(UIViewController *)v3 presentingViewController];
    traitCollection = [presentingViewController2 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass != 1)
    {
      objc_initWeak(&location, self);
      controller = [(IMAction *)self controller];
      delegate = [controller delegate];

      presentingViewController3 = [(UIViewController *)v3 presentingViewController];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10009A920;
      v13[3] = &unk_1004DA270;
      v12 = delegate;
      v14 = v12;
      v15 = v3;
      objc_copyWeak(&v16, &location);
      [presentingViewController3 dismissViewControllerAnimated:0 completion:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

@end