@interface MCAlertController
- (void)dealloc;
- (void)dismiss;
- (void)show;
@end

@implementation MCAlertController

- (void)show
{
  v3 = objc_alloc(MEMORY[0x277D75DA0]);
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  -[MCAlertController setAlertWindow:](self, "setAlertWindow:", [v3 initWithFrame:?]);
  [(UIWindow *)[(MCAlertController *)self alertWindow] setRootViewController:objc_alloc_init(MEMORY[0x277D75D28])];
  [(UIWindow *)[(MCAlertController *)self alertWindow] setWindowLevel:*MEMORY[0x277D772A8] + 1.0];
  [(UIWindow *)[(MCAlertController *)self alertWindow] makeKeyAndVisible];
  rootViewController = [(UIWindow *)[(MCAlertController *)self alertWindow] rootViewController];

  [(UIViewController *)rootViewController presentViewController:self animated:1 completion:0];
}

- (void)dismiss
{
  rootViewController = [(UIWindow *)[(MCAlertController *)self alertWindow] rootViewController];

  [(UIViewController *)rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCAlertController;
  [(MCAlertController *)&v3 dealloc];
}

@end