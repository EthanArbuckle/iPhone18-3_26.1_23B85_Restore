@interface AKBiometricRatchetHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (id)_biometricRatchetUIContextFromAttributes:(id)attributes;
- (void)_armBiometricRatchetWithServerAttributes:(id)attributes completion:(id)completion;
- (void)_updateResponseWithContext;
- (void)_updateResponseWithRatchetResult:(id)result;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AKBiometricRatchetHook

- (BOOL)shouldMatchElement:(id)element
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  name = [location[0] name];
  v5 = [name isEqualToString:@"ak:bioratchet"];
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
  v9 = _AKSafeCast_2(v5, v6);
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](clientInfo).n128_u64[0];
  v8 = [v9 isEqualToString:{@"ak:bioratchet", v3}];
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
  [(AKBiometricRatchetHook *)selfCopy _armBiometricRatchetWithServerAttributes:v11 completion:v9];
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
  [AKBiometricRatchetHook _armBiometricRatchetWithServerAttributes:v5 completion:"_armBiometricRatchetWithServerAttributes:completion:"];
  MEMORY[0x277D82BD8](clientInfo);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_armBiometricRatchetWithServerAttributes:(id)attributes completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v4 = objc_alloc_init(MEMORY[0x277CF01D0]);
  biometricRatchetController = selfCopy->_biometricRatchetController;
  selfCopy->_biometricRatchetController = v4;
  MEMORY[0x277D82BD8](biometricRatchetController);
  v13 = objc_opt_class();
  v14 = [location[0] objectForKeyedSubscript:@"context"];
  v6 = _AKSafeCast_2(v13, v14);
  context = selfCopy->_context;
  selfCopy->_context = v6;
  MEMORY[0x277D82BD8](context);
  MEMORY[0x277D82BD8](v14);
  v15 = selfCopy->_context;
  if (v15)
  {
    objc_storeStrong(&selfCopy->_context, v15);
  }

  else
  {
    objc_storeStrong(&selfCopy->_context, &stru_28358EF68);
  }

  if ([(AKBiometricRatchetController *)selfCopy->_biometricRatchetController isDTOEnabled])
  {
    v23 = [(AKBiometricRatchetHook *)selfCopy _biometricRatchetUIContextFromAttributes:location[0]];
    v9 = selfCopy->_biometricRatchetController;
    v8 = v23;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __78__AKBiometricRatchetHook__armBiometricRatchetWithServerAttributes_completion___block_invoke;
    v20 = &unk_2784A7210;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](v27);
    [(AKBiometricRatchetController *)v9 armWithContext:v8 completion:&v16];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_debug_impl(&dword_222379000, log, type, "DTO feature not enabled, no arming required, sending success back", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    [(AKBiometricRatchetHook *)selfCopy _updateResponseWithContext];
    if (v27)
    {
      (*(v27 + 2))(v27, 1, 0);
    }
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void __78__AKBiometricRatchetHook__armBiometricRatchetWithServerAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (v8)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, v8);
      _os_log_error_impl(&dword_222379000, v7[0], v6, "Error during arming ratchet: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
    [*(a1 + 32) _updateResponseWithContext];
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v10, location[0]);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Received response from arming ratchet call: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 32) _updateResponseWithRatchetResult:location[0]];
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_biometricRatchetUIContextFromAttributes:(id)attributes
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v15 = [WeakRetained presentationContextForHook:selfCopy];
  MEMORY[0x277D82BD8](WeakRetained);
  if (v15)
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v18, v15);
      _os_log_debug_impl(&dword_222379000, v11, v10, "biometricRatchetUIContext - passing presentation context - %@", v18, 0xCu);
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_222379000, log, type, "biometricRatchetUIContext - passing nil presentation context", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  v3 = [AKBiometricRatchetUIContext alloc];
  v9 = [(AKBiometricRatchetUIContext *)v3 initWithAttributes:location[0] presentationContext:v15];
  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_updateResponseWithRatchetResult:(id)result
{
  v11[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  ratchetState = [location[0] ratchetState];
  v6 = [ratchetState toString:{objc_msgSend(ratchetState, "rawState")}];
  if (![v6 length])
  {
    objc_storeStrong(&v6, @"undefined");
  }

  v5 = objc_alloc_init(MEMORY[0x277D46208]);
  v10[0] = @"ratchetState";
  v11[0] = v6;
  v10[1] = @"context";
  v11[1] = selfCopy->_context;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v5 setAdditionalPayload:?];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(AKBiometricRatchetHook *)selfCopy setServerHookResponse:v5, v3];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&ratchetState, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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
  [(AKBiometricRatchetHook *)selfCopy setServerHookResponse:v4[0], v2];
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end