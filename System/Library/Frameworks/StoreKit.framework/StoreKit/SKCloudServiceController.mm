@interface SKCloudServiceController
+ (id)_publicErrorForPrivateError:(id)error;
+ (void)requestAuthorization:(void *)completionHandler;
- (BOOL)_allowsPromptingForPrivacyAcknowledgement;
- (SKCloudServiceController)init;
- (id)_cloudServiceStatusMonitorWithError:(id *)error;
- (void)_handleCapabilitiesDidChangeNotification:(id)notification;
- (void)_handleStorefrontCountryCodeDidChangeNotification:(id)notification;
- (void)_handleStorefrontIdentifierDidChangeNotification:(id)notification;
- (void)_setAllowsPromptingForPrivacyAcknowledgement:(BOOL)acknowledgement;
- (void)dealloc;
- (void)init;
- (void)requestCapabilitiesWithCompletionHandler:(void *)completionHandler;
- (void)requestStorefrontCountryCodeWithCompletionHandler:(void *)completionHandler;
- (void)requestStorefrontIdentifierWithCompletionHandler:(void *)completionHandler;
- (void)requestUserTokenForDeveloperToken:(NSString *)developerToken completionHandler:(void *)completionHandler;
@end

@implementation SKCloudServiceController

- (SKCloudServiceController)init
{
  v8.receiver = self;
  v8.super_class = SKCloudServiceController;
  v2 = [(SKCloudServiceController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_allowsPromptingForPrivacyAcknowledgement = 1;
    v7 = 0;
    v4 = [(SKCloudServiceController *)v2 _cloudServiceStatusMonitorWithError:&v7];
    v5 = v7;
    if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(SKCloudServiceController *)v3 init];
    }
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_cloudServiceStatusMonitor)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getICCloudServiceStatusCapabilitiesDidChangeNotification();
    [defaultCenter removeObserver:self name:v4 object:self->_cloudServiceStatusMonitor];

    v5 = getICCloudServiceStatusStorefrontCountryCodeDidChangeNotification();
    [defaultCenter removeObserver:self name:v5 object:self->_cloudServiceStatusMonitor];

    v6 = getICCloudServiceStatusStorefrontIdentifierDidChangeNotification();
    [defaultCenter removeObserver:self name:v6 object:self->_cloudServiceStatusMonitor];

    [(ICCloudServiceStatusMonitor *)self->_cloudServiceStatusMonitor endObservingCloudServiceStatus];
  }

  os_unfair_lock_unlock(&self->_lock);
  v7.receiver = self;
  v7.super_class = SKCloudServiceController;
  [(SKCloudServiceController *)&v7 dealloc];
}

+ (void)requestAuthorization:(void *)completionHandler
{
  v3 = completionHandler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SKCloudServiceController_requestAuthorization___block_invoke;
  v5[3] = &unk_1E7B28E08;
  v6 = v3;
  v4 = v3;
  [SKPrivacyController requestAuthorization:v5];
}

void __49__SKCloudServiceController_requestAuthorization___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = __49__SKCloudServiceController_requestAuthorization___block_invoke_2;
    v6 = &unk_1E7B28DE0;
    v7 = v2;
    v8 = a2;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5(&v4);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v4);
    }
  }
}

- (void)requestCapabilitiesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v15 = 0;
  v5 = [(SKCloudServiceController *)self _cloudServiceStatusMonitorWithError:&v15];
  v6 = v15;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__SKCloudServiceController_requestCapabilitiesWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7B28E58;
    v7 = &v9;
    v9 = v4;
    [v5 requestCapabilitiesWithCompletionHandler:v8];
LABEL_8:

    goto LABEL_9;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v11 = __69__SKCloudServiceController_requestCapabilitiesWithCompletionHandler___block_invoke;
    v12 = &unk_1E7B27B30;
    v7 = &v14;
    v14 = v4;
    v13 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v11(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __69__SKCloudServiceController_requestCapabilitiesWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v8 = __69__SKCloudServiceController_requestCapabilitiesWithCompletionHandler___block_invoke_3;
    v9 = &unk_1E7B28E30;
    v10 = v5;
    v12 = a2;
    v11 = *(a1 + 32);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __69__SKCloudServiceController_requestCapabilitiesWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [SKCloudServiceController _publicErrorForPrivateError:?];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

- (void)requestStorefrontCountryCodeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v15 = 0;
  v5 = [(SKCloudServiceController *)self _cloudServiceStatusMonitorWithError:&v15];
  v6 = v15;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__SKCloudServiceController_requestStorefrontCountryCodeWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7B28E80;
    v7 = &v9;
    v9 = v4;
    [v5 requestStorefrontCountryCodeWithCompletionHandler:v8];
LABEL_8:

    goto LABEL_9;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v11 = __78__SKCloudServiceController_requestStorefrontCountryCodeWithCompletionHandler___block_invoke;
    v12 = &unk_1E7B27B30;
    v7 = &v14;
    v14 = v4;
    v13 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v11(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __78__SKCloudServiceController_requestStorefrontCountryCodeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v9 = __78__SKCloudServiceController_requestStorefrontCountryCodeWithCompletionHandler___block_invoke_3;
    v10 = &unk_1E7B27DD0;
    v11 = v6;
    v13 = *(a1 + 32);
    v12 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v9(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __78__SKCloudServiceController_requestStorefrontCountryCodeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [SKCloudServiceController _publicErrorForPrivateError:?];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)requestStorefrontIdentifierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v15 = 0;
  v5 = [(SKCloudServiceController *)self _cloudServiceStatusMonitorWithError:&v15];
  v6 = v15;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__SKCloudServiceController_requestStorefrontIdentifierWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7B28E80;
    v7 = &v9;
    v9 = v4;
    [v5 requestStorefrontIdentifierWithCompletionHandler:v8];
LABEL_8:

    goto LABEL_9;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v11 = __77__SKCloudServiceController_requestStorefrontIdentifierWithCompletionHandler___block_invoke;
    v12 = &unk_1E7B27B30;
    v7 = &v14;
    v14 = v4;
    v13 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v11(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __77__SKCloudServiceController_requestStorefrontIdentifierWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v9 = __77__SKCloudServiceController_requestStorefrontIdentifierWithCompletionHandler___block_invoke_3;
    v10 = &unk_1E7B27DD0;
    v11 = v6;
    v13 = *(a1 + 32);
    v12 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v9(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __77__SKCloudServiceController_requestStorefrontIdentifierWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [SKCloudServiceController _publicErrorForPrivateError:?];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)requestUserTokenForDeveloperToken:(NSString *)developerToken completionHandler:(void *)completionHandler
{
  v6 = developerToken;
  v7 = completionHandler;
  v18 = 0;
  v8 = [(SKCloudServiceController *)self _cloudServiceStatusMonitorWithError:&v18];
  v9 = v18;
  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__SKCloudServiceController_requestUserTokenForDeveloperToken_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7B28E80;
    v10 = &v12;
    v12 = v7;
    [v8 requestUserTokenForDeveloperToken:v6 options:1 completionHandler:v11];
LABEL_8:

    goto LABEL_9;
  }

  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v14 = __80__SKCloudServiceController_requestUserTokenForDeveloperToken_completionHandler___block_invoke;
    v15 = &unk_1E7B27B30;
    v10 = &v17;
    v17 = v7;
    v16 = v9;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v14(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __80__SKCloudServiceController_requestUserTokenForDeveloperToken_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v8 = __80__SKCloudServiceController_requestUserTokenForDeveloperToken_completionHandler___block_invoke_3;
    v9 = &unk_1E7B27DD0;
    v10 = v5;
    v12 = *(a1 + 32);
    v11 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __80__SKCloudServiceController_requestUserTokenForDeveloperToken_completionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = [SKCloudServiceController _publicErrorForPrivateError:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

- (BOOL)_allowsPromptingForPrivacyAcknowledgement
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allowsPromptingForPrivacyAcknowledgement = self->_allowsPromptingForPrivacyAcknowledgement;
  os_unfair_lock_unlock(&self->_lock);
  return allowsPromptingForPrivacyAcknowledgement;
}

- (void)_setAllowsPromptingForPrivacyAcknowledgement:(BOOL)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  self->_allowsPromptingForPrivacyAcknowledgement = acknowledgementCopy;
  cloudServiceStatusMonitor = self->_cloudServiceStatusMonitor;
  if (cloudServiceStatusMonitor)
  {
    [(ICCloudServiceStatusMonitor *)cloudServiceStatusMonitor setPrivacyAcknowledgementPolicy:acknowledgementCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleCapabilitiesDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __69__SKCloudServiceController__handleCapabilitiesDidChangeNotification___block_invoke;
  v5 = &unk_1E7B27980;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__SKCloudServiceController__handleCapabilitiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = @"SKCloudServiceCapabilitiesDidChangeNotification";
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Posting %{public}@.", &v4, 0x16u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SKCloudServiceCapabilitiesDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleStorefrontCountryCodeDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __78__SKCloudServiceController__handleStorefrontCountryCodeDidChangeNotification___block_invoke;
  v5 = &unk_1E7B27980;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __78__SKCloudServiceController__handleStorefrontCountryCodeDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = @"SKStorefrontCountryCodeDidChangeNotification";
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Posting %{public}@.", &v4, 0x16u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SKStorefrontCountryCodeDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleStorefrontIdentifierDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __77__SKCloudServiceController__handleStorefrontIdentifierDidChangeNotification___block_invoke;
  v5 = &unk_1E7B27980;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __77__SKCloudServiceController__handleStorefrontIdentifierDidChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = @"SKStorefrontIdentifierDidChangeNotification";
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Posting %{public}@.", &v4, 0x16u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SKStorefrontIdentifierDidChangeNotification" object:*(a1 + 32)];
}

+ (id)_publicErrorForPrivateError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  domain = [errorCopy domain];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v6 = getICErrorDomainSymbolLoc_ptr;
  v25 = getICErrorDomainSymbolLoc_ptr;
  if (!getICErrorDomainSymbolLoc_ptr)
  {
    v7 = iTunesCloudLibrary();
    v23[3] = dlsym(v7, "ICErrorDomain");
    getICErrorDomainSymbolLoc_ptr = v23[3];
    v6 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v6)
  {
    v21 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v22, 8);
    _Unwind_Resume(v21);
  }

  v8 = [domain isEqualToString:*v6];

  if (!v8)
  {
    goto LABEL_17;
  }

  code = [errorCopy code];
  if (code <= -7101)
  {
    switch(code)
    {
      case -8100:
        v13 = 0;
        v11 = 0;
        v12 = 8;
        goto LABEL_18;
      case -7401:
        v13 = 0;
        goto LABEL_33;
      case -7101:
        userInfo = [errorCopy userInfo];
        v13 = [userInfo objectForKey:*MEMORY[0x1E696A278]];

LABEL_33:
        v11 = 0;
        v12 = 1;
        goto LABEL_18;
    }

LABEL_17:
    v11 = [v4 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F29BCE20 table:0];
    v12 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  if (code > -7010)
  {
    if (code != -7009)
    {
      if (code == -7007)
      {
        v11 = [v4 localizedStringForKey:@"PRIVACY_ACKNOWLEDGEMENT_REQUIRED" value:&stru_1F29BCE20 table:0];
        v13 = 0;
        v12 = 9;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = [v4 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F29BCE20 table:0];
    userInfo2 = [errorCopy userInfo];
    v13 = [userInfo2 objectForKey:*MEMORY[0x1E696A278]];

    v12 = 6;
  }

  else
  {
    if (code != -7100)
    {
      if (code == -7011)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = 0;
        v12 = 1;
        v13 = @"Failed to send message to remote cloud service status monitor.";
LABEL_24:
        [v10 setObject:v13 forKey:*MEMORY[0x1E696A278]];
        v16 = v13;
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    v11 = [v4 localizedStringForKey:@"NETWORK_FAILED" value:&stru_1F29BCE20 table:0];
    v13 = 0;
    v12 = 7;
  }

LABEL_18:
  if (!(v11 | v13))
  {
    v11 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_26;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v15;
  if (v11)
  {
    [v15 setObject:v11 forKey:*MEMORY[0x1E696A578]];
    if (v13)
    {
      goto LABEL_24;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
    if (v13)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  v17 = [v10 copy];

LABEL_26:
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:v12 userInfo:v17];

  return v18;
}

- (id)_cloudServiceStatusMonitorWithError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (+[SKCloudServiceController authorizationStatus]!= SKCloudServiceAuthorizationStatusAuthorized)
  {
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"PERMISSION_DENIED" value:&stru_1F29BCE20 table:0];
    v18 = v17;
    if (v17)
    {
      v27 = *MEMORY[0x1E696A578];
      v28[0] = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }

    else
    {
      v19 = 0;
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:6 userInfo:v19];

    v14 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_lock);
  cloudServiceStatusMonitor = self->_cloudServiceStatusMonitor;
  if (!cloudServiceStatusMonitor)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v6 = getICCloudServiceStatusMonitorClass_softClass_0;
    v26 = getICCloudServiceStatusMonitorClass_softClass_0;
    if (!getICCloudServiceStatusMonitorClass_softClass_0)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getICCloudServiceStatusMonitorClass_block_invoke_0;
      v22[3] = &unk_1E7B279A8;
      v22[4] = &v23;
      __getICCloudServiceStatusMonitorClass_block_invoke_0(v22);
      v6 = v24[3];
    }

    v7 = v6;
    _Block_object_dispose(&v23, 8);
    v8 = objc_alloc_init(v6);
    v9 = self->_cloudServiceStatusMonitor;
    self->_cloudServiceStatusMonitor = v8;

    if (!self->_allowsPromptingForPrivacyAcknowledgement)
    {
      [(ICCloudServiceStatusMonitor *)self->_cloudServiceStatusMonitor setPrivacyAcknowledgementPolicy:0];
    }

    [(ICCloudServiceStatusMonitor *)self->_cloudServiceStatusMonitor beginObservingCloudServiceStatus];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = getICCloudServiceStatusCapabilitiesDidChangeNotification();
    [defaultCenter addObserver:self selector:sel__handleCapabilitiesDidChangeNotification_ name:v11 object:self->_cloudServiceStatusMonitor];

    v12 = getICCloudServiceStatusStorefrontCountryCodeDidChangeNotification();
    [defaultCenter addObserver:self selector:sel__handleStorefrontCountryCodeDidChangeNotification_ name:v12 object:self->_cloudServiceStatusMonitor];

    v13 = getICCloudServiceStatusStorefrontIdentifierDidChangeNotification();
    [defaultCenter addObserver:self selector:sel__handleStorefrontIdentifierDidChangeNotification_ name:v13 object:self->_cloudServiceStatusMonitor];

    cloudServiceStatusMonitor = self->_cloudServiceStatusMonitor;
  }

  v14 = cloudServiceStatusMonitor;
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0;
  if (error)
  {
LABEL_14:
    v20 = v15;
    *error = v15;
  }

LABEL_15:

  return v14;
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  selfCopy = self;
  v4 = 2114;
  v5 = a2;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Cannot setup cloud service status monitor upon initialization. Encountered error: %{public}@.", &v2, 0x16u);
}

@end