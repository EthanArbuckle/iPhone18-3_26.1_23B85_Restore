@interface _AKRemoteViewService
- (_AKRemoteViewService)initWithConnection:(id)a3 rootViewController:(id)a4;
- (void)_onmainqueue_presentAuthorizationWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5;
- (void)_onmainqueue_presentPrivateEmailWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5;
- (void)_onmainqueue_presentShieldWithContext:(id)a3 completionHandler:(id)a4;
- (void)_onxpcqueue_continueAuthenticationWithSurrogateID:(id)a3 completionHandler:(id)a4;
- (void)continueAuthenticationWithSurrogateID:(id)a3 completionHandler:(id)a4;
- (void)presentAuthorizationWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5;
- (void)presentPrivateEmailWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5;
- (void)presentShieldWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation _AKRemoteViewService

- (_AKRemoteViewService)initWithConnection:(id)a3 rootViewController:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = _AKRemoteViewService;
  v11 = [(_AKRemoteViewService *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_connection, location[0]);
    objc_storeStrong(&v11->_rootViewController, v9);
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)continueAuthenticationWithSurrogateID:(id)a3 completionHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(_AKRemoteViewService *)v7 _onxpcqueue_continueAuthenticationWithSurrogateID:location[0] completionHandler:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)presentAuthorizationWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __84___AKRemoteViewService_presentAuthorizationWithContext_usingHost_completionHandler___block_invoke;
  v14 = &unk_2784A6E98;
  v15 = MEMORY[0x277D82BE0](v22);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v20);
  v18 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)presentPrivateEmailWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __83___AKRemoteViewService_presentPrivateEmailWithContext_usingHost_completionHandler___block_invoke;
  v14 = &unk_2784A6E98;
  v15 = MEMORY[0x277D82BE0](v22);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v20);
  v18 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)presentShieldWithContext:(id)a3 completionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67___AKRemoteViewService_presentShieldWithContext_completionHandler___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_onxpcqueue_continueAuthenticationWithSurrogateID:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v24, "[_AKRemoteViewService _onxpcqueue_continueAuthenticationWithSurrogateID:completionHandler:]", 556);
    _os_log_debug_impl(&dword_222379000, v20, v19, "%s (%d) called", v24, 0x12u);
  }

  objc_storeStrong(&v20, 0);
  v5 = [AKAppleIDAuthenticationUISurrogateContext alloc];
  v6 = [location[0] UUIDString];
  v18 = [(AKAppleIDAuthenticationUISurrogateContext *)v5 initWithSurrogateID:?];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(_AKRemoteViewService *)v23 rootViewController];
  [(AKAppleIDAuthenticationInAppContext *)v18 setPresentingViewController:?];
  MEMORY[0x277D82BD8](v7);
  v17 = objc_alloc_init(MEMORY[0x277CF0178]);
  v9 = v17;
  v8 = v18;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __92___AKRemoteViewService__onxpcqueue_continueAuthenticationWithSurrogateID_completionHandler___block_invoke;
  v15 = &unk_2784A67C8;
  v16 = MEMORY[0x277D82BE0](v21);
  [v9 authenticateWithContext:v8 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onmainqueue_presentAuthorizationWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v21, "[_AKRemoteViewService _onmainqueue_presentAuthorizationWithContext:usingHost:completionHandler:]", 571);
    _os_log_debug_impl(&dword_222379000, v16, v15, "%s (%d) called", v21, 0x12u);
  }

  objc_storeStrong(&v16, 0);
  v11 = [(_AKRemoteViewService *)v20 newAuthorizationViewController];
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v9 = [(_AKRemoteViewService *)v20 newAuthorizationViewController];
    v14 = v9[2](v9, location[0], v18, v17);
    *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = [(_AKRemoteViewService *)v20 rootViewController];
    [(UIViewController *)v10 presentViewController:v14 animated:0 completion:?];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v14, 0);
  }

  else if (v17)
  {
    v7 = v17;
    v8 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7027, v5}];
    v7[2](v7, 0);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onmainqueue_presentPrivateEmailWithContext:(id)a3 usingHost:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v21, "[_AKRemoteViewService _onmainqueue_presentPrivateEmailWithContext:usingHost:completionHandler:]", 585);
    _os_log_debug_impl(&dword_222379000, v16, v15, "%s (%d) called", v21, 0x12u);
  }

  objc_storeStrong(&v16, 0);
  v11 = [(_AKRemoteViewService *)v20 newPrivateEmailViewController];
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v9 = [(_AKRemoteViewService *)v20 newPrivateEmailViewController];
    v14 = v9[2](v9, location[0], v18, v17);
    *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = [(_AKRemoteViewService *)v20 rootViewController];
    [(UIViewController *)v10 presentViewController:v14 animated:0 completion:?];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v14, 0);
  }

  else if (v17)
  {
    v7 = v17;
    v8 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7027, v5}];
    v7[2](v7, 0);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onmainqueue_presentShieldWithContext:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v18, location[0]);
    _os_log_debug_impl(&dword_222379000, v14, v13, "Presenting shield on main queue with context: %@", v18, 0xCu);
  }

  objc_storeStrong(&v14, 0);
  v10 = [(_AKRemoteViewService *)v17 newShieldViewController];
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v8 = [(_AKRemoteViewService *)v17 newShieldViewController];
    v12 = v8[2](v8, location[0], v15);
    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v9 = [(_AKRemoteViewService *)v17 rootViewController];
    [(UIViewController *)v9 presentViewController:v12 animated:1 completion:?];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  else if (v15)
  {
    v6 = v15;
    v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7027, v4}];
    v6[2]();
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end