@interface ICUlyssesGetSheetAction
- (id)outputContentClasses;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ICUlyssesGetSheetAction

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
  v19[3] = &unk_278C1C568;
  v20 = handlerCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_3;
  v17[3] = &unk_278C20008;
  v18 = errorHandlerCopy;
  v16.receiver = self;
  v16.super_class = ICUlyssesGetSheetAction;
  v14 = errorHandlerCopy;
  v15 = handlerCopy;
  [(WFInterchangeSchemeAction *)&v16 performActionWithInput:input parameters:parameters userInterface:interface successHandler:v19 errorHandler:v17];
}

void __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  if (!a2 || a3)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2;
    v6[3] = &unk_278C1EB88;
    v7 = *(a1 + 32);
    [a2 getStringRepresentation:v6];
  }
}

void __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 code] == 4)
  {
    v4 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
    [v4 removeObjectForKey:@"WFUlyssesAccessToken"];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"WFUlyssesAccessResourceAvailabilityChangedNotification" object:0];

    v11[0] = *MEMORY[0x277CCA470];
    v6 = WFLocalizedString(@"Ulysses Access Required");
    v12[0] = v6;
    v11[1] = *MEMORY[0x277CCA450];
    v7 = WFLocalizedString(@"Please re-authorize Shortcuts with Ulysses to access this sheet.");
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CF38] code:0 userInfo:v8];

    v3 = v9;
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __103__ICUlyssesGetSheetAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dataUsingEncoding:4];
    if ([v6 length])
    {
      v16 = v5;
      v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v16];
      v8 = v16;

      if (v7)
      {
        v15 = v8;
        v9 = [MEMORY[0x277D7C070] modelOfClass:objc_opt_class() fromJSONDictionary:v7 error:&v15];
        v5 = v15;

        if (v9)
        {
          v10 = MEMORY[0x277CFC2E0];
          v11 = [MEMORY[0x277CFC2F8] itemWithObject:v9];
          v17[0] = v11;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
          v13 = [v10 collectionWithItems:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
        v9 = 0;
        v5 = v8;
      }
    }

    else
    {
      v13 = 0;
      v9 = 0;
      v7 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)outputContentClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end