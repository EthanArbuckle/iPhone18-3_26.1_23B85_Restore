@interface MusicTermsVerificationOperation
+ (BOOL)requiresTermsVerification;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (MusicTermsVerificationOperation)init;
- (MusicTermsVerificationOperation)initWithAdditionalPresentationHandler:(id)a3;
- (NSError)error;
- (SSVFairPlaySAPSession)SAPSession;
- (id)_newTermsUpdateOperationWithAcceptedStoreTermsVersion:(unint64_t)a3;
- (void)_dismissTermsAgreementViewControllerWithCompletionHandler:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_updateSubscriptionStatus;
- (void)setSAPSession:(id)a3;
- (void)start;
- (void)termsAgreementViewController:(id)a3 didRequestSendByEmailToEmailAddress:(id)a4;
- (void)termsAgreementViewControllerDidAcceptTerms:(id)a3;
- (void)termsAgreementViewControllerDidCancel:(id)a3;
@end

@implementation MusicTermsVerificationOperation

- (MusicTermsVerificationOperation)init
{
  v6.receiver = self;
  v6.super_class = MusicTermsVerificationOperation;
  v2 = [(MusicTermsVerificationOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.FuseUI.MusicTermsVerificationOperation.accessQueue", &_dispatch_queue_attr_concurrent);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (MusicTermsVerificationOperation)initWithAdditionalPresentationHandler:(id)a3
{
  v4 = a3;
  v5 = [(MusicTermsVerificationOperation *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    additionalPresentationHandler = v5->_additionalPresentationHandler;
    v5->_additionalPresentationHandler = v6;
  }

  return v5;
}

- (BOOL)isExecuting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __46__MusicTermsVerificationOperation_isExecuting__block_invoke;
  v5[3] = &unk_CEF288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFinished
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __45__MusicTermsVerificationOperation_isFinished__block_invoke;
  v5[3] = &unk_CEF288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)start
{
  if ([(MusicTermsVerificationOperation *)self isCancelled])
  {
    [(MusicTermsVerificationOperation *)self willChangeValueForKey:@"isFinished"];
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __40__MusicTermsVerificationOperation_start__block_invoke;
    block[3] = &unk_CEF3F8;
    block[4] = self;
    dispatch_barrier_async(accessQueue, block);
    [(MusicTermsVerificationOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(MusicTermsVerificationOperation *)self willChangeValueForKey:@"isExecuting"];
    v4 = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __40__MusicTermsVerificationOperation_start__block_invoke_2;
    v7[3] = &unk_CEF3F8;
    v7[4] = self;
    dispatch_barrier_async(v4, v7);
    [(MusicTermsVerificationOperation *)self didChangeValueForKey:@"isExecuting"];
    if ([objc_opt_class() requiresTermsVerification] && self->_additionalPresentationHandler)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __40__MusicTermsVerificationOperation_start__block_invoke_3;
      v6[3] = &unk_CEF3F8;
      v6[4] = self;
      v5 = objc_retainBlock(v6);
      if (+[NSThread isMainThread])
      {
        (v5[2])(v5);
      }

      else
      {
        dispatch_async(&_dispatch_main_q, v5);
      }
    }

    else
    {
      [(MusicTermsVerificationOperation *)self _finishWithError:0];
    }
  }
}

void __40__MusicTermsVerificationOperation_start__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MusicTermsAgreementViewController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  objc_setAssociatedObject(*(*(a1 + 32) + 48), _MusicTermsVerificationOperationAssociatedObjectKey, *(a1 + 32), &dword_0 + 1);
  [*(*(a1 + 32) + 48) setDelegate:?];
  [*(*(a1 + 32) + 48) setLoading:1];
  v5 = [[UINavigationController alloc] initWithRootViewController:*(*(a1 + 32) + 48)];
  [v5 setModalPresentationStyle:2];
  (*(*(*(a1 + 32) + 56) + 16))();
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__MusicTermsVerificationOperation_start__block_invoke_4;
  block[3] = &unk_CEF3F8;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
}

void __40__MusicTermsVerificationOperation_start__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _newTermsUpdateOperationWithAcceptedStoreTermsVersion:0];
  objc_initWeak(&location, v2);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __40__MusicTermsVerificationOperation_start__block_invoke_5;
  v3[3] = &unk_CEF470;
  objc_copyWeak(&v4, &location);
  v3[4] = *(a1 + 32);
  [v2 setCompletionBlock:v3];
  [v2 start];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __40__MusicTermsVerificationOperation_start__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained error];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 domain];
      if ([v6 isEqualToString:SSErrorDomain])
      {
        v7 = [v5 code] == &stru_68.addr + 4;
      }

      else
      {
        v7 = 0;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __40__MusicTermsVerificationOperation_start__block_invoke_8;
      v11[3] = &unk_CEF448;
      v11[4] = *(a1 + 32);
      v13 = v7;
      v12 = v5;
      dispatch_async(&_dispatch_main_q, v11);
      v10 = v12;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __40__MusicTermsVerificationOperation_start__block_invoke_6;
      block[3] = &unk_CEF420;
      v8 = v3;
      v9 = *(a1 + 32);
      v15 = v8;
      v16 = v9;
      dispatch_async(&_dispatch_main_q, block);
      v10 = v15;
    }
  }

  else
  {
    [*(a1 + 32) _finishWithError:0];
  }
}

void __40__MusicTermsVerificationOperation_start__block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) hasAcceptedLatestTerms])
  {
    [*(a1 + 40) _updateSubscriptionStatus];
    v2 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __40__MusicTermsVerificationOperation_start__block_invoke_7;
    v6[3] = &unk_CEF3F8;
    v6[4] = v2;
    [v2 _dismissTermsAgreementViewControllerWithCompletionHandler:v6];
  }

  else
  {
    *(*(a1 + 40) + 8) = [*(a1 + 32) latestStoreTermsVersion];
    [*(*(a1 + 40) + 48) setLoading:0];
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 48);
    v5 = [v3 termsContentText];
    [v4 setTermsText:v5];
  }
}

void __40__MusicTermsVerificationOperation_start__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __40__MusicTermsVerificationOperation_start__block_invoke_9;
  v2[3] = &unk_CEF448;
  v2[4] = v1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 _dismissTermsAgreementViewControllerWithCompletionHandler:v2];
}

id __40__MusicTermsVerificationOperation_start__block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return [v2 _finishWithError:v3];
}

- (void)termsAgreementViewControllerDidAcceptTerms:(id)a3
{
  v4 = a3;
  [v4 setAccepting:1];
  v5 = [(MusicTermsVerificationOperation *)self _newTermsUpdateOperationWithAcceptedStoreTermsVersion:self->_acceptingTermsVersion];
  objc_initWeak(&location, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke;
  v11[3] = &unk_CEF4C0;
  objc_copyWeak(&v13, &location);
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  [v5 setCompletionBlock:v11];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_7;
  block[3] = &unk_CEF3F8;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained error];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 domain];
      if ([v6 isEqualToString:SSErrorDomain])
      {
        v7 = [v5 code] == &stru_68.addr + 4;
      }

      else
      {
        v7 = 0;
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_4;
      v10[3] = &unk_CEF498;
      v13 = v7;
      v10[4] = a1[4];
      v11 = v5;
      v12 = a1[5];
      dispatch_async(&_dispatch_main_q, v10);
    }

    else
    {
      [a1[4] _updateSubscriptionStatus];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_2;
      block[3] = &unk_CEF3F8;
      block[4] = a1[4];
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v8 = a1[4];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_6;
    v9[3] = &unk_CEF3F8;
    v9[4] = v8;
    [v8 _dismissTermsAgreementViewControllerWithCompletionHandler:v9];
  }
}

id __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_3;
  v3[3] = &unk_CEF3F8;
  v3[4] = v1;
  return [v1 _dismissTermsAgreementViewControllerWithCompletionHandler:v3];
}

void __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __78__MusicTermsVerificationOperation_termsAgreementViewControllerDidAcceptTerms___block_invoke_5;
    v12[3] = &unk_CEF420;
    v12[4] = v2;
    v13 = *(a1 + 40);
    [v2 _dismissTermsAgreementViewControllerWithCompletionHandler:v12];
  }

  else
  {
    [*(a1 + 48) setAccepting:0];
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Your request couldn’t be completed." value:&stru_D5B658 table:0];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Your agreement to the Terms and Conditions couldn’t be submitted. Try again later." value:&stru_D5B658 table:0];
    v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_D5B658 table:0];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];

    [v11 addAction:v9];
    v10 = *(*(a1 + 32) + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, v11);
    }
  }
}

- (void)termsAgreementViewControllerDidCancel:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __73__MusicTermsVerificationOperation_termsAgreementViewControllerDidCancel___block_invoke;
  v3[3] = &unk_CEF3F8;
  v3[4] = self;
  [(MusicTermsVerificationOperation *)self _dismissTermsAgreementViewControllerWithCompletionHandler:v3];
}

void __73__MusicTermsVerificationOperation_termsAgreementViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();
  [v1 _finishWithError:v2];
}

- (void)termsAgreementViewController:(id)a3 didRequestSendByEmailToEmailAddress:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    v6 = [[MusicTermsSendByEmailOperation alloc] initWithEmailAddress:v5];
    v7 = [(MusicTermsVerificationOperation *)self SAPSession];
    if (v7)
    {
      [(MusicTermsSendByEmailOperation *)v6 setSAPSession:v7];
    }

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __100__MusicTermsVerificationOperation_termsAgreementViewController_didRequestSendByEmailToEmailAddress___block_invoke;
    block[3] = &unk_CEF3F8;
    v11 = v6;
    v9 = v6;
    dispatch_async(v8, block);
  }
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __40__MusicTermsVerificationOperation_error__block_invoke;
  v5[3] = &unk_CEF288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (SSVFairPlaySAPSession)SAPSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __45__MusicTermsVerificationOperation_SAPSession__block_invoke;
  v5[3] = &unk_CEF288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setSAPSession:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __49__MusicTermsVerificationOperation_setSAPSession___block_invoke;
  v7[3] = &unk_CEF420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

+ (BOOL)requiresTermsVerification
{
  v2 = +[MPCloudServiceStatusController sharedController];
  v3 = [v2 musicSubscriptionStatus];
  [v3 termsStatusList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 type] == &dword_0 + 1)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [v5 currentVersion];
  v10 = [v5 acceptedVersion];
  v12 = v9 > 0 && v10 < v9;

  return v12;
}

- (void)_dismissTermsAgreementViewControllerWithCompletionHandler:(id)a3
{
  v9 = a3;
  v4 = [(MusicTermsAgreementViewController *)self->_termsAgreementViewController navigationController];
  v5 = v4;
  if (v4 && ([v4 presentingViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "presentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == v5))
  {
    v8 = [v5 presentingViewController];
    [v8 dismissViewControllerAnimated:1 completion:v9];
  }

  else if (v9)
  {
    v9[2]();
  }
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__MusicTermsVerificationOperation__finishWithError___block_invoke;
  block[3] = &unk_CEF3F8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(MusicTermsVerificationOperation *)self willChangeValueForKey:@"isExecuting"];
  [(MusicTermsVerificationOperation *)self willChangeValueForKey:@"isFinished"];
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__MusicTermsVerificationOperation__finishWithError___block_invoke_2;
  v7[3] = &unk_CEF420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
  [(MusicTermsVerificationOperation *)self didChangeValueForKey:@"isExecuting"];
  [(MusicTermsVerificationOperation *)self didChangeValueForKey:@"isFinished"];
}

void __52__MusicTermsVerificationOperation__finishWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpTermsAgreementViewController:*(*(a1 + 32) + 48)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

void __52__MusicTermsVerificationOperation__finishWithError___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  *(*(a1 + 32) + 33) = 1;
  *(*(a1 + 32) + 32) = 0;
}

- (id)_newTermsUpdateOperationWithAcceptedStoreTermsVersion:(unint64_t)a3
{
  v4 = [[MusicTermsUpdateOperation alloc] initWithAcceptedStoreTermsVersion:a3 termsContext:@"subscription"];
  v5 = [(MusicTermsVerificationOperation *)self SAPSession];
  if (v5)
  {
    [(MusicTermsUpdateOperation *)v4 setSAPSession:v5];
  }

  return v4;
}

- (void)_updateSubscriptionStatus
{
  v2 = +[SSVSubscriptionStatusCoordinator sharedCoordinator];
  v5 = SSVSubscriptionStatusOptionIgnoreCache;
  v6 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 getStatusWithOptions:v3 statusBlock:&__block_literal_global_3];

  v4 = +[MPCloudServiceStatusController sharedController];
  [v4 refreshMusicSubscriptionStatus];
}

@end