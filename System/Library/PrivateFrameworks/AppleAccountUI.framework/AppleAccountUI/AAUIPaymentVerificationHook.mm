@interface AAUIPaymentVerificationHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_validatePaymentVerificationWithServerAttributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)_validatePaymentVerificationWithTokenFetchTask:(id)task objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIPaymentVerificationHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"ams:paymentVerification"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:*MEMORY[0x1E69C7058]];
  v5 = [v4 isEqualToString:@"ams:paymentVerification"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  [(AAUIPaymentVerificationHook *)self _validatePaymentVerificationWithServerAttributes:clientInfo objectModel:modelCopy completion:completionCopy];
}

- (void)_validatePaymentVerificationWithServerAttributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  completionCopy = completion;
  modelCopy = model;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = attributesCopy;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Payment Verification invoked : %@", &v12, 0xCu);
  }

  [(AAUIPaymentVerificationHook *)self _validatePaymentVerificationWithTokenFetchTask:attributesCopy objectModel:modelCopy completion:completionCopy];
}

- (void)_validatePaymentVerificationWithTokenFetchTask:(id)task objectModel:(id)model completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  modelCopy = model;
  completionCopy = completion;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Using AMSUIPaymentVerificationTokenFetchTask as fallback", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke;
  block[3] = &unk_1E820BEB8;
  v12 = modelCopy;
  v38 = v12;
  v13 = taskCopy;
  v39 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v13;
    _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Payment Verification invoked : %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained presentationContextForHook:self];

  v17 = MEMORY[0x1E698C7D8];
  bagSubProfile = [getAMSUIPaymentVerificationTokenFetchTaskClass() bagSubProfile];
  bagSubProfileVersion = [getAMSUIPaymentVerificationTokenFetchTaskClass() bagSubProfileVersion];
  v20 = [v17 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v21 = objc_alloc(getAMSUIPaymentVerificationTokenFetchTaskClass());
  v22 = [v13 objectForKeyedSubscript:@"verificationMode"];
  integerValue = [v22 integerValue];
  v24 = [v13 objectForKeyedSubscript:@"accountName"];
  v25 = [v21 initWithMode:integerValue accountParameters:v13 viewController:v16 bag:v20 displayName:v24];

  performTask = [v25 performTask];
  if (performTask)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_2;
    v31[3] = &unk_1E820D220;
    v27 = v32;
    v32[0] = v12;
    v32[1] = self;
    v33 = completionCopy;
    [performTask addFinishBlock:v31];
    v28 = v33;
  }

  else
  {
    v29 = _AAUILogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [AAUIPaymentVerificationHook _validatePaymentVerificationWithTokenFetchTask:v29 objectModel:? completion:?];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_41;
    v34[3] = &unk_1E820B780;
    v27 = &v35;
    v35 = v12;
    v36 = completionCopy;
    v30 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v34);

    v28 = v36;
  }
}

void __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_41(uint64_t a1)
{
  [*(a1 + 32) stopActivityIndicator];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
    (*(v2 + 16))(v2, 0, v3);
  }
}

void __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 tokenData];
    v9 = @"YES";
    if (!v8)
    {
      v9 = @"NO";
    }

    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "PaymentVerificationTokenFetch retuned with token %@ error : %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_49;
  block[3] = &unk_1E820CEB0;
  v14 = *(a1 + 32);
  v15 = v5;
  v10 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __101__AAUIPaymentVerificationHook__validatePaymentVerificationWithTokenFetchTask_objectModel_completion___block_invoke_49(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stopActivityIndicator];
  v2 = [*(a1 + 40) tokenData];

  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C7038]);
    [*(a1 + 48) setServerHookResponse:v3];

    v10 = @"token";
    v4 = [*(a1 + 40) tokenData];
    v5 = [v4 base64EncodedStringWithOptions:0];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [*(a1 + 48) serverHookResponse];
    [v7 setAdditionalPayload:v6];

    result = *(a1 + 64);
    if (result)
    {
      return (*(result + 16))(result, 1, 0);
    }
  }

  else
  {
    result = *(a1 + 64);
    if (result)
    {
      v9 = *(result + 16);

      return v9();
    }
  }

  return result;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end