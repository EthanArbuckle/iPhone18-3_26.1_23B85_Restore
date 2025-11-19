@interface QLErrorItemViewController
- (void)_updateLabelsWithCurrentErrorIfNeeded;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)loadView;
- (void)setError:(id)a3;
@end

@implementation QLErrorItemViewController

- (void)loadView
{
  v5 = [MEMORY[0x277D75390] emptyConfiguration];
  v3 = [(QLErrorItemViewController *)self title];
  [v5 setText:v3];

  v4 = [(UIContentUnavailableView *)[QLErrorView alloc] initWithConfiguration:v5];
  [(QLErrorItemViewController *)self setView:v4];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D75390] emptyConfiguration];
  v10 = [v7 previewTitle];
  v11 = v10;
  if (v10 && ([v10 isEqualToString:&stru_284D5E510] & 1) == 0)
  {
    [v9 setText:v11];
  }

  v12 = [v7 originalContentType];

  if (!v12)
  {
    LODWORD(v15) = 0;
    goto LABEL_9;
  }

  v13 = MEMORY[0x277CE1CB8];
  v14 = [v7 originalContentType];
  v15 = [v13 typeWithIdentifier:v14];

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
    v16 = [v15 localizedDescription];
    [v9 setSecondaryText:v16];

    LODWORD(v15) = 1;
  }

LABEL_11:
  v17 = [v7 itemSize];
  v18 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v17 countStyle:{"longLongValue"), 0}];
  if (v17)
  {
    if (v15)
    {
      v19 = MEMORY[0x277CCACA8];
      [v53 localizedDescription];
      v21 = v20 = v18;
      v22 = [v19 stringWithFormat:@"%@\n%@", v21, v20];
      [v9 setSecondaryText:v22];

      v18 = v20;
    }

    else
    {
      [v9 setSecondaryText:v18];
    }
  }

  v23 = [v7 item];
  [(QLItemViewController *)self isContentManaged];
  v24 = _QLGetOpenInAppClaimBindingForItem(v23);

  v52 = v24;
  if (v24)
  {
    v25 = MEMORY[0x277D43F58];
    [v7 item];
    v26 = v51 = v11;
    v27 = [v25 openInTypeForItem:v26 appIsContentManaged:{-[QLItemViewController isContentManaged](self, "isContentManaged")}];

    v11 = v51;
    if (v27 == 2)
    {
      v28 = [MEMORY[0x277D75230] borderedButtonConfiguration];
      v29 = MEMORY[0x277CCACA8];
      v30 = QLLocalizedString();
      [v24 bundleRecord];
      v31 = v50 = v8;
      v32 = [v31 localizedName];
      v33 = [v29 stringWithFormat:v30, v32];
      v49 = v28;
      [v28 setTitle:v33];

      [v9 setButton:v28];
      v34 = MEMORY[0x277D750C8];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __89__QLErrorItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
      v54[3] = &unk_278B591D8;
      v55 = v7;
      v35 = v52;
      v56 = v35;
      v57 = self;
      v36 = [v34 actionWithHandler:v54];
      v37 = [v9 buttonProperties];
      [v37 setPrimaryAction:v36];

      v38 = objc_alloc(MEMORY[0x277D1B1A8]);
      v39 = [v35 bundleRecord];
      v40 = [v39 bundleIdentifier];
      v48 = [v38 initWithBundleIdentifier:v40];

      v47 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
      v41 = [v48 imageForDescriptor:v47];
      v42 = MEMORY[0x277D755B8];
      v43 = [v41 CGImage];
      v44 = [MEMORY[0x277D759A0] mainScreen];
      [v44 scale];
      v45 = [v42 imageWithCGImage:v43 scale:0 orientation:?];
      [v9 setImage:v45];

      v8 = v50;
      v11 = v51;
    }
  }

  v46 = [(QLErrorItemViewController *)self errorView];
  [v46 setConfiguration:v9];

  [(QLErrorItemViewController *)self _updateLabelsWithCurrentErrorIfNeeded];
  if (v8)
  {
    v8[2](v8, 0);
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

- (void)setError:(id)a3
{
  objc_storeStrong(&self->_error, a3);

  [(QLErrorItemViewController *)self _updateLabelsWithCurrentErrorIfNeeded];
}

- (void)_updateLabelsWithCurrentErrorIfNeeded
{
  v3 = [(QLItemViewController *)self context];
  v4 = [v3 previewTitle];

  if (!v4)
  {
    v11 = [(QLErrorItemViewController *)self error];
    v5 = [v11 domain];
    if (v5 == @"com.apple.quicklook.QLErrorItemViewController")
    {
      v7 = [(QLErrorItemViewController *)self error];
      v8 = [v7 code];

      if (v8 != 1)
      {
        return;
      }

      v9 = [(QLErrorItemViewController *)self errorView];
      v11 = [v9 configuration];

      v10 = QLLocalizedStringFromTable();
      [v11 setText:v10];

      v6 = [(QLErrorItemViewController *)self errorView];
      [v6 setConfiguration:v11];
    }

    else
    {
      v6 = v5;
    }
  }
}

@end