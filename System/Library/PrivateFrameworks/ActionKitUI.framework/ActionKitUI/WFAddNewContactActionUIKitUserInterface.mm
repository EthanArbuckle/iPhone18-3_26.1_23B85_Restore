@interface WFAddNewContactActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)finishWithContactIdentifier:(id)identifier error:(id)error;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showWithContactParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation WFAddNewContactActionUIKitUserInterface

- (void)presentationControllerDidDismiss:(id)dismiss
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFAddNewContactActionUIKitUserInterface *)self finishWithContactIdentifier:0 error:userCancelledError];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__WFAddNewContactActionUIKitUserInterface_contactViewController_didCompleteWithContact___block_invoke;
  block[3] = &unk_278C37058;
  v11 = controllerCopy;
  v12 = contactCopy;
  selfCopy = self;
  v8 = contactCopy;
  v9 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __88__WFAddNewContactActionUIKitUserInterface_contactViewController_didCompleteWithContact___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__WFAddNewContactActionUIKitUserInterface_contactViewController_didCompleteWithContact___block_invoke_2;
  v5[3] = &unk_278C37058;
  v6 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v5];
}

void __88__WFAddNewContactActionUIKitUserInterface_contactViewController_didCompleteWithContact___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = [v2 identifier];
    v5 = v3;
    v7 = v4;
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] userCancelledError];
    v5 = v3;
    v4 = 0;
    v7 = v6;
  }

  [v5 finishWithContactIdentifier:v4 error:v6];
}

- (void)finishWithContactIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFAddNewContactActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAddNewContactActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, identifierCopy, errorCopy);
  }

  [(WFAddNewContactActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__WFAddNewContactActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFAddNewContactActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __83__WFAddNewContactActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContactIdentifier:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithContactParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!parametersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAddNewContactActionUIKitUserInterface.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"contactParameters"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAddNewContactActionUIKitUserInterface.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFAddNewContactActionUIKitUserInterface *)self setCompletionHandler:v9];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__WFAddNewContactActionUIKitUserInterface_showWithContactParameters_completionHandler___block_invoke;
  v12[3] = &unk_278C36F00;
  v12[4] = self;
  [MEMORY[0x277CE8800] contactFromParameters:parametersCopy completionHandler:v12];
}

void __87__WFAddNewContactActionUIKitUserInterface_showWithContactParameters_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__WFAddNewContactActionUIKitUserInterface_showWithContactParameters_completionHandler___block_invoke_2;
  v6[3] = &unk_278C375A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __87__WFAddNewContactActionUIKitUserInterface_showWithContactParameters_completionHandler___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CBDC48] viewControllerForNewContact:*(a1 + 32)];
  [v5 setDelegate:*(a1 + 40)];
  v2 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  v3 = *(a1 + 40);
  v4 = [v2 presentationController];
  [v4 setDelegate:v3];

  [*(a1 + 40) presentContent:v2];
}

@end