@interface AKAccountRecoveryStepChangePassword
- (BOOL)_isAuthenticationFailureForData:(id)data;
- (BOOL)_isConfirmationField:(id)field;
- (BOOL)_isIncorrectCurrentPasswordErrorForData:(id)data;
- (BOOL)_isNewPasswordErrorForData:(id)data;
- (BOOL)canProcessResponse:(id)response;
- (id)_findConfirmRowIDForNewPasswordRowID:(id)d editableTextRows:(id)rows;
- (id)_getPasswordFieldMappingFromResponse:(id)response editableTextRows:(id)rows;
- (id)_matchingAttributeWithResponse:(id)response;
- (id)_promptForConfirmPasswordWithModel:(id)model;
- (id)_promptForNewPasswordWithModel:(id)model;
- (id)_tryClientInfoMappingFromResponse:(id)response editableTextRows:(id)rows;
- (id)_tryPositionalMappingFromEditableTextRows:(id)rows;
- (void)_beginChangePasswordWithResponse:(id)response model:(id)model completion:(id)completion;
- (void)_verifyNewPasswordWithRowID:(id)d confirmRowID:(id)iD model:(id)model completion:(id)completion;
- (void)processResponse:(id)response model:(id)model withCompletion:(id)completion;
@end

@implementation AKAccountRecoveryStepChangePassword

- (void)processResponse:(id)response model:(id)model withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, model);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAccountRecoveryStepChangePassword *)selfCopy _beginChangePasswordWithResponse:location[0] model:v8 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canProcessResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  data = [location[0] data];
  v12 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"navigationBar" error:?];
  MEMORY[0x1E69E5920](data);
  firstObject = [v12 firstObject];
  v11 = [firstObject objectForKeyedSubscript:@"title"];
  MEMORY[0x1E69E5920](firstObject);
  lowercaseString = [v11 lowercaseString];
  v7 = [lowercaseString containsString:@"new password"];
  MEMORY[0x1E69E5920](lowercaseString);
  lowercaseString2 = [v11 lowercaseString];
  v9 = [lowercaseString2 containsString:@"change password"];
  MEMORY[0x1E69E5920](lowercaseString2);
  v10 = 1;
  if ((v7 & 1) == 0)
  {
    v10 = v9;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)_beginChangePasswordWithResponse:(id)response model:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v22 = 0;
  objc_storeStrong(&v22, model);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  data = [location[0] data];
  v20 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"editableTextRow" error:?];
  MEMORY[0x1E69E5920](data);
  if ([v20 count] >= 2)
  {
    v18 = [(AKAccountRecoveryStepChangePassword *)selfCopy _matchingAttributeWithResponse:location[0]];
    if (v18)
    {
      cliUtilities = [v22 cliUtilities];
      configuration = [v22 configuration];
      httpResponse = [location[0] httpResponse];
      [cliUtilities updateConfiguration:configuration fromXMLAttributes:v18 response:?];
      MEMORY[0x1E69E5920](httpResponse);
      MEMORY[0x1E69E5920](configuration);
      MEMORY[0x1E69E5920](cliUtilities);
      v17 = [(AKAccountRecoveryStepChangePassword *)selfCopy _getPasswordFieldMappingFromResponse:location[0] editableTextRows:v20];
      v16 = [v17 objectForKeyedSubscript:@"newPasswordRowId"];
      v15 = [v17 objectForKeyedSubscript:@"confirmRowId"];
      [(AKAccountRecoveryStepChangePassword *)selfCopy _verifyNewPasswordWithRowID:v16 confirmRowID:v15 model:v22 completion:v21];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      v19 = 0;
    }

    else
    {
      AKPrintError(@"Password change failed: unsupported server UI format");
      if (v21)
      {
        v8 = v21;
        v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
        (*(v8 + 2))(v8, 0, 0, 0);
        MEMORY[0x1E69E5920](v9);
      }

      v19 = 1;
    }

    objc_storeStrong(&v18, 0);
  }

  else
  {
    AKPrintError(@"Password change failed: insufficient password fields in server response");
    if (v21)
    {
      v10 = v21;
      v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v10 + 2))(v10, 0, 0, 0);
      MEMORY[0x1E69E5920](v11);
    }

    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (id)_getPasswordFieldMappingFromResponse:(id)response editableTextRows:(id)rows
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v8 = 0;
  objc_storeStrong(&v8, rows);
  v7 = [(AKAccountRecoveryStepChangePassword *)selfCopy _tryClientInfoMappingFromResponse:location[0] editableTextRows:v8];
  if (v7 || (v7 = [(AKAccountRecoveryStepChangePassword *)selfCopy _tryPositionalMappingFromEditableTextRows:v8], MEMORY[0x1E69E5920](0), v7))
  {
    v11 = MEMORY[0x1E69E5928](v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E5928](&unk_1F07B51B0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)_tryClientInfoMappingFromResponse:(id)response editableTextRows:(id)rows
{
  v21[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v16 = 0;
  objc_storeStrong(&v16, rows);
  data = [location[0] data];
  v15 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"clientInfo" error:?];
  MEMORY[0x1E69E5920](data);
  if ([v15 count])
  {
    firstObject = [v15 firstObject];
    v12 = [firstObject objectForKeyedSubscript:@"newPasswordRowId"];
    if (v12)
    {
      v11 = [(AKAccountRecoveryStepChangePassword *)selfCopy _findConfirmRowIDForNewPasswordRowID:v12 editableTextRows:v16];
      v9 = 0;
      if (v11)
      {
        v20[0] = @"newPasswordRowId";
        v21[0] = v12;
        v20[1] = @"confirmRowId";
        v21[1] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        v9 = 1;
        v4 = MEMORY[0x1E69E5928](v10);
      }

      else
      {
        v4 = MEMORY[0x1E69E5928](0);
      }

      v19 = v4;
      if (v9)
      {
        MEMORY[0x1E69E5920](v10);
      }

      v14 = 1;
      objc_storeStrong(&v11, 0);
    }

    else
    {
      v19 = 0;
      v14 = 1;
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v19 = 0;
    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v19;

  return v5;
}

- (id)_findConfirmRowIDForNewPasswordRowID:(id)d editableTextRows:(id)rows
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, rows);
  if ([location[0] containsString:@"newPassword.password"])
  {
    v19 = MEMORY[0x1E69E5928](@"newPassword.confirmedPassword");
    v15 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v10 = MEMORY[0x1E69E5928](v16);
    v11 = [v10 countByEnumeratingWithState:__b objects:v20 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(__b[1] + 8 * v8);
        if ([(AKAccountRecoveryStepChangePassword *)selfCopy _isConfirmationField:v14])
        {
          break;
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [v10 countByEnumeratingWithState:__b objects:v20 count:16];
          if (!v9)
          {
            goto LABEL_11;
          }
        }
      }

      v19 = [v14 objectForKeyedSubscript:@"id"];
      v15 = 1;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

    MEMORY[0x1E69E5920](v10);
    if (!v15)
    {
      v19 = 0;
      v15 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v19;

  return v4;
}

- (BOOL)_isConfirmationField:(id)field
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v8 = [location[0] objectForKeyedSubscript:@"id"];
  if (v8)
  {
    v3 = MEMORY[0x1E69E5928](v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E5928](&stru_1F0781300);
  }

  v10 = v3;
  MEMORY[0x1E69E5920](v8);
  v7 = [location[0] objectForKeyedSubscript:@"placeholder"];
  if (v7)
  {
    v4 = MEMORY[0x1E69E5928](v7);
  }

  else
  {
    v4 = MEMORY[0x1E69E5928](&stru_1F0781300);
  }

  v9 = v4;
  MEMORY[0x1E69E5920](v7);
  v6 = 1;
  if (([v10 containsString:@"confirm"] & 1) == 0)
  {
    v6 = 1;
    if (([v10 containsString:@"Confirm"] & 1) == 0)
    {
      v6 = 1;
      if (([v9 containsString:@"Retype"] & 1) == 0)
      {
        v6 = [v9 containsString:@"Confirm"];
      }
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (id)_tryPositionalMappingFromEditableTextRows:(id)rows
{
  v22[2] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rows);
  if ([location[0] count] == 3)
  {
    v21[0] = @"newPasswordRowId";
    v15 = [location[0] objectAtIndexedSubscript:1];
    v16 = [v15 objectForKeyedSubscript:@"id"];
    if (v16)
    {
      v14 = v16;
    }

    else
    {
      v14 = &stru_1F0781300;
    }

    v22[0] = v14;
    v21[1] = @"confirmRowId";
    v12 = [location[0] objectAtIndexedSubscript:2];
    v13 = [v12 objectForKeyedSubscript:@"id"];
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &stru_1F0781300;
    }

    v22[1] = v11;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v15);
  }

  else if ([location[0] count] == 2)
  {
    v19[0] = @"newPasswordRowId";
    v9 = [location[0] objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"id"];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = &stru_1F0781300;
    }

    v20[0] = v8;
    v19[1] = @"confirmRowId";
    v6 = [location[0] objectAtIndexedSubscript:1];
    v7 = [v6 objectForKeyedSubscript:@"id"];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = &stru_1F0781300;
    }

    v20[1] = v5;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v9);
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v18;

  return v3;
}

- (id)_matchingAttributeWithResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  data = [location[0] data];
  v12 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"multiChoice" error:?];
  MEMORY[0x1E69E5920](data);
  data2 = [location[0] data];
  v11 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"linkBarItem" error:?];
  MEMORY[0x1E69E5920](data2);
  data3 = [location[0] data];
  v10 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:"ruiElementsAttributesWithName:data:error:" data:@"button" error:?];
  MEMORY[0x1E69E5920](data3);
  v3 = [v10 aaf_filter:&__block_literal_global_21];
  v4 = v10;
  v10 = v3;
  MEMORY[0x1E69E5920](v4);
  if ([v10 count] == 2)
  {
    lastObject = [v10 lastObject];
  }

  else if ([v11 count] == 2)
  {
    lastObject = [v11 lastObject];
  }

  else if ([v12 count] == 1)
  {
    lastObject = [v12 firstObject];
  }

  else
  {
    lastObject = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v5 = lastObject;

  return v5;
}

uint64_t __70__AKAccountRecoveryStepChangePassword__matchingAttributeWithResponse___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] objectForKeyedSubscript:@"stringValue"];
  v4 = [v3 containsString:@"Sign Out"];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_verifyNewPasswordWithRowID:(id)d confirmRowID:(id)iD model:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v40 = 0;
  objc_storeStrong(&v40, iD);
  v39 = 0;
  objc_storeStrong(&v39, model);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v37 = [(AKAccountRecoveryStepChangePassword *)selfCopy _promptForNewPasswordWithModel:v39];
  v36 = [(AKAccountRecoveryStepChangePassword *)selfCopy _promptForConfirmPasswordWithModel:v39];
  context = [v39 context];
  currentPassword = [context currentPassword];
  MEMORY[0x1E69E5920](context);
  configuration = [v39 configuration];
  if (configuration)
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v29 setObject:v37 forKeyedSubscript:location[0]];
    [v29 setObject:v36 forKeyedSubscript:v40];
    if (currentPassword)
    {
      [v29 setObject:currentPassword forKeyedSubscript:@"password"];
    }

    [v29 setObject:&unk_1F07B51D8 forKeyedSubscript:@"serverInfo"];
    request = [configuration request];
    v28 = [request mutableCopy];
    MEMORY[0x1E69E5920](request);
    cliUtilities = [v39 cliUtilities];
    [cliUtilities signXMLRequest:v28 withPostbackDictionary:v29];
    MEMORY[0x1E69E5920](cliUtilities);
    resourceLoadDelegate = [configuration resourceLoadDelegate];
    [resourceLoadDelegate signRequest:v28];
    MEMORY[0x1E69E5920](resourceLoadDelegate);
    cliUtilities2 = [v39 cliUtilities];
    v9 = v28;
    v19 = MEMORY[0x1E69E9820];
    v20 = -1073741824;
    v21 = 0;
    v22 = __97__AKAccountRecoveryStepChangePassword__verifyNewPasswordWithRowID_confirmRowID_model_completion___block_invoke;
    v23 = &unk_1E73D4158;
    v27 = MEMORY[0x1E69E5928](v38);
    v24 = MEMORY[0x1E69E5928](selfCopy);
    v25 = MEMORY[0x1E69E5928](v39);
    v26 = MEMORY[0x1E69E5928](v37);
    [cliUtilities2 beginDataTaskWithRequest:v9 completionHandler:&v19];
    MEMORY[0x1E69E5920](cliUtilities2);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    v30 = 0;
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = 2;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      log = v33;
      type = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_debug_impl(&dword_193225000, log, type, "requestConfiguration is nil", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    if (v38)
    {
      v11 = v38;
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7014];
      (*(v11 + 2))(v11, 0, 0, 0);
      MEMORY[0x1E69E5920](v12);
    }

    v30 = 1;
  }

  objc_storeStrong(&configuration, 0);
  objc_storeStrong(&currentPassword, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void __97__AKAccountRecoveryStepChangePassword__verifyNewPasswordWithRowID_confirmRowID_model_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[3] = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a1;
  if (v19)
  {
    v10 = [v19 localizedDescription];
    AKPrintError(@"Password change request failed: %@", v10);
    MEMORY[0x1E69E5920](v10);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v17 = 1;
  }

  else if ([*(a1 + 32) _isIncorrectCurrentPasswordErrorForData:location[0]])
  {
    AKPrintError(@"❌ Current password is incorrect. Please verify your current password and try again.");
    v16 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7006];
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v17 = 1;
    objc_storeStrong(&v16, 0);
  }

  else if ([*(a1 + 32) _isAuthenticationFailureForData:location[0]])
  {
    AKPrintError(@"Authentication failed. Please check your credentials and try again.");
    v15 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7006];
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v17 = 1;
    objc_storeStrong(&v15, 0);
  }

  else if ([*(a1 + 32) _isNewPasswordErrorForData:location[0]])
  {
    AKPrintLine(@"Your new password must be different than one of the passwords you have used in the last year.");
    if (*(a1 + 56))
    {
      v8 = *(a1 + 56);
      v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7026];
      (*(v8 + 16))(v8, 0, 0, 0);
      MEMORY[0x1E69E5920](v9);
    }

    v17 = 1;
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) context];
    [v5 _setPassword:v4];
    MEMORY[0x1E69E5920](v5);
    v22[0] = @"AKUsername";
    v7 = [*(a1 + 40) context];
    v6 = [v7 username];
    v23[0] = v6;
    v22[1] = @"AKPassword";
    v23[1] = *(a1 + 48);
    v22[2] = @"AKRawPassword";
    v23[2] = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    AKPrintLine(@"✅ Password changed successfully.");
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_storeStrong(&v14, 0);
    v17 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_isNewPasswordErrorForData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v8 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:@"alert" data:location[0] error:0];
  firstObject = [v8 firstObject];
  v5 = [firstObject objectForKeyedSubscript:@"title"];
  lowercaseString = [v5 lowercaseString];
  v7 = [lowercaseString containsString:@"choose different password"];
  MEMORY[0x1E69E5920](lowercaseString);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](firstObject);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_isIncorrectCurrentPasswordErrorForData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v13 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:@"alert" data:location[0] error:0];
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [firstObject objectForKeyedSubscript:@"title"];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = &stru_1F0781300;
    }

    v7 = [firstObject objectForKeyedSubscript:@"message"];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_1F0781300;
    }

    v4 = [v9 stringWithFormat:@"%@ %@", v8, v6];
    lowercaseString = [v4 lowercaseString];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v10);
    v5 = 1;
    if (([lowercaseString containsString:@"incorrect"] & 1) == 0)
    {
      v5 = 1;
      if (([lowercaseString containsString:@"invalid"] & 1) == 0)
      {
        v5 = 1;
        if (([lowercaseString containsString:@"wrong"] & 1) == 0)
        {
          v5 = [lowercaseString containsString:@"current password"];
        }
      }
    }

    v15 = v5 & 1;
    objc_storeStrong(&lowercaseString, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)_isAuthenticationFailureForData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v13 = [AKAppleIDAuthenticationCommandLineContext ruiElementsAttributesWithName:@"alert" data:location[0] error:0];
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [firstObject objectForKeyedSubscript:@"title"];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = &stru_1F0781300;
    }

    v7 = [firstObject objectForKeyedSubscript:@"message"];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_1F0781300;
    }

    v4 = [v9 stringWithFormat:@"%@ %@", v8, v6];
    lowercaseString = [v4 lowercaseString];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v10);
    v5 = 1;
    if (([lowercaseString containsString:@"authentication failed"] & 1) == 0)
    {
      v5 = 1;
      if (([lowercaseString containsString:@"unable to verify"] & 1) == 0)
      {
        v5 = 1;
        if (([lowercaseString containsString:@"verification failed"] & 1) == 0)
        {
          v5 = [lowercaseString containsString:@"credentials"];
        }
      }
    }

    v15 = v5 & 1;
    objc_storeStrong(&lowercaseString, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (id)_promptForNewPasswordWithModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  context = [location[0] context];
  _password = [context _password];
  MEMORY[0x1E69E5920](context);
  if (![_password length])
  {
    AKPrint(@"Enter new password: ");
    v3 = AKReadLineSecure(1024);
    v4 = _password;
    _password = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = MEMORY[0x1E69E5928](_password);
  objc_storeStrong(&_password, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_promptForConfirmPasswordWithModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  context = [location[0] context];
  _password = [context _password];
  MEMORY[0x1E69E5920](context);
  if (![_password length])
  {
    AKPrint(@"Confirm new password: ");
    v3 = AKReadLineSecure(1024);
    v4 = _password;
    _password = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = MEMORY[0x1E69E5928](_password);
  objc_storeStrong(&_password, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end