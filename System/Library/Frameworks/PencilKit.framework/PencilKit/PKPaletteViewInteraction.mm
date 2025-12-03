@interface PKPaletteViewInteraction
+ (BOOL)isHostedWindow:(id)window;
+ (id)existingPaletteViewInteractionForWindowScene:(id)scene;
+ (id)paletteViewInteractionForWindow:(id)window windowScene:(id)scene;
- (BOOL)_isCompactHostedWindow;
- (BOOL)_shouldDeferPaletteVisibilityUpdate;
- (BOOL)isActive;
- (BOOL)isPaletteVisible;
- (CGRect)_sceneBoundsForUpdateWithFollowsHostingWindowOut:(BOOL *)out;
- (CGRect)sceneBounds;
- (CGRect)textEffectsWindowFrame;
- (PKPaletteViewInteraction)initWithScene:(id)scene;
- (PKPaletteViewInteraction)initWithWindowSize:(CGSize)size;
- (PKPaletteViewInteractionDelegate)delegate;
- (UIScene)_scene;
- (UIView)view;
- (UIWindowScene)windowScene;
- (id)_traitCollectionForHostingWindow;
- (id)_viewControllerForPalette;
- (id)hostingWindow;
- (id)paletteTapToRadarCommandConfiguration:(id)configuration;
- (void)_sceneDidActivateNotification:(id)notification;
- (void)_sceneWillEnterForegroundNotification:(id)notification;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)_updateForRotation:(id)rotation;
- (void)_updateForWillRotate:(id)rotate;
- (void)_updatePalettePopoverWithUIStyle:(int64_t)style;
- (void)_updatePaletteTraitCollection:(id)collection;
- (void)_updatePaletteUserInterfaceStyle:(int64_t)style;
- (void)_updateSceneBounds;
- (void)_updateTraitCollection;
- (void)_updateUIWithSceneBounds:(CGRect)bounds;
- (void)didMoveToView:(id)view;
- (void)hidePaletteViewAnimated:(BOOL)animated completion:(id)completion;
- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset;
- (void)setWindowScene:(id)scene;
- (void)showPaletteViewAnimated:(BOOL)animated completion:(id)completion;
- (void)textEffectsWindowDidChangeKeyWindowBounds:(id)bounds;
- (void)willMoveToView:(id)view;
@end

@implementation PKPaletteViewInteraction

+ (id)existingPaletteViewInteractionForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v4 = _perCanvasInteractions;
    objc_sync_enter(v4);
    v5 = [_perCanvasInteractions objectForKey:sceneCopy];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)paletteViewInteractionForWindow:(id)window windowScene:(id)scene
{
  v32 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  sceneCopy = scene;
  v7 = sceneCopy;
  v8 = 0;
  if (windowCopy && sceneCopy)
  {
    v9 = _perCanvasInteractions;
    objc_sync_enter(v9);
    v10 = _perCanvasInteractions;
    if (!_perCanvasInteractions)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v12 = _perCanvasInteractions;
      _perCanvasInteractions = weakToWeakObjectsMapTable;

      v10 = _perCanvasInteractions;
    }

    v8 = [v10 objectForKey:v7];
    if (!v8)
    {
      v13 = os_log_create("com.apple.pencilkit", "Interaction");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v28 = 138412546;
        v29 = windowCopy;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_INFO, "Create new palette view interaction for window: %@, windowScene: %@", &v28, 0x16u);
      }

      v14 = [MEMORY[0x1E69DD0A8] sharedTextEffectsWindowForWindowScene:v7];
      NSClassFromString(&cfstr_Uisecurehosted.isa);
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![PKPaletteViewInteraction isHostedWindow:v14])
      {
        editingOverlayContainerView = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(editingOverlayContainerView, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v28) = 0;
          _os_log_fault_impl(&dword_1C7CCA000, editingOverlayContainerView, OS_LOG_TYPE_FAULT, "Got a UITextEffectsWindow for an extension when we should have gotten a UITextEffectsWindowHosted", &v28, 2u);
        }

        v8 = 0;
      }

      else
      {
        editingOverlayContainerView = [v14 editingOverlayContainerView];
        if (!editingOverlayContainerView)
        {
          v16 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v28) = 0;
            _os_log_fault_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_FAULT, "Can't find UIEditingOverlayGestureView on UITextEffectsWindow", &v28, 2u);
          }
        }

        v17 = [PKPaletteViewInteraction alloc];
        [windowCopy bounds];
        v8 = [(PKPaletteViewInteraction *)v17 initWithWindowSize:v18, v19];
        [(PKPaletteViewInteraction *)v8 setWindowScene:v7];
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v22 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

        if ((v22 & 1) != 0 || _UIApplicationIsExtension())
        {
          v23 = [[PKTextEffectsWindowObserver alloc] initWithTextEffectsWindow:v14];
          [(PKPaletteViewInteraction *)v8 setTextEffectsWindowObserver:v23];

          textEffectsWindowObserver = [(PKPaletteViewInteraction *)v8 textEffectsWindowObserver];
          v25 = textEffectsWindowObserver;
          if (textEffectsWindowObserver)
          {
            objc_storeWeak((textEffectsWindowObserver + 48), v8);
          }
        }

        [_perCanvasInteractions setObject:v8 forKey:v7];
        [v7 _registerSceneComponent:v8 forKey:@"PKPaletteViewInteractionSceneComponentKey"];
        if (objc_opt_respondsToSelector())
        {
          keyboardSceneDelegate = [v7 keyboardSceneDelegate];
        }

        else
        {
          keyboardSceneDelegate = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [keyboardSceneDelegate addVisibilityObserver:v8];
        }

        [editingOverlayContainerView addInteraction:v8];
      }
    }

    objc_sync_exit(v9);
  }

  return v8;
}

- (PKPaletteViewInteraction)initWithScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coordinateSpace = [sceneCopy coordinateSpace];
    [coordinateSpace bounds];
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

- (void)_sceneWillInvalidate:(id)invalidate
{
  [(PKPaletteViewInteraction *)self willMoveToView:0];

  [(PKPaletteViewInteraction *)self didMoveToView:0];
}

- (PKPaletteViewInteraction)initWithWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)willMoveToView:(id)view
{
  if (!view)
  {
    paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
    [paletteHostView removeFromSuperview];

    [(PKPaletteViewInteraction *)self setPaletteHostView:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5B0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE5A0] object:0];
  }
}

- (void)didMoveToView:(id)view
{
  v54 = *MEMORY[0x1E69E9840];
  [(PKPaletteViewInteraction *)self setView:?];
  if (view)
  {
    paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];

    if (!paletteHostView)
    {
      v6 = objc_alloc_init(PKDrawingPaletteView);
      [(PKPaletteViewInteraction *)self setPaletteView:v6];

      v7 = [[PKPaletteTapToRadarCommand alloc] initWithDelegate:self];
      paletteView = [(PKPaletteViewInteraction *)self paletteView];
      [paletteView setTapToRadarCommand:v7];

      v9 = [PKPaletteHostView alloc];
      paletteView2 = [(PKPaletteViewInteraction *)self paletteView];
      v11 = [(PKPaletteHostView *)v9 initWithPaletteView:paletteView2];
      [(PKPaletteViewInteraction *)self setPaletteHostView:v11];

      paletteHostView2 = [(PKPaletteViewInteraction *)self paletteHostView];
      [paletteHostView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      view = [(PKPaletteViewInteraction *)self view];
      paletteHostView3 = [(PKPaletteViewInteraction *)self paletteHostView];
      [view addSubview:paletteHostView3];

      paletteHostView4 = [(PKPaletteViewInteraction *)self paletteHostView];
      topAnchor = [paletteHostView4 topAnchor];
      view2 = [(PKPaletteViewInteraction *)self view];
      topAnchor2 = [view2 topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      paletteHostViewTopConstraint = self->_paletteHostViewTopConstraint;
      self->_paletteHostViewTopConstraint = v19;

      paletteHostView5 = [(PKPaletteViewInteraction *)self paletteHostView];
      leftAnchor = [paletteHostView5 leftAnchor];
      view3 = [(PKPaletteViewInteraction *)self view];
      leftAnchor2 = [view3 leftAnchor];
      v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      paletteHostViewLeftConstraint = self->_paletteHostViewLeftConstraint;
      self->_paletteHostViewLeftConstraint = v25;

      paletteHostView6 = [(PKPaletteViewInteraction *)self paletteHostView];
      widthAnchor = [paletteHostView6 widthAnchor];
      [(PKPaletteViewInteraction *)self sceneBounds];
      v30 = [widthAnchor constraintEqualToConstant:v29];
      paletteHostViewWidthConstraint = self->_paletteHostViewWidthConstraint;
      self->_paletteHostViewWidthConstraint = v30;

      paletteHostView7 = [(PKPaletteViewInteraction *)self paletteHostView];
      heightAnchor = [paletteHostView7 heightAnchor];
      [(PKPaletteViewInteraction *)self sceneBounds];
      v35 = [heightAnchor constraintEqualToConstant:v34];
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
      paletteView3 = [(PKPaletteViewInteraction *)self paletteView];
      [paletteView3 paletteHostingWindowSceneDidChangeBounds:self];

      _viewControllerForPalette = [(PKPaletteViewInteraction *)self _viewControllerForPalette];
      paletteView4 = [(PKPaletteViewInteraction *)self paletteView];
      [paletteView4 setPalettePopoverPresentingController:_viewControllerForPalette];

      paletteHostView8 = [(PKPaletteViewInteraction *)self paletteHostView];
      [paletteHostView8 setNeedsLayout];

      paletteHostView9 = [(PKPaletteViewInteraction *)self paletteHostView];
      [paletteHostView9 layoutIfNeeded];

      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      if (WeakRetained)
      {
        v46 = MEMORY[0x1E69DD0A8];
        v47 = objc_loadWeakRetained(&self->_windowScene);
        v48 = [v46 sharedTextEffectsWindowForWindowScene:v47];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__updateForWillRotate_ name:*MEMORY[0x1E69DE5B0] object:0];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel__updateForRotation_ name:*MEMORY[0x1E69DE5A0] object:v48];
      }
    }
  }
}

- (void)setWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_windowScene);

    v6 = MEMORY[0x1E69DE338];
    v7 = MEMORY[0x1E69DE360];
    if (v5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = *v6;
      v10 = objc_loadWeakRetained(&self->_windowScene);
      [defaultCenter removeObserver:self name:v9 object:v10];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = *v7;
      v13 = objc_loadWeakRetained(&self->_windowScene);
      [defaultCenter2 removeObserver:self name:v12 object:v13];

      v14 = objc_loadWeakRetained(&self->_windowScene);
      [v14 _unregisterSceneComponentForKey:@"PKPaletteViewInteractionSceneComponentKey"];
    }

    v15 = objc_storeWeak(&self->_windowScene, obj);

    if (obj)
    {
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = *v6;
      v18 = objc_loadWeakRetained(&self->_windowScene);
      [defaultCenter3 addObserver:self selector:sel__sceneDidActivateNotification_ name:v17 object:v18];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      v20 = *v7;
      v21 = objc_loadWeakRetained(&self->_windowScene);
      [defaultCenter4 addObserver:self selector:sel__sceneWillEnterForegroundNotification_ name:v20 object:v21];

      v22 = objc_loadWeakRetained(&self->_windowScene);
      [v22 _registerSceneComponent:self forKey:@"PKPaletteViewInteractionSceneComponentKey"];
    }
  }
}

- (BOOL)isActive
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v5 & 1) != 0 || (_UIApplicationIsExtension())
  {
    return 1;
  }

  windowScene = [(PKPaletteViewInteraction *)self windowScene];
  if (windowScene)
  {
    windowScene2 = [(PKPaletteViewInteraction *)self windowScene];
    v6 = [windowScene2 activationState] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPaletteVisible
{
  paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
  isPaletteVisible = [paletteHostView isPaletteVisible];

  return isPaletteVisible;
}

- (void)showPaletteViewAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  view = [(PKPaletteViewInteraction *)self view];
  if (view)
  {
    paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
    [paletteHostView setHidden:0];

    window = [view window];
    [window bounds];
    [(PKPaletteViewInteraction *)self setTextEffectsWindowFrame:?];

    [(PKPaletteViewInteraction *)self _updateSceneBounds];
    [(PKPaletteViewInteraction *)self _setPaletteVisible:1 animated:animatedCopy completion:completionCopy];
  }
}

- (void)_setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaletteViewInteraction__setPaletteVisible_animated_completion___block_invoke;
  aBlock[3] = &unk_1E82DA140;
  v15 = visibleCopy;
  animatedCopy = animated;
  aBlock[4] = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  if (visibleCopy)
  {
    hostingWindow = [(PKPaletteViewInteraction *)self hostingWindow];
  }

  else
  {
    hostingWindow = 0;
  }

  paletteView = [(PKPaletteViewInteraction *)self paletteView];
  [paletteView set_hostingWindow:hostingWindow];

  if (visibleCopy)
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

- (void)hidePaletteViewAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  paletteView = [(PKPaletteViewInteraction *)self paletteView];
  [paletteView dismissPalettePopoverWithCompletion:0];

  [(PKPaletteViewInteraction *)self _setPaletteVisible:0 animated:animatedCopy completion:completionCopy];
}

- (BOOL)_shouldDeferPaletteVisibilityUpdate
{
  _traitCollectionForHostingWindow = [(PKPaletteViewInteraction *)self _traitCollectionForHostingWindow];
  paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
  traitCollection = [paletteHostView traitCollection];

  horizontalSizeClass = [_traitCollectionForHostingWindow horizontalSizeClass];
  if (horizontalSizeClass == [traitCollection horizontalSizeClass])
  {
    verticalSizeClass = [_traitCollectionForHostingWindow verticalSizeClass];
    v8 = verticalSizeClass != [traitCollection verticalSizeClass];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PKPaletteViewInteraction *)self _isCompactHostedWindow]|| v8;

  return v9 & 1;
}

- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset
{
  resetCopy = reset;
  changeCopy = change;
  delegateCopy = delegate;
  delegate = [(PKPaletteViewInteraction *)self delegate];
  [delegate keyboardSceneDelegate:delegateCopy inputViewSetVisibilityDidChange:changeCopy includedReset:resetCopy];
}

- (void)_sceneDidActivateNotification:(id)notification
{
  [(PKPaletteViewInteraction *)self _updateSceneBounds];
  delegate = [(PKPaletteViewInteraction *)self delegate];
  [delegate paletteViewInteractionDidActivate:self];
}

- (void)_sceneWillEnterForegroundNotification:(id)notification
{
  delegate = [(PKPaletteViewInteraction *)self delegate];
  [delegate paletteViewInteractionWillEnterForeground:self];
}

- (void)_updateForWillRotate:(id)rotate
{
  object = [rotate object];
  view = [object view];
  window = [view window];

  windowScene = [window windowScene];
  view2 = [(PKPaletteViewInteraction *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];

  if (windowScene == windowScene2)
  {
    paletteView = [(PKPaletteViewInteraction *)self paletteView];
    [paletteView dismissPalettePopoverWithCompletion:0];

    [window frame];
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

- (void)_updateForRotation:(id)rotation
{
  v22 = 0;
  rotationCopy = rotation;
  [(PKPaletteViewInteraction *)self _sceneBoundsForUpdateWithFollowsHostingWindowOut:&v22];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  object = [rotationCopy object];

  [object frame];
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

+ (BOOL)isHostedWindow:(id)window
{
  windowCopy = window;
  NSClassFromString(&cfstr_Uitexteffectsw.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_viewControllerForPalette
{
  paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
  window = [paletteHostView window];
  rootViewController = [window rootViewController];
  childViewControllers = [rootViewController childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (CGRect)_sceneBoundsForUpdateWithFollowsHostingWindowOut:(BOOL *)out
{
  view = [(PKPaletteViewInteraction *)self view];
  window = [view window];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v9)
  {
    view2 = [(PKPaletteViewInteraction *)self view];
    window2 = [view2 window];
    [window2 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = 0;
    if (!out)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  view3 = [(PKPaletteViewInteraction *)self view];
  window3 = [view3 window];
  v23 = [PKPaletteViewInteraction isHostedWindow:window3];

  if (v23)
  {
    [window hostedViewSize];
    v17 = v24;
    [window hostedViewSize];
    v19 = v25;
    v20 = 0;
    v13 = 0.0;
    v15 = 0.0;
    if (!out)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  hostingWindow = [(PKPaletteViewInteraction *)self hostingWindow];
  [hostingWindow bounds];
  v13 = v27;
  v15 = v28;
  v17 = v29;
  v19 = v30;

  v20 = 1;
  if (out)
  {
LABEL_8:
    *out = v20;
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

- (void)_updateUIWithSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(self->_sceneBounds, bounds))
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

    paletteView = [(PKPaletteViewInteraction *)self paletteView];
    [paletteView paletteHostingWindowSceneDidChangeBounds:self];
  }

  [(PKPaletteViewInteraction *)self _updateTraitCollection];
  v13 = objc_opt_class();
  view = [(PKPaletteViewInteraction *)self view];
  window = [view window];
  LODWORD(v13) = [v13 isHostedWindow:window];

  if (v13)
  {
    view2 = [(PKPaletteViewInteraction *)self view];
    window2 = [view2 window];
    [window2 frame];
    v19 = v18;
    [(PKPaletteViewInteraction *)self sceneBounds];
    v21 = v19 - v20 + 10.0;

    paletteView2 = [(PKPaletteViewInteraction *)self paletteView];
    [paletteView2 setPalettePopoverLayoutSceneMargins:{10.0, 10.0, 10.0, v21}];
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
  _traitCollectionForHostingWindow = [(PKPaletteViewInteraction *)self _traitCollectionForHostingWindow];
  [(PKPaletteViewInteraction *)self _updatePaletteTraitCollection:_traitCollectionForHostingWindow];
  -[PKPaletteViewInteraction _updatePalettePopoverWithUIStyle:](self, "_updatePalettePopoverWithUIStyle:", [_traitCollectionForHostingWindow userInterfaceStyle]);
}

- (void)_updatePaletteUserInterfaceStyle:(int64_t)style
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:style];
  paletteHostView = [(PKPaletteViewInteraction *)self paletteHostView];
  _localOverrideTraitCollection = [paletteHostView _localOverrideTraitCollection];

  if (_localOverrideTraitCollection)
  {
    v7 = MEMORY[0x1E69DD1B8];
    v11[0] = _localOverrideTraitCollection;
    v11[1] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = [v7 traitCollectionWithTraitsFromCollections:v8];
  }

  else
  {
    v9 = v4;
  }

  paletteHostView2 = [(PKPaletteViewInteraction *)self paletteHostView];
  [paletteHostView2 _setLocalOverrideTraitCollection:v9];

  -[PKPaletteViewInteraction _updatePalettePopoverWithUIStyle:](self, "_updatePalettePopoverWithUIStyle:", [v9 userInterfaceStyle]);
}

- (void)_updatePaletteTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(PKPaletteViewInteraction *)self textEffectsWindowFrame];
  if (CGRectEqualToRect(v7, *MEMORY[0x1E695F058]))
  {
    -[PKPaletteViewInteraction _updatePaletteUserInterfaceStyle:](self, "_updatePaletteUserInterfaceStyle:", [collectionCopy userInterfaceStyle]);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKPaletteViewInteraction__updatePaletteTraitCollection___block_invoke;
    v5[3] = &unk_1E82D6E70;
    v5[4] = self;
    v6 = collectionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __58__PKPaletteViewInteraction__updatePaletteTraitCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteHostView];
  [v2 _setLocalOverrideTraitCollection:*(a1 + 40)];
}

- (void)_updatePalettePopoverWithUIStyle:(int64_t)style
{
  paletteView = [(PKPaletteViewInteraction *)self paletteView];
  palettePopoverPresentingController = [paletteView palettePopoverPresentingController];
  presentedViewController = [palettePopoverPresentingController presentedViewController];
  [presentedViewController setOverrideUserInterfaceStyle:style];
}

- (BOOL)_isCompactHostedWindow
{
  hostingWindow = [(PKPaletteViewInteraction *)self hostingWindow];
  traitCollection = [hostingWindow traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  view = [(PKPaletteViewInteraction *)self view];
  window = [view window];
  v8 = [PKPaletteViewInteraction isHostedWindow:window];

  v9 = 0;
  if (v8 && horizontalSizeClass != 1)
  {
    view2 = [(PKPaletteViewInteraction *)self view];
    window2 = [view2 window];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v14 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

    if (v14 && ([window2 hostedViewSize], v16 == *MEMORY[0x1E695F060]) && v15 == *(MEMORY[0x1E695F060] + 8))
    {
      [window2 bounds];
    }

    else
    {
      [window2 hostedViewSize];
    }

    v9 = _UIUserInterfaceSizeClassForWidth() == 1;
  }

  return v9;
}

- (id)_traitCollectionForHostingWindow
{
  v28[2] = *MEMORY[0x1E69E9840];
  hostingWindow = [(PKPaletteViewInteraction *)self hostingWindow];
  traitCollection = [hostingWindow traitCollection];

  hostingWindow2 = [(PKPaletteViewInteraction *)self hostingWindow];
  traitCollection2 = [hostingWindow2 traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && ([(PKPaletteViewInteraction *)self _isCompactHostedWindow]|| _UISolariumEnabled()))
  {
    view = [(PKPaletteViewInteraction *)self view];
    window = [view window];

    if ([(PKPaletteViewInteraction *)self _isCompactHostedWindow])
    {
      [window hostedViewSize];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      hostingWindow3 = [(PKPaletteViewInteraction *)self hostingWindow];
      [hostingWindow3 bounds];
      v11 = v15;
      v13 = v16;
    }

    v17 = _UIUserInterfaceSizeClassForWidth();
    paletteView = [(PKPaletteViewInteraction *)self paletteView];
    paletteScaleFactorPolicy = [paletteView paletteScaleFactorPolicy];
    paletteView2 = [(PKPaletteViewInteraction *)self paletteView];
    [paletteScaleFactorPolicy scaleFactorForWindowBounds:paletteView2 paletteView:{0.0, 0.0, v11, v13}];
    v22 = v21;

    if (v22 < 0.65 || _UISolariumEnabled() && v11 <= 375.0 && v17 != 1)
    {
      v17 = 1;
    }

    v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:v17];
    v24 = MEMORY[0x1E69DD1B8];
    v28[0] = traitCollection;
    v28[1] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v26 = [v24 traitCollectionWithTraitsFromCollections:v25];

    traitCollection = v26;
  }

  return traitCollection;
}

- (id)hostingWindow
{
  v39 = *MEMORY[0x1E69E9840];
  view = [(PKPaletteViewInteraction *)self view];
  window = [view window];
  if (![PKPaletteViewInteraction isHostedWindow:window])
  {

    goto LABEL_15;
  }

  windowScene = [(PKPaletteViewInteraction *)self windowScene];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_15:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    windowScene2 = [(PKPaletteViewInteraction *)self windowScene];
    windows = [windowScene2 windows];

    v19 = [windows countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(windows);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        if (![v23 _isTextEffectsWindow])
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [windows countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v20)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      lastObject = v23;

      if (lastObject)
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
      windowScene3 = [(PKPaletteViewInteraction *)self windowScene];
      *buf = 138412290;
      v36 = windowScene3;
      _os_log_fault_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_FAULT, "Unable to find application window in windowScene: %@", buf, 0xCu);
    }

    lastObject = 0;
    goto LABEL_32;
  }

  windowScene4 = [(PKPaletteViewInteraction *)self windowScene];
  v8 = [windowScene4 performSelector:sel__visibleWindows];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    lastObject = 0;
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

          lastObject = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v11);

    if (lastObject)
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

  lastObject = [v9 lastObject];
LABEL_32:

LABEL_33:

  return lastObject;
}

- (id)paletteTapToRadarCommandConfiguration:(id)configuration
{
  view = [(PKPaletteViewInteraction *)self view];
  window = [view window];
  v6 = [PKToolPicker activeToolPickerForWindow:window];

  if ([v6 _isHandwritingToolSelected])
  {
    windowScene = [(PKPaletteViewInteraction *)self windowScene];
    v8 = [PKTextInputInteraction interactionForScene:windowScene];

    debugLogController = [v8 debugLogController];
    sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)debugLogController sharpenerLogWithCurrentContent];

    v11 = objc_alloc_init(PKPaletteTapToRadarConfiguration);
    if ([sharpenerLogWithCurrentContent hasContent])
    {
      v12 = sharpenerLogWithCurrentContent;
    }

    else
    {
      v12 = 0;
    }

    [(PKPaletteTapToRadarConfiguration *)v11 setDebugSharpenerLog:v12];
    _viewControllerForPalette = [(PKPaletteViewInteraction *)self _viewControllerForPalette];
    [(PKPaletteTapToRadarConfiguration *)v11 setPresentationViewController:_viewControllerForPalette];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)textEffectsWindowDidChangeKeyWindowBounds:(id)bounds
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