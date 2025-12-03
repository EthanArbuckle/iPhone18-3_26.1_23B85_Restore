@interface WFOpenInAction
+ (id)userInterfaceXPCInterface;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (id)inputContentClasses;
- (id)selectedApp;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)openContentInSelectedApp:(id)app;
- (void)openContentUsingDefaultApp:(id)app;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runWithRemoteUserInterface:(id)interface input:(id)input;
- (void)updateContentClasses;
@end

@implementation WFOpenInAction

+ (id)userInterfaceXPCInterface
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFOpenInAction;
  v2 = objc_msgSendSuper2(&v5, sel_userInterfaceXPCInterface);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_showWithFile_contentManaged_completionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  nameCopy = name;
  destinationCopy = destination;
  v10 = [descriptionCopy length];
  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = WFLocalizedString(@"Allow “%1$@” to open “%2$@” with %3$@?");
    [v11 localizedStringWithFormat:v12, nameCopy, destinationCopy, descriptionCopy];
  }

  else
  {
    v12 = WFLocalizedString(@"Allow “%1$@” to open “%2$@”?");
    [v11 localizedStringWithFormat:v12, nameCopy, destinationCopy, v15];
  }
  v13 = ;

  return v13;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFOpenInAction *)self input];
  v6 = handlerCopy;
  WFGetContentLocationFromURLActionInput();
}

void __61__WFOpenInAction_getContentDestinationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) input];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__WFOpenInAction_getContentDestinationWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_278C21AE8;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 getFileRepresentations:v7 forType:0];
  }
}

void __61__WFOpenInAction_getContentDestinationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = v5;
  if (!a3)
  {
    if ([v5 count])
    {
      v7 = [v19 if_firstObjectPassingTest:&__block_literal_global_568];

      if (v7)
      {
        v8 = *(a1 + 40);
        v9 = [MEMORY[0x277CFC318] webpagesLocation];
LABEL_8:
        v11 = v9;
        (*(v8 + 16))(v8, v9, 0);

        goto LABEL_14;
      }

      v10 = [v19 if_firstObjectPassingTest:&__block_literal_global_574];

      if (v10)
      {
        v8 = *(a1 + 40);
        v9 = [MEMORY[0x277CFC318] javaScript];
        goto LABEL_8;
      }

      v12 = [*(a1 + 32) parameterValueForKey:@"WFOpenInAskWhenRun" ofClass:objc_opt_class()];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = [*(a1 + 32) selectedApp];

        if (v14)
        {
          v15 = MEMORY[0x277CFC238];
          v16 = *(a1 + 40);
          v17 = [*(a1 + 32) selectedApp];
          v18 = [v15 locationWithAppDescriptor:v17];
          (*(v16 + 16))(v16, v18, 0);

          goto LABEL_14;
        }
      }
    }

    v6 = *(*(a1 + 40) + 16);
    goto LABEL_13;
  }

  v6 = *(*(a1 + 40) + 16);
LABEL_13:
  v6();
LABEL_14:
}

uint64_t __61__WFOpenInAction_getContentDestinationWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mappedDataWithError:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 data];
  }

  v6 = v5;

  v7 = [MEMORY[0x277CCACA8] wf_stringWithData:v6];
  v8 = [MEMORY[0x277CFC418] htmlStringContainsJavaScript:v7];

  return v8;
}

uint64_t __61__WFOpenInAction_getContentDestinationWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 fileURL];
  v3 = [v2 pathExtension];
  v4 = [v3 lowercaseString];
  v5 = [v4 hasSuffix:@"loc"];

  return v5;
}

- (id)selectedApp
{
  v3 = objc_opt_class();

  return [(WFOpenInAction *)self parameterValueForKey:@"WFSelectedApp" ofClass:v3];
}

- (id)inputContentClasses
{
  contentClasses = self->_contentClasses;
  if (!contentClasses)
  {
    [(WFOpenInAction *)self updateContentClasses];
    contentClasses = self->_contentClasses;
  }

  if ([(NSArray *)contentClasses count])
  {
    inputContentClasses = self->_contentClasses;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFOpenInAction;
    inputContentClasses = [(WFOpenInAction *)&v6 inputContentClasses];
  }

  return inputContentClasses;
}

- (void)updateContentClasses
{
  v24 = *MEMORY[0x277D85DE8];
  selectedApp = [(WFOpenInAction *)self selectedApp];
  documentTypes = [selectedApp documentTypes];
  v5 = [documentTypes if_compactMap:&__block_literal_global_11334];

  if ([v5 count])
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          mEMORY[0x277CFC308] = [MEMORY[0x277CFC308] sharedRegistry];
          v14 = [mEMORY[0x277CFC308] contentItemClassForType:v12];

          if (v14)
          {
            [v6 addObject:v14];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    array = [v6 array];
    contentClasses = self->_contentClasses;
    self->_contentClasses = array;
  }

  else
  {
    v17 = self->_contentClasses;
    self->_contentClasses = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"WFSelectedApp"])
  {
    v8 = stateCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    value = [v10 value];

    bundleIdentifier = [value bundleIdentifier];
    [(WFOpenInAction *)self setSupplementalParameterValue:bundleIdentifier forKey:@"WFOpenInAppIdentifier"];
  }

  v15.receiver = self;
  v15.super_class = WFOpenInAction;
  v13 = [(WFOpenInAction *)&v15 setParameterState:stateCopy forKey:keyCopy];
  if (v13)
  {
    [(WFOpenInAction *)self updateContentClasses];
  }

  return v13;
}

- (void)openContentUsingDefaultApp:(id)app
{
  v4 = MEMORY[0x277CCAA00];
  appCopy = app;
  defaultManager = [v4 defaultManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__WFOpenInAction_openContentUsingDefaultApp___block_invoke;
  v8[3] = &unk_278C1A628;
  v8[4] = self;
  v9 = defaultManager;
  v7 = defaultManager;
  [appCopy getFileRepresentationAndAttributionSet:v8 forType:0];
}

void __45__WFOpenInAction_openContentUsingDefaultApp___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 fileURL];
    v9 = [v8 path];

    if ([*(a1 + 40) fileExistsAtPath:v9])
    {
      v10 = MEMORY[0x277D7C068];
      v11 = [v7 fileURL];
      v12 = [v10 documentWithURL:v11];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __45__WFOpenInAction_openContentUsingDefaultApp___block_invoke_2;
      v20[3] = &unk_278C1A600;
      v13 = v7;
      v14 = *(a1 + 32);
      v21 = v13;
      v22 = v14;
      [v12 openInDefaultAppWithCompletionHandler:v20];
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA050];
      v23 = *MEMORY[0x277CCA170];
      v17 = [v7 fileURL];
      v24[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v12 = [v15 errorWithDomain:v16 code:4 userInfo:v18];

      [*(a1 + 32) finishRunningWithError:v12];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a4];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __45__WFOpenInAction_openContentUsingDefaultApp___block_invoke_2(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA5B8];
    v12 = *MEMORY[0x277CCA450];
    v6 = MEMORY[0x277CCACA8];
    v7 = WFLocalizedString(@"Could not open the file %1$@.");
    v8 = [*(a1 + 32) filename];
    v9 = [v6 localizedStringWithFormat:v7, v8, v12];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v3 = [v4 errorWithDomain:v5 code:79 userInfo:v10];
  }

  [*(a1 + 40) finishRunningWithError:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)openContentInSelectedApp:(id)app
{
  appCopy = app;
  selectedApp = [(WFOpenInAction *)self selectedApp];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__WFOpenInAction_openContentInSelectedApp___block_invoke;
  v8[3] = &unk_278C1A5D8;
  v8[4] = self;
  v9 = selectedApp;
  v10 = appCopy;
  v6 = appCopy;
  v7 = selectedApp;
  [v6 getFileRepresentationAndAttributionSet:v8 forType:0];
}

void __43__WFOpenInAction_openContentInSelectedApp___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (a1[5])
    {
      v10 = [a1[6] attributionSet];
      v11 = [v10 isEligibleToShareWithResultManagedLevel:0];

      if (v11)
      {
        v12 = MEMORY[0x277D7C068];
        v13 = [v7 fileURL];
        v14 = [v12 documentWithURL:v13 annotation:0];

        v15 = [a1[5] bundleIdentifier];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __43__WFOpenInAction_openContentInSelectedApp___block_invoke_2;
        v29[3] = &unk_278C1FF80;
        v30 = a1[5];
        v16 = v7;
        v17 = a1[4];
        v31 = v16;
        v32 = v17;
        [v14 openWithAppBundleIdentifier:v15 completionHandler:v29];
      }

      else
      {
        v24 = a1[4];
        v25 = MEMORY[0x277CCA9B8];
        v26 = [v24 localizedName];
        v27 = [v25 sharingMixedMDMContentErrorWithActionName:v26];
        [v24 finishRunningWithError:v27];
      }
    }

    else
    {
      v18 = a1[4];
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D7CB30];
      v33 = *MEMORY[0x277CCA450];
      v21 = WFLocalizedString(@"Open In… failed because it couldn’t find an app to open in.");
      v34[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v23 = [v19 errorWithDomain:v20 code:5 userInfo:v22];
      [v18 finishRunningWithError:v23];
    }
  }

  else
  {
    [a1[4] finishRunningWithError:v9];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __43__WFOpenInAction_openContentInSelectedApp___block_invoke_2(id *a1, char a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA5B8];
    v13 = *MEMORY[0x277CCA450];
    v6 = MEMORY[0x277CCACA8];
    v7 = WFLocalizedString(@"%1$@ is not installed or could not open the file %2$@.");
    v8 = [a1[4] localizedName];
    v9 = [a1[5] filename];
    v10 = [v6 localizedStringWithFormat:v7, v8, v9];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v3 = [v4 errorWithDomain:v5 code:79 userInfo:v11];
  }

  [a1[6] finishRunningWithError:v3];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)runWithRemoteUserInterface:(id)interface input:(id)input
{
  interfaceCopy = interface;
  inputCopy = input;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__WFOpenInAction_runWithRemoteUserInterface_input___block_invoke;
  v10[3] = &unk_278C1A5D8;
  v10[4] = self;
  v11 = inputCopy;
  v12 = interfaceCopy;
  v8 = interfaceCopy;
  v9 = inputCopy;
  [v9 getFileRepresentationAndAttributionSet:v10 forType:0];
}

void __51__WFOpenInAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 fileURL];
    v6 = *MEMORY[0x277D7A2F0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__WFOpenInAction_runWithRemoteUserInterface_input___block_invoke_2;
    v9[3] = &unk_278C1A5B0;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 48);
    [WFFileStorageServiceResult getResultWithFileURL:v5 consumingBundleID:v6 resultBlock:v9];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 finishRunningWithError:a4];
  }
}

void __51__WFOpenInAction_runWithRemoteUserInterface_input___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v14 = 0;
    v6 = [*(a1 + 40) attributionSet];
    v7 = [v6 isEligibleToShareWithResultManagedLevel:&v14];

    if (v7)
    {
      v8 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __51__WFOpenInAction_runWithRemoteUserInterface_input___block_invoke_3;
      v13[3] = &unk_278C221F8;
      v13[4] = *(a1 + 32);
      [v8 showWithFile:v5 contentManaged:v14 == 2 completionHandler:v13];
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = MEMORY[0x277CCA9B8];
      v11 = [v9 localizedName];
      v12 = [v10 sharingMixedMDMContentErrorWithActionName:v11];
      [v9 finishRunningWithError:v12];
    }
  }
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFOpenInAction *)self parameterValueForKey:@"WFOpenInAskWhenRun" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v8.receiver = self;
    v8.super_class = WFOpenInAction;
    [(WFOpenInAction *)&v8 runAsynchronouslyWithInput:inputCopy];
  }

  else
  {
    v7 = [(WFOpenInAction *)self parameterValueForKey:@"WFSelectedApp" ofClass:objc_opt_class()];
    if (v7)
    {
      [(WFOpenInAction *)self openContentInSelectedApp:inputCopy];
    }

    else
    {
      [(WFOpenInAction *)self openContentUsingDefaultApp:inputCopy];
    }
  }
}

@end