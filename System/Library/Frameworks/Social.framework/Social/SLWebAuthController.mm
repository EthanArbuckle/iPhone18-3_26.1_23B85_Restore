@interface SLWebAuthController
- (SLWebAuthController)init;
- (SLWebAuthController)initWithAccount:(id)a3 accountStore:(id)a4 presentationBlock:(id)a5;
- (SLWebAuthController)initWithAccountDescription:(id)a3 presentationBlock:(id)a4;
- (SLWebAuthController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_extensionItemForAccount:(id)a3 accountDescription:(id)a4 username:(id)a5 youTube:(BOOL)a6;
- (id)_init;
- (void)_commonInitializationWithAccount:(id)a3 accountStore:(id)a4 username:(id)a5 accountDescription:(id)a6 youTube:(BOOL)a7 presentationBlock:(id)a8;
- (void)_didInstantiateRemoteViewController;
- (void)_dismissAndCompleteWithIdentity:(id)a3 error:(id)a4 extensionCompletion:(id)a5;
- (void)_extensionRequestDidCompleteWithTokens:(id)a3 extensionCompletion:(id)a4;
- (void)_presentInternetOfflineError;
- (void)_presentUsernameMismatchAlert;
- (void)loadView;
@end

@implementation SLWebAuthController

- (SLWebAuthController)initWithAccountDescription:(id)a3 presentationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SLWebAuthController;
  v8 = [(SLWebAuthController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SLWebAuthController *)v8 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:v6 youTube:0 presentationBlock:v7];
  }

  return v9;
}

- (SLWebAuthController)initWithAccount:(id)a3 accountStore:(id)a4 presentationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SLWebAuthController;
  v11 = [(SLWebAuthController *)&v14 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [v8 accountDescription];
    [(SLWebAuthController *)v11 _commonInitializationWithAccount:v8 accountStore:v9 username:0 accountDescription:v12 youTube:0 presentationBlock:v10];
  }

  return v11;
}

- (SLWebAuthController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SLWebAuthController;
  v4 = [(SLWebAuthController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SLWebAuthController *)v4 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:0 youTube:0 presentationBlock:0];
  }

  return v5;
}

- (SLWebAuthController)init
{
  [(SLWebAuthController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SLWebAuthController;
  return [(SLWebAuthController *)&v3 initWithNibName:0 bundle:0];
}

- (id)_extensionItemForAccount:(id)a3 accountDescription:(id)a4 username:(id)a5 youTube:(BOOL)a6
{
  v7 = a6;
  v11 = a5;
  v12 = a4;
  _SLLog(v6, 5, @"SLWebAuthController initializing for description %@ username %@");
  v13 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v14 = [MEMORY[0x1E695DF90] dictionaryWithObject:v12 forKey:{@"description", v12, v11}];

  if (a3)
  {
    [v14 setObject:v11 forKeyedSubscript:@"username"];
  }

  if (v7)
  {
    [v14 setObject:@"YES" forKeyedSubscript:@"youTube"];
  }

  v15 = MEMORY[0x1E696ACC8];
  v16 = [(SLWebAuthController *)self _webClient];
  v21 = 0;
  v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v21];
  v18 = v21;
  [v14 setObject:v17 forKeyedSubscript:@"webClient"];

  if (v18)
  {
    v20 = v18;
    _SLLog(v6, 3, @"Error while archiving we client, error: %@");
  }

  [v13 setUserInfo:{v14, v20}];

  return v13;
}

- (void)_commonInitializationWithAccount:(id)a3 accountStore:(id)a4 username:(id)a5 accountDescription:(id)a6 youTube:(BOOL)a7 presentationBlock:(id)a8
{
  v10 = a7;
  v41[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v32 = a4;
  v17 = a5;
  v18 = a6;
  v33 = a8;
  objc_storeStrong(&self->_account, a3);
  objc_storeStrong(&self->_accountStore, a4);
  v19 = MEMORY[0x1C6917BF0](v33);
  presentationBlock = self->_presentationBlock;
  self->_presentationBlock = v19;

  if (!self->_presentationBlock)
  {
    _SLLog(v8, 3, @"SLWebAuthController Client did not pass a presentationBlock to the init method. Your presentation animation will probably look horrible. Please pass a presentationBlock.");
  }

  [(SLWebAuthController *)self setModalPresentationStyle:0];
  v21 = MEMORY[0x1E696ABD0];
  v22 = [(SLWebAuthController *)self _extentionIdentifier];
  v40 = 0;
  v23 = [v21 extensionWithIdentifier:v22 error:&v40];
  v31 = v40;
  extension = self->_extension;
  self->_extension = v23;

  v30 = self->_extension;
  _SLLog(v8, 7, @"SLWebAuthController got extension %@");
  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke;
  v37[3] = &unk_1E8175B70;
  objc_copyWeak(&v38, &location);
  [(NSExtension *)self->_extension setRequestCancellationBlock:v37, v30];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_3;
  v35[3] = &unk_1E8175BC0;
  objc_copyWeak(&v36, &location);
  [(NSExtension *)self->_extension set_requestPostCompletionBlockWithItems:v35];
  if (v16)
  {
    v25 = [v16 username];

    v26 = [v16 accountDescription];

    v18 = v26;
    v17 = v25;
  }

  if (!v18)
  {
    v18 = &stru_1F41EC300;
  }

  v27 = [(SLWebAuthController *)self _extensionItemForAccount:v16 accountDescription:v18 username:v17 youTube:v10];
  v28 = self->_extension;
  v41[0] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_5;
  v34[3] = &unk_1E8175BE8;
  v34[4] = self;
  [(NSExtension *)v28 instantiateViewControllerWithInputItems:v29 listenerEndpoint:0 connectionHandler:v34];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_2;
  block[3] = &unk_1E8175B48;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    _SLLog(v1, 7, @"SLWebAuthController extension requestCancellationBlock requestIdentifier %@ error %{public}@");
    [v6 _extensionRequestDidCancelWithError:{*(a1 + 40), v4, v5}];
    WeakRetained = v6;
  }
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_4;
  v13[3] = &unk_1E8175B98;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    _SLLog(v1, 7, @"SLWebAuthController extension _requestPostCompletionBlockWithItems requestIdentifier %@ items %@");
    [v6 _extensionRequestDidCompleteWithTokens:*(a1 + 40) extensionCompletion:{*(a1 + 48), v4, v5}];
    WeakRetained = v6;
  }
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  _SLLog(v4, 5, @"SLWebAuthController finished instantiate remote view controller %@ error %{public}@ extension request identifier %@");
  v8 = *(a1 + 32);
  v9 = *(v8 + 1016);
  *(v8 + 1016) = v10;
  v11 = v10;

  [*(a1 + 32) _didInstantiateRemoteViewController];
}

- (void)_didInstantiateRemoteViewController
{
  v27[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__SLWebAuthController__didInstantiateRemoteViewController__block_invoke;
    v21[3] = &unk_1E8175C10;
    objc_copyWeak(&v22, &location);
    [(UIViewController *)self->_serviceViewController setViewServiceTerminationBlock:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  serviceViewController = self->_serviceViewController;
  if (serviceViewController && !self->_extensionCancellationError)
  {
    [(UIViewController *)serviceViewController willMoveToParentViewController:self];
    [(SLWebAuthController *)self addChildViewController:self->_serviceViewController];
    v4 = [(SLWebAuthController *)self view];
    v5 = [(UIViewController *)self->_serviceViewController view];
    [v4 addSubview:v5];

    v6 = [(SLWebAuthController *)self view];
    v7 = [(UIViewController *)self->_serviceViewController view];
    [v6 bringSubviewToFront:v7];

    [(UIViewController *)self->_serviceViewController didMoveToParentViewController:self];
    v8 = [(UIViewController *)self->_serviceViewController view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E696ACD8];
    v26 = @"serviceView";
    v11 = [(UIViewController *)self->_serviceViewController view];
    v27[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v10 constraintsWithVisualFormat:@"H:|[serviceView]|" options:0 metrics:0 views:v12];
    [v9 addObjectsFromArray:v13];

    v14 = MEMORY[0x1E696ACD8];
    v24 = @"serviceView";
    v15 = [(UIViewController *)self->_serviceViewController view];
    v25 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v14 constraintsWithVisualFormat:@"V:|[serviceView]|" options:0 metrics:0 views:v16];
    [v9 addObjectsFromArray:v17];

    [MEMORY[0x1E696ACD8] activateConstraints:v9];
    v18 = [(SLWebAuthController *)self view];
    [v18 setNeedsLayout];

    presentationBlock = self->_presentationBlock;
    if (presentationBlock)
    {
      presentationBlock[2](presentationBlock, self);
    }
  }

  v20 = self->_presentationBlock;
  self->_presentationBlock = 0;
}

void __58__SLWebAuthController__didInstantiateRemoteViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1040] & 1) == 0)
  {
    v3 = WeakRetained;
    _SLLog(v1, 3, @"SLWebAuthController observed unexpected extension termination. Probably a crash.");
    [v3 _extensionRequestDidCompleteWithTokens:0 extensionCompletion:0];
    WeakRetained = v3;
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SLWebAuthController;
  [(SLWebAuthController *)&v6 loadView];
  v3 = [(SLWebAuthController *)self view];
  [v3 setOpaque:0];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(SLWebAuthController *)self view];
  [v5 setBackgroundColor:v4];
}

- (void)_extensionRequestDidCompleteWithTokens:(id)a3 extensionCompletion:(id)a4
{
  v6 = a4;
  v7 = v6;
  self->_extensionRequestDidComplete = 1;
  if (a3)
  {
    v8 = [a3 objectAtIndexedSubscript:0];
    v9 = [v8 attachments];
    v10 = [v9 objectAtIndexedSubscript:0];

    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2;
    block[3] = &unk_1E8175900;
    v14 = v10;
    v15 = self;
    v16 = v7;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke;
    v17[3] = &unk_1E81759A0;
    v17[4] = self;
    v18 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 1032);
  v4 = *(*(a1 + 32) + 1032);
  v8 = v3;
  if (v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v6 = [*(*(a1 + 32) + 1032) code];

      v3 = v8;
      if (v6 == -1009)
      {
        _SLLog(v1, 3, @"SLWebAuthController will dismiss because not connected to internet.");
        [*(a1 + 32) _presentInternetOfflineError];

        goto LABEL_9;
      }
    }

    else
    {

      v3 = v8;
    }
  }

  if (v3)
  {
    v7 = v3;
    _SLLog(v1, 3, @"SLWebAuthController will dismiss because of error %{public}@");
    goto LABEL_10;
  }

  _SLLog(v1, 5, @"SLWebAuthController will dismiss because of user cancel.");
LABEL_9:
  v8 = 0;
LABEL_10:
  [*(a1 + 32) _dismissAndCompleteWithIdentity:0 error:v8 extensionCompletion:{*(a1 + 40), v7}];
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2(uint64_t a1)
{
  v3 = dispatch_semaphore_create(0);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6963798];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_73;
  v51[3] = &unk_1E8175C38;
  v53 = &v54;
  v6 = v3;
  v52 = v6;
  [v4 loadItemForTypeIdentifier:v5 options:0 completionHandler:v51];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = [v55[5] objectForKeyedSubscript:@"token"];
  v7 = [v55[5] objectForKeyedSubscript:@"refreshToken"];
  v8 = [v55[5] objectForKeyedSubscript:@"usernames"];
  v9 = [v55[5] objectForKeyedSubscript:@"displayName"];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = 0;
  v10 = *(*(a1 + 40) + 992);
  if (v10)
  {
    v11 = [v10 objectID];
    if (!v11 || !v46[5] || !v7)
    {
      goto LABEL_8;
    }

    v12 = [v8 firstObject];

    if (v12)
    {
      v13 = [*(*(a1 + 40) + 992) username];
      v14 = [v8 firstObject];
      v15 = [v13 compare:v14 options:1];

      if (v15)
      {
        v16 = [*(*(a1 + 40) + 992) username];
        v30 = [v8 firstObject];
        _SLLog(v1, 3, @"SLWebAuthController got mismatch between _account.username %@ and attempted username %@");

        [*(a1 + 40) _presentUsernameMismatchAlert];
        v11 = v46[5];
        v46[5] = 0;
LABEL_8:
      }
    }
  }

  v17 = *(*(a1 + 40) + 992);
  if (v17)
  {
    v18 = [v17 objectID];
    if (!v18 || !v46[5] || !v7)
    {
      goto LABEL_15;
    }

    v19 = [v8 firstObject];

    if (v19)
    {
      [*(*(a1 + 40) + 992) setAccountProperty:0 forKey:@"ACUISaysNotToSaveThis"];
      v20 = objc_alloc(MEMORY[0x1E6959A30]);
      v18 = [v20 initWithOAuth2Token:v46[5] refreshToken:v7 expiryDate:0];
      [*(*(a1 + 40) + 992) setCredential:v18];
      [*(*(a1 + 40) + 992) setSupportsAuthentication:1];
      _SLLog(v1, 5, @"SLWebAuthController will save account with new credential");
      v21 = *(a1 + 40);
      v22 = *(v21 + 1000);
      v23 = *(v21 + 992);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2_106;
      v39[3] = &unk_1E8175C60;
      v41 = v43;
      v42 = &v45;
      v24 = v6;
      v40 = v24;
      [v22 saveAccount:v23 withCompletionHandler:v39];
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);

LABEL_15:
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_3;
  block[3] = &unk_1E8175C88;
  v32 = v8;
  v33 = v9;
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v34 = v7;
  v35 = v25;
  v37 = &v45;
  v38 = v43;
  v36 = v26;
  v27 = v7;
  v28 = v9;
  v29 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v54, 8);
}

intptr_t __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_73(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = a2;
  _SLLog(v3, v5, @"SLWebAuthController did loadItemForTypeIdentifier for response, got error %{public}@");
  v7 = MEMORY[0x1E696ACD0];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [v7 unarchivedObjectOfClasses:v11 fromData:v6 error:0];

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _SLLog(v3, 3, @"SLWebAuthController loadItemForTypeIdentifier did not return a dictionary");
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  v17 = *(a1 + 32);

  return dispatch_semaphore_signal(v17);
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2_106(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  _SLLog(v3, 5, @"SLWebAuthController did save account with success %@ error %{public}@");

  if ((a2 & 1) == 0)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];

  if (v2)
  {
    v3 = [SLWebAuthIdentity alloc];
    v4 = [*(a1 + 32) firstObject];
    v5 = [(SLWebAuthIdentity *)v3 initWithUsername:v4 token:*(*(*(a1 + 72) + 8) + 40) displayName:*(a1 + 40) refreshToken:*(a1 + 48) youTubeUsername:0 idToken:0];
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 56) _dismissAndCompleteWithIdentity:v5 error:*(*(*(a1 + 80) + 8) + 40) extensionCompletion:*(a1 + 64)];
}

- (void)_dismissAndCompleteWithIdentity:(id)a3 error:(id)a4 extensionCompletion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  _SLLog(v5, 5, @"SLWebAuthController will dismiss");
  v12 = [(SLWebAuthController *)self presentingViewController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke;
  v16[3] = &unk_1E8175CB0;
  v17 = v10;
  v18 = v9;
  v19 = self;
  v20 = v11;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  [v12 dismissViewControllerAnimated:1 completion:v16];
}

void __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  _SLLog(v1, 5, @"SLWebAuthController did dismiss");
  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))();
  }

  if (a1[4])
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  _SLLog(v1, v4, @"SLWebAuthController completing with success %d error %{public}@");
  v5 = a1[4];
  v6 = _ACLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke_cold_1(a1 + 5, a1 + 4, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[5] != 0;
    *buf = 67109120;
    v13 = v8;
    _os_log_impl(&dword_1C23AF000, v7, OS_LOG_TYPE_DEFAULT, "SLWebAuthController completing with success %d", buf, 8u);
  }

  v9 = *(a1[6] + 1048);
  if (v9)
  {
    (*(v9 + 16))(v9, a1[5], a1[4]);
    v10 = a1[6];
    v11 = *(v10 + 1048);
    *(v10 + 1048) = 0;
  }
}

- (void)_presentUsernameMismatchAlert
{
  v14 = MEMORY[0x1E695DF90];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v15 localizedStringForKey:@"_EMAIL_MISMATCH_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
  v13 = *MEMORY[0x1E695EE58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"_EMAIL_MISMATCH_MESSAGE" value:&stru_1F41EC300 table:@"Localizable"];
  v5 = *MEMORY[0x1E695EE60];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"_EMAIL_MISMATCH_OK" value:&stru_1F41EC300 table:@"Localizable"];
  v8 = *MEMORY[0x1E695EE78];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 resourceURL];
  v11 = [v14 dictionaryWithObjectsAndKeys:{v2, v13, v4, v5, v7, v8, v10, *MEMORY[0x1E695EE90], 0}];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v11);
  if (v18[3])
  {
    v12 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SLWebAuthController__presentUsernameMismatchAlert__block_invoke;
    block[3] = &unk_1E8175CD8;
    block[4] = &v17;
    dispatch_async(v12, block);
  }

  _Block_object_dispose(&v17, 8);
}

void __52__SLWebAuthController__presentUsernameMismatchAlert__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

- (void)_presentInternetOfflineError
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = *MEMORY[0x1E695EE58];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
  v18[0] = v3;
  v17[1] = *MEMORY[0x1E695EE60];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE_NO_CONNECTION" value:&stru_1F41EC300 table:@"Localizable"];
  v18[1] = v5;
  v17[2] = *MEMORY[0x1E695EE78];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_ERROR_OK" value:&stru_1F41EC300 table:@"Localizable"];
  v18[2] = v7;
  v17[3] = *MEMORY[0x1E695EE90];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 resourceURL];
  v18[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v10);
  if (v14[3])
  {
    v11 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SLWebAuthController__presentInternetOfflineError__block_invoke;
    v12[3] = &unk_1E8175CD8;
    v12[4] = &v13;
    dispatch_async(v11, v12);
  }

  _Block_object_dispose(&v13, 8);
}

void __51__SLWebAuthController__presentInternetOfflineError__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

void __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke_cold_1(void *a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1 != 0;
  v4 = *a2;
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&dword_1C23AF000, log, OS_LOG_TYPE_ERROR, "SLWebAuthController completing with success %d error %{public}@", v5, 0x12u);
}

@end