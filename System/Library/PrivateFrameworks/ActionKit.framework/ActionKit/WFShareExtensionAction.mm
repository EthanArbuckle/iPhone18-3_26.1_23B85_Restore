@interface WFShareExtensionAction
- (id)contentItemClasses;
- (id)extensionBundleIdentifier;
- (id)extensionUserInfo;
- (id)inputConfiguration;
- (id)inputContentClasses;
- (id)inputType;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)shareExtensionDefinition;
- (id)socialServiceType;
- (id)socialTypes;
- (id)textItemHandling;
- (void)runWithRemoteUserInterface:(id)interface input:(id)input;
@end

@implementation WFShareExtensionAction

- (id)extensionUserInfo
{
  v28 = *MEMORY[0x277D85DE8];
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v4 = [shareExtensionDefinition objectForKey:@"UserInfo"];

  if (v4)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 objectForKey:@"ParameterKey"];
          v11 = [v9 objectForKey:@"DestinationKey"];
          v12 = [v9 objectForKey:@"ItemClass"];
          v13 = NSClassFromString(v12);

          v14 = [(WFShareExtensionAction *)self parameterValueForKey:v10 ofClass:v13];
          if (v14)
          {
            v15 = [v9 objectForKey:@"ValueMapping"];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 objectForKey:v14];
              [v22 setObject:v17 forKey:v11];
            }

            else
            {
              [v22 setObject:v14 forKey:v11];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v4 = v20;
  }

  else
  {
    v22 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)textItemHandling
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"TextItemHandling"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"ItemProvider";
  }

  v6 = v5;

  return v5;
}

- (id)socialTypes
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"SLTypes"];

  return v3;
}

- (id)inputType
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"InputType"];

  return v3;
}

- (id)contentItemClasses
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"ContentItemClasses"];

  v4 = [v3 if_flatMap:&__block_literal_global_298];

  return v4;
}

- (id)inputContentClasses
{
  contentItemClasses = [(WFShareExtensionAction *)self contentItemClasses];
  v4 = contentItemClasses;
  if (contentItemClasses)
  {
    v5 = contentItemClasses;
  }

  else
  {
    inputType = [(WFShareExtensionAction *)self inputType];
    if ([inputType isEqualToString:@"SLTypes"])
    {
      v7 = MEMORY[0x277CBEB98];
      socialTypes = [(WFShareExtensionAction *)self socialTypes];
      v9 = [v7 setWithArray:socialTypes];

      v5 = objc_opt_new();
      if ([v9 containsObject:@"Text"])
      {
        [v5 addObject:objc_opt_class()];
      }

      if ([v9 containsObject:@"URL"])
      {
        [v5 addObject:objc_opt_class()];
      }

      if ([v9 containsObject:@"Image"])
      {
        [v5 addObject:objc_opt_class()];
      }

      if ([v9 containsObject:@"File"])
      {
        [v5 addObject:objc_opt_class()];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)socialServiceType
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"ServiceType"];

  return v3;
}

- (id)extensionBundleIdentifier
{
  shareExtensionDefinition = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [shareExtensionDefinition objectForKey:@"BundleIdentifier"];

  return v3;
}

- (id)inputConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  inputType = [(WFShareExtensionAction *)self inputType];

  if (inputType)
  {
    inputType2 = [(WFShareExtensionAction *)self inputType];
    [v3 setObject:inputType2 forKey:@"InputType"];
  }

  textItemHandling = [(WFShareExtensionAction *)self textItemHandling];

  if (textItemHandling)
  {
    textItemHandling2 = [(WFShareExtensionAction *)self textItemHandling];
    [v3 setObject:textItemHandling2 forKey:@"TextItemHandling"];
  }

  inputContentClasses = [(WFShareExtensionAction *)self inputContentClasses];

  if (inputContentClasses)
  {
    inputContentClasses2 = [(WFShareExtensionAction *)self inputContentClasses];
    v10 = [(WFShareExtensionAction *)self stringRepresentationForClasses:inputContentClasses2];
    [v3 setObject:v10 forKey:@"InputContentItemClasses"];
  }

  contentItemClasses = [(WFShareExtensionAction *)self contentItemClasses];

  if (contentItemClasses)
  {
    contentItemClasses2 = [(WFShareExtensionAction *)self contentItemClasses];
    v13 = [(WFShareExtensionAction *)self stringRepresentationForClasses:contentItemClasses2];
    [v3 setObject:v13 forKey:@"ContentItemClasses"];
  }

  return v3;
}

- (id)shareExtensionDefinition
{
  definition = [(WFShareExtensionAction *)self definition];
  v3 = [definition objectForKey:@"ShareExtension"];

  return v3;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = WFShareExtensionAction;
  v5 = [(WFShareExtensionAction *)&v14 localizedDescriptionSummaryWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = WFLocalizedStringResourceWithKey(@"Shares the input with %@.", @"Shares the input with %@.");
    v10 = [contextCopy localize:v9];
    v11 = [(WFShareExtensionAction *)self app];
    localizedName = [v11 localizedName];
    v7 = [v8 localizedStringWithFormat:v10, localizedName];
  }

  return v7;
}

- (void)runWithRemoteUserInterface:(id)interface input:(id)input
{
  interfaceCopy = interface;
  inputCopy = input;
  if ([inputCopy numberOfItems])
  {
    v8 = [MEMORY[0x277CCAAB0] wf_securelyArchivedDataWithRootObject:inputCopy];
    inputConfiguration = [(WFShareExtensionAction *)self inputConfiguration];
    socialServiceType = [(WFShareExtensionAction *)self socialServiceType];
    extensionBundleIdentifier = [(WFShareExtensionAction *)self extensionBundleIdentifier];
    extensionUserInfo = [(WFShareExtensionAction *)self extensionUserInfo];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__WFShareExtensionAction_runWithRemoteUserInterface_input___block_invoke;
    v13[3] = &unk_278C21E70;
    v13[4] = self;
    [interfaceCopy performActionWithInput:v8 inputConfiguration:inputConfiguration socialServiceType:socialServiceType extensionBundleIdentifier:extensionBundleIdentifier extensionUserInfo:extensionUserInfo completionHandler:v13];
  }

  else
  {
    [(WFShareExtensionAction *)self finishRunningWithError:0];
  }
}

void __59__WFShareExtensionAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end