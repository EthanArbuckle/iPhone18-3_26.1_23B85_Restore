@interface PKPencilSqueezeInteraction
+ (id)_existingInteractionForWindowScene:(id)scene;
+ (id)_perSceneInteractions;
+ (void)_postPencilSettingsDidChangeRemoteNotification;
- (BOOL)_isPointInsidePaletteView:(CGPoint)view fromView:(id)fromView withEvent:(id)event;
- (BOOL)_paletteViewVisible;
- (BOOL)_tiledCanvasViewShouldDiscardTapStroke:(id)stroke;
- (BOOL)pencilSqueezeControllerCanShowPaletteView:(id)view;
- (CGRect)_paletteViewFrameForHoverLocation:(CGPoint)location inView:(id)view;
- (PKPencilSqueezeInteraction)init;
- (PKPencilSqueezeInteractionDelegate)_delegate;
- (UIView)view;
- (void)_setMiniPaletteVisible:(BOOL)visible hoverLocation:(CGPoint)location inView:(id)view;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds;
- (void)pencilSqueezeControllerDidChangePaletteViewVisibility:(id)visibility;
- (void)pencilSqueezeControllerWillChangePaletteViewVisibility:(id)visibility toVisible:(BOOL)visible;
- (void)set_delegate:(id)set_delegate;
- (void)willMoveToView:(id)view;
@end

@implementation PKPencilSqueezeInteraction

+ (id)_perSceneInteractions
{
  if (qword_1ED6A5250 != -1)
  {
    dispatch_once(&qword_1ED6A5250, &__block_literal_global_60);
  }

  v3 = _MergedGlobals_153;

  return v3;
}

void __51__PKPencilSqueezeInteraction__perSceneInteractions__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v1 = _MergedGlobals_153;
  _MergedGlobals_153 = v0;
}

+ (void)_postPencilSettingsDidChangeRemoteNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PKRemotePencilSettingsDidChangePreferredSqueezeActionNotification", 0, 0, 1u);
}

+ (id)_existingInteractionForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (_os_feature_enabled_impl())
  {
    if (sceneCopy)
    {
      v4 = +[PKPencilSqueezeInteraction _perSceneInteractions];
      v5 = [v4 objectForKey:sceneCopy];

      goto LABEL_8;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Feature Flag isn't enabled!", v8, 2u);
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (PKPencilSqueezeInteraction)init
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    bundleIdentifier = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Feature Flag isn't enabled!", buf, 2u);
    }

    goto LABEL_11;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (([bundleIdentifier isEqualToString:@"com.apple.Stickers.UserGenerated.MessagesExtension"]& 1) != 0 || ([bundleIdentifier isEqualToString:@"com.apple.iMessageAppsViewService"]& 1) != 0 || ([bundleIdentifier isEqualToString:@"com.apple.UIKit.ColorPickerUIService"]& 1) != 0 || [bundleIdentifier isEqualToString:@"com.apple.InCallService"])
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v12 = bundleIdentifier;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Can't init interaction in process: %{private}@", buf, 0xCu);
    }

LABEL_11:
    selfCopy = 0;
    goto LABEL_12;
  }

  v10.receiver = self;
  v10.super_class = PKPencilSqueezeInteraction;
  v8 = [(PKPencilSqueezeInteraction *)&v10 init];
  if (v8)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _PKHandleRemotePencilSettingDidChangeNotification, @"PKRemotePencilSettingsDidChangePreferredSqueezeActionNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  self = v8;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (void)set_delegate:(id)set_delegate
{
  v14 = *MEMORY[0x1E69E9840];
  set_delegateCopy = set_delegate;
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  if (WeakRetained != set_delegateCopy)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained(&self->__delegate);
      v8 = PKDebugStringRepresentation(v7);
      v9 = PKDebugStringRepresentation(set_delegateCopy);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Updating delegate from: %@ to %@", &v10, 0x16u);
    }

    objc_storeWeak(&self->__delegate, set_delegateCopy);
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PKRemotePencilSettingsDidChangePreferredSqueezeActionNotification", 0);
  v4.receiver = self;
  v4.super_class = PKPencilSqueezeInteraction;
  [(PKPencilSqueezeInteraction *)&v4 dealloc];
}

- (void)_setMiniPaletteVisible:(BOOL)visible hoverLocation:(CGPoint)location inView:(id)view
{
  visibleCopy = visible;
  [view convertPoint:0 toView:{location.x, location.y}];
  squeezeController = self->_squeezeController;

  [(PKPencilSqueezeController *)squeezeController setMiniPaletteVisible:visibleCopy hoverLocation:v7, v8];
}

- (BOOL)_paletteViewVisible
{
  squeezeController = self->_squeezeController;
  if (squeezeController)
  {
    LOBYTE(squeezeController) = squeezeController->_paletteViewVisible;
  }

  return squeezeController & 1;
}

- (void)willMoveToView:(id)view
{
  v25 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (viewCopy && !WeakRetained)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      window = [viewCopy window];
      windowScene = [window windowScene];
      v21 = 138478083;
      v22 = viewCopy;
      v23 = 2113;
      v24 = windowScene;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Installing interaction on view: %{private}@, scene: %{private}@", &v21, 0x16u);
    }

    window2 = [viewCopy window];
    windowScene2 = [window2 windowScene];

    if (!windowScene2)
    {
      v11 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v21) = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_FAULT, "windowScene must not be nil when installing an interaction.", &v21, 2u);
      }
    }

    v12 = +[PKPencilSqueezeInteraction _perSceneInteractions];
    window3 = [viewCopy window];
    windowScene3 = [window3 windowScene];
    [v12 setObject:self forKey:windowScene3];
LABEL_15:

    goto LABEL_16;
  }

  v15 = objc_loadWeakRetained(&self->_view);

  if (!viewCopy && v15)
  {
    v16 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_loadWeakRetained(&self->_view);
      window4 = [v17 window];
      windowScene4 = [window4 windowScene];
      v21 = 138478083;
      v22 = v17;
      v23 = 2113;
      v24 = windowScene4;
      _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Uninstalling interaction from view: %{private}@, scene: %{private}@", &v21, 0x16u);
    }

    v12 = +[PKPencilSqueezeInteraction _perSceneInteractions];
    window3 = objc_loadWeakRetained(&self->_view);
    windowScene3 = [window3 window];
    v14WindowScene = [windowScene3 windowScene];
    [v12 removeObjectForKey:v14WindowScene];

    goto LABEL_15;
  }

LABEL_16:
  objc_storeWeak(&self->_view, viewCopy);
}

- (void)didMoveToView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained && (v5 = self->_squeezeController, WeakRetained, !v5))
  {
    v10 = objc_loadWeakRetained(&self->_view);
    window = [v10 window];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [PKTextEffectsWindowObserver alloc];
      v13 = objc_loadWeakRetained(&self->_view);
      window2 = [v13 window];
      v15 = [(PKTextEffectsWindowObserver *)v12 initWithTextEffectsWindow:window2];
      p_textEffectsWindowObserver = &self->_textEffectsWindowObserver;
      textEffectsWindowObserver = self->_textEffectsWindowObserver;
      self->_textEffectsWindowObserver = v15;
    }

    else
    {
      p_textEffectsWindowObserver = &self->_textEffectsWindowObserver;
      v13 = self->_textEffectsWindowObserver;
      self->_textEffectsWindowObserver = 0;
    }

    if (*p_textEffectsWindowObserver)
    {
      objc_storeWeak(&(*p_textEffectsWindowObserver)->_delegate, self);
    }

    v18 = objc_loadWeakRetained(&self->_view);
    window3 = [v18 window];
    rootViewController = [window3 rootViewController];

    v20 = [PKPencilSqueezeController alloc];
    v21 = objc_loadWeakRetained(&self->_view);
    v22 = [(PKPencilSqueezeController *)v20 initWithContainerView:v21 rootViewController:rootViewController textEffectsWindowObserver:self->_textEffectsWindowObserver];
    squeezeController = self->_squeezeController;
    self->_squeezeController = v22;

    v24 = self->_squeezeController;
    if (v24)
    {
      objc_storeWeak(&v24->_delegate, self);
    }

    v6 = rootViewController;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_view);
    if (!v6)
    {
      v7 = self->_squeezeController;
      if (!v7)
      {
        return;
      }

      objc_storeWeak(&v7->_delegate, 0);
      v8 = self->_squeezeController;
      self->_squeezeController = 0;

      v9 = self->_textEffectsWindowObserver;
      if (v9)
      {
        objc_storeWeak(&v9->_delegate, 0);
        v6 = self->_textEffectsWindowObserver;
      }

      else
      {
        v6 = 0;
      }

      self->_textEffectsWindowObserver = 0;
    }
  }
}

- (BOOL)_isPointInsidePaletteView:(CGPoint)view fromView:(id)fromView withEvent:(id)event
{
  y = view.y;
  x = view.x;
  fromViewCopy = fromView;
  eventCopy = event;
  if ([(PKPencilSqueezeInteraction *)self _paletteViewVisible])
  {
    [fromViewCopy convertPoint:0 toView:{x, y}];
    v13 = [(PKPencilSqueezeController *)self->_squeezeController hitTest:fromViewCopy fromView:eventCopy withEvent:v11, v12];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v9 = NSStringFromCGRect(v13);
    v10 = 138477827;
    v11 = v9;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "editing overlay container did change to scene bounds: %{private}@", &v10, 0xCu);
  }

  [(PKPencilSqueezeController *)self->_squeezeController keyWindowDidChangeBounds];
}

- (BOOL)pencilSqueezeControllerCanShowPaletteView:(id)view
{
  _delegate = [(PKPencilSqueezeInteraction *)self _delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  _delegate2 = [(PKPencilSqueezeInteraction *)self _delegate];
  v7 = [_delegate2 _pencilSqueezeInteractionCanShowPaletteView:self];

  return v7;
}

- (void)pencilSqueezeControllerWillChangePaletteViewVisibility:(id)visibility toVisible:(BOOL)visible
{
  visibleCopy = visible;
  visibilityCopy = visibility;
  v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Post palette view visibility will change notification", v10, 2u);
  }

  if (!visibilityCopy)
  {
    if (!visibleCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (visibleCopy && (visibilityCopy[216] & 1) == 0)
  {
LABEL_6:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKPencilSqueezeInteractionWillShowPaletteViewNotification" object:self];

    goto LABEL_10;
  }

  if (visibilityCopy[216] && !visibleCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"PKPencilSqueezeInteractionWillHidePaletteViewNotification" object:self];

    self->_paletteViewDismissedTimestamp = CACurrentMediaTime();
  }

LABEL_10:
}

- (void)pencilSqueezeControllerDidChangePaletteViewVisibility:(id)visibility
{
  v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Post palette view visibility did change notification", v6, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPencilSqueezeInteractionDidChangePaletteViewVisibilityNotification" object:self];
}

- (CGRect)_paletteViewFrameForHoverLocation:(CGPoint)location inView:(id)view
{
  if (view)
  {
    [view convertPoint:0 toView:{location.x, location.y}];
  }

  squeezeController = self->_squeezeController;

  v6 = [(PKPencilSqueezeController *)squeezeController paletteViewFrameForHoverLocation:location.y];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)_tiledCanvasViewShouldDiscardTapStroke:(id)stroke
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CACurrentMediaTime() - self->_paletteViewDismissedTimestamp;
  v4 = *&PKSqueezePaletteElapsedTimeSinceVisibleToDiscardTapStrokes;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = v3 < v4;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Should discard tap stroke: %{BOOL}d, elapsedTimeSincePaletteVisible: %.2f", v7, 0x12u);
  }

  return v3 < v4;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (PKPencilSqueezeInteractionDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end