@interface AFUISiriSAEEffectsViewController
+ (CGRect)normalizedCameraButtonRect;
+ (CGRect)normalizedLockButtonRect;
+ (id)sharedSiriUISettingsDefaults;
- (AFUISiriSAEEffectsViewController)initWithDelegate:(id)delegate instrumentationHandler:(id)handler;
- (AFUISiriSAEEffectsViewControllerDelegate)delegate;
- (BOOL)_supportsSAE;
- (BOOL)_supportsShockwaveForInvocationType:(int64_t)type;
- (SUIAShockwaveViewController)shockwaveViewController;
- (SUICEdgeLightMaskMetalLayer)edgeLightMaskMetalLayer;
- (UIView)eyesFreeView;
- (_UIIntelligenceSystemLightView)systemLightView;
- (id)_createEdgeLightMaskMetalLayer;
- (id)_createShockwaveViewControllerForInvocationType:(int64_t)type;
- (id)_createSystemLightView;
- (void)_beginAnimatingEdgeLight;
- (void)_handleDismissalRequestDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)_handlePresentationRequestDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)_setUpEffectsIfNeededForInvocationType:(int64_t)type;
- (void)_transitionToShockwaveState:(int64_t)state;
- (void)_updateEdgeLightMaskMetalLayerFramerate;
- (void)beginAnimatingEffectsForInvocationType:(int64_t)type;
- (void)beginHintingForInvocationType:(int64_t)type;
- (void)insertEyesFreeView:(id)view;
- (void)requestDismissalWithHandler:(id)handler;
- (void)requestPresentationWithHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AFUISiriSAEEffectsViewController

+ (id)sharedSiriUISettingsDefaults
{
  if (sharedSiriUISettingsDefaults_onceToken != -1)
  {
    +[AFUISiriSAEEffectsViewController sharedSiriUISettingsDefaults];
  }

  v3 = sharedSiriUISettingsDefaults_defaults;

  return v3;
}

uint64_t __64__AFUISiriSAEEffectsViewController_sharedSiriUISettingsDefaults__block_invoke()
{
  sharedSiriUISettingsDefaults_defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];

  return MEMORY[0x2821F96F8]();
}

+ (CGRect)normalizedLockButtonRect
{
  if (normalizedLockButtonRect_once != -1)
  {
    +[AFUISiriSAEEffectsViewController normalizedLockButtonRect];
  }

  v3 = *(&normalizedLockButtonRect_normalizedLockButtonRect + 1);
  v2 = *&normalizedLockButtonRect_normalizedLockButtonRect;
  v4 = *&qword_280C18228;
  v5 = unk_280C18230;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void __60__AFUISiriSAEEffectsViewController_normalizedLockButtonRect__block_invoke()
{
  normalizedLockButtonRect_normalizedLockButtonRect = AFUISiriSAEEffectsViewControllerFallbackNormalizedLockButtonRect;
  *&qword_280C18228 = unk_241494770;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v5 = *BytePtr;
      v4 = *(BytePtr + 1);
      v7 = *(BytePtr + 2);
      v6 = *(BytePtr + 3);
      CFRelease(v1);
      v24.origin.x = v5;
      v24.origin.y = v4;
      v24.size.width = v7;
      v24.size.height = v6;
      if (CGRectIsNull(v24) || (v25.origin.x = v5, v25.origin.y = v4, v25.size.width = v7, v25.size.height = v6, CGRectEqualToRect(v25, *MEMORY[0x277CBF3A0])))
      {
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __60__AFUISiriSAEEffectsViewController_normalizedLockButtonRect__block_invoke_cold_2();
        }
      }

      else
      {
        v26.origin.x = v5;
        v26.origin.y = v4;
        v26.size.width = v7;
        v26.size.height = v6;
        CGRectGetMinX(v26);
        v27.origin.x = v5;
        v27.origin.y = v4;
        v27.size.width = v7;
        v27.size.height = v6;
        CGRectGetMinY(v27);
        v28.origin.x = v5;
        v28.origin.y = v4;
        v28.size.width = v7;
        v28.size.height = v6;
        CGRectGetWidth(v28);
        v29.origin.x = v5;
        v29.origin.y = v4;
        v29.size.width = v7;
        v29.size.height = v6;
        CGRectGetHeight(v29);
        *&normalizedLockButtonRect_normalizedLockButtonRect = v5;
        *(&normalizedLockButtonRect_normalizedLockButtonRect + 1) = v4;
        qword_280C18228 = *&v7;
        unk_280C18230 = *&v6;
      }
    }

    else
    {
      CFRelease(v1);
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __60__AFUISiriSAEEffectsViewController_normalizedLockButtonRect__block_invoke_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __60__AFUISiriSAEEffectsViewController_normalizedLockButtonRect__block_invoke_cold_3(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

+ (CGRect)normalizedCameraButtonRect
{
  if (normalizedCameraButtonRect_once != -1)
  {
    +[AFUISiriSAEEffectsViewController normalizedCameraButtonRect];
  }

  v3 = *(&normalizedCameraButtonRect_normalizedCameraButtonRect + 1);
  v2 = *&normalizedCameraButtonRect_normalizedCameraButtonRect;
  v4 = *&qword_27E545590;
  v5 = unk_27E545598;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void __62__AFUISiriSAEEffectsViewController_normalizedCameraButtonRect__block_invoke()
{
  normalizedCameraButtonRect_normalizedCameraButtonRect = AFUISiriSAEEffectsViewControllerFallbackNormalizedCameraButtonRect;
  *&qword_27E545590 = unk_241494790;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v5 = *BytePtr;
      v4 = *(BytePtr + 1);
      v7 = *(BytePtr + 2);
      v6 = *(BytePtr + 3);
      CFRelease(v1);
      v24.origin.x = v5;
      v24.origin.y = v4;
      v24.size.width = v7;
      v24.size.height = v6;
      if (CGRectIsNull(v24) || (v25.origin.x = v5, v25.origin.y = v4, v25.size.width = v7, v25.size.height = v6, CGRectEqualToRect(v25, *MEMORY[0x277CBF3A0])))
      {
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __62__AFUISiriSAEEffectsViewController_normalizedCameraButtonRect__block_invoke_cold_2();
        }
      }

      else
      {
        v26.origin.x = v5;
        v26.origin.y = v4;
        v26.size.width = v7;
        v26.size.height = v6;
        CGRectGetMinX(v26);
        v27.origin.x = v5;
        v27.origin.y = v4;
        v27.size.width = v7;
        v27.size.height = v6;
        CGRectGetMinY(v27);
        v28.origin.x = v5;
        v28.origin.y = v4;
        v28.size.width = v7;
        v28.size.height = v6;
        CGRectGetWidth(v28);
        v29.origin.x = v5;
        v29.origin.y = v4;
        v29.size.width = v7;
        v29.size.height = v6;
        CGRectGetHeight(v29);
        *&normalizedCameraButtonRect_normalizedCameraButtonRect = v5;
        *(&normalizedCameraButtonRect_normalizedCameraButtonRect + 1) = v4;
        qword_27E545590 = *&v7;
        unk_27E545598 = *&v6;
      }
    }

    else
    {
      CFRelease(v1);
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __62__AFUISiriSAEEffectsViewController_normalizedCameraButtonRect__block_invoke_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __62__AFUISiriSAEEffectsViewController_normalizedCameraButtonRect__block_invoke_cold_3(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (AFUISiriSAEEffectsViewController)initWithDelegate:(id)delegate instrumentationHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = AFUISiriSAEEffectsViewController;
  v8 = [(AFUISiriSAEEffectsViewController *)&v21 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_viewHostingInstrumentationHandler, handler);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    presentationHandlers = v9->_presentationHandlers;
    v9->_presentationHandlers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dismissalHandlers = v9->_dismissalHandlers;
    v9->_dismissalHandlers = v12;

    v14 = +[AFUISiriSAEEffectsViewController sharedSiriUISettingsDefaults];
    v9->_forceOrb = [v14 integerForKey:@"ForceOrbGraphic"] != 0;
    v9->_shockwaveDisablement = [v14 integerForKey:@"DisableShockwave"];
    v9->_edgeLightBurstStartPosition = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__thermalStateDidChange_ name:*MEMORY[0x277CCA600] object:0];

    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      _supportsSAE = [(AFUISiriSAEEffectsViewController *)v9 _supportsSAE];
      v19 = [(AFUISiriSAEEffectsViewController *)v9 _supportsShockwaveForInvocationType:0];
      *buf = 136315650;
      v23 = "[AFUISiriSAEEffectsViewController initWithDelegate:instrumentationHandler:]";
      v24 = 1024;
      v25 = _supportsSAE;
      v26 = 1024;
      v27 = v19;
      _os_log_impl(&dword_241432000, v17, OS_LOG_TYPE_DEFAULT, "%s #effects initializing with supportsSAE: %{BOOL}u; supportsShockwave: %{BOOL}u", buf, 0x18u);
    }
  }

  return v9;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AFUISiriSAEEffectsViewController;
  [(AFUISiriSAEEffectsViewController *)&v8 viewDidLoad];
  _createEdgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self _createEdgeLightMaskMetalLayer];
  _createSystemLightView = [(AFUISiriSAEEffectsViewController *)self _createSystemLightView];
  layer = [_createSystemLightView layer];
  [layer addSublayer:_createEdgeLightMaskMetalLayer];

  view = [(AFUISiriSAEEffectsViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  [view addSubview:_createSystemLightView];
  [(AFUISiriSAEEffectsViewController *)self setSystemLightView:_createSystemLightView];
  [(AFUISiriSAEEffectsViewController *)self setEdgeLightMaskMetalLayer:_createEdgeLightMaskMetalLayer];
  [(AFUISiriSAEEffectsViewController *)self _updateEdgeLightMaskMetalLayerFramerate];
}

- (void)viewDidLayoutSubviews
{
  view = [(AFUISiriSAEEffectsViewController *)self view];
  eyesFreeView = [(AFUISiriSAEEffectsViewController *)self eyesFreeView];
  shockwaveViewController = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController];
  systemLightView = [(AFUISiriSAEEffectsViewController *)self systemLightView];
  if (eyesFreeView)
  {
    [view bringSubviewToFront:eyesFreeView];
  }

  if (shockwaveViewController)
  {
    view2 = [shockwaveViewController view];
    [view bringSubviewToFront:view2];
  }

  [view bringSubviewToFront:systemLightView];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [eyesFreeView setFrame:?];
  [systemLightView setFrame:{v8, v10, v12, v14}];
  view3 = [shockwaveViewController view];
  [view3 setFrame:{v8, v10, v12, v14}];

  edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
  superlayer = [edgeLightMaskMetalLayer superlayer];
  [superlayer bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [edgeLightMaskMetalLayer setFrame:{v19, v21, v23, v25}];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = AFUISiriSAEEffectsViewController;
  [(AFUISiriSAEEffectsViewController *)&v9 viewIsAppearing:appearing];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[AFUISiriSAEEffectsViewController viewIsAppearing:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #effects is appearing", buf, 0xCu);
  }

  edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
  view = [(AFUISiriSAEEffectsViewController *)self view];
  window = [view window];
  screen = [window screen];
  [edgeLightMaskMetalLayer setScreen:screen];

  [(AFUISiriSAEEffectsViewController *)self setState:4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = AFUISiriSAEEffectsViewController;
  [(AFUISiriSAEEffectsViewController *)&v5 viewDidAppear:appear];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[AFUISiriSAEEffectsViewController viewDidAppear:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #effects did appear", buf, 0xCu);
  }

  [(AFUISiriSAEEffectsViewController *)self setState:5];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = AFUISiriSAEEffectsViewController;
  [(AFUISiriSAEEffectsViewController *)&v5 viewWillDisappear:disappear];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[AFUISiriSAEEffectsViewController viewWillDisappear:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #effects will disappear", buf, 0xCu);
  }

  [(AFUISiriSAEEffectsViewController *)self setState:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = AFUISiriSAEEffectsViewController;
  [(AFUISiriSAEEffectsViewController *)&v5 viewDidDisappear:disappear];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[AFUISiriSAEEffectsViewController viewDidDisappear:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #effects did disappear", buf, 0xCu);
  }

  [(AFUISiriSAEEffectsViewController *)self setState:0];
}

- (void)requestPresentationWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  state = [(AFUISiriSAEEffectsViewController *)self state];
  if (state < 3)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[AFUISiriSAEEffectsViewController requestPresentationWithHandler:]";
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #effects currently dismissed or dismissing; requesting presentation", buf, 0xCu);
    }

    presentationHandlers = [(AFUISiriSAEEffectsViewController *)self presentationHandlers];
    v12 = [handlerCopy copy];
    v13 = _Block_copy(v12);
    [presentationHandlers addObject:v13];

    [(AFUISiriSAEEffectsViewController *)self setState:3];
    delegate = [(AFUISiriSAEEffectsViewController *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__AFUISiriSAEEffectsViewController_requestPresentationWithHandler___block_invoke;
    v16[3] = &unk_278CD62A0;
    objc_copyWeak(&v17, &location);
    [delegate siriSAEEffectsViewController:self requestsPresentationWithHandler:v16];

    objc_destroyWeak(&v17);
  }

  else if (state - 3 >= 2)
  {
    if (state == 5)
    {
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[AFUISiriSAEEffectsViewController requestPresentationWithHandler:]";
        _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s #effects already presented; completing immediately", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[AFUISiriSAEEffectsViewController requestPresentationWithHandler:]";
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #effects presentation request in progress; enqueuing handler", buf, 0xCu);
    }

    presentationHandlers2 = [(AFUISiriSAEEffectsViewController *)self presentationHandlers];
    v8 = [handlerCopy copy];
    v9 = _Block_copy(v8);
    [presentationHandlers2 addObject:v9];
  }

  objc_destroyWeak(&location);
}

void __67__AFUISiriSAEEffectsViewController_requestPresentationWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePresentationRequestDidCompleteWithSuccess:a2 error:v5];
}

- (void)requestDismissalWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  state = [(AFUISiriSAEEffectsViewController *)self state];
  if ((state - 3) < 3)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[AFUISiriSAEEffectsViewController requestDismissalWithHandler:]";
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #effects currently presented or presenting; requesting dismissal", buf, 0xCu);
    }

    dismissalHandlers = [(AFUISiriSAEEffectsViewController *)self dismissalHandlers];
    v12 = [handlerCopy copy];
    v13 = _Block_copy(v12);
    [dismissalHandlers addObject:v13];

    [(AFUISiriSAEEffectsViewController *)self setState:2];
    delegate = [(AFUISiriSAEEffectsViewController *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__AFUISiriSAEEffectsViewController_requestDismissalWithHandler___block_invoke;
    v16[3] = &unk_278CD62A0;
    objc_copyWeak(&v17, &location);
    [delegate siriSAEEffectsViewController:self requestsDismissalWithHandler:v16];

    objc_destroyWeak(&v17);
  }

  else if ((state - 1) >= 2)
  {
    if (!state)
    {
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[AFUISiriSAEEffectsViewController requestDismissalWithHandler:]";
        _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s #effects already dismissed; completing immediately", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[AFUISiriSAEEffectsViewController requestDismissalWithHandler:]";
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #effects dismissal request in progress; enqueuing handler", buf, 0xCu);
    }

    dismissalHandlers2 = [(AFUISiriSAEEffectsViewController *)self dismissalHandlers];
    v8 = [handlerCopy copy];
    v9 = _Block_copy(v8);
    [dismissalHandlers2 addObject:v9];
  }

  objc_destroyWeak(&location);
}

void __64__AFUISiriSAEEffectsViewController_requestDismissalWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissalRequestDidCompleteWithSuccess:a2 error:v5];
}

- (void)beginHintingForInvocationType:(int64_t)type
{
  v11 = *MEMORY[0x277D85DE8];
  [(AFUISiriSAEEffectsViewController *)self _setUpEffectsIfNeededForInvocationType:?];
  shockwaveViewController = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController];

  if (shockwaveViewController)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      if ((type - 1) > 2)
      {
        v7 = @".Unspecified";
      }

      else
      {
        v7 = off_278CD6338[type - 1];
      }

      *v10 = 136315394;
      *&v10[4] = "[AFUISiriSAEEffectsViewController beginHintingForInvocationType:]";
      *&v10[12] = 2114;
      *&v10[14] = v7;
      v8 = v6;
      _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #effects beginning hinting for %{public}@ invocation", v10, 0x16u);
    }

    v9 = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController:*v10];
    [v9 setState:1 animated:1 recommendedNextAction:0 completion:0];
  }
}

- (void)beginAnimatingEffectsForInvocationType:(int64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  [(AFUISiriSAEEffectsViewController *)self _setUpEffectsIfNeededForInvocationType:?];
  view = [(AFUISiriSAEEffectsViewController *)self view];
  [view layoutIfNeeded];

  shockwaveViewController = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController];

  if (shockwaveViewController)
  {
    shockwaveViewController2 = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController];
    [shockwaveViewController2 setState:1];

    objc_initWeak(location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__AFUISiriSAEEffectsViewController_beginAnimatingEffectsForInvocationType___block_invoke;
    v11[3] = &unk_278CD62C8;
    objc_copyWeak(v12, location);
    v12[1] = type;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    objc_destroyWeak(v12);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      if ((type - 1) > 2)
      {
        v9 = @".Unspecified";
      }

      else
      {
        v9 = off_278CD6338[type - 1];
      }

      *location = 136315394;
      *&location[4] = "[AFUISiriSAEEffectsViewController beginAnimatingEffectsForInvocationType:]";
      v14 = 2114;
      v15 = v9;
      v10 = v8;
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #effects animating edge light for %{public}@ invocation", location, 0x16u);
    }

    [(AFUISiriSAEEffectsViewController *)self _beginAnimatingEdgeLight];
  }
}

void __75__AFUISiriSAEEffectsViewController_beginAnimatingEffectsForInvocationType___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40) - 1;
      if (v4 > 2)
      {
        v5 = @".Unspecified";
      }

      else
      {
        v5 = off_278CD6338[v4];
      }

      *v7 = 136315394;
      *&v7[4] = "[AFUISiriSAEEffectsViewController beginAnimatingEffectsForInvocationType:]_block_invoke";
      *&v7[12] = 2114;
      *&v7[14] = v5;
      v6 = v3;
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #effects animating shockwave and edge light for %{public}@ invocation", v7, 0x16u);
    }

    [WeakRetained _beginAnimatingEdgeLight];
    [WeakRetained _transitionToShockwaveState:2];
  }
}

- (void)insertEyesFreeView:(id)view
{
  viewCopy = view;
  eyesFreeView = [(AFUISiriSAEEffectsViewController *)self eyesFreeView];
  [eyesFreeView removeFromSuperview];

  [(AFUISiriSAEEffectsViewController *)self setEyesFreeView:0];
  if (viewCopy)
  {
    view = [(AFUISiriSAEEffectsViewController *)self view];
    [view addSubview:viewCopy];
    [(AFUISiriSAEEffectsViewController *)self setEyesFreeView:viewCopy];
    [view setNeedsLayout];
    [view layoutIfNeeded];
  }
}

- (BOOL)_supportsSAE
{
  if ([(AFUISiriSAEEffectsViewController *)self forceOrb])
  {
    return 0;
  }

  v3 = MEMORY[0x277CEF4D0];

  return [v3 saeAvailable];
}

- (BOOL)_supportsShockwaveForInvocationType:(int64_t)type
{
  if ([(AFUISiriSAEEffectsViewController *)self shockwaveDisablement])
  {
    return 0;
  }

  v5 = !UIAccessibilityIsReduceMotionEnabled();
  return type != 3 && v5;
}

- (id)_createEdgeLightMaskMetalLayer
{
  v3 = objc_alloc_init(MEMORY[0x277D61A48]);
  [v3 setName:@"EdgeLightMask"];
  [v3 setAllowsHitTesting:0];
  [v3 setCompositingFilter:*MEMORY[0x277CDA5A0]];
  [v3 setBurstStartPosition:0];
  if ([(AFUISiriSAEEffectsViewController *)self shockwaveDisablement]== 2)
  {
    LODWORD(v4) = 0.5;
    [v3 setBurstOpacity:v4];
  }

  return v3;
}

- (id)_createSystemLightView
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D76050]);
  v3 = [v2 initWithFrame:1 preferringAudioReactivity:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setUserInteractionEnabled:0];
  layer = [v3 layer];
  LODWORD(v5) = 2.0;
  [layer setGain:v5];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [layer setValue:v6 forKey:@"allowsLimitedHeadroom"];

  [layer setOpaque:0];
  [layer setAllowsHitTesting:0];
  v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v8 = MEMORY[0x277CCAE60];
  CAColorMatrixMakeMultiplyColor();
  v9 = [v8 valueWithCAColorMatrix:&v12];
  [v7 setValue:v9 forKey:*MEMORY[0x277CDA440]];

  [v7 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA350]];
  v13[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [layer setFilters:v10];

  return v3;
}

- (id)_createShockwaveViewControllerForInvocationType:(int64_t)type
{
  view = [(AFUISiriSAEEffectsViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (type == 1)
  {
    v13 = objc_alloc(MEMORY[0x277D6C050]);
    [objc_opt_class() normalizedLockButtonRect];
    v14 = [v13 initWithNormalizedButtonEdgeLocation:? shockwaveViewBounds:?];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277D6C058]) initWithEdge:4 shockwaveViewBounds:{v6, v8, v10, v12}];
  }

  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x277D6C068]) initWithStyle:v14];

  return v16;
}

- (void)_handlePresentationRequestDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[AFUISiriSAEEffectsViewController _handlePresentationRequestDidCompleteWithSuccess:error:]";
    v20 = 1024;
    v21 = successCopy;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #effects presentation request completed; success: %{BOOL}u; error: %{public}@", buf, 0x1Cu);
  }

  presentationHandlers = [(AFUISiriSAEEffectsViewController *)self presentationHandlers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [presentationHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(presentationHandlers);
        }

        (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [presentationHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [presentationHandlers removeAllObjects];
}

- (void)_handleDismissalRequestDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[AFUISiriSAEEffectsViewController _handleDismissalRequestDidCompleteWithSuccess:error:]";
    v20 = 1024;
    v21 = successCopy;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #effects dismissal request completed; success: %{BOOL}u; error: %{public}@", buf, 0x1Cu);
  }

  dismissalHandlers = [(AFUISiriSAEEffectsViewController *)self dismissalHandlers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [dismissalHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(dismissalHandlers);
        }

        (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [dismissalHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [dismissalHandlers removeAllObjects];
}

- (void)_setUpEffectsIfNeededForInvocationType:(int64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(AFUISiriSAEEffectsViewController *)self _supportsSAE])
  {
    if ([(AFUISiriSAEEffectsViewController *)self _supportsShockwaveForInvocationType:type])
    {
      shockwaveViewController = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController];

      if (!shockwaveViewController)
      {
        v6 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          if ((type - 1) > 2)
          {
            v7 = @".Unspecified";
          }

          else
          {
            v7 = off_278CD6338[type - 1];
          }

          *v21 = 136315394;
          *&v21[4] = "[AFUISiriSAEEffectsViewController _setUpEffectsIfNeededForInvocationType:]";
          *&v21[12] = 2114;
          *&v21[14] = v7;
          v9 = v6;
          _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #effects setting up shockwave for %{public}@ invocation", v21, 0x16u);
        }

        v10 = [(AFUISiriSAEEffectsViewController *)self _createShockwaveViewControllerForInvocationType:type, *v21, *&v21[16]];
        [(AFUISiriSAEEffectsViewController *)self bs_addChildViewController:v10];
        [(AFUISiriSAEEffectsViewController *)self setShockwaveViewController:v10];
      }
    }

    if (![(AFUISiriSAEEffectsViewController *)self edgeLightBurstStartPosition])
    {
      v11 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        if ((type - 1) > 2)
        {
          v12 = @".Unspecified";
        }

        else
        {
          v12 = off_278CD6338[type - 1];
        }

        *v21 = 136315394;
        *&v21[4] = "[AFUISiriSAEEffectsViewController _setUpEffectsIfNeededForInvocationType:]";
        *&v21[12] = 2114;
        *&v21[14] = v12;
        v13 = v11;
        _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s #effects setting up edge light for %{public}@ invocation", v21, 0x16u);
      }

      if ((type - 1) >= 2)
      {
        if (type == 3)
        {
          [objc_opt_class() normalizedCameraButtonRect];
          x = v23.origin.x;
          y = v23.origin.y;
          width = v23.size.width;
          height = v23.size.height;
          MidX = CGRectGetMidX(v23);
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          MidY = CGRectGetMidY(v24);
          edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
          [edgeLightMaskMetalLayer setBurstStartPositionCustom:{MidX, MidY}];
          type = 7;
LABEL_23:

          [(AFUISiriSAEEffectsViewController *)self setEdgeLightBurstStartPosition:type];
          return;
        }

        type = 0;
      }

      edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
      [edgeLightMaskMetalLayer setBurstStartPosition:type];
      goto LABEL_23;
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315138;
      *&v21[4] = "[AFUISiriSAEEffectsViewController _setUpEffectsIfNeededForInvocationType:]";
      _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #effects not setting up effects; SAE not supported", v21, 0xCu);
    }
  }
}

- (void)_beginAnimatingEdgeLight
{
  objc_initWeak(&location, self);
  edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__AFUISiriSAEEffectsViewController__beginAnimatingEdgeLight__block_invoke;
  v4[3] = &unk_278CD55A0;
  objc_copyWeak(&v5, &location);
  [edgeLightMaskMetalLayer animateOnWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__AFUISiriSAEEffectsViewController__beginAnimatingEdgeLight__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*MEMORY[0x277D76620] finishedIPTest:*MEMORY[0x277D61AA0]];
    v2 = [v3 viewHostingInstrumentationHandler];
    [v2 appearanceDidChange:1 machAbsoluteTime:mach_absolute_time()];

    WeakRetained = v3;
  }
}

- (void)_transitionToShockwaveState:(int64_t)state
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AFUISiriSAEEffectsViewController__transitionToShockwaveState___block_invoke;
  aBlock[3] = &unk_278CD56E0;
  objc_copyWeak(&v14, &location);
  v5 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__AFUISiriSAEEffectsViewController__transitionToShockwaveState___block_invoke_2;
  v11 = &unk_278CD62F0;
  v12[1] = state;
  objc_copyWeak(v12, &location);
  v6 = _Block_copy(&v8);
  v7 = [(AFUISiriSAEEffectsViewController *)self shockwaveViewController:v8];
  [v7 setState:state animated:state != 0 recommendedNextAction:v5 completion:v6];

  objc_destroyWeak(v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__AFUISiriSAEEffectsViewController__transitionToShockwaveState___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionToShockwaveState:a2];
}

void __64__AFUISiriSAEEffectsViewController__transitionToShockwaveState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x2C;
  if (!v3 && v4 != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v7 = [WeakRetained shockwaveViewController];
      [v8 bs_removeChildViewController:v7];

      [v8 setShockwaveViewController:0];
      WeakRetained = v8;
    }
  }
}

- (void)_updateEdgeLightMaskMetalLayerFramerate
{
  v11 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  thermalState = [processInfo thermalState];

  if (thermalState < 2)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AFUISiriSAEEffectsViewController _updateEdgeLightMaskMetalLayerFramerate]";
      _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #effects Edge Light Mask exiting performance mode due to decreased thermal pressure", &v9, 0xCu);
    }

    edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
    [edgeLightMaskMetalLayer endReducedFramerateForPerformance];
    goto LABEL_9;
  }

  if (thermalState - 2 <= 1)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AFUISiriSAEEffectsViewController _updateEdgeLightMaskMetalLayerFramerate]";
      _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #effects Edge Light Mask entering performance mode due to thermal pressure", &v9, 0xCu);
    }

    edgeLightMaskMetalLayer = [(AFUISiriSAEEffectsViewController *)self edgeLightMaskMetalLayer];
    [edgeLightMaskMetalLayer startReducedFramerateForPerformance];
LABEL_9:

    return;
  }

  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[AFUISiriSAEEffectsViewController _updateEdgeLightMaskMetalLayerFramerate]";
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #effects Edge Light Mask detected unknown thermal pressure", &v9, 0xCu);
  }
}

- (AFUISiriSAEEffectsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)eyesFreeView
{
  WeakRetained = objc_loadWeakRetained(&self->_eyesFreeView);

  return WeakRetained;
}

- (SUIAShockwaveViewController)shockwaveViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_shockwaveViewController);

  return WeakRetained;
}

- (_UIIntelligenceSystemLightView)systemLightView
{
  WeakRetained = objc_loadWeakRetained(&self->_systemLightView);

  return WeakRetained;
}

- (SUICEdgeLightMaskMetalLayer)edgeLightMaskMetalLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_edgeLightMaskMetalLayer);

  return WeakRetained;
}

@end