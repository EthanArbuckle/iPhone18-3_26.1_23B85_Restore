@interface WFShareExtensionActionUIKitUserInterface
- (id)contentItemClassesFromInputConfiguration:(id)configuration;
- (id)inputContentItemClassesFromInputConfiguration:(id)configuration;
- (void)addContentToShareController:(id)controller withInput:(id)input inputConfiguration:(id)configuration extensionUserInfo:(id)info completionHandler:(id)handler;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithContentCollection:(id)collection error:(id)error;
- (void)performActionWithInput:(id)input inputConfiguration:(id)configuration socialServiceType:(id)type extensionBundleIdentifier:(id)identifier extensionUserInfo:(id)info completionHandler:(id)handler;
@end

@implementation WFShareExtensionActionUIKitUserInterface

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFShareExtensionActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFShareExtensionActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFShareExtensionActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContentCollection:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithContentCollection:(id)collection error:(id)error
{
  collectionCopy = collection;
  errorCopy = error;
  completionHandler = [(WFShareExtensionActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFShareExtensionActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, collectionCopy, errorCopy);
  }

  [(WFShareExtensionActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (id)inputContentItemClassesFromInputConfiguration:(id)configuration
{
  v3 = [configuration objectForKey:*MEMORY[0x277CE88F8]];
  v4 = [v3 if_map:&__block_literal_global_499];

  return v4;
}

- (id)contentItemClassesFromInputConfiguration:(id)configuration
{
  v3 = [configuration objectForKey:*MEMORY[0x277CE88F0]];
  v4 = [v3 if_map:&__block_literal_global_4515];

  return v4;
}

- (void)addContentToShareController:(id)controller withInput:(id)input inputConfiguration:(id)configuration extensionUserInfo:(id)info completionHandler:(id)handler
{
  controllerCopy = controller;
  configurationCopy = configuration;
  infoCopy = info;
  handlerCopy = handler;
  v16 = *MEMORY[0x277CE8908];
  inputCopy = input;
  v18 = [configurationCopy objectForKey:v16];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke;
  aBlock[3] = &unk_278C37198;
  v19 = v18;
  v30 = v19;
  selfCopy = self;
  v20 = configurationCopy;
  v32 = v20;
  v21 = handlerCopy;
  v35 = v21;
  v22 = controllerCopy;
  v33 = v22;
  v23 = infoCopy;
  v34 = v23;
  v24 = _Block_copy(aBlock);
  v25 = [(WFShareExtensionActionUIKitUserInterface *)self contentItemClassesFromInputConfiguration:v20];
  if ([v25 count])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_6;
    v26[3] = &unk_278C371C0;
    v27 = v21;
    v28 = v24;
    [inputCopy generateCollectionByCoercingToItemClasses:v25 completionHandler:v26];

    inputCopy = v27;
  }

  else
  {
    (*(v24 + 2))(v24, inputCopy);
  }
}

void __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CE8910]])
  {
    v4 = [*(a1 + 40) inputContentItemClassesFromInputConfiguration:*(a1 + 48)];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_2;
    v26[3] = &unk_278C37120;
    v28 = *(a1 + 72);
    v27 = *(a1 + 56);
    [v3 generateCollectionByCoercingToItemClasses:v4 completionHandler:v26];

LABEL_16:
    goto LABEL_17;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CE8900]])
  {
    v4 = [*(a1 + 48) objectForKey:*MEMORY[0x277CE8930]];
    v5 = [v4 isEqualToString:*MEMORY[0x277CE8918]];
    v6 = MEMORY[0x277CE8920];
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v4 isEqualToString:*MEMORY[0x277CE8920]];
    }

    if ([v4 isEqualToString:*MEMORY[0x277CE8928]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 isEqualToString:*v6];
    }

    v9 = objc_opt_new();
    v10 = [v3 items];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_4;
    v22[3] = &unk_278C37148;
    v24 = v7;
    v11 = v9;
    v23 = v11;
    v25 = v8;
    v12 = [v10 if_compactMap:v22];

    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 bundleIdentifier];
    [v13 setObject:v15 forKey:*MEMORY[0x277CFC650]];

    [v13 setObject:v12 forKey:*MEMORY[0x277CCA0E8]];
    [v13 addEntriesFromDictionary:*(a1 + 64)];
    v16 = objc_opt_new();
    [v16 setUserInfo:v13];
    if ([v11 count])
    {
      v17 = [v11 componentsJoinedByString:@"\n"];
      v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v17];
      [v16 setAttributedContentText:v18];
    }

    v19 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 56) addExtensionItem:v16];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_5;
    block[3] = &unk_278C37170;
    v21 = *(a1 + 72);
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_16;
  }

  (*(*(a1 + 72) + 16))();
LABEL_17:
}

void __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if ([v7 numberOfItems])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_3;
    v8[3] = &unk_278C370F8;
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v6 getShareableObjectsOfTypes:15 options:1 completionHandler:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v3 string];
    [v4 addObject:v5];
  }

  if (*(a1 + 41) != 1)
  {
    v6 = 0;
  }

  else
  {
LABEL_5:
    v6 = [v3 minimalItemProvider];
  }

  return v6;
}

void __137__WFShareExtensionActionUIKitUserInterface_addContentToShareController_withInput_inputConfiguration_extensionUserInfo_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v34 = v7;
    v35 = v6;
    v36 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    v10 = a1;
    if (v9)
    {
      v11 = v9;
      v12 = *v39;
      v13 = 0x277CBE000uLL;
      v14 = 0x277CCA000uLL;
      do
      {
        v15 = 0;
        v37 = v11;
        do
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v38 + 1) + 8 * v15);
          v17 = *(v13 + 3008);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(v10 + 32) addURL:v16];
          }

          else
          {
            v18 = *(v14 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v36 addObject:v16];
            }

            else
            {
              v19 = v12;
              v20 = v10;
              v21 = v13;
              v22 = v8;
              v23 = v14;
              v24 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
              v25 = [MEMORY[0x277CFC490] typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
              v26 = [v24 conformsToType:v25];

              if (v26)
              {
                v10 = v20;
                [*(v20 + 32) addImage:v16];
                v14 = v23;
                v8 = v22;
                v13 = v21;
                v12 = v19;
                v11 = v37;
              }

              else
              {
                objc_opt_class();
                v14 = v23;
                v8 = v22;
                v13 = v21;
                v10 = v20;
                v12 = v19;
                v11 = v37;
                if (objc_opt_isKindOfClass())
                {
                  objc_setAssociatedObject(*(v20 + 32), v16, v16, 1);
                  v27 = *(v20 + 32);
                  v28 = [v16 fileURL];
                  v29 = v27;
                  v10 = v20;
                  [v29 addURL:v28];
                }
              }
            }
          }

          ++v15;
        }

        while (v11 != v15);
        v11 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    v30 = v10;
    v31 = *(v10 + 32);
    v32 = [v36 componentsJoinedByString:@"\n"];
    [v31 setInitialText:v32];

    (*(*(v30 + 40) + 16))();
    v7 = v34;
    v6 = v35;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)performActionWithInput:(id)input inputConfiguration:(id)configuration socialServiceType:(id)type extensionBundleIdentifier:(id)identifier extensionUserInfo:(id)info completionHandler:(id)handler
{
  inputCopy = input;
  configurationCopy = configuration;
  typeCopy = type;
  identifierCopy = identifier;
  infoCopy = info;
  [(WFShareExtensionActionUIKitUserInterface *)self setCompletionHandler:handler];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke;
  v24[3] = &unk_278C370D0;
  v25 = typeCopy;
  v26 = identifierCopy;
  selfCopy = self;
  v28 = inputCopy;
  v29 = configurationCopy;
  v30 = infoCopy;
  v19 = infoCopy;
  v20 = configurationCopy;
  v21 = inputCopy;
  v22 = identifierCopy;
  v23 = typeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v24);
}

void __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) length] || (objc_msgSend(getSLComposeViewControllerClass_4537(), "composeViewControllerForServiceType:", *(a1 + 32)), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (getSLComposeViewControllerClass_4537(), (objc_opt_respondsToSelector()))
    {
      v3 = *(a1 + 40);
      v15 = 0;
      v4 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:v3 error:&v15];
      v5 = v15;
      if (!v4)
      {
        [*(a1 + 48) finishWithContentCollection:0 error:v5];
        goto LABEL_9;
      }

      v2 = [getSLComposeViewControllerClass_4537() composeViewControllerForExtension:v4];
    }

    else
    {
      v2 = 0;
    }
  }

  v6 = MEMORY[0x277CCAAC8];
  v7 = *(a1 + 56);
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_2;
  v10[3] = &unk_278C370A8;
  v10[4] = *(a1 + 48);
  v11 = v2;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 32);
  v5 = v2;
  v9 = [v6 wf_securelyUnarchiveObjectWithData:v7 allowedClasses:v8 completionHandler:v10];

LABEL_9:
}

void __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_3;
  v8[3] = &unk_278C37080;
  objc_copyWeak(&v11, &location);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  [v4 addContentToShareController:v5 withInput:v3 inputConfiguration:v6 extensionUserInfo:v7 completionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_3(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v10 = WeakRetained;
  if (a2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_4;
    v15[3] = &unk_278C37030;
    v15[4] = WeakRetained;
    v16 = v7;
    [a1[4] setCompletionHandler:v15];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_5;
    block[3] = &unk_278C37058;
    v12 = a1[5];
    v13 = a1[4];
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [WeakRetained finishWithContentCollection:0 error:v8];
  }
}

void __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 32);
  if (a2)
  {

    [v5 finishWithContentCollection:0 error:0];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] userCancelledError];
    [v5 finishWithContentCollection:0 error:v6];
  }
}

uint64_t __166__WFShareExtensionActionUIKitUserInterface_performActionWithInput_inputConfiguration_socialServiceType_extensionBundleIdentifier_extensionUserInfo_completionHandler___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.social.twitter"])
  {
    [*(a1 + 40) setModalPresentationStyle:1];
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);

  return [v2 presentContent:v3];
}

@end