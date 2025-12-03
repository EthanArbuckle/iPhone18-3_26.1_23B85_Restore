@interface EKEventAttachmentCellController
+ (id)_attachmentDownloadErrorLocalizedString;
+ (id)_okLocalizedString;
+ (id)cannotOpenAttachmentLocalizedString;
+ (id)cellControllersForAttachments:(id)attachments givenExistingControllers:(id)controllers sourceIsManaged:(BOOL)managed;
- (EKEventAttachmentCellController)initWithAttachment:(id)attachment sourceIsManaged:(BOOL)managed;
- (EKEventAttachmentCellControllerDelegate)delegate;
- (id)_downloadProgressStringWithDownloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes;
- (id)owningEventForAttachmentDownloadController:(id)controller;
- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)orientation;
- (void)_presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment;
- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)calendar;
- (void)openExternalAttachmentURLInBrowser:(id)browser;
- (void)presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)promptToDownloadAttachmentFromHost:(id)host promptToDownloadCallBack:(id)back;
- (void)setDelegate:(id)delegate;
- (void)tearDown;
- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes;
- (void)updateAttachmentStatusWithIdentifier:(id)identifier isLoading:(BOOL)loading;
@end

@implementation EKEventAttachmentCellController

+ (id)cellControllersForAttachments:(id)attachments givenExistingControllers:(id)controllers sourceIsManaged:(BOOL)managed
{
  managedCopy = managed;
  v53 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  controllersCopy = controllers;
  if (attachmentsCopy)
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(attachmentsCopy, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = attachmentsCopy;
    v8 = attachmentsCopy;
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
    if (controllersCopy)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = controllersCopy;
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
            attachment = [v20 attachment];
            if ([attachment refresh] && (objc_msgSend(MEMORY[0x1E6993388], "_keyForAttachment:", attachment), v22 = managedCopy, v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "objectForKey:", v23), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, managedCopy = v22, v24))
            {
              [v15 addObject:v20];
              v25 = [MEMORY[0x1E6993388] _keyForAttachment:attachment];
              [v37 removeObjectForKey:v25];

              [v20 setAttachment:attachment];
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
    allValues = [v37 allValues];
    v27 = [allValues countByEnumeratingWithState:&v38 objects:v50 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v31 = [[EKEventAttachmentCellController alloc] initWithAttachment:*(*(&v38 + 1) + 8 * k) sourceIsManaged:managedCopy];
          [v15 addObject:v31];
        }

        v28 = [allValues countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v28);
    }

    attachmentsCopy = v34;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (EKEventAttachmentCellController)initWithAttachment:(id)attachment sourceIsManaged:(BOOL)managed
{
  attachmentCopy = attachment;
  v16.receiver = self;
  v16.super_class = EKEventAttachmentCellController;
  v7 = [(EKEventAttachmentCellController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(EKEventAttachmentCellController *)v7 setAttachment:attachmentCopy];
    v9 = [[EKEventAttachmentCell alloc] initWithStyle:3 reuseIdentifier:@"AttachmentCell"];
    cell = v8->_cell;
    v8->_cell = v9;

    v11 = v8->_cell;
    attachment = [(EKEventAttachmentCellController *)v8 attachment];
    [(EKEventAttachmentCell *)v11 setAttachment:attachment];

    v8->_sourceIsManaged = managed;
    v13 = [objc_alloc(MEMORY[0x1E6993388]) initWithAttachment:attachmentCopy];
    downloadController = v8->_downloadController;
    v8->_downloadController = v13;

    [(CUIKAttachmentDownloadController *)v8->_downloadController setDelegate:v8];
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = delegateCopy;
  if (!delegateCopy)
  {
    [(EKEventAttachmentCellController *)self tearDown];
    delegateCopy = 0;
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
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

- (id)_downloadProgressStringWithDownloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes
{
  totalBytesCopy = totalBytes;
  v6 = MEMORY[0x1E696AAF0];
  bytesCopy = bytes;
  v8 = [v6 stringFromByteCount:objc_msgSend(bytesCopy countStyle:{"longLongValue"), 0}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v10 = [bytesCopy isEqualToNumber:v9];

  v11 = 0;
  if ((v10 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v13 = [totalBytesCopy isEqualToNumber:v12];

    if (v13)
    {
      v11 = v8;
    }

    else
    {
      v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(totalBytesCopy countStyle:{"longLongValue"), 0}];
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

- (unint64_t)supportedInterfaceOrientationMaskForInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1D3600B38[orientation - 2];
  }
}

- (void)presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment
{
  lCopy = l;
  nameCopy = name;
  attachmentCopy = attachment;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__EKEventAttachmentCellController_presentPreviewWithURL_fileName_ekAttachment___block_invoke;
  v14[3] = &unk_1E8440C00;
  v14[4] = self;
  v15 = lCopy;
  v16 = nameCopy;
  v17 = attachmentCopy;
  v11 = attachmentCopy;
  v12 = nameCopy;
  v13 = lCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_presentPreviewWithURL:(id)l fileName:(id)name ekAttachment:(id)attachment
{
  v28[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lCopy = l;
  delegate = [(EKEventAttachmentCellController *)self delegate];
  v10 = [delegate parentViewControllerForAttachmentCellController:self];

  v11 = [[EKAttachmentQLItem alloc] initWithURL:lCopy filename:nameCopy];
  if ([getQLPreviewControllerClass() canPreviewItem:v11])
  {
    v12 = objc_alloc(getQLPreviewControllerClass());
    v28[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14 = [v12 initWithPreviewItems:v13];

    [v14 setIsContentManaged:self->_sourceIsManaged];
    cell = [(EKEventAttachmentCellController *)self cell];
    window = [cell window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    [v14 setForcedSupportedInterfaceOrientations:{-[EKEventAttachmentCellController supportedInterfaceOrientationMaskForInterfaceOrientation:](self, "supportedInterfaceOrientationMaskForInterfaceOrientation:", interfaceOrientation)}];
    [v10 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v19 = MEMORY[0x1E69DC650];
    cannotOpenAttachmentLocalizedString = [objc_opt_class() cannotOpenAttachmentLocalizedString];
    v21 = EventKitUIBundle();
    v22 = [v21 localizedStringForKey:@"This type of file is not supported." value:&stru_1F4EF6790 table:0];
    v14 = [v19 alertControllerWithTitle:cannotOpenAttachmentLocalizedString message:v22 preferredStyle:1];

    v23 = MEMORY[0x1E69DC648];
    _okLocalizedString = [objc_opt_class() _okLocalizedString];
    v25 = [v23 actionWithTitle:_okLocalizedString style:1 handler:0];
    [v14 addAction:v25];

    delegate2 = [(EKEventAttachmentCellController *)self delegate];
    v27 = [delegate2 parentViewControllerForAttachmentCellController:self];

    [v27 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)openExternalAttachmentURLInBrowser:(id)browser
{
  browserCopy = browser;
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
  v21 = browserCopy;
  v15 = browserCopy;
  v16 = [v14 actionWithTitle:v11 style:0 handler:v20];
  [v9 addAction:v16];

  v17 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:1 handler:0];
  [v9 addAction:v17];

  delegate = [(EKEventAttachmentCellController *)self delegate];
  v19 = [delegate parentViewControllerForAttachmentCellController:self];

  [v19 presentViewController:v9 animated:1 completion:0];
}

void __70__EKEventAttachmentCellController_openExternalAttachmentURLInBrowser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openURL:*(a1 + 32) withOptions:MEMORY[0x1E695E0F8]];
}

- (void)promptToDownloadAttachmentFromHost:(id)host promptToDownloadCallBack:(id)back
{
  backCopy = back;
  hostCopy = host;
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"The attachment is on a different server than the event." value:&stru_1F4EF6790 table:0];

  v10 = MEMORY[0x1E696AEC0];
  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Would you like to download it from “%@”?" value:&stru_1F4EF6790 table:0];
  hostCopy = [v10 localizedStringWithFormat:v12, hostCopy];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Download" value:&stru_1F4EF6790 table:0];

  v16 = EventKitUIBundle();
  v17 = [v16 localizedStringForKey:@"Cancel" value:&stru_1F4EF6790 table:0];

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:hostCopy preferredStyle:1];
  v19 = [MEMORY[0x1E69DC648] actionWithTitle:v17 style:0 handler:0];
  v20 = MEMORY[0x1E69DC648];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__EKEventAttachmentCellController_promptToDownloadAttachmentFromHost_promptToDownloadCallBack___block_invoke;
  v25[3] = &unk_1E8442288;
  v26 = backCopy;
  v21 = backCopy;
  v22 = [v20 actionWithTitle:v15 style:0 handler:v25];
  [v18 addAction:v19];
  [v18 addAction:v22];
  delegate = [(EKEventAttachmentCellController *)self delegate];
  v24 = [delegate parentViewControllerForAttachmentCellController:self];

  [v24 presentViewController:v18 animated:1 completion:0];
}

- (void)attachmentDownloadErrorWithIsSubscribedCalendar:(BOOL)calendar
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__EKEventAttachmentCellController_attachmentDownloadErrorWithIsSubscribedCalendar___block_invoke;
  v3[3] = &unk_1E84407B0;
  v3[4] = self;
  calendarCopy = calendar;
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

- (void)updateAttachmentDownloadProgressWithIdentifier:(id)identifier downloadedBytes:(id)bytes outOfTotalBytes:(id)totalBytes
{
  v6 = [(EKEventAttachmentCellController *)self _downloadProgressStringWithDownloadedBytes:bytes outOfTotalBytes:totalBytes];
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

- (void)updateAttachmentStatusWithIdentifier:(id)identifier isLoading:(BOOL)loading
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__EKEventAttachmentCellController_updateAttachmentStatusWithIdentifier_isLoading___block_invoke;
  v4[3] = &unk_1E84407B0;
  v4[4] = self;
  loadingCopy = loading;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __82__EKEventAttachmentCellController_updateAttachmentStatusWithIdentifier_isLoading___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cell];
  [v2 showSpinner:*(a1 + 40)];
}

- (id)owningEventForAttachmentDownloadController:(id)controller
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

- (void)previewControllerWillDismiss:(id)dismiss
{
  v3 = MEMORY[0x1E696AD88];
  dismissCopy = dismiss;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:@"EKDocumentQuickLookWillEndNotification" object:dismissCopy];
}

- (EKEventAttachmentCellControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end