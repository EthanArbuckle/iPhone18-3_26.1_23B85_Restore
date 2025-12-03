@interface AKRemoteViewSessionController
- (AKRemoteViewSessionController)initWithRootViewController:(id)controller sceneSession:(id)session;
- (BOOL)respondToAction:(id)action error:(id *)error;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)createViewSessionForAction:(id)action error:(id *)error;
- (void)_activateUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)_dismissAndDestroy;
- (void)_onmainqueue_requestDimmingWithConfiguration:(id)configuration;
- (void)_onmainqueue_updatePlacementWithConfiguration:(id)configuration completion:(id)completion;
- (void)_onmainqueue_updatePlacementWithSceneID:(id)d completion:(id)completion;
- (void)_registerSession:(id)session;
- (void)_requestDimmingWithConfiguration:(id)configuration completion:(id)completion;
- (void)_unregisterSession:(id)session;
- (void)_updatePlacementWithConfiguration:(id)configuration completion:(id)completion;
- (void)_updatePlacementWithSceneID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AKRemoteViewSessionController

- (AKRemoteViewSessionController)initWithRootViewController:(id)controller sceneSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, session);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = AKRemoteViewSessionController;
  selfCopy = [(AKRemoteViewSessionController *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    selfCopy->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&selfCopy->_rootViewController, location[0]);
    objc_storeStrong(&selfCopy->_sceneSession, v11);
    v5 = [MEMORY[0x277CBEB58] set];
    sessions = selfCopy->_sessions;
    selfCopy->_sessions = v5;
    MEMORY[0x277D82BD8](sessions);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKRemoteViewSessionController *)self invalidate];
  v2.receiver = selfCopy;
  v2.super_class = AKRemoteViewSessionController;
  [(AKRemoteViewSessionController *)&v2 dealloc];
}

- (BOOL)respondToAction:(id)action error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  errorCopy = error;
  v24 = 0;
  v22 = 0;
  v10 = [(AKRemoteViewSessionController *)selfCopy createViewSessionForAction:location[0] error:&v22];
  objc_storeStrong(&v24, v22);
  v23 = v10;
  v21 = v10 != 0;
  if (v10)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v29, v23);
      _os_log_debug_impl(&dword_222379000, v20, v19, "View session (%@) was created; proceeding to register and activate", v29, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    [(AKRemoteViewSessionController *)selfCopy _registerSession:v23];
    v8 = v23;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __55__AKRemoteViewSessionController_respondToAction_error___block_invoke;
    v16 = &unk_2784A6DC0;
    v17 = MEMORY[0x277D82BE0](v23);
    v18 = MEMORY[0x277D82BE0](selfCopy);
    [v8 activateWithCompletionHandler:&v12];
    if (errorCopy)
    {
      *errorCopy = 0;
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v28, location[0], v24);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Failed to create view session for action (%@) with error: %@", v28, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v7 = v24;
      v4 = v24;
      *errorCopy = v7;
    }
  }

  v6 = v21;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

void __55__AKRemoteViewSessionController_respondToAction_error___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (location[0])
  {
    v16[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v20, a1[4], location[0]);
      _os_log_impl(&dword_222379000, v16[0], v15, "Activated remote view session (%@) and received config: %@", v20, 0x16u);
    }

    objc_storeStrong(v16, 0);
    v4 = a1[5];
    v3 = location[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __55__AKRemoteViewSessionController_respondToAction_error___block_invoke_18;
    v12 = &unk_2784A6420;
    v13 = MEMORY[0x277D82BE0](location[0]);
    v14 = MEMORY[0x277D82BE0](a1[5]);
    [v4 _activateUIWithConfiguration:v3 completion:&v8];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v19, a1[4], v17);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Failed to activate remote view session (%@) with error: %@", v19, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [a1[4] invalidate];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __55__AKRemoteViewSessionController_respondToAction_error___block_invoke_18(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, a1[4]);
    _os_log_debug_impl(&dword_222379000, location[0], v11, "Finished activating UI with configuration: %@", v13, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__AKRemoteViewSessionController_respondToAction_error___block_invoke_19;
  v9 = &unk_2784A5C90;
  v10 = MEMORY[0x277D82BE0](a1[5]);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  *MEMORY[0x277D85DE8];
}

double __55__AKRemoteViewSessionController_respondToAction_error___block_invoke_19(uint64_t a1)
{
  v4 = [*(a1 + 32) windowBlock];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v4)
  {
    v2 = [*(a1 + 32) windowBlock];
    v2[2]();
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

- (id)createViewSessionForAction:(id)action error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  errorCopy = error;
  v38 = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v45, location[0]);
    _os_log_debug_impl(&dword_222379000, v38, v37, "Attempting to create view session for action: %@", v45, 0xCu);
  }

  objc_storeStrong(&v38, 0);
  info = [location[0] info];
  v35 = [info objectForSetting:1];
  if (v35 && MEMORY[0x277D86478] != MEMORY[0x223DB6D90](v35))
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x223DB6D90](v35);
      __os_log_helper_16_2_2_8_64_8_64(v44, v35, v16);
      _os_log_error_impl(&dword_222379000, v34, v33, "XPC endpoint (%@) of unexpected type: %@", v44, 0x16u);
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  if (info && v35)
  {
    v29 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    [v29 _setEndpoint:v35];
    v28 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v29];
    remoteViewSessionInterface = [MEMORY[0x277CCAE90] remoteViewSessionInterface];
    [v28 setRemoteObjectInterface:?];
    remoteViewServiceInterface = [MEMORY[0x277CCAE90] remoteViewServiceInterface];
    [v28 setExportedInterface:?];
    MEMORY[0x277D82BD8](remoteViewServiceInterface);
    v12 = [_AKRemoteViewService alloc];
    rootViewController = [(AKRemoteViewSessionController *)selfCopy rootViewController];
    v27 = [(_AKRemoteViewService *)v12 initWithConnection:v28 rootViewController:?];
    newAuthorizationViewController = [(AKRemoteViewSessionController *)selfCopy newAuthorizationViewController];
    [v27 setNewAuthorizationViewController:?];
    newPrivateEmailViewController = [(AKRemoteViewSessionController *)selfCopy newPrivateEmailViewController];
    [v27 setNewPrivateEmailViewController:?];
    newShieldViewController = [(AKRemoteViewSessionController *)selfCopy newShieldViewController];
    [v27 setNewShieldViewController:?];
    [v28 setExportedObject:{v27, MEMORY[0x277D82BD8](newShieldViewController).n128_f64[0]}];
    v26 = [[_AKRemoteViewSession alloc] initWithConnection:v28];
    objc_initWeak(&from, selfCopy);
    v24 = v26;
    v7 = v26;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __66__AKRemoteViewSessionController_createViewSessionForAction_error___block_invoke;
    v22 = &unk_2784A6DE8;
    objc_copyWeak(v23, &from);
    v23[1] = v24;
    [v7 setInvalidationHandler:&v18];
    v42 = MEMORY[0x277D82BE0](v26);
    v30 = 1;
    objc_destroyWeak(v23);
    objc_destroyWeak(&from);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v43, v35, info, location[0]);
      _os_log_error_impl(&dword_222379000, v32, v31, "Unable to continue with endpoint (%@) from info (%@) for action: %@", v43, 0x20u);
    }

    objc_storeStrong(&v32, 0);
    if (errorCopy)
    {
      v15 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7001];
      v4 = v15;
      *errorCopy = v15;
    }

    v42 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&info, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v42;

  return v5;
}

void __66__AKRemoteViewSessionController_createViewSessionForAction_error___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 32));
  [v2[0] _unregisterSession:*(a1 + 40)];
  objc_storeStrong(v2, 0);
}

- (void)invalidate
{
  selfCopy = self;
  v3[1] = a2;
  os_unfair_lock_lock(&self->_lock);
  v3[0] = [(NSMutableSet *)selfCopy->_sessions copy];
  v2 = MEMORY[0x277D82BE0](selfCopy->_sceneSessionInvalidatable);
  [(NSMutableSet *)selfCopy->_sessions removeAllObjects];
  objc_storeStrong(&selfCopy->_sceneSessionInvalidatable, 0);
  os_unfair_lock_unlock(&selfCopy->_lock);
  [v3[0] enumerateObjectsUsingBlock:&__block_literal_global_4];
  [v2 invalidate];
  [(AKRemoteViewSessionController *)selfCopy _dismissAndDestroy];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

void __43__AKRemoteViewSessionController_invalidate__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] invalidate];
  objc_storeStrong(location, 0);
}

- (void)_activateUIWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__AKRemoteViewSessionController__activateUIWithConfiguration_completion___block_invoke;
  v11 = &unk_2784A6818;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v15);
  [(AKRemoteViewSessionController *)v6 _updatePlacementWithConfiguration:v5 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePlacementWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __78__AKRemoteViewSessionController__updatePlacementWithConfiguration_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_updatePlacementWithSceneID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __72__AKRemoteViewSessionController__updatePlacementWithSceneID_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_requestDimmingWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__AKRemoteViewSessionController__requestDimmingWithConfiguration_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

uint64_t __77__AKRemoteViewSessionController__requestDimmingWithConfiguration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onmainqueue_requestDimmingWithConfiguration:*(a1 + 40)];
  result = a1;
  if (*(a1 + 48))
  {
    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

- (void)_onmainqueue_updatePlacementWithConfiguration:(id)configuration completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v19, location[0]);
    _os_log_debug_impl(&dword_222379000, v14, v13, "Updating scene placement with view service configuration: %@", v19, 0xCu);
  }

  objc_storeStrong(&v14, 0);
  hostSceneID = [location[0] hostSceneID];
  *&v4 = MEMORY[0x277D82BD8](hostSceneID).n128_u64[0];
  if (hostSceneID)
  {
    v7 = selfCopy;
    hostSceneID2 = [location[0] hostSceneID];
    [AKRemoteViewSessionController _onmainqueue_updatePlacementWithSceneID:v7 completion:"_onmainqueue_updatePlacementWithSceneID:completion:"];
    MEMORY[0x277D82BD8](hostSceneID2);
    v12 = 1;
  }

  else
  {
    hostBundleID = [location[0] hostBundleID];
    v5 = MEMORY[0x277D82BD8](hostBundleID);
    if (hostBundleID)
    {
      if (v15)
      {
        (*(v15 + 2))(v5);
      }

      v12 = 0;
    }

    else
    {
      v11 = _AKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v18, location[0]);
        _os_log_impl(&dword_222379000, v11, OS_LOG_TYPE_DEFAULT, "View service configuration (%@) does not contain host scene ID or bundle ID; updating effective placement to default", v18, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      [(AKRemoteViewSessionController *)selfCopy _onmainqueue_updatePlacementWithSceneID:0 completion:v15];
      v12 = 1;
    }
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onmainqueue_updatePlacementWithSceneID:(id)d completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v8, location[0]);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Updating placement with scene ID: %@", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v6)
  {
    (*(v6 + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onmainqueue_requestDimmingWithConfiguration:(id)configuration
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  objc_storeStrong(location, 0);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actions);
  v22 = 0;
  objc_storeStrong(&v22, scene);
  v21 = 0;
  objc_storeStrong(&v21, iScene);
  v20 = 0;
  objc_storeStrong(&v20, context);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v25, location[0], v22, v21, v20);
    _os_log_debug_impl(&dword_222379000, v19, v18, "Responding to BS actions (%@) for FBS scene (%@) in UI scene (%@) from context (%@)", v25, 0x2Au);
  }

  objc_storeStrong(&v19, 0);
  v7 = location[0];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __95__AKRemoteViewSessionController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
  v16 = &unk_2784A6E30;
  v17 = MEMORY[0x277D82BE0](selfCopy);
  v8 = [v7 aaf_filter:&v12];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

BOOL __95__AKRemoteViewSessionController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = a1;
  v5 = [a1[4] respondToAction:location[0] error:0];
  v4 = (v5 & 1) == 0;
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_registerSession:(id)session
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Registering remote view session: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  os_unfair_lock_lock(&selfCopy->_lock);
  [(NSMutableSet *)selfCopy->_sessions addObject:location[0]];
  os_unfair_lock_unlock(&selfCopy->_lock);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_unregisterSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, location[0]);
    _os_log_debug_impl(&dword_222379000, v10, v9, "Unregistering remote view session: %@", v13, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  os_unfair_lock_lock(&selfCopy->_lock);
  [(NSMutableSet *)selfCopy->_sessions removeObject:location[0]];
  v8 = [(NSMutableSet *)selfCopy->_sessions count]== 0;
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v8)
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_222379000, v3, v4, "No more sessions registered, calling to dismiss & destroy", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKRemoteViewSessionController *)selfCopy _dismissAndDestroy];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_dismissAndDestroy
{
  selfCopy = self;
  v13[1] = a2;
  os_unfair_lock_lock(&self->_lock);
  v13[0] = [(AKRemoteViewSessionController *)selfCopy rootViewController];
  sceneSession = [(AKRemoteViewSessionController *)selfCopy sceneSession];
  objc_storeStrong(&selfCopy->_rootViewController, 0);
  objc_storeStrong(&selfCopy->_sceneSession, 0);
  os_unfair_lock_unlock(&selfCopy->_lock);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __51__AKRemoteViewSessionController__dismissAndDestroy__block_invoke;
  v9 = &unk_2784A6420;
  v10 = MEMORY[0x277D82BE0](v13[0]);
  v11 = MEMORY[0x277D82BE0](sceneSession);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&sceneSession, 0);
  objc_storeStrong(v13, 0);
}

void __51__AKRemoteViewSessionController__dismissAndDestroy__block_invoke(void *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = a1[4];
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __51__AKRemoteViewSessionController__dismissAndDestroy__block_invoke_2;
  v6 = &unk_2784A5C90;
  v7[0] = MEMORY[0x277D82BE0](a1[5]);
  [v1 dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v7, 0);
}

double __51__AKRemoteViewSessionController__dismissAndDestroy__block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    exit(0);
  }

  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 requestSceneSessionDestruction:*(a1 + 32) options:0 errorHandler:&__block_literal_global_33];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

void __51__AKRemoteViewSessionController__dismissAndDestroy__block_invoke_3(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to destroy scene session with error, executing cliff jump: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  exit(0);
}

@end