@interface ILClassificationUIExtensionHostViewController
- (ILClassificationUIExtensionHostViewController)initWithClassificationRequest:(id)a3 sender:(id)a4 isoCountryCode:(id)a5;
- (ILClassificationUIExtensionHostViewControllerDelegate)delegate;
- (id)initUnactivatedVCWithRequest:(id)a3 sender:(id)a4 isoCountryCode:(id)a5;
- (id)logErrorWithMessage:(id)a3;
- (void)activateExtensionWithCompletion:(id)a3;
- (void)blockNumber:(id)a3 withCountryCode:(id)a4;
- (void)didCompleteClassificationRequestWithResponse:(id)a3;
- (void)finish;
- (void)launchSettings;
- (void)presentBlockAlertWithCompletion:(id)a3;
- (void)userDidFinishForExtensionShellViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation ILClassificationUIExtensionHostViewController

- (ILClassificationUIExtensionHostViewController)initWithClassificationRequest:(id)a3 sender:(id)a4 isoCountryCode:(id)a5
{
  v5 = [(ILClassificationUIExtensionHostViewController *)self initUnactivatedVCWithRequest:a3 sender:a4 isoCountryCode:a5];
  [(ILClassificationUIExtensionHostViewController *)v5 activateExtensionWithCompletion:0];
  return v5;
}

- (id)initUnactivatedVCWithRequest:(id)a3 sender:(id)a4 isoCountryCode:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = ILClassificationUIExtensionHostViewController;
  v12 = [(ILClassificationUIExtensionHostViewController *)&v21 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v13->_classificationRequest, a3);
    objc_storeStrong(&v13->_sender, a4);
    objc_storeStrong(&v13->_isoCountryCode, a5);
    v14 = [[ILClassificationReportingController alloc] initWithHostViewController:v13];
    reportingController = v13->_reportingController;
    v13->_reportingController = v14;

    v16 = objc_alloc_init(ILClassificationExtensionShellViewController);
    shellViewController = v13->_shellViewController;
    v13->_shellViewController = v16;

    [(ILClassificationExtensionShellViewController *)v13->_shellViewController setDelegate:v13];
    v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13->_shellViewController];
    navigationController = v13->_navigationController;
    v13->_navigationController = v18;
  }

  return v13;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ILClassificationUIExtensionHostViewController;
  [(ILClassificationUIExtensionHostViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [(ILClassificationUIExtensionHostViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(ILClassificationUIExtensionHostViewController *)self view];
  v6 = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  v7 = [v6 view];
  [v5 addSubview:v7];

  v8 = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  [(ILClassificationUIExtensionHostViewController *)self addChildViewController:v8];

  v9 = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  [v9 didMoveToParentViewController:self];
}

- (void)activateExtensionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD2C18] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke;
  v7[3] = &unk_278A5F430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 activateWithCompletion:v7];
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = ILDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 identifier];
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_238A6C000, v7, OS_LOG_TYPE_DEFAULT, "Instantiating remote view controller for extension identifier %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_12;
    v17[3] = &unk_278A5F3E0;
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v17[4] = v10;
    v11 = v5;
    v18 = v11;
    v19 = v9[1];
    [v11 instantiateViewControllerWithInputItems:MEMORY[0x277CBEBF8] connectionHandler:v17];
    objc_initWeak(buf, *v9);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22;
    v15[3] = &unk_278A5F408;
    objc_copyWeak(&v16, buf);
    [v11 setRequestInterruptionBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = [*(a1 + 32) logErrorWithMessage:@"Failed to determine ui classification extension"];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v10);

  v11 = v9;
  if (v7 && v8)
  {
    [*(a1 + 32) setExtension:*(a1 + 40)];
    [*(a1 + 32) setExtensionRequestIdentifier:v7];
    v12 = [*(a1 + 40) _extensionContextForUUID:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = ILDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_238A6C000, v13, OS_LOG_TYPE_DEFAULT, "Successfully instantiated remote view controller %@", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      v15 = [v14 queue];
      [v12 setDelegate:v14 queue:v15];

      [*(a1 + 32) setExtensionHostContext:v12];
      v16 = ILDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) classificationRequest];
        *buf = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_238A6C000, v16, OS_LOG_TYPE_DEFAULT, "Preparing view controller %@ for classification request %@", buf, 0x16u);
      }

      v18 = [*(a1 + 32) classificationRequest];
      [v12 prepareForClassificationRequest:v18];

      v19 = [*(a1 + 32) shellViewController];
      [v19 displayExtensionViewController:v8 forExtension:*(a1 + 40)];

      v20 = v11;
    }

    else
    {
      v25 = *(a1 + 32);
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not obtain extension host context of class %@: %@", objc_opt_class(), v12];
      v20 = [v25 logErrorWithMessage:v26];
    }
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = *(a1 + 32);
    v23 = [*(a1 + 40) identifier];
    v24 = [v21 stringWithFormat:@"Failed to instantiate view controller with extension identifier %@: %@", v23, v11];
    v20 = [v22 logErrorWithMessage:v24];
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v20);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finish];
}

- (void)userDidFinishForExtensionShellViewController:(id)a3
{
  v4 = [(ILClassificationUIExtensionHostViewController *)self extensionHostContext];
  v5 = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__ILClassificationUIExtensionHostViewController_userDidFinishForExtensionShellViewController___block_invoke;
  v6[3] = &unk_278A5F458;
  v6[4] = self;
  [v4 classificationResponseForRequest:v5 completion:v6];
}

uint64_t __94__ILClassificationUIExtensionHostViewController_userDidFinishForExtensionShellViewController___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) didCompleteClassificationRequestWithResponse:a2];
  }

  return result;
}

- (void)didCompleteClassificationRequestWithResponse:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ILClassificationUIExtensionHostViewController *)self queue];
  dispatch_assert_queue_V2(v5);

  [(ILClassificationUIExtensionHostViewController *)self setClassificationResponse:v4];
  v6 = ILDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_238A6C000, v6, OS_LOG_TYPE_DEFAULT, "Host VC didCompleteClassificationRequest: %@ with response: %@", buf, 0x16u);
  }

  v8 = [v4 action];
  if ((v8 - 1) < 2)
  {
    v11 = [(ILClassificationUIExtensionHostViewController *)self reportingController];
    v12 = [(ILClassificationUIExtensionHostViewController *)self extension];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke;
    v23 = &unk_278A5F4A8;
    v24 = self;
    v13 = &v20;
    goto LABEL_8;
  }

  if (!v8)
  {
    [(ILClassificationUIExtensionHostViewController *)self finish];
    goto LABEL_10;
  }

  if (v8 == 3)
  {
    v9 = [(ILClassificationUIExtensionHostViewController *)self sender];
    v10 = [(ILClassificationUIExtensionHostViewController *)self isoCountryCode];
    [(ILClassificationUIExtensionHostViewController *)self blockNumber:v9 withCountryCode:v10];

    v11 = [(ILClassificationUIExtensionHostViewController *)self reportingController];
    v12 = [(ILClassificationUIExtensionHostViewController *)self extension];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_3;
    v18 = &unk_278A5F4A8;
    v19 = self;
    v13 = &v15;
LABEL_8:
    [v11 reportResponse:v4 forExtension:v12 withCompletion:{v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24}];
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  v3 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_2;
    v5[3] = &unk_278A5F480;
    v5[4] = v3;
    return [v3 dismissViewControllerAnimated:0 completion:v5];
  }

  else
  {

    return [v3 finish];
  }
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  v3 = *(a1 + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_4;
    v6[3] = &unk_278A5F480;
    v6[4] = v3;
    return [v3 dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_6;
    v5[3] = &unk_278A5F480;
    v5[4] = v3;
    return [v3 presentBlockAlertWithCompletion:v5];
  }
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_5;
  v3[3] = &unk_278A5F480;
  v3[4] = v1;
  return [v1 presentBlockAlertWithCompletion:v3];
}

- (void)finish
{
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238A6C000, v3, OS_LOG_TYPE_DEFAULT, "Finished, invoking didCompleteClassificationRequest", v7, 2u);
  }

  v4 = [(ILClassificationUIExtensionHostViewController *)self delegate];
  v5 = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
  v6 = [(ILClassificationUIExtensionHostViewController *)self classificationResponse];
  [v4 controller:self didCompleteClassificationRequest:v5 withResponse:v6];
}

- (void)presentBlockAlertWithCompletion:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ILClassificationUIExtensionHostViewController *)self sender];
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&dword_238A6C000, v4, OS_LOG_TYPE_DEFAULT, "Present block alert for: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"%@_HAS_BLOCKED_%@_MESSAGE" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v9 = [(ILClassificationUIExtensionHostViewController *)self extension];
  v10 = [v9 _plugIn];
  v11 = [v10 localizedContainingName];
  v12 = [(ILClassificationUIExtensionHostViewController *)self sender];
  v13 = [v6 stringWithFormat:v8, v11, v12];

  v14 = MEMORY[0x277D75110];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"NUMBER_HAS_BEEN_BLOCKED" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v17 = [v14 alertControllerWithTitle:v16 message:v13 preferredStyle:1];

  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"OKAY" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke;
  v36[3] = &unk_278A5F4D0;
  v21 = v30;
  v37 = v21;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v36];
  [v17 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SETTINGS" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_53;
  v34[3] = &unk_278A5F4F8;
  v34[4] = self;
  v35 = v21;
  v26 = v21;
  v27 = [v23 actionWithTitle:v25 style:0 handler:v34];
  [v17 addAction:v27];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_54;
  block[3] = &unk_278A5F520;
  v32 = v17;
  v33 = self;
  v28 = v17;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed report and block alert controller", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_53(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "User launched settings", v4, 2u);
  }

  [*(a1 + 32) launchSettings];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_54(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "Present reportAndBlockAlert: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) presentViewController:*(a1 + 32) animated:1 completion:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)launchSettings
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_238A6C000, log, OS_LOG_TYPE_ERROR, "Error opening url: %@ (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)blockNumber:(id)a3 withCountryCode:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = ILDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_238A6C000, v7, OS_LOG_TYPE_DEFAULT, "blocking number: %@ with country code: %@", &v13, 0x16u);
  }

  v8 = CUTWeakLinkClass();
  v9 = CUTWeakLinkClass();
  v10 = [v8 sharedPrivacyManager];
  v11 = [v9 phoneNumberWithDigits:v5 countryCode:v6];
  [v10 setBlockIncomingCommunication:1 forPhoneNumber:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)logErrorWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ILClassificationUIExtensionHostViewController *)v3 logErrorWithMessage:v4];
  }

  v5 = MEMORY[0x277CCA9B8];
  v10 = @"ErrorMessage";
  v11[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"ILClassificationUIExtensionHostViewController" code:0 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (ILClassificationUIExtensionHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "handling interruption for extension with identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logErrorWithMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end