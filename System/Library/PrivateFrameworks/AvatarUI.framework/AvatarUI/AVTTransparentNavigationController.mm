@interface AVTTransparentNavigationController
- (AVTTransparentNavigationController)initWithRootViewController:(id)controller;
@end

@implementation AVTTransparentNavigationController

- (AVTTransparentNavigationController)initWithRootViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = AVTTransparentNavigationController;
  v3 = [(AVTTransparentNavigationController *)&v10 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    navigationBar = [(AVTTransparentNavigationController *)v3 navigationBar];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [navigationBar setBackgroundImage:v6 forBarMetrics:0];

    v7 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    navigationBar2 = [(AVTTransparentNavigationController *)v4 navigationBar];
    [navigationBar2 setShadowImage:v7];

    [(AVTTransparentNavigationController *)v4 setModalPresentationStyle:3];
  }

  return v4;
}

@end