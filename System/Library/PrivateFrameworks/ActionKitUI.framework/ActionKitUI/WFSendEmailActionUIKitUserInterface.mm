@interface WFSendEmailActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)showWithEmailContent:(id)content preferredSendingEmailAddress:(id)address isManaged:(BOOL)managed completionHandler:(id)handler;
@end

@implementation WFSendEmailActionUIKitUserInterface

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__WFSendEmailActionUIKitUserInterface_mailComposeController_didFinishWithResult_error___block_invoke;
  v5[3] = &unk_278C374C0;
  v5[4] = self;
  v5[5] = result;
  [controller dismissViewControllerAnimated:1 completion:{v5, error}];
}

void __87__WFSendEmailActionUIKitUserInterface_mailComposeController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 3)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = [MEMORY[0x277CCA9B8] userCancelledError];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  v5 = v4;
  [*(a1 + 32) finishWithError:v4];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFSendEmailActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFSendEmailActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __79__WFSendEmailActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFSendEmailActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFSendEmailActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, 0, errorCopy);
  }

  [(WFSendEmailActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithEmailContent:(id)content preferredSendingEmailAddress:(id)address isManaged:(BOOL)managed completionHandler:(id)handler
{
  contentCopy = content;
  addressCopy = address;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (!contentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSendEmailActionUIKitUserInterface.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"emailContent"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSendEmailActionUIKitUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFSendEmailActionUIKitUserInterface *)self setCompletionHandler:v14];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__WFSendEmailActionUIKitUserInterface_showWithEmailContent_preferredSendingEmailAddress_isManaged_completionHandler___block_invoke;
  block[3] = &unk_278C36F40;
  managedCopy = managed;
  block[4] = self;
  v20 = contentCopy;
  v21 = addressCopy;
  v15 = addressCopy;
  v16 = contentCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __117__WFSendEmailActionUIKitUserInterface_showWithEmailContent_preferredSendingEmailAddress_isManaged_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CD6878]);
  if (*(a1 + 56))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [v2 initWithURL:0 sourceAccountManagement:v3];
  v5 = v4;
  if (v4)
  {
    [v4 setMailComposeDelegate:*(a1 + 32)];
    v6 = [*(a1 + 40) subject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_2850A01A8;
    }

    [v5 setSubject:v8];

    v9 = [*(a1 + 40) toRecipients];
    v10 = [v9 if_map:&__block_literal_global_79];
    [v5 setToRecipients:v10];

    v11 = [*(a1 + 40) ccRecipients];
    v12 = [v11 if_map:&__block_literal_global_230];
    [v5 setCcRecipients:v12];

    v13 = [*(a1 + 40) bccRecipients];
    v14 = [v13 if_map:&__block_literal_global_232];
    [v5 setBccRecipients:v14];

    if ([*(a1 + 48) length])
    {
      [v5 setPreferredSendingEmailAddress:*(a1 + 48)];
    }

    v15 = [*(a1 + 40) body];
    v16 = v5;
    [v5 setMessageBody:v15 isHTML:{objc_msgSend(*(a1 + 40), "isHTML")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = a1;
    obj = [*(a1 + 40) attachments];
    v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [v21 mappedData];
          v23 = [v21 wfType];
          v24 = [v23 MIMEType];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = @"application/octet-stream";
          }

          v27 = [v21 filename];
          [v16 addAttachmentData:v22 mimeType:v26 fileName:v27];
        }

        v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    v5 = v16;
    [*(v31 + 32) presentContent:v16];
  }

  else
  {
    v28 = [*(a1 + 32) completionHandler];
    v29 = [MEMORY[0x277CCA9B8] wf_mailComposerUnavailableError];
    (v28)[2](v28, 0, v29);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end