@interface WFNotificationAction
- (id)actionAlert;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getNotificationAttachmentsWithInput:(id)input completionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFNotificationAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to display %2$@ in a notification?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to display notifications?");
    [v7 localizedStringWithFormat:v9, nameCopy, v12];
  }
  v10 = ;

  return v10;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  if (!objc_opt_class())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNotificationAction.m" lineNumber:97 description:@"UNUserNotificationCenter is not available"];
  }

  v5 = [(WFNotificationAction *)self parameterValueForKey:@"WFInput" ofClass:objc_opt_class()];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CFC2E0]);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WFNotificationAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_278C1B868;
  v7[4] = self;
  [(WFNotificationAction *)self getNotificationAttachmentsWithInput:v5 completionHandler:v7];
}

void __51__WFNotificationAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setAttachments:v3];

  v5 = [*(a1 + 32) actionAlert];
  [v4 setShouldIgnoreDoNotDisturb:1];
  v6 = [v5 title];
  [v4 setSubtitle:v6];

  v7 = [v5 body];
  [v4 setBody:v7];

  v8 = [*(a1 + 32) parameterValueForKey:@"WFNotificationActionSound" ofClass:objc_opt_class()];
  if ([v8 BOOLValue])
  {
    v9 = [MEMORY[0x277CE1FE0] defaultSound];
    [v4 setSound:v9];
  }

  else
  {
    [v4 setSound:0];
  }

  v10 = [*(a1 + 32) workflow];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];

    v13 = [MEMORY[0x277CFC538] proposedTemporaryFileURLForFilename:v12];
    v14 = [v10 reference];
    v15 = [MEMORY[0x277D79F18] currentDevice];
    [v15 screenScale];
    v17 = [v14 attributionIconWithSize:0 scale:38.0 rounded:{38.0, v16}];

    v18 = [v17 PNGRepresentation];
    [v18 writeToURL:v13 atomically:0];

    v19 = [v10 reference];
    v20 = [v19 attributionTitle];
    [v4 setTitle:v20];

    v21 = MEMORY[0x277CE1FB0];
    v22 = [v13 path];
    v23 = [v21 iconAtPath:v22];
    [v4 setIcon:v23];

    v24 = MEMORY[0x277CCACA8];
    v25 = [v10 workflowID];
    v26 = [v24 stringWithFormat:@"workflow-identifier:%@", v25];
    [v4 setThreadIdentifier:v26];
  }

  v27 = MEMORY[0x277CE1FC0];
  v28 = [MEMORY[0x277CCAD78] UUID];
  v29 = [v28 UUIDString];
  v30 = [v27 requestWithIdentifier:v29 content:v4 trigger:0];

  v31 = WFWorkflowUserNotificationCenter();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__WFNotificationAction_runAsynchronouslyWithInput___block_invoke_2;
  v32[3] = &unk_278C221F8;
  v32[4] = *(a1 + 32);
  [v31 addNotificationRequest:v30 withCompletionHandler:v32];
}

- (id)actionAlert
{
  v3 = [(WFNotificationAction *)self parameterValueForKey:@"WFNotificationActionTitle" ofClass:objc_opt_class()];
  v4 = [(WFNotificationAction *)self parameterValueForKey:@"WFNotificationActionBody" ofClass:objc_opt_class()];
  v5 = [[WFNotificationActionAlert alloc] initWithTitle:v3 body:v4];

  return v5;
}

- (void)getNotificationAttachmentsWithInput:(id)input completionHandler:(id)handler
{
  v26[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  inputCopy = input;
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v8 = MEMORY[0x277CFC2A0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke;
  v21[3] = &unk_278C1EE80;
  v22 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 requestForCoercingToContentClasses:v7 completionHandler:v21];
  v11 = MEMORY[0x277CBEB70];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 orderedSetWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = MEMORY[0x277CFC298];
  v16 = *MEMORY[0x277CFC600];
  v23 = v14;
  v24 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v25 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v19 = [v15 optionsWithDictionary:v18];
  [v10 setOptions:v19];

  [inputCopy performCoercion:v10];
  v20 = *MEMORY[0x277D85DE8];
}

void __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfItems])
  {
    v4 = [v3 items];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke_3;
    v5[3] = &unk_278C20490;
    v6 = *(a1 + 32);
    [v4 if_flatMapAsynchronously:&__block_literal_global_17842 completionHandler:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = a2;
  v4 = [v3 if_compactMap:&__block_literal_global_186];
  (*(*(a1 + 32) + 16))();
}

void __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = [v5 preferredFileType];
  if ([v7 conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v8 = *MEMORY[0x277CE1D88];
    v14[0] = *MEMORY[0x277CE1DC0];
    v14[1] = v8;
    v14[2] = *MEMORY[0x277CE1E10];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    if (([v7 conformsToUTTypes:v9] & 1) == 0)
    {
      v10 = MEMORY[0x277D79F68];
      v11 = [v9 firstObject];
      v12 = [v10 typeWithUTType:v11];

      v7 = v12;
    }
  }

  [v5 getFileRepresentations:v6 forType:v7];

  v13 = *MEMORY[0x277D85DE8];
}

id __78__WFNotificationAction_getNotificationAttachmentsWithInput_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CFC538];
  v4 = [v2 filename];
  v5 = [v3 proposedTemporaryFileURLForFilename:v4];

  [v2 writeToFileURL:v5 overwriting:0 error:0];
  v6 = MEMORY[0x277CE1F90];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v13 = 0;
  v9 = [v6 attachmentWithIdentifier:v8 URL:v5 options:0 error:&v13];
  v10 = v13;

  if (!v9)
  {
    NSLog(&cfstr_Wfnotification_2.isa, v2, v10);
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    [v11 removeItemAtURL:v5 error:0];
  }

  return v9;
}

@end