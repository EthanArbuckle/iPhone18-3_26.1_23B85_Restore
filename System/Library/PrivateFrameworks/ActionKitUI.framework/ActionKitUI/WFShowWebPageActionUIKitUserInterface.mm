@interface WFShowWebPageActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)safariViewControllerWillOpenInBrowser:(id)browser;
- (void)showRichText:(id)text completion:(id)completion;
- (void)showURL:(id)l readerView:(BOOL)view completion:(id)completion;
- (void)webViewControllerDidFinish:(id)finish;
@end

@implementation WFShowWebPageActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFShowWebPageActionUIKitUserInterface *)self finishWithError:userCancelledError];
}

- (void)webViewControllerDidFinish:(id)finish
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__WFShowWebPageActionUIKitUserInterface_webViewControllerDidFinish___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [finish dismissViewControllerAnimated:1 completion:v3];
}

- (void)safariViewControllerWillOpenInBrowser:(id)browser
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  lastDismissed = v4;

  [(WFShowWebPageActionUIKitUserInterface *)self finishWithError:0];
}

- (void)safariViewControllerDidFinish:(id)finish
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  lastDismissed = v4;

  [(WFShowWebPageActionUIKitUserInterface *)self finishWithError:0];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFShowWebPageActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFShowWebPageActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFShowWebPageActionUIKitUserInterface *)self setCompletionHandler:0];
  [(WFShowWebPageActionUIKitUserInterface *)self setRichTextFile:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFShowWebPageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFShowWebPageActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFShowWebPageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showRichText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v9 = completionCopy;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"file"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFShowWebPageActionUIKitUserInterface *)self setRichTextFile:textCopy];
  [(WFShowWebPageActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WFShowWebPageActionUIKitUserInterface_showRichText_completion___block_invoke;
  block[3] = &unk_278C375A0;
  v14 = textCopy;
  selfCopy = self;
  v10 = textCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__WFShowWebPageActionUIKitUserInterface_showRichText_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFC598] webResourceWithFile:*(a1 + 32)];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v3 = getWKWebViewClass_softClass;
  v23 = getWKWebViewClass_softClass;
  if (!getWKWebViewClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getWKWebViewClass_block_invoke;
    v18 = &unk_278C37610;
    v19 = &v20;
    __getWKWebViewClass_block_invoke(&v15);
    v3 = v21[3];
  }

  v4 = v3;
  _Block_object_dispose(&v20, 8);
  v5 = [v3 alloc];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v6 = getWKWebViewConfigurationClass_softClass;
  v23 = getWKWebViewConfigurationClass_softClass;
  if (!getWKWebViewConfigurationClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getWKWebViewConfigurationClass_block_invoke;
    v18 = &unk_278C37610;
    v19 = &v20;
    __getWKWebViewConfigurationClass_block_invoke(&v15);
    v6 = v21[3];
  }

  v7 = v6;
  _Block_object_dispose(&v20, 8);
  v8 = objc_opt_new();
  v9 = [v5 initWithFrame:v8 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  v10 = [v2 loadInWKWebView:v9];
  v11 = [[WFWebViewController alloc] initWithWebView:v9];
  [(WFWebViewController *)v11 setDelegate:*(a1 + 40)];
  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
  v13 = *(a1 + 40);
  v14 = [v12 presentationController];
  [v14 setDelegate:v13];

  [*(a1 + 40) presentContent:v12];
}

- (void)showURL:(id)l readerView:(BOOL)view completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v11 = completionCopy;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"URL"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFShowWebPageActionUIKitUserInterface *)self setCompletionHandler:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFShowWebPageActionUIKitUserInterface_showURL_readerView_completion___block_invoke;
  block[3] = &unk_278C37408;
  viewCopy = view;
  v16 = lCopy;
  selfCopy = self;
  v12 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__WFShowWebPageActionUIKitUserInterface_showURL_readerView_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v2 - *&lastDismissed >= 0.55 || *&lastDismissed == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 550000000;
  }

  v5 = dispatch_time(0, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFShowWebPageActionUIKitUserInterface_showURL_readerView_completion___block_invoke_2;
  block[3] = &unk_278C37408;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __71__WFShowWebPageActionUIKitUserInterface_showURL_readerView_completion___block_invoke_2(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getSFSafariViewControllerConfigurationClass_softClass;
  v18 = getSFSafariViewControllerConfigurationClass_softClass;
  if (!getSFSafariViewControllerConfigurationClass_softClass)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getSFSafariViewControllerConfigurationClass_block_invoke;
    v13 = &unk_278C37610;
    v14 = &v15;
    __getSFSafariViewControllerConfigurationClass_block_invoke(&v10);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = objc_opt_new();
  [v4 setEntersReaderIfAvailable:*(a1 + 48)];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getSFSafariViewControllerClass_softClass;
  v18 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getSFSafariViewControllerClass_block_invoke;
    v13 = &unk_278C37610;
    v14 = &v15;
    __getSFSafariViewControllerClass_block_invoke(&v10);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [[v5 alloc] initWithURL:*(a1 + 32) configuration:v4];
  [v7 setModalPresentationStyle:1];
  [v7 setDelegate:*(a1 + 40)];
  v8 = *(a1 + 40);
  v9 = [v7 presentationController];
  [v9 setDelegate:v8];

  [*(a1 + 40) presentContent:v7];
}

@end