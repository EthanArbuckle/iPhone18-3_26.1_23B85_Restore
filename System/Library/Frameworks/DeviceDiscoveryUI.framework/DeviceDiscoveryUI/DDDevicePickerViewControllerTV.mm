@interface DDDevicePickerViewControllerTV
+ (uint64_t)isSupportedForBrowseDescriptor:parameters:;
- (DDDevicePickerViewControllerTV)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters;
- (id)_errorForDismissResult:(void *)error_with_inferred_domain;
- (void)_invokeCompletionWithEndpoint:(void *)endpoint orError:;
- (void)_setupScene;
- (void)_tearDownScene;
- (void)dealloc;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
@end

@implementation DDDevicePickerViewControllerTV

+ (uint64_t)isSupportedForBrowseDescriptor:parameters:
{
  objc_opt_self();
  if (isSupportedForBrowseDescriptor_parameters__onceToken_0 != -1)
  {
    +[DDDevicePickerViewControllerTV isSupportedForBrowseDescriptor:parameters:];
  }

  return isSupportedForBrowseDescriptor_parameters__isSupported_0;
}

void __76__DDDevicePickerViewControllerTV_isSupportedForBrowseDescriptor_parameters___block_invoke()
{
  v0 = GestaltCopyAnswer();
  isSupportedForBrowseDescriptor_parameters__isSupported_0 = [v0 isEqual:{@"AppleTV5, 3"}] ^ 1;
}

- (DDDevicePickerViewControllerTV)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters
{
  descriptorCopy = descriptor;
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = DDDevicePickerViewControllerTV;
  v9 = [(DDDevicePickerViewControllerTV *)&v13 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (nw_browse_descriptor_get_type() == 2)
    {
      if ((+[DDDevicePickerViewControllerTV isSupportedForBrowseDescriptor:parameters:]& 1) != 0)
      {
        if (initWithBrowseDescriptor_parameters__onceToken[0] != -1)
        {
          [DDDevicePickerViewControllerTV initWithBrowseDescriptor:parameters:];
        }

        objc_storeStrong(&v9->_sceneWorkspace, initWithBrowseDescriptor_parameters__sceneWorkspace);
        objc_storeStrong(&v9->_browseDescriptor, descriptor);
        [(DDDevicePickerViewControllerTV *)v9 setModalPresentationStyle:5];
        goto LABEL_7;
      }

      v11 = _DDUICoreLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DDDevicePickerViewControllerTV initWithBrowseDescriptor:v11 parameters:?];
      }
    }

    else
    {
      v11 = _DDUICoreLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DDDevicePickerSceneViewController initWithBrowseDescriptor:descriptorCopy parameters:v11];
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

LABEL_7:
  v10 = v9;
LABEL_13:

  return v10;
}

uint64_t __70__DDDevicePickerViewControllerTV_initWithBrowseDescriptor_parameters___block_invoke()
{
  v0 = [MEMORY[0x277D0AAF0] workspaceWithIdentifier:@"com.apple.networkendpointpickerui"];
  v1 = initWithBrowseDescriptor_parameters__sceneWorkspace;
  initWithBrowseDescriptor_parameters__sceneWorkspace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  [(DDDevicePickerViewControllerTV *)&self->super.super.super.isa _tearDownScene];
  sceneWorkspace = self->_sceneWorkspace;
  self->_sceneWorkspace = 0;

  focusDeferralAssertion = [(DDDevicePickerViewControllerTV *)self focusDeferralAssertion];

  if (focusDeferralAssertion)
  {
    focusDeferralAssertion2 = [(DDDevicePickerViewControllerTV *)self focusDeferralAssertion];
    [focusDeferralAssertion2 invalidate];

    focusDeferralAssertion = self->_focusDeferralAssertion;
    self->_focusDeferralAssertion = 0;
  }

  v7.receiver = self;
  v7.super_class = DDDevicePickerViewControllerTV;
  [(DDDevicePickerViewControllerTV *)&v7 dealloc];
}

void __45__DDDevicePickerViewControllerTV__setupScene__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentifier:v2];
  v4 = +[(FBSSceneSpecification *)_DDDevicePickerSceneSpecification];
  [v3 setSpecification:v4];

  v6 = [MEMORY[0x277D46F60] identityForAngelJobLabel:@"com.apple.networkendpointpickerui"];
  v5 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:v6];
  [v3 setClientIdentity:v5];
}

void __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_3;
  v3[3] = &unk_278A48408;
  v3[4] = *(a1 + 32);
  v2 = a2;
  [v2 updateSettingsWithBlock:v3];
  [v2 updateClientSettingsWithBlock:&__block_literal_global_37];
}

void __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  application_service_name = nw_browse_descriptor_get_application_service_name(*(*(a1 + 32) + 1056));
  v5 = MEMORY[0x277CCACA8];
  v10 = v3;
  v6 = [v5 stringWithCString:application_service_name encoding:4];
  [v10 setServiceIdentifier:v6];

  v7 = [*(a1 + 32) presentingViewController];
  v8 = [v7 view];
  [v8 frame];
  [v10 setFrame:?];

  [v10 setInterfaceOrientation:1];
  v9 = [MEMORY[0x277D0AA88] mainConfiguration];
  [v10 setDisplayConfiguration:v9];

  [v10 setForeground:1];
}

void __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
}

void __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(*(a1 + 32) + 1048);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1048);
    *(v7 + 1048) = 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = *(*(a1 + 32) + 1024);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [v9 clientHandle];
  v11 = [v10 processHandle];
  v12 = [v11 pid];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CF0728]);
    v14 = objc_alloc_init(MEMORY[0x277CF0740]);
    v15 = [*(*(a1 + 32) + 1024) clientHandle];
    v16 = [v15 processHandle];
    [v14 setPid:{objc_msgSend(v16, "pid")}];

    v17 = MEMORY[0x277CF0658];
    v18 = [*(*(a1 + 32) + 1024) identityToken];
    v19 = [v18 stringRepresentation];
    v20 = [v17 tokenForString:v19];
    [v14 setToken:v20];

    v21 = [MEMORY[0x277CF0670] sharedInstance];
    v22 = [v21 deferEventsMatchingPredicate:v13 toTarget:v14 withReason:@"Device Picker UI"];
    v23 = *(a1 + 32);
    v24 = *(v23 + 1048);
    *(v23 + 1048) = v22;
  }

  else
  {
LABEL_7:
    v13 = _DDUICoreLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(a1 + 32) + 1024);
      v27 = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v25;
      _os_log_impl(&dword_238060000, v13, OS_LOG_TYPE_DEFAULT, "Scene update completed, unable to defer events with error: %@ for scene: %@", &v27, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  errorCopy = error;
  if (self->_scene == deactivate && ![(DDDevicePickerViewControllerTV *)self wasInvalidated])
  {
    if (errorCopy)
    {
      v7 = _DDUICoreLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(DDDevicePickerViewControllerTV *)self sceneDidDeactivate:errorCopy withError:v7];
      }
    }

    [(DDDevicePickerViewControllerTV *)self dismissViewControllerAnimated:1 completion:0];
    [(DDDevicePickerViewControllerTV *)&self->super.super.super.isa _tearDownScene];
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    [(DDDevicePickerViewControllerTV *)self _invokeCompletionWithEndpoint:error_with_inferred_domain orError:?];
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v25 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 UIActionType] == 12)
        {
          [DDDevicePickerViewControllerTV scene:? didReceiveActions:?];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [DDDevicePickerViewControllerTV scene:v12 didReceiveActions:self];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if (![v13 debugErrorActionContext])
          {
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_browse_descriptor_get_application_service_name(self->_browseDescriptor)];
            v15 = _DDUICoreLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v14;
              _os_log_error_impl(&dword_238060000, v15, OS_LOG_TYPE_ERROR, "WARNING: Selected device does not support application service %@ in its Info.plist", buf, 0xCu);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  clientSettings = [scene clientSettings];
  endpointUUID = [clientSettings endpointUUID];
  agentUUID = [clientSettings agentUUID];
  if (endpointUUID | agentUUID)
  {
    v10 = _DDUICoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = endpointUUID;
      v20 = 2112;
      v21 = agentUUID;
      _os_log_impl(&dword_238060000, v10, OS_LOG_TYPE_DEFAULT, "%@ Did receive endpoint UUID %@ agent UUID %@", buf, 0x20u);
    }

    if (endpointUUID && agentUUID)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__DDDevicePickerViewControllerTV_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
      block[3] = &unk_278A484E0;
      v13 = endpointUUID;
      v14 = agentUUID;
      selfCopy2 = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownScene
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = _DDUICoreLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = self[128];
      v8 = 138412546;
      v9 = v3;
      v10 = 1024;
      isValid = [v3 isValid];
      _os_log_impl(&dword_238060000, v2, OS_LOG_TYPE_DEFAULT, "Destroying scene %@ isValid? %d", &v8, 0x12u);
    }

    [self setWasInvalidated:1];
    focusDeferralAssertion = [self focusDeferralAssertion];
    [focusDeferralAssertion invalidate];

    [self setFocusDeferralAssertion:0];
    [self[129] invalidate];
    v5 = self[129];
    self[129] = 0;

    [self[128] setDelegate:0];
    [self[128] removeObserver:self];
    [self[128] invalidate];
    v6 = self[128];
    self[128] = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupScene
{
  if (self)
  {
    v2 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [v2 stringWithFormat:@"scene::OneAPI::%@", bundleIdentifier];

    v6 = OUTLINED_FUNCTION_0_0();
    if (!v6)
    {
      v7 = *(self + 1016);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__DDDevicePickerViewControllerTV__setupScene__block_invoke;
      v28[3] = &unk_278A483E0;
      v29 = v5;
      v8 = [v7 createScene:v28];
      v9 = *(self + 1024);
      *(self + 1024) = v8;

      [OUTLINED_FUNCTION_0_0() setDelegate:self];
      [OUTLINED_FUNCTION_0_0() addObserver:self];
      v10 = OUTLINED_FUNCTION_0_0();
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_2;
      v27[3] = &unk_278A48450;
      v27[4] = self;
      [v10 configureParameters:v27];
      uiPresentationManager = [OUTLINED_FUNCTION_0_0() uiPresentationManager];
      v12 = [uiPresentationManager createPresenterWithIdentifier:@"default"];
      v13 = *(self + 1032);
      *(self + 1032) = v12;

      [*(self + 1032) modifyPresentationContext:&__block_literal_global_44];
      [*(self + 1032) activate];
      presentationView = [*(self + 1032) presentationView];
      view = [self view];
      [view insertSubview:presentationView atIndex:0];

      view2 = [self view];
      [view2 setNeedsLayout];

      [presentationView setClipsToBounds:1];
      layer = [presentationView layer];
      [layer setName:@"Scene View"];

      v18 = *(self + 1040);
      *(self + 1040) = presentationView;
      v19 = presentationView;

      if (_UISolariumEnabled())
      {
        v20 = 7;
      }

      else
      {
        v20 = 4005;
      }

      v21 = [MEMORY[0x277D75210] effectWithStyle:v20];
      v22 = objc_alloc(MEMORY[0x277D75D68]);

      v23 = [v22 initWithEffect:v21];
      view3 = [self view];
      [view3 bounds];
      [v23 setFrame:?];

      view4 = [self view];
      [view4 insertSubview:v23 atIndex:0];

      v6 = OUTLINED_FUNCTION_0_0();
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __45__DDDevicePickerViewControllerTV__setupScene__block_invoke_7;
    v26[3] = &unk_278A484B8;
    v26[4] = self;
    [v6 performUpdate:&__block_literal_global_52 withCompletion:v26];
    [OUTLINED_FUNCTION_0_0() activateWithTransitionContext:0];
    [self setWasInvalidated:0];
  }
}

- (id)_errorForDismissResult:(void *)error_with_inferred_domain
{
  if (error_with_inferred_domain)
  {
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v1 = vars8;
  }

  return error_with_inferred_domain;
}

- (void)_invokeCompletionWithEndpoint:(void *)endpoint orError:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  endpointCopy = endpoint;
  if (self)
  {
    devicePickerCompletionHandler = [self devicePickerCompletionHandler];
    if (devicePickerCompletionHandler)
    {
      v8 = devicePickerCompletionHandler;
      finishedVendingEndpoint = [self finishedVendingEndpoint];

      if ((finishedVendingEndpoint & 1) == 0)
      {
        v10 = _DDUICoreLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134218498;
          selfCopy = self;
          v15 = 2112;
          v16 = v5;
          v17 = 2112;
          v18 = endpointCopy;
          _os_log_impl(&dword_238060000, v10, OS_LOG_TYPE_DEFAULT, "%p Invoking completion, with endpoint %@ or error %@", &v13, 0x20u);
        }

        devicePickerCompletionHandler2 = [self devicePickerCompletionHandler];
        (devicePickerCompletionHandler2)[2](devicePickerCompletionHandler2, v5, endpointCopy);

        [self setFinishedVendingEndpoint:1];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __108__DDDevicePickerViewControllerTV_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  [*(a1 + 32) getUUIDBytes:v14];
  [*(a1 + 40) getUUIDBytes:v13];
  application_service_name = nw_browse_descriptor_get_application_service_name(*(*(a1 + 48) + 1056));
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 136315394;
    v10 = application_service_name;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_238060000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to create endpoint for service name: %s and endpoint: %@", &v9, 0x16u);
  }

  application_service = nw_endpoint_create_application_service();
  nw_endpoint_set_agent_identifier();
  v6 = _DDUICoreLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = application_service;
    _os_log_impl(&dword_238060000, v6, OS_LOG_TYPE_DEFAULT, "Returning nw_endpoint %@", &v9, 0xCu);
  }

  [(DDDevicePickerViewControllerTV *)*(a1 + 48) _tearDownScene];
  [*(a1 + 48) dismissViewControllerAnimated:1 completion:0];
  error_with_inferred_domain = 0;
  if (!application_service)
  {
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
  }

  [(DDDevicePickerViewControllerTV *)*(a1 + 48) _invokeCompletionWithEndpoint:error_with_inferred_domain orError:?];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidDeactivate:(os_log_t)log withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_238060000, log, OS_LOG_TYPE_ERROR, "%p Scene deactivated with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)scene:(id *)a1 didReceiveActions:.cold.1(id *a1)
{
  [(DDDevicePickerViewControllerTV *)a1 _tearDownScene];
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = [a1 devicePickerCanceledHandler];

  if (v2)
  {
    v3 = [a1 devicePickerCanceledHandler];
    v3[2]();
  }
}

- (void)scene:(void *)a1 didReceiveActions:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 dismissSceneActionContext];
  [a2 dismissViewControllerAnimated:1 completion:0];
  [(DDDevicePickerViewControllerTV *)a2 _tearDownScene];
  if (v4)
  {
    if (v4 == -3)
    {
      __CRASHING_DUE_TO_PRIVACY_VIOLATION__();
    }

    v5 = [DDDevicePickerViewControllerTV _errorForDismissResult:a2];
    [(DDDevicePickerViewControllerTV *)a2 _invokeCompletionWithEndpoint:v5 orError:?];
  }
}

@end