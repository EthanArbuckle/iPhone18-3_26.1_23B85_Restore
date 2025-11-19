@interface PKPaletteViewInteraction
+ (BOOL)isHostedWindow:(id)a3;
+ (id)existingPaletteViewInteractionForWindowScene:(id)a3;
+ (id)paletteViewInteractionForWindow:(id)a3 windowScene:(id)a4;
- (BOOL)_isCompactHostedWindow;
- (BOOL)_shouldDeferPaletteVisibilityUpdate;
- (BOOL)isActive;
- (BOOL)isPaletteVisible;
- (CGRect)_sceneBoundsForUpdateWithFollowsHostingWindowOut:(BOOL *)a3;
- (CGRect)sceneBounds;
- (CGRect)textEffectsWindowFrame;
- (PKPaletteViewInteraction)initWithScene:(id)a3;
- (PKPaletteViewInteraction)initWithWindowSize:(CGSize)a3;
- (PKPaletteViewInteractionDelegate)delegate;
- (UIScene)_scene;
- (UIView)view;
- (UIWindowScene)windowScene;
- (id)_traitCollectionForHostingWindow;
- (id)_viewControllerForPalette;
- (id)hostingWindow;
- (id)paletteTapToRadarCommandConfiguration:(id)a3;
- (void)_sceneDidActivateNotification:(id)a3;
- (void)_sceneWillEnterForegroundNotification:(id)a3;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateForRotation:(id)a3;
- (void)_updateForWillRotate:(id)a3;
- (void)_updatePalettePopoverWithUIStyle:(int64_t)a3;
- (void)_updatePaletteTraitCollection:(id)a3;
- (void)_updatePaletteUserInterfaceStyle:(int64_t)a3;
- (void)_updateSceneBounds;
- (void)_updateTraitCollection;
- (void)_updateUIWithSceneBounds:(CGRect)a3;
- (void)didMoveToView:(id)a3;
- (void)hidePaletteViewAnimated:(BOOL)a3 completion:(id)a4;
- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5;
- (void)setWindowScene:(id)a3;
- (void)showPaletteViewAnimated:(BOOL)a3 completion:(id)a4;
- (void)textEffectsWindowDidChangeKeyWindowBounds:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation PKPaletteViewInteraction

+ (id)existingPaletteViewInteractionForWindowScene:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _perCanvasInteractions;
    objc_sync_enter(v4);
    v5 = [_perCanvasInteractions objectForKey:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)paletteViewInteractionForWindow:(id)a3 windowScene:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = _perCanvasInteractions;
    objc_sync_enter(v9);
    v10 = _perCanvasInteractions;
    if (!_perCanvasInteractions)
    {
      v11 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v12 = _perCanvasInteractions;
      _perCanvasInteractions = v11;

      v10 = _perCanvasInteractions;
    }

    v8 = [v10 objectForKey:v7];
    if (!v8)
    {
      v13 = os_log_create("com.apple.pencilkit", "Interaction");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v28 = 138412546;
        v29 = v5;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_INFO, "Create new palette view interaction for window: %@, windowScene: %@", &v28, 0x16u);
      }

      v14 = [MEMORY[0x1E69DD0A8] sharedTextEffectsWindowForWindowScene:v7];
      NSClassFromString(&cfstr_Uisecurehosted.isa);
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![PKPaletteViewInteraction isHostedWindow:v14])
      {
        v15 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v28) = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_FAULT, "Got a UITextEffectsWindow for an extension when we should have gotten a UITextEffectsWindowHosted", &v28, 2u);
        }

        v8 = 0;
      }

      else
      {
        v15 = [v14 editingOverlayContainerView];
        if (!v15)
        {
          v16 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v28) = 0;
            _os_log_fault_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_FAULT, "Can't find UIEditingOverlayGestureView on UITextEffectsWindow", &v28, 2u);
          }
        }

        v17 = [PKPaletteViewInteraction alloc];
        [v5 bounds];
        v8 = [(PKPaletteViewInteraction *)v17 initWithWindowSize:v18, v19];
        [(PKPaletteViewInteraction *)v8 setWindowScene:v7];
        v20 = [MEMORY[0x1E696AAE8] mainBundle];
        v21 = [v20 bundleIdentifier];
        v22 = [v21 isEqualToString:@"com.apple.ScreenshotServicesService"];

        if ((v22 & 1) != 0 || _UIApplicationIsExtension())
        {
          v23 = [[PKTextEffectsWindowObserver alloc] initWithTextEffectsWindow:v14];
          [(PKPaletteViewInteraction *)v8 setTextEffectsWindowObserver:v23];

          v24 = [(PKPaletteViewInteraction *)v8 textEffectsWindowObserver];
          v25 = v24;
          if (v24)
          {
            objc_storeWeak((v24 + 48), v8);
          }
        }

        [_perCanvasInteractions setObject:v8 forKey:v7];
        [v7 _registerSceneComponent:v8 forKey:@"PKPaletteViewInteractionSceneComponentKey"];
        if (objc_opt_respondsToSelector())
        {
          v26 = [v7 keyboardSceneDelegate];
        }

        else
        {
          v26 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v26 addVisibilityObserver:v8];
        }

        [v15 addInteraction:v8];
      }
    }

    objc_sync_exit(v9);
  }

  return v8;
}

- (PKPaletteViewInteraction)initWithScene:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 coordinateSpace];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v10 = [(PKPaletteViewInteraction *)self initWithWindowSize:v7, v9];

  return v10;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_sceneWillInvalidate:(id)a3
{
  [(PKPaletteViewInteraction *)self willMoveToView:0];

  [(PKPaletteViewInteraction *)self didMoveToView:0];
}

- (PKPaletteViewInteraction)initWithWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PKPaletteViewInteraction;
  v5 = [(PKPaletteViewInteraction *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, 0);
    paletteHostView = v6->_paletteHostView;
    v6->_paletteHostView = 0;

    v6->_sceneBounds.origin.x = 0.0;
    v6->_sceneBounds.origin.y = 0.0;
    v6->_sceneBounds.size.width = width;
    v6->_sceneBounds.size.height = height;
  }

  return v6;
}

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    v5 = [(PKPaletteViewInteraction *)self paletteHostView];
    [v5 removeFromSuperview];

    [(PKPaletteViewInteraction *)self setPaletteHostView:0];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E69DE5B0] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:*MEMORY[0x1E69DE5A0] object:0];
  }
}

- (void)didMoveToView:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  [(PKPaletteViewInteraction *)self setView:?];
  if (a3)
  {
    v5 = [(PKPaletteViewInteraction *)self paletteHostView];

    if (!v5)
    {
      v6 = objc_alloc_init(PKDrawingPaletteView);
      [(PKPaletteViewInteraction *)self setPaletteView:v6];

      v7 = [[PKPaletteTapToRadarCommand alloc] initWithDelegate:self];
      v8 = [(PKPaletteViewInteraction *)self paletteView];
      [v8 setTapToRadarCommand:v7];

      v9 = [PKPaletteHostView alloc];
      v10 = [(PKPaletteViewInteraction *)self paletteView];
      v11 = [(PKPaletteHostView *)v9 initWithPaletteView:v10];
      [(PKPaletteViewInteraction *)self setPaletteHostView:v11];

      v12 = [(PKPaletteViewInteraction *)self paletteHostView];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

      v13 = [(PKPaletteViewInteraction *)self view];
      v14 = [(PKPaletteViewInteraction *)self paletteHostView];
      [v13 addSubview:v14];

      v15 = [(PKPaletteViewInteraction *)self paletteHostView];
      v16 = [v15 topAnchor];
      v17 = [(PKPaletteViewInteraction *)self view];
      v18 = [v17 topAnchor];
      v19 = [v16 constraintEqualToAnchor:v18];
      paletteHostViewTopConstraint = self->_paletteHostViewTopConstraint;
      self->_paletteHostViewTopConstraint = v19;

      v21 = [(PKPaletteViewInteraction *)self paletteHostView];
      v22 = [v21 leftAnchor];
      v23 = [(PKPaletteViewInteraction *)self view];
      v24 = [v23 leftAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      paletteHostViewLeftConstraint = self->_paletteHostViewLeftConstraint;
      self->_paletteHostViewLeftConstraint = v25;

      v27 = [(PKPaletteViewInteraction *)self paletteHostView];
      v28 = [v27 widthAnchor];
      [(PKPaletteViewInteraction *)self sceneBounds];
      v30 = [v28 constraintEqualToConstant:v29];
      paletteHostViewWidthConstraint = self->_paletteHostViewWidthConstraint;
      self->_paletteHostViewWidthConstraint = v30;

      v32 = [(PKPaletteViewInteraction *)self paletteHostView];
      v33 = [v32 heightAnchor];
      [(PKPaletteViewInteraction *)self sceneBounds];
      v35 = [v33 constraintEqualToConstant:v34];
      paletteHostViewHeightConstraint = self->_paletteHostViewHeightConstraint;
      self->_paletteHostViewHeightConstraint = v35;

      v37 = MEMORY[0x1E696ACD8];
      v51 = *&self->_paletteHostViewTopConstraint;
      v38 = self->_paletteHostViewHeightConstraint;
      v52 = self->_paletteHostViewWidthConstraint;
      v53 = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:4];
      [v37 activateConstraints:v39];

      [(PKPaletteViewInteraction *)self _updateSceneBounds];
      v40 = [(PKPaletteViewInteraction *)self paletteView];
      [v40 paletteHostingWindowSceneDidChangeBounds:self];

      v41 = [(PKPaletteViewInteraction *)self _viewControllerForPalette];
      v42 = [(PKPaletteViewInteraction *)self paletteView];
      [v42 setPalettePopoverPresentingController:v41];

      v43 = [(PKPaletteViewInteraction *)self paletteHostView];
      [v43 setNeedsLayout];

      v44 = [(PKPaletteViewInteraction *)self paletteHostView];
      [v44 layoutIfNeeded];

      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      if (WeakRetained)
      {
        v46 = MEMORY[0x1E69DD0A8];
        v47 = objc_loadWeakRetained(&self->_windowScene);
        v48 = [v46 sharedTextEffectsWindowForWindowScene:v47];

        v49 = [MEMORY[0x1E696AD88] defaultCenter];
        [v49 addObserver:self selector:sel__updateForWillRotate_ name:*MEMORY[0x1E69DE5B0] object:0];

        v50 = [MEMORY[0x1E696AD88] defaultCenter];
        [v50 addObserver:self selector:sel__updateForRotation_ name:*MEMORY[0x1E69DE5A0] object:v48];
      }
    }
  }
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_windowScene);

    v6 = MEMORY[0x1E69DE338];
    v7 = MEMORY[0x1E69DE360];
    if (v5)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = *v6;
      v10 = objc_loadWeakRetained(&self->_windowScene);
      [v8 removeObserver:self name:v9 object:v10];

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = *v7;
      v13 = objc_loadWeakRetained(&self->_windowScene);
      [v11 removeObserver:self name:v12 object:v13];

      v14 = objc_loadWeakRetained(&self->_windowScene);
      [v14 _unregisterSceneComponentForKey:@"PKPaletteViewInteractionSceneComponentKey"];
    }

    v15 = objc_storeWeak(&self->_windowScene, obj);

    if (obj)
    {
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = *v6;
      v18 = objc_loadWeakRetained(&self->_windowScene);
      [v16 addObserver:self selector:sel__sceneDidActivateNotification_ name:v17 object:v18];

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      v20 = *v7;
      v21 = objc_loadWeakRetained(&self->_windowScene);
      [v19 addObserver:self selector:sel__sceneWillEnterForegroundNotification_ name:v20 object:v21];

      v22 = objc_loadWeakRetained(&self->_windowScene);
      [v22 _registerSceneComponent:self forKey:@"PKPaletteViewInteractionSceneComponentKey"];
    }
  }
}

- (BOOL)isActive
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v5 & 1) != 0 || (_UIApplicationIsExtension())
  {
    return 1;
  }

  v7 = [(PKPaletteViewInteraction *)self windowScene];
  if (v7)
  {
    v8 = [(PKPaletteViewInteraction *)self windowScene];
    v6 = [v8 activationState] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPaletteVisible
{
  v2 = [(PKPaletteViewInteraction *)self paletteHostView];
  v3 = [v2 isPaletteVisible];

  return v3;
}

- (void)showPaletteViewAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(PKPaletteViewInteraction *)self view];
  if (v6)
  {
    v7 = [(PKPaletteViewInteraction *)self paletteHostView];
    [v7 setHidden:0];

    v8 = [v6 window];
    [v8 bounds];
    [(PKPaletteViewInteraction *)self setTextEffectsWindowFrame:?];

    [(PKPaletteViewInteraction *)self _updateSceneBounds];
    [(PKPaletteViewInteraction *)self _setPaletteVisible:1 animated:v4 completion:v9];
  }
}

- (void)_setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaletteViewInteraction__setPaletteVisible_animated_completion___block_invoke;
  aBlock[3] = &unk_1E82DA140;
  v15 = v6;
  v16 = a4;
  aBlock[4] = self;
  v14 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  if (v6)
  {
    v11 = [(PKPaletteViewInteraction *)self hostingWindow];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PKPaletteViewInteraction *)self paletteView];
  [v12 set_hostingWindow:v11];

  if (v6)
  {
  }

  if ([(PKPaletteViewInteraction *)self _shouldDeferPaletteVisibilityUpdate])
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    v10[2](v10);
  }
}

void __67__PKPaletteViewInteraction__setPaletteVisible_animated_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) paletteHostView];
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PKPaletteViewInteraction__setPaletteVisible_animated_completion___block_invoke_2;
  v5[3] = &unk_1E82D7D20;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [v2 setPaletteVisible:v3 animated:v4 completion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__PKPaletteViewInteraction__setPaletteVisible_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained paletteView];
    v5 = [v4 pencilInteraction];
    [v5 setEnabled:0];

    v6 = [v9 paletteView];
    v7 = [v6 pencilInteraction];
    [v7 setEnabled:1];

    v3 = v9;
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v9);
      v3 = v9;
    }
  }
}

- (void)hidePaletteViewAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(PKPaletteViewInteraction *)self paletteView];
  [v6 dismissPalettePopoverWithCompletion:0];

  [(PKPaletteViewInteraction *)self _setPaletteVisible:0 animated:v4 completion:v7];
}

- (BOOL)_shouldDeferPaletteVisibilityUpdate
{
  v3 = [(PKPaletteViewInteraction *)self _traitCollectionForHostingWindow];
  v4 = [(PKPaletteViewInteraction *)self paletteHostView];
  v5 = [v4 traitCollection];

  v6 = [v3 horizontalSizeClass];
  if (v6 == [v5 horizontalSizeClass])
  {
    v7 = [v3 verticalSizeClass];
    v8 = v7 != [v5 verticalSizeClass];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PKPaletteViewInteraction *)self _isCompactHostedWindow]|| v8;

  return v9 & 1;
}

- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(PKPaletteViewInteraction *)self delegate];
  [v9 keyboardSceneDelegate:v8 inputViewSetVisibilityDidChange:v6 includedReset:v5];
}

- (void)_sceneDidActivateNotification:(id)a3
{
  [(PKPaletteViewInteraction *)self _updateSceneBounds];
  v4 = [(PKPaletteViewInteraction *)self delegate];
  [v4 paletteViewInteractionDidActivate:self];
}

- (void)_sceneWillEnterForegroundNotification:(id)a3
{
  v4 = [(PKPaletteViewInteraction *)self delegate];
  [v4 paletteViewInteractionWillEnterForeground:self];
}

- (void)_updateForWillRotate:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 view];
  v6 = [v5 window];

  v7 = [v6 windowScene];
  v8 = [(PKPaletteViewInteraction *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];

  if (v7 == v10)
  {
    v11 = [(PKPaletteViewInteraction *)self paletteView];
    [v11 dismissPalettePopoverWithCompletion:0];

    [v6 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(PKPaletteViewInteraction *)self textEffectsWindowFrame];
    v23.origin.x = v13;
    v23.origin.y = v15;
    v23.size.width = v17;
    v23.size.height = v19;
    if (!CGRectEqualToRect(v22, v23))
    {
      [(PKPaletteViewInteraction *)self setTextEffectsWindowFrame:v13, v15, v17, v19];
      if (![(PKPaletteHostView *)self->_paletteHostView isPaletteVisible])
      {
        [(PKPaletteHostView *)self->_paletteHostView setHidden:1];
        v20 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__PKPaletteViewInteraction__updateForWillRotate___block_invoke;
        block[3] = &unk_1E82D7148;
        block[4] = self;
        dispatch_after(v20, MEMORY[0x1E69E96A0], block);
      }

      [(PKPaletteViewInteraction *)self _updateSceneBounds];
    }
  }
}

- (void)_updateForRotation:(id)a3
{
  v22 = 0;
  v4 = a3;
  [(PKPaletteViewInteraction *)self _sceneBoundsForUpdateWithFollowsHostingWindowOut:&v22];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 object];

  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v22 == 1 || ([(PKPaletteViewInteraction *)self textEffectsWindowFrame], v24.origin.x = v15, v24.origin.y = v17, v24.size.width = v19, v24.size.height = v21, !CGRectEqualToRect(v23, v24)))
  {
    [(PKPaletteViewInteraction *)self setTextEffectsWindowFrame:v15, v17, v19, v21];
    [(PKPaletteViewInteraction *)self _updateUIWithSceneBounds:v6, v8, v10, v12];
  }
}

+ (BOOL)isHostedWindow:(id)a3
{
  v3 = a3;
  NSClassFromString(&cfstr_Uitexteffectsw.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_viewControllerForPalette
{
  v2 = [(PKPaletteViewInteraction *)self paletteHostView];
  v3 = [v2 window];
  v4 = [v3 rootViewController];
  v5 = [v4 childViewControllers];
  v6 = [v5 firstObject];

  return v6;
}

- (CGRect)_sceneBoundsForUpdateWithFollowsHostingWindowOut:(BOOL *)a3
{
  v5 = [(PKPaletteViewInteraction *)self view];
  v6 = [v5 window];

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v9)
  {
    v10 = [(PKPaletteViewInteraction *)self view];
    v11 = [v10 window];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v21 = [(PKPaletteViewInteraction *)self view];
  v22 = [v21 window];
  v23 = [PKPaletteViewInteraction isHostedWindow:v22];

  if (v23)
  {
    [v6 hostedViewSize];
    v17 = v24;
    [v6 hostedViewSize];
    v19 = v25;
    v20 = 0;
    v13 = 0.0;
    v15 = 0.0;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v26 = [(PKPaletteViewInteraction *)self hostingWindow];
  [v26 bounds];
  v13 = v27;
  v15 = v28;
  v17 = v29;
  v19 = v30;

  v20 = 1;
  if (a3)
  {
LABEL_8:
    *a3 = v20;
  }

LABEL_9:

  v31 = v13;
  v32 = v15;
  v33 = v17;
  v34 = v19;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_updateSceneBounds
{
  [(PKPaletteViewInteraction *)self _sceneBoundsForUpdateWithFollowsHostingWindowOut:0];

  [(PKPaletteViewInteraction *)self _updateUIWithSceneBounds:?];
}

- (void)_updateUIWithSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_sceneBounds, a3))
  {
    self->_sceneBounds.origin.x = x;
    self->_sceneBounds.origin.y = y;
    self->_sceneBounds.size.width = width;
    self->_sceneBounds.size.height = height;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PKPaletteViewInteraction__updateUIWithSceneBounds___block_invoke;
    aBlock[3] = &unk_1E82DA168;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    if (-[PKPaletteViewInteraction isPaletteVisible](self, "isPaletteVisible") || ![MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      [(PKPaletteViewInteraction *)self sceneBounds];
      v8[2](v8, v10, v11);
    }

    else
    {
      v9 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__PKPaletteViewInteraction__updateUIWithSceneBounds___block_invoke_2;
      v23[3] = &unk_1E82D7908;
      v23[4] = self;
      v24 = v8;
      [v9 _performWithoutRetargetingAnimations:v23];
    }

    v12 = [(PKPaletteViewInteraction *)self paletteView];
    [v12 paletteHostingWindowSceneDidChangeBounds:self];
  }

  [(PKPaletteViewInteraction *)self _updateTraitCollection];
  v13 = objc_opt_class();
  v14 = [(PKPaletteViewInteraction *)self view];
  v15 = [v14 window];
  LODWORD(v13) = [v13 isHostedWindow:v15];

  if (v13)
  {
    v16 = [(PKPaletteViewInteraction *)self view];
    v17 = [v16 window];
    [v17 frame];
    v19 = v18;
    [(PKPaletteViewInteraction *)self sceneBounds];
    v21 = v19 - v20 + 10.0;

    v22 = [(PKPaletteViewInteraction *)self paletteView];
    [v22 setPalettePopoverLayoutSceneMargins:{10.0, 10.0, 10.0, v21}];
  }
}

void __53__PKPaletteViewInteraction__updateUIWithSceneBounds___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) paletteHostViewWidthConstraint];
  [v6 setConstant:a2];

  v7 = [*(a1 + 32) paletteHostViewHeightConstraint];
  [v7 setConstant:a3];
}

void __53__PKPaletteViewInteraction__updateUIWithSceneBounds___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  [*(a1 + 32) sceneBounds];
  (*(v2 + 16))(v2, v3, v4);
  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

- (void)_updateTraitCollection
{
  v3 = [(PKPaletteViewInteraction *)self _traitCollectionForHostingWindow];
  [(PKPaletteViewInteraction *)self _updatePaletteTraitCollection:v3];
  -[PKPaletteViewInteraction _updatePalettePopoverWithUIStyle:](self, "_updatePalettePopoverWithUIStyle:", [v3 userInterfaceStyle]);
}

- (void)_updatePaletteUserInterfaceStyle:(int64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:a3];
  v5 = [(PKPaletteViewInteraction *)self paletteHostView];
  v6 = [v5 _localOverrideTraitCollection];

  if (v6)
  {
    v7 = MEMORY[0x1E69DD1B8];
    v11[0] = v6;
    v11[1] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = [v7 traitCollectionWithTraitsFromCollections:v8];
  }

  else
  {
    v9 = v4;
  }

  v10 = [(PKPaletteViewInteraction *)self paletteHostView];
  [v10 _setLocalOverrideTraitCollection:v9];

  -[PKPaletteViewInteraction _updatePalettePopoverWithUIStyle:](self, "_updatePalettePopoverWithUIStyle:", [v9 userInterfaceStyle]);
}

- (void)_updatePaletteTraitCollection:(id)a3
{
  v4 = a3;
  [(PKPaletteViewInteraction *)self textEffectsWindowFrame];
  if (CGRectEqualToRect(v7, *MEMORY[0x1E695F058]))
  {
    -[PKPaletteViewInteraction _updatePaletteUserInterfaceStyle:](self, "_updatePaletteUserInterfaceStyle:", [v4 userInterfaceStyle]);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKPaletteViewInteraction__updatePaletteTraitCollection___block_invoke;
    v5[3] = &unk_1E82D6E70;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __58__PKPaletteViewInteraction__updatePaletteTraitCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteHostView];
  [v2 _setLocalOverrideTraitCollection:*(a1 + 40)];
}

- (void)_updatePalettePopoverWithUIStyle:(int64_t)a3
{
  v6 = [(PKPaletteViewInteraction *)self paletteView];
  v4 = [v6 palettePopoverPresentingController];
  v5 = [v4 presentedViewController];
  [v5 setOverrideUserInterfaceStyle:a3];
}

- (BOOL)_isCompactHostedWindow
{
  v3 = [(PKPaletteViewInteraction *)self hostingWindow];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = [(PKPaletteViewInteraction *)self view];
  v7 = [v6 window];
  v8 = [PKPaletteViewInteraction isHostedWindow:v7];

  v9 = 0;
  if (v8 && v5 != 1)
  {
    v10 = [(PKPaletteViewInteraction *)self view];
    v11 = [v10 window];

    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.ScreenshotServicesService"];

    if (v14 && ([v11 hostedViewSize], v16 == *MEMORY[0x1E695F060]) && v15 == *(MEMORY[0x1E695F060] + 8))
    {
      [v11 bounds];
    }

    else
    {
      [v11 hostedViewSize];
    }

    v9 = _UIUserInterfaceSizeClassForWidth() == 1;
  }

  return v9;
}

- (id)_traitCollectionForHostingWindow
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteViewInteraction *)self hostingWindow];
  v4 = [v3 traitCollection];

  v5 = [(PKPaletteViewInteraction *)self hostingWindow];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1 && ([(PKPaletteViewInteraction *)self _isCompactHostedWindow]|| _UISolariumEnabled()))
  {
    v8 = [(PKPaletteViewInteraction *)self view];
    v9 = [v8 window];

    if ([(PKPaletteViewInteraction *)self _isCompactHostedWindow])
    {
      [v9 hostedViewSize];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v14 = [(PKPaletteViewInteraction *)self hostingWindow];
      [v14 bounds];
      v11 = v15;
      v13 = v16;
    }

    v17 = _UIUserInterfaceSizeClassForWidth();
    v18 = [(PKPaletteViewInteraction *)self paletteView];
    v19 = [v18 paletteScaleFactorPolicy];
    v20 = [(PKPaletteViewInteraction *)self paletteView];
    [v19 scaleFactorForWindowBounds:v20 paletteView:{0.0, 0.0, v11, v13}];
    v22 = v21;

    if (v22 < 0.65 || _UISolariumEnabled() && v11 <= 375.0 && v17 != 1)
    {
      v17 = 1;
    }

    v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:v17];
    v24 = MEMORY[0x1E69DD1B8];
    v28[0] = v4;
    v28[1] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v26 = [v24 traitCollectionWithTraitsFromCollections:v25];

    v4 = v26;
  }

  return v4;
}

- (id)hostingWindow
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteViewInteraction *)self view];
  v4 = [v3 window];
  if (![PKPaletteViewInteraction isHostedWindow:v4])
  {

    goto LABEL_15;
  }

  v5 = [(PKPaletteViewInteraction *)self windowScene];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_15:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(PKPaletteViewInteraction *)self windowScene];
    v18 = [v17 windows];

    v19 = [v18 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
LABEL_17:
      v22 = 0;
      while (1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        if (![v23 _isTextEffectsWindow])
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v20)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      v12 = v23;

      if (v12)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_23:
    }

    v9 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v26 = [(PKPaletteViewInteraction *)self windowScene];
      *buf = 138412290;
      v36 = v26;
      _os_log_fault_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_FAULT, "Unable to find application window in windowScene: %@", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_32;
  }

  v7 = [(PKPaletteViewInteraction *)self windowScene];
  v8 = [v7 performSelector:sel__visibleWindows];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if ([v15 isKeyWindow])
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v11);

    if (v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v24 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEBUG, "No window in _visibleWindows was key, just take the last window object", buf, 2u);
  }

  v12 = [v9 lastObject];
LABEL_32:

LABEL_33:

  return v12;
}

- (id)paletteTapToRadarCommandConfiguration:(id)a3
{
  v4 = [(PKPaletteViewInteraction *)self view];
  v5 = [v4 window];
  v6 = [PKToolPicker activeToolPickerForWindow:v5];

  if ([v6 _isHandwritingToolSelected])
  {
    v7 = [(PKPaletteViewInteraction *)self windowScene];
    v8 = [PKTextInputInteraction interactionForScene:v7];

    v9 = [v8 debugLogController];
    v10 = [(PKTextInputDebugLogController *)v9 sharpenerLogWithCurrentContent];

    v11 = objc_alloc_init(PKPaletteTapToRadarConfiguration);
    if ([v10 hasContent])
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    [(PKPaletteTapToRadarConfiguration *)v11 setDebugSharpenerLog:v12];
    v13 = [(PKPaletteViewInteraction *)self _viewControllerForPalette];
    [(PKPaletteTapToRadarConfiguration *)v11 setPresentationViewController:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)textEffectsWindowDidChangeKeyWindowBounds:(id)a3
{
  if (_UISolariumEnabled())
  {

    [(PKPaletteViewInteraction *)self _updateTraitCollection];
  }
}

- (PKPaletteViewInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGRect)sceneBounds
{
  x = self->_sceneBounds.origin.x;
  y = self->_sceneBounds.origin.y;
  width = self->_sceneBounds.size.width;
  height = self->_sceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textEffectsWindowFrame
{
  x = self->_textEffectsWindowFrame.origin.x;
  y = self->_textEffectsWindowFrame.origin.y;
  width = self->_textEffectsWindowFrame.size.width;
  height = self->_textEffectsWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end