@interface InputUIApp
- (InputUIApp)init;
- (void)inputSystemService:(id)service prepareForInputSession:(id)session options:(id)options;
- (void)pauseTextInputService;
- (void)resumeTextInputService;
- (void)waitForSpringBoardToForegroundInputUIScene;
@end

@implementation InputUIApp

- (InputUIApp)init
{
  v50.receiver = self;
  v50.super_class = InputUIApp;
  v2 = [(InputUIApp *)&v50 init];
  if (v2)
  {
    v3 = sub_100001928();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InputUI is launching", buf, 2u);
    }

    v4 = objc_alloc_init(NSLock);
    servicePausedLock = v2->_servicePausedLock;
    v2->_servicePausedLock = v4;

    v6 = objc_alloc_init(IUIRTISystemDelegateMultiplexer);
    systemDelegateMultiplexer = v2->_systemDelegateMultiplexer;
    v2->_systemDelegateMultiplexer = v6;

    [(IUIRTISystemDelegateMultiplexer *)v2->_systemDelegateMultiplexer setContextDelegate:v2];
    v8 = RTIInputUIServiceMachNameiOS;
    v9 = [RTIInputSystemUIService sharedServiceWithDomainName:RTIInputUIServiceMachNameiOS serviceName:RTIInputUIServiceName];
    inputLaunchAngelService = v2->_inputLaunchAngelService;
    v2->_inputLaunchAngelService = v9;

    rtiService = [(RTIInputSystemUIService *)v2->_inputLaunchAngelService rtiService];
    textInputService = v2->_textInputService;
    v2->_textInputService = rtiService;

    [(RTIInputSystemService *)v2->_textInputService setDelegate:v2->_systemDelegateMultiplexer];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

    v15 = dispatch_queue_create("com.apple.InputUI.sessionCoordinator", v14);
    sessionCoordinatorQueue = v2->_sessionCoordinatorQueue;
    v2->_sessionCoordinatorQueue = v15;

    v17 = [[IUISessionCoordinator alloc] initWithQueue:v2->_sessionCoordinatorQueue];
    sessionCoordinator = v2->_sessionCoordinator;
    v2->_sessionCoordinator = v17;

    [(IUIRTISystemDelegateMultiplexer *)v2->_systemDelegateMultiplexer setPrimaryDelegate:v2->_sessionCoordinator];
    [(InputUIApp *)v2 pauseTextInputService];
    [(RTIInputSystemService *)v2->_textInputService setEnabled:1];
    v19 = NSClassFromString(@"UIKeyboardUIService");
    if (v19)
    {
      sharedService = [(objc_class *)v19 sharedService];
      keyboardUIService = v2->_keyboardUIService;
      v2->_keyboardUIService = sharedService;
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (objc_opt_class())
      {
        v22 = +[ITTInputTeletypeServer sharedServer];
        inputTeletypeServer = v2->_inputTeletypeServer;
        v2->_inputTeletypeServer = v22;
      }

      if ((+[UIKeyboard inputUIOOP]& 1) == 0 && objc_opt_class())
      {
        v24 = +[ITTAppKeyboardServer sharedServer];
        appKeyboardServer = v2->_appKeyboardServer;
        v2->_appKeyboardServer = v24;
      }
    }

    if (!v2->_inputTeletypeServer)
    {
      v26 = +[IUIDummyITTInputTeletypeServer sharedServer];
      dummyInputTeletypeServer = v2->_dummyInputTeletypeServer;
      v2->_dummyInputTeletypeServer = v26;
    }

    if (!v2->_appKeyboardServer)
    {
      v28 = +[IUIDummyITTAppKeyboardServer sharedServer];
      dummyAppKeyboardServer = v2->_dummyAppKeyboardServer;
      v2->_dummyAppKeyboardServer = v28;
    }

    if ((+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") & 1) == 0 && +[UIKeyboard supportsAutoFillPanel])
    {
      v30 = [RTIInputSystemUIService sharedServiceWithDomainName:v8 serviceName:RTIServiceAutoFillName];
      autofillUILaunchAngelService = v2->_autofillUILaunchAngelService;
      v2->_autofillUILaunchAngelService = v30;

      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v32 = qword_10002B808;
      v59 = qword_10002B808;
      if (!qword_10002B808)
      {
        *buf = _NSConcreteStackBlock;
        v52 = 3221225472;
        v53 = sub_100003230;
        v54 = &unk_100020528;
        v55 = &v56;
        sub_10000197C();
        Class = objc_getClass("AFUIServiceDelegate");
        *(v55[1] + 24) = Class;
        qword_10002B808 = *(v55[1] + 24);
        v32 = v57[3];
      }

      v34 = v32;
      _Block_object_dispose(&v56, 8);
      v35 = objc_alloc_init(v32);
      autofillUIServiceDelegate = v2->_autofillUIServiceDelegate;
      v2->_autofillUIServiceDelegate = v35;

      v37 = v2->_autofillUIServiceDelegate;
      rtiService2 = [(RTIInputSystemUIService *)v2->_autofillUILaunchAngelService rtiService];
      [rtiService2 setDelegate:v37];

      v39 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v40 = dispatch_queue_create("com.apple.inputservice.AutoFillUIService", v39);
      [(InputUIApp *)v2 setAutofillUIServiceQueue:v40];

      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v41 = qword_10002B818;
      v59 = qword_10002B818;
      if (!qword_10002B818)
      {
        *buf = _NSConcreteStackBlock;
        v52 = 3221225472;
        v53 = sub_1000032F4;
        v54 = &unk_100020528;
        v55 = &v56;
        sub_10000197C();
        v42 = objc_getClass("AFUIServiceListener");
        *(v55[1] + 24) = v42;
        qword_10002B818 = *(v55[1] + 24);
        v41 = v57[3];
      }

      v43 = v41;
      _Block_object_dispose(&v56, 8);
      v44 = [v41 alloc];
      autofillUIServiceQueue = [(InputUIApp *)v2 autofillUIServiceQueue];
      v46 = [v44 initDefaultServiceWithServiceQueue:autofillUIServiceQueue];
      autofillUIServiceListener = v2->_autofillUIServiceListener;
      v2->_autofillUIServiceListener = v46;

      rtiService3 = [(RTIInputSystemUIService *)v2->_autofillUILaunchAngelService rtiService];
      [rtiService3 setEnabled:1];
    }
  }

  return v2;
}

- (void)pauseTextInputService
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  servicePausedLock = [(InputUIApp *)self servicePausedLock];
  [servicePausedLock lock];

  if (![(InputUIApp *)self isServicePaused])
  {
    v4 = sub_100001928();
    v5 = os_signpost_id_generate(v4);

    v6 = sub_100001928();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v5, "pauseTextInputService", &unk_10001B3BA, buf, 2u);
    }

    [(InputUIApp *)self setServicePaused:1];
    if (!self->_sceneCreationSemaphore)
    {
      v8 = dispatch_semaphore_create(0);
      sceneCreationSemaphore = self->_sceneCreationSemaphore;
      self->_sceneCreationSemaphore = v8;
    }

    sessionCoordinatorQueue = [(InputUIApp *)self sessionCoordinatorQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001A5C;
    block[3] = &unk_100020500;
    block[4] = self;
    dispatch_async(sessionCoordinatorQueue, block);
  }

  servicePausedLock2 = [(InputUIApp *)self servicePausedLock];
  [servicePausedLock2 unlock];
}

- (void)waitForSpringBoardToForegroundInputUIScene
{
  v3 = sub_100001928();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RTI service will pause and wait for scene to be foreground", buf, 2u);
  }

  dispatch_semaphore_wait(self->_sceneCreationSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RTI service is resumed", v5, 2u);
  }
}

- (void)resumeTextInputService
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  servicePausedLock = [(InputUIApp *)self servicePausedLock];
  [servicePausedLock lock];

  if ([(InputUIApp *)self isServicePaused])
  {
    v4 = sub_100001928();
    v5 = os_signpost_id_generate(v4);

    v6 = sub_100001928();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v5, "resumeTextInputService", &unk_10001B3BA, v10, 2u);
    }

    sceneCreationSemaphore = self->_sceneCreationSemaphore;
    if (sceneCreationSemaphore)
    {
      dispatch_semaphore_signal(sceneCreationSemaphore);
    }

    [(InputUIApp *)self setServicePaused:0];
  }

  servicePausedLock2 = [(InputUIApp *)self servicePausedLock];
  [servicePausedLock2 unlock];
}

- (void)inputSystemService:(id)service prepareForInputSession:(id)session options:(id)options
{
  optionsCopy = options;
  if (objc_opt_respondsToSelector())
  {
    enhancedWindowingModeEnabled = [optionsCopy enhancedWindowingModeEnabled];
  }

  else
  {
    enhancedWindowingModeEnabled = 0;
  }

  v6 = [NSClassFromString(@"_UIKeyboardArbiterClientInputUIHost") performSelector:"automaticSharedArbiterClient"];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 performSelector:"presentationModeManager"];
    if (objc_opt_respondsToSelector())
    {
      v8 = [NSNumber numberWithBool:enhancedWindowingModeEnabled];
      [v7 performSelector:"_enhancedWindowingModeEnabledDidChange:" withObject:v8];
    }
  }
}

@end