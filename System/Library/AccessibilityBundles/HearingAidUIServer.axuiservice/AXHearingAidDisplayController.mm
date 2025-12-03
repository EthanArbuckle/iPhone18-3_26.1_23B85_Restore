@interface AXHearingAidDisplayController
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissWithCompletion:(id)completion;
- (void)loadView;
@end

@implementation AXHearingAidDisplayController

- (void)dealloc
{
  [(AXHearingAidDisplayController *)self setModuleUIController:0];
  v3.receiver = self;
  v3.super_class = AXHearingAidDisplayController;
  [(AXHearingAidDisplayController *)&v3 dealloc];
}

- (void)dismissWithCompletion:(id)completion
{
  v4 = MEMORY[0x29EDC50D0];
  completionCopy = completion;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance unregisterUpdateListener:self];

  [(AXHearingAidDisplayController *)self dismissViewControllerWithTransition:17 completion:completionCopy];
  moduleUIController = [(AXHearingAidDisplayController *)self moduleUIController];
  view = [moduleUIController view];
  [view removeFromSuperview];

  moduleUIController2 = [(AXHearingAidDisplayController *)self moduleUIController];
  [moduleUIController2 removeFromParentViewController];

  [(AXHearingAidDisplayController *)self setModuleUIController:0];
  view2 = [(AXHearingAidDisplayController *)self view];
  window = [view2 window];
  [window setHidden:1];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = AXHearingAidDisplayController;
  [(AXHearingAidDisplayController *)&v4 loadView];
  v3 = [objc_alloc(MEMORY[0x29EDC50A8]) initWithDelegate:self];
  [v3 setDelegate:self];
  [(AXHearingAidDisplayController *)self setModuleUIController:v3];
}

- (void)didMoveToParentViewController:(id)controller
{
  v12.receiver = self;
  v12.super_class = AXHearingAidDisplayController;
  [(AXHearingAidDisplayController *)&v12 didMoveToParentViewController:controller];
  parentViewController = [(AXHearingAidDisplayController *)self parentViewController];
  if (parentViewController)
  {
    v5 = parentViewController;
    presentedViewController = [(AXHearingAidDisplayController *)self presentedViewController];

    if (!presentedViewController)
    {
      moduleUIController = [(AXHearingAidDisplayController *)self moduleUIController];

      if (!moduleUIController)
      {
        v8 = [objc_alloc(MEMORY[0x29EDC50A8]) initWithDelegate:self];
        [v8 setDelegate:self];
        [(AXHearingAidDisplayController *)self setModuleUIController:v8];
      }

      moduleUIController2 = [(AXHearingAidDisplayController *)self moduleUIController];
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __63__AXHearingAidDisplayController_didMoveToParentViewController___block_invoke;
      v11[3] = &unk_29F2C4F40;
      v11[4] = self;
      [(AXHearingAidDisplayController *)self presentViewController:moduleUIController2 animated:1 completion:v11];
    }
  }

  moduleUIController3 = [(AXHearingAidDisplayController *)self moduleUIController];
  [moduleUIController3 setDelegate:self];
}

void __63__AXHearingAidDisplayController_didMoveToParentViewController___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v3 = [*(a1 + 32) moduleUIController];
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

@end