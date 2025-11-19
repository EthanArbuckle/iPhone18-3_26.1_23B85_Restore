@interface AVTTransparentNavigationController
- (AVTTransparentNavigationController)initWithRootViewController:(id)a3;
@end

@implementation AVTTransparentNavigationController

- (AVTTransparentNavigationController)initWithRootViewController:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVTTransparentNavigationController;
  v3 = [(AVTTransparentNavigationController *)&v10 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(AVTTransparentNavigationController *)v3 navigationBar];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [v5 setBackgroundImage:v6 forBarMetrics:0];

    v7 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    v8 = [(AVTTransparentNavigationController *)v4 navigationBar];
    [v8 setShadowImage:v7];

    [(AVTTransparentNavigationController *)v4 setModalPresentationStyle:3];
  }

  return v4;
}

@end