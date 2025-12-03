@interface AVTUIControllerPresentation
+ (AVTUIControllerPresentation)presentationWithWrappingForController:(id)controller;
- (AVTUIControllerPresentation)initWithController:(id)controller;
- (AVTUIControllerPresentationDelegate)delegate;
- (MSMessagesAppViewController)modalMessagesController;
- (void)viewWillBeObstructed;
@end

@implementation AVTUIControllerPresentation

+ (AVTUIControllerPresentation)presentationWithWrappingForController:(id)controller
{
  controllerCopy = controller;
  v4 = [[AVTTransparentNavigationController alloc] initWithRootViewController:controllerCopy];
  v5 = objc_alloc_init(AVTAvatarContainerViewController);
  view = [(AVTAvatarContainerViewController *)v5 view];
  view2 = [(AVTTransparentNavigationController *)v4 view];
  [view addSubview:view2];

  [(AVTAvatarContainerViewController *)v5 addChildViewController:v4];
  [(AVTTransparentNavigationController *)v4 didMoveToParentViewController:v5];
  v8 = [[AVTUIControllerPresentation alloc] initWithController:v5];
  [(AVTUIControllerPresentation *)v8 setDelegate:controllerCopy];

  return v8;
}

- (AVTUIControllerPresentation)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AVTUIControllerPresentation;
  v6 = [(AVTUIControllerPresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)viewWillBeObstructed
{
  delegate = [(AVTUIControllerPresentation *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVTUIControllerPresentation *)self delegate];
    [delegate2 controllerPresentationWillObstructView:self];
  }
}

- (MSMessagesAppViewController)modalMessagesController
{
  WeakRetained = objc_loadWeakRetained(&self->_modalMessagesController);

  return WeakRetained;
}

- (AVTUIControllerPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end