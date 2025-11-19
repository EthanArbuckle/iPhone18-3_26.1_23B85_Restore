@interface AKBiometricRatchetiOSUIProvider
- (AKBiometricRatchetiOSUIProvider)initWithContext:(id)a3;
- (id)_makeRatchetOptions:(id)a3;
- (void)_disableFindMyIfRequiredWithContext:(id)a3 completion:(id)a4;
- (void)_dismissRatchetUIForContext:(id)a3 viewController:(id)a4;
- (void)_displayFindMyDisablementFailedErrorWithContext:(id)a3;
- (void)_presentEmbeddedRatchetUIWithOptions:(id)a3;
- (void)_presentRatchetUIWithContext:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_rightNavButtonTapped;
- (void)dealloc;
- (void)presentRatchetUIWithCompletion:(id)a3;
- (void)ratchetViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
@end

@implementation AKBiometricRatchetiOSUIProvider

- (AKBiometricRatchetiOSUIProvider)initWithContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v8 = [location[0] description];
    __os_log_helper_16_2_1_8_64(v14, v8);
    _os_log_debug_impl(&dword_222379000, v11, v10, "initing iOS bio ratchet UI provider with context: %@", v14, 0xCu);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v11, 0);
  v3 = v13;
  v13 = 0;
  v9.receiver = v3;
  v9.super_class = AKBiometricRatchetiOSUIProvider;
  v13 = [(AKBiometricRatchetiOSUIProvider *)&v9 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    objc_storeWeak(&v13->_context, location[0]);
    v4 = [MEMORY[0x277D08F78] sharedInstance];
    findMyManager = v13->_findMyManager;
    v13->_findMyManager = v4;
    MEMORY[0x277D82BD8](findMyManager);
  }

  v7 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "AKBiometricRatchetiOSUIProvider deallocated", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4.receiver = v8;
  v4.super_class = AKBiometricRatchetiOSUIProvider;
  [(AKBiometricRatchetiOSUIProvider *)&v4 dealloc];
}

- (void)_presentEmbeddedRatchetUIWithOptions:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v19 = [location[0] debugDescription];
    __os_log_helper_16_2_1_8_64(v30, v19);
    _os_log_debug_impl(&dword_222379000, v26, v25, "Present embedded ratchet with options: %@", v30, 0xCu);
    MEMORY[0x277D82BD8](v19);
  }

  objc_storeStrong(&v26, 0);
  dispatch_group_enter(v28->_dispatchGroup);
  WeakRetained = objc_loadWeakRetained(&v28->_context);
  if (LocalAuthenticationEmbeddedUILibraryCore(0))
  {
    LARatchetViewControllerClass = getLARatchetViewControllerClass();
  }

  else
  {
    LARatchetViewControllerClass = 0;
  }

  v8 = [LARatchetViewControllerClass makeViewControllerWithOptions:location[0]];
  [(AKBiometricRatchetiOSUIProvider *)v28 setRatchetViewController:?];
  MEMORY[0x277D82BD8](v8);
  v13 = [(AKBiometricRatchetiOSUIProvider *)v28 ratchetViewController];
  v12 = [(LARatchetViewController *)v13 navigationItem];
  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = [WeakRetained embeddedUIRightNavButtonTitle];
  v10 = [v9 initWithTitle:? style:? target:? action:?];
  [v12 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = v28;
  v15 = [(AKBiometricRatchetiOSUIProvider *)v28 ratchetViewController];
  [(LARatchetViewController *)v15 setDelegate:v14];
  MEMORY[0x277D82BD8](v15);
  v16 = [WeakRetained embeddedUIPresentationMode];
  v17 = [v16 isEqualToString:@"Modal"];
  MEMORY[0x277D82BD8](v16);
  if (v17)
  {
    v23 = _AKLogSystem();
    v22 = 2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      log = v23;
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_debug_impl(&dword_222379000, log, type, "Ratchet presenting modally", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v5 = [(AKBiometricRatchetiOSUIProvider *)v28 ratchetViewController];
    [(LARatchetViewController *)v5 evaluateAndPresentViewController];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v20 = _AKLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained embeddedUIPresentationMode];
      __os_log_helper_16_2_1_8_64(v29, v4);
      _os_log_debug_impl(&dword_222379000, v20, OS_LOG_TYPE_DEBUG, "Ratchet presenting push, %@", v29, 0xCu);
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&v20, 0);
    v3 = [(AKBiometricRatchetiOSUIProvider *)v28 ratchetViewController];
    [(LARatchetViewController *)v3 evaluateAndShowViewController];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_presentRatchetUIWithContext:(id)a3 options:(id)a4 completion:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  dispatch_group_enter(v39[3]);
  v35 = +[AKBiometricRatchetUtility ratchetIdentifier];
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v41, v35);
    _os_log_debug_impl(&dword_222379000, v34, v33, "ratchet identifier is: %@", v41, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v9 = objc_alloc(MEMORY[0x277CD47A8]);
  v8 = [v9 initWithIdentifier:v35];
  [(dispatch_group_t *)v39 setRatchet:v8];
  MEMORY[0x277D82BD8](v8);
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v7 = [location[0] debugDescription];
    __os_log_helper_16_2_1_8_64(v40, v7);
    _os_log_debug_impl(&dword_222379000, v20, v19, "presentBiometricRatchetArmingUIWithCompletion with context: %@", v40, 0xCu);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v20, 0);
  v6 = [(dispatch_group_t *)v39 ratchet];
  v5 = v37;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __83__AKBiometricRatchetiOSUIProvider__presentRatchetUIWithContext_options_completion___block_invoke;
  v16 = &unk_2784A5BC8;
  v18[1] = v27;
  v18[2] = v21;
  v18[0] = MEMORY[0x277D82BE0](v36);
  v17 = MEMORY[0x277D82BE0](v39);
  [v6 armWithOptions:v5 completion:&v12];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v21, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __83__AKBiometricRatchetiOSUIProvider__presentRatchetUIWithContext_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  v15 = 1;
  if (!location[0])
  {
    v15 = v20 != 0;
  }

  if (!v15)
  {
    __assert_rtn("[AKBiometricRatchetiOSUIProvider _presentRatchetUIWithContext:options:completion:]_block_invoke", "AKBiometricRatchetiOSUIProvider.m", 112, "result != nil || error != nil");
  }

  v12 = [location[0] objectForKeyedSubscript:&unk_2835AACC0];
  MEMORY[0x277D82BD8](v12);
  if (v12)
  {
    v3 = [AKBiometricRatchetUtility resultForSuccessfulArmingFromResponse:location[0]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v6 = [AKBiometricRatchetUtility resultForNonArmingFromError:v20];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
    MEMORY[0x277D82BD8](v8);
    if (!*(*(a1[6] + 8) + 40))
    {
      v11 = [v20 userInfo];
      v19[0] = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      MEMORY[0x277D82BD8](v11);
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v23, v20, v19[0]);
        _os_log_error_impl(&dword_222379000, v18, v17, "Ratchet is in unexpected error - %@, underlying error - %@", v23, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      if (v19[0])
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v19[0]);
      }

      else
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v20);
      }

      objc_storeStrong(v19, 0);
    }
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v22, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "returning result: %@, error: %@", v22, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[5])
  {
    v9 = *(*(a1[6] + 8) + 40);
    v10 = *(*(a1[7] + 8) + 40);
    (*(a1[5] + 16))();
  }

  dispatch_group_leave(*(a1[4] + 24));
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentRatchetUIWithCompletion:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v30->_context);
  v27 = [(AKBiometricRatchetiOSUIProvider *)v30 _makeRatchetOptions:WeakRetained];
  v3 = dispatch_group_create();
  dispatchGroup = v30->_dispatchGroup;
  v30->_dispatchGroup = v3;
  MEMORY[0x277D82BD8](dispatchGroup);
  dispatch_group_enter(v30->_dispatchGroup);
  v21[0] = 0;
  v21[1] = v21;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v10 = v30;
  v9 = WeakRetained;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke;
  v19[3] = &unk_2784A5BF0;
  v20[1] = v21;
  v20[0] = MEMORY[0x277D82BE0](v30);
  [(AKBiometricRatchetiOSUIProvider *)v10 _disableFindMyIfRequiredWithContext:v9 completion:v19];
  v8 = [WeakRetained metaContext];
  MEMORY[0x277D82BD8](v8);
  if (v8)
  {
    [(AKBiometricRatchetiOSUIProvider *)v30 setRatchetArmCompletion:location[0]];
    [(AKBiometricRatchetiOSUIProvider *)v30 _presentEmbeddedRatchetUIWithOptions:v27];
  }

  else
  {
    v7 = v30;
    v5 = WeakRetained;
    v6 = v27;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_40;
    v15 = &unk_2784A5C40;
    v16 = MEMORY[0x277D82BE0](v30);
    v18[1] = v21;
    v17 = MEMORY[0x277D82BE0](WeakRetained);
    v18[0] = MEMORY[0x277D82BE0](location[0]);
    [(AKBiometricRatchetiOSUIProvider *)v7 _presentRatchetUIWithContext:v5 options:v6 completion:&v11];
    objc_storeStrong(v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(v20, 0);
  _Block_object_dispose(v21, 8);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v5, location[0]);
      _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "disableFindMy failed with error - %@", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(a1[5].isa + 1) + 40), location[0]);
  }

  dispatch_group_leave(*(a1[4].isa + 3));
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  objc_initWeak(v19, *(a1 + 32));
  group = *(*(a1 + 32) + 24);
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_2;
  v13 = &unk_2784A5C18;
  objc_copyWeak(&v18, v19);
  v17[1] = *(a1 + 56);
  v14 = MEMORY[0x277D82BE0](v20);
  v15 = MEMORY[0x277D82BE0](*(a1 + 40));
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[0] = MEMORY[0x277D82BE0](*(a1 + 48));
  dispatch_group_notify(group, queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __66__AKBiometricRatchetiOSUIProvider_presentRatchetUIWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 72));
  if (*(*(*(a1 + 64) + 8) + 40) && !*(a1 + 32))
  {
    [location[0] _displayFindMyDisablementFailedErrorWithContext:*(a1 + 40)];
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v6, *(a1 + 48), *(a1 + 32));
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Ratchet returning result: %@, error: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (*(a1 + 56))
  {
    v1 = *(a1 + 48);
    v2 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_makeRatchetOptions:(id)a3
{
  v61 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] presentingViewController];
  contextViewController = v61->_contextViewController;
  v61->_contextViewController = v3;
  MEMORY[0x277D82BD8](contextViewController);
  v23 = [location[0] beginRatchetTitle];
  v57 = 0;
  v55 = 0;
  v53 = 0;
  if (v23)
  {
    v58 = [location[0] beginRatchetTitle];
    v57 = 1;
    v5 = MEMORY[0x277D82BE0](v58);
  }

  else
  {
    v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = 1;
    v54 = [v56 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v53 = 1;
    v5 = MEMORY[0x277D82BE0](v54);
  }

  v59 = v5;
  if (v53)
  {
    MEMORY[0x277D82BD8](v54);
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
  }

  MEMORY[0x277D82BD8](v23);
  v22 = [location[0] beginRatchetBody];
  v50 = 0;
  v48 = 0;
  v46 = 0;
  if (v22)
  {
    v51 = [location[0] beginRatchetBody];
    v50 = 1;
    v6 = MEMORY[0x277D82BE0](v51);
  }

  else
  {
    v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = 1;
    v47 = [v49 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_BODY" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v46 = 1;
    v6 = MEMORY[0x277D82BE0](v47);
  }

  v52 = v6;
  if (v46)
  {
    MEMORY[0x277D82BD8](v47);
  }

  if (v48)
  {
    MEMORY[0x277D82BD8](v49);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  MEMORY[0x277D82BD8](v22);
  v21 = [location[0] countdownText];
  v43 = 0;
  v41 = 0;
  v39 = 0;
  if (v21)
  {
    v44 = [location[0] countdownText];
    v43 = 1;
    v7 = MEMORY[0x277D82BE0](v44);
  }

  else
  {
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = 1;
    v40 = [v42 localizedStringForKey:@"BIOMETRIC_RATCHET_COUNTDOWN_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v39 = 1;
    v7 = MEMORY[0x277D82BE0](v40);
  }

  v45 = v7;
  if (v39)
  {
    MEMORY[0x277D82BD8](v40);
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](v42);
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](v44);
  }

  MEMORY[0x277D82BD8](v21);
  v20 = [location[0] reason];
  v36 = 0;
  v34 = 0;
  v32 = 0;
  if (v20)
  {
    v37 = [location[0] reason];
    v36 = 1;
    v8 = MEMORY[0x277D82BE0](v37);
  }

  else
  {
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = 1;
    v33 = [v35 localizedStringForKey:@"BIOMETRIC_RATCHET_FALLBACK_ALERT_SUBTITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v32 = 1;
    v8 = MEMORY[0x277D82BE0](v33);
  }

  v38 = v8;
  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  MEMORY[0x277D82BD8](v20);
  v19 = [location[0] calloutReason];
  v29 = 0;
  v27 = 0;
  v25 = 0;
  if (v19)
  {
    v30 = [location[0] calloutReason];
    v29 = 1;
    v9 = MEMORY[0x277D82BE0](v30);
  }

  else
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = 1;
    v26 = [v28 localizedStringForKey:@"BIOMETRIC_RATCHET_CALLOUT_REASON_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable];
    v25 = 1;
    v9 = MEMORY[0x277D82BE0](v26);
  }

  v31 = v9;
  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  MEMORY[0x277D82BD8](v19);
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v24 setObject:v38 forKeyedSubscript:&unk_2835AACD8];
  [v24 setObject:v31 forKeyedSubscript:&unk_2835AACC0];
  [v24 setObject:v61->_contextViewController forKeyedSubscript:&unk_2835AACF0];
  v11 = [location[0] deeplinkURL];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v11);
  v12 = objc_alloc(MEMORY[0x277CCABB0]);
  v13 = [v12 initWithBool:{objc_msgSend(location[0], "fallbackToNoAuth")}];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v13);
  [v24 setObject:v59 forKeyedSubscript:&unk_2835AAD38];
  [v24 setObject:v52 forKeyedSubscript:&unk_2835AAD50];
  v14 = objc_alloc(MEMORY[0x277CCABB0]);
  v15 = [v14 initWithBool:{objc_msgSend(location[0], "showsLocationWarning")}];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v15);
  [v24 setObject:v45 forKeyedSubscript:&unk_2835AAD80];
  v16 = objc_alloc(MEMORY[0x277CCABB0]);
  v17 = [v16 initWithBool:{objc_msgSend(location[0], "notInteractive")}];
  [v24 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v17);
  v18 = [v24 copy];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);

  return v18;
}

- (void)_rightNavButtonTapped
{
  v10 = self;
  v9[1] = a2;
  v9[0] = objc_loadWeakRetained(&self->_context);
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD4770] code:-2 userInfo:?];
  v6 = [(AKBiometricRatchetiOSUIProvider *)v10 ratchetArmCompletion];
  v6[2](v6, 0, v8);
  MEMORY[0x277D82BD8](v6);
  contextViewController = v10->_contextViewController;
  if (objc_opt_respondsToSelector())
  {
    v7 = MEMORY[0x277D82BE0](v10->_contextViewController);
    [v7 rightNavButtonTapped];
    objc_storeStrong(&v7, 0);
  }

  v5 = [(AKBiometricRatchetiOSUIProvider *)v10 ratchetViewController:v9[0]];
  [v4 _dismissRatchetUIForContext:v3 viewController:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
}

- (void)ratchetViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = _AKLogSystem();
  v41 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v48, v44, v43);
    _os_log_debug_impl(&dword_222379000, v42, v41, "ratchetViewController didFinishWithResult: result: %@, error: %@", v48, 0x16u);
  }

  objc_storeStrong(&v42, 0);
  v14 = 1;
  if (!v44)
  {
    v14 = v43 != 0;
  }

  if (!v14)
  {
    __assert_rtn("[AKBiometricRatchetiOSUIProvider ratchetViewController:didFinishWithResult:error:]", "AKBiometricRatchetiOSUIProvider.m", 216, "result != nil || error != nil");
  }

  v40 = 0;
  v39 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  WeakRetained = objc_loadWeakRetained(&v46->_context);
  v13 = [v44 objectForKeyedSubscript:&unk_2835AACC0];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v5 = [AKBiometricRatchetUtility resultForSuccessfulArmingFromResponse:v44];
    v6 = v40;
    v40 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v7 = [AKBiometricRatchetUtility resultForNonArmingFromError:v43];
    v8 = v40;
    v40 = v7;
    MEMORY[0x277D82BD8](v8);
    if (v43)
    {
      v12 = [v43 userInfo];
      v31 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      MEMORY[0x277D82BD8](v12);
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v47, v43, v31);
        _os_log_error_impl(&dword_222379000, v30, v29, "Ratchet is in unexpected error - %@, underlying error - %@", v47, 0x16u);
      }

      objc_storeStrong(&v30, 0);
      if (v31)
      {
        objc_storeStrong(&v39, v31);
      }

      else
      {
        objc_storeStrong(&v39, v43);
      }

      objc_storeStrong(&v31, 0);
    }
  }

  dispatch_group_leave(v46->_dispatchGroup);
  objc_initWeak(&from, v46);
  group = v46->_dispatchGroup;
  v9 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __83__AKBiometricRatchetiOSUIProvider_ratchetViewController_didFinishWithResult_error___block_invoke;
  v21 = &unk_2784A5C68;
  objc_copyWeak(&v27, &from);
  v26[1] = v33;
  v22 = MEMORY[0x277D82BE0](v39);
  v23 = MEMORY[0x277D82BE0](WeakRetained);
  v24 = MEMORY[0x277D82BE0](v46);
  v25 = MEMORY[0x277D82BE0](v40);
  v26[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_group_notify(group, queue, &v17);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&from);
  objc_storeStrong(&WeakRetained, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __83__AKBiometricRatchetiOSUIProvider_ratchetViewController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 80));
  if (*(*(*(a1 + 72) + 8) + 40) && !*(a1 + 32))
  {
    [location[0] _displayFindMyDisablementFailedErrorWithContext:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) ratchetArmCompletion];
  MEMORY[0x277D82BD8](v2);
  if (v2)
  {
    v1 = [*(a1 + 48) ratchetArmCompletion];
    (*(v1 + 2))(v1, *(a1 + 56), *(a1 + 32));
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), 0);
  [*(a1 + 48) _dismissRatchetUIForContext:*(a1 + 40) viewController:*(a1 + 64)];
  objc_storeStrong(location, 0);
}

- (void)_dismissRatchetUIForContext:(id)a3 viewController:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v12 = [location[0] embeddedUIPresentationMode];
  v13 = [v12 isEqualToString:@"Modal"];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v25 = _AKLogSystem();
    v24 = 2;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_debug_impl(&dword_222379000, log, type, "Dismissing modally presented ratchet", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v8 = v26;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __78__AKBiometricRatchetiOSUIProvider__dismissRatchetUIForContext_viewController___block_invoke;
    v21 = &unk_2784A5C90;
    v22 = MEMORY[0x277D82BE0](v28);
    [v8 dismissViewControllerAnimated:1 completion:&v17];
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v6 = v16;
      v7 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_222379000, v6, v7, "Popping pushed ratchet", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v5 = [v26 navigationController];
    v4 = [v5 popViewControllerAnimated:1];
    MEMORY[0x277D82BD8](v5);
    [(AKBiometricRatchetiOSUIProvider *)v28 setRatchetViewController:0];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_disableFindMyIfRequiredWithContext:(id)a3 completion:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  if ([location[0] showsLocationWarning])
  {
    objc_initWeak(&from, v27);
    findMyManager = v27->_findMyManager;
    if (objc_opt_respondsToSelector())
    {
      v9 = v27->_findMyManager;
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke;
      v21 = &unk_2784A5CE0;
      objc_copyWeak(&v23, &from);
      v22 = MEMORY[0x277D82BE0](v25);
      [(FMDFMIPManager *)v9 requireDisableLocationWithCompletion:&v17];
      objc_storeStrong(&v22, 0);
      objc_destroyWeak(&v23);
    }

    else
    {
      v16 = _AKLogSystem();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_222379000, log, type, "Disabling FM not required via idms - idms is handling the logic to determine with operations need this", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      if (v25)
      {
        (*(v25 + 2))(v25, 0);
      }
    }

    objc_destroyWeak(&from);
  }

  else
  {
    oslog = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_error_impl(&dword_222379000, v5, v6, "does not respondToSelector requireDisableLocationWithCompletion", v11, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v31 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v29[1] = a1;
  v29[0] = objc_loadWeakRetained((a1 + 40));
  if (location)
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v33, location);
      _os_log_error_impl(&dword_222379000, v28, v27, "Cannot determine if disable is required due to error: %@", v33, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else if (v31 == 1)
  {
    v3 = *(v29[0] + 2);
    if (objc_opt_respondsToSelector())
    {
      v10 = *(v29[0] + 2);
      v21 = MEMORY[0x277D85DD0];
      v22 = -1073741824;
      v23 = 0;
      v24 = __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke_89;
      v25 = &unk_2784A5CB8;
      v26 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v10 disableLocationDisplayWithCompletion:&v21];
      objc_storeStrong(&v26, 0);
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v8 = v20;
        v9 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_error_impl(&dword_222379000, v8, v9, "does not respondToSelector disableLocationDisplayWithCompletion", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      if (*(a1 + 32))
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    if (v31)
    {
      v14 = _AKLogSystem();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v4 = v14;
        v5 = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_error_impl(&dword_222379000, v4, v5, "Require disable returned unknown, no-op", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = oslog;
        v7 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_222379000, v6, v7, "Disabling FindyMy not required via FindMy as it might already be in the blackout period", v15, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  objc_storeStrong(v29, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __82__AKBiometricRatchetiOSUIProvider__disableFindMyIfRequiredWithContext_completion___block_invoke_89(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_222379000, v9[0], v8, "disableLocationDisplay failed with error - %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_222379000, v2, v3, "disableLocationDisplay suceeded", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_displayFindMyDisablementFailedErrorWithContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [location[0] presentingViewController];
  v6 = MEMORY[0x277D75110];
  v8 = [location[0] findMyErrorTitle];
  v7 = [location[0] findMyErrorMessage];
  v17 = [v6 alertControllerWithTitle:v8 message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v11 = [v12 localizedStringForKey:@"ALERT_DEFAULT_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v10 = [v9 actionWithTitle:? style:? handler:?];
  [v17 addAction:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (v18)
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_debug_impl(&dword_222379000, v13, OS_LOG_TYPE_DEBUG, "presentingViewController - %@", v20, 0xCu);
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_222379000, log, type, "nil presentingViewController", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  [v18 presentViewController:v17 animated:1 completion:&v17];
  objc_storeStrong(v3, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __83__AKBiometricRatchetiOSUIProvider__displayFindMyDisablementFailedErrorWithContext___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
  {
    log = v7[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User picked OK", v5, 2u);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

@end