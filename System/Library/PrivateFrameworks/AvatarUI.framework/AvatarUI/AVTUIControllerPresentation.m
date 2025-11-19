@interface AVTUIControllerPresentation
+ (AVTUIControllerPresentation)presentationWithWrappingForController:(id)a3;
- (AVTUIControllerPresentation)initWithController:(id)a3;
- (AVTUIControllerPresentationDelegate)delegate;
- (MSMessagesAppViewController)modalMessagesController;
- (void)viewWillBeObstructed;
@end

@implementation AVTUIControllerPresentation

+ (AVTUIControllerPresentation)presentationWithWrappingForController:(id)a3
{
  v3 = a3;
  v4 = [[AVTTransparentNavigationController alloc] initWithRootViewController:v3];
  v5 = objc_alloc_init(AVTAvatarContainerViewController);
  v6 = [(AVTAvatarContainerViewController *)v5 view];
  v7 = [(AVTTransparentNavigationController *)v4 view];
  [v6 addSubview:v7];

  [(AVTAvatarContainerViewController *)v5 addChildViewController:v4];
  [(AVTTransparentNavigationController *)v4 didMoveToParentViewController:v5];
  v8 = [[AVTUIControllerPresentation alloc] initWithController:v5];
  [(AVTUIControllerPresentation *)v8 setDelegate:v3];

  return v8;
}

- (AVTUIControllerPresentation)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTUIControllerPresentation;
  v6 = [(AVTUIControllerPresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

- (void)viewWillBeObstructed
{
  v3 = [(AVTUIControllerPresentation *)self delegate];

  if (v3)
  {
    v4 = [(AVTUIControllerPresentation *)self delegate];
    [v4 controllerPresentationWillObstructView:self];
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