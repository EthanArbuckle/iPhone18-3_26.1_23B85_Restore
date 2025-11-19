@interface INUIAppIntentForwardingActionExecutor
- (INUIAppIntentForwardingActionExecutor)initWithApplication:(id)a3;
- (void)executeAction:(id)a3 completionHandler:(id)a4;
- (void)intentDeliverer:(id)a3 deliverIntent:(id)a4 withBlock:(id)a5;
@end

@implementation INUIAppIntentForwardingActionExecutor

- (void)intentDeliverer:(id)a3 deliverIntent:(id)a4 withBlock:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(UIApplication *)self->_application delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UIApplication *)self->_application delegate];
    v11 = [v10 application:self->_application handlerForIntent:v13];
    handlerForIntent = self->_handlerForIntent;
    self->_handlerForIntent = v11;
  }

  v7[2](v7, self->_handlerForIntent);
}

- (void)executeAction:(id)a3 completionHandler:(id)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(INUIAppIntentForwardingActionExecutor *)self application];
  v9 = [v8 delegate];
  v10 = [v6 intentForwardingAction];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v11 = getWFOnScreenContentExtractorClass_softClass;
    v46 = getWFOnScreenContentExtractorClass_softClass;
    if (!getWFOnScreenContentExtractorClass_softClass)
    {
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __getWFOnScreenContentExtractorClass_block_invoke;
      v41 = &unk_27872BE58;
      v42 = &v43;
      __getWFOnScreenContentExtractorClass_block_invoke(&v38);
      v11 = v44[3];
    }

    v12 = v11;
    _Block_object_dispose(&v43, 8);
    v13 = objc_alloc_init(v11);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke;
    v36[3] = &unk_27872B960;
    v37 = v7;
    [v13 handleAction:v10 completionHandler:v36];
  }

  else
  {

    if (objc_opt_respondsToSelector())
    {
      v14 = [v6 intentForwardingAction];
      v15 = [objc_alloc(MEMORY[0x277CD3A80]) initWithDelegate:self];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_2;
      v34[3] = &unk_27872B988;
      v34[4] = self;
      v35 = v7;
      [v15 dispatchIntentForwardingAction:v14 completionHandler:v34];
    }

    else if (objc_opt_respondsToSelector())
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      LOBYTE(v41) = 0;
      v16 = [v6 intentForwardingAction];
      v17 = [v16 intent];
      v18 = INTypedIntentWithIntent();

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_3;
      v31[3] = &unk_27872B9B0;
      v33 = &v38;
      v32 = v7;
      [v9 application:v8 handleIntent:v18 completionHandler:v31];

      _Block_object_dispose(&v38, 8);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA068];
      v20 = MEMORY[0x277CCACA8];
      v21 = [v6 intentForwardingAction];
      v22 = [v21 intent];
      v23 = [v20 stringWithFormat:@"Missing intent handler for %@", objc_opt_class()];
      v48[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v25 = [v19 errorWithDomain:*MEMORY[0x277CD3848] code:2003 userInfo:v24];

      v26 = [v6 intentForwardingAction];
      v27 = objc_opt_class();

      v28 = [objc_alloc(objc_msgSend(v27 "responseClass"))];
      v29 = [MEMORY[0x277D75610] responseWithIntentForwardingActionResponse:v28];
      (*(v7 + 2))(v7, v29);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75610];
  v4 = a2;
  v5 = [[v3 alloc] initWithIntentForwardingActionResponse:v4];

  (*(*(a1 + 32) + 16))();
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277D75610] responseWithIntentForwardingActionResponse:a2];
  (*(v2 + 16))(v2, v3);
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = INIntentResponseWithTypedIntentResponse();
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D75610];
  v4 = [objc_alloc(MEMORY[0x277CD3CB8]) initWithIntentResponse:v6 launchContextActivityData:0 cacheItems:0 error:0];
  v5 = [v3 responseWithIntentForwardingActionResponse:v4];
  (*(v2 + 16))(v2, v5);
}

- (INUIAppIntentForwardingActionExecutor)initWithApplication:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INUIAppIntentForwardingActionExecutor;
  v6 = [(INUIAppIntentForwardingActionExecutor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, a3);
  }

  return v7;
}

@end