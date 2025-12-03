@interface WFShareActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithExtensionItems:(id)items error:(id)error;
- (void)presentExtensionViewControllerForItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed;
- (void)prewarmInput:(id)input completion:(id)completion;
- (void)showWithArchivedItems:(id)items isContentManaged:(BOOL)managed extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier completionHandler:(id)handler;
@end

@implementation WFShareActionUIKitUserInterface

- (void)prewarmInput:(id)input completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  completionCopy = completion;
  v6 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  items = [inputCopy items];
  v8 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke;
        v20[3] = &unk_278C37538;
        v21 = v6;
        [v12 prepareForPresentationWithCompletionHandler:v20];

        ++v11;
      }

      while (v9 != v11);
      v9 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke_2;
  block[3] = &unk_278C375C8;
  v18 = inputCopy;
  v19 = completionCopy;
  v13 = inputCopy;
  v14 = completionCopy;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

void __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) items];
  (*(v1 + 16))(v1, v2);
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFShareActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFShareActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __75__WFShareActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithExtensionItems:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithExtensionItems:(id)items error:(id)error
{
  itemsCopy = items;
  errorCopy = error;
  completionHandler = [(WFShareActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFShareActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, itemsCopy, errorCopy);
  }

  [(WFShareActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithArchivedItems:(id)items isContentManaged:(BOOL)managed extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier completionHandler:(id)handler
{
  itemsCopy = items;
  identifierCopy = identifier;
  pointIdentifierCopy = pointIdentifier;
  handlerCopy = handler;
  if (itemsCopy)
  {
    if (pointIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"archivedItems"}];

  if (!pointIdentifierCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(WFShareActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v17 = MEMORY[0x277CCAAC8];
  v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_278C36C70;
  v25[4] = self;
  v26 = identifierCopy;
  v27 = pointIdentifierCopy;
  managedCopy = managed;
  v19 = pointIdentifierCopy;
  v20 = identifierCopy;
  v21 = [v17 wf_securelyUnarchiveObjectWithData:itemsCopy allowedClasses:v18 completionHandler:v25];
}

void __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke_2;
    v7[3] = &unk_278C36C48;
    v7[4] = v4;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v4 prewarmInput:a2 completion:v7];
  }

  else
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v12 = "[WFShareActionUIKitUserInterface showWithArchivedItems:isContentManaged:extensionBundleIdentifier:extensionPointIdentifier:completionHandler:]_block_invoke";
      _os_log_impl(&dword_23E342000, v5, OS_LOG_TYPE_FAULT, "%s Could not unarchive input items.", buf, 0xCu);
    }

    [*(a1 + 32) cancelPresentationWithCompletionHandler:&__block_literal_global_226];
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __90__WFShareActionUIKitUserInterface_presentActivityViewControllerForItems_isContentManaged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a5)
  {
    v6 = 0;
    v7 = a5;
  }

  else
  {
    v6 = a4;
    v7 = 0;
  }

  return [v5 finishWithExtensionItems:v6 error:v7];
}

- (void)presentExtensionViewControllerForItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed
{
  v96 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  pointIdentifierCopy = pointIdentifier;
  v61 = itemsCopy;
  if (itemsCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = identifierCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    identifierCopy = v44;
    if (v44)
    {
      goto LABEL_3;
    }
  }

  v46 = identifierCopy;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleIdentifier"}];

  identifierCopy = v46;
LABEL_3:
  if (!pointIdentifierCopy)
  {
    v48 = identifierCopy;
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    identifierCopy = v48;
  }

  v76 = 0;
  v57 = identifierCopy;
  v62 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:identifierCopy error:&v76];
  v58 = v76;
  if (!v62)
  {
    v26 = getWFActionsLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFShareActionUIKitUserInterface presentExtensionViewControllerForItems:extensionBundleIdentifier:extensionPointIdentifier:isContentManaged:]";
      *&buf[12] = 2114;
      *&buf[14] = v57;
      *&buf[22] = 2114;
      v94 = v58;
      _os_log_impl(&dword_23E342000, v26, OS_LOG_TYPE_ERROR, "%s Failed to create NSExtrension for %{public}@: %{public}@", buf, 0x20u);
    }

    [(WFShareActionUIKitUserInterface *)self finishWithExtensionItems:0 error:v58];
    goto LABEL_43;
  }

  objc_initWeak(&location, self);
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__2913;
  v73[4] = __Block_byref_object_dispose__2914;
  v74 = itemsCopy;
  v11 = v74;
  if (!itemsCopy)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray * _Nonnull WFActivityItemValuesFromContentItems(NSArray<WFContentItem *> * _Nonnull __strong)"];
    [currentHandler4 handleFailureInFunction:v51 file:@"WFShareActionUIKitUserInterface.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"contentItems"}];
  }

  v12 = objc_alloc(MEMORY[0x277D546D8]);
  v13 = [v12 initWithActivityItems:MEMORY[0x277CBEBF8] applicationActivities:0];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __WFActivityItemValuesFromContentItems_block_invoke;
  v94 = &unk_278C36C98;
  v95 = v13;
  v14 = v13;
  v15 = [v11 if_compactMap:buf];

  v16 = v15;
  v60 = pointIdentifierCopy;
  v64 = v16;
  if (!v16)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<NSExtensionItem *> * _Nonnull WFExtensionItemsForActivityItemValues(NSArray * _Nonnull __strong, NSString * _Nonnull __strong, BOOL)"}];
    [currentHandler5 handleFailureInFunction:v53 file:@"WFShareActionUIKitUserInterface.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"activityItemValues"}];

    if (pointIdentifierCopy)
    {
      goto LABEL_10;
    }

LABEL_47:
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<NSExtensionItem *> * _Nonnull WFExtensionItemsForActivityItemValues(NSArray * _Nonnull __strong, NSString * _Nonnull __strong, BOOL)"}];
    [currentHandler6 handleFailureInFunction:v55 file:@"WFShareActionUIKitUserInterface.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    goto LABEL_10;
  }

  if (!pointIdentifierCopy)
  {
    goto LABEL_47;
  }

LABEL_10:
  if ([v60 isEqualToString:*MEMORY[0x277CE8938]])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v17 = v64;
    v18 = 0;
    v19 = [v17 countByEnumeratingWithState:&v83 objects:buf count:16];
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = *v84;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v84 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v83 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        if (v18)
        {
          v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
          [v18 appendAttributedString:v24];

          if (isKindOfClass)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CCAB48]);
          if (isKindOfClass)
          {
LABEL_20:
            v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v22];
            [v18 appendAttributedString:v25];

            continue;
          }
        }

        [v18 appendAttributedString:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v83 objects:buf count:16];
      if (!v19)
      {
LABEL_25:

        goto LABEL_30;
      }
    }
  }

  v18 = 0;
LABEL_30:
  v27 = _NSExtensionItemsFromActivityItemValues();
  v28 = v27;
  if (v18)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v79 objects:v92 count:16];
    if (v30)
    {
      v31 = *v80;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v80 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v79 + 1) + 8 * j);
          if (([v64 containsObject:v33] & 1) == 0)
          {
            [v33 setAttributedContentText:v18];
            v28 = v29;
            goto LABEL_41;
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v79 objects:v92 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v34 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    [v34 setAttributedContentText:v18];
    v28 = [v29 arrayByAddingObject:v34];

    v29 = v34;
LABEL_41:
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __WFExtensionItemsForActivityItemValues_block_invoke;
  v77[3] = &__block_descriptor_33_e32_v32__0__NSExtensionItem_8Q16_B24l;
  managedCopy = managed;
  [v28 enumerateObjectsUsingBlock:v77];

  v35 = *MEMORY[0x277CCA0F8];
  v89 = v60;
  v90[0] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v90[1] = @"NSExtensionActivationRule";
  v91[0] = v36;
  v87 = @"extensionItems";
  v37 = [v28 if_compactMap:&__block_literal_global_2918];
  v88 = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  v91[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];

  v40 = MEMORY[0x277CCA9C8];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2;
  v65[3] = &unk_278C36BF8;
  v71 = v73;
  objc_copyWeak(&v72, &location);
  v41 = v39;
  v66 = v41;
  v67 = v62;
  selfCopy = self;
  v42 = v28;
  v69 = v42;
  v70 = v60;
  [v40 extensionsWithMatchingAttributes:v41 completion:v65];

  objc_destroyWeak(&v72);
  _Block_object_dispose(v73, 8);

  objc_destroyWeak(&location);
LABEL_43:

  v43 = *MEMORY[0x277D85DE8];
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = __Block_byref_object_copy__2913;
  v85[4] = __Block_byref_object_dispose__2914;
  v86 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3;
  aBlock[3] = &unk_278C36B58;
  aBlock[4] = *(a1 + 72);
  aBlock[5] = v85;
  objc_copyWeak(&v84, (a1 + 80));
  v7 = _Block_copy(aBlock);
  if (v5)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_208;
    v81[3] = &unk_278C36B80;
    v82 = *(a1 + 40);
    v8 = [v5 if_firstObjectPassingTest:v81];
    v9 = v8 == 0;

    if (v9)
    {
      v38 = *(a1 + 48);
      v39 = WFLocalizedString(@"Input Not Supported");
      v40 = WFLocalizedString(@"Selected app does not support the provided input.");
      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      *&v104 = *MEMORY[0x277CCA470];
      *(&v104 + 1) = v42;
      *buf = v39;
      *&buf[8] = v40;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v104 count:2];
      v44 = [v41 errorWithDomain:@"WFShareActionUIKitUserInterfaceErrorDomain" code:0 userInfo:v43];

      [v38 finishWithExtensionItems:0 error:v44];
LABEL_39:

      goto LABEL_40;
    }

    v10 = *(a1 + 40);
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v77 = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2_210;
    v78 = &unk_278C36BD0;
    v79 = v85;
    objc_copyWeak(&v80, (a1 + 80));
    v13 = v10;
    v14 = v12;
    v15 = v11;
    v16 = v13;
    v75 = v15;
    v17 = v7;
    v74 = v76;
    if (!v13)
    {
      v57 = [MEMORY[0x277CCA890] currentHandler];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v57 handleFailureInFunction:v58 file:@"WFShareActionUIKitUserInterface.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"extension"}];
    }

    v73 = v14;
    if (!v14)
    {
      v59 = [MEMORY[0x277CCA890] currentHandler];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v59 handleFailureInFunction:v60 file:@"WFShareActionUIKitUserInterface.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"extensionItems"}];
    }

    if (!v75)
    {
      v61 = [MEMORY[0x277CCA890] currentHandler];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v61 handleFailureInFunction:v62 file:@"WFShareActionUIKitUserInterface.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];
    }

    if (!v17)
    {
      v63 = [MEMORY[0x277CCA890] currentHandler];
      v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v63 handleFailureInFunction:v64 file:@"WFShareActionUIKitUserInterface.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"presentationCompletionBlock"}];
    }

    if (![v75 isEqualToString:*MEMORY[0x277CE8938]])
    {
      v45 = v16;
      v46 = v14;
      v47 = v17;
      v48 = v74;
      v96[0] = 0;
      v96[1] = v96;
      v96[2] = 0x2020000000;
      v97 = 0;
      *&v104 = MEMORY[0x277D85DD0];
      *(&v104 + 1) = 3221225472;
      *&v105 = __WFConfiguredViewControllerForActionExtension_block_invoke;
      *(&v105 + 1) = &unk_278C36D20;
      *(&v106 + 1) = v96;
      v49 = v47;
      *&v106 = v49;
      [v45 setRequestCompletionBlock:&v104];
      v90 = MEMORY[0x277D85DD0];
      v91 = 3221225472;
      v92 = __WFConfiguredViewControllerForActionExtension_block_invoke_2;
      v93 = &unk_278C36D48;
      v95 = v96;
      v50 = v49;
      v94 = v50;
      [v45 setRequestCancellationBlock:&v90];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __WFConfiguredViewControllerForActionExtension_block_invoke_3;
      v87[3] = &unk_278C36D70;
      v89 = v96;
      v51 = v50;
      v88 = v51;
      [v45 setRequestInterruptionBlock:v87];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __WFConfiguredViewControllerForActionExtension_block_invoke_4;
      v99 = &unk_278C36D98;
      v103 = v96;
      v52 = v51;
      v101 = v52;
      v53 = v45;
      v100 = v53;
      v54 = v48;
      v102 = v54;
      [v53 instantiateViewControllerWithInputItems:v46 connectionHandler:buf];

      _Block_object_dispose(v96, 8);
LABEL_38:

      objc_destroyWeak(&v80);
      goto LABEL_39;
    }

    v72 = v16;
    v70 = v14;
    v71 = v17;
    v69 = v74;
    if (([getSLComposeViewControllerClass() isAvailableForExtension:v72] & 1) == 0)
    {
      v18 = WFExtensionCommunicationError(0);
      v71[2](v71, 0, v18);
LABEL_37:

      goto LABEL_38;
    }

    v18 = [getSLComposeViewControllerClass() composeViewControllerForExtension:v72];
    if (!v18)
    {
      v35 = WFExtensionCommunicationError(0);
      v71[2](v71, 0, v35);
      goto LABEL_36;
    }

    v90 = MEMORY[0x277D85DD0];
    v91 = 3221225472;
    v92 = __WFConfiguredViewControllerForShareExtension_block_invoke;
    v93 = &unk_278C36CE0;
    v94 = v71;
    [v18 setCompletionHandler:&v90];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v19 = v70;
    v20 = [v19 countByEnumeratingWithState:&v104 objects:buf count:16];
    v21 = v16;
    if (v20)
    {
      v22 = *v105;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v105 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v18 addExtensionItem:*(*(&v104 + 1) + 8 * i)];
        }

        v20 = [v19 countByEnumeratingWithState:&v104 objects:buf count:16];
      }

      while (v20);
    }

    v16 = v21;
    v24 = [v72 infoDictionary];
    v25 = [v24 objectForKeyedSubscript:@"NSExtension"];

    v26 = objc_alloc(MEMORY[0x277CC1E50]);
    v27 = [v72 identifier];
    v68 = [v26 initWithBundleIdentifier:v27 error:0];

    v28 = [v68 SDKVersion];
    v29 = v28;
    v30 = @"1.0";
    if (v28)
    {
      v30 = v28;
    }

    v67 = v30;

    v31 = [v25 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
    if (([v31 BOOLValue] & 1) == 0)
    {
      v66 = [v25 objectForKeyedSubscript:@"NSExtensionAttributes"];
      v32 = [v66 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
      if (![v32 BOOLValue])
      {
        v56 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v65 = [v56 isVersion:v67 greaterThanOrEqualToVersion:@"13.0"];

        if (v65)
        {
          v33 = 0;
          v34 = -2;
          goto LABEL_28;
        }

LABEL_27:
        v33 = 1;
        v34 = 5;
LABEL_28:
        [v18 setModalPresentationStyle:v34];
        [v18 setShouldForceNonAnimatedTransition:v33];
        v77(v69, v18);

        v35 = v94;
LABEL_36:

        goto LABEL_37;
      }
    }

    goto LABEL_27;
  }

  v36 = getWFActionsLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[WFShareActionUIKitUserInterface presentExtensionViewControllerForItems:extensionBundleIdentifier:extensionPointIdentifier:isContentManaged:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2114;
    v99 = v6;
    _os_log_impl(&dword_23E342000, v36, OS_LOG_TYPE_ERROR, "%s Failed to find matching extensions for attributes %@: %{public}@", buf, 0x20u);
  }

  (*(v7 + 2))(v7, 0, v6);
LABEL_40:

  objc_destroyWeak(&v84);
  _Block_object_dispose(v85, 8);

  v55 = *MEMORY[0x277D85DE8];
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_4;
  block[3] = &unk_278C36B30;
  v12 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 48));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
}

uint64_t __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_208(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2_210(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3_211;
  v3[3] = &unk_278C36BA8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3_211(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentContent:*(*(*(a1 + 32) + 8) + 40)];
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_5;
    v8[3] = &unk_278C36B08;
    objc_copyWeak(&v11, (a1 + 64));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 dismissViewControllerAnimated:1 completion:v8];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    objc_destroyWeak(&v11);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained finishWithExtensionItems:*(a1 + 32) error:*(a1 + 40)];
  }
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained finishWithExtensionItems:*(a1 + 32) error:*(a1 + 40)];
}

@end