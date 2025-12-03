@interface PKPencilSqueezeController
- (BOOL)_onlyShowUndoOrRedo;
- (double)_paletteViewCenterInRect:(CGFloat)rect hoverLocation:(CGFloat)location paletteViewSize:(CGFloat)size;
- (double)_paletteViewScale;
- (double)paletteViewFrameForHoverLocation:(double)location;
- (id)_currentFirstResponder;
- (id)_currentUndoManager;
- (id)_hoverViewInPalette:(id *)palette;
- (id)_loggableNotificationDescription:(uint64_t)description;
- (id)hitTest:(void *)test fromView:(double)view withEvent:(double)event;
- (uint64_t)_canSelectTool:(uint64_t)tool atIndex:(void *)index;
- (uint64_t)_isColorPickerVisible;
- (uint64_t)_isPresentedViewController:(uint64_t)controller;
- (uint64_t)_keyWindow;
- (uint64_t)_toolPickerForKeyWindow;
- (uint64_t)_updatePalettePositionWithHoverLocation:(double)location;
- (uint64_t)_updatePaletteViewPresentationState;
- (uint64_t)initWithContainerView:(void *)view rootViewController:(void *)controller textEffectsWindowObserver:;
- (void)_didChangePaletteViewToVisible;
- (void)_didSelectTool:(uint64_t *)tool atIndex:(void *)index;
- (void)_dismissPopovers;
- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)change;
- (void)_handleKeyboardWillHideNotification:(id)notification;
- (void)_handleKeyboardWillShowNotification:(id)notification;
- (void)_handleSceneDidEnterBackgroundNotification:(id)notification;
- (void)_handleSceneWillEnterForegroundNotification:(id)notification;
- (void)_hidePaletteViewAfterDelay:(void *)delay;
- (void)_presentViewControllerAsPopover:(void *)popover sourceView:;
- (void)_setPaletteViewVisible:(int)visible notify:(void *)notify didChangeHandler:;
- (void)_togglePresentViewControllerAsPopover:(void *)popover sourceView:;
- (void)_updatePalettePosition;
- (void)_updateToolPickerVisibilityWithCompletion:(uint64_t *)completion;
- (void)_updateUIWithSqueeze:(void *)squeeze customHoverPoint:(int)point animated:;
- (void)_updateUserInterfaceStyle;
- (void)imageWandOnboardingControllerDidHideView:(id)view;
- (void)keyWindowDidChangeBounds;
- (void)pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze;
- (void)pencilInteraction:(id)interaction didReceiveTap:(id)tap;
- (void)pencilSettingsDidChange;
- (void)performSqueezeAction;
- (void)setMiniPaletteVisible:(double)visible hoverLocation:(double)location;
- (void)textEffectsWindowDidChangeBounds;
- (void)updateUserInterfaceStyle;
@end

@implementation PKPencilSqueezeController

- (uint64_t)initWithContainerView:(void *)view rootViewController:(void *)controller textEffectsWindowObserver:
{
  v83[4] = *MEMORY[0x1E69E9840];
  obj = a2;
  viewCopy = view;
  controllerCopy = controller;
  if (self)
  {
    v81.receiver = self;
    v81.super_class = PKPencilSqueezeController;
    v7 = objc_msgSendSuper2(&v81, sel_init);
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 1, obj);
      objc_storeWeak((v8 + 232), viewCopy);
      objc_storeStrong((v8 + 240), controller);
      *(v8 + 216) = 0;
      *(v8 + 144) = PKSqueezePaletteViewHideDelay;
      *(v8 + 24) = PKSqueezePaletteViewSize();
      *(v8 + 32) = v9;
      v10 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      v11 = *(v8 + 64);
      *(v8 + 64) = v10;

      WeakRetained = objc_loadWeakRetained((v8 + 8));
      [WeakRetained addLayoutGuide:*(v8 + 64)];

      widthAnchor = [*(v8 + 64) widthAnchor];
      v14 = [widthAnchor constraintEqualToConstant:0.0];
      v15 = *(v8 + 72);
      *(v8 + 72) = v14;

      heightAnchor = [*(v8 + 64) heightAnchor];
      v17 = [heightAnchor constraintEqualToConstant:0.0];
      v18 = *(v8 + 80);
      *(v8 + 80) = v17;

      v71 = MEMORY[0x1E696ACD8];
      v19 = *(v8 + 80);
      v83[0] = *(v8 + 72);
      v83[1] = v19;
      topAnchor = [*(v8 + 64) topAnchor];
      v21 = objc_loadWeakRetained((v8 + 8));
      topAnchor2 = [v21 topAnchor];
      v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v83[2] = v23;
      leadingAnchor = [*(v8 + 64) leadingAnchor];
      v25 = objc_loadWeakRetained((v8 + 8));
      leadingAnchor2 = [v25 leadingAnchor];
      v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v83[3] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
      [v71 activateConstraints:v28];

      v29 = +[PKPencilInteraction fallbackPencilInteraction];
      v30 = *(v8 + 128);
      *(v8 + 128) = v29;

      [*(v8 + 128) setDelegate:v8];
      v31 = objc_loadWeakRetained((v8 + 8));
      [v31 addInteraction:*(v8 + 128)];

      v32 = *(v8 + 128);
      _onlyShowUndoOrRedo = [(PKPencilSqueezeController *)v8 _onlyShowUndoOrRedo];
      if (v32)
      {
        *(v32 + 136) = !_onlyShowUndoOrRedo;
      }

      v34 = objc_alloc_init(PKPencilSqueezeContainerViewOverlay);
      v35 = *(v8 + 120);
      *(v8 + 120) = v34;

      [*(v8 + 120) setTranslatesAutoresizingMaskIntoConstraints:0];
      v36 = objc_loadWeakRetained((v8 + 8));
      [v36 addSubview:*(v8 + 120)];

      v63 = MEMORY[0x1E696ACD8];
      topAnchor3 = [*(v8 + 120) topAnchor];
      v72 = objc_loadWeakRetained((v8 + 8));
      topAnchor4 = [v72 topAnchor];
      v68 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v82[0] = v68;
      leadingAnchor3 = [*(v8 + 120) leadingAnchor];
      v67 = objc_loadWeakRetained((v8 + 8));
      leadingAnchor4 = [v67 leadingAnchor];
      v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v82[1] = v64;
      bottomAnchor = [*(v8 + 120) bottomAnchor];
      v38 = objc_loadWeakRetained((v8 + 8));
      bottomAnchor2 = [v38 bottomAnchor];
      v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v82[2] = v40;
      trailingAnchor = [*(v8 + 120) trailingAnchor];
      v42 = objc_loadWeakRetained((v8 + 8));
      trailingAnchor2 = [v42 trailingAnchor];
      v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v82[3] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
      [v63 activateConstraints:v45];

      v46 = objc_alloc_init(MEMORY[0x1E69DCAA0]);
      v47 = *(v8 + 56);
      *(v8 + 56) = v46;

      v48 = objc_loadWeakRetained((v8 + 8));
      [v48 addGestureRecognizer:*(v8 + 56)];

      objc_initWeak(&location, v8);
      v49 = +[PKHoverSettings sharedSettings];
      v50 = *(v8 + 96);
      *(v8 + 96) = v49;

      v51 = [PKUIPencilInteractionObserver alloc];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke;
      v78[3] = &unk_1E82D69B8;
      objc_copyWeak(&v79, &location);
      v52 = [(PKUIPencilInteractionObserver *)v51 initWithPrefersPencilOnlyDrawsDidChangeHandler:v78];
      v53 = *(v8 + 104);
      *(v8 + 104) = v52;

      v54 = [PKAutoRefineSettingsObserver alloc];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_3;
      v76[3] = &unk_1E82D7618;
      objc_copyWeak(&v77, &location);
      v55 = [(PKAutoRefineSettingsObserver *)v54 initWithHandler:v76];
      v56 = *(v8 + 112);
      *(v8 + 112) = v55;

      v57 = [[PKPencilSqueezeAnalyticsController alloc] initWithDelegate:v8];
      v58 = *(v8 + 248);
      *(v8 + 248) = v57;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__handleKeyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];
      [defaultCenter addObserver:v8 selector:sel__handleKeyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];
      [defaultCenter addObserver:v8 selector:sel__handleSceneWillEnterForegroundNotification_ name:*MEMORY[0x1E69DE360] object:0];
      [defaultCenter addObserver:v8 selector:sel__handleSceneDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DE348] object:0];
      [defaultCenter addObserver:v8 selector:sel__handleHandwritingEducationPaneSettingsDidChange_ name:@"PKHandwritingEducationPaneSettingsDidChangeNotification" object:0];
      v60 = objc_alloc_init(PKPencilSqueezeUserDefaults);
      v61 = *(v8 + 192);
      *(v8 + 192) = v60;

      [(PKPencilSqueezeController *)v8 _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
      objc_destroyWeak(&v77);
      objc_destroyWeak(&v79);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_onlyShowUndoOrRedo
{
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
  _tools = [_toolPickerForKeyWindow _tools];
  v3 = [_tools count];

  return v3 == 0;
}

void __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_2;
  v1[3] = &unk_1E82D69B8;
  objc_copyWeak(&v2, (a1 + 32));
  PKPerformOnMainThread(v1);
  objc_destroyWeak(&v2);
}

void __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (WeakRetained[27])
    {
      [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)WeakRetained[11] pencilInteractionSettingsDidChange];
    }

    else
    {
      v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v4 + 216);
        *buf = 67109120;
        v6 = v3;
        _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Ignore pencil interaction settings did change, paletteViewVisible: %{BOOL}d", buf, 8u);
      }
    }

    WeakRetained = v4;
  }
}

void __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_4;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __96__PKPencilSqueezeController_initWithContainerView_rootViewController_textEffectsWindowObserver___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (WeakRetained[27])
    {
      [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)WeakRetained[11] autoRefineSettingsDidChange];
    }

    else
    {
      v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v4 + 216);
        *buf = 67109120;
        v6 = v3;
        _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Ignore AutoRefine settings did change, paletteViewVisible: %{BOOL}d", buf, 8u);
      }
    }

    WeakRetained = v4;
  }
}

- (id)_loggableNotificationDescription:(uint64_t)description
{
  if (description)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = a2;
    name = [v3 name];
    object = [v3 object];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    object2 = [v3 object];

    v9 = [v2 stringWithFormat:@"notificationName:%@ object:<%@:%p>", name, v7, object2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleSceneWillEnterForegroundNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKPencilSqueezeController *)self _loggableNotificationDescription:notificationCopy];
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Scene will enter foreground, notification: %{private}@", &v7, 0xCu);
  }
}

- (void)_handleSceneDidEnterBackgroundNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKPencilSqueezeController *)self _loggableNotificationDescription:notificationCopy];
    *buf = 138477827;
    v12 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Scene did enter background, notification: %{private}@", buf, 0xCu);
  }

  object = [notificationCopy object];
  _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
  windowScene = [_keyWindow windowScene];

  if (object == windowScene && self->_paletteViewVisible)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKPencilSqueezeController__handleSceneDidEnterBackgroundNotification___block_invoke;
    v10[3] = &unk_1E82D7148;
    v10[4] = self;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v10 didChangeHandler:?];
    [(PKPencilSqueezeController *)self _updateUIWithSqueeze:0 customHoverPoint:0 animated:?];
  }
}

- (uint64_t)_keyWindow
{
  if (self)
  {
    self = [(PKTextEffectsWindowObserver *)self[30] keyWindow];
    v1 = vars8;
  }

  return self;
}

- (void)_setPaletteViewVisible:(int)visible notify:(void *)notify didChangeHandler:
{
  v39 = *MEMORY[0x1E69E9840];
  notifyCopy = notify;
  if (!self)
  {
    goto LABEL_26;
  }

  v8 = *(self + 216);
  if (v8 == a2)
  {
    goto LABEL_26;
  }

  if ((v8 & 1) != 0 || !a2)
  {
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained((self + 224));
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && (v11 = objc_loadWeakRetained((self + 224)), v12 = [v11 pencilSqueezeControllerCanShowPaletteView:self], v11, (v12 & 1) == 0))
  {
    v28 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEFAULT, "Delegate doesn't want to show palette view", &v31, 2u);
    }
  }

  else
  {
    _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
    _currentUndoManager = [(PKPencilSqueezeController *)self _currentUndoManager];
    _tools = [_toolPickerForKeyWindow _tools];
    if ([_tools count] || objc_msgSend(_currentUndoManager, "canUndo"))
    {

LABEL_10:
LABEL_11:
      if (visible)
      {
        v16 = objc_loadWeakRetained((self + 224));
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 67109120;
            LODWORD(v32) = a2;
            _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Notify palette view visibility will change, toVisible: %{BOOL}d", &v31, 8u);
          }

          v19 = objc_loadWeakRetained((self + 224));
          [v19 pencilSqueezeControllerWillChangePaletteViewVisibility:self toVisible:a2];
        }

        *(self + 216) = a2;
        v20 = *(self + 128);
        _onlyShowUndoOrRedo = [(PKPencilSqueezeController *)self _onlyShowUndoOrRedo];
        if (v20)
        {
          *(v20 + 136) = !_onlyShowUndoOrRedo;
        }

        v22 = objc_loadWeakRetained((self + 224));
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          v24 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 67109120;
            LODWORD(v32) = a2;
            _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Notify palette view visibility did change, toVisible: %{BOOL}d", &v31, 8u);
          }

          v25 = objc_loadWeakRetained((self + 224));
          [v25 pencilSqueezeControllerDidChangePaletteViewVisibility:self];
        }
      }

      else
      {
        *(self + 216) = a2;
        v26 = *(self + 128);
        _onlyShowUndoOrRedo2 = [(PKPencilSqueezeController *)self _onlyShowUndoOrRedo];
        if (v26)
        {
          *(v26 + 136) = !_onlyShowUndoOrRedo2;
        }
      }

      if (notifyCopy)
      {
        notifyCopy[2](notifyCopy);
      }

      goto LABEL_26;
    }

    canRedo = [_currentUndoManager canRedo];

    if (canRedo)
    {
      goto LABEL_10;
    }

    v30 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 134218752;
      v32 = _toolPickerForKeyWindow;
      v33 = 2048;
      v34 = _currentUndoManager;
      v35 = 1024;
      canUndo = [_currentUndoManager canUndo];
      v37 = 1024;
      canRedo2 = [_currentUndoManager canRedo];
      _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "Unable to toggle palette view to visible, toolPicker: %p, undoManager: %p, canUndo: %{BOOL}d, canRedo: %{BOOL}d", &v31, 0x22u);
    }
  }

LABEL_26:
}

- (void)_updateUIWithSqueeze:(void *)squeeze customHoverPoint:(int)point animated:
{
  v143[5] = *MEMORY[0x1E69E9840];
  v117 = a2;
  squeezeCopy = squeeze;
  if (!self)
  {
    goto LABEL_86;
  }

  v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(self + 216);
    hoverPose = [v117 hoverPose];
    _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
    _keyWindow2 = [(PKPencilSqueezeController *)self _keyWindow];
    windowScene = [_keyWindow2 windowScene];
    *buf = 67110403;
    *v136 = v9;
    *&v136[4] = 2048;
    *&v136[6] = v117;
    *&v136[14] = 2113;
    *&v136[16] = hoverPose;
    v137 = 2048;
    v138 = squeezeCopy;
    v139 = 2113;
    v140 = _keyWindow;
    v141 = 2113;
    v142 = windowScene;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Update UI, visible: %{BOOL}d, squeeze: %p, hover pose: %{private}@ custom hover point: %p, window: %{private}@, scene: %{private}@", buf, 0x3Au);
  }

  v12 = *(self + 16);
  if (*(self + 216) != 1)
  {
    if (v12)
    {
      v20 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, "Hide mini palette", buf, 2u);
      }

      [(PKPencilSqueezeController *)self _dismissPopovers];
      [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)*(self + 88) dismissEyeDropper];
    }

LABEL_63:
    objc_initWeak(buf, self);
    [*(self + 120) setHidden:*(self + 216) == 0];
    v87 = *(self + 216);
    if (v87 == 1)
    {
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_53;
      v127[3] = &unk_1E82D8A28;
      _keyWindow = &v128;
      objc_copyWeak(&v128, buf);
      v88 = v127;
    }

    else
    {
      v88 = 0;
    }

    v89 = *(self + 120);
    if (v89)
    {
      objc_setProperty_nonatomic_copy(v89, v86, v88, 416);
    }

    v90 = *(self + 216);
    if (v90 == 1)
    {
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_2;
      v125[3] = &unk_1E82D7970;
      _keyWindow2 = &v126;
      objc_copyWeak(&v126, buf);
      v91 = v125;
    }

    else
    {
      v91 = 0;
    }

    v92 = *(self + 120);
    if (v92)
    {
      objc_setProperty_nonatomic_copy(v92, v86, v91, 408);
    }

    v93 = *(self + 216);
    if (*(self + 216))
    {
      v94 = 1.0;
    }

    else
    {
      v94 = 0.05;
    }

    v95 = *(self + 152);
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_3;
    v123[3] = &unk_1E82D69B8;
    objc_copyWeak(&v124, buf);
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_4;
    v121[3] = &unk_1E82D8A50;
    objc_copyWeak(&v122, buf);
    [(PKSqueezePaletteViewPresentationHandle *)v95 animateToPaletteViewOpacity:point paletteViewScale:v123 animated:v121 presentationValueHandler:v93 completion:v94];
    if (*(self + 216) == 1)
    {
      _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
      _windowScene = [_toolPickerForKeyWindow _windowScene];
      if (_windowScene)
      {
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_5;
        v118[3] = &unk_1E82D7690;
        objc_copyWeak(&v120, buf);
        v119 = _windowScene;
        [(PKPencilSqueezeController *)self _updateToolPickerVisibilityWithCompletion:v118];

        objc_destroyWeak(&v120);
      }
    }

    else
    {
      [(PKPencilSqueezeController *)self _updateToolPickerVisibilityWithCompletion:?];
    }

    objc_destroyWeak(&v122);
    objc_destroyWeak(&v124);
    if (v90)
    {
      objc_destroyWeak(_keyWindow2);
    }

    if (v87)
    {
      objc_destroyWeak(_keyWindow);
    }

    objc_destroyWeak(buf);
    goto LABEL_86;
  }

  [v12 removeFromSuperview];
  v13 = *(self + 16);
  *(self + 16) = 0;

  _toolPickerForKeyWindow2 = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
  _currentUndoManager = [(PKPencilSqueezeController *)self _currentUndoManager];
  v14 = MEMORY[0x1E69DD250];
  _keyWindow3 = [(PKPencilSqueezeController *)self _keyWindow];
  LODWORD(v14) = [v14 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(_keyWindow3, "semanticContentAttribute")}] == 0;

  v112 = objc_alloc_init(PKSqueezePaletteViewLayoutFactory);
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke;
  v129[3] = &unk_1E82D8A00;
  v129[4] = self;
  v115 = [(PKSqueezePaletteViewLayoutFactory *)v112 makeInitialLayoutWithToolPicker:_toolPickerForKeyWindow2 undoManager:_currentUndoManager paletteViewStartAngleProvider:v129 isLTR:v14];
  if (v115)
  {
    v108 = objc_alloc_init(PKPaletteBackgroundViewFactory);
    v106 = objc_alloc_init(PKPaletteBackgroundColorFactory);
    makeBackgroundColor = [(PKPaletteBackgroundColorFactory *)v106 makeBackgroundColor];
    v109 = [(PKPaletteBackgroundViewFactory *)v108 makeBackgroundViewWithName:makeBackgroundColor backgroundColor:0 shouldUseGlassBackground:?];
    if (v109)
    {
      [v109 setUserInteractionEnabled:0];
    }

    v107 = v117;
    hoverPose2 = [v107 hoverPose];
    v17 = hoverPose2 == 0;

    if (v17)
    {
      v23 = *(self + 56);
      WeakRetained = objc_loadWeakRetained((self + 8));
      [v23 azimuthAngleInView:WeakRetained];
    }

    else
    {
      WeakRetained = [v107 hoverPose];
      [WeakRetained azimuthAngle];
    }

    v24 = v19;

    *(self + 184) = v24;
    v25 = [PKSqueezePaletteView alloc];
    v26 = [(PKSqueezePaletteView *)&v25->super.super.super.isa initWithBackgroundView:v109 radius:v112 contentHeight:*&PKSqueezePaletteViewRadius layoutFactory:*&PKSqueezePaletteViewContentHeight azimuth:*(self + 184)];
    v27 = *(self + 16);
    *(self + 16) = v26;

    v28 = [[PKPencilSqueezeControllerPaletteViewDelegateProxy alloc] initWithController:self paletteView:*(self + 16)];
    v29 = *(self + 88);
    *(self + 88) = v28;

    [(PKSqueezePaletteView *)*(self + 16) setDelegate:?];
    [*(self + 16) setTintAdjustmentMode:1];
    _toolPickerForKeyWindow3 = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
    if (_toolPickerForKeyWindow3)
    {
      v30 = objc_alloc_init(PKSqueezePaletteViewContext);
      _tools = [_toolPickerForKeyWindow3 _tools];
      if (v30)
      {
        objc_setProperty_nonatomic_copy(v30, v31, _tools, 16);
      }

      selectedTool = [_toolPickerForKeyWindow3 selectedTool];
      [(PKMathResultAttribution *)v30 setString:selectedTool];

      selectedTool2 = [_toolPickerForKeyWindow3 selectedTool];
      v35 = PKDisplayColorForTool(selectedTool2);
      [(PKSqueezePaletteViewContext *)v30 setSelectedColor:v35];

      v104 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      v103 = [PKSwatchColor swatchColor:v104 identifier:@"black"];
      v143[0] = v103;
      v102 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
      v36 = [PKSwatchColor swatchColor:v102 identifier:@"blue"];
      v143[1] = v36;
      v37 = [MEMORY[0x1E69DC888] colorWithRed:0.325490196 green:0.843137255 blue:0.411764706 alpha:1.0];
      v38 = [PKSwatchColor swatchColor:v37 identifier:@"green"];
      v143[2] = v38;
      v39 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.815686275 blue:0.188235294 alpha:1.0];
      v40 = [PKSwatchColor swatchColor:v39 identifier:@"yellow"];
      v143[3] = v40;
      v41 = [MEMORY[0x1E69DC888] colorWithRed:0.988235294 green:0.192156863 blue:0.258823529 alpha:1.0];
      v42 = [PKSwatchColor swatchColor:v41 identifier:@"red"];
      v143[4] = v42;
      v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:5];

      v43 = MEMORY[0x1E695DEC8];
      reverseObjectEnumerator = [v101 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v46 = [v43 arrayWithArray:allObjects];

      if (v30)
      {
        objc_setProperty_nonatomic_copy(v30, v47, v46, 32);
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v50 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

      if (v50)
      {
        v51 = 1;
      }

      else
      {
        _currentFirstResponder = [(PKPencilSqueezeController *)self _currentFirstResponder];
        if (objc_opt_respondsToSelector())
        {
          v51 = [_currentFirstResponder _supportsCanvasElements:_toolPickerForKeyWindow3];
        }

        else
        {
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          _observers = [_toolPickerForKeyWindow3 _observers];
          v54 = [_observers countByEnumeratingWithState:&v130 objects:buf count:16];
          if (v54)
          {
            v55 = *v131;
            while (2)
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v131 != v55)
                {
                  objc_enumerationMutation(_observers);
                }

                v57 = *(*(&v130 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  v51 = [v57 _supportsCanvasElements:_toolPickerForKeyWindow3];
                  goto LABEL_37;
                }
              }

              v54 = [_observers countByEnumeratingWithState:&v130 objects:buf count:16];
              if (v54)
              {
                continue;
              }

              break;
            }
          }

          v51 = 0;
LABEL_37:
        }
      }

      if (v30)
      {
        v30->_supportsCanvasElements = v51;
        [_toolPickerForKeyWindow3 colorMaximumLinearExposure];
        v30->_colorMaximumLinearExposure = v58;
      }

      else
      {
        [_toolPickerForKeyWindow3 colorMaximumLinearExposure];
      }
    }

    else
    {
      v30 = 0;
    }

    v60 = *(self + 16);
    if (v60)
    {
      objc_setProperty_nonatomic_copy(v60, v59, v30, 576);
    }

    [(PKSqueezePaletteView *)*(self + 16) setCurrentLayout:v115];
    [(PKPencilSqueezeController *)self _updateUserInterfaceStyle];
    [*(self + 16) setTranslatesAutoresizingMaskIntoConstraints:0];
    v61 = objc_loadWeakRetained((self + 8));
    [v61 addSubview:*(self + 16)];

    v62 = v107;
    v63 = v62;
    if (v62)
    {
      hoverPose3 = [v62 hoverPose];
      v65 = hoverPose3 != 0;
    }

    else
    {
      v65 = [*(self + 56) state] == 1 || objc_msgSend(*(self + 56), "state") == 2;
    }

    *(self + 160) = v65;
    v66 = v63;
    hoverPose4 = [v66 hoverPose];
    v68 = hoverPose4 == 0;

    if (v68)
    {
      v72 = *(self + 56);
      hoverPose5 = objc_loadWeakRetained((self + 8));
      [v72 locationInView:hoverPose5];
    }

    else
    {
      hoverPose5 = [v66 hoverPose];
      [hoverPose5 location];
    }

    v73 = v70;
    v74 = v71;

    *(self + 168) = v73;
    *(self + 176) = v74;
    if (*(self + 160) == 1)
    {
      [(PKPencilSqueezeUserDefaults *)*(self + 192) saveLastPaletteHoverLocation:v73, v74];
      *(self + 200) = CACurrentMediaTime();
    }

    if (squeezeCopy)
    {
      [squeezeCopy CGPointValue];
      [(PKPencilSqueezeController *)self _updatePalettePositionWithHoverLocation:v75, v76];
    }

    else
    {
      [(PKPencilSqueezeController *)self _updatePalettePosition];
    }

    _keyWindow = MEMORY[0x1E696ACD8];
    widthAnchor = [*(self + 16) widthAnchor];
    v78 = [widthAnchor constraintEqualToConstant:*(self + 24)];
    v134[0] = v78;
    _keyWindow2 = [*(self + 16) heightAnchor];
    v79 = [_keyWindow2 constraintEqualToConstant:*(self + 32)];
    v134[1] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
    [_keyWindow activateConstraints:v80];

    v81 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      _keyWindow = *(self + 160);
      v82 = NSStringFromCGPoint(*(self + 168));
      v83 = *(self + 184);
      *buf = 67110147;
      *v136 = _keyWindow;
      *&v136[4] = 2113;
      *&v136[6] = v82;
      *&v136[14] = 2049;
      *&v136[16] = v83;
      v137 = 2113;
      v138 = _toolPickerForKeyWindow2;
      v139 = 2113;
      v140 = _currentUndoManager;
      _os_log_impl(&dword_1C7CCA000, v81, OS_LOG_TYPE_DEFAULT, "Show mini palette, hovering: %{BOOL}d, location: %{private}@, azimuth: %{private}.2f, toolPicker: %{private}@, undoManager: %{private}@", buf, 0x30u);
    }

    if (!*(self + 152))
    {
      v84 = [[PKSqueezePaletteViewPresentationHandle alloc] initWithPaletteViewOpacityPresentationValue:0.05 paletteViewScalePresentationValue:?];
      v85 = *(self + 152);
      *(self + 152) = v84;
    }

    [(PKPencilSqueezeController *)self _updatePaletteViewPresentationState];

    v22 = v106;
  }

  else
  {
    v21 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v98 = v21;
      canUndo = [_currentUndoManager canUndo];
      canRedo = [_currentUndoManager canRedo];
      *buf = 138478595;
      *v136 = _toolPickerForKeyWindow2;
      *&v136[8] = 2113;
      *&v136[10] = _currentUndoManager;
      *&v136[18] = 1024;
      *&v136[20] = canUndo;
      v137 = 1024;
      LODWORD(v138) = canRedo;
      _os_log_error_impl(&dword_1C7CCA000, v98, OS_LOG_TYPE_ERROR, "Unable to display mini palette, toolPicker: %{private}@, undoManager: %{private}@, canUndo: %{BOOL}d, canRedo: %{BOOL}d", buf, 0x22u);
      v22 = v98;
      v108 = v98;
    }

    else
    {
      v108 = v21;
      v22 = v21;
    }
  }

  if (v115)
  {
    goto LABEL_63;
  }

LABEL_86:
}

- (void)_handleKeyboardWillShowNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  isColorPicker = [(PKPencilSqueezeController *)self _isColorPickerVisible];
  v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PKPencilSqueezeController *)self _loggableNotificationDescription:notificationCopy];
    paletteViewVisible = self->_paletteViewVisible;
    *buf = 138478339;
    v12 = v7;
    v13 = 1024;
    v14 = paletteViewVisible;
    v15 = 1024;
    _isColorPickerVisible = [(PKPencilSqueezeController *)self _isColorPickerVisible];
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard will show, notification: %{private}@, _paletteViewVisible: %{BOOL}d, colorPickerVisible: %{BOOL}d", buf, 0x18u);
  }

  if (!self->_paletteViewVisible | isColorPicker & 1)
  {
    if (isColorPicker)
    {
      v9 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "skip dismissing squeeze palette due to kb will show, color picker visible", buf, 2u);
      }
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKPencilSqueezeController__handleKeyboardWillShowNotification___block_invoke;
    v10[3] = &unk_1E82D7148;
    v10[4] = self;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v10 didChangeHandler:?];
    [(PKPencilSqueezeController *)self _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
  }
}

- (uint64_t)_isColorPickerVisible
{
  selfCopy = self;
  if (self)
  {
    if (*(self + 216) == 1)
    {
      v2 = *(self + 16);
      if (v2)
      {
        v2 = v2[71];
      }

      v3 = v2;
      if (PKSqueezePaletteViewLayoutIsUndoRedoLayout(v3))
      {
        selfCopy = 0;
      }

      else
      {
        selfCopy = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)*(selfCopy + 88) isColorPickerVisible];
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)_handleKeyboardWillHideNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  isColorPicker = [(PKPencilSqueezeController *)self _isColorPickerVisible];
  v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PKPencilSqueezeController *)self _loggableNotificationDescription:notificationCopy];
    *buf = 138478083;
    v11 = v7;
    v12 = 1024;
    v13 = isColorPicker;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard will hide, notification: %{private}@, colorPickerVisible: %{BOOL}d", buf, 0x12u);
  }

  if (!self->_paletteViewVisible | isColorPicker & 1)
  {
    if (isColorPicker)
    {
      v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "skip dismissing squeeze palette due to kb will hide, color picker visible", buf, 2u);
      }
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PKPencilSqueezeController__handleKeyboardWillHideNotification___block_invoke;
    v9[3] = &unk_1E82D7148;
    v9[4] = self;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v9 didChangeHandler:?];
    [(PKPencilSqueezeController *)self _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
  }
}

- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)change
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_paletteViewVisible)
  {
    paletteViewDelegateProxy = self->_paletteViewDelegateProxy;

    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&paletteViewDelegateProxy->super.isa handwritingEducationPaneSettingsDidChange];
  }

  else
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      paletteViewVisible = self->_paletteViewVisible;
      v7[0] = 67109120;
      v7[1] = paletteViewVisible;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Ignore handwriting education pane settings did change, paletteViewVisible: %{BOOL}d", v7, 8u);
    }
  }
}

- (void)keyWindowDidChangeBounds
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
      [_keyWindow bounds];
      v4 = NSStringFromCGRect(v11);
      v5 = *(self + 216);
      v6 = 138478083;
      v7 = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Key window bounds did change to: %{private}@, paletteVisible: %{BOOL}d", &v6, 0x12u);
    }

    [(PKPencilSqueezeController *)self _updatePalettePosition];
  }
}

- (void)_updatePalettePosition
{
  _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
  [_keyWindow bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4 + -40.0;
  v8 = v6 + -50.0;
  if (CACurrentMediaTime() - *(self + 200) >= *&PKSqueezePaletteViewLastHoverLocationSavedTimeout)
  {
    loadLastPaletteHoverLocation = 0;
  }

  else
  {
    loadLastPaletteHoverLocation = [(PKPencilSqueezeUserDefaults *)*(self + 192) loadLastPaletteHoverLocation];
  }

  v15.origin.x = 20.0;
  v15.origin.y = 30.0;
  v15.size.width = v4 + -40.0;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = 20.0;
  v16.origin.y = 30.0;
  v16.size.width = v7;
  v16.size.height = v8;
  MidY = CGRectGetMidY(v16);
  if (loadLastPaletteHoverLocation)
  {
    [loadLastPaletteHoverLocation CGPointValue];
    MidX = v12;
  }

  else
  {
    v11 = MidY;
  }

  if (*(self + 160) == 1)
  {
    MidX = *(self + 168);
    v11 = *(self + 176);
  }

  [(PKPencilSqueezeController *)self _updatePalettePositionWithHoverLocation:v11];
}

- (void)textEffectsWindowDidChangeBounds
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 240);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 56));
      }

      else
      {
        WeakRetained = 0;
      }

      [WeakRetained bounds];
      v5 = NSStringFromCGRect(v12);
      v6 = *(self + 216);
      v7 = 138478083;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "UITEW bounds did change to: %{private}@, paletteVisible: %{BOOL}d", &v7, 0x12u);
    }

    [(PKPencilSqueezeController *)self _updatePalettePosition];
  }
}

- (void)updateUserInterfaceStyle
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Update UI style", v3, 2u);
    }

    [(PKPencilSqueezeController *)self _updateUserInterfaceStyle];
  }
}

- (void)_updateUserInterfaceStyle
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(self + 216))
  {
    _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
    _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
    traitCollection = [_keyWindow traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (_toolPickerForKeyWindow)
    {
      if ([_toolPickerForKeyWindow overrideUserInterfaceStyle])
      {
        userInterfaceStyle = [_toolPickerForKeyWindow overrideUserInterfaceStyle];
      }

      v7 = *(self + 16);
      v6 = (self + 16);
      [v7 setOverrideUserInterfaceStyle:userInterfaceStyle];
      colorUserInterfaceStyle = [_toolPickerForKeyWindow colorUserInterfaceStyle];
    }

    else
    {
      v9 = *(self + 16);
      v6 = (self + 16);
      [v9 setOverrideUserInterfaceStyle:userInterfaceStyle];
      colorUserInterfaceStyle = 0;
    }

    [(PKSqueezePaletteView *)*v6 setColorUserInterfaceStyle:colorUserInterfaceStyle];
    v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v6;
      if (*v6)
      {
        v11 = *(v11 + 584);
      }

      v12 = 134283777;
      v13 = userInterfaceStyle;
      v14 = 2049;
      v15 = v11;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Update palette UI style: %{private}ld, color UI style: %{private}ld", &v12, 0x16u);
    }
  }
}

- (void)performSqueezeAction
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Perform squeeze action", buf, 2u);
    }

    v3 = *(self + 216);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__PKPencilSqueezeController_performSqueezeAction__block_invoke;
    v4[3] = &unk_1E82D7148;
    v4[4] = self;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v4 didChangeHandler:?];
  }
}

void __49__PKPencilSqueezeController_performSqueezeAction__block_invoke(uint64_t a1)
{
  [(PKPencilSqueezeController *)*(a1 + 32) _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  if (v3 == 1)
  {
    [(PKPencilSqueezeController *)v2 _didChangePaletteViewToVisible];
    v2 = *(a1 + 32);
    v3 = *(v2 + 216);
  }

  if (!v3)
  {
    v4 = *(v2 + 248);

    [(PKPencilSqueezeAnalyticsController *)v4 didHideMiniPaletteBySqueezingAgain];
  }
}

- (void)_didChangePaletteViewToVisible
{
  if (self)
  {
    v2 = *(self + 16);
    if (v2)
    {
      v3 = *(v2 + 568);
      IsUndoRedoLayout = PKSqueezePaletteViewLayoutIsUndoRedoLayout(v3);

      v5 = *(self + 248);

      [(PKPencilSqueezeAnalyticsController *)v5 didShowMiniPaletteIsUndoRedoPalette:?];
    }

    else
    {
      v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v7 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_FAULT, "Palette view shouldn't be nil when calling this method.", v7, 2u);
      }
    }
  }
}

- (void)pencilSettingsDidChange
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Pencil settings did change", buf, 2u);
    }

    if (*(self + 216) == 1 && [MEMORY[0x1E69DCD58] preferredSqueezeAction] != 5)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __52__PKPencilSqueezeController_pencilSettingsDidChange__block_invoke;
      v3[3] = &unk_1E82D7148;
      v3[4] = self;
      [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v3 didChangeHandler:?];
      [(PKPencilSqueezeController *)self _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
    }
  }
}

- (uint64_t)_toolPickerForKeyWindow
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
    [PKToolPicker _toolPickersForWindow:_keyWindow includeHidden:1];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 _isEnabled])
          {
            selfCopy = v8;
            v10 = v3;
            goto LABEL_14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = [PKToolPicker _existingToolPickerForWindow:_keyWindow];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      _currentFirstResponder = [(PKPencilSqueezeController *)selfCopy _currentFirstResponder];
      [PKToolPicker _cycleToolPickersForResponder:_currentFirstResponder];
      v10 = [PKToolPicker _existingToolPickerForWindow:_keyWindow];
    }

    selfCopy = v10;
LABEL_14:
  }

  return selfCopy;
}

- (id)_currentUndoManager
{
  if (self)
  {
    _currentFirstResponder = [(PKPencilSqueezeController *)self _currentFirstResponder];
    undoManager = [_currentFirstResponder undoManager];
  }

  else
  {
    undoManager = 0;
  }

  return undoManager;
}

- (void)setMiniPaletteVisible:(double)visible hoverLocation:(double)location
{
  if (self)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__PKPencilSqueezeController_setMiniPaletteVisible_hoverLocation___block_invoke;
    v4[3] = &unk_1E82D89D8;
    v4[4] = self;
    v5 = a2;
    *&v4[5] = visible;
    *&v4[6] = location;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:a2 notify:1 didChangeHandler:v4];
  }
}

void __65__PKPencilSqueezeController_setMiniPaletteVisible_hoverLocation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 216) & 1) == 0)
  {
    [(PKPencilSqueezeAnalyticsController *)*(v2 + 248) didHideMiniPaletteByTappingOutsideOnScreen];
    v2 = *(a1 + 32);
  }

  if (*(a1 + 56) == 1)
  {
    v3 = [MEMORY[0x1E696B098] valueWithCGPoint:{*(a1 + 40), *(a1 + 48)}];
    [(PKPencilSqueezeController *)v2 _updateUIWithSqueeze:v3 customHoverPoint:1 animated:?];

    v4 = *(a1 + 32);

    [(PKPencilSqueezeController *)v4 _didChangePaletteViewToVisible];
  }

  else if (v2)
  {

    [(PKPencilSqueezeController *)v2 _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
  }
}

- (void)_hidePaletteViewAfterDelay:(void *)delay
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Hide palette view after delay: %.2f", buf, 0xCu);
  }

  objc_initWeak(buf, delay);
  v5 = dispatch_time(0, (a2 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPencilSqueezeController__hidePaletteViewAfterDelay___block_invoke;
  block[3] = &unk_1E82D69B8;
  objc_copyWeak(&v7, buf);
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __56__PKPencilSqueezeController__hidePaletteViewAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKPencilSqueezeController *)WeakRetained setMiniPaletteVisible:*MEMORY[0x1E695EFF8] hoverLocation:*(MEMORY[0x1E695EFF8] + 8)];
}

- (id)hitTest:(void *)test fromView:(double)view withEvent:(double)event
{
  v9 = a2;
  testCopy = test;
  if (self)
  {
    window = [*(self + 16) window];
    window2 = [v9 window];
    [window convertPoint:window2 fromWindow:{view, event}];
    v14 = v13;
    v16 = v15;

    [*(self + 16) convertPoint:0 fromView:{v14, v16}];
    v17 = [*(self + 16) hitTest:testCopy withEvent:?];
    if (!v17)
    {
      WeakRetained = objc_loadWeakRetained((self + 232));
      presentedViewController = [WeakRetained presentedViewController];

      view = [presentedViewController view];
      [v9 convertPoint:view toView:{view, event}];
      v22 = v21;
      v24 = v23;

      view2 = [presentedViewController view];
      v17 = [view2 hitTest:testCopy withEvent:{v22, v24}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_dismissPopovers
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 29);
    presentedViewController = [WeakRetained presentedViewController];

    if (presentedViewController && ([presentedViewController isBeingDismissed] & 1) == 0)
    {
      v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v9 = presentedViewController;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Dismiss presented view controller: %{private}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __45__PKPencilSqueezeController__dismissPopovers__block_invoke;
      v5[3] = &unk_1E82D7690;
      objc_copyWeak(&v7, buf);
      v6 = presentedViewController;
      [v6 dismissViewControllerAnimated:1 completion:v5];

      objc_destroyWeak(&v7);
      objc_destroyWeak(buf);
    }
  }
}

- (void)pencilInteraction:(id)interaction didReceiveTap:(id)tap
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults BOOLForKey:@"PKUsePencilDoubleTapAsSqueeze"];
  }

  else
  {
    v5 = 0;
  }

  v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Handle pencil interaction did tap, usePencilDoubleTapAsSqueeze: %{BOOL}d", v10, 8u);
  }

  paletteViewVisible = self->_paletteViewVisible;
  if (v5)
  {
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:0 didChangeHandler:?];
    [(PKPencilSqueezeController *)self _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
  }

  else if (paletteViewVisible)
  {
    [(PKPencilSqueezeController *)&self->super.isa _dismissPopovers];
    -[PKSqueezePaletteView pencilInteractionDidTap:](self->_paletteView, [MEMORY[0x1E69DCD58] preferredTapAction]);
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Pencil tap interaction ignored", v10, 2u);
    }
  }
}

- (void)pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze
{
  v52 = *MEMORY[0x1E69E9840];
  squeezeCopy = squeeze;
  preferredSqueezeAction = [MEMORY[0x1E69DCD58] preferredSqueezeAction];
  phase = [squeezeCopy phase];
  v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isHidingPaletteAfterDelay = self->_isHidingPaletteAfterDelay;
    *buf = 134284033;
    v42 = preferredSqueezeAction;
    v43 = 2049;
    *v44 = phase;
    *&v44[8] = 1024;
    *v45 = isHidingPaletteAfterDelay;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Handle pencil interaction did squeeze, preferredSqueezeAction: %{private}ld, phase: %{private}ld, isHidingPaletteAfterDelay: %{BOOL}d", buf, 0x1Cu);
  }

  if (self->_isHidingPaletteAfterDelay || preferredSqueezeAction != 5)
  {
    v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Pencil squeeze interaction ignored";
LABEL_13:
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (phase <= 1)
  {
    if (!phase)
    {
      v12 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        hoverPose = [squeezeCopy hoverPose];
        *buf = 138477827;
        v42 = hoverPose;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Pencil squeeze interaction phase began, hoverPose: %{private}@", buf, 0xCu);
      }

      paletteViewVisible = self->_paletteViewVisible;
      self->_paletteViewVisibleBeforeSqueezeBegan = paletteViewVisible;
      if (paletteViewVisible)
      {
        v15 = [(PKPencilSqueezeController *)&self->super.isa _hoverViewInPalette:squeezeCopy];
        self->_squeezeBeganOnPalette = v15 != 0;

        if (self->_paletteViewVisible)
        {
          goto LABEL_21;
        }
      }

      else
      {
        self->_squeezeBeganOnPalette = 0;
        if (paletteViewVisible)
        {
          goto LABEL_21;
        }
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke;
      v39[3] = &unk_1E82D6E70;
      v39[4] = self;
      v40 = squeezeCopy;
      [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v39 didChangeHandler:?];

      goto LABEL_21;
    }

    if (phase == 1)
    {
      v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        hoverPose2 = [squeezeCopy hoverPose];
        *buf = 138477827;
        v42 = hoverPose2;
        _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "Pencil squeeze interaction phase changed, hoverPose: %{private}@", buf, 0xCu);
      }

      goto LABEL_20;
    }

LABEL_18:
    v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Unhandled Pencil squeeze interaction phase", buf, 2u);
    }

    goto LABEL_20;
  }

  if (phase != 2)
  {
    if (phase != 3)
    {
      goto LABEL_18;
    }

    v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Pencil squeeze interaction phase cancelled";
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v16 = [(PKPencilSqueezeController *)&self->super.isa _hoverViewInPalette:squeezeCopy];
  animationProgress = [(PKSqueezePaletteViewPresentationHandle *)self->_paletteViewPresentationHandle animationProgress];
  v18 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    hoverPose3 = [squeezeCopy hoverPose];
    paletteViewVisibleBeforeSqueezeBegan = self->_paletteViewVisibleBeforeSqueezeBegan;
    squeezeBeganOnPalette = self->_squeezeBeganOnPalette;
    *buf = 138479363;
    v42 = hoverPose3;
    v43 = 1024;
    *v44 = paletteViewVisibleBeforeSqueezeBegan;
    *&v44[4] = 1024;
    *&v44[6] = squeezeBeganOnPalette;
    *v45 = 1024;
    *&v45[2] = v16 != 0;
    v46 = 2113;
    v47 = v16;
    v48 = 1024;
    v49 = animationProgress < 0.9;
    v50 = 2048;
    v51 = animationProgress;
    _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Pencil squeeze interaction phase ended, hoverState: %{private}@, paletteViewVisibleBeforeSqueezeBegan: %{BOOL}d, squeezeBeganOnPalette: %{BOOL}d, isHoverOnPalette: %{BOOL}d, hitView: %{private}@, isAnimating: %{BOOL}d, progress: %.f", buf, 0x38u);
  }

  if (animationProgress >= 0.9 && v16)
  {
    paletteView = self->_paletteView;
    if (paletteView)
    {
      paletteView = paletteView->_currentLayout;
    }

    v23 = paletteView;
    if (!self->_squeezeBeganOnPalette)
    {
      _pk_longSqueezeAction = [v16 _pk_longSqueezeAction];

      if (_pk_longSqueezeAction)
      {
        v25 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v42 = v16;
          _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Perform long squeeze action on view: %{private}@", buf, 0xCu);
        }

        _pk_longSqueezeAction2 = [v16 _pk_longSqueezeAction];
        _pk_longSqueezeAction2[2]();
      }
    }

    if (PKSqueezePaletteViewLayoutIsExpandedOptionsLayout(v23))
    {
      v27 = 1;
    }

    else
    {
      v28 = self->_paletteView;
      if (v28)
      {
        v28 = v28->_currentLayout;
      }

      v29 = v28;
      v27 = v23 != v29;
    }

    v30 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v42) = v27;
      _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "Keep palette visible: %{BOOL}d", buf, 8u);
    }

    if (!v27)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke_40;
      v38[3] = &unk_1E82D7148;
      v38[4] = self;
      [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v38 didChangeHandler:?];
      if (self->_squeezeBeganOnPalette)
      {
        [(PKPencilSqueezeController *)self _updateUIWithSqueeze:squeezeCopy customHoverPoint:0 animated:1];
      }

      else
      {
        v31 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_DEFAULT, "Hide palette after delay", buf, 2u);
        }

        self->_isHidingPaletteAfterDelay = 1;
        v32 = dispatch_time(0, (self->_hidePaletteDelay * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke_41;
        block[3] = &unk_1E82D6E70;
        block[4] = self;
        v37 = squeezeCopy;
        dispatch_after(v32, MEMORY[0x1E69E96A0], block);
      }
    }
  }

  else if (self->_paletteViewVisibleBeforeSqueezeBegan)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke_2;
    v34[3] = &unk_1E82D6E70;
    v34[4] = self;
    v35 = squeezeCopy;
    [(PKPencilSqueezeController *)self _setPaletteViewVisible:1 notify:v34 didChangeHandler:?];
  }

LABEL_21:
}

- (id)_hoverViewInPalette:(id *)palette
{
  v3 = a2;
  v4 = v3;
  if (palette)
  {
    if (palette[2] && ([v3 hoverPose], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      hoverPose = [v4 hoverPose];
      [hoverPose location];
      v8 = v7;
      v10 = v9;

      v11 = palette[2];
      view = [palette[16] view];
      [v11 convertPoint:view fromView:{v8, v10}];
      v14 = v13;
      v16 = v15;

      palette = [palette[2] hitTest:0 withEvent:{v14, v16}];
    }

    else
    {
      palette = 0;
    }
  }

  return palette;
}

void __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(PKPencilSqueezeController *)v2 _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
    v2 = *(a1 + 32);
  }

  [(PKPencilSqueezeController *)v2 _didChangePaletteViewToVisible];
}

void __65__PKPencilSqueezeController_pencilInteraction_didReceiveSqueeze___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  [(PKPencilSqueezeController *)v2 _updateUIWithSqueeze:v3 customHoverPoint:0 animated:1];
  v4 = *(*(a1 + 32) + 248);

  [(PKPencilSqueezeAnalyticsController *)v4 didHideMiniPaletteBySqueezingAgain];
}

double __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0.0;
  }

  v4 = *(v2 + 56);
  WeakRetained = objc_loadWeakRetained((v2 + 8));
  [v4 azimuthAngleInView:WeakRetained];
  v7 = v6;

  v8 = [(PKPencilSqueezeUserDefaults *)*(v2 + 192) loadLastPaletteViewStartAngle];
  v9 = v8;
  if (v7 != 0.0 || v8 == 0)
  {
    v11 = -v7;
    if (v7 >= 0.0)
    {
      v11 = v7;
    }

    v12 = 4.38077642;
    if (a2)
    {
      v12 = 5.70722665;
    }

    if (v11 >= 1.57079633)
    {
      v14 = v12;
    }

    else
    {
      v14 = 3.45575192;
    }
  }

  else
  {
    [v8 floatValue];
    v14 = v13;
  }

  if (v7 != 0.0)
  {
    [(PKPencilSqueezeUserDefaults *)*(v2 + 192) saveLastPaletteViewStartAngle:v14];
  }

  return v14;
}

- (uint64_t)_updatePalettePositionWithHoverLocation:(double)location
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(result + 216))
  {
    v5 = result;
    [*(result + 40) setActive:0];
    [*(v5 + 48) setActive:0];
    _keyWindow = [(PKPencilSqueezeController *)v5 _keyWindow];
    [_keyWindow bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v43.origin.x = v8;
      v43.origin.y = v10;
      v43.size.width = v12;
      v43.size.height = v14;
      v16 = NSStringFromCGRect(v43);
      LODWORD(buf.a) = 138477827;
      *(&buf.a + 4) = v16;
      _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Update palette view position, keyWindowBounds: %{private}@", &buf, 0xCu);
    }

    [*(v5 + 72) setConstant:v12];
    [*(v5 + 80) setConstant:v14];
    v17 = v12 + -40.0;
    v18 = v14 + -50.0;
    v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v44.origin.x = 20.0;
      v44.origin.y = 30.0;
      v44.size.width = v17;
      v44.size.height = v18;
      v20 = NSStringFromCGRect(v44);
      LODWORD(buf.a) = 138477827;
      *(&buf.a + 4) = v20;
      _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Update palette view position, displayRect: %{private}@", &buf, 0xCu);
    }

    _paletteViewScale = [(PKPencilSqueezeController *)v5 _paletteViewScale];
    v22 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134283521;
      *(&buf.a + 4) = _paletteViewScale;
      _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEFAULT, "Update palette view position, paletteViewScale: %{private}.2f", &buf, 0xCu);
    }

    memset(&buf, 0, sizeof(buf));
    CGAffineTransformMakeScale(&buf, _paletteViewScale, _paletteViewScale);
    v39 = buf;
    [*(v5 + 16) setTransform:&v39];
    v23 = *(v5 + 184);
    if (v23 < 0.0)
    {
      v23 = -v23;
    }

    v24 = v23 < 1.57079633;
    v25 = -30.0;
    if (v24)
    {
      v25 = 30.0;
    }

    v26 = [(PKPencilSqueezeController *)v5 _paletteViewCenterInRect:30.0 hoverLocation:v17 paletteViewSize:v18, a2 + v25, location + 30.0, vmlaq_n_f64(vmulq_n_f64(*&buf.c, *(v5 + 32)), *&buf.a, *(v5 + 24)).f64[0]];
    v28 = v27;
    v29 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v42.x = v26;
      v42.y = v28;
      v30 = NSStringFromCGPoint(v42);
      LODWORD(v39.a) = 138477827;
      *(&v39.a + 4) = v30;
      _os_log_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEFAULT, "Update palette view position, center: %{private}@", &v39, 0xCu);
    }

    centerXAnchor = [*(v5 + 16) centerXAnchor];
    leftAnchor = [*(v5 + 64) leftAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:leftAnchor constant:v26];
    v34 = *(v5 + 40);
    *(v5 + 40) = v33;

    centerYAnchor = [*(v5 + 16) centerYAnchor];
    topAnchor = [*(v5 + 64) topAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:v28];
    v38 = *(v5 + 48);
    *(v5 + 48) = v37;

    [*(v5 + 40) setActive:1];
    return [*(v5 + 48) setActive:1];
  }

  return result;
}

- (uint64_t)_updatePaletteViewPresentationState
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 152);
    v3 = 0.0;
    v4 = 0.0;
    if (v2)
    {
      [*(v2 + 24) presentationValue];
    }

    [*(v1 + 16) setAlpha:v4];
    _paletteViewScale = [(PKPencilSqueezeController *)v1 _paletteViewScale];
    v6 = *(v1 + 152);
    if (v6)
    {
      [*(v6 + 32) presentationValue];
      v3 = v7;
    }

    CGAffineTransformMakeScale(&v10, _paletteViewScale * v3, _paletteViewScale * v3);
    v8 = *(v1 + 16);
    v9 = v10;
    return [v8 setTransform:&v9];
  }

  return result;
}

id __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_53(uint64_t a1, void *a2, double a3, double a4)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v7;
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(WeakRetained + 216);
    LODWORD(v14[0]) = 67109120;
    HIDWORD(v14[0]) = v11;
    _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Handle pencil hit test, paletteViewVisible: %{BOOL}d", v14, 8u);
  }

  if (*(WeakRetained + 216))
  {
    [WeakRetained[2] convertPoint:WeakRetained[15] fromView:{a3, a4}];
    v12 = [WeakRetained[2] hitTest:v9 withEvent:?];
    if (v12)
    {
      [(PKPencilSqueezeController *)WeakRetained _dismissPopovers];
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__PKPencilSqueezeController__handlePencilHitTest_withEvent___block_invoke;
      v14[3] = &unk_1E82D7148;
      v14[4] = WeakRetained;
      [(PKPencilSqueezeController *)WeakRetained _setPaletteViewVisible:1 notify:v14 didChangeHandler:?];
      [(PKPencilSqueezeController *)WeakRetained _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

id __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_2(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = v10;
  v13 = v9;
  v14 = v13;
  if (WeakRetained && v13 && *(WeakRetained + 216) && [v13 type] != 11)
  {
    [WeakRetained[2] convertPoint:v12 fromView:{a4, a5}];
    v15 = [WeakRetained[2] hitTest:v14 withEvent:?];

    if (v15)
    {
      [(PKPencilSqueezeController *)WeakRetained _dismissPopovers];
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__PKPencilSqueezeController__handleContainerOverlayHitTest_point_event___block_invoke;
      v17[3] = &unk_1E82D7148;
      v17[4] = WeakRetained;
      [(PKPencilSqueezeController *)WeakRetained _setPaletteViewVisible:1 notify:v17 didChangeHandler:?];
      [(PKPencilSqueezeController *)WeakRetained _updateUIWithSqueeze:0 customHoverPoint:1 animated:?];
    }
  }

  return 0;
}

void __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKPencilSqueezeController *)WeakRetained _updatePaletteViewPresentationState];
}

void __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_4(uint64_t a1, int a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 && (a3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v5 = (WeakRetained[27] & 1) == 0 && ((v4 = WeakRetained[19]) == 0 || (v4[48] & 1) == 0) && WeakRetained[2] && *(WeakRetained + 138) == 0;
      v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v10 + 216);
        *buf = 67109376;
        v12 = v7;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Palette view presentation did finish, isVisible: %{BOOL}d, remove from view hierarchy: %{BOOL}d", buf, 0xEu);
      }

      WeakRetained = v10;
      if (v5)
      {
        v8 = v10[11];
        v10[11] = 0;

        [v10[2] removeFromSuperview];
        v9 = v10[2];
        v10[2] = 0;

        WeakRetained = v10;
      }
    }
  }
}

void __76__PKPencilSqueezeController__updateUIWithSqueeze_customHoverPoint_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained && WeakRetained[216] == 1)
  {
    [PKToolPicker _dockToolPickerForWindowScene:v2 toAutoHideCornerAnimated:0];
  }
}

- (void)_updateToolPickerVisibilityWithCompletion:(uint64_t *)completion
{
  v3 = a2;
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)completion _toolPickerForKeyWindow];
  v4 = objc_alloc_init(PKToolPickerVisibilityContext);
  v5 = v4;
  if (v4)
  {
    v4->_squeezePaletteVisibleDidChange = 1;
  }

  if (_toolPickerForKeyWindow)
  {
    [_toolPickerForKeyWindow _updateToolPickerVisibilityForFirstResponder:0 withContext:v4 completion:v3];
  }
}

- (double)_paletteViewScale
{
  _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
  [_keyWindow bounds];
  v4 = v3;
  v6 = v5;

  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
  v8 = PKSqueezePaletteViewScaleFactor(_toolPickerForKeyWindow, 20.0, 30.0, v4 + -40.0, v6 + -50.0, *(self + 24));

  return v8;
}

- (double)_paletteViewCenterInRect:(CGFloat)rect hoverLocation:(CGFloat)location paletteViewSize:(CGFloat)size
{
  if (!self)
  {
    return 0.0;
  }

  v13 = a8 * 0.5;
  v14 = a8 * 0.5 + CGRectGetMinX(*&a2);
  if (a6 < v14)
  {
    a6 = v14;
  }

  v17.origin.x = a2;
  v17.origin.y = rect;
  v17.size.width = location;
  v17.size.height = size;
  v15 = CGRectGetMaxX(v17) - v13;
  if (a6 >= v15)
  {
    a6 = v15;
  }

  v18.origin.x = a2;
  v18.origin.y = rect;
  v18.size.width = location;
  v18.size.height = size;
  CGRectGetMinY(v18);
  v19.origin.x = a2;
  v19.origin.y = rect;
  v19.size.width = location;
  v19.size.height = size;
  CGRectGetMaxY(v19);
  return a6;
}

- (double)paletteViewFrameForHoverLocation:(double)location
{
  if (!self)
  {
    return 0.0;
  }

  _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
  [_keyWindow bounds];
  v8 = v7;
  v10 = v9;

  v11 = v8 + -40.0;
  v12 = v10 + -50.0;
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)self _toolPickerForKeyWindow];
  v14 = PKSqueezePaletteViewScaleFactor(_toolPickerForKeyWindow, 20.0, 30.0, v11, v12, *(self + 24));
  v15 = *(self + 56);
  WeakRetained = objc_loadWeakRetained((self + 8));
  [v15 azimuthAngleInView:WeakRetained];
  v18 = v17;

  v19 = -v18;
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  v20 = v19 < 1.57079633;
  v21 = -30.0;
  if (v20)
  {
    v21 = 30.0;
  }

  v22 = a2 + v21;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, v14, v14);
  v25 = vmlaq_n_f64(vmulq_n_f64(*&v26.c, *(self + 32)), *&v26.a, *(self + 24)).f64[0];
  v23 = [(PKPencilSqueezeController *)self _paletteViewCenterInRect:30.0 hoverLocation:v11 paletteViewSize:v12, v22, location + 30.0, v25]- 0.5 * v25;

  return v23;
}

- (id)_currentFirstResponder
{
  if (self)
  {
    _keyWindow = [(PKPencilSqueezeController *)self _keyWindow];
    firstResponder = [_keyWindow firstResponder];
  }

  else
  {
    firstResponder = 0;
  }

  return firstResponder;
}

- (uint64_t)_isPresentedViewController:(uint64_t)controller
{
  controllerCopy = controller;
  if (controller)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((controllerCopy + 232));
    presentedViewController = [WeakRetained presentedViewController];

    if (presentedViewController)
    {
      v6 = presentedViewController == v3;
    }

    else
    {
      v6 = 0;
    }

    controllerCopy = v6;
  }

  return controllerCopy;
}

- (void)_togglePresentViewControllerAsPopover:(void *)popover sourceView:
{
  v6 = a2;
  popoverCopy = popover;
  if (self)
  {
    if ([(PKPencilSqueezeController *)self _isPresentedViewController:v6])
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(PKPencilSqueezeController *)self _presentViewControllerAsPopover:v6 sourceView:popoverCopy];
    }
  }
}

- (void)_presentViewControllerAsPopover:(void *)popover sourceView:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  popoverCopy = popover;
  if (self)
  {
    if ((-[PKPencilSqueezeController _isPresentedViewController:](self, v5) & 1) != 0 || (v8 = [v5 isBeingPresented], !popoverCopy) || v8)
    {
      v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v35 = v5;
        v36 = 2113;
        v37 = popoverCopy;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Unable to present view controller: %{private}@, sourceView: %{private}@", buf, 0x16u);
      }
    }

    else
    {
      [v5 setModalPresentationStyle:7];
      popoverPresentationController = [v5 popoverPresentationController];
      [popoverPresentationController setDelegate:self];

      popoverPresentationController2 = [v5 popoverPresentationController];
      [popoverPresentationController2 setSourceView:popoverCopy];

      [popoverCopy bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      popoverPresentationController3 = [v5 popoverPresentationController];
      [popoverPresentationController3 setSourceRect:{v12, v14, v16, v18}];

      popoverPresentationController4 = [v5 popoverPresentationController];
      [popoverPresentationController4 setSourceItem:popoverCopy];

      popoverPresentationController5 = [v5 popoverPresentationController];
      [popoverPresentationController5 _setIgnoresKeyboardNotifications:1];

      v33[0] = *(self + 120);
      WeakRetained = objc_loadWeakRetained((self + 8));
      v33[1] = WeakRetained;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      popoverPresentationController6 = [v5 popoverPresentationController];
      [popoverPresentationController6 setPassthroughViews:v23];

      popoverPresentationController7 = [v5 popoverPresentationController];
      [popoverPresentationController7 setPermittedArrowDirections:15];

      v26 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_loadWeakRetained((self + 232));
        *buf = 138478083;
        v35 = v5;
        v36 = 2113;
        v37 = v27;
        _os_log_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEFAULT, "Present view controller: %{private}@, root view controller: %{private}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v28 = objc_loadWeakRetained((self + 232));
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __72__PKPencilSqueezeController__presentViewControllerAsPopover_sourceView___block_invoke;
      v29[3] = &unk_1E82D6FC0;
      objc_copyWeak(&v32, buf);
      v30 = v5;
      v31 = popoverCopy;
      [v28 presentViewController:v30 animated:1 completion:v29];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }
}

void __72__PKPencilSqueezeController__presentViewControllerAsPopover_sourceView___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  if (WeakRetained)
  {
    v5 = [(PKPencilSqueezeController *)WeakRetained _isPresentedViewController:v3];
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v10 = v3;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Did present view controller: %{private}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v10 = v3;
      _os_log_error_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_ERROR, "Unable to present view controller: %{private}@", buf, 0xCu);
    }
  }
}

void __45__PKPencilSqueezeController__dismissPopovers__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v6 = v2;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Did dismiss view controller: %{private}@", buf, 0xCu);
    }

    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)WeakRetained[11] didDismissViewController:v2];
  }
}

- (uint64_t)_canSelectTool:(uint64_t)tool atIndex:(void *)index
{
  indexCopy = index;
  v4 = indexCopy;
  if (tool)
  {
    v5 = [indexCopy ink];
    _isGenerationTool = [v5 _isGenerationTool];

    if (_isGenerationTool)
    {
      keyWindow = [(PKTextEffectsWindowObserver *)*(tool + 240) keyWindow];
      if (keyWindow)
      {
        v8 = keyWindow;
        v9 = +[PKGenerationModelAvailabilityController sharedInstance];
        v10 = [v9 presentGreymatterAvailabilityAlertControllerInWindow:v8];

        if (v10)
        {
          [(PKPencilSqueezeController *)tool _hidePaletteViewAfterDelay:?];

          tool = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v11 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Unable to find application window to display Enrollment UI", v13, 2u);
        }
      }
    }

    tool = 1;
  }

LABEL_11:

  return tool;
}

- (void)_didSelectTool:(uint64_t *)tool atIndex:(void *)index
{
  indexCopy = index;
  v4 = indexCopy;
  if (tool)
  {
    rootViewController = [indexCopy ink];
    if (![rootViewController _isGenerationTool])
    {
LABEL_11:

      goto LABEL_12;
    }

    v6 = +[PKImageWandOnboardingController canShowOnboardingView];

    if (v6)
    {
      keyWindow = [(PKTextEffectsWindowObserver *)tool[30] keyWindow];
      rootViewController = [keyWindow rootViewController];

      if (rootViewController)
      {
        _toolPickerForKeyWindow = [(PKPencilSqueezeController *)tool _toolPickerForKeyWindow];
        v9 = [[PKImageWandOnboardingController alloc] initWithPresentationViewController:rootViewController toolPicker:_toolPickerForKeyWindow];
        v10 = tool[26];
        tool[26] = v9;

        v11 = tool[26];
        if (v11)
        {
          objc_storeWeak((v11 + 40), tool);
          v12 = tool[26];
        }

        else
        {
          v12 = 0;
        }

        [(PKImageWandOnboardingController *)v12 showOnboardingViewAfterDelay:?];
        [(PKPencilSqueezeController *)tool _hidePaletteViewAfterDelay:?];
      }

      else
      {
        v13 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Unable to present Image Wand Onboarding UI; no presentation view controller", v14, 2u);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)imageWandOnboardingControllerDidHideView:(id)view
{
  viewCopy = view;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Image Wand Onboarding UI did dismiss", v7, 2u);
  }

  imageWandOnboardingController = self->_imageWandOnboardingController;
  if (imageWandOnboardingController == viewCopy)
  {
    self->_imageWandOnboardingController = 0;
  }
}

@end