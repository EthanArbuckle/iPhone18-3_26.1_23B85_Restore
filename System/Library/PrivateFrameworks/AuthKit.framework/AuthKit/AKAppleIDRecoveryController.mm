@interface AKAppleIDRecoveryController
- (id)_nextStepForResponse:(id)a3;
- (void)_beginAccountRecoveryWithModel:(id)a3 completion:(id)a4;
- (void)_logResponse:(id)a3;
- (void)_processNextStep:(id)a3 response:(id)a4 model:(id)a5 completion:(id)a6;
- (void)_processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5;
- (void)beginAccountRecoveryWithModel:(id)a3 completion:(id)a4;
@end

@implementation AKAppleIDRecoveryController

- (void)beginAccountRecoveryWithModel:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKAppleIDRecoveryController *)v7 _beginAccountRecoveryWithModel:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginAccountRecoveryWithModel:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = [location[0] configuration];
  if (v27)
  {
    v4 = [v27 request];
    v22 = [v4 mutableCopy];
    MEMORY[0x1E69E5920](v4);
    [v22 setHTTPMethod:@"GET"];
    v5 = [location[0] cliUtilities];
    [v5 signXMLRequest:v22];
    MEMORY[0x1E69E5920](v5);
    v6 = [v27 resourceLoadDelegate];
    [v6 signRequest:v22];
    MEMORY[0x1E69E5920](v6);
    v8 = [location[0] cliUtilities];
    v7 = v22;
    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __73__AKAppleIDRecoveryController__beginAccountRecoveryWithModel_completion___block_invoke;
    v18 = &unk_1E73D4D78;
    v19 = MEMORY[0x1E69E5928](v30);
    v20 = MEMORY[0x1E69E5928](location[0]);
    v21 = MEMORY[0x1E69E5928](v28);
    [v8 beginDataTaskWithRequest:v7 completionHandler:&v14];
    MEMORY[0x1E69E5920](v8);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_193225000, log, type, "requestConfiguration is nil", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    if (v28)
    {
      v9 = v28;
      v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v9[2](v9, 0);
      MEMORY[0x1E69E5920](v10);
    }

    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDRecoveryController__beginAccountRecoveryWithModel_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8[1] = a1;
  v4 = [AKAccountRecoveryResponse alloc];
  v8[0] = [(AKAccountRecoveryResponse *)v4 initWithData:location[0] httpResponse:v10];
  [*(a1 + 32) _processResponse:v8[0] model:*(a1 + 40) withCompletion:*(a1 + 48)];
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_processResponse:(id)a3 model:(id)a4 withCompletion:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  [(AKAppleIDRecoveryController *)v18 _logResponse:location[0]];
  v14 = [(AKAppleIDRecoveryController *)v18 _nextStepForResponse:location[0]];
  if (v14)
  {
    [(AKAppleIDRecoveryController *)v18 _processNextStep:v14 response:location[0] model:v16 completion:v15];
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_error_impl(&dword_193225000, log, type, "No matching recovery step found", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    if (v15)
    {
      v5 = v15;
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)_nextStepForResponse:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v17->_supportedRecoverySteps);
  v12 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      if ([v15 canProcessResponse:location[0]])
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    AKPrintLine(@"Found matching recovery step: %@", v6);
    MEMORY[0x1E69E5920](v6);
    v18 = MEMORY[0x1E69E5928](v15);
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v13)
  {
    v18 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v18;

  return v4;
}

- (void)_processNextStep:(id)a3 response:(id)a4 model:(id)a5 completion:(id)a6
{
  obj = a4;
  v12 = a5;
  v13 = a6;
  v33 = self;
  location[1] = a2;
  v26 = location;
  v27 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = &v31;
  v31 = 0;
  objc_storeStrong(&v31, obj);
  v24 = &v30;
  v30 = 0;
  objc_storeStrong(&v30, v12);
  v23 = &v29;
  v29 = 0;
  objc_storeStrong(&v29, v13);
  v6 = objc_opt_class();
  v14 = NSStringFromClass(v6);
  AKPrintLine(@"Begin account recovery step: %@", v14);
  MEMORY[0x1E69E5920](v14);
  v18 = location[0];
  v15 = v31;
  v16 = v30;
  v17 = v28;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__AKAppleIDRecoveryController__processNextStep_response_model_completion___block_invoke;
  v28[3] = &unk_1E73D4DA0;
  v7 = MEMORY[0x1E69E5928](v29);
  v22 = v17 + 7;
  v28[7] = v7;
  v8 = MEMORY[0x1E69E5928](location[0]);
  v21 = v17 + 4;
  v28[4] = v8;
  v9 = MEMORY[0x1E69E5928](v33);
  v20 = v17 + 5;
  v28[5] = v9;
  v10 = MEMORY[0x1E69E5928](v30);
  v19 = v17 + 6;
  v28[6] = v10;
  [v18 processResponse:v15 model:v16 withCompletion:?];
  objc_storeStrong(v19, v27);
  objc_storeStrong(v20, v27);
  objc_storeStrong(v21, v27);
  objc_storeStrong(v22, v27);
  objc_storeStrong(v23, v27);
  objc_storeStrong(v24, v27);
  objc_storeStrong(v25, v27);
  objc_storeStrong(v26, v27);
}

void __74__AKAppleIDRecoveryController__processNextStep_response_model_completion___block_invoke(uint64_t a1, char a2, id obj, void *a4, void *a5, void *a6)
{
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = a1;
  if (v20)
  {
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v18 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v12 = NSStringFromClass(v7);
    AKPrintLine(@"Finished account recovery step: %@", v12);
    MEMORY[0x1E69E5920](v12);
    if (v24)
    {
      v8 = [AKAccountRecoveryResponse alloc];
      v17 = [(AKAccountRecoveryResponse *)v8 initWithData:location httpResponse:v22];
      [*(a1 + 40) _processResponse:v17 model:*(a1 + 48) withCompletion:*(a1 + 56)];
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      AKPrintLine(@"Finished recovery flow for - %@", v11);
      MEMORY[0x1E69E5920](v11);
      if (*(a1 + 56))
      {
        (*(*(a1 + 56) + 16))();
      }
    }

    v18 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
}

- (void)_logResponse:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [location[0] data];
  v13 = [v4 initWithData:? encoding:?];
  MEMORY[0x1E69E5920](v5);
  v7 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v10 = NSStringFromClass(v3);
  v6 = v15;
  v9 = [location[0] httpResponse];
  v8 = [v9 allHeaderFields];
  v12 = [v7 stringWithFormat:@"<%@: %p {\n\theaderFields: %@, \n\tdata: %@, \n}>", v10, v6, v8, v13];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v16, v12);
    _os_log_debug_impl(&dword_193225000, v11, OS_LOG_TYPE_DEBUG, "%@", v16, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end