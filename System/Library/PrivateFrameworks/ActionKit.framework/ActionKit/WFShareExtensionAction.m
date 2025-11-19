@interface WFShareExtensionAction
- (id)contentItemClasses;
- (id)extensionBundleIdentifier;
- (id)extensionUserInfo;
- (id)inputConfiguration;
- (id)inputContentClasses;
- (id)inputType;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)shareExtensionDefinition;
- (id)socialServiceType;
- (id)socialTypes;
- (id)textItemHandling;
- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4;
@end

@implementation WFShareExtensionAction

- (id)extensionUserInfo
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v4 = [v3 objectForKey:@"UserInfo"];

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
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"TextItemHandling"];
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
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"SLTypes"];

  return v3;
}

- (id)inputType
{
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"InputType"];

  return v3;
}

- (id)contentItemClasses
{
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"ContentItemClasses"];

  v4 = [v3 if_flatMap:&__block_literal_global_298];

  return v4;
}

- (id)inputContentClasses
{
  v3 = [(WFShareExtensionAction *)self contentItemClasses];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFShareExtensionAction *)self inputType];
    if ([v6 isEqualToString:@"SLTypes"])
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = [(WFShareExtensionAction *)self socialTypes];
      v9 = [v7 setWithArray:v8];

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
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"ServiceType"];

  return v3;
}

- (id)extensionBundleIdentifier
{
  v2 = [(WFShareExtensionAction *)self shareExtensionDefinition];
  v3 = [v2 objectForKey:@"BundleIdentifier"];

  return v3;
}

- (id)inputConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(WFShareExtensionAction *)self inputType];

  if (v4)
  {
    v5 = [(WFShareExtensionAction *)self inputType];
    [v3 setObject:v5 forKey:@"InputType"];
  }

  v6 = [(WFShareExtensionAction *)self textItemHandling];

  if (v6)
  {
    v7 = [(WFShareExtensionAction *)self textItemHandling];
    [v3 setObject:v7 forKey:@"TextItemHandling"];
  }

  v8 = [(WFShareExtensionAction *)self inputContentClasses];

  if (v8)
  {
    v9 = [(WFShareExtensionAction *)self inputContentClasses];
    v10 = [(WFShareExtensionAction *)self stringRepresentationForClasses:v9];
    [v3 setObject:v10 forKey:@"InputContentItemClasses"];
  }

  v11 = [(WFShareExtensionAction *)self contentItemClasses];

  if (v11)
  {
    v12 = [(WFShareExtensionAction *)self contentItemClasses];
    v13 = [(WFShareExtensionAction *)self stringRepresentationForClasses:v12];
    [v3 setObject:v13 forKey:@"ContentItemClasses"];
  }

  return v3;
}

- (id)shareExtensionDefinition
{
  v2 = [(WFShareExtensionAction *)self definition];
  v3 = [v2 objectForKey:@"ShareExtension"];

  return v3;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFShareExtensionAction;
  v5 = [(WFShareExtensionAction *)&v14 localizedDescriptionSummaryWithContext:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = WFLocalizedStringResourceWithKey(@"Shares the input with %@.", @"Shares the input with %@.");
    v10 = [v4 localize:v9];
    v11 = [(WFShareExtensionAction *)self app];
    v12 = [v11 localizedName];
    v7 = [v8 localizedStringWithFormat:v10, v12];
  }

  return v7;
}

- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 numberOfItems])
  {
    v8 = [MEMORY[0x277CCAAB0] wf_securelyArchivedDataWithRootObject:v7];
    v9 = [(WFShareExtensionAction *)self inputConfiguration];
    v10 = [(WFShareExtensionAction *)self socialServiceType];
    v11 = [(WFShareExtensionAction *)self extensionBundleIdentifier];
    v12 = [(WFShareExtensionAction *)self extensionUserInfo];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__WFShareExtensionAction_runWithRemoteUserInterface_input___block_invoke;
    v13[3] = &unk_278C21E70;
    v13[4] = self;
    [v6 performActionWithInput:v8 inputConfiguration:v9 socialServiceType:v10 extensionBundleIdentifier:v11 extensionUserInfo:v12 completionHandler:v13];
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