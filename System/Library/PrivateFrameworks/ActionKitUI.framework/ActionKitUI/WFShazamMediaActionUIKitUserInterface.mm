@interface WFShazamMediaActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithError:(id)a3;
- (void)showWithCompletionHandler:(id)a3;
@end

@implementation WFShazamMediaActionUIKitUserInterface

- (void)finishWithError:(id)a3
{
  v6 = a3;
  v4 = [(WFShazamMediaActionUIKitUserInterface *)self completionHandler];

  if (v4)
  {
    v5 = [(WFShazamMediaActionUIKitUserInterface *)self completionHandler];
    (v5)[2](v5, v6);
  }

  [(WFShazamMediaActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFShazamMediaActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFShazamMediaActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFShazamMediaActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithCompletionHandler:(id)a3
{
  [(WFShazamMediaActionUIKitUserInterface *)self setCompletionHandler:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WFShazamMediaActionUIKitUserInterface_showWithCompletionHandler___block_invoke;
  block[3] = &unk_278C37538;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__WFShazamMediaActionUIKitUserInterface_showWithCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(WFShazamMediaActionView);
  [(WFShazamMediaActionView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [(WFShazamMediaActionView *)v5 heightAnchor];
  v3 = [v2 constraintEqualToConstant:260.0];
  [v3 setActive:1];

  v4 = objc_opt_new();
  [v4 setView:v5];
  [*(a1 + 32) presentContent:v4];
}

@end