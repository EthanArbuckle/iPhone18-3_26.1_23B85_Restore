@interface WKContentView
- (BOOL)_hasCustomTintColor;
- (BOOL)screenIsBeingCaptured;
- (BOOL)selectionHonorsOverflowScrolling;
- (BOOL)shouldUseAsyncInteractions;
- (BOOL)shouldUseMouseGestureRecognizer;
- (Class)_dragInteractionClass;
- (NSArray)deferringGestures;
- (UITextInputTraits)textInputTraitsForWebView;
- (WKDateTimeInputControl)dateTimeInputControl;
- (WKFormSelectControl)selectControl;
- (id).cxx_construct;
- (id)_cascadeInteractionTintColor;
- (id)_createVisibilityPropagationView;
- (id)_selectionContainerViewInternal;
- (id)_touchEndDeferringGestures;
- (id)_touchStartDeferringGestures;
- (void)_accessibilityRegisterUIProcessTokens;
- (void)_configureMouseGestureRecognizer;
- (void)_createAndConfigureDoubleTapGestureRecognizer;
- (void)_createAndConfigureHighlightLongPressGestureRecognizer;
- (void)_createAndConfigureLongPressGestureRecognizer;
- (void)_didScroll;
- (void)_installVisibilityPropagationViews;
- (void)_keyboardWillShow;
- (void)_registerPreview;
- (void)_removeContainerForContextMenuHintPreviews;
- (void)_removeContainerForDragPreviews;
- (void)_removeContainerForDropPreviews;
- (void)_removeContextMenuHintContainerIfPossible;
- (void)_removeDropCaret;
- (void)_removeTemporaryFilesIfNecessary;
- (void)_restoreEditMenuIfNeeded;
- (void)_setUpImageAnalysis;
- (void)_setupVisibilityPropagationForGPUProcess;
- (void)_setupVisibilityPropagationForWebProcess;
- (void)_tearDownImageAnalysis;
- (void)_unregisterPreview;
- (void)_updateFrameOfContainerForContextMenuHintPreviewsIfNeeded;
- (void)_updateLongPressAndHighlightLongPressGestures;
- (void)_updateRuntimeProtocolConformanceIfNeeded;
- (void)_updateTapHighlight;
- (void)_updateTextInputTraitsForInteractionTintColor;
- (void)cleanUpDragSourceSessionState;
- (void)cleanUpInteraction;
- (void)cleanUpScribbleInteraction;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setUpDragAndDropInteractions;
- (void)setUpInteraction;
- (void)setUpMouseGestureRecognizer;
- (void)setUpPointerInteraction;
- (void)setUpScribbleInteraction;
- (void)setUpTextSelectionAssistant;
- (void)stopDeferringInputViewUpdatesForAllSources;
- (void)teardownDragAndDropInteractions;
- (void)tintColorDidChange;
- (void)uninstallImageAnalysisInteraction;
- (void)unsuppressSoftwareKeyboardUsingLastAutocorrectionContextIfNeeded;
- (void)updateSelection;
@end

@implementation WKContentView

- (id).cxx_construct
{
  self->_page.m_ptr = 0;
  self->_webView.m_weakReference = 0;
  self->_touchStartDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr = 0;
  self->_touchStartDeferringGestureRecognizerForDelayedResettableGestures.m_ptr = 0;
  self->_touchStartDeferringGestureRecognizerForSyntheticTapGestures.m_ptr = 0;
  self->_touchEndDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr = 0;
  self->_touchEndDeferringGestureRecognizerForDelayedResettableGestures.m_ptr = 0;
  self->_touchEndDeferringGestureRecognizerForSyntheticTapGestures.m_ptr = 0;
  self->_touchMoveDeferringGestureRecognizer.m_ptr = 0;
  self->_failedTouchStartDeferringGestures.var0.__null_state_ = 0;
  self->_failedTouchStartDeferringGestures.__engaged_ = 0;
  self->_imageAnalysisDeferringGestureRecognizer.m_ptr = 0;
  self->_gestureRecognizerConsistencyEnforcer.__ptr_ = 0;
  self->_touchEventGestureRecognizer.m_ptr = 0;
  self->_singleTapGestureRecognizer.m_ptr = 0;
  self->_highlightLongPressGestureRecognizer.m_ptr = 0;
  self->_longPressGestureRecognizer.m_ptr = 0;
  self->_doubleTapGestureRecognizer.m_ptr = 0;
  self->_nonBlockingDoubleTapGestureRecognizer.m_ptr = 0;
  self->_doubleTapGestureRecognizerForDoubleClick.m_ptr = 0;
  self->_twoFingerDoubleTapGestureRecognizer.m_ptr = 0;
  self->_twoFingerSingleTapGestureRecognizer.m_ptr = 0;
  self->_keyboardDismissalGestureRecognizer.m_ptr = 0;
  self->_inspectorNodeSearchGestureRecognizer.m_ptr = 0;
  self->_touchActionGestureRecognizer.m_ptr = 0;
  self->_touchActionLeftSwipeGestureRecognizer.m_ptr = 0;
  self->_touchActionRightSwipeGestureRecognizer.m_ptr = 0;
  self->_touchActionUpSwipeGestureRecognizer.m_ptr = 0;
  self->_touchActionDownSwipeGestureRecognizer.m_ptr = 0;
  self->_gamepadInteractionGestureRecognizer.m_ptr = 0;
  self->_mouseInteraction.m_ptr = 0;
  self->_scribbleInteraction.m_ptr = 0;
  self->_pointerInteraction.m_ptr = 0;
  self->_lastPointerRegion.m_ptr = 0;
  self->_textInteractionWrapper.m_ptr = 0;
  self->_suppressSelectionAssistantReasons.m_storage = 0;
  self->_legacyTextInputTraits.m_ptr = 0;
  self->_extendedTextInputTraits.m_ptr = 0;
  self->_formAccessoryView.m_ptr = 0;
  self->_tapHighlightView.m_ptr = 0;
  self->_interactionViewsContainerView.m_ptr = 0;
  self->_contextMenuHintContainerView.m_ptr = 0;
  self->_scrollViewForTargetedPreview.m_weakReference = 0;
  self->_dragPreviewContainerView.m_ptr = 0;
  self->_dropPreviewContainerView.m_ptr = 0;
  self->_markedText.m_ptr = 0;
  self->_actionSheetAssistant.m_ptr = 0;
  self->_airPlayRoutePicker.m_ptr = 0;
  self->_formInputSession.m_ptr = 0;
  self->_fileUploadPanel.m_ptr = 0;
  self->_frameInfoForFileUploadPanel.var0.__null_state_ = 0;
  self->_anon_480[64] = 0;
  self->_shareSheet.m_ptr = 0;
  self->_contactPicker.m_ptr = 0;
  self->_digitalCredentialsPicker.m_ptr = 0;
  self->_previewGestureRecognizer.m_ptr = 0;
  self->_previewSecondaryGestureRecognizer.m_ptr = 0;
  self->_focusStateStack.m_buffer = 0;
  *&self->_focusStateStack.m_capacity = 0;
  self->_contextMenuElementInfo.m_ptr = 0;
  self->_contextMenuLegacyPreviewController.m_ptr = 0;
  self->_contextMenuLegacyMenu.m_ptr = 0;
  self->_previewItemController.m_ptr = 0;
  self->_textIndicator.m_ptr = 0;
  self->_textIndicatorLayer.m_ptr = 0;
  self->_contextMenuInteractionTargetedPreview.m_ptr = 0;
  self->_textAnimationManager.m_ptr = 0;
  self->_smartMagnificationController.m_ptr = 0;
  self->_inputDelegate.m_weakReference = 0;
  self->_latestTapID.m_value.m_identifier = 0;
  self->_tapHighlightInformation.nodeHasBuiltInClickHandling = 0;
  *&self->_tapHighlightInformation.color.m_colorAndFlags = 0u;
  *&self->_tapHighlightInformation.quads.m_capacity = 0u;
  *&self->_tapHighlightInformation.topRightRadius.m_width = 0u;
  self->_tapHighlightInformation.bottomRightRadius = 0;
  *&self->_lastAutocorrectionContext.contextBefore.m_impl.m_ptr = 0u;
  *&self->_lastAutocorrectionContext.selectedText.m_impl.m_ptr = 0u;
  self->_lastAutocorrectionContext.selectedRangeInMarkedText = xmmword_19E7035E0;
  self->_autocorrectionData.font.m_ptr = 0;
  p_positionInformation = &self->_positionInformation;
  *(&self->_positionInformation.request.point.m_y + 3) = 0;
  self->_positionInformation.request.point = 0;
  *&self->_positionInformation.request.includeHasDoubleClickHandler = 1;
  self->_positionInformation.canBeValid = 1;
  *&self->_positionInformation.nodeAtPositionHasDoubleClickHandler.var0.__null_state_ = 0;
  *&self->_positionInformation.prefersDraggingOverTextSelection = 0;
  self->_positionInformation.touchCalloutEnabled = 1;
  self->_positionInformation.adjustedPointForNodeRespondingToClickEvents = 0;
  *&self->_positionInformation.isLink = 0;
  self->_positionInformation.isContentEditable = 0;
  *(&self->_positionInformation.containerScrollingNodeID.m_value.m_processIdentifier.m_identifier + 6) = 0;
  self->_positionInformation.containerScrollingNodeID.m_value.m_object.m_identifier = 0;
  self->_positionInformation.containerScrollingNodeID.m_value.m_processIdentifier.m_identifier = 0;
  WTF::URL::URL(&self->_positionInformation.url);
  WTF::URL::URL(&p_positionInformation->imageURL);
  p_positionInformation->cursorContext.cursor.__engaged_ = 0;
  *&p_positionInformation->cursorContext.isVerticalWritingMode = 0;
  p_positionInformation[1].isLink = 0;
  LOBYTE(p_positionInformation[1].containerScrollingNodeID.m_value.m_object.m_identifier) = 0;
  *(&p_positionInformation[1].imageURL + 8) = 0;
  *&p_positionInformation[1].imageURL.m_hostEnd = 0u;
  *&p_positionInformation->imageMIMEType.m_impl.m_ptr = 0u;
  *&p_positionInformation->idAttribute.m_impl.m_ptr = 0u;
  *&p_positionInformation->bounds.m_size.m_width = 0u;
  *&p_positionInformation->textBefore.m_impl.m_ptr = 0u;
  p_positionInformation->cursorContext.lineCaretExtent = 0u;
  p_positionInformation->cursorContext.cursor.var0.__null_state_ = 0;
  *&p_positionInformation->textIndicator.m_ptr = 0u;
  *&p_positionInformation->dataDetectorResults.m_ptr = 0u;
  *(&p_positionInformation->dataDetectorBounds + 1) = 0u;
  self->_positionInformationLinkIndicator.var0.__null_state_ = 0;
  self->_positionInformationLinkIndicator.__engaged_ = 0;
  WebKit::FocusedElementInformation::FocusedElementInformation(&self->_focusedElementInformation);
  self->_pendingFocusedElementIdentifier.var0.__null_state_ = 0;
  self->_pendingFocusedElementIdentifier.__engaged_ = 0;
  self->_inputPeripheral.m_ptr = 0;
  self->_keyWebEventHandlers.m_buffer = self->_keyWebEventHandlers.m_inlineBuffer;
  *&self->_keyWebEventHandlers.m_capacity = 1;
  self->_keyWebEventHandlers.m_inlineBuffer[0].m_storage.data[32] = 0;
  LOBYTE(self->_lastInteractionLocation.x) = 0;
  WebKit::WKSelectionDrawingInfo::WKSelectionDrawingInfo(&self->_layerTreeTransactionIdAtLastInteractionStart.var0.__val_.m_processIdentifier);
  self->_lastSelectionDrawingInfo.selectionClipRect.m_size = 0;
  self->_lastSelectionDrawingInfo.enclosingLayerID.var0.__null_state_ = 0;
  self->_lastSelectionDrawingInfo.enclosingLayerID.__engaged_ = 0;
  *&self->_lastOutstandingPositionInformationRequest.var0.__null_state_ = 0;
  *&self->_lastOutstandingPositionInformationRequest.var0.__val_.includeSnapshot = 0;
  self->_lastOutstandingPositionInformationRequest.__engaged_ = 0;
  self->_positionInformationCallbackDepth = 0;
  self->_pendingPositionInformationHandlers.m_buffer = 0;
  *&self->_pendingPositionInformationHandlers.m_capacity = 0;
  *&self->_inputViewUpdateDeferralSources.m_storage = 0;
  self->_keyboardScrollingAnimator.m_ptr = 0;
  self->_actionsToPerformAfterEditorStateUpdate.m_buffer = 0;
  *&self->_actionsToPerformAfterEditorStateUpdate.m_capacity = 0;
  *&self->_autocorrectionContextNeedsUpdate = 0;
  self->_isFocusingElementWithKeyboard = 0;
  self->_isPresentingEditMenu = 0;
  self->_isUpdatingAccessoryView = 0;
  self->_waitingForEditorStateAfterScrollingSelectionContainer = 0;
  *(&self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y + 1) = 0;
  *&self->_hasSetUpInteractions = 0;
  LOWORD(self->_ignoreSelectionCommandFadeCount) = 0;
  self->_activeTextInteractionCount = 0;
  self->_suppressNonEditableSingleTapTextInteractionCount = 0;
  self->_domPasteRequestHandler.m_function.m_callableWrapper.__ptr_ = 0;
  self->_domPasteRequestCategory.var0.__null_state_ = 0;
  *(&self->_domPasteRequestCategory + 4) = 0;
  v4 = MEMORY[0x1E695EFF8];
  *&self->_pendingRunModalJavaScriptDialogCallback.m_function.m_callableWrapper.__ptr_ = *MEMORY[0x1E695EFF8];
  *&self->_lastInsertedCharacterToOverrideCharacterBeforeSelection.var0.__null_state_ = *v4;
  LOWORD(self->_dragDropInteractionState.m_lastGlobalPosition.x) = 0;
  LOBYTE(self->_dragDropInteractionState.m_stagedDragSource.var0.__val_.linkURL.m_hostEnd) = 0;
  LOBYTE(self->_dragDropInteractionState.m_activeDragSources.m_capacity) = 0;
  *&self->_dragDropInteractionState.m_lastGlobalPosition.y = 0u;
  *&self->_dragDropInteractionState.m_adjustedPositionForDragEnd.y = 0u;
  *&self->_dragDropInteractionState.m_dragSession.m_ptr = 0u;
  LOBYTE(self->_dragDropInteractionState.m_dragStartCompletionBlock.m_block) = 0;
  *&self->_dragDropInteractionState.m_stagedDragSource.var0.__val_.linkURL.m_pathEnd = 0u;
  *&self->_dragDropInteractionState.m_stagedDragSource.var0.__val_.itemIdentifier = 0u;
  LOBYTE(self->_dragDropInteractionState.m_activeDragSources.m_buffer) = 0;
  self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table = 0;
  self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table = 0;
  *&self->_dragDropInteractionState.m_elementIdentifier.__engaged_ = 0;
  self->_dragInteraction.m_ptr = 0;
  self->_dropInteraction.m_ptr = 0;
  *&self->_isAnimatingDragCancel = 0;
  self->_visibleContentViewSnapshot.m_ptr = 0;
  self->_unselectedContentSnapshot.m_ptr = 0;
  self->_editDropCaretView.m_ptr = 0;
  self->_actionToPerformAfterReceivingEditDragSnapshot.m_block = 0;
  LOBYTE(self->_editDropTextCursorView.m_ptr) = 0;
  LOBYTE(self->_editDropCaretAnimator.m_ptr) = 0;
  LOBYTE(self->_imageAnalysisGestureRecognizer.m_ptr) = 0;
  self->_anon_10d0[0] = 0;
  *&self->_anon_10d0[16] = 0;
  *&self->_anon_10d0[24] = 0;
  *&self->_anon_10d0[40] = 0;
  self->_actionsToPerformAfterPendingImageAnalysis.m_buffer = 0;
  *&self->_actionsToPerformAfterPendingImageAnalysis.m_capacity = 0;
  *&self->_isProceedingWithTextSelectionInImage = 0;
  self->_imageAnalyzer.m_ptr = 0;
  LOBYTE(self->_visualSearchPreviewImageBounds.origin.x) = 0;
  self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__null_state_ = 0;
  LOBYTE(self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__val_.size.width) = 0;
  self->_dynamicImageAnalysisContextMenuState = 0;
  self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr = 0;
  self->_imageAnalysisContextMenuActionData.var0.__val_.machineReadableCodeMenu.m_ptr = 0;
  *&self->_imageAnalysisContextMenuActionData.__engaged_ = 0;
  *&self->_fullscreenVideoImageAnalysisRequestIdentifier = 0;
  LOBYTE(self->_imageAnalysisActionButtons.m_ptr) = 0;
  self->_anon_1218[8] = 0;
  *&self->_anon_1218[32] = 0;
  *&self->_anon_1218[40] = 0;
  *&self->_anon_1218[48] = 0;
  self->_asyncInputDelegate = 0;
  self->_pageClient.__ptr_ = 0;
  self->_rootContentView.m_ptr = 0;
  self->_fixedClippingView.m_ptr = 0;
  self->_inspectorIndicationView.m_ptr = 0;
  self->_inspectorHighlightView.m_ptr = 0;
  self->_visibilityPropagationViewForWebProcess.m_ptr = 0;
  self->_visibilityPropagationViewForGPUProcess.m_ptr = &self->_historicalKinematicData;
  self->_visibilityPropagationViews.m_ptr = 3;
  *&self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[0].m_storage.data[40] = 0;
  *self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data = 0;
  self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data[8] = 0;
  *&self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data[16] = 0;
  *&self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data[24] = 0;
  *&self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data[40] = 0;
  *self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[2].m_storage.data = 0;
  return self;
}

- (void)setUpDragAndDropInteractions
{
  v3 = [objc_alloc(-[WKContentView _dragInteractionClass](self "_dragInteractionClass"))];
  m_table = self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table;
  self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table = v3;
  if (m_table)
  {
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:self];
  v6 = self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table;
  self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table = v5;
  if (v6)
  {
  }

  v7 = self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table;
  v8 = [-[WKContentView webView](self "webView")];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC988] isEnabledByDefault];
  }

  [v7 setEnabled:v9];
  if (![(WKContentView *)self shouldUseAsyncInteractions])
  {
    v10 = self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table;
    [(WKContentView *)self dragLiftDelay];
    [v10 _setLiftDelay:?];
    [self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table _setAllowsPointerDragBeforeLiftDelay:0];
  }

  [(WKContentView *)self addInteraction:self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table];
  v11 = self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table;

  [(WKContentView *)self addInteraction:v11];
}

- (BOOL)shouldUseAsyncInteractions
{
  v3 = *(self->_page.m_ptr + 46);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useAsyncUIKitInteractionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useAsyncUIKitInteractionsKey(void)::key = WebKit::WebPreferencesKey::useAsyncUIKitInteractionsKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey((v3 + 40), &WebKit::WebPreferencesKey::useAsyncUIKitInteractionsKey(void)::key, v2);
}

- (void)setUpInteraction
{
  v82 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if ((*(m_ptr + 865) & 1) == 0 && *(m_ptr + 864) == 1 && (self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y & 1) == 0)
  {
    if (BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) == 1)
    {
      BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 0;
    }

    if (!self->_interactionViewsContainerView.m_ptr)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = self->_interactionViewsContainerView.m_ptr;
      self->_interactionViewsContainerView.m_ptr = v4;
      if (v5)
      {

        v4 = self->_interactionViewsContainerView.m_ptr;
      }

      [(CALayer *)[(UIView *)v4 layer] setName:@"InteractionViewsContainer"];
      [(UIView *)self->_interactionViewsContainerView.m_ptr setOpaque:0];
      [(CALayer *)[(UIView *)self->_interactionViewsContainerView.m_ptr layer] setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      [-[WKContentView superview](self "superview")];
    }

    v6 = objc_alloc_init(WKKeyboardScrollViewAnimator);
    positionInformationCallbackDepth = self->_positionInformationCallbackDepth;
    self->_positionInformationCallbackDepth = v6;
    if (positionInformationCallbackDepth)
    {

      v6 = self->_positionInformationCallbackDepth;
    }

    [(WKKeyboardScrollViewAnimator *)v6 setDelegate:self];
    v8 = [(WKContentView *)self layer];
    [v8 addObserver:self forKeyPath:@"transform" options:4 context:WKContentViewKVOTransformContext];
    v9 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:0 action:0];
    v10 = self->_touchActionLeftSwipeGestureRecognizer.m_ptr;
    self->_touchActionLeftSwipeGestureRecognizer.m_ptr = v9;
    if (v10)
    {

      v9 = self->_touchActionLeftSwipeGestureRecognizer.m_ptr;
    }

    [(UISwipeGestureRecognizer *)v9 setDirection:2];
    [(UISwipeGestureRecognizer *)self->_touchActionLeftSwipeGestureRecognizer.m_ptr setDelegate:self];
    [(UISwipeGestureRecognizer *)self->_touchActionLeftSwipeGestureRecognizer.m_ptr setName:@"Touch action swipe left"];
    [(WKContentView *)self addGestureRecognizer:self->_touchActionLeftSwipeGestureRecognizer.m_ptr];
    v11 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:0 action:0];
    v12 = self->_touchActionRightSwipeGestureRecognizer.m_ptr;
    self->_touchActionRightSwipeGestureRecognizer.m_ptr = v11;
    if (v12)
    {

      v11 = self->_touchActionRightSwipeGestureRecognizer.m_ptr;
    }

    [(UISwipeGestureRecognizer *)v11 setDirection:1];
    [(UISwipeGestureRecognizer *)self->_touchActionRightSwipeGestureRecognizer.m_ptr setDelegate:self];
    [(UISwipeGestureRecognizer *)self->_touchActionRightSwipeGestureRecognizer.m_ptr setName:@"Touch action swipe right"];
    [(WKContentView *)self addGestureRecognizer:self->_touchActionRightSwipeGestureRecognizer.m_ptr];
    v13 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:0 action:0];
    v14 = self->_touchActionUpSwipeGestureRecognizer.m_ptr;
    self->_touchActionUpSwipeGestureRecognizer.m_ptr = v13;
    if (v14)
    {

      v13 = self->_touchActionUpSwipeGestureRecognizer.m_ptr;
    }

    [(UISwipeGestureRecognizer *)v13 setDirection:4];
    [(UISwipeGestureRecognizer *)self->_touchActionUpSwipeGestureRecognizer.m_ptr setDelegate:self];
    [(UISwipeGestureRecognizer *)self->_touchActionUpSwipeGestureRecognizer.m_ptr setName:@"Touch action swipe up"];
    [(WKContentView *)self addGestureRecognizer:self->_touchActionUpSwipeGestureRecognizer.m_ptr];
    v15 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:0 action:0];
    v16 = self->_touchActionDownSwipeGestureRecognizer.m_ptr;
    self->_touchActionDownSwipeGestureRecognizer.m_ptr = v15;
    if (v16)
    {

      v15 = self->_touchActionDownSwipeGestureRecognizer.m_ptr;
    }

    [(UISwipeGestureRecognizer *)v15 setDirection:8];
    [(UISwipeGestureRecognizer *)self->_touchActionDownSwipeGestureRecognizer.m_ptr setDelegate:self];
    [(UISwipeGestureRecognizer *)self->_touchActionDownSwipeGestureRecognizer.m_ptr setName:@"Touch action swipe down"];
    [(WKContentView *)self addGestureRecognizer:self->_touchActionDownSwipeGestureRecognizer.m_ptr];
    v17 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v18 = self->_touchStartDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr;
    self->_touchStartDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr = v17;
    if (v18)
    {

      v17 = self->_touchStartDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v17 setName:@"Deferrer for touch start (immediate reset)"];
    v19 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v20 = self->_touchStartDeferringGestureRecognizerForDelayedResettableGestures.m_ptr;
    self->_touchStartDeferringGestureRecognizerForDelayedResettableGestures.m_ptr = v19;
    if (v20)
    {

      v19 = self->_touchStartDeferringGestureRecognizerForDelayedResettableGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v19 setName:@"Deferrer for touch start (delayed reset)"];
    v21 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v22 = self->_touchStartDeferringGestureRecognizerForSyntheticTapGestures.m_ptr;
    self->_touchStartDeferringGestureRecognizerForSyntheticTapGestures.m_ptr = v21;
    if (v22)
    {

      v21 = self->_touchStartDeferringGestureRecognizerForSyntheticTapGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v21 setName:@"Deferrer for touch start (synthetic tap)"];
    v23 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v24 = self->_touchEndDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr;
    self->_touchEndDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr = v23;
    if (v24)
    {

      v23 = self->_touchEndDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v23 setName:@"Deferrer for touch end (immediate reset)"];
    v25 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v26 = self->_touchEndDeferringGestureRecognizerForDelayedResettableGestures.m_ptr;
    self->_touchEndDeferringGestureRecognizerForDelayedResettableGestures.m_ptr = v25;
    if (v26)
    {

      v25 = self->_touchEndDeferringGestureRecognizerForDelayedResettableGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v25 setName:@"Deferrer for touch end (delayed reset)"];
    v27 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v28 = self->_touchEndDeferringGestureRecognizerForSyntheticTapGestures.m_ptr;
    self->_touchEndDeferringGestureRecognizerForSyntheticTapGestures.m_ptr = v27;
    if (v28)
    {

      v27 = self->_touchEndDeferringGestureRecognizerForSyntheticTapGestures.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v27 setName:@"Deferrer for touch end (synthetic tap)"];
    v29 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v30 = self->_touchMoveDeferringGestureRecognizer.m_ptr;
    self->_touchMoveDeferringGestureRecognizer.m_ptr = v29;
    if (v30)
    {

      v29 = self->_touchMoveDeferringGestureRecognizer.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v29 setName:@"Deferrer for touch move"];
    v31 = [[WKDeferringGestureRecognizer alloc] initWithDeferringGestureDelegate:self];
    v32 = self->_imageAnalysisDeferringGestureRecognizer.m_ptr;
    self->_imageAnalysisDeferringGestureRecognizer.m_ptr = v31;
    if (v32)
    {

      v31 = self->_imageAnalysisDeferringGestureRecognizer.m_ptr;
    }

    [(WKDeferringGestureRecognizer *)v31 setName:@"Deferrer for image analysis"];
    [(WKDeferringGestureRecognizer *)self->_imageAnalysisDeferringGestureRecognizer.m_ptr setImmediatelyFailsAfterTouchEnd:1];
    [(WKDeferringGestureRecognizer *)self->_imageAnalysisDeferringGestureRecognizer.m_ptr setEnabled:PAL::VisionKitCoreLibrary(1) != 0];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v33 = [(WKContentView *)self deferringGestures];
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v34)
    {
      v35 = *v78;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v78 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v77 + 1) + 8 * i);
          [v37 setDelegate:self];
          [(WKContentView *)self addGestureRecognizer:v37];
        }

        v34 = [(NSArray *)v33 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v34);
    }

    ptr = self->_gestureRecognizerConsistencyEnforcer.__ptr_;
    if (ptr)
    {
      WebKit::GestureRecognizerConsistencyEnforcer::reset(ptr);
    }

    v39 = [[WKTouchEventsGestureRecognizer alloc] initWithContentView:self];
    v40 = self->_touchEventGestureRecognizer.m_ptr;
    self->_touchEventGestureRecognizer.m_ptr = v39;
    if (v40)
    {

      v39 = self->_touchEventGestureRecognizer.m_ptr;
    }

    [(WKTouchEventsGestureRecognizer *)v39 setDelegate:self];
    [(WKContentView *)self addGestureRecognizer:self->_touchEventGestureRecognizer.m_ptr];
    [(WKContentView *)self setUpMouseGestureRecognizer];
    v41 = [[WKSyntheticTapGestureRecognizer alloc] initWithTarget:self action:sel__singleTapRecognized_];
    v42 = self->_singleTapGestureRecognizer.m_ptr;
    self->_singleTapGestureRecognizer.m_ptr = v41;
    if (v42)
    {

      v41 = self->_singleTapGestureRecognizer.m_ptr;
    }

    [(WKSyntheticTapGestureRecognizer *)v41 setDelegate:self];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setGestureIdentifiedTarget:self action:sel__singleTapIdentified_];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setResetTarget:self action:sel__singleTapDidReset_];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setSupportingTouchEventsGestureRecognizer:self->_touchEventGestureRecognizer.m_ptr];
    [(WKContentView *)self addGestureRecognizer:self->_singleTapGestureRecognizer.m_ptr];
    v43 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__nonBlockingDoubleTapRecognized_];
    v44 = self->_nonBlockingDoubleTapGestureRecognizer.m_ptr;
    self->_nonBlockingDoubleTapGestureRecognizer.m_ptr = v43;
    if (v44)
    {

      v43 = self->_nonBlockingDoubleTapGestureRecognizer.m_ptr;
    }

    [(UITapGestureRecognizer *)v43 setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_nonBlockingDoubleTapGestureRecognizer.m_ptr setDelegate:self];
    [(UITapGestureRecognizer *)self->_nonBlockingDoubleTapGestureRecognizer.m_ptr setEnabled:0];
    [(WKContentView *)self addGestureRecognizer:self->_nonBlockingDoubleTapGestureRecognizer.m_ptr];
    v45 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__doubleTapRecognizedForDoubleClick_];
    v46 = self->_doubleTapGestureRecognizerForDoubleClick.m_ptr;
    self->_doubleTapGestureRecognizerForDoubleClick.m_ptr = v45;
    if (v46)
    {

      v45 = self->_doubleTapGestureRecognizerForDoubleClick.m_ptr;
    }

    [(UITapGestureRecognizer *)v45 setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizerForDoubleClick.m_ptr setDelegate:self];
    [(WKContentView *)self addGestureRecognizer:self->_doubleTapGestureRecognizerForDoubleClick.m_ptr];
    [(WKContentView *)self _createAndConfigureDoubleTapGestureRecognizer];
    v47 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__twoFingerDoubleTapRecognized_];
    v48 = self->_twoFingerDoubleTapGestureRecognizer.m_ptr;
    self->_twoFingerDoubleTapGestureRecognizer.m_ptr = v47;
    if (v48)
    {

      v47 = self->_twoFingerDoubleTapGestureRecognizer.m_ptr;
    }

    [(UITapGestureRecognizer *)v47 setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_twoFingerDoubleTapGestureRecognizer.m_ptr setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)self->_twoFingerDoubleTapGestureRecognizer.m_ptr setDelegate:self];
    [(WKContentView *)self addGestureRecognizer:self->_twoFingerDoubleTapGestureRecognizer.m_ptr];
    [(WKContentView *)self _createAndConfigureHighlightLongPressGestureRecognizer];
    [(WKContentView *)self _createAndConfigureLongPressGestureRecognizer];
    [(WKContentView *)self _updateLongPressAndHighlightLongPressGestures];
    [(WKContentView *)self setUpDragAndDropInteractions];
    [(WKContentView *)self setUpPointerInteraction];
    [(WKContentView *)self setUpScribbleInteraction];
    v49 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__twoFingerSingleTapGestureRecognized_];
    v50 = self->_twoFingerSingleTapGestureRecognizer.m_ptr;
    self->_twoFingerSingleTapGestureRecognizer.m_ptr = v49;
    if (v50)
    {

      v49 = self->_twoFingerSingleTapGestureRecognizer.m_ptr;
    }

    [(UITapGestureRecognizer *)v49 setAllowableMovement:60.0];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr _setAllowableSeparation:150.0];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr setDelegate:self];
    -[UITapGestureRecognizer setEnabled:](self->_twoFingerSingleTapGestureRecognizer.m_ptr, "setEnabled:", [-[WKContentView webView](self "webView")] ^ 1);
    [(WKContentView *)self addGestureRecognizer:self->_twoFingerSingleTapGestureRecognizer.m_ptr];
    v51 = [[WKTouchActionGestureRecognizer alloc] initWithTouchActionDelegate:self];
    v52 = self->_touchActionGestureRecognizer.m_ptr;
    self->_touchActionGestureRecognizer.m_ptr = v51;
    if (v52)
    {

      v51 = self->_touchActionGestureRecognizer.m_ptr;
    }

    [(WKContentView *)self addGestureRecognizer:v51];
    [(WKContentView *)self setUpTextSelectionAssistant];
    v53 = [[WKScrollViewTrackingTapGestureRecognizer alloc] initWithTarget:self action:sel__keyboardDismissalGestureRecognized_];
    v54 = self->_keyboardDismissalGestureRecognizer.m_ptr;
    self->_keyboardDismissalGestureRecognizer.m_ptr = v53;
    if (v54)
    {

      v53 = self->_keyboardDismissalGestureRecognizer.m_ptr;
    }

    [(WKScrollViewTrackingTapGestureRecognizer *)v53 setNumberOfTapsRequired:1];
    [(WKScrollViewTrackingTapGestureRecognizer *)self->_keyboardDismissalGestureRecognizer.m_ptr setDelegate:self];
    [(WKScrollViewTrackingTapGestureRecognizer *)self->_keyboardDismissalGestureRecognizer.m_ptr setName:@"Keyboard dismissal tap gesture"];
    v56 = self->_keyboardDismissalGestureRecognizer.m_ptr;
    v57 = *(self->_page.m_ptr + 46);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::keyboardDismissalGestureEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::keyboardDismissalGestureEnabledKey(void)::key = WebKit::WebPreferencesKey::keyboardDismissalGestureEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    [(WKScrollViewTrackingTapGestureRecognizer *)v56 setEnabled:WebKit::WebPreferencesStore::getBoolValueForKey((v57 + 40), &WebKit::WebPreferencesKey::keyboardDismissalGestureEnabledKey(void)::key, v55)];
    [(WKContentView *)self addGestureRecognizer:self->_keyboardDismissalGestureRecognizer.m_ptr];
    v58 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__gamepadInteractionGestureRecognized_];
    v59 = self->_gamepadInteractionGestureRecognizer.m_ptr;
    self->_gamepadInteractionGestureRecognizer.m_ptr = v58;
    if (v59)
    {

      v58 = self->_gamepadInteractionGestureRecognizer.m_ptr;
    }

    [(UITapGestureRecognizer *)v58 setDelegate:self];
    [(UITapGestureRecognizer *)self->_gamepadInteractionGestureRecognizer.m_ptr setName:@"Gamepad interaction menu gesture"];
    [(UITapGestureRecognizer *)self->_gamepadInteractionGestureRecognizer.m_ptr setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UITapGestureRecognizer *)self->_gamepadInteractionGestureRecognizer.m_ptr setAllowedPressTypes:&unk_1F1184D10];
    [(WKContentView *)self addGestureRecognizer:self->_gamepadInteractionGestureRecognizer.m_ptr];
    v61 = objc_alloc(MEMORY[0x1E69DCD38]);
    v62 = *(self->_page.m_ptr + 46);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v62 + 40), &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v60);
    if (BoolValueForKey)
    {
      if (byte_1EB01D9EA == 1)
      {
        v64 = qword_1EB01D9F0;
      }

      else
      {
        v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v75 = [v64 addObjectsFromArray:WebKit::supportedRichTextPasteboardTypesForPasteConfiguration(v64)];
        [v64 addObjectsFromArray:WebCore::Pasteboard::supportedFileUploadPasteboardTypes(v75)];
        qword_1EB01D9F0 = v64;
        byte_1EB01D9EA = 1;
      }
    }

    else
    {
      v64 = WebKit::supportedRichTextPasteboardTypesForPasteConfiguration(BoolValueForKey);
    }

    v65 = [v61 initWithAcceptableTypeIdentifiers:v64];
    [(WKContentView *)self setPasteConfiguration:v65];
    if (v65)
    {
    }

    [(WKContentView *)self _registerPreview];
    v66 = [MEMORY[0x1E696AD88] defaultCenter];
    [v66 addObserver:self selector:sel__willHideMenu_ name:*MEMORY[0x1E69DE0E8] object:0];
    [v66 addObserver:self selector:sel__keyboardDidRequestDismissal_ name:*MEMORY[0x1E69DE000] object:0];
    v67 = [[WKActionSheetAssistant alloc] initWithView:self];
    v68 = self->_actionSheetAssistant.m_ptr;
    self->_actionSheetAssistant.m_ptr = v67;
    if (v68)
    {

      v67 = self->_actionSheetAssistant.m_ptr;
    }

    [(WKActionSheetAssistant *)v67 setDelegate:self];
    WebKit::SmartMagnificationController::create(self, v69, &v76);
    v70 = self->_smartMagnificationController.m_ptr;
    self->_smartMagnificationController.m_ptr = v76;
    if (v70)
    {
      if (*(v70 + 4) == 1)
      {
        (*(*v70 + 24))(v70);
      }

      else
      {
        --*(v70 + 4);
      }
    }

    self->_touchEventsCanPreventNativeGestures = 1;
    HIBYTE(self->_dataListTextSuggestions.m_ptr) = 0;
    BYTE4(self->_dataListTextSuggestionsInputView.m_ptr) = 0;
    BYTE5(self->_dataListTextSuggestionsInputView.m_ptr) = 0;
    LOBYTE(self->_dataListSuggestionsControl.m_weakReference) = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    self->_isTapHighlightIDValid = 0;
    self->_isTapHighlightFading = 0;
    self->_isDoubleTapPending = 0;
    self->_isDisplayingContextMenuWithAnimation = 0;
    self->_showDebugTapHighlightsForFastClicking = 0;
    v71 = *&self->_inputViewUpdateDeferralSources.m_storage;
    *&self->_inputViewUpdateDeferralSources.m_storage = 0;
    if (v71)
    {
    }

    v72 = self->_keyboardScrollingAnimator.m_ptr;
    self->_keyboardScrollingAnimator.m_ptr = 0;
    if (v72)
    {
    }

    BYTE4(self->_dataListSuggestionsControl.m_weakReference) = 1;
    WebKit::WebProcessProxy::updateTextCheckerState(*(self->_page.m_ptr + 44));
    WebKit::WebPageProxy::setScreenIsBeingCaptured(self->_page.m_ptr, [(WKContentView *)self screenIsBeingCaptured]);
    [(WKContentView *)self _setUpImageAnalysis];
    v73 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v74 = self->_editDropCaretView.m_ptr;
    self->_editDropCaretView.m_ptr = v73;
    if (v74)
    {
    }

    self->_selectionInteractionType = 0;
    LOBYTE(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 1;
  }
}

- (void)setUpPointerInteraction
{
  v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  m_ptr = self->_pointerInteraction.m_ptr;
  self->_pointerInteraction.m_ptr = v3;
  if (m_ptr)
  {

    v5 = self->_pointerInteraction.m_ptr;
  }

  else
  {
    v5 = v3;
  }

  [(WKContentView *)self addInteraction:v5];
}

- (void)setUpScribbleInteraction
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAF0]) initWithDelegate:self];
  m_ptr = self->_scribbleInteraction.m_ptr;
  self->_scribbleInteraction.m_ptr = v3;
  if (m_ptr)
  {

    v5 = self->_scribbleInteraction.m_ptr;
  }

  else
  {
    v5 = v3;
  }

  [(WKContentView *)self addInteraction:v5];
}

- (void)_updateRuntimeProtocolConformanceIfNeeded
{
  v2 = [WKContentView(WKInteraction) _updateRuntimeProtocolConformanceIfNeeded]::hasUpdatedProtocolConformance;
  [WKContentView(WKInteraction) _updateRuntimeProtocolConformanceIfNeeded]::hasUpdatedProtocolConformance = 1;
  if ((v2 & 1) == 0)
  {
    v4 = [(WKContentView *)self shouldUseAsyncInteractions];
    v5 = qword_1ED641418;
    v6 = os_log_type_enabled(qword_1ED641418, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "Conforming to BrowserEngineKit text input protocol", &v16, 2u);
      }

      v7 = objc_opt_class();
      class_addProtocol(v7, &unk_1F12117B0);
    }

    else
    {
      if (v6)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "Conforming to legacy UIKit interaction and text input protocols", &v16, 2u);
      }

      v8 = 0;
      v16 = &unk_1F1211B80;
      v17 = &unk_1F11AF280;
      v18 = &unk_1F11A7D78;
      v19 = &unk_1F1211C48;
      v20 = &unk_1F1211D30;
      do
      {
        v9 = *(&v16 + v8);
        v10 = objc_opt_class();
        class_addProtocol(v10, v9);
        v8 += 8;
      }

      while (v8 != 40);
    }

    if (![(WKContentView *)self _shouldUseUIContextMenuAsyncConfiguration:v16])
    {
      v11 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v11, sel__internalContextMenuInteraction_configurationForMenuAtLocation_completion_);
      Implementation = method_getImplementation(InstanceMethod);
      v14 = objc_opt_class();
      TypeEncoding = method_getTypeEncoding(InstanceMethod);
      class_addMethod(v14, sel__contextMenuInteraction_configurationForMenuAtLocation_completion_, Implementation, TypeEncoding);
    }
  }
}

- (BOOL)screenIsBeingCaptured
{
  v2 = [-[WKContentView window](self "window")];

  return [v2 isCaptured];
}

- (void)_installVisibilityPropagationViews
{
  v3 = [(WKContentView *)self _createVisibilityPropagationView];
  if (v3)
  {

    [(WKContentView *)self addSubview:v3];
  }

  else
  {
    [(WKContentView *)self _setupVisibilityPropagationForWebProcess];

    [(WKContentView *)self _setupVisibilityPropagationForGPUProcess];
  }
}

- (id)_createVisibilityPropagationView
{
  if (!self->_inspectorIndicationView.m_ptr)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    m_ptr = self->_inspectorIndicationView.m_ptr;
    self->_inspectorIndicationView.m_ptr = v3;
    if (m_ptr)
    {
    }
  }

  v5 = objc_alloc_init(WKVisibilityPropagationView);
  [(WKInspectorIndicationView *)self->_inspectorIndicationView.m_ptr addObject:v5];
  [(WKContentView *)self _setupVisibilityPropagationForWebProcess];
  [(WKContentView *)self _setupVisibilityPropagationForGPUProcess];
  if (v5)
  {
    v6 = v5;
  }

  return v5;
}

- (void)_setupVisibilityPropagationForWebProcess
{
  v14 = *MEMORY[0x1E69E9840];
  m_ptr = self->_page.m_ptr;
  if ((*(m_ptr + 865) & 1) == 0 && *(m_ptr + 864) == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_inspectorIndicationView.m_ptr;
    v5 = [(WKInspectorIndicationView *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) propagateVisibilityToProcess:*(self->_page.m_ptr + 44)];
        }

        v6 = [(WKInspectorIndicationView *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setupVisibilityPropagationForGPUProcess
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(self->_page.m_ptr + 8) + 16)) + 176);
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    m_ptr = self->_inspectorIndicationView.m_ptr;
    v5 = [(WKInspectorIndicationView *)m_ptr countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(m_ptr);
          }

          [*(*(&v9 + 1) + 8 * v8++) propagateVisibilityToProcess:v3];
        }

        while (v6 != v8);
        v6 = [(WKInspectorIndicationView *)m_ptr countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_accessibilityRegisterUIProcessTokens
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  WebCore::Accessibility::newAccessibilityRemoteToken(&v19, v4, v5);
  if (v19)
  {
    v6 = *(self->_page.m_ptr + 44);
    v7 = *(v6 + 80);
    if ((!v7 || (*(v7 + 104) & 1) == 0) && *(v6 + 88))
    {
      [(WKContentView *)self _updateRemoteAccessibilityRegistration:1];
      v8 = *(*(self->_page.m_ptr + 44) + 80);
      if (v8)
      {
        v9 = *(v8 + 108);
      }

      else
      {
        v9 = 0;
      }

      objc_setAssociatedObject(self, [@"ax-uuid" hash], v3, 1);
      v10 = [@"ax-pid" hash];
      objc_setAssociatedObject(self, v10, [MEMORY[0x1E696AD98] numberWithInt:v9], 1);
      v11 = v19;
      if (v19 && (v12 = [v19 bytes], v13 = objc_msgSend(v11, "length"), (v11 = v13) != 0))
      {
        if (HIDWORD(v13))
        {
          __break(0xC471u);
          return;
        }

        v14 = WTF::fastMalloc(v13);
        v15 = v14;
        v16 = 0;
        do
        {
          v16[v14] = v16[v12];
          ++v16;
        }

        while (v11 != v16);
      }

      else
      {
        v15 = 0;
      }

      WebKit::WebPageProxy::registerUIProcessAccessibilityTokens(self->_page.m_ptr, v15, v11, v15, v11);
      if (v15)
      {
        WTF::fastFree(v15, v17);
      }
    }

    v18 = v19;
    v19 = 0;
    if (v18)
    {
    }
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = WKContentView;
  [(WKApplicationStateTrackingView *)&v7 didMoveToWindow];
  if (BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) == 1)
  {
    BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 0;
  }

  if ([(WKContentView *)self window])
  {
    [(WKContentView *)self setUpInteraction];
    IsBeingCaptured = WebKit::WebPageProxy::setScreenIsBeingCaptured(self->_page.m_ptr, [(WKContentView *)self screenIsBeingCaptured]);
    WTF::RunLoop::mainSingleton(IsBeingCaptured);
    v4 = self;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F1144F88;
    v5[1] = self;
    v6 = v5;
    WTF::RunLoop::dispatch();
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    [(WKContentView *)self cleanUpInteractionPreviewContainers];
  }
}

- (void)_updateTapHighlight
{
  if (![(WKTapHighlightView *)self->_tapHighlightView.m_ptr superview])
  {
    return;
  }

  m_ptr = self->_tapHighlightView.m_ptr;
  WebCore::cocoaColor(&v65, &self->_tapHighlightInformation.color, v3);
  [(WKTapHighlightView *)m_ptr setColor:*&v65.m_p1];
  m_p1 = v65.m_p1;
  v65.m_p1 = 0;
  if (m_p1)
  {
  }

  m_size = self->_tapHighlightInformation.quads.m_size;
  if (m_size)
  {
    m_buffer = self->_tapHighlightInformation.quads.m_buffer;
    v8 = 32 * m_size - 32;
    do
    {
      isRectilinear = WebCore::FloatQuad::isRectilinear(m_buffer);
      if (!isRectilinear)
      {
        break;
      }

      ++m_buffer;
      v10 = v8;
      v8 -= 32;
    }

    while (v10);
  }

  else
  {
    isRectilinear = 1;
  }

  v11 = [(WKContentView *)self layer];
  if (v11)
  {
    [v11 transform];
    v12 = *&v65.m_p1;
  }

  else
  {
    v12 = 0.0;
  }

  v62 = v12;
  if (!isRectilinear)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4 * self->_tapHighlightInformation.quads.m_size];
    v42 = self->_tapHighlightInformation.quads.m_size;
    if (v42)
    {
      v43 = self->_tapHighlightInformation.quads.m_buffer;
      v44 = 32 * v42;
      do
      {
        v65 = *v43;
        *&v65.m_p1.m_x = vmulq_n_f32(*&v65.m_p1.m_x, v62);
        *&v65.m_p3.m_x = vmulq_n_f32(*&v65.m_p3.m_x, v62);
        inflateQuad(&v66, v65.m_p1.m_x, &v65.m_p1);
        v45 = MEMORY[0x1E696B098];
        WebCore::FloatPoint::operator CGPoint();
        [v16 addObject:{objc_msgSend(v45, "valueWithCGPoint:")}];
        v46 = MEMORY[0x1E696B098];
        WebCore::FloatPoint::operator CGPoint();
        [v16 addObject:{objc_msgSend(v46, "valueWithCGPoint:")}];
        v47 = MEMORY[0x1E696B098];
        WebCore::FloatPoint::operator CGPoint();
        [v16 addObject:{objc_msgSend(v47, "valueWithCGPoint:")}];
        v48 = MEMORY[0x1E696B098];
        WebCore::FloatPoint::operator CGPoint();
        [v16 addObject:{objc_msgSend(v48, "valueWithCGPoint:")}];
        ++v43;
        v44 -= 32;
      }

      while (v44);
      v49 = self->_tapHighlightInformation.quads.m_size;
      v63 = 0;
      v64 = 0;
      if (v49)
      {
        if (v49 >> 27)
        {
          goto LABEL_49;
        }

        v50 = WTF::fastMalloc((32 * v49));
        LODWORD(v64) = v49;
        v63 = v50;
        if (self->_tapHighlightInformation.quads.m_size)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            v66 = self->_tapHighlightInformation.quads.m_buffer[v51];
            *&v66.m_p1.m_x = vmulq_n_f32(*&v66.m_p1.m_x, v62);
            *&v66.m_p3.m_x = vmulq_n_f32(*&v66.m_p3.m_x, v62);
            inflateQuad(&v65, v66.m_p1.m_x, &v66.m_p1);
            *(v50 + v51 * 32) = v65;
            ++v52;
            ++v51;
          }

          while (v52 < self->_tapHighlightInformation.quads.m_size);
          HIDWORD(v64) = v52;
        }
      }
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v55 = self->_tapHighlightView.m_ptr;
    v56 = *(self->_page.m_ptr + 4);
    v57 = 0uLL;
    if (*(v56 + 2784) == 1)
    {
      v57 = *(v56 + 2600);
    }

    *&v65.m_p1.m_x = v57;
    [(WKTapHighlightView *)v55 setQuads:&v63 boundaryRect:&v65];
    v54 = v63;
    if (!v63)
    {
      goto LABEL_45;
    }

    v63 = 0;
    LODWORD(v64) = 0;
    goto LABEL_44;
  }

  v13 = self->_page.m_ptr;
  v14 = 824;
  if (*(v13 + 832))
  {
    v14 = 828;
  }

  v15 = *(v13 + v14);
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_tapHighlightInformation.quads.m_size];
  v17 = self->_tapHighlightInformation.quads.m_size;
  if (!v17)
  {
    v33 = self->_tapHighlightView.m_ptr;
    v66.m_p1 = 0;
    v66.m_p2 = 0;
    goto LABEL_37;
  }

  v18 = self->_tapHighlightInformation.quads.m_buffer;
  v19 = 32 * v17;
  v61 = xmmword_19E703D50;
  do
  {
    WebCore::FloatQuad::boundingBox(v18);
    v65.m_p1 = __PAIR64__(v21, v20);
    v65.m_p2 = __PAIR64__(v23, v22);
    WebCore::FloatRect::scale(&v65, v62, v62);
    v24.i64[0] = v65.m_p1;
    *&v24.u32[2] = vadd_f32(v65.m_p2, 0x4000000040000000);
    *&v65.m_p1.m_x = vaddq_f32(v24, xmmword_19E703D50);
    v25 = MEMORY[0x1E696B098];
    WebCore::encloseRectToDevicePixels(&v65, v26, v15);
    v66.m_p1.m_x = v27;
    v66.m_p1.m_y = v28;
    v66.m_p2.m_x = v29;
    v66.m_p2.m_y = v30;
    WebCore::FloatRect::operator CGRect();
    v31 = [v25 valueWithCGRect:?];
    if (v31)
    {
      [v16 addObject:v31];
    }

    ++v18;
    v19 -= 32;
  }

  while (v19);
  v32 = self->_tapHighlightInformation.quads.m_size;
  v33 = self->_tapHighlightView.m_ptr;
  v66.m_p1 = 0;
  v66.m_p2 = 0;
  if (v32)
  {
    if (!(v32 >> 28))
    {
      v34 = WTF::fastMalloc((16 * v32));
      LODWORD(v66.m_p2.m_x) = v32;
      v66.m_p1 = v34;
      if (self->_tapHighlightInformation.quads.m_size)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          WebCore::FloatQuad::boundingBox(&self->_tapHighlightInformation.quads.m_buffer[v35]);
          v65.m_p1 = __PAIR64__(v38, v37);
          v65.m_p2 = __PAIR64__(v40, v39);
          WebCore::FloatRect::scale(&v65, v62, v62);
          v41.i64[0] = v65.m_p1;
          *&v41.u32[2] = vadd_f32(v65.m_p2, 0x4000000040000000);
          *(v34 + 16 * v36++) = vaddq_f32(v41, xmmword_19E703D50);
          ++v35;
        }

        while (v36 < self->_tapHighlightInformation.quads.m_size);
        LODWORD(v66.m_p2.m_y) = v36;
      }

      goto LABEL_37;
    }

LABEL_49:
    __break(0xC471u);
    JUMPOUT(0x19D5E8754);
  }

LABEL_37:
  [(WKTapHighlightView *)v33 setFrames:&v66, v61];
  v54 = v66.m_p1;
  if (v66.m_p1)
  {
    v66.m_p1 = 0;
    v66.m_p2.m_x = 0.0;
LABEL_44:
    WTF::fastFree(v54, v53);
  }

LABEL_45:
  if (v16)
  {
  }

  v58 = self->_tapHighlightView.m_ptr;
  v59.i64[0] = 0x4000000040000000;
  v59.i64[1] = 0x4000000040000000;
  v60 = vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(*&self->_tapHighlightInformation.bottomLeftRadius.m_width), v62), v59);
  *&v65.m_p1.m_x = vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(*&self->_tapHighlightInformation.topLeftRadius.m_width), v62), v59);
  *&v65.m_p3.m_x = v60;
  [(WKTapHighlightView *)v58 setCornerRadii:&v65];
}

- (NSArray)deferringGestures
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  [(NSArray *)v3 addObjectsFromArray:[(WKContentView *)self _touchStartDeferringGestures]];
  [(NSArray *)v3 addObjectsFromArray:[(WKContentView *)self _touchEndDeferringGestures]];
  if (self->_touchMoveDeferringGestureRecognizer.m_ptr)
  {
    [(NSArray *)v3 addObject:?];
  }

  if (self->_imageAnalysisDeferringGestureRecognizer.m_ptr)
  {
    [(NSArray *)v3 addObject:?];
  }

  return v3;
}

- (id)_touchStartDeferringGestures
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v4 = v3;
  if (self->_touchStartDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr)
  {
    [v3 addObject:?];
  }

  if (self->_touchStartDeferringGestureRecognizerForDelayedResettableGestures.m_ptr)
  {
    [v4 addObject:?];
  }

  if (self->_touchStartDeferringGestureRecognizerForSyntheticTapGestures.m_ptr)
  {
    [v4 addObject:?];
  }

  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (id)_touchEndDeferringGestures
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v4 = v3;
  if (self->_touchEndDeferringGestureRecognizerForImmediatelyResettableGestures.m_ptr)
  {
    [v3 addObject:?];
  }

  if (self->_touchEndDeferringGestureRecognizerForDelayedResettableGestures.m_ptr)
  {
    [v4 addObject:?];
  }

  if (self->_touchEndDeferringGestureRecognizerForSyntheticTapGestures.m_ptr)
  {
    [v4 addObject:?];
  }

  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (void)setUpMouseGestureRecognizer
{
  if (self->_mouseInteraction.m_ptr)
  {
    [(WKContentView *)self removeInteraction:?];
  }

  v3 = [[WKMouseInteraction alloc] initWithDelegate:self];
  m_ptr = self->_mouseInteraction.m_ptr;
  self->_mouseInteraction.m_ptr = v3;
  if (m_ptr)
  {

    v5 = self->_mouseInteraction.m_ptr;
  }

  else
  {
    v5 = v3;
  }

  [(WKContentView *)self addInteraction:v5];

  [(WKContentView *)self _configureMouseGestureRecognizer];
}

- (void)_configureMouseGestureRecognizer
{
  m_ptr = self->_mouseInteraction.m_ptr;
  v3 = [(WKContentView *)self shouldUseMouseGestureRecognizer];

  [(WKMouseInteraction *)m_ptr setEnabled:v3];
}

- (BOOL)shouldUseMouseGestureRecognizer
{
  if (byte_1EB01D9E9 != 1)
  {
    v10 = v2;
    v11 = v3;
    v8 = self;
    isNews = WTF::IOSApplication::isNews(self);
    if ((isNews & 1) == 0 && (WTF::IOSApplication::isStocks(isNews) & 1) == 0)
    {
      v7 = WTF::linkedOnOrAfterSDKWithBehavior();
      if ((v7 & 1) != 0 || !WTF::IOSApplication::isEssentialSkeleton(v7))
      {
        v4 = 1;
        goto LABEL_7;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "WARNING: This application has been observed to ignore mouse events in web content; touch events will be sent until it is built against the iOS 13.4 SDK, but after that, the web content must respect mouse or pointer events in addition to touch events in order to behave correctly when a trackpad or mouse is used.", buf, 2u);
      }
    }

    v4 = 0;
LABEL_7:
    _MergedGlobals_921 = v4;
    byte_1EB01D9E9 = 1;
    self = v8;
    return (self->_mouseEventPolicy != 1) & v4;
  }

  v4 = _MergedGlobals_921;
  return (self->_mouseEventPolicy != 1) & v4;
}

- (void)_createAndConfigureDoubleTapGestureRecognizer
{
  if (self->_doubleTapGestureRecognizer.m_ptr)
  {
    [(WKContentView *)self removeGestureRecognizer:?];
    [(WKSyntheticTapGestureRecognizer *)self->_doubleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKSyntheticTapGestureRecognizer *)self->_doubleTapGestureRecognizer.m_ptr setGestureFailedTarget:0 action:0];
  }

  v3 = [[WKSyntheticTapGestureRecognizer alloc] initWithTarget:self action:sel__doubleTapRecognized_];
  m_ptr = self->_doubleTapGestureRecognizer.m_ptr;
  self->_doubleTapGestureRecognizer.m_ptr = v3;
  if (m_ptr)
  {

    v3 = self->_doubleTapGestureRecognizer.m_ptr;
  }

  [(WKSyntheticTapGestureRecognizer *)v3 setGestureFailedTarget:self action:sel__doubleTapDidFail_];
  [(WKSyntheticTapGestureRecognizer *)self->_doubleTapGestureRecognizer.m_ptr setNumberOfTapsRequired:2];
  [(WKSyntheticTapGestureRecognizer *)self->_doubleTapGestureRecognizer.m_ptr setDelegate:self];
  [(WKContentView *)self addGestureRecognizer:self->_doubleTapGestureRecognizer.m_ptr];
  [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer.m_ptr];
  v5 = self->_keyboardDismissalGestureRecognizer.m_ptr;
  v6 = self->_doubleTapGestureRecognizer.m_ptr;

  [(WKScrollViewTrackingTapGestureRecognizer *)v5 requireGestureRecognizerToFail:v6];
}

- (void)_createAndConfigureHighlightLongPressGestureRecognizer
{
  v3 = [(_UIWebHighlightLongPressGestureRecognizer *)[WKHighlightLongPressGestureRecognizer alloc] initWithTarget:self action:sel__highlightLongPressRecognized_];
  m_ptr = self->_highlightLongPressGestureRecognizer.m_ptr;
  self->_highlightLongPressGestureRecognizer.m_ptr = v3;
  if (m_ptr)
  {

    v3 = self->_highlightLongPressGestureRecognizer.m_ptr;
  }

  [(WKHighlightLongPressGestureRecognizer *)v3 setDelay:0.119999997];
  [(WKHighlightLongPressGestureRecognizer *)self->_highlightLongPressGestureRecognizer.m_ptr setDelegate:self];
  v5 = self->_highlightLongPressGestureRecognizer.m_ptr;

  [(WKContentView *)self addGestureRecognizer:v5];
}

- (void)_createAndConfigureLongPressGestureRecognizer
{
  v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__longPressRecognized_];
  m_ptr = self->_longPressGestureRecognizer.m_ptr;
  self->_longPressGestureRecognizer.m_ptr = v3;
  if (m_ptr)
  {

    v3 = self->_longPressGestureRecognizer.m_ptr;
  }

  [(UILongPressGestureRecognizer *)v3 setDelay:0.75];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer.m_ptr setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer.m_ptr _setRequiresQuietImpulse:1];
  v5 = self->_longPressGestureRecognizer.m_ptr;

  [(WKContentView *)self addGestureRecognizer:v5];
}

- (void)_updateLongPressAndHighlightLongPressGestures
{
  m_ptr = self->_highlightLongPressGestureRecognizer.m_ptr;
  if ([(WKContentView *)self _shouldUseContextMenus])
  {
    v4 = [-[WKContentView webView](self "webView")] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  [(WKHighlightLongPressGestureRecognizer *)m_ptr setEnabled:v4];
  v5 = self->_longPressGestureRecognizer.m_ptr;
  if ([(WKContentView *)self _shouldUseContextMenus])
  {
    v6 = 0;
  }

  else
  {
    v6 = [-[WKContentView webView](self "webView")];
  }

  [(UILongPressGestureRecognizer *)v5 setEnabled:v6];
}

- (Class)_dragInteractionClass
{
  [(WKContentView *)self shouldUseAsyncInteractions];

  return objc_opt_class();
}

- (void)setUpTextSelectionAssistant
{
  m_ptr = self->_textInteractionWrapper.m_ptr;
  if (m_ptr)
  {
    [(WKTextInteractionWrapper *)m_ptr setGestureRecognizers];
  }

  else
  {
    v4 = [[WKTextInteractionWrapper alloc] initWithView:self];
    v5 = self->_textInteractionWrapper.m_ptr;
    self->_textInteractionWrapper.m_ptr = v4;
    if (v5)
    {
    }
  }

  objc_storeWeak(&self->_cachedTextInteractionLoupeGestureRecognizer, 0);

  objc_storeWeak(&self->_cachedTextInteractionTapGestureRecognizer, 0);
}

- (id)_selectionContainerViewInternal
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak(&self->_lastInteractionLocation.y))
  {

    return objc_loadWeak(&self->_lastInteractionLocation.y);
  }

  else
  {
    v4 = self;
    if ([(WKContentView *)self selectionHonorsOverflowScrolling])
    {
      v5 = *(self->_page.m_ptr + 4);
      v4 = self;
      if (*(v5 + 800) == 1)
      {
        v17 = *(v5 + 672);
        v18 = *(v5 + 688);
        v6 = [(WKContentView *)self _viewForLayerID:&v17];
        v7 = v6;
        v4 = self;
        if (v6)
        {
          v8 = v6;
          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          v14 = 0u;
          v9 = [(WKContentView *)self allViewsIntersectingSelectionRange];
          v10 = [(NSArray *)v9 countByEnumeratingWithState:&v13 objects:&v17 count:16];
          v4 = v7;
          if (v10)
          {
            v11 = *v14;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v14 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                if (v7 != *(*(&v13 + 1) + 8 * i) && ![(UIView *)v7 _wk_isAncestorOf:?])
                {
                  v4 = self;
                  goto LABEL_19;
                }
              }

              v10 = [(NSArray *)v9 countByEnumeratingWithState:&v13 objects:&v17 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }

            v4 = v7;
          }

LABEL_19:
        }
      }
    }

    objc_storeWeak(&self->_lastInteractionLocation.y, v4);
    return objc_loadWeak(&self->_lastInteractionLocation.y);
  }
}

- (BOOL)selectionHonorsOverflowScrolling
{
  v3 = *(self->_page.m_ptr + 46);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::selectionHonorsOverflowScrollingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::selectionHonorsOverflowScrollingKey(void)::key = WebKit::WebPreferencesKey::selectionHonorsOverflowScrollingKey(void)::$_0::operator() const(void)::impl;
  }

  return WebKit::WebPreferencesStore::getBoolValueForKey((v3 + 40), &WebKit::WebPreferencesKey::selectionHonorsOverflowScrollingKey(void)::key, v2);
}

- (void)_registerPreview
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([-[WKContentView webView](self "webView")])
  {
    if ([(WKContentView *)self _shouldUseContextMenus])
    {
      self->_contextMenuHasRequestedLegacyData = 0;
      [(WKTextInteractionWrapper *)self->_textInteractionWrapper.m_ptr setExternalContextMenuInteractionDelegate:self];
      v3 = [objc_msgSend(-[WKContentView webView](self "webView")];
      if (v3)
      {
        v14[0] = v3;
        [-[UIContextMenuInteraction presentationInteraction](-[WKContentView contextMenuInteraction](self "contextMenuInteraction")];
      }
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCE20]) initWithView:self];
      m_ptr = self->_previewItemController.m_ptr;
      self->_previewItemController.m_ptr = v4;
      if (m_ptr)
      {

        v4 = self->_previewItemController.m_ptr;
      }

      [(UIPreviewItemController *)v4 setDelegate:self];
      v6 = [(UIPreviewItemController *)self->_previewItemController.m_ptr presentationGestureRecognizer];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      v9 = self->_previewGestureRecognizer.m_ptr;
      self->_previewGestureRecognizer.m_ptr = v7;
      if (v9)
      {
      }

      if (objc_opt_respondsToSelector())
      {
        v10 = [(UIPreviewItemController *)self->_previewItemController.m_ptr presentationSecondaryGestureRecognizer];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        v13 = self->_previewSecondaryGestureRecognizer.m_ptr;
        self->_previewSecondaryGestureRecognizer.m_ptr = v11;
        if (v13)
        {
        }
      }
    }
  }
}

- (void)_setUpImageAnalysis
{
  if (PAL::VisionKitCoreLibrary(1))
  {
    if (LOBYTE(self->_editDropCaretAnimator.m_ptr) == 1)
    {
      LOBYTE(self->_editDropCaretAnimator.m_ptr) = 0;
    }

    self->_anon_10d0[32] = 0;
    if (self->_anon_10d0[0] == 1)
    {
      self->_anon_10d0[0] = 0;
    }

    v3 = [[WKImageAnalysisGestureRecognizer alloc] initWithImageAnalysisGestureDelegate:self];
    m_block = self->_actionToPerformAfterReceivingEditDragSnapshot.m_block;
    self->_actionToPerformAfterReceivingEditDragSnapshot.m_block = v3;
    if (m_block)
    {

      v5 = self->_actionToPerformAfterReceivingEditDragSnapshot.m_block;
    }

    else
    {
      v5 = v3;
    }

    [(WKContentView *)self addGestureRecognizer:v5];
    std::__optional_destruct_base<WebKit::RemoveBackgroundData,false>::reset[abi:sn200100](&self->_imageAnalysisActionButtons, v6);
    LOBYTE(self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__val_.origin.y) = 0;

    std::optional<WebKit::ImageAnalysisContextMenuActionData>::operator=[abi:sn200100](&self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__val_.size);
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WKContentView;
  [(WKContentView *)&v3 tintColorDidChange];
  if (BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) == 1)
  {
    BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 0;
  }

  if ([(WKContentView *)self isFirstResponder]&& [(WKContentView *)self canShowNonEmptySelectionView])
  {
    [(WKTextInteractionWrapper *)self->_textInteractionWrapper.m_ptr deactivateSelection];
    [(WKContentView *)self _updateTextInputTraitsForInteractionTintColor];
    [(WKTextInteractionWrapper *)self->_textInteractionWrapper.m_ptr activateSelection];
  }

  else
  {
    [(WKContentView *)self _updateTextInputTraitsForInteractionTintColor];
  }

  WebKit::WebPageProxy::insertionPointColorDidChange(self->_page.m_ptr);
}

- (void)_updateTextInputTraitsForInteractionTintColor
{
  v3 = [(WKContentView *)self _cascadeInteractionTintColor];
  [(UITextInputTraits *)self->_legacyTextInputTraits.m_ptr _setColorsToMatchTintColor:v3];
  m_ptr = self->_extendedTextInputTraits.m_ptr;

  [(WKExtendedTextInputTraits *)m_ptr setSelectionColorsToMatchTintColor:v3];
}

- (id)_cascadeInteractionTintColor
{
  if ([objc_msgSend(-[WKContentView webView](self "webView")])
  {
    v4 = *(self->_page.m_ptr + 46);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::textInteractionEnabledKey(void)::key, v3))
    {
      v6 = *(self->_page.m_ptr + 4);
      if (*(v6 + 528) != 1)
      {
LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }

      v7 = *(v6 + 400);
      v19 = v7;
      if ((v7 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 1u);
        v7 = v19;
        if ((v19 & 0x4000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

      else if ((v7 & 0x4000000000000) == 0)
      {
LABEL_8:
        if ((v7 & 0x8000000000000) != 0)
        {
          v13 = (v7 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, v5);
          }
        }

        goto LABEL_9;
      }

      WebCore::cocoaColor(&v18, &v19, v5);
      v9 = v18;
      v15 = *(v6 + 408);
      if ((v19 & 0x8000000000000) != 0)
      {
        v17 = (v19 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v17);
          WTF::fastFree(v17, v14);
        }
      }

      if ((v15 & 1) == 0)
      {
        if (v9)
        {
          v16 = v9;
        }

        return v9;
      }

      v8 = v9;
LABEL_10:
      v9 = [(WKContentView *)self tintColor];
      if ([(WKContentView *)self _hasCustomTintColor])
      {
        if (v8)
        {
        }
      }

      else if (v8)
      {
        v12 = v8;
        return v8;
      }

      return v9;
    }
  }

  v10 = MEMORY[0x1E69DC888];

  return [v10 clearColor];
}

- (BOOL)_hasCustomTintColor
{
  v2 = &self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y + 1;
  if ((self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y & 0x10000) != 0)
  {
    return *v2;
  }

  v4 = objc_opt_new();
  v5 = [v4 tintColor];
  WebCore::colorFromCocoaColor(&v21, v5, v6);
  if (v4)
  {
  }

  v7 = [(WKContentView *)self tintColor];
  WebCore::colorFromCocoaColor(&v20, v7, v8);
  v10 = v20;
  if ((v21 & 0x8000000000000) == 0)
  {
    if (v21 == v20)
    {
      v11 = (v20 >> 51) & 1;
    }

    else
    {
      v11 = 1;
    }

    *v2 = v11 | 0x100;
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_9;
    }

    v15 = (v10 & 0xFFFFFFFFFFFFLL);
LABEL_16:
    if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v9);
    }

    goto LABEL_9;
  }

  if ((v20 & 0x8000000000000) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = *((v21 & 0xFFFFFFFFFFFFLL) + 4);
    v15 = (v20 & 0xFFFFFFFFFFFFLL);
    v22 = *((v20 & 0xFFFFFFFFFFFFLL) + 4);
    v23 = v18;
    do
    {
      if (*(&v23 + v17) != *(&v22 + v17))
      {
        break;
      }

      v16 = v17++ > 2;
    }

    while (v17 != 4);
    v19 = BYTE6(v21) != BYTE6(v20);
    if (!v16)
    {
      v19 = 1;
    }

    if ((v20 ^ v21) >> 56)
    {
      v19 = 1;
    }

    *v2 = v19 | 0x100;
    goto LABEL_16;
  }

  *v2 = 257;
LABEL_9:
  v12 = v21;
  if ((v21 & 0x8000000000000) != 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v2[1];
    if (v12)
    {
      break;
    }

    __break(1u);
LABEL_13:
    v14 = (v12 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v9);
    }
  }

  return *v2;
}

- (UITextInputTraits)textInputTraitsForWebView
{
  m_ptr = self->_legacyTextInputTraits.m_ptr;
  if (!m_ptr)
  {
    v4 = objc_opt_new();
    v5 = self->_legacyTextInputTraits.m_ptr;
    self->_legacyTextInputTraits.m_ptr = v4;
    if (v5)
    {

      m_ptr = self->_legacyTextInputTraits.m_ptr;
    }

    else
    {
      m_ptr = v4;
    }
  }

  if (!self->_isDoubleTapPending)
  {
    [(WKContentView *)self _updateTextInputTraits:m_ptr];
    return self->_legacyTextInputTraits.m_ptr;
  }

  return m_ptr;
}

- (void)updateSelection
{
  selectionInteractionType = self->_selectionInteractionType;
  switch(selectionInteractionType)
  {
    case 3:
      [(WKContentView *)self convertPoint:[(WKContentView *)self webView] fromView:self->_lastSelectionExtentPointAndBoundary.point.x, self->_lastSelectionExtentPointAndBoundary.point.y];
      granularity = self->_lastSelectionExtentPointAndBoundary.granularity;
      interactionSource = self->_lastSelectionExtentPointAndBoundary.interactionSource;

      [(WKContentView *)self updateSelectionWithExtentPointAndBoundary:granularity textGranularity:interactionSource textInteractionSource:&__block_literal_global_1428 completionHandler:?];
      break;
    case 2:
      [(WKContentView *)self convertPoint:[(WKContentView *)self webView] fromView:self->_lastSelectionExtentPoint.point.x, self->_lastSelectionExtentPoint.point.y];
      v7 = v6;
      v9 = v8;
      v10 = [(WKContentView *)self _hasFocusedElement];
      respectSelectionAnchor = self->_lastSelectionExtentPoint.respectSelectionAnchor;

      [(WKContentView *)self updateSelectionWithExtentPoint:v10 hasFocusedElement:respectSelectionAnchor respectSelectionAnchor:&__block_literal_global_1426 completionHandler:v7, v9];
      break;
    case 1:
      [(WKContentView *)self convertPoint:[(WKContentView *)self webView] fromView:self->_lastSelectionTouch.point.x, self->_lastSelectionTouch.point.y];
      baseIsStart = self->_lastSelectionTouch.baseIsStart;
      flags = self->_lastSelectionTouch.flags;

      [(WKContentView *)self updateSelectionWithTouchAt:1 withSelectionTouch:baseIsStart baseIsStart:flags withFlags:?];
      break;
  }
}

- (void)_didScroll
{
  [(WKContentView *)self _updateFrameOfContainerForContextMenuHintPreviewsIfNeeded];
  [(WKContentView *)self _cancelLongPressGestureRecognizer];

  [(WKContentView *)self _cancelInteraction];
}

- (void)_updateFrameOfContainerForContextMenuHintPreviewsIfNeeded
{
  if (self->_contextMenuHintContainerView.m_ptr)
  {
    [objc_loadWeak(&self->_scrollViewForTargetedPreview.m_weakReference) convertPoint:-[WKTargetedPreviewContainer superview](self->_contextMenuHintContainerView.m_ptr toView:{"superview"), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v4 = v3;
    v6 = v5;
    [(WKTargetedPreviewContainer *)self->_contextMenuHintContainerView.m_ptr frame];
    v7 = v4 - self->_scrollViewForTargetedPreviewInitialOffset.x;
    m_ptr = self->_contextMenuHintContainerView.m_ptr;
    v9 = v6 - self->_scrollViewForTargetedPreviewInitialOffset.y;

    [(WKTargetedPreviewContainer *)m_ptr setFrame:v7, v9];
  }
}

- (void)_keyboardWillShow
{
  self->_shouldRestoreSelection = 0;
  v2 = *&self->_actionsToPerformAfterEditorStateUpdate.m_capacity;
  if (v2)
  {
    WebKit::RevealFocusedElementDeferrer::fulfill(v2, 2);
  }
}

- (void)dealloc
{
  [(WKContentView *)self cleanUpInteraction];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  WebKit::WebPageProxy::close(self->_page.m_ptr);
  LODWORD(WebKit::WebProcessPool::statistics(void)::statistics) = WebKit::WebProcessPool::statistics(void)::statistics - 1;
  [(WKContentView *)self _removeTemporaryFilesIfNecessary];
  v3.receiver = self;
  v3.super_class = WKContentView;
  [(WKContentView *)&v3 dealloc];
}

- (void)cleanUpInteraction
{
  v85 = *MEMORY[0x1E69E9840];
  if (LOBYTE(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) == 1)
  {
    m_ptr = self->_textInteractionWrapper.m_ptr;
    self->_textInteractionWrapper.m_ptr = 0;
    if (m_ptr)
    {
    }

    [(WKActionSheetAssistant *)self->_actionSheetAssistant.m_ptr cleanupSheet];
    v4 = self->_actionSheetAssistant.m_ptr;
    self->_actionSheetAssistant.m_ptr = 0;
    if (v4)
    {
    }

    v5 = self->_smartMagnificationController.m_ptr;
    self->_smartMagnificationController.m_ptr = 0;
    if (v5)
    {
      if (*(v5 + 4) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 4);
      }
    }

    BYTE6(self->_dataListTextSuggestions.m_ptr) = 0;
    BYTE5(self->_dataListTextSuggestions.m_ptr) = 0;
    HIBYTE(self->_dataListTextSuggestions.m_ptr) = 0;
    self->_isTapHighlightIDValid = 0;
    [(WKFormInputSession *)self->_formInputSession.m_ptr invalidate];
    v6 = self->_formInputSession.m_ptr;
    self->_formInputSession.m_ptr = 0;
    if (v6)
    {
    }

    [(WKTapHighlightView *)self->_tapHighlightView.m_ptr removeFromSuperview];
    if (self->_lastSelectionDrawingInfo.enclosingLayerID.__engaged_)
    {
      self->_lastSelectionDrawingInfo.enclosingLayerID.__engaged_ = 0;
    }

    BYTE3(self->_dataListSuggestionsControl.m_weakReference) = 0;
    self->_treatAsContentEditableUntilNextEditorStateUpdate = 0;
    ptr = self->_domPasteRequestHandler.m_function.m_callableWrapper.__ptr_;
    self->_domPasteRequestHandler.m_function.m_callableWrapper.__ptr_ = 0;
    if (ptr)
    {
    }

    self->_isWaitingOnPositionInformation = 0;
    BYTE4(self->_dataListSuggestionsControl.m_weakReference) = 1;
    v9 = self->_lastAutocorrectionContext.contextBefore.m_impl.m_ptr;
    self->_lastAutocorrectionContext.contextBefore.m_impl.m_ptr = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = self->_lastAutocorrectionContext.markedText.m_impl.m_ptr;
    self->_lastAutocorrectionContext.markedText.m_impl.m_ptr = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = self->_lastAutocorrectionContext.selectedText.m_impl.m_ptr;
    self->_lastAutocorrectionContext.selectedText.m_impl.m_ptr = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    v12 = self->_lastAutocorrectionContext.contextAfter.m_impl.m_ptr;
    self->_lastAutocorrectionContext.contextAfter.m_impl.m_ptr = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }

    self->_lastAutocorrectionContext.selectedRangeInMarkedText = xmmword_19E7035E0;
    BYTE6(self->_revealFocusedElementDeferrer.m_ptr) = 0;
    HIBYTE(self->_revealFocusedElementDeferrer.m_ptr) = 0;
    BYTE1(self->_dataListSuggestionsControl.m_weakReference) = 0;
    self->_lastSelectionContainerViewOrigin.var0.__val_.y = 0.0;
    BYTE2(self->_dataListSuggestionsControl.m_weakReference) = 0;
    self->_isChangingFocusUsingAccessoryTab = 0;
    self->_didAccessoryTabInitiateFocus = 0;
    self->_isExpectingFastSingleTapCommit = 0;
    BYTE3(self->_dataListTextSuggestions.m_ptr) = 0;
    if (self->_interactionViewsContainerView.m_ptr)
    {
      v13 = [(WKContentView *)self layer];
      [v13 removeObserver:self forKeyPath:@"transform" context:WKContentViewKVOTransformContext];
      [(UIView *)self->_interactionViewsContainerView.m_ptr removeFromSuperview];
      v14 = self->_interactionViewsContainerView.m_ptr;
      self->_interactionViewsContainerView.m_ptr = 0;
      if (v14)
      {
      }
    }

    self->_shouldRestoreSelection = 0;
    if (*(&self->_domPasteRequestCategory + 4) == 1)
    {
      *(&self->_domPasteRequestCategory + 4) = 0;
    }

    [(WKTouchEventsGestureRecognizer *)self->_touchEventGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_touchEventGestureRecognizer.m_ptr];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = [(WKContentView *)self deferringGestures];
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v84 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          [v19 setDelegate:0];
          [(WKContentView *)self removeGestureRecognizer:v19];
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v84 count:16];
      }

      while (v16);
    }

    v20 = self->_gestureRecognizerConsistencyEnforcer.__ptr_;
    if (v20)
    {
      WebKit::GestureRecognizerConsistencyEnforcer::reset(v20);
    }

    [(WKContentView *)self removeInteraction:self->_mouseInteraction.m_ptr];
    [(WKScrollViewTrackingTapGestureRecognizer *)self->_keyboardDismissalGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_keyboardDismissalGestureRecognizer.m_ptr];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setGestureIdentifiedTarget:0 action:0];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setResetTarget:0 action:0];
    [(WKSyntheticTapGestureRecognizer *)self->_singleTapGestureRecognizer.m_ptr setSupportingTouchEventsGestureRecognizer:0];
    [(WKContentView *)self removeGestureRecognizer:self->_singleTapGestureRecognizer.m_ptr];
    [(WKHighlightLongPressGestureRecognizer *)self->_highlightLongPressGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_highlightLongPressGestureRecognizer.m_ptr];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_longPressGestureRecognizer.m_ptr];
    [(WKSyntheticTapGestureRecognizer *)self->_doubleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_doubleTapGestureRecognizer.m_ptr];
    [(UITapGestureRecognizer *)self->_nonBlockingDoubleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_nonBlockingDoubleTapGestureRecognizer.m_ptr];
    [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizerForDoubleClick.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_doubleTapGestureRecognizerForDoubleClick.m_ptr];
    [(UITapGestureRecognizer *)self->_twoFingerDoubleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_twoFingerDoubleTapGestureRecognizer.m_ptr];
    [(UITapGestureRecognizer *)self->_twoFingerSingleTapGestureRecognizer.m_ptr setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_twoFingerSingleTapGestureRecognizer.m_ptr];
    [(WKContentView *)self removeGestureRecognizer:self->_touchActionGestureRecognizer.m_ptr];
    [(WKContentView *)self removeGestureRecognizer:self->_touchActionLeftSwipeGestureRecognizer.m_ptr];
    [(WKContentView *)self removeGestureRecognizer:self->_touchActionRightSwipeGestureRecognizer.m_ptr];
    [(WKContentView *)self removeGestureRecognizer:self->_touchActionUpSwipeGestureRecognizer.m_ptr];
    [(WKContentView *)self removeGestureRecognizer:self->_touchActionDownSwipeGestureRecognizer.m_ptr];
    self->_keyWebEventHandlers.m_inlineBuffer[0].m_storage.data[32] = 0;
    LOBYTE(self->_lastInteractionLocation.x) = 0;
    [(WKContentView *)self _removeContextMenuHintContainerIfPossible];
    [WTF::dynamic_objc_cast<WKDragSessionContext>(objc_msgSend(*&self->_dragDropInteractionState.m_lastGlobalPosition.y "localContext"))];
    [(WKContentView *)self teardownDragAndDropInteractions];
    [(WKContentView *)self removeInteraction:self->_pointerInteraction.m_ptr];
    v21 = self->_pointerInteraction.m_ptr;
    self->_pointerInteraction.m_ptr = 0;
    if (v21)
    {
    }

    self->_pointerInteractionRegionNeedsUpdate = 0;
    v22 = *&self->_actionsToPerformAfterEditorStateUpdate.m_capacity;
    *&self->_actionsToPerformAfterEditorStateUpdate.m_capacity = 0;
    if (v22)
    {
      WTF::RefCounted<WebKit::RevealFocusedElementDeferrer>::deref(v22);
    }

    [(WKContentView *)self cleanUpScribbleInteraction];
    BYTE4(self->_dataListTextSuggestions.m_ptr) = 0;
    v23 = self->_inspectorNodeSearchGestureRecognizer.m_ptr;
    if (v23)
    {
      [(WKInspectorNodeSearchGestureRecognizer *)v23 setDelegate:0];
      [(WKContentView *)self removeGestureRecognizer:self->_inspectorNodeSearchGestureRecognizer.m_ptr];
      v24 = self->_inspectorNodeSearchGestureRecognizer.m_ptr;
      self->_inspectorNodeSearchGestureRecognizer.m_ptr = 0;
      if (v24)
      {
      }
    }

    [(WKContentView *)self _unregisterPreview];
    [(WKContentView *)self dismissPickersIfNeededWithReason:2];
    [(WKContentView *)self stopDeferringInputViewUpdatesForAllSources];
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v42 = 0u;
    v43 = 0u;
    v45 = 0uLL;
    *&v44 = 0;
    v49 = xmmword_19E7042F0;
    v50 = xmmword_19E704300;
    v51 = 0;
    v53 = 0;
    v52 = 0;
    v54 = 0;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = -1;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v66 = 0;
    WTF::URL::URL(v67);
    v67[20] = 0;
    v72 = 0;
    v73 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v71 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 1;
    v82 = 0;
    v83 = 0;
    v78[0] = 0;
    *(v78 + 3) = 0;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    WebKit::FocusedElementInformation::operator=(&self->_focusedElementInformation, &v42);
    WebKit::FocusedElementInformation::~FocusedElementInformation(&v42, v25);
    [self->_positionInformationCallbackDepth invalidate];
    positionInformationCallbackDepth = self->_positionInformationCallbackDepth;
    self->_positionInformationCallbackDepth = 0;
    if (positionInformationCallbackDepth)
    {
    }

    v27 = *&self->_inputViewUpdateDeferralSources.m_storage;
    *&self->_inputViewUpdateDeferralSources.m_storage = 0;
    if (v27)
    {
    }

    v28 = self->_keyboardScrollingAnimator.m_ptr;
    self->_keyboardScrollingAnimator.m_ptr = 0;
    if (v28)
    {
    }

    [(WKContentView *)self _tearDownImageAnalysis];
    Weak = objc_loadWeak(&self->_webView.m_weakReference);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    [Weak _updateFixedContainerEdges:&v42];
    for (j = 0; j != -64; j -= 16)
    {
      v32 = &v42 + j;
      v33 = *(&v45 + j + 8);
      if (v33 != 255 && v33 != 0)
      {
        v35 = *(v32 + 6);
        if ((v35 & 0x8000000000000) != 0)
        {
          v36 = (v35 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v35 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v36);
            WTF::fastFree(v36, v30);
            v32 = &v42 + j;
          }
        }
      }

      v32[56] = -1;
    }

    [(WKContentView *)self _removeContainerForContextMenuHintPreviews];
    [(WKContentView *)self _removeContainerForDragPreviews];
    [(WKContentView *)self _removeContainerForDropPreviews];
    [(WKContentView *)self unsuppressSoftwareKeyboardUsingLastAutocorrectionContextIfNeeded];
    LOBYTE(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 0;
    self->_suppressSelectionAssistantReasons.m_storage = 0;
    [(WKContentView *)self _resetPanningPreventionFlags];
    [(WKContentView *)self _handleDOMPasteRequestWithResult:0];
    [(WKContentView *)self _cancelPendingKeyEventHandlers:0];
    [(WKContentView *)self setPasteConfiguration:0];
    self->_selectionInteractionType = 0;
    if (self->_isPresentingEditMenu)
    {
      self->_isPresentingEditMenu = 0;
    }

    if (self->_waitingForEditorStateAfterScrollingSelectionContainer)
    {
      self->_waitingForEditorStateAfterScrollingSelectionContainer = 0;
    }

    objc_storeWeak(&self->_layerTreeTransactionIdAtLastInteractionStart, 0);
    self->_becomingFirstResponder = 0;
    if (BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) == 1)
    {
      BYTE2(self->_lastSelectionChildScrollViewContentOffset.var0.__val_.m_y) = 0;
    }

    m_size = self->_lastSelectionDrawingInfo.selectionClipRect.m_size;
    self->_lastSelectionDrawingInfo.selectionClipRect.m_size = 0;
    if (m_size)
    {
    }

    objc_storeWeak(&self->_lastInteractionLocation.y, 0);
  }
}

- (void)_removeContainerForContextMenuHintPreviews
{
  m_ptr = self->_contextMenuHintContainerView.m_ptr;
  if (m_ptr)
  {
    self->_contextMenuHintContainerView.m_ptr = 0;
    [(WKTargetedPreviewContainer *)m_ptr removeFromSuperview];

    objc_storeWeak(&self->_scrollViewForTargetedPreview.m_weakReference, 0);
    self->_scrollViewForTargetedPreviewInitialOffset = *MEMORY[0x1E695EFF8];
  }
}

- (void)teardownDragAndDropInteractions
{
  if (self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table)
  {
    [(WKContentView *)self removeInteraction:?];
  }

  if (self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table)
  {
    [(WKContentView *)self removeInteraction:?];
  }

  m_table = self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table;
  self->_dragDropInteractionState.m_defaultDropPreviews.m_impl.m_table = 0;
  if (m_table)
  {
  }

  v4 = self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table;
  self->_dragDropInteractionState.m_finalDropPreviews.m_impl.m_table = 0;
  if (v4)
  {
  }

  [(WKContentView *)self cleanUpDragSourceSessionState];
}

- (void)cleanUpDragSourceSessionState
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_isWaitingOnPositionInformation)
  {
    p_pendingRunModalJavaScriptDialogCallback = &self->_pendingRunModalJavaScriptDialogCallback;
    if (*&self->_dragDropInteractionState.m_lastGlobalPosition.y || BYTE1(self->_dragDropInteractionState.m_lastGlobalPosition.x) == 1)
    {
      v4 = qword_1ED640A68;
      if (os_log_type_enabled(qword_1ED640A68, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v26[0]) = 67109120;
        DWORD1(v26[0]) = [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up dragging state (has pending operation: %d)", v26, 8u);
      }
    }

    if (([objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")] & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
    }

    [objc_msgSend(MEMORY[0x1E69E2F60] "sharedInstance")];
    [(WKContentView *)self _restoreEditMenuIfNeeded];
    [(WKContentView *)self _removeContainerForDragPreviews];
    v5 = *&self->_dragDropInteractionState.m_elementIdentifier.__engaged_;
    *&self->_dragDropInteractionState.m_elementIdentifier.__engaged_ = 0;
    [v5 removeFromSuperview];
    if (v5)
    {
    }

    [(WKContentView *)self _removeDropCaret];
    *(&self->_dragDropInteractionState.m_elementIdentifier.var0.__null_state_ + 1) = 0;
    WebKit::DragDropInteractionState::dragAndDropSessionsDidBecomeInactive(p_pendingRunModalJavaScriptDialogCallback);
    v6 = *MEMORY[0x1E695EFF8];
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = *MEMORY[0x1E695EFF8];
    v26[0] = v6;
    v26[1] = v7;
    BYTE8(v31) = 0;
    memset(v28 + 8, 0, 33);
    v29 = 0u;
    v30 = 0u;
    *&p_pendingRunModalJavaScriptDialogCallback->m_function.m_callableWrapper.__ptr_ = v6;
    *&p_pendingRunModalJavaScriptDialogCallback[2].m_function.m_callableWrapper.__ptr_ = v7;
    LOWORD(p_pendingRunModalJavaScriptDialogCallback[4].m_function.m_callableWrapper.__ptr_) = v27;
    *(&v27 + 1) = 0;
    ptr = p_pendingRunModalJavaScriptDialogCallback[5].m_function.m_callableWrapper.__ptr_;
    p_pendingRunModalJavaScriptDialogCallback[5].m_function.m_callableWrapper.__ptr_ = 0;
    if (ptr)
    {
    }

    *&v28[0] = 0;
    v9 = p_pendingRunModalJavaScriptDialogCallback[6].m_function.m_callableWrapper.__ptr_;
    p_pendingRunModalJavaScriptDialogCallback[6].m_function.m_callableWrapper.__ptr_ = 0;
    if (v9)
    {
    }

    _Block_release(p_pendingRunModalJavaScriptDialogCallback[7].m_function.m_callableWrapper.__ptr_);
    *(&v28[0] + 1) = 0;
    p_pendingRunModalJavaScriptDialogCallback[7].m_function.m_callableWrapper.__ptr_ = 0;
    _Block_release(p_pendingRunModalJavaScriptDialogCallback[8].m_function.m_callableWrapper.__ptr_);
    v11 = *&v28[1];
    *&v28[1] = 0;
    p_pendingRunModalJavaScriptDialogCallback[8].m_function.m_callableWrapper.__ptr_ = v11;
    ptr_high = HIDWORD(p_pendingRunModalJavaScriptDialogCallback[10].m_function.m_callableWrapper.__ptr_);
    if (ptr_high)
    {
      v13 = p_pendingRunModalJavaScriptDialogCallback[9].m_function.m_callableWrapper.__ptr_;
      v14 = 8 * ptr_high;
      do
      {
        v15 = *v13;
        *v13 = 0;
        if (v15)
        {
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }

    v16 = p_pendingRunModalJavaScriptDialogCallback[9].m_function.m_callableWrapper.__ptr_;
    if (v16)
    {
      p_pendingRunModalJavaScriptDialogCallback[9].m_function.m_callableWrapper.__ptr_ = 0;
      LODWORD(p_pendingRunModalJavaScriptDialogCallback[10].m_function.m_callableWrapper.__ptr_) = 0;
      WTF::fastFree(v16, v10);
    }

    p_pendingRunModalJavaScriptDialogCallback[9].m_function.m_callableWrapper.__ptr_ = *(&v28[1] + 8);
    v17 = *&v28[2];
    *(&v28[1] + 1) = 0;
    *&v28[2] = 0;
    p_pendingRunModalJavaScriptDialogCallback[10].m_function.m_callableWrapper.__ptr_ = v17;
    std::__optional_storage_base<WebKit::DragSourceState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::DragSourceState,false>>(&p_pendingRunModalJavaScriptDialogCallback[11], &v28[2] + 8);
    v19 = HIDWORD(p_pendingRunModalJavaScriptDialogCallback[55].m_function.m_callableWrapper.__ptr_);
    if (v19)
    {
      WTF::VectorTypeOperations<WebKit::DragSourceState>::destruct(p_pendingRunModalJavaScriptDialogCallback[54].m_function.m_callableWrapper.__ptr_, (p_pendingRunModalJavaScriptDialogCallback[54].m_function.m_callableWrapper.__ptr_ + 336 * v19));
    }

    v20 = p_pendingRunModalJavaScriptDialogCallback[54].m_function.m_callableWrapper.__ptr_;
    if (v20)
    {
      p_pendingRunModalJavaScriptDialogCallback[54].m_function.m_callableWrapper.__ptr_ = 0;
      LODWORD(p_pendingRunModalJavaScriptDialogCallback[55].m_function.m_callableWrapper.__ptr_) = 0;
      WTF::fastFree(v20, v18);
    }

    p_pendingRunModalJavaScriptDialogCallback[54].m_function.m_callableWrapper.__ptr_ = v29;
    v21 = *(&v29 + 1);
    v29 = 0uLL;
    p_pendingRunModalJavaScriptDialogCallback[55].m_function.m_callableWrapper.__ptr_ = v21;
    v22 = v30;
    *&v30 = 0;
    v23 = p_pendingRunModalJavaScriptDialogCallback[56].m_function.m_callableWrapper.__ptr_;
    p_pendingRunModalJavaScriptDialogCallback[56].m_function.m_callableWrapper.__ptr_ = v22;
    if (v23)
    {
      WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::deallocateTable(v23, v18);
    }

    v24 = *(&v30 + 1);
    *(&v30 + 1) = 0;
    v25 = p_pendingRunModalJavaScriptDialogCallback[57].m_function.m_callableWrapper.__ptr_;
    p_pendingRunModalJavaScriptDialogCallback[57].m_function.m_callableWrapper.__ptr_ = v24;
    if (v25)
    {
      WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::deallocateTable(v25, v18);
    }

    p_pendingRunModalJavaScriptDialogCallback[58].m_function.m_callableWrapper.__ptr_ = v31;
    LOBYTE(p_pendingRunModalJavaScriptDialogCallback[59].m_function.m_callableWrapper.__ptr_) = BYTE8(v31);
    WebKit::DragDropInteractionState::~DragDropInteractionState(v26, v18);
  }
}

- (void)_restoreEditMenuIfNeeded
{
  if (*(&self->_dragDropInteractionState.m_elementIdentifier.var0.__null_state_ + 1) == 1)
  {
    [(WKTextInteractionWrapper *)self->_textInteractionWrapper.m_ptr didConcludeDrop];
    *(&self->_dragDropInteractionState.m_elementIdentifier.var0.__null_state_ + 1) = 0;
  }
}

- (void)_removeContainerForDragPreviews
{
  m_ptr = self->_dragPreviewContainerView.m_ptr;
  if (m_ptr)
  {
    self->_dragPreviewContainerView.m_ptr = 0;
    v3 = m_ptr;
    [(WKTargetedPreviewContainer *)m_ptr removeFromSuperview];
  }
}

- (void)_removeDropCaret
{
  m_ptr = self->_dropInteraction.m_ptr;
  self->_dropInteraction.m_ptr = 0;
  v6 = m_ptr;
  [(UIDropInteraction *)m_ptr remove];
  if (v6)
  {
  }

  v4 = self->_unselectedContentSnapshot.m_ptr;
  self->_unselectedContentSnapshot.m_ptr = 0;
  v7 = v4;
  [(UIView *)v4 setCursorVisible:0 animated:0];
  if (v7)
  {
  }

  v5 = self->_visibleContentViewSnapshot.m_ptr;
  self->_visibleContentViewSnapshot.m_ptr = 0;
  v8 = v5;
  [(UIView *)v5 removeFromSuperview];
  if (v8)
  {
  }
}

- (void)cleanUpScribbleInteraction
{
  [(WKContentView *)self removeInteraction:self->_scribbleInteraction.m_ptr];
  m_ptr = self->_scribbleInteraction.m_ptr;
  self->_scribbleInteraction.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)_unregisterPreview
{
  if (![(WKContentView *)self _shouldUseContextMenus])
  {
    [(UIPreviewItemController *)self->_previewItemController.m_ptr setDelegate:0];
    m_ptr = self->_previewGestureRecognizer.m_ptr;
    self->_previewGestureRecognizer.m_ptr = 0;
    if (m_ptr)
    {
    }

    v4 = self->_previewSecondaryGestureRecognizer.m_ptr;
    self->_previewSecondaryGestureRecognizer.m_ptr = 0;
    if (v4)
    {
    }

    v5 = self->_previewItemController.m_ptr;
    self->_previewItemController.m_ptr = 0;
    if (v5)
    {
    }
  }
}

- (void)stopDeferringInputViewUpdatesForAllSources
{
  v6 = *MEMORY[0x1E69E9840];
  engaged = self->_lastOutstandingPositionInformationRequest.__engaged_;
  if (self->_lastOutstandingPositionInformationRequest.__engaged_)
  {
    v4 = qword_1ED6413F0;
    if (os_log_type_enabled(qword_1ED6413F0, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = engaged;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Stopped deferring all input view updates (%02x)", v5, 8u);
    }

    [(WKContentView *)self _cancelPreviousResetInputViewDeferralRequest];
    self->_lastOutstandingPositionInformationRequest.__engaged_ = 0;
    [(WKContentView *)self _endPinningInputViews];
  }
}

- (void)_tearDownImageAnalysis
{
  if (PAL::VisionKitCoreLibrary(1))
  {
    [self->_actionToPerformAfterReceivingEditDragSnapshot.m_block setDelegate:0];
    [(WKContentView *)self removeGestureRecognizer:self->_actionToPerformAfterReceivingEditDragSnapshot.m_block];
    m_block = self->_actionToPerformAfterReceivingEditDragSnapshot.m_block;
    self->_actionToPerformAfterReceivingEditDragSnapshot.m_block = 0;
    if (m_block)
    {
    }

    if (LOBYTE(self->_editDropCaretAnimator.m_ptr) == 1)
    {
      LOBYTE(self->_editDropCaretAnimator.m_ptr) = 0;
    }

    self->_anon_10d0[32] = 0;
    if (self->_anon_10d0[0] == 1)
    {
      self->_anon_10d0[0] = 0;
    }

    v4 = *&self->_anon_10d0[40];
    *&self->_anon_10d0[40] = 0;
    [v4 cancelAllRequests];
    if (v4)
    {
    }

    [(WKContentView *)self _invokeAllActionsToPerformAfterPendingImageAnalysis:0];
    [(WKContentView *)self uninstallImageAnalysisInteraction];
    std::__optional_destruct_base<WebKit::RemoveBackgroundData,false>::reset[abi:sn200100](&self->_imageAnalysisActionButtons, v5);
    LOBYTE(self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__val_.origin.y) = 0;

    std::optional<WebKit::ImageAnalysisContextMenuActionData>::operator=[abi:sn200100](&self->_cachedVisualSearchPreviewImageBoundsInWindowCoordinates.var0.__val_.size);
  }
}

- (void)uninstallImageAnalysisInteraction
{
  m_ptr = self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr;
  if (m_ptr)
  {
    v4 = qword_1ED641678;
    if (os_log_type_enabled(qword_1ED641678, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Uninstalling image analysis interaction", v7, 2u);
      m_ptr = self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr;
    }

    [(WKContentView *)self removeInteraction:m_ptr];
    [(CGImage *)self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr setDelegate:0];
    [(CGImage *)self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr setQuickActionConfigurationUpdateHandler:0];
    v5 = self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr;
    self->_imageAnalysisContextMenuActionData.var0.__val_.copySubjectResult.m_ptr = 0;
    if (v5)
    {
    }

    v6 = self->_imageAnalysisContextMenuActionData.var0.__val_.machineReadableCodeMenu.m_ptr;
    self->_imageAnalysisContextMenuActionData.var0.__val_.machineReadableCodeMenu.m_ptr = 0;
    if (v6)
    {
    }

    *&self->_imageAnalysisContextMenuActionData.__engaged_ = 0;
    *&self->_fullscreenVideoImageAnalysisRequestIdentifier = 0;
    [(WKDeferringGestureRecognizer *)self->_imageAnalysisDeferringGestureRecognizer.m_ptr setEnabled:PAL::VisionKitCoreLibrary(1) != 0];
    [self->_actionToPerformAfterReceivingEditDragSnapshot.m_block setEnabled:PAL::VisionKitCoreLibrary(1) != 0];
  }
}

- (void)_removeContainerForDropPreviews
{
  m_ptr = self->_dropPreviewContainerView.m_ptr;
  if (m_ptr)
  {
    self->_dropPreviewContainerView.m_ptr = 0;
    v3 = m_ptr;
    [(WKTargetedPreviewContainer *)m_ptr removeFromSuperview];
  }
}

- (void)unsuppressSoftwareKeyboardUsingLastAutocorrectionContextIfNeeded
{
  hasTapHighlightForPotentialTap = self->_hasTapHighlightForPotentialTap;
  self->_hasTapHighlightForPotentialTap = 0;
  if (hasTapHighlightForPotentialTap)
  {
    selectionNeedsUpdate = self->_selectionNeedsUpdate;
    self->_selectionNeedsUpdate = 1;
    [(WKContentView *)self _setSuppressSoftwareKeyboard:0];
    self->_selectionNeedsUpdate = selectionNeedsUpdate;
  }
}

- (void)_removeTemporaryFilesIfNecessary
{
  v3 = &self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[1].m_storage.data[40];
  v4 = *&self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[2].m_storage.data[4];
  if (v4)
  {
    v5 = *v3;
    v6 = *self->_historicalKinematicData.m_positionHistory.m_buffer.m_inlineBuffer[2].m_storage.data;
    *&v2 = 0;
    v12 = v2;
    v13 = v2;
    *v3 = 0u;
    v7 = malloc_type_malloc(0x30uLL, 0x10E0040AA5B57ACuLL);
    *v7 = MEMORY[0x1E69E9818];
    v7[1] = 50331650;
    v7[2] = WTF::BlockPtr<void ()(void)>::fromCallable<[WKContentView _removeTemporaryFilesIfNecessary]::$_0>([WKContentView _removeTemporaryFilesIfNecessary]::$_0)::{lambda(void *)#1}::__invoke;
    v7[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKContentView _removeTemporaryFilesIfNecessary]::$_0>([WKContentView _removeTemporaryFilesIfNecessary]::$_0)::descriptor;
    v14[0] = 0;
    v14[1] = 0;
    v7[4] = v5;
    *(v7 + 10) = v6;
    *(v7 + 11) = v4;
    WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v9);
    WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v10);
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v7);
    _Block_release(v7);
  }
}

- (void)_removeContextMenuHintContainerIfPossible
{
  if (!self->_contextMenuElementInfo.m_ptr && !self->_isDisplayingContextMenuWithAnimation && !-[WKActionSheetAssistant hasContextMenuInteraction](self->_actionSheetAssistant.m_ptr, "hasContextMenuInteraction") && !self->_fileUploadPanel.m_ptr && !-[WKContentView dateTimeInputControl](self, "dateTimeInputControl") && !-[WKContentView selectControl](self, "selectControl") && ![-[WKTargetedPreviewContainer subviews](self->_contextMenuHintContainerView.m_ptr "subviews")])
  {

    [(WKContentView *)self _removeContainerForContextMenuHintPreviews];
  }
}

- (WKFormSelectControl)selectControl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_inputPeripheral.m_ptr;
  }

  else
  {
    return 0;
  }
}

- (WKDateTimeInputControl)dateTimeInputControl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_inputPeripheral.m_ptr;
  }

  else
  {
    return 0;
  }
}

@end