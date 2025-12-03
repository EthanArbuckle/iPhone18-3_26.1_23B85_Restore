@interface DDDevicePickerSceneViewController
- (DDDevicePickerSceneViewController)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters;
- (id)_publicKeyFromParameters:(uint64_t)parameters;
- (void)_deviceDiscoveryDismiss;
- (void)_devicePickerDidCreateApplicationServiceEndpoint:(id)endpoint;
- (void)_devicePickerDidCreateBonjourEndpoint:(id)endpoint;
- (void)_devicePickerDidCreateBrowserResultData:(id)data;
- (void)_invokeCompletionWithData:(void *)data orError:;
- (void)_invokeCompletionWithEndpoint:(void *)endpoint orError:;
- (void)setupSceneHosting;
@end

@implementation DDDevicePickerSceneViewController

- (DDDevicePickerSceneViewController)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters
{
  descriptorCopy = descriptor;
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = DDDevicePickerSceneViewController;
  v9 = [(DDDevicePickerSceneViewController *)&v13 initWithNibName:0 bundle:0];
  if (!v9)
  {
    goto LABEL_7;
  }

  if (nw_browse_descriptor_get_type() == 2)
  {
    objc_storeStrong(&v9->_browseDescriptor, descriptor);
    objc_storeStrong(&v9->_parameters, parameters);
    [(DDDevicePickerSceneViewController *)v9 setupSceneHosting];
LABEL_7:
    v11 = v9;
    goto LABEL_8;
  }

  v10 = _DDUICoreLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [DDDevicePickerSceneViewController initWithBrowseDescriptor:descriptorCopy parameters:v10];
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_publicKeyFromParameters:(uint64_t)parameters
{
  v3 = a2;
  v4 = v3;
  if (parameters)
  {
    v5 = nw_parameters_copy_default_protocol_stack(v3);
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    iterate_block[0] = MEMORY[0x277D85DD0];
    iterate_block[1] = 3221225472;
    iterate_block[2] = __62__DDDevicePickerSceneViewController__publicKeyFromParameters___block_invoke;
    iterate_block[3] = &unk_278A48348;
    iterate_block[4] = &v9;
    nw_protocol_stack_iterate_application_protocols(v5, iterate_block);
    if (v10[5])
    {
      v6 = nw_quic_options_copy_local_public_key();
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __62__DDDevicePickerSceneViewController__publicKeyFromParameters___block_invoke(uint64_t a1, void *a2)
{
  is_quic = a2;
  v5 = is_quic;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = is_quic;
    is_quic = nw_protocol_options_is_quic(is_quic);
    v5 = v7;
    if (is_quic)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }

  return MEMORY[0x2821F96F8](is_quic, v5);
}

- (void)_deviceDiscoveryDismiss
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238060000, v3, OS_LOG_TYPE_DEFAULT, "%@ Dismiss", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DDDevicePickerSceneViewController__deviceDiscoveryDismiss__block_invoke;
  block[3] = &unk_278A48370;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_devicePickerDidCreateApplicationServiceEndpoint:(id)endpoint
{
  v15 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = endpointCopy;
    _os_log_impl(&dword_238060000, v5, OS_LOG_TYPE_DEFAULT, "%@ Did receive endpoint %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__DDDevicePickerSceneViewController__devicePickerDidCreateApplicationServiceEndpoint___block_invoke;
  v8[3] = &unk_278A48398;
  v9 = endpointCopy;
  selfCopy2 = self;
  v6 = endpointCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __86__DDDevicePickerSceneViewController__devicePickerDidCreateApplicationServiceEndpoint___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _DDUICoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_238060000, v2, OS_LOG_TYPE_DEFAULT, "Returning nw_endpoint %@", &v6, 0xCu);
  }

  if (*(a1 + 32))
  {
    error_with_inferred_domain = 0;
  }

  else
  {
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
  }

  [(DDDevicePickerSceneViewController *)*(a1 + 40) _invokeCompletionWithEndpoint:error_with_inferred_domain orError:?];
  [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_devicePickerDidCreateBonjourEndpoint:(id)endpoint
{
  v14 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = endpointCopy;
    _os_log_impl(&dword_238060000, v5, OS_LOG_TYPE_DEFAULT, "%@ Did receive bonjour endpoint %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__DDDevicePickerSceneViewController__devicePickerDidCreateBonjourEndpoint___block_invoke;
  v8[3] = &unk_278A48398;
  v8[4] = self;
  v9 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_devicePickerDidCreateBrowserResultData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [dataCopy description];
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_238060000, v5, OS_LOG_TYPE_DEFAULT, "%@ Did receive data %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__DDDevicePickerSceneViewController__devicePickerDidCreateBrowserResultData___block_invoke;
  v9[3] = &unk_278A48398;
  v9[4] = self;
  v10 = dataCopy;
  v7 = dataCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __77__DDDevicePickerSceneViewController__devicePickerDidCreateBrowserResultData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(DDDevicePickerSceneViewController *)v2 _invokeCompletionWithData:v3 orError:0];
}

- (void)setupSceneHosting
{
  v42[4] = *MEMORY[0x277D85DE8];
  if (self && !*(self + 992))
  {
    [self _beginDelayingPresentation:&__block_literal_global_0 cancellationHandler:3.0];
    v2 = [MEMORY[0x277D46F60] identityForAngelJobLabel:@"com.apple.networkendpointpickerui"];
    v3 = objc_alloc(MEMORY[0x277D761E0]);
    specification = [MEMORY[0x277D761F8] specification];
    v37 = v2;
    v5 = [v3 initWithProcessIdentity:v2 sceneSpecification:specification];
    v6 = *(self + 992);
    *(self + 992) = v5;

    [*(self + 992) setDelegate:self];
    application_service_name = nw_browse_descriptor_get_application_service_name(*(self + 1024));
    v8 = [(DDDevicePickerSceneViewController *)self _publicKeyFromParameters:?];
    v9 = *(self + 992);
    v10 = [MEMORY[0x277CCACA8] stringWithCString:application_service_name encoding:4];
    v36 = v8;
    [DDDeviceDiscoveryViewSettingsSwift updateHostingControllerWithHostingController:v9 serviceIdentifier:v10 publicKey:v8 browseDescriptor:*(self + 1024) browseParameters:*(self + 1032)];

    sceneViewController = [*(self + 992) sceneViewController];
    [self addChildViewController:sceneViewController];
    v12 = _DDUICoreLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      view = [self view];
      *buf = 138412290;
      v39 = view;
      _os_log_impl(&dword_238060000, v12, OS_LOG_TYPE_INFO, "Setting up scene with %@", buf, 0xCu);
    }

    v35 = sceneViewController;
    view2 = [sceneViewController view];
    view3 = [self view];
    [view3 addSubview:view2];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [view3 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v32;
    trailingAnchor = [view2 trailingAnchor];
    trailingAnchor2 = [view3 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[1] = v28;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [view3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[2] = v18;
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [view3 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v29 activateConstraints:v22];

    v23 = _DDUICoreLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      [view3 frame];
      v25 = v24;
      [view3 frame];
      *buf = 134218240;
      v39 = v25;
      v40 = 2048;
      v41 = v26;
      _os_log_impl(&dword_238060000, v23, OS_LOG_TYPE_INFO, "Setting up scene with frame: %f, %f", buf, 0x16u);
    }

    [v35 didMoveToParentViewController:self];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_invokeCompletionWithEndpoint:(void *)endpoint orError:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  endpointCopy = endpoint;
  if (self)
  {
    v7 = _DDUICoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_3(&dword_238060000, v8, v9, "%p Invoking completion, with endpoint %@ or error %@", v10, v11, v12, v13, v25);
    }

    devicePickerCompletionHandler = [self devicePickerCompletionHandler];
    [self setDevicePickerCompletionHandler:0];
    if (devicePickerCompletionHandler)
    {
      v15 = OUTLINED_FUNCTION_0();
      v16(v15);
    }

    else
    {
      v17 = _DDUICoreLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2(&dword_238060000, v18, v19, "Missing completion handler for endpoint", v20, v21, v22, v23, 0);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __75__DDDevicePickerSceneViewController__devicePickerDidCreateBonjourEndpoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(DDDevicePickerSceneViewController *)v2 _invokeCompletionWithEndpoint:v3 orError:0];
}

- (void)_invokeCompletionWithData:(void *)data orError:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dataCopy = data;
  if (self)
  {
    v7 = _DDUICoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 description];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_3(&dword_238060000, v9, v10, "%p Invoking completion, with data %@ or error %@", v11, v12, v13, v14, v26);
    }

    devicePickerDataCompletionHandler = [self devicePickerDataCompletionHandler];
    [self setDevicePickerDataCompletionHandler:0];
    if (devicePickerDataCompletionHandler)
    {
      v16 = OUTLINED_FUNCTION_0();
      v17(v16);
    }

    else
    {
      v18 = _DDUICoreLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2(&dword_238060000, v19, v20, "Missing completion handler for endpoint", v21, v22, v23, v24, 0);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)initWithBrowseDescriptor:(uint64_t)a1 parameters:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238060000, a2, OS_LOG_TYPE_ERROR, "The provided browser descriptor %@ is not an application service descriptor!  Returning nil....", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end