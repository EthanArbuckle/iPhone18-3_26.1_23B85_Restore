@interface PKTextInputInteraction
+ (BOOL)writeCurrentPencilSharpenerLogsToURL:(id)l fullLogs:(BOOL)logs windowScene:(id)scene;
- (BOOL)_beginGestureIfPossible:(id)possible;
- (BOOL)_handleDrawingGestureTapInElement:(id)element gesture:(id)gesture touch:(id)touch;
- (BOOL)_isTapAwayFromCurrentStrokesAtCanvasViewLocation:(CGPoint)location;
- (BOOL)_shouldAvoidStartingDrawingOnView:(id)view location:(CGPoint)location;
- (BOOL)cursorControllerCustomHighlightFeedbackIsVisible:(id)visible;
- (BOOL)drawingGestureRecognizer:(id)recognizer shouldBeginDrawingWithTouches:(id)touches event:(id)event;
- (BOOL)drawingGestureRecognizer:(id)recognizer shouldFinishGestureWithTouch:(id)touch;
- (BOOL)drawingGestureRecognizerLongPressShouldBegin:(id)begin;
- (BOOL)drawingGestureRecognizerRequiresPastTapToBegin:(id)begin;
- (BOOL)drawingGestureRecognizerRequiresTargetElementToBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isCursorWeak;
- (BOOL)isFloatingKeyboardVisible;
- (CGRect)editingOverlayContainerSceneBounds;
- (NSArray)enabledLanguageIdentifiers;
- (NSString)currentLanguageIdentifier;
- (PKTextInputInteraction)init;
- (UIView)view;
- (id)_findControlFromHitView:(id)view referenceView:(id)referenceView;
- (id)_topLevelHitViewForContainerViewPosition:(CGPoint)position event:(id)event;
- (id)canvasControllerDrawingGestureRecognizer:(id)recognizer;
- (id)canvasControllerPreferredStrokeColor:(id)color animated:(BOOL *)animated;
- (id)containerView:(id)view hitTest:(CGPoint)test withEvent:(id)event;
- (id)paletteControllerDebugSharpenerLog:(id)log;
- (id)windowSceneForController:(id)controller;
- (int64_t)cursorControllerWritingState:(id)state;
- (void)_drawingGestureElementFinderDidFinishWithLocationInContainerView:(CGPoint)view;
- (void)_handlePotentialDebugOverlayGestureAtPoint:(CGPoint)point;
- (void)_notifyTargetElementOfTouches:(id)touches event:(id)event;
- (void)_setDebugControllerAnchorCorner:(unint64_t)corner;
- (void)_setHandwritingInteractionEnabled:(BOOL)enabled;
- (void)_setLastHandwritingEventTimestamp:(double)timestamp;
- (void)_updateCanvasController;
- (void)_updateCanvasStrokeColor;
- (void)_updateContainerView;
- (void)_updateDebugController;
- (void)_updateElementsController;
- (void)_updateGestureRecognizers;
- (void)_updateHandwritingController;
- (void)_updateInteractionEnabled;
- (void)_updateKeyboardSuppressionPolicy;
- (void)_updatePaletteController;
- (void)cancelReplay;
- (void)canvasController:(id)controller drawingDidChange:(id)change;
- (void)canvasControllerCanvasDidFinishAnimatingStrokes:(id)strokes;
- (void)canvasControllerDidCancelStroke:(id)stroke strokeAcceptanceState:(int64_t)state;
- (void)canvasControllerDidEndDrawing:(id)drawing;
- (void)canvasControllerEndedStroke:(id)stroke;
- (void)canvasControllerInProgressStrokeDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)dismissFloatingKeyboard;
- (void)drawingGestureRecognizerDrawingTargetIsDrawingDidChange:(id)change;
- (void)drawingGestureRecognizerLongPressStateDidChange:(id)change;
- (void)drawingGestureStrokeAcceptanceStateDidChange:(id)change;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds;
- (void)elementsControllerLastDiscoveredElementsDidChange:(id)change;
- (void)feedbackControllerShowingCustomFeedbackDidChange:(id)change;
- (void)handwritingControllerDidFinishActiveCommands:(id)commands;
- (void)handwritingControllerWritingStateDidChange:(id)change;
- (void)hoverControllerDidLift:(id)lift;
- (void)presentFloatingKeyboard;
- (void)presentProblemReportingView;
- (void)reportDebugStateDescription:(id)description;
- (void)reserveSpaceController:(id)controller willFocusElement:(id)element;
- (void)reserveSpaceControllerIsActiveChanged:(id)changed;
- (void)reserveSpaceControllerIsPlaceholderVisibleChanged:(id)changed;
- (void)saveInteractionForScene:(id)scene;
- (void)setCurrentLanguageIdentifier:(id)identifier;
- (void)setEditingOverlayContainerSceneBounds:(CGRect)bounds;
- (void)simulateReserveSpaceForTextInputView:(id)view location:(CGPoint)location completion:(id)completion;
- (void)textInputLanguageSelectionControllerDidChangeLanguage:(id)language;
- (void)textInputPaletteControllerFloatingKeyboardWillHide:(id)hide;
- (void)textInputPaletteControllerFloatingKeyboardWillShow:(id)show;
- (void)touchesDetected;
- (void)willMoveToView:(id)view;
@end

@implementation PKTextInputInteraction

- (PKTextInputInteraction)init
{
  v22.receiver = self;
  v22.super_class = PKTextInputInteraction;
  v2 = [(PKTextInputInteraction *)&v22 init];
  if (v2)
  {
    v3 = +[PKTextInputSettings featureLevel];
    *(v2 + 8) = v3 != 0;
    if (v3)
    {
      v4 = objc_alloc_init(PKTextInputCanvasController);
      v5 = *(v2 + 4);
      *(v2 + 4) = v4;

      [(PKTextInputCanvasController *)*(v2 + 4) setDelegate:v2];
      v6 = *(v2 + 4);
      if (v6)
      {
        objc_storeWeak((v6 + 80), v2);
      }

      v7 = objc_alloc_init(PKTextInputFeedbackController);
      v8 = *(v2 + 5);
      *(v2 + 5) = v7;

      [*(v2 + 5) setDelegate:v2];
      v9 = objc_alloc_init(PKTextInputPaletteController);
      v10 = *(v2 + 6);
      *(v2 + 6) = v9;

      [*(v2 + 6) setDelegate:v2];
      v11 = objc_alloc_init(PKTextInputCursorController);
      v12 = *(v2 + 18);
      *(v2 + 18) = v11;

      [*(v2 + 18) setDelegate:v2];
      v13 = [[PKTextInputReserveSpaceController alloc] initWithFeedbackController:*(v2 + 5)];
      v14 = *(v2 + 19);
      *(v2 + 19) = v13;

      [*(v2 + 19) setDelegate:v2];
      v15 = objc_alloc_init(PKTextInputDebugLogController);
      v16 = *(v2 + 14);
      *(v2 + 14) = v15;

      v17 = objc_alloc_init(PKTextInputKeyboardSuppressionPolicyDelegate);
      v18 = *(v2 + 13);
      *(v2 + 13) = v17;

      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      *(v2 + 10) = v20;

      +[PKTextInputAnalyticsController beginObservingSessionAnalytics];
      +[PKPencilTouchDetectionService beginObservingTouchesForDetection];
    }
  }

  return v2;
}

- (void)dealloc
{
  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  [(PKTextInputCanvasController *)_canvasController setDelegate:?];

  _canvasController2 = [(PKTextInputInteraction *)self _canvasController];
  v5 = _canvasController2;
  if (_canvasController2)
  {
    objc_storeWeak((_canvasController2 + 80), 0);
  }

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  [_reserveSpaceController setDelegate:0];

  _containerView = [(PKTextInputInteraction *)self _containerView];
  v8 = _containerView;
  if (_containerView)
  {
    objc_storeWeak((_containerView + 408), 0);
  }

  drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  [drawingGestureRecognizer setDelegate:0];

  v10.receiver = self;
  v10.super_class = PKTextInputInteraction;
  [(PKTextInputInteraction *)&v10 dealloc];
}

+ (BOOL)writeCurrentPencilSharpenerLogsToURL:(id)l fullLogs:(BOOL)logs windowScene:(id)scene
{
  logsCopy = logs;
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  sceneCopy = scene;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = [PKTextInputInteraction interactionForScene:sceneCopy];
    debugLogController = [v9 debugLogController];
    sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)debugLogController sharpenerLogWithCurrentContent];

    if (logsCopy)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v19 = 0;
    v10 = [sharpenerLogWithCurrentContent writeToURL:lCopy withContentLevel:v14 excludeEntyIndexes:0 error:&v19];
    v15 = v19;
    v16 = v15;
    if (v10)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      v18 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = lCopy;
        v22 = 2112;
        v23 = v16;
        _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "Error writing pencil sharpener logs to url: %@, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Only available in internal builds.", buf, 2u);
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)willMoveToView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!viewCopy)
  {
    suppressionPolicyDelegate = [MEMORY[0x1E69DCBB8] suppressionPolicyDelegate];
    _keyboardSuppressionPolicyDelegate = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];

    if (suppressionPolicyDelegate == _keyboardSuppressionPolicyDelegate)
    {
      [MEMORY[0x1E69DCBB8] setSuppressionPolicyDelegate:0];
    }
  }

  [(PKTextInputInteraction *)self set_hoverController:0];
  _pencilObserverInteraction = [(PKTextInputInteraction *)self _pencilObserverInteraction];

  if (_pencilObserverInteraction)
  {
    view = [(PKTextInputInteraction *)self view];
    _pencilObserverInteraction2 = [(PKTextInputInteraction *)self _pencilObserverInteraction];
    [view removeInteraction:_pencilObserverInteraction2];

    [(PKTextInputInteraction *)self set_pencilObserverInteraction:0];
  }

  v10 = _os_feature_enabled_impl();
  if (viewCopy && v10)
  {
    if (!self->__pencilSqueezeInteraction)
    {
      window = [viewCopy window];
      windowScene = [window windowScene];
      v13 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];
      v14 = v13;
      v15 = v13 ? v13 : objc_alloc_init(PKPencilSqueezeInteraction);
      pencilSqueezeInteraction = self->__pencilSqueezeInteraction;
      self->__pencilSqueezeInteraction = v15;

      if (self->__pencilSqueezeInteraction)
      {
        v24 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->__pencilSqueezeInteraction;
          v26 = 134218243;
          v27 = v25;
          v28 = 2113;
          v29 = viewCopy;
          _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Adding pencil squeeze interaction: %p, to view: %{private}@", &v26, 0x16u);
        }

        [viewCopy addInteraction:self->__pencilSqueezeInteraction];
      }
    }
  }

  else if (!viewCopy)
  {
    if (self->__pencilSqueezeInteraction)
    {
      view2 = [(PKTextInputInteraction *)self view];
      interactions = [view2 interactions];
      v18 = [interactions indexOfObject:self->__pencilSqueezeInteraction];

      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          view3 = [(PKTextInputInteraction *)self view];
          v26 = 138477827;
          v27 = view3;
          _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Removing pencil squeeze interaction from view: %{private}@", &v26, 0xCu);
        }

        view4 = [(PKTextInputInteraction *)self view];
        [view4 removeInteraction:self->__pencilSqueezeInteraction];

        v22 = self->__pencilSqueezeInteraction;
        self->__pencilSqueezeInteraction = 0;
      }
    }
  }
}

- (void)didMoveToView:(id)view
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (viewCopy)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    if (self->_shouldBeActive)
    {
      v7 = @"On";
    }

    else
    {
      v7 = @"Off";
    }

    *buf = 138412290;
    v39 = v7;
    v8 = "Interaction moved to a view. Should be active: %@";
    v9 = v5;
    v10 = 12;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v8 = "Interaction uninstalled from its view.";
    v9 = v5;
    v10 = 2;
  }

  _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_10:

  if (self->_shouldBeActive)
  {
    window = [viewCopy window];
    windowScene = [window windowScene];
    [(PKTextInputInteraction *)self saveInteractionForScene:windowScene];

    [(PKTextInputInteraction *)self setView:viewCopy];
    view = [(PKTextInputInteraction *)self view];

    if (view)
    {
      v14 = [PKTextInputElementsController alloc];
      view2 = [(PKTextInputInteraction *)self view];
      v16 = [(PKTextInputElementsController *)&v14->super.isa initWithContainerView:view2];
      [(PKTextInputInteraction *)self set_elementsController:v16];

      _elementsController = [(PKTextInputInteraction *)self _elementsController];
      v18 = _elementsController;
      if (_elementsController)
      {
        objc_storeWeak((_elementsController + 32), self);
      }

      v19 = +[PKTextInputLanguageSelectionController sharedInstance];
      [v19 addObserver:self];
    }

    else
    {
      [(PKTextInputInteraction *)self set_elementsController:0];
    }

    if (PK_UIApplicationIsSystemShell_onceToken != -1)
    {
      dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
    }

    v20 = PK_UIApplicationIsSystemShell___result;
    view3 = [(PKTextInputInteraction *)self view];
    v22 = view3;
    if (v20)
    {
      superview = [view3 superview];
      [superview bounds];
      [(PKTextInputInteraction *)self setEditingOverlayContainerSceneBounds:?];
    }

    else
    {
      superview = [view3 window];
      windowScene2 = [superview windowScene];
      coordinateSpace = [windowScene2 coordinateSpace];
      [coordinateSpace bounds];
      [(PKTextInputInteraction *)self setEditingOverlayContainerSceneBounds:?];
    }

    [(PKTextInputInteraction *)self _updateInteractionEnabled];
    [(PKTextInputInteraction *)self _updateGestureRecognizers];
    [(PKTextInputInteraction *)self _updateElementsController];
    [(PKTextInputInteraction *)self _updatePaletteController];
    [(PKTextInputInteraction *)self _updateContainerView];
    if (viewCopy)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__PKTextInputInteraction_didMoveToView___block_invoke;
      block[3] = &unk_1E82D69B8;
      objc_copyWeak(&v37, buf);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      window2 = [viewCopy window];
      screen = [window2 screen];
      displayIdentity = [screen displayIdentity];
      expectsSecureRendering = [displayIdentity expectsSecureRendering];

      v30 = _PKSignpostLog();
      if (os_signpost_enabled(v30))
      {
        *v35 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v30, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Prewarm text input block", "", v35, 2u);
      }

      v31 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v35 = 0;
        _os_log_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_INFO, "BEGIN Prewarm text input block", v35, 2u);
      }

      v32 = dispatch_get_global_queue(25, 0);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __40__PKTextInputInteraction_didMoveToView___block_invoke_32;
      v33[3] = &__block_descriptor_33_e5_v8__0l;
      v34 = expectsSecureRendering;
      dispatch_async(v32, v33);

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

void __40__PKTextInputInteraction_didMoveToView___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_INFO, "Checking if hover is supported", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PKTextInputInteraction_didMoveToView___block_invoke_26;
  v9[3] = &unk_1E82D7C88;
  objc_copyWeak(&v10, (a1 + 32));
  [PKHoverSettings checkIfHoverIsSupported:v9];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E69DCBB8];
    v6 = [WeakRetained _keyboardSuppressionPolicyDelegate];
    [v5 setSuppressionPolicyDelegate:v6];

    v7 = [v4 _keyboardSuppressionPolicyDelegate];
    [v7 updateKeyboardSuppressionPolicy];

    v8 = [v4 _paletteController];
    [v8 updateFirstResponderVisibility];
  }

  objc_destroyWeak(&v10);
}

void __40__PKTextInputInteraction_didMoveToView___block_invoke_26(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109120;
    v15[1] = a2;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "Hover supported reply: %d", v15, 8u);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained view];

    if (v6)
    {
      v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "Adding Hover interaction and controller", v15, 2u);
      }

      v8 = [[PKPencilObserverInteraction alloc] initWithDelegate:?];
      v9 = WeakRetained[24];
      WeakRetained[24] = v8;

      v10 = [WeakRetained view];
      [v10 addInteraction:WeakRetained[24]];

      v11 = [WeakRetained _containerView];
      if (v11)
      {
        v12 = v11;
        if (PK_UIApplicationIsSystemShell_onceToken != -1)
        {
          dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
        }

        v13 = PK_UIApplicationIsSystemShell___result;

        if ((v13 & 1) == 0)
        {
          v14 = [[PKTextInputHoverController alloc] initWithDelegate:?];
          [WeakRetained set_hoverController:v14];
        }
      }
    }
  }
}

void __40__PKTextInputInteraction_didMoveToView___block_invoke_32(uint64_t a1)
{
  v2 = _PKSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Prewarm text input work", "", buf, 2u);
  }

  v3 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "BEGIN Prewarm text input work", v12, 2u);
  }

  [PKTextInputCanvasController prewarmFutureCanvasesIfNecessarySecureRendering:?];
  v4 = _PKSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Prewarm text input work", "", v11, 2u);
  }

  v5 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "END Prewarm text input work", v10, 2u);
  }

  v6 = _PKSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Prewarm text input block", "", v9, 2u);
  }

  v7 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "END Prewarm text input block", v8, 2u);
  }
}

- (void)saveInteractionForScene:(id)scene
{
  sceneCopy = scene;
  view = [(PKTextInputInteraction *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v7 = _perSceneTextInputInteraction;
    view2 = [(PKTextInputInteraction *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];
    [v7 removeObjectForKey:windowScene2];
  }

  v11 = sceneCopy;
  if (sceneCopy)
  {
    v12 = _perSceneTextInputInteraction;
    if (!_perSceneTextInputInteraction)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v14 = _perSceneTextInputInteraction;
      _perSceneTextInputInteraction = weakToWeakObjectsMapTable;

      v12 = _perSceneTextInputInteraction;
    }

    [v12 setObject:self forKey:sceneCopy];
    v11 = sceneCopy;
  }
}

- (void)_setHandwritingInteractionEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->__handwritingInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->__handwritingInteractionEnabled = enabled;
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Off";
      if (enabledCopy)
      {
        v6 = @"On";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Changed interaction enabled state to: %@", &v7, 0xCu);
    }

    [(PKTextInputInteraction *)self _updateContainerView];
    [(PKTextInputInteraction *)self _updateCanvasController];
    [(PKTextInputInteraction *)self _updateElementsController];
    [(PKTextInputInteraction *)self _updateHandwritingController];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_setLastHandwritingEventTimestamp:(double)timestamp
{
  self->__lastHandwritingEventTimestamp = timestamp;
  [(PKTextInputInteraction *)self _updateCanvasController];
  [(PKTextInputInteraction *)self _updateContainerView];
  [(PKTextInputInteraction *)self _updateInteractionEnabled];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)setEditingOverlayContainerSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(self->_editingOverlayContainerSceneBounds, bounds))
  {
    self->_editingOverlayContainerSceneBounds.origin.x = x;
    self->_editingOverlayContainerSceneBounds.origin.y = y;
    self->_editingOverlayContainerSceneBounds.size.width = width;
    self->_editingOverlayContainerSceneBounds.size.height = height;

    [(PKTextInputInteraction *)self _updatePaletteController];
  }
}

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (PK_UIApplicationIsSystemShell_onceToken != -1)
  {
    dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
  }

  if (PK_UIApplicationIsSystemShell___result)
  {
    v8 = height;
  }

  else
  {
    v8 = width;
  }

  if (PK_UIApplicationIsSystemShell___result)
  {
    height = width;
  }

  [(PKTextInputInteraction *)self setEditingOverlayContainerSceneBounds:x, y, v8, height];
  _paletteController = [(PKTextInputInteraction *)self _paletteController];
  [_paletteController editingOverlayContainerDidChangeToSceneBounds:{x, y, v8, height}];
}

- (void)_updateInteractionEnabled
{
  view = [(PKTextInputInteraction *)self view];
  v4 = view != 0;

  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  v6 = _canvasController;
  if (_canvasController && ([*(_canvasController + 96) isDrawing] & 1) != 0)
  {
    isReserveSpaceActive = 1;
  }

  else
  {
    _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
    isReserveSpaceActive = [_reserveSpaceController isReserveSpaceActive];
  }

  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    v11 = [_handwritingController2 writingState] == 1;

    isReserveSpaceActive |= v11;
  }

  if (view && (isReserveSpaceActive & 1) == 0)
  {
    v12 = +[PKTextInputSettings sharedSettings];
    [v12 interactionDisablingDelay];
    v14 = v13;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v16 = v15;
    [(PKTextInputInteraction *)self _lastHandwritingEventTimestamp];
    v4 = v16 - v17 < v14;
  }

  [(PKTextInputInteraction *)self _setHandwritingInteractionEnabled:v4];
  _canvasController2 = [(PKTextInputInteraction *)self _canvasController];
  v19 = _canvasController2;
  if (_canvasController2 && *(_canvasController2 + 65) != v4)
  {
    *(_canvasController2 + 65) = v4;
    [(PKTextInputCanvasController *)_canvasController2 _updateCanvasView];
  }

  if (v4)
  {
    v20 = +[PKTextInputSettings sharedSettings];
    [v20 interactionDisablingDelay];
    v22 = v21;

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateInteractionEnabled object:0];

    [(PKTextInputInteraction *)self performSelector:sel__updateInteractionEnabled withObject:0 afterDelay:v22 + 0.1];
  }
}

- (void)_updateGestureRecognizers
{
  view = [(PKTextInputInteraction *)self view];

  drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];

  if (!view || drawingGestureRecognizer)
  {
    if (!view && drawingGestureRecognizer)
    {
      drawingGestureRecognizer2 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      [drawingGestureRecognizer2 setDelegate:0];

      view2 = [(PKTextInputInteraction *)self view];
      drawingGestureRecognizer3 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      [view2 removeGestureRecognizer:drawingGestureRecognizer3];

      [(PKTextInputInteraction *)self setDrawingGestureRecognizer:0];
    }
  }

  else
  {
    v5 = objc_alloc_init(PKTextInputDrawingGestureRecognizer);
    [(PKTextInputInteraction *)self setDrawingGestureRecognizer:v5];
    [(PKTextInputDrawingGestureRecognizer *)v5 setDelegate:self];
    view3 = [(PKTextInputInteraction *)self view];
    [view3 addGestureRecognizer:v5];
  }

  view4 = [(PKTextInputInteraction *)self view];
  if (view4)
  {
    reserveSpaceController = [(PKTextInputInteraction *)self reserveSpaceController];
    isReserveSpaceActive = [reserveSpaceController isReserveSpaceActive];
  }

  else
  {
    isReserveSpaceActive = 0;
  }

  _touchDetectionGestureRecognizer = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];

  if (!isReserveSpaceActive || _touchDetectionGestureRecognizer)
  {
    if (_touchDetectionGestureRecognizer)
    {
      v16 = isReserveSpaceActive;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      view5 = [(PKTextInputInteraction *)self view];
      _touchDetectionGestureRecognizer2 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
      [view5 removeGestureRecognizer:_touchDetectionGestureRecognizer2];

      _touchDetectionGestureRecognizer3 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
      [_touchDetectionGestureRecognizer3 setDelegate:0];

      [(PKTextInputInteraction *)self set_touchDetectionGestureRecognizer:0];
    }
  }

  else
  {
    v14 = objc_alloc_init(PKTextInputTouchDetectionGestureRecognizer);
    [(PKTextInputTouchDetectionGestureRecognizer *)v14 setDelegate:self];
    [(PKTextInputInteraction *)self set_touchDetectionGestureRecognizer:v14];
    view6 = [(PKTextInputInteraction *)self view];
    [view6 addGestureRecognizer:v14];
  }

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)_updateContainerView
{
  v52[4] = *MEMORY[0x1E69E9840];
  view = [(PKTextInputInteraction *)self view];

  _containerView = [(PKTextInputInteraction *)self _containerView];

  if (view && !_containerView)
  {
    v47 = view;
    v5 = [PKTContainerView alloc];
    v6 = [(PKTContainerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setHidden:1];
    if (v6)
    {
      objc_storeWeak(v6 + 51, self);
    }

    [(PKTextInputInteraction *)self set_containerView:v6];
    view2 = [(PKTextInputInteraction *)self view];
    [view2 addSubview:v6];

    topAnchor = [v6 topAnchor];
    view3 = [(PKTextInputInteraction *)self view];
    topAnchor2 = [view3 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[0] = v43;
    bottomAnchor = [v6 bottomAnchor];
    view4 = [(PKTextInputInteraction *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[1] = v39;
    leadingAnchor = [v6 leadingAnchor];
    view5 = [(PKTextInputInteraction *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[2] = v10;
    trailingAnchor = [v6 trailingAnchor];
    view6 = [(PKTextInputInteraction *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
    _containerView = 0;
    view = v47;
    goto LABEL_10;
  }

  if (!view && _containerView)
  {
    _containerView2 = [(PKTextInputInteraction *)self _containerView];
    [_containerView2 removeFromSuperview];

    [(PKTextInputInteraction *)self set_containerView:0];
    goto LABEL_25;
  }

  if (view)
  {
LABEL_10:
    _containerView3 = [(PKTextInputInteraction *)self _containerView];
    isHidden = [_containerView3 isHidden];

    _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
    if (_handwritingController)
    {
      v20 = _handwritingController;
      _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
      writingState = [_handwritingController2 writingState];

      if (writingState == 1)
      {
        v24 = 1;
        goto LABEL_17;
      }

      if (writingState)
      {
        v24 = 0;
        goto LABEL_21;
      }
    }

    canvasController = [(PKTextInputInteraction *)self canvasController];
    if (canvasController)
    {
      v24 = canvasController[64];
    }

    else
    {
      v24 = 0;
    }

LABEL_17:
    if (v24 & isHidden)
    {
      v25 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        _handwritingController3 = [(PKTextInputInteraction *)self _handwritingController];
        if (_handwritingController3)
        {
          v31 = @"Y";
        }

        else
        {
          v31 = @"N";
        }

        _handwritingController4 = [(PKTextInputInteraction *)self _handwritingController];
        v33 = PKTextInputDescriptionForWritingState([_handwritingController4 writingState]);
        *buf = 138412546;
        v49 = v31;
        v50 = 2112;
        v51 = v33;
        _os_log_debug_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEBUG, "Showing container view. Has handwritingController: %@, writingState: %@", buf, 0x16u);
      }

      _containerView4 = [(PKTextInputInteraction *)self _containerView];
      v27 = _containerView4;
      v28 = 0;
LABEL_24:
      [_containerView4 setHidden:v28];

      +[PKTextInputDebugStateIntrospector debugStateDidChange];
      goto LABEL_25;
    }

LABEL_21:
    if ((v24 | isHidden))
    {
      goto LABEL_25;
    }

    v29 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      _handwritingController5 = [(PKTextInputInteraction *)self _handwritingController];
      if (_handwritingController5)
      {
        v35 = @"Y";
      }

      else
      {
        v35 = @"N";
      }

      _handwritingController6 = [(PKTextInputInteraction *)self _handwritingController];
      v37 = PKTextInputDescriptionForWritingState([_handwritingController6 writingState]);
      *buf = 138412546;
      v49 = v35;
      v50 = 2112;
      v51 = v37;
      _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "Hiding container view. Has handwritingController: %@, writingState: %@", buf, 0x16u);
    }

    _containerView4 = [(PKTextInputInteraction *)self _containerView];
    v27 = _containerView4;
    v28 = 1;
    goto LABEL_24;
  }

LABEL_25:
  if ((view != 0) != (_containerView != 0))
  {
    [(PKTextInputInteraction *)self _updateCanvasController];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_updateCanvasController
{
  v36 = *MEMORY[0x1E69E9840];
  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  if (_canvasController)
  {
    v4 = _canvasController[64];
  }

  else
  {
    v4 = 0;
  }

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  isReserveSpaceActive = [_reserveSpaceController isReserveSpaceActive];

  if (isReserveSpaceActive)
  {
    goto LABEL_4;
  }

  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    v9 = _handwritingController;
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController2 writingState];

    if (writingState == 1)
    {
LABEL_4:
      drawingTargetIsDrawing = 1;
      goto LABEL_13;
    }

    if (writingState)
    {
      drawingTargetIsDrawing = 0;
      goto LABEL_13;
    }
  }

  _canvasController2 = [(PKTextInputInteraction *)self _canvasController];
  if (([(PKTextInputCanvasController *)_canvasController2 canvasHasVisibleStrokes]& 1) != 0)
  {
    drawingTargetIsDrawing = 1;
  }

  else
  {
    drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
    drawingTargetIsDrawing = [drawingGestureRecognizer drawingTargetIsDrawing];
  }

LABEL_13:
  _canvasController3 = [(PKTextInputInteraction *)self _canvasController];
  v15 = _canvasController3;
  if (_canvasController3 && *(_canvasController3 + 64) != drawingTargetIsDrawing)
  {
    *(_canvasController3 + 64) = drawingTargetIsDrawing;
    [(PKTextInputCanvasController *)_canvasController3 _updateCanvasView];
  }

  if ((v4 & 1) != drawingTargetIsDrawing)
  {
    [(PKTextInputInteraction *)self _updateContainerView];
  }

  if (!(v4 & 1 | ((drawingTargetIsDrawing & 1) == 0)))
  {
    v17 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      _handwritingController3 = [(PKTextInputInteraction *)self _handwritingController];
      v19 = PKTextInputDescriptionForWritingState([_handwritingController3 writingState]);
      _canvasController4 = [(PKTextInputInteraction *)self _canvasController];
      if ([(PKTextInputCanvasController *)_canvasController4 canvasHasVisibleStrokes])
      {
        v21 = @"Yes";
      }

      else
      {
        v21 = @"No";
      }

      drawingGestureRecognizer2 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      v30 = 138412802;
      if ([drawingGestureRecognizer2 drawingTargetIsDrawing])
      {
        v23 = @"Yes";
      }

      else
      {
        v23 = @"No";
      }

      v31 = v19;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      _os_log_debug_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEBUG, "Showing canvas view. writingState: %@, canvas has strokes: %@, gesture is drawing: %@", &v30, 0x20u);
    }

    view = [(PKTextInputInteraction *)self view];
    [view layoutIfNeeded];
    goto LABEL_25;
  }

  if ((drawingTargetIsDrawing & 1) == 0 && ((v4 ^ 1) & 1) == 0)
  {
    view = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
    {
      _handwritingController4 = [(PKTextInputInteraction *)self _handwritingController];
      v25 = PKTextInputDescriptionForWritingState([_handwritingController4 writingState]);
      _canvasController5 = [(PKTextInputInteraction *)self _canvasController];
      if ([(PKTextInputCanvasController *)_canvasController5 canvasHasVisibleStrokes])
      {
        v27 = @"Yes";
      }

      else
      {
        v27 = @"No";
      }

      drawingGestureRecognizer3 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      v30 = 138412802;
      if ([drawingGestureRecognizer3 drawingTargetIsDrawing])
      {
        v29 = @"Yes";
      }

      else
      {
        v29 = @"No";
      }

      v31 = v25;
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = v29;
      _os_log_debug_impl(&dword_1C7CCA000, view, OS_LOG_TYPE_DEBUG, "Hiding canvas view. writingState: %@, canvas has strokes: %@, gesture is drawing: %@", &v30, 0x20u);
    }

LABEL_25:
  }
}

- (void)_updateHandwritingController
{
  if ([(PKTextInputInteraction *)self _handwritingInteractionEnabled])
  {
    _elementsController = [(PKTextInputInteraction *)self _elementsController];
    v4 = _elementsController != 0;
  }

  else
  {
    v4 = 0;
  }

  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];

  if (!v4 || _handwritingController)
  {
    if (_handwritingController)
    {
      v15 = v4;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
      [_handwritingController2 setDelegate:0];

      [(PKTextInputInteraction *)self set_handwritingController:0];
    }
  }

  else
  {
    v6 = [PKTextInputHandwritingController alloc];
    _canvasController = [(PKTextInputInteraction *)self _canvasController];
    _elementsController2 = [(PKTextInputInteraction *)self _elementsController];
    _feedbackController = [(PKTextInputInteraction *)self _feedbackController];
    _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
    _debugLogController = [(PKTextInputInteraction *)self _debugLogController];
    _cursorController = [(PKTextInputInteraction *)self _cursorController];
    v13 = [(PKTextInputHandwritingController *)v6 initWithCanvasController:_canvasController elementsController:_elementsController2 feedbackController:_feedbackController reserveSpaceController:_reserveSpaceController debugLogController:_debugLogController cursorController:_cursorController];
    [(PKTextInputInteraction *)self set_handwritingController:v13];

    _handwritingController3 = [(PKTextInputInteraction *)self _handwritingController];
    [_handwritingController3 setDelegate:self];
  }

  if (v4 != (_handwritingController != 0))
  {

    [(PKTextInputInteraction *)self _updateContainerView];
  }
}

- (void)_updateElementsController
{
  if (![(PKTextInputInteraction *)self _handwritingInteractionEnabled]|| ([(PKTextInputInteraction *)self view], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    _elementsController = [(PKTextInputInteraction *)self _elementsController];
    [(PKTextInputElementsController *)_elementsController flushDiscoveredElements];
  }

  [(PKTextInputInteraction *)self _updateDebugController];
}

- (void)_updatePaletteController
{
  [(PKTextInputInteraction *)self editingOverlayContainerSceneBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _paletteController = [(PKTextInputInteraction *)self _paletteController];
  [_paletteController setEditingOverlayContainerSceneBounds:{v4, v6, v8, v10}];
}

- (void)_setDebugControllerAnchorCorner:(unint64_t)corner
{
  if (self->__debugControllerAnchorCorner != corner)
  {
    self->__debugControllerAnchorCorner = corner;
    [(PKTextInputInteraction *)self _updateDebugController];
  }
}

- (void)_handlePotentialDebugOverlayGestureAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!os_variant_has_internal_diagnostics())
  {
    return;
  }

  view = [(PKTextInputInteraction *)self view];
  [view bounds];
  MaxX = CGRectGetMaxX(v18);

  view2 = [(PKTextInputInteraction *)self view];
  [view2 bounds];
  MaxY = CGRectGetMaxY(v19);

  if (x > 20.0 || x < 0.0 || y > 20.0 || y < 0.0)
  {
    v11 = MaxX - x <= 20.0;
    if (MaxX - x <= 0.0)
    {
      v11 = 0;
    }

    if (!v11 || y > 20.0)
    {
      v13 = MaxY - y > 0.0;
      if (MaxY - y > 20.0)
      {
        v13 = 0;
      }

      if (x <= 20.0 && v13)
      {
        v10 = 4;
      }

      else
      {
        if (!v11 || !v13)
        {
          v10 = 0;
          v15 = 0.0;
          goto LABEL_20;
        }

        v10 = 8;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v15 = v14;
  [(PKTextInputInteraction *)self _lastDebugCornerEventTimestamp];
  if (v15 - v16 < 0.2)
  {
LABEL_20:
    [(PKTextInputInteraction *)self _setDebugControllerAnchorCorner:v10];
  }

  [(PKTextInputInteraction *)self set_lastDebugCornerEventTimestamp:v15];
}

- (void)_updateDebugController
{
  _debugControllerAnchorCorner = [(PKTextInputInteraction *)self _debugControllerAnchorCorner];
  _debugViewController = [(PKTextInputInteraction *)self _debugViewController];

  if (!_debugControllerAnchorCorner || _debugViewController)
  {
    if (!_debugControllerAnchorCorner && _debugViewController)
    {
      _debugViewController2 = [(PKTextInputInteraction *)self _debugViewController];
      view = [_debugViewController2 view];
      [view removeFromSuperview];

      _debugViewController3 = [(PKTextInputInteraction *)self _debugViewController];
      [_debugViewController3 willMoveToParentViewController:0];

      _debugViewController4 = [(PKTextInputInteraction *)self _debugViewController];
      [_debugViewController4 removeFromParentViewController];

      _debugViewController5 = [(PKTextInputInteraction *)self _debugViewController];
      [_debugViewController5 setIntrospectorDataSource:0];

      _debugStateIntrospector = [(PKTextInputInteraction *)self _debugStateIntrospector];
      [_debugStateIntrospector setDelegate:0];

      [(PKTextInputInteraction *)self set_debugStateIntrospector:0];
      [(PKTextInputInteraction *)self set_debugViewController:0];
    }
  }

  else
  {
    v5 = objc_alloc_init(PKTextInputDebugViewController);
    [(PKTextInputInteraction *)self set_debugViewController:v5];
    [(PKTextInputDebugViewController *)v5 setDelegate:self];
    _debugLogController = [(PKTextInputInteraction *)self _debugLogController];
    [(PKTextInputDebugViewController *)v5 setDebugLogController:_debugLogController];

    view2 = [(PKTextInputDebugViewController *)v5 view];
    view3 = [(PKTextInputInteraction *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    [view2 setAutoresizingMask:18];
    view4 = [(PKTextInputInteraction *)self view];
    [view4 addSubview:view2];

    v10 = [[PKTextInputDebugStateIntrospector alloc] initWithInteraction:self];
    [(PKTextInputInteraction *)self set_debugStateIntrospector:v10];

    _debugStateIntrospector2 = [(PKTextInputInteraction *)self _debugStateIntrospector];
    [_debugStateIntrospector2 setDelegate:v5];

    _debugStateIntrospector3 = [(PKTextInputInteraction *)self _debugStateIntrospector];
    [(PKTextInputDebugViewController *)v5 setIntrospectorDataSource:_debugStateIntrospector3];

    _debugViewController6 = [(PKTextInputInteraction *)self _debugViewController];
    [_debugViewController6 setNeedsReloadDebugStateData];
  }

  elementsController = [(PKTextInputInteraction *)self elementsController];
  _debugViewController7 = [(PKTextInputInteraction *)self _debugViewController];
  [_debugViewController7 setElementsController:elementsController];

  _debugControllerAnchorCorner2 = [(PKTextInputInteraction *)self _debugControllerAnchorCorner];
  _debugViewController8 = [(PKTextInputInteraction *)self _debugViewController];
  [_debugViewController8 setStatusViewAnchorCorner:_debugControllerAnchorCorner2];
}

- (id)paletteControllerDebugSharpenerLog:(id)log
{
  debugLogController = [(PKTextInputInteraction *)self debugLogController];
  sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)debugLogController sharpenerLogWithCurrentContent];

  return sharpenerLogWithCurrentContent;
}

- (void)textInputPaletteControllerFloatingKeyboardWillHide:(id)hide
{
  _keyboardSuppressionPolicyDelegate = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [_keyboardSuppressionPolicyDelegate setIsFloatingKeyboardVisible:0];
}

- (void)textInputPaletteControllerFloatingKeyboardWillShow:(id)show
{
  _cursorController = [(PKTextInputInteraction *)self _cursorController];
  [_cursorController makeCursorStrong];

  _keyboardSuppressionPolicyDelegate = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [_keyboardSuppressionPolicyDelegate setIsFloatingKeyboardVisible:1];
}

- (id)canvasControllerDrawingGestureRecognizer:(id)recognizer
{
  [(PKTextInputInteraction *)self _updateGestureRecognizers];

  return [(PKTextInputInteraction *)self drawingGestureRecognizer];
}

- (void)canvasControllerCanvasDidFinishAnimatingStrokes:(id)strokes
{
  strokesCopy = strokes;
  handwritingController = [(PKTextInputInteraction *)self handwritingController];
  writingState = [handwritingController writingState];

  v6 = strokesCopy;
  if (strokesCopy && !writingState)
  {
    [strokesCopy[12] removeStuckStrokesAndSimulateCrashIfNecessary];
    v6 = strokesCopy;
  }
}

- (void)canvasControllerDidEndDrawing:(id)drawing
{
  v4 = MEMORY[0x1E695DF00];
  drawingCopy = drawing;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  [_handwritingController canvasControllerDidEndDrawing:drawingCopy];

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  [_reserveSpaceController setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];

  [(PKTextInputInteraction *)self _updateInteractionEnabled];
}

- (void)canvasControllerInProgressStrokeDidChange:(id)change
{
  changeCopy = change;
  _hoverController = [(PKTextInputInteraction *)self _hoverController];
  [(PKTextInputHoverController *)_hoverController didReceiveNormalTouch:?];

  drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  if ([drawingGestureRecognizer strokeAcceptanceState] == 1)
  {
    canvasController = [(PKTextInputInteraction *)self canvasController];
    if (canvasController)
    {
      v7 = canvasController;
      isDrawing = [*(canvasController + 96) isDrawing];

      if (!isDrawing)
      {
        goto LABEL_6;
      }

      drawingGestureRecognizer = [(PKTextInputInteraction *)self _handwritingController];
      [drawingGestureRecognizer canvasControllerInProgressStrokeDidChange:changeCopy];
    }
  }

LABEL_6:
}

- (void)canvasControllerDidCancelStroke:(id)stroke strokeAcceptanceState:(int64_t)state
{
  strokeCopy = stroke;
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  [_handwritingController canvasControllerDidCancelStroke:strokeCopy strokeAcceptanceState:state];

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  [_reserveSpaceController setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)canvasControllerEndedStroke:(id)stroke
{
  v4 = MEMORY[0x1E695DF00];
  strokeCopy = stroke;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  [_handwritingController canvasControllerEndedStroke:strokeCopy];

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  [_reserveSpaceController setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)canvasController:(id)controller drawingDidChange:(id)change
{
  changeCopy = change;
  controllerCopy = controller;
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  [_handwritingController canvasController:controllerCopy drawingDidChange:changeCopy];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (id)canvasControllerPreferredStrokeColor:(id)color animated:(BOOL *)animated
{
  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  defaultStrokeColor = [(PKTextInputCanvasController *)_canvasController defaultStrokeColor];

  handwritingController = [(PKTextInputInteraction *)self handwritingController];
  [handwritingController strokeAlphaOverride];
  v10 = v9;

  drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  if ([drawingGestureRecognizer strokeAcceptanceState])
  {
  }

  else
  {
    _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController writingState];

    if (!writingState)
    {
      v14 = 0;
      v10 = 0.2;
      goto LABEL_8;
    }
  }

  if (v10 >= 1.0)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = 1;
LABEL_8:
  v15 = [defaultStrokeColor colorWithAlphaComponent:v10];

  defaultStrokeColor = v15;
LABEL_9:
  *animated = v14;

  return defaultStrokeColor;
}

- (void)_updateCanvasStrokeColor
{
  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  [(PKTextInputCanvasController *)_canvasController reloadPreferredStrokeColor];
}

- (BOOL)isCursorWeak
{
  cursorController = [(PKTextInputInteraction *)self cursorController];
  isCursorWeak = [cursorController isCursorWeak];

  return isCursorWeak;
}

- (BOOL)cursorControllerCustomHighlightFeedbackIsVisible:(id)visible
{
  _feedbackController = [(PKTextInputInteraction *)self _feedbackController];
  showingCustomFeedback = [_feedbackController showingCustomFeedback];

  if (!showingCustomFeedback)
  {
    return 0;
  }

  _feedbackController2 = [(PKTextInputInteraction *)self _feedbackController];
  feedbackType = [_feedbackController2 feedbackType];

  return (feedbackType - 1) < 2;
}

- (int64_t)cursorControllerWritingState:(id)state
{
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController2 writingState];
  }

  else
  {
    writingState = 0;
  }

  return writingState;
}

- (id)windowSceneForController:(id)controller
{
  _containerView = [(PKTextInputInteraction *)self _containerView];
  window = [_containerView window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)hoverControllerDidLift:(id)lift
{
  v4 = +[PKHoverSettings sharedSettings];
  scribbleCommitOnLift = [v4 scribbleCommitOnLift];

  if (scribbleCommitOnLift)
  {
    _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
    [_handwritingController quickCommitIfPossible];
  }
}

- (void)feedbackControllerShowingCustomFeedbackDidChange:(id)change
{
  _cursorController = [(PKTextInputInteraction *)self _cursorController];
  [_cursorController customHighlightFeedbackVisibilityDidChange];
}

- (void)handwritingControllerWritingStateDidChange:(id)change
{
  v4 = MEMORY[0x1E695DF00];
  changeCopy = change;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  writingState = [changeCopy writingState];

  _paletteController = [(PKTextInputInteraction *)self _paletteController];
  [_paletteController _setWritingStateActive:writingState == 1];

  _cursorController = [(PKTextInputInteraction *)self _cursorController];
  [_cursorController writingStateDidChange];

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
}

- (void)handwritingControllerDidFinishActiveCommands:(id)commands
{
  _keyboardSuppressionPolicyDelegate = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [_keyboardSuppressionPolicyDelegate updateKeyboardSuppressionPolicy];
}

- (void)elementsControllerLastDiscoveredElementsDidChange:(id)change
{
  _debugViewController = [(PKTextInputInteraction *)self _debugViewController];
  [_debugViewController setNeedsReloadTargetsVisualization];
}

- (id)containerView:(id)view hitTest:(CGPoint)test withEvent:(id)event
{
  viewCopy = view;
  eventCopy = event;
  v9 = eventCopy;
  if (eventCopy && [eventCopy type] != 11)
  {
    _hoverController = [(PKTextInputInteraction *)self _hoverController];
    [(PKTextInputHoverController *)_hoverController didReceiveNormalTouch:?];
  }

  if (![v9 PK_isEventFromPencil])
  {
LABEL_7:
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v11 = +[PKTextInputSettings sharedSettings];
  if ([v11 isScribbleActive])
  {
    _containerView = [(PKTextInputInteraction *)self _containerView];
    isHidden = [_containerView isHidden];

    if (!isHidden)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v9)
  {
LABEL_10:
    if ([v9 PK_isEventFromPencil])
    {
      goto LABEL_13;
    }

    handwritingController = [(PKTextInputInteraction *)self handwritingController];
    writingState = [handwritingController writingState];

    if (writingState != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    _containerView2 = [(PKTextInputInteraction *)self _containerView];
    goto LABEL_14;
  }

LABEL_13:
  _containerView2 = 0;
LABEL_14:

  return _containerView2;
}

- (id)_topLevelHitViewForContainerViewPosition:(CGPoint)position event:(id)event
{
  y = position.y;
  x = position.x;
  v39 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  view = [(PKTextInputInteraction *)self view];
  window = [view window];

  windowScene = [window windowScene];
  _visibleWindows = [windowScene _visibleWindows];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = _visibleWindows;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v35;
    v17 = -1.79769313e308;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        _containerView = [(PKTextInputInteraction *)self _containerView];
        [_containerView PK_convertPoint:v19 toView:{x, y}];
        v22 = v21;
        v24 = v23;

        v25 = [v19 hitTest:0 withEvent:{v22, v24}];
        v26 = v25;
        if (v25)
        {
          window2 = [v25 window];
          [window2 windowLevel];
          v29 = v28;

          if (v29 > v17)
          {
            v30 = v26;

            window3 = [v30 window];
            [window3 windowLevel];
            v17 = v32;

            v15 = v30;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_shouldAvoidStartingDrawingOnView:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([PKTextInputElementsFinder responderSupportsPencilTextInput:viewCopy]& 1) == 0)
  {
    v7 = [(PKTextInputElementsFinder *)x shouldConsiderTextInputSearchForView:PKTextInputElementsFinder referenceHitPoint:viewCopy referenceCoordSpace:viewCopy];
    v8 = viewCopy;
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      while (1)
      {
        v11 = PKScribbleInteractionInView(v10);
        if ([v11 isElementContainer])
        {
          break;
        }

        superview = [v10 superview];

        v10 = superview;
        if (!superview)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (!v7)
      {
        v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          _pkDebugStringRepresentation = [v9 _pkDebugStringRepresentation];
          v26 = 138412290;
          v27 = _pkDebugStringRepresentation;
          _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because it's a control and is not an editable text view", &v26, 0xCu);
        }

        goto LABEL_26;
      }
    }
  }

  v15 = PKScribbleInteractionInView(viewCopy);
  v16 = v15;
  if (v15 && ([v15 shouldBeginAtLocation:x, y]& 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [viewCopy set_textInputSource:0];
    }

    v23 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      _pkDebugStringRepresentation2 = [viewCopy _pkDebugStringRepresentation];
      v26 = 138412290;
      v27 = _pkDebugStringRepresentation2;
      _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because interaction delegate shouldBeginAtLocation: N", &v26, 0xCu);
    }

    goto LABEL_25;
  }

  v17 = +[PKTextInputSettings sharedSettings];
  enableOnRemoteViews = [v17 enableOnRemoteViews];

  if ((enableOnRemoteViews & 1) == 0)
  {
    window = [viewCopy window];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _pkDebugStringRepresentation3 = [viewCopy _pkDebugStringRepresentation];
        v26 = 138412290;
        v27 = _pkDebugStringRepresentation3;
        _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because it is in a hosted window", &v26, 0xCu);
      }

LABEL_25:
LABEL_26:
      v22 = 1;
      goto LABEL_27;
    }
  }

  v22 = [PKTextInputElementsFinder shouldAvoidElementWithHitView:viewCopy];
LABEL_27:

  return v22;
}

- (BOOL)_isTapAwayFromCurrentStrokesAtCanvasViewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _canvasController = [(PKTextInputInteraction *)self _canvasController];
  renderedStrokesBounds = [(PKTextInputCanvasController *)_canvasController renderedStrokesBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = renderedStrokesBounds;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  if (CGRectIsNull(v22))
  {
    return 0;
  }

  if (x >= renderedStrokesBounds)
  {
    renderedStrokesBounds = renderedStrokesBounds + v10;
    if (x <= renderedStrokesBounds)
    {
      renderedStrokesBounds = x;
    }
  }

  v14 = v8 + v12;
  if (y <= v8 + v12)
  {
    v14 = y;
  }

  if (y >= v8)
  {
    v8 = v14;
  }

  if (renderedStrokesBounds - x >= 0.0)
  {
    v15 = renderedStrokesBounds - x;
  }

  else
  {
    v15 = -(renderedStrokesBounds - x);
  }

  v16 = +[PKTextInputSettings sharedSettings];
  [v16 drawingGestureDetectTapAwayFromCurrentStrokesHorizontalDistance];
  if (v15 > v17)
  {
  }

  else
  {
    if (v8 - y >= 0.0)
    {
      v18 = v8 - y;
    }

    else
    {
      v18 = -(v8 - y);
    }

    v19 = +[PKTextInputSettings sharedSettings];
    [v19 drawingGestureDetectTapAwayFromCurrentStrokesVerticalDistance];
    v21 = v20;

    if (v18 <= v21)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  _touchDetectionGestureRecognizer = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];

  if (_touchDetectionGestureRecognizer != recognizerCopy)
  {
    [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
  }

  return 1;
}

- (void)touchesDetected
{
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  writingState = [_handwritingController writingState];

  if (writingState != 1)
  {
    _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
    [_reserveSpaceController finishReserveSpaceAndInsertWhitespace:0];
  }
}

- (void)reserveSpaceControllerIsActiveChanged:(id)changed
{
  [(PKTextInputInteraction *)self _updateCanvasController];
  [(PKTextInputInteraction *)self _updateInteractionEnabled];
  [(PKTextInputInteraction *)self _updateGestureRecognizers];
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  [_handwritingController reserveSpaceControllerIsActiveChanged];

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  isReserveSpaceActive = [_reserveSpaceController isReserveSpaceActive];

  if (isReserveSpaceActive)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

    [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  }
}

- (void)reserveSpaceControllerIsPlaceholderVisibleChanged:(id)changed
{
  reserveSpaceController = [(PKTextInputInteraction *)self reserveSpaceController];
  isReserveSpacePlaceholderVisible = [reserveSpaceController isReserveSpacePlaceholderVisible];

  if (isReserveSpacePlaceholderVisible)
  {
    cursorController = [(PKTextInputInteraction *)self cursorController];
    [cursorController makeCursorStrong];

    drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
    [drawingGestureRecognizer cancelDrawing];
  }
}

- (void)reserveSpaceController:(id)controller willFocusElement:(id)element
{
  elementCopy = element;
  handwritingController = [(PKTextInputInteraction *)self handwritingController];
  [handwritingController reserveSpaceControllerWillFocusElement:elementCopy];
}

- (BOOL)drawingGestureRecognizer:(id)recognizer shouldBeginDrawingWithTouches:(id)touches event:(id)event
{
  v121 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  touchesCopy = touches;
  eventCopy = event;
  _containerView = [(PKTextInputInteraction *)self _containerView];
  v104 = recognizerCopy;
  [recognizerCopy locationInView:_containerView];
  v13 = v12;
  v15 = v14;

  _containerView2 = [(PKTextInputInteraction *)self _containerView];
  window = [_containerView2 window];
  windowScene = [window windowScene];
  v19 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];

  v20 = eventCopy;
  _containerView3 = [(PKTextInputInteraction *)self _containerView];
  LOBYTE(window) = [v19 _isPointInsidePaletteView:_containerView3 fromView:eventCopy withEvent:{v13, v15}];

  if (window)
  {
    v22 = 0;
    v23 = v104;
    goto LABEL_59;
  }

  [(PKTextInputInteraction *)self set_beginGestureElement:0];
  [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];
  _hoverController = [(PKTextInputInteraction *)self _hoverController];
  [(PKTextInputHoverController *)_hoverController didReceiveNormalTouch:?];

  v102 = v19;
  if (![eventCopy PK_isEventFromPencil])
  {
LABEL_12:
    v32 = 1;
    goto LABEL_13;
  }

  v25 = +[PKTextInputSettings sharedSettings];
  isScribbleActive = [v25 isScribbleActive];

  if ((isScribbleActive & 1) == 0)
  {
    v33 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch = [v104 drawingTouch];
      *buf = 134217984;
      v117 = drawingTouch;
      _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because there is no active locale.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v99 = eventCopy;
  view = [(PKTextInputInteraction *)self view];
  window2 = [view window];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = MEMORY[0x1E69DD0A8];
    windowScene2 = [window2 windowScene];
    v31 = [v29 activeTextEffectsWindowForWindowScene:windowScene2];

    if (v31 != window2)
    {

LABEL_8:
      v32 = 1;
LABEL_31:
      v23 = v104;
LABEL_50:
      v20 = v99;
      goto LABEL_51;
    }
  }

  v100 = touchesCopy;
  anyObject = [touchesCopy anyObject];
  view2 = [anyObject view];
  window3 = [view2 window];
  windowScene3 = [window3 windowScene];

  if (windowScene3)
  {
    view3 = [(PKTextInputInteraction *)self view];
    [v104 locationInView:view3];
    v41 = v40;
    v43 = v42;

    [(PKTextInputInteraction *)self _handlePotentialDebugOverlayGestureAtPoint:v41, v43];
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  touchesCopy = v100;
  obj = v100;
  v44 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (!v44)
  {
    goto LABEL_28;
  }

  v45 = v44;
  v103 = *v113;
  while (2)
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v113 != v103)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v112 + 1) + 8 * i);
      window4 = [v47 window];
      view4 = [(PKTextInputInteraction *)self view];
      window5 = [view4 window];
      v51 = window5;
      if (window4 == window5)
      {
      }

      else
      {
        window6 = [v47 window];
        [window6 windowLevel];
        v54 = v53;
        view5 = [(PKTextInputInteraction *)self view];
        window7 = [view5 window];
        [window7 windowLevel];
        v58 = v57;

        if (v54 > v58)
        {
          v71 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
          v23 = v104;
          if (v72)
          {
            drawingTouch2 = [v104 drawingTouch];
            window8 = [v47 window];
            _pkDebugStringRepresentation = [window8 _pkDebugStringRepresentation];
            *buf = 134218242;
            v117 = drawingTouch2;
            v118 = 2112;
            v119 = _pkDebugStringRepresentation;
            _os_log_impl(&dword_1C7CCA000, v71, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because the touch is on a higher level window %@", buf, 0x16u);
          }

LABEL_49:
          touchesCopy = v100;

          v32 = 1;
          goto LABEL_50;
        }
      }

      window9 = [v47 window];
      windowScene4 = [window9 windowScene];
      view6 = [(PKTextInputInteraction *)self view];
      window10 = [view6 window];
      windowScene5 = [window10 windowScene];

      if (windowScene4 != windowScene5)
      {
        v71 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        v23 = v104;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          drawingTouch3 = [v104 drawingTouch];
          window11 = [v47 window];
          windowScene6 = [window11 windowScene];
          *buf = 134218242;
          v117 = drawingTouch3;
          v118 = 2112;
          v119 = windowScene6;
          _os_log_impl(&dword_1C7CCA000, v71, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because the touch is on a different scene %@", buf, 0x16u);
        }

        goto LABEL_49;
      }
    }

    v45 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
    touchesCopy = v100;
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_28:

  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    v65 = _handwritingController;
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController2 writingState];

    if (writingState)
    {
      v32 = 0;
      goto LABEL_31;
    }
  }

  v76 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:v13, v15];
  if (v76)
  {
    _containerView4 = [(PKTextInputInteraction *)self _containerView];
    v78 = [(PKTextInputInteraction *)self _shouldAvoidStartingDrawingOnView:v76 location:PK_convertRectFromCoordinateSpaceToCoordinateSpace(_containerView4, v76, v13, v15, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8))];

    if (v78)
    {
      v79 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        drawingTouch4 = [v104 drawingTouch];
        _pkDebugStringRepresentation2 = [v76 _pkDebugStringRepresentation];
        *buf = 134218242;
        v117 = drawingTouch4;
        v118 = 2112;
        v119 = _pkDebugStringRepresentation2;
        _os_log_impl(&dword_1C7CCA000, v79, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because should avoid drawing on hit view %@", buf, 0x16u);
      }

      goto LABEL_8;
    }
  }

  view7 = [(PKTextInputInteraction *)self view];
  window12 = [view7 window];
  windowScene7 = [window12 windowScene];
  _visibleWindows = [windowScene7 _visibleWindows];
  v86 = _visibleWindows;
  v87 = MEMORY[0x1E695E0F0];
  if (_visibleWindows)
  {
    v87 = _visibleWindows;
  }

  v88 = v87;

  v89 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v88];
  v20 = v99;
  if (v89)
  {
    if (v89[9] == 1)
    {
      _hoverController2 = [(PKTextInputInteraction *)self _hoverController];
      if (!_hoverController2 || (v91 = _hoverController2, v92 = CACurrentMediaTime() - *(_hoverController2 + 136), v91, v92 >= 0.1))
      {
        v89[9] = 0;
      }
    }
  }

  [(PKTextInputInteraction *)self set_drawingGestureElementFinder:v89];
  v93 = [obj copy];
  _containerView5 = [(PKTextInputInteraction *)self _containerView];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __87__PKTextInputInteraction_drawingGestureRecognizer_shouldBeginDrawingWithTouches_event___block_invoke;
  v105[3] = &unk_1E82D7CD0;
  v106 = v89;
  selfCopy = self;
  v108 = v93;
  v109 = v99;
  v110 = v13;
  v111 = v15;
  v95 = v93;
  v96 = v89;
  [v96 findSingleElementCloseToPosition:_containerView5 coordinateSpace:v105 completion:{v13, v15}];

  v32 = 0;
LABEL_13:
  v23 = v104;
LABEL_51:
  if ([v23 state] == 5 || (objc_msgSend(v23, "state") == 4 ? (v97 = 1) : (v97 = v32), (v97 & 1) != 0))
  {
    v22 = 0;
  }

  else
  {
    [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
    v22 = 1;
  }

  v19 = v102;
LABEL_59:

  return v22;
}

void __87__PKTextInputInteraction_drawingGestureRecognizer_shouldBeginDrawingWithTouches_event___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _drawingGestureElementFinder];

  if (v2 == v3)
  {
    [*(a1 + 40) _notifyTargetElementOfTouches:*(a1 + 48) event:*(a1 + 56)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);

    [v4 _drawingGestureElementFinderDidFinishWithLocationInContainerView:{v5, v6}];
  }
}

- (BOOL)drawingGestureRecognizerRequiresTargetElementToBegin:(id)begin
{
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController2 writingState];

    v7 = writingState == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)drawingGestureRecognizerRequiresPastTapToBegin:(id)begin
{
  beginCopy = begin;
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    v6 = _handwritingController;
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    writingState = [_handwritingController2 writingState];

    if (writingState == 1)
    {
      _containerView = [(PKTextInputInteraction *)self _containerView];
      [beginCopy locationInView:_containerView];
      v9 = [(PKTextInputInteraction *)self _isTapAwayFromCurrentStrokesAtCanvasViewLocation:?];

      goto LABEL_7;
    }

    if (writingState)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)drawingGestureRecognizerLongPressShouldBegin:(id)begin
{
  v4 = +[PKTextInputSettings sharedSettings];
  enableReserveSpace = [v4 enableReserveSpace];

  if (!enableReserveSpace)
  {
    return 0;
  }

  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (_handwritingController)
  {
    _handwritingController2 = [(PKTextInputInteraction *)self _handwritingController];
    v8 = [_handwritingController2 writingState] == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)drawingGestureRecognizerLongPressStateDidChange:(id)change
{
  changeCopy = change;
  longPressState = [changeCopy longPressState];
  if (longPressState > 1)
  {
    if (longPressState == 2)
    {
      _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
      [_reserveSpaceController reserveSpaceWhenReady];
      goto LABEL_9;
    }

    if (longPressState != 3)
    {
      goto LABEL_10;
    }
  }

  else if (longPressState)
  {
    if (longPressState != 1)
    {
      goto LABEL_10;
    }

    _reserveSpaceController = [changeCopy targetElement];
    view = [(PKTextInputInteraction *)self view];
    [changeCopy locationInView:view];
    v8 = v7;
    v10 = v9;

    _reserveSpaceController2 = [(PKTextInputInteraction *)self _reserveSpaceController];
    view2 = [(PKTextInputInteraction *)self view];
    [_reserveSpaceController2 beginIfPossibleWithElement:_reserveSpaceController atLocation:view2 coordinateSpace:{v8, v10}];

    goto LABEL_9;
  }

  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  [_reserveSpaceController cancelReserveSpaceIntro];
LABEL_9:

LABEL_10:
}

- (void)drawingGestureStrokeAcceptanceStateDidChange:(id)change
{
  changeCopy = change;
  strokeAcceptanceState = [changeCopy strokeAcceptanceState];
  if (strokeAcceptanceState == 2)
  {
    [changeCopy cancel];
  }

  else if (strokeAcceptanceState == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
    _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
    _canvasController = [(PKTextInputInteraction *)self _canvasController];
    [_handwritingController canvasControllerDidBeginDrawing:_canvasController];

    _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
    [_reserveSpaceController setCanvasControllerIsDrawing:1];
  }

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)drawingGestureRecognizerDrawingTargetIsDrawingDidChange:(id)change
{
  changeCopy = change;
  [(PKTextInputInteraction *)self _updateCanvasController];
  LODWORD(self) = [changeCopy drawingTargetIsDrawing];

  if (self)
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [mEMORY[0x1E69DCC68] hideMenu];
  }
}

- (BOOL)drawingGestureRecognizer:(id)recognizer shouldFinishGestureWithTouch:(id)touch
{
  v19 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([recognizerCopy strokeAcceptanceState] != 1)
  {
    targetElement = [recognizerCopy targetElement];
    if (!targetElement || [recognizerCopy state] || (objc_msgSend(recognizerCopy, "hasMovedPastTapUseTimestampFromTouch:", 1) & 1) != 0)
    {
      _containerView = [(PKTextInputInteraction *)self _containerView];
      isHidden = [_containerView isHidden];

      if (isHidden)
      {
        v8 = 0;
LABEL_14:

        goto LABEL_15;
      }

      _containerView2 = [(PKTextInputInteraction *)self _containerView];
      [recognizerCopy locationInView:_containerView2];
      v13 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 sendActionsForControlEvents:64];
        v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          _pkDebugStringRepresentation = [v13 _pkDebugStringRepresentation];
          v17 = 138412290;
          v18 = _pkDebugStringRepresentation;
          _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Using drawing gesture as touch up inside control: %@", &v17, 0xCu);
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = [(PKTextInputInteraction *)self _handleDrawingGestureTapInElement:targetElement gesture:recognizerCopy touch:touchCopy];
      v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = targetElement;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Using drawing gesture as tap instead. element: %@", &v17, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)_notifyTargetElementOfTouches:(id)touches event:(id)event
{
  eventCopy = event;
  touchesCopy = touches;
  _drawingGestureElementFinder = [(PKTextInputInteraction *)self _drawingGestureElementFinder];
  foundElement = [_drawingGestureElementFinder foundElement];
  [(PKTextInputElement *)foundElement didTargetElementForTouches:touchesCopy event:eventCopy];
}

- (void)_drawingGestureElementFinderDidFinishWithLocationInContainerView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  _drawingGestureElementFinder = [(PKTextInputInteraction *)self _drawingGestureElementFinder];
  [(PKTextInputInteraction *)self set_drawingGestureElementFinder:0];
  drawingGestureRecognizer = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  foundElement = [_drawingGestureElementFinder foundElement];
  candidateElements = [_drawingGestureElementFinder candidateElements];
  [drawingGestureRecognizer finishedElementFindingWithElement:foundElement candidateElements:candidateElements];

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
  _handwritingController = [(PKTextInputInteraction *)self _handwritingController];
  if (!_handwritingController || (v11 = _handwritingController, -[PKTextInputInteraction _handwritingController](self, "_handwritingController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 writingState], v12, v11, !v13))
  {
    v14 = +[PKTextInputSettings sharedSettings];
    lineBreakOnTapEnabled = [v14 lineBreakOnTapEnabled];

    if (lineBreakOnTapEnabled)
    {
      [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];
      [(PKTextInputInteraction *)self set_beginGestureElement:0];
      foundElement2 = [_drawingGestureElementFinder foundElement];
      isFocused = [(PKTextInputElement *)foundElement2 isFocused];

      if (isFocused)
      {
        foundElement3 = [_drawingGestureElementFinder foundElement];
        [(PKTextInputInteraction *)self set_beginGestureElement:foundElement3];

        _containerView = [(PKTextInputInteraction *)self _containerView];
        _beginGestureElement = [(PKTextInputInteraction *)self _beginGestureElement];
        coordinateSpace = [(PKTextInputElement *)_beginGestureElement coordinateSpace];
        v22 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(_containerView, coordinateSpace, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
        v24 = v23;

        objc_initWeak(&location, self);
        _beginGestureElement2 = [(PKTextInputInteraction *)self _beginGestureElement];
        _cursorController = [(PKTextInputInteraction *)self _cursorController];
        LOBYTE(_beginGestureElement) = [_cursorController isCursorWeak];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __91__PKTextInputInteraction__drawingGestureElementFinderDidFinishWithLocationInContainerView___block_invoke;
        v27[3] = &unk_1E82D7CF8;
        objc_copyWeak(&v28, &location);
        [(PKTextInputElement *)_beginGestureElement2 evaluateLineBreakForTapAtLocation:_beginGestureElement weakCursor:0 allowTrailingWhitespace:v27 completion:v22, v24];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __91__PKTextInputInteraction__drawingGestureElementFinderDidFinishWithLocationInContainerView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained set_beginGestureElementContentForLineBreak:v3];
}

- (BOOL)_beginGestureIfPossible:(id)possible
{
  possibleCopy = possible;
  if ([possibleCopy state])
  {
    v5 = 0;
  }

  else
  {
    [possibleCopy setState:1];
    v5 = [possibleCopy state] == 1;
  }

  [(PKTextInputInteraction *)self set_beginGestureElement:0];
  [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];

  return v5;
}

- (id)_findControlFromHitView:(id)view referenceView:(id)referenceView
{
  viewCopy = view;
  referenceViewCopy = referenceView;
  v7 = viewCopy;
  v8 = v7;
  v9 = 0;
  superview = v7;
  if (v7 && v7 != referenceViewCopy)
  {
    v11 = v7;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v11 superview];

      v9 = 0;
      if (superview)
      {
        v11 = superview;
        if (superview != referenceViewCopy)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    superview = v11;
    v9 = superview;
  }

LABEL_9:

  return v9;
}

- (BOOL)_handleDrawingGestureTapInElement:(id)element gesture:(id)gesture touch:(id)touch
{
  v51 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  gestureCopy = gesture;
  touchCopy = touch;
  if (elementCopy)
  {
    coordinateSpace = [(PKTextInputElement *)elementCopy coordinateSpace];

    if (coordinateSpace)
    {
      _containerView = [(PKTextInputInteraction *)self _containerView];
      [touchCopy PK_locationInView:_containerView];
      v14 = v13;
      v16 = v15;

      v17 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:v14, v16];
      if (!v17)
      {
        goto LABEL_8;
      }

      referenceView = [(PKTextInputElement *)elementCopy referenceView];
      if (!referenceView)
      {
        goto LABEL_8;
      }

      v19 = referenceView;
      referenceView2 = [(PKTextInputElement *)elementCopy referenceView];

      if (v17 == referenceView2)
      {
        goto LABEL_8;
      }

      referenceView3 = [(PKTextInputElement *)elementCopy referenceView];
      LODWORD(_beginGestureElementContentForLineBreak) = [v17 isDescendantOfView:referenceView3];

      if (!_beginGestureElementContentForLineBreak)
      {
LABEL_27:

        goto LABEL_28;
      }

      referenceView4 = [(PKTextInputElement *)elementCopy referenceView];
      v24 = [(PKTextInputInteraction *)self _findControlFromHitView:v17 referenceView:referenceView4];

      if (!v24)
      {
LABEL_8:
        _containerView2 = [(PKTextInputInteraction *)self _containerView];
        coordinateSpace2 = [(PKTextInputElement *)elementCopy coordinateSpace];
        [_containerView2 PK_convertPoint:coordinateSpace2 toCoordinateSpace:{v14, v16}];
        v28 = v27;
        v30 = v29;

        if ([(PKTextInputElement *)elementCopy isFocused])
        {
          v31 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v49 = 138412290;
            v50 = elementCopy;
            _os_log_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_DEFAULT, "Detected a pencil tap on focused element: %@", &v49, 0xCu);
          }

          _cursorController = [(PKTextInputInteraction *)self _cursorController];
          [_cursorController makeCursorStrong];

          _reserveSpaceController3 = +[PKTextInputSettings sharedSettings];
          if ([_reserveSpaceController3 enableReserveSpaceTapForNewlines])
          {
            coordinateSpace3 = [(PKTextInputElement *)elementCopy coordinateSpace];
            if (coordinateSpace3)
            {
              _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
              isReserveSpaceActive = [_reserveSpaceController isReserveSpaceActive];

              if (!isReserveSpaceActive)
              {
                goto LABEL_22;
              }

              _reserveSpaceController2 = [(PKTextInputInteraction *)self _reserveSpaceController];
              LODWORD(coordinateSpace3) = [_reserveSpaceController2 tapPointIsInPlaceholder:{v28, v30}];

              if (!coordinateSpace3)
              {
                goto LABEL_23;
              }

              if (![(PKTextInputInteraction *)self _beginGestureIfPossible:gestureCopy])
              {
LABEL_22:
                LOBYTE(coordinateSpace3) = 0;
LABEL_23:
                mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
                [mEMORY[0x1E69DCC68] hideMenu];
                if (coordinateSpace3 & 1) != 0 || ([(PKTextInputInteraction *)self _hoverController], v42 = objc_claimAutoreleasedReturnValue(), v43 = [(PKTextInputHoverController *)v42 performLineBreakAfterTapIfPossibleForElement:elementCopy location:v28, v30], v42, (v43))
                {
                  LOBYTE(_beginGestureElementContentForLineBreak) = 1;
                }

                else
                {
                  _beginGestureElementContentForLineBreak = [(PKTextInputInteraction *)self _beginGestureElementContentForLineBreak];
                  if (_beginGestureElementContentForLineBreak)
                  {
                    _beginGestureElement = [(PKTextInputInteraction *)self _beginGestureElement];
                    v46 = [(PKTextInputElement *)elementCopy isEquivalentToElement:_beginGestureElement];

                    if (v46)
                    {
                      _beginGestureElementContentForLineBreak2 = [(PKTextInputInteraction *)self _beginGestureElementContentForLineBreak];
                      contentLength = [(PKTextInputElementContent *)_beginGestureElementContentForLineBreak2 contentLength];
                      [(PKTextInputElementContent *)_beginGestureElementContentForLineBreak2 insertTextsToCommit:&unk_1F47C19D0 withAlternatives:0 activePreviewText:contentLength replacingRange:0 completion:&__block_literal_global_22];
                    }

                    LOBYTE(_beginGestureElementContentForLineBreak) = 0;
                  }
                }

                [(PKTextInputInteraction *)self set_beginGestureElement:0];
                [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];

                goto LABEL_27;
              }

              _reserveSpaceController3 = [(PKTextInputInteraction *)self _reserveSpaceController];
              LOBYTE(coordinateSpace3) = 1;
              [_reserveSpaceController3 finishReserveSpaceAndInsertWhitespace:1];
            }
          }

          else
          {
            LOBYTE(coordinateSpace3) = 0;
          }

          goto LABEL_23;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v39 = v38;
        cursorController = [(PKTextInputInteraction *)self cursorController];
        [cursorController setLastElementTapToFocusTimestamp:v39];
      }

      LOBYTE(_beginGestureElementContentForLineBreak) = 0;
      goto LABEL_27;
    }
  }

  LOBYTE(_beginGestureElementContentForLineBreak) = 0;
LABEL_28:

  return _beginGestureElementContentForLineBreak;
}

- (BOOL)isFloatingKeyboardVisible
{
  if (_os_feature_enabled_impl())
  {
    _paletteController = [(PKTextInputInteraction *)self _paletteController];
    _floatingKeyboardController = [_paletteController _floatingKeyboardController];
    isPresentingKeyboard = [(PKPaletteFloatingKeyboardController *)_floatingKeyboardController isPresentingKeyboard];

    return isPresentingKeyboard;
  }

  else
  {
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v8, 2u);
    }

    return 0;
  }
}

- (void)presentFloatingKeyboard
{
  if (_os_feature_enabled_impl())
  {
    if (![(PKTextInputInteraction *)self isFloatingKeyboardVisible])
    {
      _paletteController = [(PKTextInputInteraction *)self _paletteController];
      _floatingKeyboardController = [_paletteController _floatingKeyboardController];
      [(PKPaletteFloatingKeyboardController *)_floatingKeyboardController presentOrDismissIfPresented];
    }
  }

  else
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", buf, 2u);
    }
  }
}

- (void)dismissFloatingKeyboard
{
  if (_os_feature_enabled_impl())
  {
    _paletteController = [(PKTextInputInteraction *)self _paletteController];
    _floatingKeyboardController = [_paletteController _floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)_floatingKeyboardController dismissWithReason:?];
  }

  else
  {
    _paletteController = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(_paletteController, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C7CCA000, _paletteController, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v10, 2u);
    }
  }

  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  scene = [activeKeyboardSceneDelegate scene];
  v7 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:scene];

  paletteView = [v7 paletteView];
  floatingKeyboardController = [paletteView floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)floatingKeyboardController dismissWithReason:?];
}

- (NSArray)enabledLanguageIdentifiers
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[PKTextInputLanguageSelectionController supportedAndEnabledLocaleIdentifiers];
  }

  else
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v5, 2u);
    }

    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (NSString)currentLanguageIdentifier
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[PKTextInputLanguageSelectionController sharedInstance];
    currentLanguageIdentifiers = [v2 currentLanguageIdentifiers];
    firstObject = [currentLanguageIdentifiers firstObject];
  }

  else
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v7, 2u);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (void)setCurrentLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    v4 = +[PKTextInputLanguageSelectionController sharedInstance];
    v5 = [identifierCopy copy];
    [v4 _switchToLanguageIfSupported:v5];
  }

  else
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v6, 2u);
    }
  }
}

- (void)presentProblemReportingView
{
  v13 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl() && (os_variant_has_internal_diagnostics() & 1) != 0)
  {
    view = [(PKTextInputInteraction *)self view];
    window = [view window];
    rootViewController = [window rootViewController];

    if (rootViewController)
    {
      debugLogController = [(PKTextInputInteraction *)self debugLogController];
      sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)debugLogController sharpenerLogWithCurrentContent];

      v8 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:sharpenerLogWithCurrentContent];
      v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
      [v9 setModalPresentationStyle:2];
      [rootViewController presentViewController:v9 animated:1 completion:0];
      v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = rootViewController;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_INFO, "Problem reporting UI presented from view controller %@", &v11, 0xCu);
      }
    }

    else
    {
      sharpenerLogWithCurrentContent = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(sharpenerLogWithCurrentContent, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = 0;
        _os_log_error_impl(&dword_1C7CCA000, sharpenerLogWithCurrentContent, OS_LOG_TYPE_ERROR, "Can't present internal-only problem reporting UI from view controller %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    rootViewController = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(rootViewController, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C7CCA000, rootViewController, OS_LOG_TYPE_INFO, "Feature Flag is not enabled or not an internal build.", &v11, 2u);
    }
  }
}

- (void)textInputLanguageSelectionControllerDidChangeLanguage:(id)language
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v10 = @"UITextInputUpdateKeyboardLanguageKey";
    currentLanguageIdentifier = [(PKTextInputInteraction *)self currentLanguageIdentifier];
    v5 = currentLanguageIdentifier;
    v6 = &stru_1F476BD20;
    if (currentLanguageIdentifier)
    {
      v6 = currentLanguageIdentifier;
    }

    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextInputUpdateKeyboardLanguageNotification" object:self userInfo:v7];
  }

  else
  {
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "Feature Flag is not enabled. Language selection change can't be notified.", v9, 2u);
    }
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGRect)editingOverlayContainerSceneBounds
{
  x = self->_editingOverlayContainerSceneBounds.origin.x;
  y = self->_editingOverlayContainerSceneBounds.origin.y;
  width = self->_editingOverlayContainerSceneBounds.size.width;
  height = self->_editingOverlayContainerSceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateKeyboardSuppressionPolicy
{
  _keyboardSuppressionPolicyDelegate = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [_keyboardSuppressionPolicyDelegate updateKeyboardSuppressionPolicy];
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  view = [(PKTextInputInteraction *)self view];
  if (view)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v9 = *(description + 2);
  v8 = (description + 16);
  v9(descriptionCopy, @"Installed in view", v7);

  if ([(PKTextInputInteraction *)self _handwritingInteractionEnabled])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  (*v8)(descriptionCopy, @"Interaction enabled", v10);
  _containerView = [(PKTextInputInteraction *)self _containerView];
  if ([_containerView isHidden])
  {
    v12 = @"No";
  }

  else
  {
    v12 = @"Yes";
  }

  (*v8)(descriptionCopy, @"Container view visible", v12);

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  [(PKTextInputInteraction *)self _lastHandwritingEventTimestamp];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1fs ago", v14 - v15];
  (*v8)(descriptionCopy, @"Last pencil event", v16);
}

- (void)simulateReserveSpaceForTextInputView:(id)view location:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  completionCopy = completion;
  self->_replayCancelled = 0;
  v11 = [[PKTextInputElement alloc] initWithTextInput:viewCopy];
  objc_initWeak(&location, self);
  _reserveSpaceController = [(PKTextInputInteraction *)self _reserveSpaceController];
  coordinateSpace = [(PKTextInputElement *)v11 coordinateSpace];
  [_reserveSpaceController beginIfPossibleWithElement:v11 atLocation:coordinateSpace coordinateSpace:{x, y}];

  v14 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKTextInputInteraction_Internal__simulateReserveSpaceForTextInputView_location_completion___block_invoke;
  block[3] = &unk_1E82D7D20;
  objc_copyWeak(&v18, &location);
  v17 = completionCopy;
  v15 = completionCopy;
  dispatch_after(v14, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __93__PKTextInputInteraction_Internal__simulateReserveSpaceForTextInputView_location_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && (WeakRetained[9] & 1) == 0)
  {
    v3 = [WeakRetained _reserveSpaceController];
    [v3 reserveSpaceWhenReady];
    v4 = 1;
  }

  else
  {
    v3 = [WeakRetained _reserveSpaceController];
    [v3 cancelReserveSpaceIntro];
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)cancelReplay
{
  self->_replayCancelled = 1;
  handwritingController = [(PKTextInputInteraction *)self handwritingController];
  [handwritingController cleanUpFromCancelledReplay];
}

@end