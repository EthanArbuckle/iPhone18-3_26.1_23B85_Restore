@interface WFDictateTextActionUIKitUserInterface
- (void)actionDidReceiveTranscription:(id)a3;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)dismissWithCompletionHandler:(id)a3;
- (void)finishWithError:(id)a3;
- (void)showWithCompletionHandler:(id)a3;
@end

@implementation WFDictateTextActionUIKitUserInterface

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFDictateTextActionUIKitUserInterface_finishWithError___block_invoke;
  v6[3] = &unk_278C375A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__WFDictateTextActionUIKitUserInterface_finishWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__WFDictateTextActionUIKitUserInterface_finishWithError___block_invoke_2;
  v2[3] = &unk_278C36350;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 dismissWithCompletionHandler:v2];
}

uint64_t __57__WFDictateTextActionUIKitUserInterface_finishWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, *(a1 + 40));
  }

  v4 = *(a1 + 32);

  return [v4 setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v6 = a3;
  v5 = [v4 userCancelledError];
  [(WFDictateTextActionUIKitUserInterface *)self finishWithError:v5];

  v6[2]();
}

- (void)actionDidReceiveTranscription:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WFDictateTextActionUIKitUserInterface_actionDidReceiveTranscription___block_invoke;
  v6[3] = &unk_278C375A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __71__WFDictateTextActionUIKitUserInterface_actionDidReceiveTranscription___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionView];
  [v2 updateWithTranscription:*(a1 + 40)];
}

- (void)dismissWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WFDictateTextActionUIKitUserInterface_dismissWithCompletionHandler___block_invoke;
  v6[3] = &unk_278C375C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __70__WFDictateTextActionUIKitUserInterface_dismissWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WFDictateTextActionUIKitUserInterface_dismissWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_278C37170;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2.receiver = v1;
  v2.super_class = WFDictateTextActionUIKitUserInterface;
  objc_msgSendSuper2(&v2, sel_cancelPresentationWithCompletionHandler_, v3);
}

- (void)showWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__WFDictateTextActionUIKitUserInterface_showWithCompletionHandler___block_invoke;
  v6[3] = &unk_278C375C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __67__WFDictateTextActionUIKitUserInterface_showWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompletionHandler:*(a1 + 40)];
  v2 = [WFDictateTextActionView alloc];
  v6 = [(WFDictateTextActionView *)v2 initWithFrame:1 padded:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(WFDictateTextActionView *)v6 setDelegate:*(a1 + 32)];
  v3 = [(WFDictateTextActionView *)v6 heightAnchor];
  v4 = [v3 constraintEqualToConstant:220.0];
  [v4 setActive:1];

  v5 = objc_alloc_init(WFDictateTextActionSecureViewController);
  [(WFDictateTextActionSecureViewController *)v5 setView:v6];
  [*(a1 + 32) presentContent:v5];
  [*(a1 + 32) setActionView:v6];
}

@end