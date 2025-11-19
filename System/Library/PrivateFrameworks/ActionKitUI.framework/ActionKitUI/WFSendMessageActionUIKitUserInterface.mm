@interface WFSendMessageActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithError:(id)a3;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)showWithRecipients:(id)a3 content:(id)a4 attachments:(id)a5 completionHandler:(id)a6;
- (void)showWithRecipients:(id)a3 content:(id)a4 files:(id)a5 completionHandler:(id)a6;
@end

@implementation WFSendMessageActionUIKitUserInterface

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] userCancelledError];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__WFSendMessageActionUIKitUserInterface_messageComposeViewController_didFinishWithResult___block_invoke;
  v9[3] = &unk_278C375A0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WFSendMessageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFSendMessageActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __81__WFSendMessageActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithError:(id)a3
{
  v6 = a3;
  v4 = [(WFSendMessageActionUIKitUserInterface *)self completionHandler];

  if (v4)
  {
    v5 = [(WFSendMessageActionUIKitUserInterface *)self completionHandler];
    (v5)[2](v5, 0, v6);
  }

  [(WFSendMessageActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithRecipients:(id)a3 content:(id)a4 files:(id)a5 completionHandler:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([MEMORY[0x277CD6888] canSendText])
  {
    [(WFSendMessageActionUIKitUserInterface *)self setCompletionHandler:v13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__WFSendMessageActionUIKitUserInterface_showWithRecipients_content_files_completionHandler___block_invoke;
    block[3] = &unk_278C37690;
    v19 = v10;
    v20 = v11;
    v21 = self;
    v22 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v14 = v19;
  }

  else
  {
    v23 = *MEMORY[0x277CCA450];
    v15 = WFLocalizedString(@"Cannot send messages. iMessage may not be enabled.");
    v24[0] = v15;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:v14];
    v13[2](v13, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __92__WFSendMessageActionUIKitUserInterface_showWithRecipients_content_files_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD6888]);
  v3 = [*(a1 + 32) if_map:&__block_literal_global_4751];
  [v2 setRecipients:v3];

  [v2 setBody:*(a1 + 40)];
  [v2 setMessageComposeDelegate:*(a1 + 48)];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = a1;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 filename];
        v11 = [v9 wfType];
        v12 = WFLivePhotoFileType();
        v13 = [v11 conformsToUTType:v12];

        if (v13)
        {

          v10 = 0;
        }

        if ([v9 representationType])
        {
          v14 = [v9 fileURL];
          [v2 addAttachmentURL:v14 withAlternateFilename:v10];
        }

        else
        {
          v14 = [v9 data];
          v15 = [v9 wfType];
          v16 = [v15 string];
          [v2 addAttachmentData:v14 typeIdentifier:v16 filename:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [*(v18 + 48) presentContent:v2];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)showWithRecipients:(id)a3 content:(id)a4 attachments:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CCAAC8];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__WFSendMessageActionUIKitUserInterface_showWithRecipients_content_attachments_completionHandler___block_invoke;
  v22[3] = &unk_278C37398;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v25 = v13;
  v18 = v13;
  v19 = v11;
  v20 = v10;
  v21 = [v14 wf_securelyUnarchiveObjectWithData:v12 allowedClasses:v17 completionHandler:v22];
}

void __98__WFSendMessageActionUIKitUserInterface_showWithRecipients_content_attachments_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = a2;
  [*(a1 + 32) showWithRecipients:*(a1 + 40) content:*(a1 + 48) files:v4 completionHandler:*(a1 + 56)];
}

@end