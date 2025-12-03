@interface AKDTOBiometryHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_performDTOBiometricsWithServerAttributes:(id)attributes completion:(id)completion;
- (void)_updateResponseWithContext;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AKDTOBiometryHook

- (BOOL)shouldMatchElement:(id)element
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  name = [location[0] name];
  v5 = [name isEqualToString:@"ak:biometrics"];
  MEMORY[0x277D82BD8](name);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)shouldMatchModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v5 = objc_opt_class();
  clientInfo = [location[0] clientInfo];
  v6 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v9 = _AKSafeCast_1(v5, v6);
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](clientInfo).n128_u64[0];
  v8 = [v9 isEqualToString:{@"ak:biometrics", v3}];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v11 = 0;
  objc_storeStrong(&v11, attributes);
  v10 = 0;
  objc_storeStrong(&v10, model);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  [(AKDTOBiometryHook *)selfCopy _performDTOBiometricsWithServerAttributes:v11 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v5 = selfCopy;
  clientInfo = [location[0] clientInfo];
  [AKDTOBiometryHook _performDTOBiometricsWithServerAttributes:v5 completion:"_performDTOBiometricsWithServerAttributes:completion:"];
  MEMORY[0x277D82BD8](clientInfo);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_performDTOBiometricsWithServerAttributes:(id)attributes completion:(id)completion
{
  v39[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v34 = objc_alloc_init(MEMORY[0x277CF01D0]);
  v17 = objc_opt_class();
  v18 = [location[0] objectForKeyedSubscript:@"context"];
  v4 = _AKSafeCast_1(v17, v18);
  context = selfCopy->_context;
  selfCopy->_context = v4;
  MEMORY[0x277D82BD8](context);
  MEMORY[0x277D82BD8](v18);
  v19 = selfCopy->_context;
  if (v19)
  {
    objc_storeStrong(&selfCopy->_context, v19);
  }

  else
  {
    objc_storeStrong(&selfCopy->_context, &stru_28358EF68);
  }

  if ([v34 isDTOEnabled])
  {
    bOOLValue = 0;
    v12 = objc_opt_class();
    v13 = [location[0] objectForKeyedSubscript:@"fallback"];
    v28 = _AKSafeCast_1(v12, v13);
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v28)
    {
      bOOLValue = [v28 BOOLValue];
    }

    v27 = objc_alloc_init(MEMORY[0x277CD4790]);
    v7 = v27;
    v38[0] = &unk_2835AAE40;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"DTO_BIOMETRY_FALLBACK_ALERT_SUBTITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable_20];
    v39[0] = v10;
    v38[1] = &unk_2835AAE58;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue & 1];
    v39[1] = v9;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __74__AKDTOBiometryHook__performDTOBiometricsWithServerAttributes_completion___block_invoke;
    v24 = &unk_2784A6C48;
    v25 = MEMORY[0x277D82BE0](selfCopy);
    v26 = MEMORY[0x277D82BE0](v35);
    [v7 evaluatePolicy:1025 options:v8 reply:&v20];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
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
      _os_log_debug_impl(&dword_222379000, log, type, "DTO feature not enabled, no arming required, sending success back", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    [(AKDTOBiometryHook *)selfCopy _updateResponseWithContext];
    if (v35)
    {
      (*(v35 + 2))(v35, 1, 0);
    }

    v30 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __74__AKDTOBiometryHook__performDTOBiometricsWithServerAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  [*(a1 + 32) _updateResponseWithContext];
  if (v15)
  {
    v14[0] = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
    {
      log = v14[0];
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_222379000, log, type, "Biometry failed, sending failure response back to IdMS", v12, 2u);
    }

    objc_storeStrong(v14, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v3 = v11;
      v4 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_222379000, v3, v4, "Biometry succeeded, sending success response back to IdMS", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateResponseWithContext
{
  v7[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277D46208]);
  v6 = @"context";
  v7[0] = selfCopy->_context;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4[0] setAdditionalPayload:?];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  [(AKDTOBiometryHook *)selfCopy setServerHookResponse:v4[0], v2];
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end