@interface QLErrorItemViewController
- (void)_updateLabelsWithCurrentErrorIfNeeded;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)loadView;
- (void)setError:(id)error;
@end

@implementation QLErrorItemViewController

- (void)loadView
{
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  title = [(QLErrorItemViewController *)self title];
  [emptyConfiguration setText:title];

  v4 = [(UIContentUnavailableView *)[QLErrorView alloc] initWithConfiguration:emptyConfiguration];
  [(QLErrorItemViewController *)self setView:v4];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  previewTitle = [contextCopy previewTitle];
  v11 = previewTitle;
  if (previewTitle && ([previewTitle isEqualToString:&stru_284D5E510] & 1) == 0)
  {
    [emptyConfiguration setText:v11];
  }

  originalContentType = [contextCopy originalContentType];

  if (!originalContentType)
  {
    LODWORD(v15) = 0;
    goto LABEL_9;
  }

  v13 = MEMORY[0x277CE1CB8];
  originalContentType2 = [contextCopy originalContentType];
  v15 = [v13 typeWithIdentifier:originalContentType2];

  v53 = v15;
  if (!v15)
  {
LABEL_9:
    v53 = 0;
    goto LABEL_11;
  }

  if ([v15 isDynamic])
  {
    LODWORD(v15) = 0;
  }

  else
  {
    localizedDescription = [v15 localizedDescription];
    [emptyConfiguration setSecondaryText:localizedDescription];

    LODWORD(v15) = 1;
  }

LABEL_11:
  itemSize = [contextCopy itemSize];
  v18 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(itemSize countStyle:{"longLongValue"), 0}];
  if (itemSize)
  {
    if (v15)
    {
      v19 = MEMORY[0x277CCACA8];
      [v53 localizedDescription];
      v21 = v20 = v18;
      v22 = [v19 stringWithFormat:@"%@\n%@", v21, v20];
      [emptyConfiguration setSecondaryText:v22];

      v18 = v20;
    }

    else
    {
      [emptyConfiguration setSecondaryText:v18];
    }
  }

  item = [contextCopy item];
  [(QLItemViewController *)self isContentManaged];
  v24 = _QLGetOpenInAppClaimBindingForItem(item);

  v52 = v24;
  if (v24)
  {
    v25 = MEMORY[0x277D43F58];
    [contextCopy item];
    v26 = v51 = v11;
    v27 = [v25 openInTypeForItem:v26 appIsContentManaged:{-[QLItemViewController isContentManaged](self, "isContentManaged")}];

    v11 = v51;
    if (v27 == 2)
    {
      borderedButtonConfiguration = [MEMORY[0x277D75230] borderedButtonConfiguration];
      v29 = MEMORY[0x277CCACA8];
      v30 = QLLocalizedString();
      [v24 bundleRecord];
      v31 = v50 = handlerCopy;
      localizedName = [v31 localizedName];
      v33 = [v29 stringWithFormat:v30, localizedName];
      v49 = borderedButtonConfiguration;
      [borderedButtonConfiguration setTitle:v33];

      [emptyConfiguration setButton:borderedButtonConfiguration];
      v34 = MEMORY[0x277D750C8];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __89__QLErrorItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
      v54[3] = &unk_278B591D8;
      v55 = contextCopy;
      v35 = v52;
      v56 = v35;
      selfCopy = self;
      v36 = [v34 actionWithHandler:v54];
      buttonProperties = [emptyConfiguration buttonProperties];
      [buttonProperties setPrimaryAction:v36];

      v38 = objc_alloc(MEMORY[0x277D1B1A8]);
      bundleRecord = [v35 bundleRecord];
      bundleIdentifier = [bundleRecord bundleIdentifier];
      v48 = [v38 initWithBundleIdentifier:bundleIdentifier];

      v47 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
      v41 = [v48 imageForDescriptor:v47];
      v42 = MEMORY[0x277D755B8];
      cGImage = [v41 CGImage];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v45 = [v42 imageWithCGImage:cGImage scale:0 orientation:?];
      [emptyConfiguration setImage:v45];

      handlerCopy = v50;
      v11 = v51;
    }
  }

  errorView = [(QLErrorItemViewController *)self errorView];
  [errorView setConfiguration:emptyConfiguration];

  [(QLErrorItemViewController *)self _updateLabelsWithCurrentErrorIfNeeded];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

void __89__QLErrorItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__QLErrorItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2;
  v5[3] = &unk_278B56E00;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 prepareShareableURL:v5];
}

void __89__QLErrorItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) item];
  v2 = [v3 shareableURL];
  +[QLUtilitiesInternal performOpenInWithFileURL:claimBinding:additionalLaunchServicesOptions:isContentManaged:completion:](QLUtilitiesInternal, "performOpenInWithFileURL:claimBinding:additionalLaunchServicesOptions:isContentManaged:completion:", v2, *(a1 + 40), 0, [*(a1 + 48) isContentManaged], 0);
}

- (void)setError:(id)error
{
  objc_storeStrong(&self->_error, error);

  [(QLErrorItemViewController *)self _updateLabelsWithCurrentErrorIfNeeded];
}

- (void)_updateLabelsWithCurrentErrorIfNeeded
{
  context = [(QLItemViewController *)self context];
  previewTitle = [context previewTitle];

  if (!previewTitle)
  {
    error = [(QLErrorItemViewController *)self error];
    domain = [error domain];
    if (domain == @"com.apple.quicklook.QLErrorItemViewController")
    {
      error2 = [(QLErrorItemViewController *)self error];
      code = [error2 code];

      if (code != 1)
      {
        return;
      }

      errorView = [(QLErrorItemViewController *)self errorView];
      error = [errorView configuration];

      v10 = QLLocalizedStringFromTable();
      [error setText:v10];

      errorView2 = [(QLErrorItemViewController *)self errorView];
      [errorView2 setConfiguration:error];
    }

    else
    {
      errorView2 = domain;
    }
  }
}

@end