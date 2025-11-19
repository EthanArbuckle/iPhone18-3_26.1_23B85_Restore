@interface EKEventAttachmentCellController
+ (id)_attachmentDownloadErrorLocalizedString;
+ (id)_okLocalizedString;
+ (id)cannotOpenAttachmentLocalizedString;
+ (id)cellControllersForAttachments:(id)a3 givenExistingControllers:(id)a4 sourceIsManaged:(BOOL)a5;
- (EKEventAttachmentCellController)initWithAttachment:(id)a3 sourceIsManaged:(BOOL)a4;
- (EKEventAttachmentCellControllerDelegate)delegate;
- (id)_downloadProgressStringWithDownloadedBytes:(id)a3 outOfTotalBytes:(id)a4;
- (id)owningEventForAttachmentDownloadController:(id)a3;
- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)a3;
- (void)_presentPreviewWithURL:(id)a3 fileName:(id)a4 ekAttachment:(id)a5;
- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)a3;
- (void)openExternalAttachmentURLInBrowser:(id)a3;
- (void)presentPreviewWithURL:(id)a3 fileName:(id)a4 ekAttachment:(id)a5;
- (void)previewControllerWillDismiss:(id)a3;
- (void)promptToDownloadAttachmentFromHost:(id)a3 promptToDownloadCallBack:(id)a4;
- (void)setDelegate:(id)a3;
- (void)tearDown;
- (void)updateAttachmentDownloadProgressWithIdentifier:(id)a3 downloadedBytes:(id)a4 outOfTotalBytes:(id)a5;
- (void)updateAttachmentStatusWithIdentifier:(id)a3 isLoading:(BOOL)a4;
@end

@implementation EKEventAttachmentCellController

+ (id)cellControllersForAttachments:(id)a3 givenExistingControllers:(id)a4 sourceIsManaged:(BOOL)a5
{
  v5 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35 = a4;
  if (v7)
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v46 + 1) + 8 * i);
          if ([MEMORY[0x1E6993388] _attachmentIsViewable:{v13, v33}])
          {
            v14 = [MEMORY[0x1E6993388] _keyForAttachment:v13];
            [v37 setObject:v13 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v10);
    }

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
    if (v35)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v35;
      v16 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v42 + 1) + 8 * j);
            v21 = [v20 attachment];
            if ([v21 refresh] && (objc_msgSend(MEMORY[0x1E6993388], "_keyForAttachment:", v21), v22 = v5, v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "objectForKey:", v23), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v5 = v22, v24))
            {
              [v15 addObject:v20];
              v25 = [MEMORY[0x1E6993388] _keyForAttachment:v21];
              [v37 removeObjectForKey:v25];

              [v20 setAttachment:v21];
            }

            else
            {
              [v20 tearDown];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v17);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = [v37 allValues];
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[EKEventAttachmentCellController alloc] initWithAttachment:*(*(&v38 + 1) + 8 * k) sourceIsManaged:v5];
          [v15 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v28);
    }

    v7 = v34;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (EKEventAttachmentCellController)initWithAttachment:(id)a3 sourceIsManaged:(BOOL)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = EKEventAttachmentCellController;
  v7 = [(EKEventAttachmentCellController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(EKEventAttachmentCellController *)v7 setAttachment:v6];
    v9 = [[EKEventAttachmentCell alloc] initWithStyle:3 reuseIdentifier:@"AttachmentCell"];
    cell = v8->_cell;
    v8->_cell = v9;

    v11 = v8->_cell;
    v12 = [(EKEventAttachmentCellController *)v8 attachment];
    [(EKEventAttachmentCell *)v11 setAttachment:v12];

    v8->_sourceIsManaged = a4;
    v13 = [objc_alloc(MEMORY[0x1E6993388]) initWithAttachment:v6];
    downloadController = v8->_downloadController;
    v8->_downloadController = v13;

    [(CUIKAttachmentDownloadController *)v8->_downloadController setDelegate:v8];
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  obj = v4;
  if (!v4)
  {
    [(EKEventAttachmentCellController *)self tearDown];
    v4 = 0;
  }

  objc_storeWeak(&self->_delegate, v4);
}

- (void)tearDown
{
  downloadController = self->_downloadController;
  if (downloadController)
  {
    [(CUIKAttachmentDownloadController *)downloadController tearDown];
  }
}

+ (id)_okLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)cannotOpenAttachmentLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cannot Open Attachment" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_attachmentDownloadErrorLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"An error occurred while downloading the attachment." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)_downloadProgressStringWithDownloadedBytes:(id)a3 outOfTotalBytes:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AAF0];
  v7 = a3;
  v8 = [v6 stringFromByteCount:objc_msgSend(v7 countStyle:{"longLongValue"), 0}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v10 = [v7 isEqualToNumber:v9];

  v11 = 0;
  if ((v10 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v13 = [v5 isEqualToNumber:v12];

    if (v13)
    {
      v11 = v8;
    }

    else
    {
      v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v5 countStyle:{"longLongValue"), 0}];
      if ([v8 isEqualToString:v14])
      {
        v11 = v8;
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = EventKitUIBundle();
        v17 = [v16 localizedStringForKey:@"%@ of %@" value:&stru_1F4EF6790 table:0];
        v11 = [v15 localizedStringWithFormat:v17, v8, v14];
      }
    }
  }

  return v11;
}

- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1D3600B38[a3 - 2];
  }
}

- (void)presentPreviewWithURL:(id)a3 fileName:(id)a4 ekAttachment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__EKEventAttachmentCellController_presentPreviewWithURL_fileName_ekAttachment___block_invoke;
  v14[3] = &unk_1E8440C00;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_presentPreviewWithURL:(id)a3 fileName:(id)a4 ekAttachment:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [(EKEventAttachmentCellController *)self delegate];
  v10 = [v9 parentViewControllerForAttachmentCellController:self];

  v11 = [[EKAttachmentQLItem alloc] initWithURL:v8 filename:v7];
  if ([getQLPreviewControllerClass() canPreviewItem:v11])
  {
    v12 = objc_alloc(getQLPreviewControllerClass());
    v28[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14 = [v12 initWithPreviewItems:v13];

    [v14 setIsContentManaged:self->_sourceIsManaged];
    v15 = [(EKEventAttachmentCellController *)self cell];
    v16 = [v15 window];
    v17 = [v16 windowScene];
    v18 = [v17 interfaceOrientation];

    [v14 setForcedSupportedInterfaceOrientations:{-[EKEventAttachmentCellController supportedInterfaceOrientationMaskForInterfaceOrientation:](self, "supportedInterfaceOrientationMaskForInterfaceOrientation:", v18)}];
    [v10 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v19 = MEMORY[0x1E69DC650];
    v20 = [objc_opt_class() cannotOpenAttachmentLocalizedString];
    v21 = EventKitUIBundle();
    v22 = [v21 localizedStringForKey:@"This type of file is not supported." value:&stru_1F4EF6790 table:0];
    v14 = [v19 alertControllerWithTitle:v20 message:v22 preferredStyle:1];

    v23 = MEMORY[0x1E69DC648];
    v24 = [objc_opt_class() _okLocalizedString];
    v25 = [v23 actionWithTitle:v24 style:1 handler:0];
    [v14 addAction:v25];

    v26 = [(EKEventAttachmentCellController *)self delegate];
    v27 = [v26 parentViewControllerForAttachmentCellController:self];

    [v27 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)openExternalAttachmentURLInBrowser:(id)a3
{
  v4 = a3;
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Open attachment in web browser?" value:&stru_1F4EF6790 table:0];

  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"This attachment is a download link to an external website value:would you like to continue opening the attachment in web browser?" table:{&stru_1F4EF6790, 0}];

  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Continue" value:&stru_1F4EF6790 table:0];

  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_1F4EF6790 table:0];

  v14 = MEMORY[0x1E69DC648];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__EKEventAttachmentCellController_openExternalAttachmentURLInBrowser___block_invoke;
  v20[3] = &unk_1E843EB98;
  v21 = v4;
  v15 = v4;
  v16 = [v14 actionWithTitle:v11 style:0 handler:v20];
  [v9 addAction:v16];

  v17 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:1 handler:0];
  [v9 addAction:v17];

  v18 = [(EKEventAttachmentCellController *)self delegate];
  v19 = [v18 parentViewControllerForAttachmentCellController:self];

  [v19 presentViewController:v9 animated:1 completion:0];
}

void __70__EKEventAttachmentCellController_openExternalAttachmentURLInBrowser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openURL:*(a1 + 32) withOptions:MEMORY[0x1E695E0F8]];
}

- (void)promptToDownloadAttachmentFromHost:(id)a3 promptToDownloadCallBack:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"The attachment is on a different server than the event." value:&stru_1F4EF6790 table:0];

  v10 = MEMORY[0x1E696AEC0];
  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Would you like to download it from “%@”?" value:&stru_1F4EF6790 table:0];
  v13 = [v10 localizedStringWithFormat:v12, v7];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Download" value:&stru_1F4EF6790 table:0];

  v16 = EventKitUIBundle();
  v17 = [v16 localizedStringForKey:@"Cancel" value:&stru_1F4EF6790 table:0];

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v13 preferredStyle:1];
  v19 = [MEMORY[0x1E69DC648] actionWithTitle:v17 style:0 handler:0];
  v20 = MEMORY[0x1E69DC648];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__EKEventAttachmentCellController_promptToDownloadAttachmentFromHost_promptToDownloadCallBack___block_invoke;
  v25[3] = &unk_1E8442288;
  v26 = v6;
  v21 = v6;
  v22 = [v20 actionWithTitle:v15 style:0 handler:v25];
  [v18 addAction:v19];
  [v18 addAction:v22];
  v23 = [(EKEventAttachmentCellController *)self delegate];
  v24 = [v23 parentViewControllerForAttachmentCellController:self];

  [v24 presentViewController:v18 animated:1 completion:0];
}

- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__EKEventAttachmentCellController_attachmentDownloadErrorWithIsSubscribedCalendar___block_invoke;
  v3[3] = &unk_1E84407B0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __83__EKEventAttachmentCellController_attachmentDownloadErrorWithIsSubscribedCalendar___block_invoke(uint64_t a1)
{
  v10 = [objc_opt_class() cannotOpenAttachmentLocalizedString];
  if (*(a1 + 40))
  {
    v2 = EventKitUIBundle();
    v3 = [v2 localizedStringForKey:@"Attachments on subscribed calendar events cannot be downloaded." value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v3 = [objc_opt_class() _attachmentDownloadErrorLocalizedString];
  }

  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = [objc_opt_class() _okLocalizedString];
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];
  [v4 addAction:v7];

  v8 = [*(a1 + 32) delegate];
  v9 = [v8 parentViewControllerForAttachmentCellController:*(a1 + 32)];

  [v9 presentViewController:v4 animated:1 completion:0];
}

- (void)updateAttachmentDownloadProgressWithIdentifier:(id)a3 downloadedBytes:(id)a4 outOfTotalBytes:(id)a5
{
  v6 = [(EKEventAttachmentCellController *)self _downloadProgressStringWithDownloadedBytes:a4 outOfTotalBytes:a5];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __114__EKEventAttachmentCellController_updateAttachmentDownloadProgressWithIdentifier_downloadedBytes_outOfTotalBytes___block_invoke;
    v8[3] = &unk_1E843EFB8;
    v8[4] = self;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __114__EKEventAttachmentCellController_updateAttachmentDownloadProgressWithIdentifier_downloadedBytes_outOfTotalBytes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) cell];
  v2 = [v3 detailTextLabel];
  [v2 setText:v1];
}

- (void)updateAttachmentStatusWithIdentifier:(id)a3 isLoading:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__EKEventAttachmentCellController_updateAttachmentStatusWithIdentifier_isLoading___block_invoke;
  v4[3] = &unk_1E84407B0;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __82__EKEventAttachmentCellController_updateAttachmentStatusWithIdentifier_isLoading___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cell];
  [v2 showSpinner:*(a1 + 40)];
}

- (id)owningEventForAttachmentDownloadController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 owningEventForAttachmentCellController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)previewControllerWillDismiss:(id)a3
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:@"EKDocumentQuickLookWillEndNotification" object:v4];
}

- (EKEventAttachmentCellControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end