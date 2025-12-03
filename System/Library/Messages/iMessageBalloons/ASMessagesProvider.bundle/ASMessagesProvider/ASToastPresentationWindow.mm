@interface ASToastPresentationWindow
- (ASToastPresentationWindow)init;
- (id)_presentationViewController;
- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation ASToastPresentationWindow

- (ASToastPresentationWindow)init
{
  v7.receiver = self;
  v7.super_class = ASToastPresentationWindow;
  v2 = [(ASToastPresentationWindow *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(ASToastPresentationWindow *)v2 setOpaque:0];
    v4 = +[UIColor clearColor];
    [(ASToastPresentationWindow *)v3 setBackgroundColor:v4];

    v5 = +[UIScreen mainScreen];
    [(ASToastPresentationWindow *)v3 setScreen:v5];

    [(ASToastPresentationWindow *)v3 setWindowLevel:UIWindowLevelAlert];
    [(ASToastPresentationWindow *)v3 setHidden:1];
  }

  return v3;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(ASToastPresentationWindow *)self _presentationViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_6B98;
  v12[3] = &unk_87D650;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  _presentationViewController = [(ASToastPresentationWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];
  if (presentedViewController)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, presentedViewController == controllerCopy);
    }
  }

  else
  {
    [(ASToastPresentationWindow *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)_presentationViewController
{
  rootViewController = [(ASToastPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(UIApplicationRotationFollowingController);
    [v4 setSizesWindowToScene:1];
    [(ASToastPresentationWindow *)self setRootViewController:v4];
  }

  return [(ASToastPresentationWindow *)self rootViewController];
}

@end