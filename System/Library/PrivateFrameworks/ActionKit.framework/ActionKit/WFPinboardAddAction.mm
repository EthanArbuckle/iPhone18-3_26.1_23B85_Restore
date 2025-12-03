@interface WFPinboardAddAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFPinboardAddAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add %2$@ to Pinboard?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add content to Pinboard?");
    [v7 localizedStringWithFormat:v9, nameCopy, v12];
  }
  v10 = ;

  return v10;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__WFPinboardAddAction_runAsynchronouslyWithInput___block_invoke;
  v4[3] = &unk_278C1F6B0;
  v4[4] = self;
  inputCopy = input;
  [inputCopy getObjectRepresentation:v4 forClass:objc_opt_class()];
}

void __50__WFPinboardAddAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = objc_alloc_init(WFPinboardSessionManager);
    v10 = +[WFPinboardAccessResource pinboardUsername];
    [(WFPinboardSessionManager *)v9 setUsername:v10];

    v11 = +[WFPinboardAccessResource pinboardPassword];
    [(WFPinboardSessionManager *)v9 setPassword:v11];

    v12 = +[WFPinboardAccessResource pinboardToken];
    [(WFPinboardSessionManager *)v9 setApiToken:v12];

    v13 = [*(a1 + 32) parameterValueForKey:@"WFPinTitle" ofClass:objc_opt_class()];
    if (![v13 length])
    {
      if (v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = [v7 absoluteString];
      }

      v15 = v14;

      v13 = v15;
    }

    v16 = [*(a1 + 32) parameterValueForKey:@"WFPinTags" ofClass:objc_opt_class()];
    v17 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
    v18 = [v16 componentsSeparatedByCharactersInSet:v17];
    v19 = [v18 mutableCopy];

    [v19 removeObject:&stru_2850323E8];
    v20 = objc_opt_new();
    v21 = [*(a1 + 32) parameterValueForKey:@"WFPinDescription" ofClass:objc_opt_class()];
    [v20 setValue:v21 forKey:@"extended"];

    v22 = [*(a1 + 32) parameterValueForKey:@"WFPinPublic" ofClass:objc_opt_class()];
    [v20 setValue:v22 forKey:@"shared"];

    v23 = [*(a1 + 32) parameterValueForKey:@"WFPinUnread" ofClass:objc_opt_class()];
    [v20 setValue:v23 forKey:@"toread"];

    [v20 setValue:v19 forKey:@"tags"];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__WFPinboardAddAction_runAsynchronouslyWithInput___block_invoke_2;
    v24[3] = &unk_278C1F530;
    v24[4] = *(a1 + 32);
    [(WFPinboardSessionManager *)v9 addBookmark:v7 withTitle:v13 parameters:v20 completion:v24];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a4];
  }
}

void __50__WFPinboardAddAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 domain];
  if ([v4 isEqualToString:@"WFPinboardErrorDomain"])
  {
    v5 = [v8 code];

    if (v5 != 1000)
    {
      goto LABEL_5;
    }

    v6 = [*(a1 + 32) resourceManager];
    v7 = [v6 resourceObjectsOfClass:objc_opt_class()];
    v4 = [v7 anyObject];

    [v4 logOut];
  }

LABEL_5:
  [*(a1 + 32) finishRunningWithError:v8];
}

@end