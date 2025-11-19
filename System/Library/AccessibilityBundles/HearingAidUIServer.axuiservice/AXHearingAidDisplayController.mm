@interface AXHearingAidDisplayController
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissWithCompletion:(id)a3;
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

- (void)dismissWithCompletion:(id)a3
{
  v4 = MEMORY[0x29EDC50D0];
  v5 = a3;
  v6 = [v4 sharedInstance];
  [v6 unregisterUpdateListener:self];

  [(AXHearingAidDisplayController *)self dismissViewControllerWithTransition:17 completion:v5];
  v7 = [(AXHearingAidDisplayController *)self moduleUIController];
  v8 = [v7 view];
  [v8 removeFromSuperview];

  v9 = [(AXHearingAidDisplayController *)self moduleUIController];
  [v9 removeFromParentViewController];

  [(AXHearingAidDisplayController *)self setModuleUIController:0];
  v11 = [(AXHearingAidDisplayController *)self view];
  v10 = [v11 window];
  [v10 setHidden:1];
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

- (void)didMoveToParentViewController:(id)a3
{
  v12.receiver = self;
  v12.super_class = AXHearingAidDisplayController;
  [(AXHearingAidDisplayController *)&v12 didMoveToParentViewController:a3];
  v4 = [(AXHearingAidDisplayController *)self parentViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(AXHearingAidDisplayController *)self presentedViewController];

    if (!v6)
    {
      v7 = [(AXHearingAidDisplayController *)self moduleUIController];

      if (!v7)
      {
        v8 = [objc_alloc(MEMORY[0x29EDC50A8]) initWithDelegate:self];
        [v8 setDelegate:self];
        [(AXHearingAidDisplayController *)self setModuleUIController:v8];
      }

      v9 = [(AXHearingAidDisplayController *)self moduleUIController];
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __63__AXHearingAidDisplayController_didMoveToParentViewController___block_invoke;
      v11[3] = &unk_29F2C4F40;
      v11[4] = self;
      [(AXHearingAidDisplayController *)self presentViewController:v9 animated:1 completion:v11];
    }
  }

  v10 = [(AXHearingAidDisplayController *)self moduleUIController];
  [v10 setDelegate:self];
}

void __63__AXHearingAidDisplayController_didMoveToParentViewController___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v3 = [*(a1 + 32) moduleUIController];
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

@end