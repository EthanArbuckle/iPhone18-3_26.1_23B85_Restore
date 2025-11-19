@interface PKTextInputInteraction
+ (BOOL)writeCurrentPencilSharpenerLogsToURL:(id)a3 fullLogs:(BOOL)a4 windowScene:(id)a5;
- (BOOL)_beginGestureIfPossible:(id)a3;
- (BOOL)_handleDrawingGestureTapInElement:(id)a3 gesture:(id)a4 touch:(id)a5;
- (BOOL)_isTapAwayFromCurrentStrokesAtCanvasViewLocation:(CGPoint)a3;
- (BOOL)_shouldAvoidStartingDrawingOnView:(id)a3 location:(CGPoint)a4;
- (BOOL)cursorControllerCustomHighlightFeedbackIsVisible:(id)a3;
- (BOOL)drawingGestureRecognizer:(id)a3 shouldBeginDrawingWithTouches:(id)a4 event:(id)a5;
- (BOOL)drawingGestureRecognizer:(id)a3 shouldFinishGestureWithTouch:(id)a4;
- (BOOL)drawingGestureRecognizerLongPressShouldBegin:(id)a3;
- (BOOL)drawingGestureRecognizerRequiresPastTapToBegin:(id)a3;
- (BOOL)drawingGestureRecognizerRequiresTargetElementToBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isCursorWeak;
- (BOOL)isFloatingKeyboardVisible;
- (CGRect)editingOverlayContainerSceneBounds;
- (NSArray)enabledLanguageIdentifiers;
- (NSString)currentLanguageIdentifier;
- (PKTextInputInteraction)init;
- (UIView)view;
- (id)_findControlFromHitView:(id)a3 referenceView:(id)a4;
- (id)_topLevelHitViewForContainerViewPosition:(CGPoint)a3 event:(id)a4;
- (id)canvasControllerDrawingGestureRecognizer:(id)a3;
- (id)canvasControllerPreferredStrokeColor:(id)a3 animated:(BOOL *)a4;
- (id)containerView:(id)a3 hitTest:(CGPoint)a4 withEvent:(id)a5;
- (id)paletteControllerDebugSharpenerLog:(id)a3;
- (id)windowSceneForController:(id)a3;
- (int64_t)cursorControllerWritingState:(id)a3;
- (void)_drawingGestureElementFinderDidFinishWithLocationInContainerView:(CGPoint)a3;
- (void)_handlePotentialDebugOverlayGestureAtPoint:(CGPoint)a3;
- (void)_notifyTargetElementOfTouches:(id)a3 event:(id)a4;
- (void)_setDebugControllerAnchorCorner:(unint64_t)a3;
- (void)_setHandwritingInteractionEnabled:(BOOL)a3;
- (void)_setLastHandwritingEventTimestamp:(double)a3;
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
- (void)canvasController:(id)a3 drawingDidChange:(id)a4;
- (void)canvasControllerCanvasDidFinishAnimatingStrokes:(id)a3;
- (void)canvasControllerDidCancelStroke:(id)a3 strokeAcceptanceState:(int64_t)a4;
- (void)canvasControllerDidEndDrawing:(id)a3;
- (void)canvasControllerEndedStroke:(id)a3;
- (void)canvasControllerInProgressStrokeDidChange:(id)a3;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)dismissFloatingKeyboard;
- (void)drawingGestureRecognizerDrawingTargetIsDrawingDidChange:(id)a3;
- (void)drawingGestureRecognizerLongPressStateDidChange:(id)a3;
- (void)drawingGestureStrokeAcceptanceStateDidChange:(id)a3;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)a3;
- (void)elementsControllerLastDiscoveredElementsDidChange:(id)a3;
- (void)feedbackControllerShowingCustomFeedbackDidChange:(id)a3;
- (void)handwritingControllerDidFinishActiveCommands:(id)a3;
- (void)handwritingControllerWritingStateDidChange:(id)a3;
- (void)hoverControllerDidLift:(id)a3;
- (void)presentFloatingKeyboard;
- (void)presentProblemReportingView;
- (void)reportDebugStateDescription:(id)a3;
- (void)reserveSpaceController:(id)a3 willFocusElement:(id)a4;
- (void)reserveSpaceControllerIsActiveChanged:(id)a3;
- (void)reserveSpaceControllerIsPlaceholderVisibleChanged:(id)a3;
- (void)saveInteractionForScene:(id)a3;
- (void)setCurrentLanguageIdentifier:(id)a3;
- (void)setEditingOverlayContainerSceneBounds:(CGRect)a3;
- (void)simulateReserveSpaceForTextInputView:(id)a3 location:(CGPoint)a4 completion:(id)a5;
- (void)textInputLanguageSelectionControllerDidChangeLanguage:(id)a3;
- (void)textInputPaletteControllerFloatingKeyboardWillHide:(id)a3;
- (void)textInputPaletteControllerFloatingKeyboardWillShow:(id)a3;
- (void)touchesDetected;
- (void)willMoveToView:(id)a3;
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

      v19 = [MEMORY[0x1E695DF00] distantPast];
      [v19 timeIntervalSinceReferenceDate];
      *(v2 + 10) = v20;

      +[PKTextInputAnalyticsController beginObservingSessionAnalytics];
      +[PKPencilTouchDetectionService beginObservingTouchesForDetection];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(PKTextInputInteraction *)self _canvasController];
  [(PKTextInputCanvasController *)v3 setDelegate:?];

  v4 = [(PKTextInputInteraction *)self _canvasController];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak((v4 + 80), 0);
  }

  v6 = [(PKTextInputInteraction *)self _reserveSpaceController];
  [v6 setDelegate:0];

  v7 = [(PKTextInputInteraction *)self _containerView];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak((v7 + 408), 0);
  }

  v9 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  [v9 setDelegate:0];

  v10.receiver = self;
  v10.super_class = PKTextInputInteraction;
  [(PKTextInputInteraction *)&v10 dealloc];
}

+ (BOOL)writeCurrentPencilSharpenerLogsToURL:(id)a3 fullLogs:(BOOL)a4 windowScene:(id)a5
{
  v6 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = [PKTextInputInteraction interactionForScene:v8];
    v12 = [v9 debugLogController];
    v13 = [(PKTextInputDebugLogController *)v12 sharpenerLogWithCurrentContent];

    if (v6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v19 = 0;
    v10 = [v13 writeToURL:v7 withContentLevel:v14 excludeEntyIndexes:0 error:&v19];
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
        v21 = v7;
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

- (void)willMoveToView:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69DCBB8] suppressionPolicyDelegate];
    v6 = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];

    if (v5 == v6)
    {
      [MEMORY[0x1E69DCBB8] setSuppressionPolicyDelegate:0];
    }
  }

  [(PKTextInputInteraction *)self set_hoverController:0];
  v7 = [(PKTextInputInteraction *)self _pencilObserverInteraction];

  if (v7)
  {
    v8 = [(PKTextInputInteraction *)self view];
    v9 = [(PKTextInputInteraction *)self _pencilObserverInteraction];
    [v8 removeInteraction:v9];

    [(PKTextInputInteraction *)self set_pencilObserverInteraction:0];
  }

  v10 = _os_feature_enabled_impl();
  if (v4 && v10)
  {
    if (!self->__pencilSqueezeInteraction)
    {
      v11 = [v4 window];
      v12 = [v11 windowScene];
      v13 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v12];
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
          v29 = v4;
          _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Adding pencil squeeze interaction: %p, to view: %{private}@", &v26, 0x16u);
        }

        [v4 addInteraction:self->__pencilSqueezeInteraction];
      }
    }
  }

  else if (!v4)
  {
    if (self->__pencilSqueezeInteraction)
    {
      v16 = [(PKTextInputInteraction *)self view];
      v17 = [v16 interactions];
      v18 = [v17 indexOfObject:self->__pencilSqueezeInteraction];

      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(PKTextInputInteraction *)self view];
          v26 = 138477827;
          v27 = v20;
          _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Removing pencil squeeze interaction from view: %{private}@", &v26, 0xCu);
        }

        v21 = [(PKTextInputInteraction *)self view];
        [v21 removeInteraction:self->__pencilSqueezeInteraction];

        v22 = self->__pencilSqueezeInteraction;
        self->__pencilSqueezeInteraction = 0;
      }
    }
  }
}

- (void)didMoveToView:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
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
    v11 = [v4 window];
    v12 = [v11 windowScene];
    [(PKTextInputInteraction *)self saveInteractionForScene:v12];

    [(PKTextInputInteraction *)self setView:v4];
    v13 = [(PKTextInputInteraction *)self view];

    if (v13)
    {
      v14 = [PKTextInputElementsController alloc];
      v15 = [(PKTextInputInteraction *)self view];
      v16 = [(PKTextInputElementsController *)&v14->super.isa initWithContainerView:v15];
      [(PKTextInputInteraction *)self set_elementsController:v16];

      v17 = [(PKTextInputInteraction *)self _elementsController];
      v18 = v17;
      if (v17)
      {
        objc_storeWeak((v17 + 32), self);
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
    v21 = [(PKTextInputInteraction *)self view];
    v22 = v21;
    if (v20)
    {
      v23 = [v21 superview];
      [v23 bounds];
      [(PKTextInputInteraction *)self setEditingOverlayContainerSceneBounds:?];
    }

    else
    {
      v23 = [v21 window];
      v24 = [v23 windowScene];
      v25 = [v24 coordinateSpace];
      [v25 bounds];
      [(PKTextInputInteraction *)self setEditingOverlayContainerSceneBounds:?];
    }

    [(PKTextInputInteraction *)self _updateInteractionEnabled];
    [(PKTextInputInteraction *)self _updateGestureRecognizers];
    [(PKTextInputInteraction *)self _updateElementsController];
    [(PKTextInputInteraction *)self _updatePaletteController];
    [(PKTextInputInteraction *)self _updateContainerView];
    if (v4)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__PKTextInputInteraction_didMoveToView___block_invoke;
      block[3] = &unk_1E82D69B8;
      objc_copyWeak(&v37, buf);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v26 = [v4 window];
      v27 = [v26 screen];
      v28 = [v27 displayIdentity];
      v29 = [v28 expectsSecureRendering];

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
      v34 = v29;
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

- (void)saveInteractionForScene:(id)a3
{
  v15 = a3;
  v4 = [(PKTextInputInteraction *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    v7 = _perSceneTextInputInteraction;
    v8 = [(PKTextInputInteraction *)self view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    [v7 removeObjectForKey:v10];
  }

  v11 = v15;
  if (v15)
  {
    v12 = _perSceneTextInputInteraction;
    if (!_perSceneTextInputInteraction)
    {
      v13 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v14 = _perSceneTextInputInteraction;
      _perSceneTextInputInteraction = v13;

      v12 = _perSceneTextInputInteraction;
    }

    [v12 setObject:self forKey:v15];
    v11 = v15;
  }
}

- (void)_setHandwritingInteractionEnabled:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->__handwritingInteractionEnabled != a3)
  {
    v3 = a3;
    self->__handwritingInteractionEnabled = a3;
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Off";
      if (v3)
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

- (void)_setLastHandwritingEventTimestamp:(double)a3
{
  self->__lastHandwritingEventTimestamp = a3;
  [(PKTextInputInteraction *)self _updateCanvasController];
  [(PKTextInputInteraction *)self _updateContainerView];
  [(PKTextInputInteraction *)self _updateInteractionEnabled];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)setEditingOverlayContainerSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_editingOverlayContainerSceneBounds, a3))
  {
    self->_editingOverlayContainerSceneBounds.origin.x = x;
    self->_editingOverlayContainerSceneBounds.origin.y = y;
    self->_editingOverlayContainerSceneBounds.size.width = width;
    self->_editingOverlayContainerSceneBounds.size.height = height;

    [(PKTextInputInteraction *)self _updatePaletteController];
  }
}

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v9 = [(PKTextInputInteraction *)self _paletteController];
  [v9 editingOverlayContainerDidChangeToSceneBounds:{x, y, v8, height}];
}

- (void)_updateInteractionEnabled
{
  v3 = [(PKTextInputInteraction *)self view];
  v4 = v3 != 0;

  v5 = [(PKTextInputInteraction *)self _canvasController];
  v6 = v5;
  if (v5 && ([*(v5 + 96) isDrawing] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(PKTextInputInteraction *)self _reserveSpaceController];
    v7 = [v8 isReserveSpaceActive];
  }

  v9 = [(PKTextInputInteraction *)self _handwritingController];
  if (v9)
  {
    v10 = [(PKTextInputInteraction *)self _handwritingController];
    v11 = [v10 writingState] == 1;

    v7 |= v11;
  }

  if (v3 && (v7 & 1) == 0)
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
  v18 = [(PKTextInputInteraction *)self _canvasController];
  v19 = v18;
  if (v18 && *(v18 + 65) != v4)
  {
    *(v18 + 65) = v4;
    [(PKTextInputCanvasController *)v18 _updateCanvasView];
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
  v3 = [(PKTextInputInteraction *)self view];

  v4 = [(PKTextInputInteraction *)self drawingGestureRecognizer];

  if (!v3 || v4)
  {
    if (!v3 && v4)
    {
      v7 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      [v7 setDelegate:0];

      v8 = [(PKTextInputInteraction *)self view];
      v9 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      [v8 removeGestureRecognizer:v9];

      [(PKTextInputInteraction *)self setDrawingGestureRecognizer:0];
    }
  }

  else
  {
    v5 = objc_alloc_init(PKTextInputDrawingGestureRecognizer);
    [(PKTextInputInteraction *)self setDrawingGestureRecognizer:v5];
    [(PKTextInputDrawingGestureRecognizer *)v5 setDelegate:self];
    v6 = [(PKTextInputInteraction *)self view];
    [v6 addGestureRecognizer:v5];
  }

  v10 = [(PKTextInputInteraction *)self view];
  if (v10)
  {
    v11 = [(PKTextInputInteraction *)self reserveSpaceController];
    v12 = [v11 isReserveSpaceActive];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];

  if (!v12 || v13)
  {
    if (v13)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = [(PKTextInputInteraction *)self view];
      v18 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
      [v17 removeGestureRecognizer:v18];

      v19 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
      [v19 setDelegate:0];

      [(PKTextInputInteraction *)self set_touchDetectionGestureRecognizer:0];
    }
  }

  else
  {
    v14 = objc_alloc_init(PKTextInputTouchDetectionGestureRecognizer);
    [(PKTextInputTouchDetectionGestureRecognizer *)v14 setDelegate:self];
    [(PKTextInputInteraction *)self set_touchDetectionGestureRecognizer:v14];
    v15 = [(PKTextInputInteraction *)self view];
    [v15 addGestureRecognizer:v14];
  }

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)_updateContainerView
{
  v52[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputInteraction *)self view];

  v4 = [(PKTextInputInteraction *)self _containerView];

  if (v3 && !v4)
  {
    v47 = v3;
    v5 = [PKTContainerView alloc];
    v6 = [(PKTContainerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setHidden:1];
    if (v6)
    {
      objc_storeWeak(v6 + 51, self);
    }

    [(PKTextInputInteraction *)self set_containerView:v6];
    v7 = [(PKTextInputInteraction *)self view];
    [v7 addSubview:v6];

    v45 = [v6 topAnchor];
    v46 = [(PKTextInputInteraction *)self view];
    v44 = [v46 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v52[0] = v43;
    v41 = [v6 bottomAnchor];
    v42 = [(PKTextInputInteraction *)self view];
    v40 = [v42 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v52[1] = v39;
    v38 = [v6 leadingAnchor];
    v8 = [(PKTextInputInteraction *)self view];
    v9 = [v8 leadingAnchor];
    v10 = [v38 constraintEqualToAnchor:v9];
    v52[2] = v10;
    v11 = [v6 trailingAnchor];
    v12 = [(PKTextInputInteraction *)self view];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v52[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
    v4 = 0;
    v3 = v47;
    goto LABEL_10;
  }

  if (!v3 && v4)
  {
    v16 = [(PKTextInputInteraction *)self _containerView];
    [v16 removeFromSuperview];

    [(PKTextInputInteraction *)self set_containerView:0];
    goto LABEL_25;
  }

  if (v3)
  {
LABEL_10:
    v17 = [(PKTextInputInteraction *)self _containerView];
    v18 = [v17 isHidden];

    v19 = [(PKTextInputInteraction *)self _handwritingController];
    if (v19)
    {
      v20 = v19;
      v21 = [(PKTextInputInteraction *)self _handwritingController];
      v22 = [v21 writingState];

      if (v22 == 1)
      {
        v24 = 1;
        goto LABEL_17;
      }

      if (v22)
      {
        v24 = 0;
        goto LABEL_21;
      }
    }

    v23 = [(PKTextInputInteraction *)self canvasController];
    if (v23)
    {
      v24 = v23[64];
    }

    else
    {
      v24 = 0;
    }

LABEL_17:
    if (v24 & v18)
    {
      v25 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(PKTextInputInteraction *)self _handwritingController];
        if (v30)
        {
          v31 = @"Y";
        }

        else
        {
          v31 = @"N";
        }

        v32 = [(PKTextInputInteraction *)self _handwritingController];
        v33 = PKTextInputDescriptionForWritingState([v32 writingState]);
        *buf = 138412546;
        v49 = v31;
        v50 = 2112;
        v51 = v33;
        _os_log_debug_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEBUG, "Showing container view. Has handwritingController: %@, writingState: %@", buf, 0x16u);
      }

      v26 = [(PKTextInputInteraction *)self _containerView];
      v27 = v26;
      v28 = 0;
LABEL_24:
      [v26 setHidden:v28];

      +[PKTextInputDebugStateIntrospector debugStateDidChange];
      goto LABEL_25;
    }

LABEL_21:
    if ((v24 | v18))
    {
      goto LABEL_25;
    }

    v29 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(PKTextInputInteraction *)self _handwritingController];
      if (v34)
      {
        v35 = @"Y";
      }

      else
      {
        v35 = @"N";
      }

      v36 = [(PKTextInputInteraction *)self _handwritingController];
      v37 = PKTextInputDescriptionForWritingState([v36 writingState]);
      *buf = 138412546;
      v49 = v35;
      v50 = 2112;
      v51 = v37;
      _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "Hiding container view. Has handwritingController: %@, writingState: %@", buf, 0x16u);
    }

    v26 = [(PKTextInputInteraction *)self _containerView];
    v27 = v26;
    v28 = 1;
    goto LABEL_24;
  }

LABEL_25:
  if ((v3 != 0) != (v4 != 0))
  {
    [(PKTextInputInteraction *)self _updateCanvasController];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_updateCanvasController
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputInteraction *)self _canvasController];
  if (v3)
  {
    v4 = v3[64];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PKTextInputInteraction *)self _reserveSpaceController];
  v6 = [v5 isReserveSpaceActive];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = [(PKTextInputInteraction *)self _handwritingController];
  if (v8)
  {
    v9 = v8;
    v10 = [(PKTextInputInteraction *)self _handwritingController];
    v11 = [v10 writingState];

    if (v11 == 1)
    {
LABEL_4:
      v7 = 1;
      goto LABEL_13;
    }

    if (v11)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  v12 = [(PKTextInputInteraction *)self _canvasController];
  if (([(PKTextInputCanvasController *)v12 canvasHasVisibleStrokes]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v13 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
    v7 = [v13 drawingTargetIsDrawing];
  }

LABEL_13:
  v14 = [(PKTextInputInteraction *)self _canvasController];
  v15 = v14;
  if (v14 && *(v14 + 64) != v7)
  {
    *(v14 + 64) = v7;
    [(PKTextInputCanvasController *)v14 _updateCanvasView];
  }

  if ((v4 & 1) != v7)
  {
    [(PKTextInputInteraction *)self _updateContainerView];
  }

  if (!(v4 & 1 | ((v7 & 1) == 0)))
  {
    v17 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(PKTextInputInteraction *)self _handwritingController];
      v19 = PKTextInputDescriptionForWritingState([v18 writingState]);
      v20 = [(PKTextInputInteraction *)self _canvasController];
      if ([(PKTextInputCanvasController *)v20 canvasHasVisibleStrokes])
      {
        v21 = @"Yes";
      }

      else
      {
        v21 = @"No";
      }

      v22 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      v30 = 138412802;
      if ([v22 drawingTargetIsDrawing])
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

    v16 = [(PKTextInputInteraction *)self view];
    [v16 layoutIfNeeded];
    goto LABEL_25;
  }

  if ((v7 & 1) == 0 && ((v4 ^ 1) & 1) == 0)
  {
    v16 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(PKTextInputInteraction *)self _handwritingController];
      v25 = PKTextInputDescriptionForWritingState([v24 writingState]);
      v26 = [(PKTextInputInteraction *)self _canvasController];
      if ([(PKTextInputCanvasController *)v26 canvasHasVisibleStrokes])
      {
        v27 = @"Yes";
      }

      else
      {
        v27 = @"No";
      }

      v28 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
      v30 = 138412802;
      if ([v28 drawingTargetIsDrawing])
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
      _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "Hiding canvas view. writingState: %@, canvas has strokes: %@, gesture is drawing: %@", &v30, 0x20u);
    }

LABEL_25:
  }
}

- (void)_updateHandwritingController
{
  if ([(PKTextInputInteraction *)self _handwritingInteractionEnabled])
  {
    v3 = [(PKTextInputInteraction *)self _elementsController];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PKTextInputInteraction *)self _handwritingController];

  if (!v4 || v5)
  {
    if (v5)
    {
      v15 = v4;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v16 = [(PKTextInputInteraction *)self _handwritingController];
      [v16 setDelegate:0];

      [(PKTextInputInteraction *)self set_handwritingController:0];
    }
  }

  else
  {
    v6 = [PKTextInputHandwritingController alloc];
    v7 = [(PKTextInputInteraction *)self _canvasController];
    v8 = [(PKTextInputInteraction *)self _elementsController];
    v9 = [(PKTextInputInteraction *)self _feedbackController];
    v10 = [(PKTextInputInteraction *)self _reserveSpaceController];
    v11 = [(PKTextInputInteraction *)self _debugLogController];
    v12 = [(PKTextInputInteraction *)self _cursorController];
    v13 = [(PKTextInputHandwritingController *)v6 initWithCanvasController:v7 elementsController:v8 feedbackController:v9 reserveSpaceController:v10 debugLogController:v11 cursorController:v12];
    [(PKTextInputInteraction *)self set_handwritingController:v13];

    v14 = [(PKTextInputInteraction *)self _handwritingController];
    [v14 setDelegate:self];
  }

  if (v4 != (v5 != 0))
  {

    [(PKTextInputInteraction *)self _updateContainerView];
  }
}

- (void)_updateElementsController
{
  if (![(PKTextInputInteraction *)self _handwritingInteractionEnabled]|| ([(PKTextInputInteraction *)self view], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(PKTextInputInteraction *)self _elementsController];
    [(PKTextInputElementsController *)v4 flushDiscoveredElements];
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
  v11 = [(PKTextInputInteraction *)self _paletteController];
  [v11 setEditingOverlayContainerSceneBounds:{v4, v6, v8, v10}];
}

- (void)_setDebugControllerAnchorCorner:(unint64_t)a3
{
  if (self->__debugControllerAnchorCorner != a3)
  {
    self->__debugControllerAnchorCorner = a3;
    [(PKTextInputInteraction *)self _updateDebugController];
  }
}

- (void)_handlePotentialDebugOverlayGestureAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!os_variant_has_internal_diagnostics())
  {
    return;
  }

  v6 = [(PKTextInputInteraction *)self view];
  [v6 bounds];
  MaxX = CGRectGetMaxX(v18);

  v8 = [(PKTextInputInteraction *)self view];
  [v8 bounds];
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
  v3 = [(PKTextInputInteraction *)self _debugControllerAnchorCorner];
  v4 = [(PKTextInputInteraction *)self _debugViewController];

  if (!v3 || v4)
  {
    if (!v3 && v4)
    {
      v14 = [(PKTextInputInteraction *)self _debugViewController];
      v15 = [v14 view];
      [v15 removeFromSuperview];

      v16 = [(PKTextInputInteraction *)self _debugViewController];
      [v16 willMoveToParentViewController:0];

      v17 = [(PKTextInputInteraction *)self _debugViewController];
      [v17 removeFromParentViewController];

      v18 = [(PKTextInputInteraction *)self _debugViewController];
      [v18 setIntrospectorDataSource:0];

      v19 = [(PKTextInputInteraction *)self _debugStateIntrospector];
      [v19 setDelegate:0];

      [(PKTextInputInteraction *)self set_debugStateIntrospector:0];
      [(PKTextInputInteraction *)self set_debugViewController:0];
    }
  }

  else
  {
    v5 = objc_alloc_init(PKTextInputDebugViewController);
    [(PKTextInputInteraction *)self set_debugViewController:v5];
    [(PKTextInputDebugViewController *)v5 setDelegate:self];
    v6 = [(PKTextInputInteraction *)self _debugLogController];
    [(PKTextInputDebugViewController *)v5 setDebugLogController:v6];

    v7 = [(PKTextInputDebugViewController *)v5 view];
    v8 = [(PKTextInputInteraction *)self view];
    [v8 bounds];
    [v7 setFrame:?];

    [v7 setAutoresizingMask:18];
    v9 = [(PKTextInputInteraction *)self view];
    [v9 addSubview:v7];

    v10 = [[PKTextInputDebugStateIntrospector alloc] initWithInteraction:self];
    [(PKTextInputInteraction *)self set_debugStateIntrospector:v10];

    v11 = [(PKTextInputInteraction *)self _debugStateIntrospector];
    [v11 setDelegate:v5];

    v12 = [(PKTextInputInteraction *)self _debugStateIntrospector];
    [(PKTextInputDebugViewController *)v5 setIntrospectorDataSource:v12];

    v13 = [(PKTextInputInteraction *)self _debugViewController];
    [v13 setNeedsReloadDebugStateData];
  }

  v20 = [(PKTextInputInteraction *)self elementsController];
  v21 = [(PKTextInputInteraction *)self _debugViewController];
  [v21 setElementsController:v20];

  v22 = [(PKTextInputInteraction *)self _debugControllerAnchorCorner];
  v23 = [(PKTextInputInteraction *)self _debugViewController];
  [v23 setStatusViewAnchorCorner:v22];
}

- (id)paletteControllerDebugSharpenerLog:(id)a3
{
  v3 = [(PKTextInputInteraction *)self debugLogController];
  v4 = [(PKTextInputDebugLogController *)v3 sharpenerLogWithCurrentContent];

  return v4;
}

- (void)textInputPaletteControllerFloatingKeyboardWillHide:(id)a3
{
  v3 = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [v3 setIsFloatingKeyboardVisible:0];
}

- (void)textInputPaletteControllerFloatingKeyboardWillShow:(id)a3
{
  v4 = [(PKTextInputInteraction *)self _cursorController];
  [v4 makeCursorStrong];

  v5 = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [v5 setIsFloatingKeyboardVisible:1];
}

- (id)canvasControllerDrawingGestureRecognizer:(id)a3
{
  [(PKTextInputInteraction *)self _updateGestureRecognizers];

  return [(PKTextInputInteraction *)self drawingGestureRecognizer];
}

- (void)canvasControllerCanvasDidFinishAnimatingStrokes:(id)a3
{
  v7 = a3;
  v4 = [(PKTextInputInteraction *)self handwritingController];
  v5 = [v4 writingState];

  v6 = v7;
  if (v7 && !v5)
  {
    [v7[12] removeStuckStrokesAndSimulateCrashIfNecessary];
    v6 = v7;
  }
}

- (void)canvasControllerDidEndDrawing:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  v6 = [(PKTextInputInteraction *)self _handwritingController];
  [v6 canvasControllerDidEndDrawing:v5];

  v7 = [(PKTextInputInteraction *)self _reserveSpaceController];
  [v7 setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];

  [(PKTextInputInteraction *)self _updateInteractionEnabled];
}

- (void)canvasControllerInProgressStrokeDidChange:(id)a3
{
  v9 = a3;
  v4 = [(PKTextInputInteraction *)self _hoverController];
  [(PKTextInputHoverController *)v4 didReceiveNormalTouch:?];

  v5 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  if ([v5 strokeAcceptanceState] == 1)
  {
    v6 = [(PKTextInputInteraction *)self canvasController];
    if (v6)
    {
      v7 = v6;
      v8 = [*(v6 + 96) isDrawing];

      if (!v8)
      {
        goto LABEL_6;
      }

      v5 = [(PKTextInputInteraction *)self _handwritingController];
      [v5 canvasControllerInProgressStrokeDidChange:v9];
    }
  }

LABEL_6:
}

- (void)canvasControllerDidCancelStroke:(id)a3 strokeAcceptanceState:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKTextInputInteraction *)self _handwritingController];
  [v7 canvasControllerDidCancelStroke:v6 strokeAcceptanceState:a4];

  v8 = [(PKTextInputInteraction *)self _reserveSpaceController];
  [v8 setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)canvasControllerEndedStroke:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  v6 = [(PKTextInputInteraction *)self _handwritingController];
  [v6 canvasControllerEndedStroke:v5];

  v7 = [(PKTextInputInteraction *)self _reserveSpaceController];
  [v7 setCanvasControllerIsDrawing:0];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)canvasController:(id)a3 drawingDidChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTextInputInteraction *)self _handwritingController];
  [v8 canvasController:v7 drawingDidChange:v6];

  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (id)canvasControllerPreferredStrokeColor:(id)a3 animated:(BOOL *)a4
{
  v6 = [(PKTextInputInteraction *)self _canvasController];
  v7 = [(PKTextInputCanvasController *)v6 defaultStrokeColor];

  v8 = [(PKTextInputInteraction *)self handwritingController];
  [v8 strokeAlphaOverride];
  v10 = v9;

  v11 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  if ([v11 strokeAcceptanceState])
  {
  }

  else
  {
    v12 = [(PKTextInputInteraction *)self _handwritingController];
    v13 = [v12 writingState];

    if (!v13)
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
  v15 = [v7 colorWithAlphaComponent:v10];

  v7 = v15;
LABEL_9:
  *a4 = v14;

  return v7;
}

- (void)_updateCanvasStrokeColor
{
  v2 = [(PKTextInputInteraction *)self _canvasController];
  [(PKTextInputCanvasController *)v2 reloadPreferredStrokeColor];
}

- (BOOL)isCursorWeak
{
  v2 = [(PKTextInputInteraction *)self cursorController];
  v3 = [v2 isCursorWeak];

  return v3;
}

- (BOOL)cursorControllerCustomHighlightFeedbackIsVisible:(id)a3
{
  v4 = [(PKTextInputInteraction *)self _feedbackController];
  v5 = [v4 showingCustomFeedback];

  if (!v5)
  {
    return 0;
  }

  v6 = [(PKTextInputInteraction *)self _feedbackController];
  v7 = [v6 feedbackType];

  return (v7 - 1) < 2;
}

- (int64_t)cursorControllerWritingState:(id)a3
{
  v4 = [(PKTextInputInteraction *)self _handwritingController];
  if (v4)
  {
    v5 = [(PKTextInputInteraction *)self _handwritingController];
    v6 = [v5 writingState];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)windowSceneForController:(id)a3
{
  v3 = [(PKTextInputInteraction *)self _containerView];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  return v5;
}

- (void)hoverControllerDidLift:(id)a3
{
  v4 = +[PKHoverSettings sharedSettings];
  v5 = [v4 scribbleCommitOnLift];

  if (v5)
  {
    v6 = [(PKTextInputInteraction *)self _handwritingController];
    [v6 quickCommitIfPossible];
  }
}

- (void)feedbackControllerShowingCustomFeedbackDidChange:(id)a3
{
  v3 = [(PKTextInputInteraction *)self _cursorController];
  [v3 customHighlightFeedbackVisibilityDidChange];
}

- (void)handwritingControllerWritingStateDidChange:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  v6 = [v5 writingState];

  v7 = [(PKTextInputInteraction *)self _paletteController];
  [v7 _setWritingStateActive:v6 == 1];

  v8 = [(PKTextInputInteraction *)self _cursorController];
  [v8 writingStateDidChange];

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
}

- (void)handwritingControllerDidFinishActiveCommands:(id)a3
{
  v3 = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [v3 updateKeyboardSuppressionPolicy];
}

- (void)elementsControllerLastDiscoveredElementsDidChange:(id)a3
{
  v3 = [(PKTextInputInteraction *)self _debugViewController];
  [v3 setNeedsReloadTargetsVisualization];
}

- (id)containerView:(id)a3 hitTest:(CGPoint)a4 withEvent:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8 && [v8 type] != 11)
  {
    v10 = [(PKTextInputInteraction *)self _hoverController];
    [(PKTextInputHoverController *)v10 didReceiveNormalTouch:?];
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
    v12 = [(PKTextInputInteraction *)self _containerView];
    v13 = [v12 isHidden];

    if (!v13)
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

    v14 = [(PKTextInputInteraction *)self handwritingController];
    v15 = [v14 writingState];

    if (v15 != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = [(PKTextInputInteraction *)self _containerView];
    goto LABEL_14;
  }

LABEL_13:
  v16 = 0;
LABEL_14:

  return v16;
}

- (id)_topLevelHitViewForContainerViewPosition:(CGPoint)a3 event:(id)a4
{
  y = a3.y;
  x = a3.x;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(PKTextInputInteraction *)self view];
  v9 = [v8 window];

  v10 = [v9 windowScene];
  v11 = [v10 _visibleWindows];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v11;
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
        v20 = [(PKTextInputInteraction *)self _containerView];
        [v20 PK_convertPoint:v19 toView:{x, y}];
        v22 = v21;
        v24 = v23;

        v25 = [v19 hitTest:0 withEvent:{v22, v24}];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 window];
          [v27 windowLevel];
          v29 = v28;

          if (v29 > v17)
          {
            v30 = v26;

            v31 = [v30 window];
            [v31 windowLevel];
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

- (BOOL)_shouldAvoidStartingDrawingOnView:(id)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([PKTextInputElementsFinder responderSupportsPencilTextInput:v6]& 1) == 0)
  {
    v7 = [(PKTextInputElementsFinder *)x shouldConsiderTextInputSearchForView:PKTextInputElementsFinder referenceHitPoint:v6 referenceCoordSpace:v6];
    v8 = v6;
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

        v12 = [v10 superview];

        v10 = v12;
        if (!v12)
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
          v14 = [v9 _pkDebugStringRepresentation];
          v26 = 138412290;
          v27 = v14;
          _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because it's a control and is not an editable text view", &v26, 0xCu);
        }

        goto LABEL_26;
      }
    }
  }

  v15 = PKScribbleInteractionInView(v6);
  v16 = v15;
  if (v15 && ([v15 shouldBeginAtLocation:x, y]& 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 set_textInputSource:0];
    }

    v23 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v6 _pkDebugStringRepresentation];
      v26 = 138412290;
      v27 = v24;
      _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because interaction delegate shouldBeginAtLocation: N", &v26, 0xCu);
    }

    goto LABEL_25;
  }

  v17 = +[PKTextInputSettings sharedSettings];
  v18 = [v17 enableOnRemoteViews];

  if ((v18 & 1) == 0)
  {
    v19 = [v6 window];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 _pkDebugStringRepresentation];
        v26 = 138412290;
        v27 = v21;
        _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Avoid starting to draw on view %@ because it is in a hosted window", &v26, 0xCu);
      }

LABEL_25:
LABEL_26:
      v22 = 1;
      goto LABEL_27;
    }
  }

  v22 = [PKTextInputElementsFinder shouldAvoidElementWithHitView:v6];
LABEL_27:

  return v22;
}

- (BOOL)_isTapAwayFromCurrentStrokesAtCanvasViewLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PKTextInputInteraction *)self _canvasController];
  v6 = [(PKTextInputCanvasController *)v5 renderedStrokesBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  if (CGRectIsNull(v22))
  {
    return 0;
  }

  if (x >= v6)
  {
    v6 = v6 + v10;
    if (x <= v6)
    {
      v6 = x;
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

  if (v6 - x >= 0.0)
  {
    v15 = v6 - x;
  }

  else
  {
    v15 = -(v6 - x);
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];

  if (v6 != v5)
  {
    [(PKTextInputInteraction *)self _touchDetectionGestureRecognizer];
  }

  return 1;
}

- (void)touchesDetected
{
  v3 = [(PKTextInputInteraction *)self _handwritingController];
  v4 = [v3 writingState];

  if (v4 != 1)
  {
    v5 = [(PKTextInputInteraction *)self _reserveSpaceController];
    [v5 finishReserveSpaceAndInsertWhitespace:0];
  }
}

- (void)reserveSpaceControllerIsActiveChanged:(id)a3
{
  [(PKTextInputInteraction *)self _updateCanvasController];
  [(PKTextInputInteraction *)self _updateInteractionEnabled];
  [(PKTextInputInteraction *)self _updateGestureRecognizers];
  v4 = [(PKTextInputInteraction *)self _handwritingController];
  [v4 reserveSpaceControllerIsActiveChanged];

  v5 = [(PKTextInputInteraction *)self _reserveSpaceController];
  v6 = [v5 isReserveSpaceActive];

  if (v6)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

    [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
  }
}

- (void)reserveSpaceControllerIsPlaceholderVisibleChanged:(id)a3
{
  v4 = [(PKTextInputInteraction *)self reserveSpaceController];
  v5 = [v4 isReserveSpacePlaceholderVisible];

  if (v5)
  {
    v6 = [(PKTextInputInteraction *)self cursorController];
    [v6 makeCursorStrong];

    v7 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
    [v7 cancelDrawing];
  }
}

- (void)reserveSpaceController:(id)a3 willFocusElement:(id)a4
{
  v5 = a4;
  v6 = [(PKTextInputInteraction *)self handwritingController];
  [v6 reserveSpaceControllerWillFocusElement:v5];
}

- (BOOL)drawingGestureRecognizer:(id)a3 shouldBeginDrawingWithTouches:(id)a4 event:(id)a5
{
  v121 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKTextInputInteraction *)self _containerView];
  v104 = v8;
  [v8 locationInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [(PKTextInputInteraction *)self _containerView];
  v17 = [v16 window];
  v18 = [v17 windowScene];
  v19 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v18];

  v20 = v10;
  v21 = [(PKTextInputInteraction *)self _containerView];
  LOBYTE(v17) = [v19 _isPointInsidePaletteView:v21 fromView:v10 withEvent:{v13, v15}];

  if (v17)
  {
    v22 = 0;
    v23 = v104;
    goto LABEL_59;
  }

  [(PKTextInputInteraction *)self set_beginGestureElement:0];
  [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];
  v24 = [(PKTextInputInteraction *)self _hoverController];
  [(PKTextInputHoverController *)v24 didReceiveNormalTouch:?];

  v102 = v19;
  if (![v10 PK_isEventFromPencil])
  {
LABEL_12:
    v32 = 1;
    goto LABEL_13;
  }

  v25 = +[PKTextInputSettings sharedSettings];
  v26 = [v25 isScribbleActive];

  if ((v26 & 1) == 0)
  {
    v33 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v104 drawingTouch];
      *buf = 134217984;
      v117 = v34;
      _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because there is no active locale.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v99 = v10;
  v27 = [(PKTextInputInteraction *)self view];
  v28 = [v27 window];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = MEMORY[0x1E69DD0A8];
    v30 = [v28 windowScene];
    v31 = [v29 activeTextEffectsWindowForWindowScene:v30];

    if (v31 != v28)
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

  v100 = v9;
  v35 = [v9 anyObject];
  v36 = [v35 view];
  v37 = [v36 window];
  v38 = [v37 windowScene];

  if (v38)
  {
    v39 = [(PKTextInputInteraction *)self view];
    [v104 locationInView:v39];
    v41 = v40;
    v43 = v42;

    [(PKTextInputInteraction *)self _handlePotentialDebugOverlayGestureAtPoint:v41, v43];
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v9 = v100;
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
      v48 = [v47 window];
      v49 = [(PKTextInputInteraction *)self view];
      v50 = [v49 window];
      v51 = v50;
      if (v48 == v50)
      {
      }

      else
      {
        v52 = [v47 window];
        [v52 windowLevel];
        v54 = v53;
        v55 = [(PKTextInputInteraction *)self view];
        v56 = [v55 window];
        [v56 windowLevel];
        v58 = v57;

        if (v54 > v58)
        {
          v71 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
          v23 = v104;
          if (v72)
          {
            v73 = [v104 drawingTouch];
            v74 = [v47 window];
            v75 = [v74 _pkDebugStringRepresentation];
            *buf = 134218242;
            v117 = v73;
            v118 = 2112;
            v119 = v75;
            _os_log_impl(&dword_1C7CCA000, v71, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because the touch is on a higher level window %@", buf, 0x16u);
          }

LABEL_49:
          v9 = v100;

          v32 = 1;
          goto LABEL_50;
        }
      }

      v59 = [v47 window];
      v60 = [v59 windowScene];
      v61 = [(PKTextInputInteraction *)self view];
      v62 = [v61 window];
      v63 = [v62 windowScene];

      if (v60 != v63)
      {
        v71 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        v23 = v104;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [v104 drawingTouch];
          v69 = [v47 window];
          v70 = [v69 windowScene];
          *buf = 134218242;
          v117 = v68;
          v118 = 2112;
          v119 = v70;
          _os_log_impl(&dword_1C7CCA000, v71, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because the touch is on a different scene %@", buf, 0x16u);
        }

        goto LABEL_49;
      }
    }

    v45 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
    v9 = v100;
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_28:

  v64 = [(PKTextInputInteraction *)self _handwritingController];
  if (v64)
  {
    v65 = v64;
    v66 = [(PKTextInputInteraction *)self _handwritingController];
    v67 = [v66 writingState];

    if (v67)
    {
      v32 = 0;
      goto LABEL_31;
    }
  }

  v76 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:v13, v15];
  if (v76)
  {
    v77 = [(PKTextInputInteraction *)self _containerView];
    v78 = [(PKTextInputInteraction *)self _shouldAvoidStartingDrawingOnView:v76 location:PK_convertRectFromCoordinateSpaceToCoordinateSpace(v77, v76, v13, v15, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8))];

    if (v78)
    {
      v79 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [v104 drawingTouch];
        v81 = [v76 _pkDebugStringRepresentation];
        *buf = 134218242;
        v117 = v80;
        v118 = 2112;
        v119 = v81;
        _os_log_impl(&dword_1C7CCA000, v79, OS_LOG_TYPE_DEFAULT, "Delegate to gesture touch %p, shouldBeginDrawing: N, because should avoid drawing on hit view %@", buf, 0x16u);
      }

      goto LABEL_8;
    }
  }

  v82 = [(PKTextInputInteraction *)self view];
  v83 = [v82 window];
  v84 = [v83 windowScene];
  v85 = [v84 _visibleWindows];
  v86 = v85;
  v87 = MEMORY[0x1E695E0F0];
  if (v85)
  {
    v87 = v85;
  }

  v88 = v87;

  v89 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v88];
  v20 = v99;
  if (v89)
  {
    if (v89[9] == 1)
    {
      v90 = [(PKTextInputInteraction *)self _hoverController];
      if (!v90 || (v91 = v90, v92 = CACurrentMediaTime() - *(v90 + 136), v91, v92 >= 0.1))
      {
        v89[9] = 0;
      }
    }
  }

  [(PKTextInputInteraction *)self set_drawingGestureElementFinder:v89];
  v93 = [obj copy];
  v94 = [(PKTextInputInteraction *)self _containerView];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __87__PKTextInputInteraction_drawingGestureRecognizer_shouldBeginDrawingWithTouches_event___block_invoke;
  v105[3] = &unk_1E82D7CD0;
  v106 = v89;
  v107 = self;
  v108 = v93;
  v109 = v99;
  v110 = v13;
  v111 = v15;
  v95 = v93;
  v96 = v89;
  [v96 findSingleElementCloseToPosition:v94 coordinateSpace:v105 completion:{v13, v15}];

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

- (BOOL)drawingGestureRecognizerRequiresTargetElementToBegin:(id)a3
{
  v4 = [(PKTextInputInteraction *)self _handwritingController];
  if (v4)
  {
    v5 = [(PKTextInputInteraction *)self _handwritingController];
    v6 = [v5 writingState];

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)drawingGestureRecognizerRequiresPastTapToBegin:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputInteraction *)self _handwritingController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PKTextInputInteraction *)self _handwritingController];
    v8 = [v7 writingState];

    if (v8 == 1)
    {
      v10 = [(PKTextInputInteraction *)self _containerView];
      [v4 locationInView:v10];
      v9 = [(PKTextInputInteraction *)self _isTapAwayFromCurrentStrokesAtCanvasViewLocation:?];

      goto LABEL_7;
    }

    if (v8)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)drawingGestureRecognizerLongPressShouldBegin:(id)a3
{
  v4 = +[PKTextInputSettings sharedSettings];
  v5 = [v4 enableReserveSpace];

  if (!v5)
  {
    return 0;
  }

  v6 = [(PKTextInputInteraction *)self _handwritingController];
  if (v6)
  {
    v7 = [(PKTextInputInteraction *)self _handwritingController];
    v8 = [v7 writingState] == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)drawingGestureRecognizerLongPressStateDidChange:(id)a3
{
  v13 = a3;
  v4 = [v13 longPressState];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = [(PKTextInputInteraction *)self _reserveSpaceController];
      [v5 reserveSpaceWhenReady];
      goto LABEL_9;
    }

    if (v4 != 3)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    v5 = [v13 targetElement];
    v6 = [(PKTextInputInteraction *)self view];
    [v13 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(PKTextInputInteraction *)self _reserveSpaceController];
    v12 = [(PKTextInputInteraction *)self view];
    [v11 beginIfPossibleWithElement:v5 atLocation:v12 coordinateSpace:{v8, v10}];

    goto LABEL_9;
  }

  v5 = [(PKTextInputInteraction *)self _reserveSpaceController];
  [v5 cancelReserveSpaceIntro];
LABEL_9:

LABEL_10:
}

- (void)drawingGestureStrokeAcceptanceStateDidChange:(id)a3
{
  v8 = a3;
  v4 = [v8 strokeAcceptanceState];
  if (v4 == 2)
  {
    [v8 cancel];
  }

  else if (v4 == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PKTextInputInteraction *)self _setLastHandwritingEventTimestamp:?];
    v5 = [(PKTextInputInteraction *)self _handwritingController];
    v6 = [(PKTextInputInteraction *)self _canvasController];
    [v5 canvasControllerDidBeginDrawing:v6];

    v7 = [(PKTextInputInteraction *)self _reserveSpaceController];
    [v7 setCanvasControllerIsDrawing:1];
  }

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
  [(PKTextInputInteraction *)self _updateCanvasController];
}

- (void)drawingGestureRecognizerDrawingTargetIsDrawingDidChange:(id)a3
{
  v4 = a3;
  [(PKTextInputInteraction *)self _updateCanvasController];
  LODWORD(self) = [v4 drawingTargetIsDrawing];

  if (self)
  {
    v5 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [v5 hideMenu];
  }
}

- (BOOL)drawingGestureRecognizer:(id)a3 shouldFinishGestureWithTouch:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 strokeAcceptanceState] != 1)
  {
    v9 = [v6 targetElement];
    if (!v9 || [v6 state] || (objc_msgSend(v6, "hasMovedPastTapUseTimestampFromTouch:", 1) & 1) != 0)
    {
      v10 = [(PKTextInputInteraction *)self _containerView];
      v11 = [v10 isHidden];

      if (v11)
      {
        v8 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v12 = [(PKTextInputInteraction *)self _containerView];
      [v6 locationInView:v12];
      v13 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 sendActionsForControlEvents:64];
        v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 _pkDebugStringRepresentation];
          v17 = 138412290;
          v18 = v15;
          _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Using drawing gesture as touch up inside control: %@", &v17, 0xCu);
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = [(PKTextInputInteraction *)self _handleDrawingGestureTapInElement:v9 gesture:v6 touch:v7];
      v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Using drawing gesture as tap instead. element: %@", &v17, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)_notifyTargetElementOfTouches:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PKTextInputInteraction *)self _drawingGestureElementFinder];
  v8 = [v9 foundElement];
  [(PKTextInputElement *)v8 didTargetElementForTouches:v7 event:v6];
}

- (void)_drawingGestureElementFinderDidFinishWithLocationInContainerView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKTextInputInteraction *)self _drawingGestureElementFinder];
  [(PKTextInputInteraction *)self set_drawingGestureElementFinder:0];
  v7 = [(PKTextInputInteraction *)self drawingGestureRecognizer];
  v8 = [v6 foundElement];
  v9 = [v6 candidateElements];
  [v7 finishedElementFindingWithElement:v8 candidateElements:v9];

  [(PKTextInputInteraction *)self _updateCanvasStrokeColor];
  v10 = [(PKTextInputInteraction *)self _handwritingController];
  if (!v10 || (v11 = v10, -[PKTextInputInteraction _handwritingController](self, "_handwritingController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 writingState], v12, v11, !v13))
  {
    v14 = +[PKTextInputSettings sharedSettings];
    v15 = [v14 lineBreakOnTapEnabled];

    if (v15)
    {
      [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];
      [(PKTextInputInteraction *)self set_beginGestureElement:0];
      v16 = [v6 foundElement];
      v17 = [(PKTextInputElement *)v16 isFocused];

      if (v17)
      {
        v18 = [v6 foundElement];
        [(PKTextInputInteraction *)self set_beginGestureElement:v18];

        v19 = [(PKTextInputInteraction *)self _containerView];
        v20 = [(PKTextInputInteraction *)self _beginGestureElement];
        v21 = [(PKTextInputElement *)v20 coordinateSpace];
        v22 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v19, v21, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
        v24 = v23;

        objc_initWeak(&location, self);
        v25 = [(PKTextInputInteraction *)self _beginGestureElement];
        v26 = [(PKTextInputInteraction *)self _cursorController];
        LOBYTE(v20) = [v26 isCursorWeak];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __91__PKTextInputInteraction__drawingGestureElementFinderDidFinishWithLocationInContainerView___block_invoke;
        v27[3] = &unk_1E82D7CF8;
        objc_copyWeak(&v28, &location);
        [(PKTextInputElement *)v25 evaluateLineBreakForTapAtLocation:v20 weakCursor:0 allowTrailingWhitespace:v27 completion:v22, v24];

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

- (BOOL)_beginGestureIfPossible:(id)a3
{
  v4 = a3;
  if ([v4 state])
  {
    v5 = 0;
  }

  else
  {
    [v4 setState:1];
    v5 = [v4 state] == 1;
  }

  [(PKTextInputInteraction *)self set_beginGestureElement:0];
  [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];

  return v5;
}

- (id)_findControlFromHitView:(id)a3 referenceView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  v9 = 0;
  v10 = v7;
  if (v7 && v7 != v6)
  {
    v11 = v7;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v10 = [v11 superview];

      v9 = 0;
      if (v10)
      {
        v11 = v10;
        if (v10 != v6)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v10 = v11;
    v9 = v10;
  }

LABEL_9:

  return v9;
}

- (BOOL)_handleDrawingGestureTapInElement:(id)a3 gesture:(id)a4 touch:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(PKTextInputElement *)v8 coordinateSpace];

    if (v11)
    {
      v12 = [(PKTextInputInteraction *)self _containerView];
      [v10 PK_locationInView:v12];
      v14 = v13;
      v16 = v15;

      v17 = [(PKTextInputInteraction *)self _topLevelHitViewForContainerViewPosition:0 event:v14, v16];
      if (!v17)
      {
        goto LABEL_8;
      }

      v18 = [(PKTextInputElement *)v8 referenceView];
      if (!v18)
      {
        goto LABEL_8;
      }

      v19 = v18;
      v20 = [(PKTextInputElement *)v8 referenceView];

      if (v17 == v20)
      {
        goto LABEL_8;
      }

      v21 = [(PKTextInputElement *)v8 referenceView];
      LODWORD(v22) = [v17 isDescendantOfView:v21];

      if (!v22)
      {
LABEL_27:

        goto LABEL_28;
      }

      v23 = [(PKTextInputElement *)v8 referenceView];
      v24 = [(PKTextInputInteraction *)self _findControlFromHitView:v17 referenceView:v23];

      if (!v24)
      {
LABEL_8:
        v25 = [(PKTextInputInteraction *)self _containerView];
        v26 = [(PKTextInputElement *)v8 coordinateSpace];
        [v25 PK_convertPoint:v26 toCoordinateSpace:{v14, v16}];
        v28 = v27;
        v30 = v29;

        if ([(PKTextInputElement *)v8 isFocused])
        {
          v31 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v49 = 138412290;
            v50 = v8;
            _os_log_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_DEFAULT, "Detected a pencil tap on focused element: %@", &v49, 0xCu);
          }

          v32 = [(PKTextInputInteraction *)self _cursorController];
          [v32 makeCursorStrong];

          v33 = +[PKTextInputSettings sharedSettings];
          if ([v33 enableReserveSpaceTapForNewlines])
          {
            v34 = [(PKTextInputElement *)v8 coordinateSpace];
            if (v34)
            {
              v35 = [(PKTextInputInteraction *)self _reserveSpaceController];
              v36 = [v35 isReserveSpaceActive];

              if (!v36)
              {
                goto LABEL_22;
              }

              v37 = [(PKTextInputInteraction *)self _reserveSpaceController];
              LODWORD(v34) = [v37 tapPointIsInPlaceholder:{v28, v30}];

              if (!v34)
              {
                goto LABEL_23;
              }

              if (![(PKTextInputInteraction *)self _beginGestureIfPossible:v9])
              {
LABEL_22:
                LOBYTE(v34) = 0;
LABEL_23:
                v41 = [MEMORY[0x1E69DCC68] sharedMenuController];
                [v41 hideMenu];
                if (v34 & 1) != 0 || ([(PKTextInputInteraction *)self _hoverController], v42 = objc_claimAutoreleasedReturnValue(), v43 = [(PKTextInputHoverController *)v42 performLineBreakAfterTapIfPossibleForElement:v8 location:v28, v30], v42, (v43))
                {
                  LOBYTE(v22) = 1;
                }

                else
                {
                  v22 = [(PKTextInputInteraction *)self _beginGestureElementContentForLineBreak];
                  if (v22)
                  {
                    v45 = [(PKTextInputInteraction *)self _beginGestureElement];
                    v46 = [(PKTextInputElement *)v8 isEquivalentToElement:v45];

                    if (v46)
                    {
                      v47 = [(PKTextInputInteraction *)self _beginGestureElementContentForLineBreak];
                      v48 = [(PKTextInputElementContent *)v47 contentLength];
                      [(PKTextInputElementContent *)v47 insertTextsToCommit:&unk_1F47C19D0 withAlternatives:0 activePreviewText:v48 replacingRange:0 completion:&__block_literal_global_22];
                    }

                    LOBYTE(v22) = 0;
                  }
                }

                [(PKTextInputInteraction *)self set_beginGestureElement:0];
                [(PKTextInputInteraction *)self set_beginGestureElementContentForLineBreak:0];

                goto LABEL_27;
              }

              v33 = [(PKTextInputInteraction *)self _reserveSpaceController];
              LOBYTE(v34) = 1;
              [v33 finishReserveSpaceAndInsertWhitespace:1];
            }
          }

          else
          {
            LOBYTE(v34) = 0;
          }

          goto LABEL_23;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v39 = v38;
        v40 = [(PKTextInputInteraction *)self cursorController];
        [v40 setLastElementTapToFocusTimestamp:v39];
      }

      LOBYTE(v22) = 0;
      goto LABEL_27;
    }
  }

  LOBYTE(v22) = 0;
LABEL_28:

  return v22;
}

- (BOOL)isFloatingKeyboardVisible
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(PKTextInputInteraction *)self _paletteController];
    v4 = [v3 _floatingKeyboardController];
    v5 = [(PKPaletteFloatingKeyboardController *)v4 isPresentingKeyboard];

    return v5;
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
      v5 = [(PKTextInputInteraction *)self _paletteController];
      v3 = [v5 _floatingKeyboardController];
      [(PKPaletteFloatingKeyboardController *)v3 presentOrDismissIfPresented];
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
    v3 = [(PKTextInputInteraction *)self _paletteController];
    v4 = [v3 _floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v4 dismissWithReason:?];
  }

  else
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v10, 2u);
    }
  }

  v5 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v6 = [v5 scene];
  v7 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:v6];

  v8 = [v7 paletteView];
  v9 = [v8 floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)v9 dismissWithReason:?];
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
    v3 = [v2 currentLanguageIdentifiers];
    v4 = [v3 firstObject];
  }

  else
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)setCurrentLanguageIdentifier:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = +[PKTextInputLanguageSelectionController sharedInstance];
    v5 = [v3 copy];
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
    v4 = [(PKTextInputInteraction *)self view];
    v5 = [v4 window];
    v3 = [v5 rootViewController];

    if (v3)
    {
      v6 = [(PKTextInputInteraction *)self debugLogController];
      v7 = [(PKTextInputDebugLogController *)v6 sharpenerLogWithCurrentContent];

      v8 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:v7];
      v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
      [v9 setModalPresentationStyle:2];
      [v3 presentViewController:v9 animated:1 completion:0];
      v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_INFO, "Problem reporting UI presented from view controller %@", &v11, 0xCu);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_ERROR, "Can't present internal-only problem reporting UI from view controller %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Feature Flag is not enabled or not an internal build.", &v11, 2u);
    }
  }
}

- (void)textInputLanguageSelectionControllerDidChangeLanguage:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v10 = @"UITextInputUpdateKeyboardLanguageKey";
    v4 = [(PKTextInputInteraction *)self currentLanguageIdentifier];
    v5 = v4;
    v6 = &stru_1F476BD20;
    if (v4)
    {
      v6 = v4;
    }

    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"UITextInputUpdateKeyboardLanguageNotification" object:self userInfo:v7];
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
  v2 = [(PKTextInputInteraction *)self _keyboardSuppressionPolicyDelegate];
  [v2 updateKeyboardSuppressionPolicy];
}

- (void)reportDebugStateDescription:(id)a3
{
  v5 = a3;
  v6 = [(PKTextInputInteraction *)self view];
  if (v6)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v9 = *(a3 + 2);
  v8 = (a3 + 16);
  v9(v5, @"Installed in view", v7);

  if ([(PKTextInputInteraction *)self _handwritingInteractionEnabled])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  (*v8)(v5, @"Interaction enabled", v10);
  v11 = [(PKTextInputInteraction *)self _containerView];
  if ([v11 isHidden])
  {
    v12 = @"No";
  }

  else
  {
    v12 = @"Yes";
  }

  (*v8)(v5, @"Container view visible", v12);

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  [(PKTextInputInteraction *)self _lastHandwritingEventTimestamp];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1fs ago", v14 - v15];
  (*v8)(v5, @"Last pencil event", v16);
}

- (void)simulateReserveSpaceForTextInputView:(id)a3 location:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  self->_replayCancelled = 0;
  v11 = [[PKTextInputElement alloc] initWithTextInput:v9];
  objc_initWeak(&location, self);
  v12 = [(PKTextInputInteraction *)self _reserveSpaceController];
  v13 = [(PKTextInputElement *)v11 coordinateSpace];
  [v12 beginIfPossibleWithElement:v11 atLocation:v13 coordinateSpace:{x, y}];

  v14 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKTextInputInteraction_Internal__simulateReserveSpaceForTextInputView_location_completion___block_invoke;
  block[3] = &unk_1E82D7D20;
  objc_copyWeak(&v18, &location);
  v17 = v10;
  v15 = v10;
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
  v2 = [(PKTextInputInteraction *)self handwritingController];
  [v2 cleanUpFromCancelledReplay];
}

@end