@interface PKToolPicker
+ (BOOL)_canShowHandwritingTool;
+ (BOOL)_defaultValueForToolStatePersistenceEnabled;
+ (BOOL)_internalClassWantsToolPicker:(id)picker visibleForResponder:(id)responder;
+ (BOOL)_textInputWantsToolPickerVisible:(id)visible forFirstResponder:(id)responder;
+ (BOOL)isActiveToolPickerVisibleForWindow:(id)window;
+ (NSArray)defaultToolItems;
+ (PKToolPicker)sharedToolPickerForWindow:(UIWindow *)window;
+ (id)_existingToolPickerForWindow:(id)window;
+ (id)_keyEncodedToolsByIdentifier:(id)identifier;
+ (id)_toolPickersForWindow:(uint64_t)window includeHidden:;
+ (id)_windowForToolPicker:(id)picker;
+ (id)_windowSceneForToolPicker:(id)picker;
+ (id)_windowScenesForToolPicker:(id)picker;
+ (id)activeToolPickerForWindow:(id)window;
+ (id)existingPaletteViewForWindow:(id)window;
+ (void)_cycleToolPickersForResponder:(uint64_t)responder;
+ (void)_dockToolPickerForWindowScene:(uint64_t)scene toAutoHideCornerAnimated:;
+ (void)_performWithVisibilityUpdatesEnabled:(BOOL)enabled window:(id)window block:(id)block;
+ (void)_setCanBecomeVisible:(BOOL)visible;
+ (void)_setPrefersHoverPreviewEnabled:(BOOL)enabled withCompletion:(id)completion;
+ (void)_setPrefersPencilOnlyDrawingForiWork:(BOOL)work;
+ (void)_updateToolPickerVisibilityForFirstResponder:(id)responder;
- (BOOL)_canInsertTool:(id)tool;
- (BOOL)_canRemoveTool:(id)tool;
- (BOOL)_hasResponderRegisteredForWindow:(id)window;
- (BOOL)_hasToolPassingTest:(id)test;
- (BOOL)_interactionIsValid;
- (BOOL)_internalClassesAcceptingFirstResponderContainsObject:(id)object;
- (BOOL)_isActiveToolPickerForWindow:(id)window;
- (BOOL)_isCanvasGenerationToolSelected;
- (BOOL)_isHandwritingToolSelected;
- (BOOL)_isToolStatePersistenceEnabled;
- (BOOL)_squeezePaletteVisibleInWindowScene:(id)scene;
- (BOOL)_startOpacityEditing;
- (BOOL)_wantsVisibleForFirstResponder:(id)responder includeHidden:(BOOL)hidden;
- (BOOL)isVisible;
- (CGRect)frameObscuredInView:(UIView *)view;
- (CGSize)_contentSize;
- (NSArray)_tools;
- (NSArray)_toolsState;
- (NSArray)passthroughViews;
- (NSDirectionalEdgeInsets)_directionalLayoutMargins;
- (NSDirectionalEdgeInsets)_edgeInsetsInCompactSize;
- (NSString)_paletteViewStateRestorationDefaultsKey;
- (NSString)selectedToolItemIdentifier;
- (PKDrawingPaletteView)_paletteView;
- (PKPaletteHostView)_paletteHostView;
- (PKPaletteViewAnnotationDelegate)_annotationDelegate;
- (PKToolPicker)init;
- (PKToolPicker)initWithToolItems:(id)items;
- (PKToolPickerDelegate)delegate;
- (PKToolPickerItem)selectedToolItem;
- (PKToolPickerPopoverPresentationConfiguring)_popoverPresentationConfiguration;
- (PKToolPickerPrivateDelegate)_delegate;
- (PKToolPickerPrivateDelegate)_temporarySelectionDelegate;
- (UIEdgeInsets)layoutSceneMargins;
- (UIKeyboardSceneDelegateVisibilityObserver)keyboardSceneDelegateVisibilityObserver;
- (UIView)_contextualEditingView;
- (UIView)_lassoToolEditingView;
- (UIViewController)_presentationController;
- (UIViewController)presentationViewController;
- (double)_fullScreenWindowScaleFactor;
- (double)_scalingFactor;
- (id)_applicationWindow;
- (id)_currentFirstResponder;
- (id)_delegateForSelector:(SEL)selector;
- (id)_handwritingTool;
- (id)_paletteAccessibilityIdentifier;
- (id)_validatedEncodedToolsArray:(id)array;
- (id)_windowScene;
- (int64_t)_numberOfToolsAfterRuler;
- (int64_t)_palettePosition;
- (unint64_t)_edgeForContextualEditingView;
- (unint64_t)_indexOfTool:(id)tool tools:(id)tools;
- (unint64_t)_indexOfToolPassingTest:(id)test;
- (unint64_t)permittedArrowDirections;
- (void)_addTool:(id)tool;
- (void)_addTool:(id)tool updateUI:(BOOL)i;
- (void)_canvasViewWillBeginDrawing:(id)drawing;
- (void)_createPaletteViewIfNecessaryInWindow:(id)window;
- (void)_disableTapInteractionWhenNotVisible;
- (void)_dismissPopovers;
- (void)_enableTapInteractionForWindow:(id)window;
- (void)_enableTapInteractionForWindow:(id)window createPaletteView:(BOOL)view;
- (void)_endOpacityEditing;
- (void)_handleDidInvokeAddTextBox;
- (void)_handleFirstResponderDidChangeNotification:(id)notification;
- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)change;
- (void)_handleInsertStickerFromItemProvider:(uint64_t)provider;
- (void)_handleSqueezeInteractionWillShowPaletteViewNotification:(id)notification;
- (void)_insertHandwritingTool;
- (void)_insertTool:(id)tool atIndex:(unint64_t)index updateUI:(BOOL)i;
- (void)_lockHiddenNotify:(BOOL)notify;
- (void)_notifyScaleFactorDidChange;
- (void)_notifySelectedToolDidChange;
- (void)_notifyVisibilityDidChangeIsAnimationFinished:(BOOL)finished;
- (void)_performPencilPreferredActionShowColorPalette;
- (void)_performPencilPreferredActionSwitchEraser;
- (void)_performPencilPreferredActionSwitchPrevious;
- (void)_performWithVisibilityUpdatesEnabled:(BOOL)enabled block:(id)block;
- (void)_presentViewController:(id)controller asPopoverFromItem:(id)item;
- (void)_removeHandwritingTool;
- (void)_removeTool:(id)tool updateUI:(BOOL)i;
- (void)_removeToolsAtIndexes:(id)indexes updateUI:(BOOL)i;
- (void)_resetTools:(id)tools selectedTool:(id)tool notify:(BOOL)notify;
- (void)_restoreToolPickerStateFromRepresentation:(id)representation notify:(BOOL)notify;
- (void)_restoreToolPickerStateNotify:(BOOL)notify;
- (void)_saveStateIfNecessary;
- (void)_saveToolPickerState;
- (void)_setAnnotationDelegate:(id)delegate;
- (void)_setBackgroundVisible:(BOOL)visible;
- (void)_setCloseButtonVisible:(BOOL)visible;
- (void)_setContextMenuPresented:(BOOL)presented;
- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)_setDoneButtonVisible:(BOOL)visible;
- (void)_setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)size;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setIgnoresSafeAreaInsetsInCompactSize:(BOOL)size;
- (void)_setInterItemToolsSpacingInCompactSize:(double)size;
- (void)_setInterItemUndoRedoButtonsSpacingInCompactSize:(double)size;
- (void)_setInteraction:(id)interaction;
- (void)_setLassoToolEditingViewVisible:(BOOL)visible;
- (void)_setNumberOfToolsAfterRuler:(int64_t)ruler;
- (void)_setOverlapsWindow:(BOOL)window;
- (void)_setPlusButtonMenu:(id)menu;
- (void)_setPlusButtonViewController:(id)controller;
- (void)_setPresentationController:(id)controller;
- (void)_setPresentsDetached:(BOOL)detached;
- (void)_setSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker;
- (void)_setSelectedTool:(id)tool saveState:(BOOL)state updateUI:(BOOL)i updateLastSelectedTool:(BOOL)selectedTool;
- (void)_setSelectionMask:(unint64_t)mask updateUI:(BOOL)i;
- (void)_setShadowVisible:(BOOL)visible;
- (void)_setShapeButtonViewController:(id)controller;
- (void)_setShouldAlwaysShowAutoRefineControls:(BOOL)controls;
- (void)_setShouldHideHoverPreviewToggle:(BOOL)toggle;
- (void)_setShowsHandwritingTool:(BOOL)tool;
- (void)_setShowsPlusButton:(BOOL)button;
- (void)_setShowsRuler:(BOOL)ruler;
- (void)_setShowsShapeButton:(BOOL)button;
- (void)_setShowsTextButton:(BOOL)button;
- (void)_setTextButtonViewController:(id)controller;
- (void)_setUseEqualSpacingLayoutInCompactSize:(BOOL)size;
- (void)_setVisibilityUpdatesEnabled:(BOOL)enabled;
- (void)_setVisibleInWindow:(id)window forFirstResponder:(id)responder animated:(BOOL)animated notify:(BOOL)notify completion:(id)completion;
- (void)_setWantsBottomLineDividerVisibleInCompactSize:(BOOL)size;
- (void)_setWantsClearBackgroundColorInCompactSize:(BOOL)size;
- (void)_setWantsEllipsisButtonVisibleInCompactSize:(BOOL)size;
- (void)_setWantsExternalVisibility:(BOOL)visibility;
- (void)_setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)size;
- (void)_showImageWandTipWithController:(id)controller;
- (void)_tellDelegateToHideToolPicker;
- (void)_textInputResponderDidReloadNotification:(id)notification;
- (void)_unlockHiddenNotify:(BOOL)notify;
- (void)_updateGenerationToolInstallation;
- (void)_updateHandwritingInputAssistantItems;
- (void)_updateHandwritingToolInstallation;
- (void)_updatePaletteTraitCollection:(id)collection;
- (void)_updatePaletteUserInterfaceStyle:(int64_t)style;
- (void)_updatePaletteView:(id)view onUpdateLink:(BOOL)link;
- (void)_updateToolPickerVisibilityContextMenuPresentedDidChange:(BOOL)change;
- (void)_updateToolPickerVisibilityForFirstResponder:(id)responder withContext:(id)context completion:(id)completion;
- (void)_updateUIOnUpdateLink:(BOOL)link;
- (void)_updateUserInterfaceStyle;
- (void)addObserver:(id)observer;
- (void)calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary;
- (void)dealloc;
- (void)imageWandTipControllerTipStatusDidUpdate:(id)update;
- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset;
- (void)removeObserver:(id)observer;
- (void)setAccessoryItem:(id)item;
- (void)setColorMaximumLinearExposure:(double)exposure;
- (void)setColorSwatchesVisible:(BOOL)visible;
- (void)setColorUserInterfaceStyle:(UIUserInterfaceStyle)colorUserInterfaceStyle;
- (void)setMaximumSupportedContentVersion:(PKContentVersion)maximumSupportedContentVersion;
- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle;
- (void)setPrefersLargeContextualEditingUI:(BOOL)i;
- (void)setRulerActive:(BOOL)rulerActive;
- (void)setSelectedToolItem:(id)item;
- (void)setSelectedToolItemIdentifier:(id)identifier;
- (void)setShowsDrawingPolicyControls:(BOOL)showsDrawingPolicyControls;
- (void)setStateAutosaveName:(NSString *)stateAutosaveName;
- (void)setVisibility:(int64_t)visibility whenFirstResponderIsDescendantOf:(id)of;
- (void)setVisible:(BOOL)visible forFirstResponder:(UIResponder *)responder;
- (void)set_temporarySelectionDelegate:(id)delegate;
- (void)toolPickerItemDidChange:(id)change;
- (void)toolPickerItemReloadImage:(id)image;
@end

@implementation PKToolPicker

- (PKToolPicker)init
{
  v3 = +[PKToolPicker defaultToolItems];
  v4 = [(PKToolPicker *)self initWithToolItems:v3];

  return v4;
}

+ (NSArray)defaultToolItems
{
  v19[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v18 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[0] = v18;
  v17 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[1] = v17;
  v3 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[2] = v3;
  v4 = [PKToolPickerEraserItem alloc];
  [PKInkingTool defaultWidthForInkType:@"com.apple.ink.eraser"];
  v5 = [(PKToolPickerEraserItem *)v4 initWithEraserType:1 width:?];
  v19[3] = v5;
  v6 = objc_alloc_init(PKToolPickerLassoItem);
  v19[4] = v6;
  v7 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[5] = v7;
  v8 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[6] = v8;
  v9 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[7] = v9;
  v10 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[8] = v10;
  v11 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  v19[9] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:10];
  v13 = [v2 arrayWithArray:v12];

  if (!PKIsVisionDevice())
  {
    v14 = objc_alloc_init(PKToolPickerRulerItem);
    [v13 insertObject:v14 atIndex:5];
  }

  v15 = [v13 copy];

  return v15;
}

- (NSArray)_toolsState
{
  v24 = *MEMORY[0x1E69E9840];
  toolItems = [(PKToolPicker *)self toolItems];
  selectedToolItemIdentifier = [(PKToolPicker *)self selectedToolItemIdentifier];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(toolItems, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = toolItems;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        _dictionaryRepresentation = [v11 _dictionaryRepresentation];
        if (selectedToolItemIdentifier)
        {
          identifier = [v11 identifier];
          v14 = [identifier isEqualToString:selectedToolItemIdentifier];

          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:_dictionaryRepresentation];
            [v15 setValue:MEMORY[0x1E695E118] forKey:@"isSelected"];
            v16 = [v15 copy];

            _dictionaryRepresentation = v16;
          }
        }

        if ([_dictionaryRepresentation count] >= 2)
        {
          [v5 addObject:_dictionaryRepresentation];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = [v5 copy];

  return v17;
}

- (NSString)_paletteViewStateRestorationDefaultsKey
{
  if (-[PKToolPicker _useNewAutosaveNameBehavior](self, "_useNewAutosaveNameBehavior") && (-[PKToolPicker stateAutosaveName](self, "stateAutosaveName"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [@"PKPaletteNamedDefaults" isEqualToString:v3], v3, v4))
  {
    stateAutosaveName = [(PKToolPicker *)self stateAutosaveName];
  }

  else
  {
    stateAutosaveName = [MEMORY[0x1E696AD60] stringWithString:@"PKPaletteNamedDefaults"];
    stateAutosaveName2 = [(PKToolPicker *)self stateAutosaveName];

    if (stateAutosaveName2)
    {
      stateAutosaveName3 = [(PKToolPicker *)self stateAutosaveName];
      [stateAutosaveName appendFormat:@"-%@", stateAutosaveName3];
    }
  }

  return stateAutosaveName;
}

- (NSArray)_tools
{
  v2 = [(NSMutableArray *)self->_mutableTools copy];

  return v2;
}

- (NSString)selectedToolItemIdentifier
{
  selectedToolItem = [(PKToolPicker *)self selectedToolItem];
  identifier = [selectedToolItem identifier];

  return identifier;
}

- (PKToolPickerItem)selectedToolItem
{
  v2 = [(PKToolPickerItemManager *)&self->_toolItemManager->super.isa itemForTool:?];
  if (!v2)
  {
    v2 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
  }

  return v2;
}

- (BOOL)_isToolStatePersistenceEnabled
{
  _defaultValueForToolStatePersistenceEnabled = [objc_opt_class() _defaultValueForToolStatePersistenceEnabled];
  v4 = ![(PKToolPicker *)self _useNewAutosaveNameBehavior];
  result = v4 & _defaultValueForToolStatePersistenceEnabled;
  if (v4 & 1) == 0 && (_defaultValueForToolStatePersistenceEnabled)
  {
    return self->_stateAutosaveName != 0;
  }

  return result;
}

+ (BOOL)_defaultValueForToolStatePersistenceEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"PKShouldRestoreToolPickerState"];

    if (v5)
    {
      v2 = [standardUserDefaults BOOLForKey:@"PKShouldRestoreToolPickerState"];
    }

    else
    {
      v2 = 1;
    }

    v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v2)
      {
        v7 = @"YES";
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Should restore tool picker state: %@", &v8, 0xCu);
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (BOOL)_hasResponderRegisteredForWindow:(id)window
{
  v20 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _firstRespondersForVisibleUI = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  keyEnumerator = [_firstRespondersForVisibleUI keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = *v16;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        view = [v10 view];
      }

      v12 = view;
      if (view)
      {
        window = [view window];

        if (window == windowCopy)
        {
          LOBYTE(v7) = 1;
          goto LABEL_16;
        }
      }
    }

    v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_16:

  return v7;
}

- (id)_currentFirstResponder
{
  if (self->_toolPickerVisibility)
  {
    currentFirstResponder = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility currentFirstResponder];
  }

  else
  {
    _interaction = [(PKToolPicker *)self _interaction];
    hostingWindow = [_interaction hostingWindow];
    currentFirstResponder = [hostingWindow firstResponder];
  }

  return currentFirstResponder;
}

- (id)_delegateForSelector:(SEL)selector
{
  _temporarySelectionDelegate = [(PKToolPicker *)self _temporarySelectionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _temporarySelectionDelegate2 = [(PKToolPicker *)self _temporarySelectionDelegate];
  }

  else
  {
    _delegate = [(PKToolPicker *)self _delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      _temporarySelectionDelegate2 = [(PKToolPicker *)self _delegate];
    }

    else
    {
      _temporarySelectionDelegate2 = 0;
    }
  }

  return _temporarySelectionDelegate2;
}

- (BOOL)_wantsVisibleForFirstResponder:(id)responder includeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  responderCopy = responder;
  v7 = [PKToolPicker _internalClassWantsToolPicker:self visibleForResponder:responderCopy];
  v8 = [PKToolPicker _textInputWantsToolPickerVisible:self forFirstResponder:responderCopy];
  LOBYTE(v9) = 1;
  if (v7 || v8)
  {
    goto LABEL_33;
  }

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, responderCopy);
  if (!v11)
  {
    _firstRespondersForVisibleUI = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    _currentActiveToolPicker = [_firstRespondersForVisibleUI objectForKey:responderCopy];

    if (_currentActiveToolPicker && [(PKToolPicker *)_currentActiveToolPicker integerValue]< 2)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_26:
    pencilKitResponderState = [responderCopy pencilKitResponderState];
    _currentActiveToolPicker = [pencilKitResponderState _currentActiveToolPicker];

    if (_currentActiveToolPicker == self)
    {
      pencilKitResponderState2 = [responderCopy pencilKitResponderState];
      _currentToolPickerVisibility = [pencilKitResponderState2 _currentToolPickerVisibility];
      LOBYTE(v9) = _currentToolPickerVisibility == 3;
      if (_currentToolPickerVisibility != 3 && hiddenCopy)
      {
        pencilKitResponderState3 = [responderCopy pencilKitResponderState];
        LOBYTE(v9) = [pencilKitResponderState3 _currentToolPickerVisibility] == 2;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_32;
  }

  v12 = v11;
  v13 = 0;
  v9 = 0;
  do
  {
    _firstRespondersForVisibleUI2 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    v15 = [_firstRespondersForVisibleUI2 objectForKey:v12];

    if (v15)
    {
      integerValue = [v15 integerValue];
      v17 = (v12 != responderCopy) & v9;
      if (integerValue == 3)
      {
        v18 = 0;
      }

      else
      {
        v18 = v9;
      }

      if (integerValue != 2)
      {
        v17 = v18;
      }

      v19 = (v12 == responderCopy) | v9;
      if (integerValue == 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v9;
      }

      if (integerValue)
      {
        v19 = v20;
      }

      if (integerValue <= 1)
      {
        v9 = v19;
      }

      else
      {
        v9 = v17;
      }

      v13 = 1;
    }

    superview = [v12 superview];

    v12 = superview;
  }

  while (superview);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_33:

  return v9 & 1;
}

+ (void)_cycleToolPickersForResponder:(uint64_t)responder
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  _responderWindow = [v2 _responderWindow];
  if (v2 && _responderWindow)
  {
    v15 = _responderWindow;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [_allToolPickers copy];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          toolPicker = [*(*(&v16 + 1) + 8 * v8) toolPicker];
          v10 = toolPicker;
          if (toolPicker)
          {
            _firstRespondersForVisibleUI = [toolPicker _firstRespondersForVisibleUI];
            keyEnumerator = [_firstRespondersForVisibleUI keyEnumerator];
            allObjects = [keyEnumerator allObjects];
            v14 = [allObjects containsObject:v2];

            if (v14)
            {
              [v10 _setVisibleInWindow:v15 forFirstResponder:0 animated:0 notify:1 completion:0];
              [v10 _setVisibleInWindow:0 forFirstResponder:0 animated:0 notify:1 completion:0];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    _responderWindow = v15;
  }
}

+ (id)_toolPickersForWindow:(uint64_t)window includeHidden:
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if (!v4 || (objc_opt_respondsToSelector() & 1) != 0 && ([v4 _isRemoteInputHostWindow] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    firstResponder = [v4 firstResponder];
    if (firstResponder)
    {
      v7 = [_allToolPickers copy];
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            toolPicker = [*(*(&v16 + 1) + 8 * i) toolPicker];
            v14 = toolPicker;
            if (toolPicker && [toolPicker _wantsVisibleForFirstResponder:firstResponder includeHidden:window])
            {
              [v5 addObject:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_windowScenesForToolPicker:(id)picker
{
  v20 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _firstRespondersForVisibleUI = [pickerCopy _firstRespondersForVisibleUI];
  keyEnumerator = [_firstRespondersForVisibleUI keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        _responderWindow = [*(*(&v15 + 1) + 8 * i) _responderWindow];
        windowScene = [_responderWindow windowScene];

        if (windowScene)
        {
          [v4 addObject:windowScene];
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)_windowSceneForToolPicker:(id)picker
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _firstRespondersForVisibleUI = [picker _firstRespondersForVisibleUI];
  keyEnumerator = [_firstRespondersForVisibleUI keyEnumerator];

  windowScene = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (windowScene)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != windowScene; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        _responderWindow = [v8 _responderWindow];

        if (_responderWindow)
        {
          _responderWindow2 = [v8 _responderWindow];
          windowScene = [_responderWindow2 windowScene];

          goto LABEL_11;
        }
      }

      windowScene = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (windowScene)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return windowScene;
}

+ (id)_windowForToolPicker:(id)picker
{
  v65 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  [pickerCopy calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = [MEMORY[0x1E69DCE70] _scenesIncludingInternalForPK:1];
  v5 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v5)
  {
    v6 = *v57;
    v7 = off_1E82D4000;
    v39 = v4;
    v36 = *v57;
    do
    {
      v8 = 0;
      v37 = v5;
      do
      {
        if (*v57 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v38 = v8;
        v9 = *(*(&v56 + 1) + 8 * v8);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        _allWindows = [v9 _allWindows];
        v11 = [_allWindows countByEnumeratingWithState:&v52 objects:v63 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(_allWindows);
              }

              v15 = *(*(&v52 + 1) + 8 * i);
              if ([v15 isKeyWindow])
              {
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v16 = [(__objc2_class *)v7[430] _toolPickersForWindow:v15];
                v17 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = 0;
                  v20 = *v49;
                  while (2)
                  {
                    v21 = 0;
                    v22 = v19;
                    do
                    {
                      if (*v49 != v20)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v19 = *(*(&v48 + 1) + 8 * v21);

                      if (v19 == pickerCopy)
                      {
LABEL_44:
                        v32 = v15;

                        v4 = v39;
                        goto LABEL_46;
                      }

                      ++v21;
                      v22 = v19;
                    }

                    while (v18 != v21);
                    v18 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
                    if (v18)
                    {
                      continue;
                    }

                    break;
                  }

                  v4 = v39;
                  v6 = v36;
                }

                v7 = off_1E82D4000;
                goto LABEL_25;
              }
            }

            v12 = [_allWindows countByEnumeratingWithState:&v52 objects:v63 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        _allWindows = [v9 _allWindows];
        v23 = [_allWindows countByEnumeratingWithState:&v44 objects:v61 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v45;
          v34 = *v45;
          while (2)
          {
            v26 = 0;
            v35 = v24;
            do
            {
              if (*v45 != v25)
              {
                objc_enumerationMutation(_allWindows);
              }

              v15 = *(*(&v44 + 1) + 8 * v26);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v16 = [(__objc2_class *)v7[430] _toolPickersForWindow:v15, v34];
              v27 = [v16 countByEnumeratingWithState:&v40 objects:v60 count:16];
              if (v27)
              {
                v28 = v27;
                v19 = 0;
                v29 = *v41;
LABEL_32:
                v30 = 0;
                v31 = v19;
                while (1)
                {
                  if (*v41 != v29)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v19 = *(*(&v40 + 1) + 8 * v30);

                  if (v19 == pickerCopy)
                  {
                    goto LABEL_44;
                  }

                  ++v30;
                  v31 = v19;
                  if (v28 == v30)
                  {
                    v28 = [v16 countByEnumeratingWithState:&v40 objects:v60 count:16];
                    if (v28)
                    {
                      goto LABEL_32;
                    }

                    v4 = v39;
                    v24 = v35;
                    v6 = v36;
                    v25 = v34;
                    break;
                  }
                }
              }

              ++v26;
              v7 = off_1E82D4000;
            }

            while (v26 != v24);
            v24 = [_allWindows countByEnumeratingWithState:&v44 objects:v61 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v8 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v5 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
      v32 = 0;
    }

    while (v5);
  }

  else
  {
    v32 = 0;
  }

LABEL_46:

  return v32;
}

+ (void)_dockToolPickerForWindowScene:(uint64_t)scene toAutoHideCornerAnimated:
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:v4];
  v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138478083;
    v9 = v4;
    v10 = 2113;
    v11 = v5;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Dock toolPicker for windowScene: %{private}@, paletteViewInteraction: %{private}@", &v8, 0x16u);
  }

  paletteHostView = [v5 paletteHostView];
  [paletteHostView _dockPaletteToAutoHideCornerAnimated:scene];
}

- (id)_applicationWindow
{
  v20 = *MEMORY[0x1E69E9840];
  if (PKIsVisionDevice())
  {
    toolPickerVisibility = self->_toolPickerVisibility;
    if (toolPickerVisibility)
    {
      windowScene = [(PKToolPickerVisibilityProtocol *)toolPickerVisibility windowScene];
      if (windowScene)
      {
        _interaction = windowScene;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        windows = [windowScene windows];
        v7 = [windows countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(windows);
              }

              v11 = *(*(&v15 + 1) + 8 * i);
              if (([(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility isActiveToolPickerForWindow:v11]& 1) != 0)
              {
                hostingWindow = v11;
                goto LABEL_19;
              }
            }

            v8 = [windows countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v12 = 0;
  }

  else
  {
    _interaction = [(PKToolPicker *)self _interaction];
    if (_interaction && [(PKToolPicker *)self isVisible])
    {
      windows = [(PKToolPicker *)self _interaction];
      hostingWindow = [windows hostingWindow];
LABEL_19:
      v12 = hostingWindow;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)addObserver:(id)observer
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = observer;
  _observers = [(PKToolPicker *)self _observers];
  [_observers addObject:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    [v6 setRulerActive:{-[PKToolPicker isRulerActive](self, "isRulerActive")}];
    [v6 _addObserver:self];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PKDebugStringRepresentation(v4);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Notify selected tool did change, addObserver: %@", &v9, 0xCu);
    }

    [v4 toolPickerSelectedToolItemDidChange:self];
  }

  if ([(PKToolPicker *)self isVisible]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 toolPickerVisibilityDidChange:self];
  }
}

- (void)removeObserver:(id)observer
{
  v4 = observer;
  _observers = [(PKToolPicker *)self _observers];
  [_observers removeObject:v4];
}

- (void)_saveStateIfNecessary
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView saveOptionsIfNecessary];
}

+ (void)_setCanBecomeVisible:(BOOL)visible
{
  v15 = *MEMORY[0x1E69E9840];
  if (__canBecomeVisible != visible)
  {
    __canBecomeVisible = visible;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = _allToolPickers;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          toolPicker = [*(*(&v10 + 1) + 8 * v7) toolPicker];
          if (toolPicker)
          {
            v9 = [PKToolPicker _windowForToolPicker:toolPicker];
            [toolPicker _setVisibleInWindow:v9];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)setVisible:(BOOL)visible forFirstResponder:(UIResponder *)responder
{
  v4 = visible;
  v23 = *MEMORY[0x1E69E9840];
  v6 = responder;
  _firstRespondersForVisibleUI = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  v8 = [_firstRespondersForVisibleUI objectForKey:v6];

  if ((v8 != 0) != v4)
  {
    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _pkDebugStringRepresentation = [v6 _pkDebugStringRepresentation];
      _currentFirstResponder = [(PKToolPicker *)self _currentFirstResponder];
      _pkDebugStringRepresentation2 = [_currentFirstResponder _pkDebugStringRepresentation];
      v15 = 134218754;
      selfCopy = self;
      v17 = 1024;
      v18 = v4;
      v19 = 2112;
      v20 = _pkDebugStringRepresentation;
      v21 = 2112;
      v22 = _pkDebugStringRepresentation2;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, should setVisible %{BOOL}d for responder: %@, current: %@", &v15, 0x26u);
    }
  }

  _firstRespondersForVisibleUI2 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  v14 = _firstRespondersForVisibleUI2;
  if (v4)
  {
    [_firstRespondersForVisibleUI2 setObject:&unk_1F47C1010 forKey:v6];
  }

  else
  {
    [_firstRespondersForVisibleUI2 removeObjectForKey:v6];
  }

  if ([(UIResponder *)v6 isFirstResponder])
  {
    [(PKToolPicker *)self _updateToolPickerVisibility];
  }
}

- (void)setVisibility:(int64_t)visibility whenFirstResponderIsDescendantOf:(id)of
{
  ofCopy = of;
  if (visibility == 2)
  {
    _firstRespondersForVisibleUI = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    [_firstRespondersForVisibleUI removeObjectForKey:ofCopy];
  }

  else
  {
    if (visibility == 1)
    {
      _firstRespondersForVisibleUI2 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
      _firstRespondersForVisibleUI = _firstRespondersForVisibleUI2;
      v8 = &unk_1F47C1040;
    }

    else
    {
      if (visibility)
      {
        goto LABEL_9;
      }

      _firstRespondersForVisibleUI2 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
      _firstRespondersForVisibleUI = _firstRespondersForVisibleUI2;
      v8 = &unk_1F47C1028;
    }

    [_firstRespondersForVisibleUI2 setObject:v8 forKey:ofCopy];
  }

LABEL_9:
  [(PKToolPicker *)self _updateToolPickerVisibility];
}

- (void)_handleFirstResponderDidChangeNotification:(id)notification
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _currentFirstResponder = [(PKToolPicker *)self _currentFirstResponder];
    _pkDebugStringRepresentation = [_currentFirstResponder _pkDebugStringRepresentation];
    v22 = 138412546;
    selfCopy2 = notificationCopy;
    v24 = 2112;
    *v25 = _pkDebugStringRepresentation;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "first responder did change notification: %@, firstResponder: %@", &v22, 0x16u);
  }

  userInfo = [(PKToolPicker *)notificationCopy userInfo];
  v9 = [userInfo objectForKey:@"_UIWindowHostDidPromoteFirstResponderUserInfoKey"];
  bOOLValue = [v9 BOOLValue];

  userInfo2 = [(PKToolPicker *)notificationCopy userInfo];
  v12 = [userInfo2 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  if (!bOOLValue || v12)
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    isExtendedColorPickerVisible = [_paletteView isExtendedColorPickerVisible];

    if (PKIsPhoneDevice() && ([(PKToolPicker *)self isVisible]& isExtendedColorPickerVisible) == 1)
    {
      v15 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        isVisible = [(PKToolPicker *)self isVisible];
        v22 = 134218496;
        selfCopy2 = self;
        v24 = 1024;
        *v25 = isVisible;
        v25[2] = 1024;
        *&v25[3] = 1;
        v17 = "Skip processing FR notification, toolPicker: %p, isVisible: %{BOOL}d, isExtendedColorPickerVisible: %{BOOL}d";
LABEL_16:
        _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_INFO, v17, &v22, 0x18u);
      }
    }

    else
    {
      if (!PKIsVisionDevice() || (-[PKToolPicker _paletteView](self, "_paletteView"), v18 = objc_claimAutoreleasedReturnValue(), [v18 palettePopoverPresentingController], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "presentedViewController"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, !v20) || !-[PKToolPicker isVisible](self, "isVisible"))
      {
        v15 = [PKToolPicker _windowForToolPicker:self];
        [(PKToolPicker *)self _setVisibleInWindow:v15 forFirstResponder:v12];
        goto LABEL_19;
      }

      v15 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        isVisible2 = [(PKToolPicker *)self isVisible];
        v22 = 134218496;
        selfCopy2 = self;
        v24 = 1024;
        *v25 = isVisible2;
        v25[2] = 1024;
        *&v25[3] = 1;
        v17 = "Skip processing FR notification, toolPicker: %p, isVisible: %{BOOL}d, hasPresentedViewController: %{BOOL}d";
        goto LABEL_16;
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  if ((_UIApplicationIsExtension() & 1) == 0)
  {
    [(PKToolPicker *)self _setVisibleInWindow:0];
  }

LABEL_20:
}

- (PKDrawingPaletteView)_paletteView
{
  if (self->_toolPickerVisibility)
  {
    paletteView = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility paletteView];
  }

  else
  {
    _interaction = [(PKToolPicker *)self _interaction];
    paletteView = [_interaction paletteView];
  }

  return paletteView;
}

- (PKToolPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

- (void)_setSelectedTool:(id)tool saveState:(BOOL)state updateUI:(BOOL)i updateLastSelectedTool:(BOOL)selectedTool
{
  selectedToolCopy = selectedTool;
  iCopy = i;
  stateCopy = state;
  v37 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  v12 = toolCopy;
  if (toolCopy)
  {
    if ([(PKTool *)toolCopy _isRulerTool])
    {
      v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Can't select a ruler tool.", buf, 2u);
      }

      [(PKToolPicker *)self setRulerActive:[(PKToolPicker *)self isRulerActive]^ 1];
    }

    else
    {
      v15 = [(PKToolPicker *)self _indexOfTool:v12];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      v16 = objc_opt_class();
      v17 = PKDynamicCast(v16, v12);
      mutableTools = self->_mutableTools;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __75__PKToolPicker__setSelectedTool_saveState_updateUI_updateLastSelectedTool___block_invoke;
      v28[3] = &unk_1E82D6EB8;
      v19 = v12;
      v29 = v19;
      v30 = v17;
      v27 = v17;
      v20 = [(NSMutableArray *)mutableTools indexOfObjectPassingTest:v28];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = self->_mutableTools;
          *buf = 138412546;
          v32 = v19;
          v33 = 2112;
          selectedToolCopy2 = v22;
          _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Can't select tool: %@. Tool not found in tools: %@", buf, 0x16u);
        }
      }

      else
      {
        v21 = [(NSMutableArray *)self->_mutableTools objectAtIndex:v20];
        [(NSMutableArray *)self->_mutableTools replaceObjectAtIndex:v20 withObject:v19];
        [(PKToolPickerItemManager *)self->_toolItemManager updateItemForTool:v19];
        v23 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v32 = v19;
          v33 = 2112;
          selectedToolCopy2 = v21;
          v35 = 2048;
          v36 = v20;
          _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "An equal but not identical tool: %@, replaced tool: %@, at index: %lu", buf, 0x20u);
        }
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_17:
        if (self->_selectedTool != v12)
        {
          [(PKToolPicker *)self _setSelectionMask:0 updateUI:0];
          if (selectedToolCopy)
          {
            objc_storeStrong(&self->_lastSelectedTool, self->_selectedTool);
          }

          v24 = self->_selectedTool;
          objc_storeStrong(&self->_selectedTool, tool);
          [(NSMutableArray *)self->_mutableTools replaceObjectAtIndex:v15 withObject:v12];
          [(PKToolPickerItemManager *)self->_toolItemManager updateItemForTool:v12];
          v25 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            selectedTool = self->_selectedTool;
            *buf = 138478083;
            v32 = v24;
            v33 = 2113;
            selectedToolCopy2 = selectedTool;
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Did change selected tool from %{private}@ to %{private}@", buf, 0x16u);
          }

          [(PKToolPicker *)self _dismissPopovers];
          if (iCopy)
          {
            [(PKToolPicker *)self _updateUI];
          }

          if (stateCopy)
          {
            [(PKToolPicker *)self _saveToolPickerState];
          }

          [(PKToolPicker *)self _notifySelectedToolDidChange];
        }
      }
    }
  }

  else
  {
    v14 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Can't select a nil tool.", buf, 2u);
    }
  }
}

uint64_t __75__PKToolPicker__setSelectedTool_saveState_updateUI_updateLastSelectedTool___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ink];
  v5 = [v4 _isEraserInk];

  if (!v5)
  {
    if (!*(a1 + 40))
    {
      v6 = [*(a1 + 32) ink];
      v11 = [v6 inkType];
      v13 = [v3 ink];
      v16 = [v13 inkType];
      v7 = [v11 isEqual:v16];

LABEL_20:
      goto LABEL_21;
    }

    v8 = objc_opt_class();
    v6 = PKDynamicCast(v8, v3);
    if (!v6)
    {
      v7 = 0;
      goto LABEL_21;
    }

    v9 = [*(a1 + 40) customIdentifier];
    v10 = [v6 customIdentifier];
    v11 = v9;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      v7 = 0;
      v14 = v12;
      v15 = v11;
      if (!v11 || !v12)
      {
LABEL_19:

        goto LABEL_20;
      }

      v7 = [v11 isEqualToString:v12];

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    v17 = [*(a1 + 40) _configuration];
    v18 = [v6 _configuration];
    v15 = v17;
    v19 = v18;
    v14 = v19;
    if (v15 | v19)
    {
      v7 = 0;
      if (v15 && v19)
      {
        v7 = [v15 isEqual:v19];
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_19;
  }

  v6 = [v3 ink];
  v7 = [v6 _isEraserInk];
LABEL_21:

  return v7;
}

- (void)_notifySelectedToolDidChange
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _observers = [(PKToolPicker *)self _observers];
  v3 = [_observers copy];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = "com.apple.pencilkit";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = os_log_create(v7, "ToolPicker");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          PKDebugStringRepresentation(v9);
          v12 = v11 = v7;
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Notify selected tool did change, observer: %@", buf, 0xCu);

          v7 = v11;
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 toolPickerSelectedToolItemDidChange:self];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v9 toolPickerSelectedToolDidChange:self];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary
{
  if (![(PKToolPicker *)self _didCalculateVisibleBeforeResponderChanges])
  {
    [(PKToolPicker *)self set_didCalculateVisibleBeforeResponderChanges:1];
    self->_wasVisibleBeforeResponderChanges = [(PKToolPicker *)self isVisible];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__PKToolPicker_calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary__block_invoke;
    v5[3] = &unk_1E82D6EE0;
    objc_copyWeak(&v6, &location);
    v3 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, v5);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, v3, *MEMORY[0x1E695E8D0]);
    CFRelease(v3);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __84__PKToolPicker_calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained set_didCalculateVisibleBeforeResponderChanges:0];
}

- (void)setRulerActive:(BOOL)rulerActive
{
  v20 = *MEMORY[0x1E69E9840];
  if (rulerActive)
  {
    if (PKIsVisionDevice())
    {
      v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "Can't enable the ruler on this platform.", buf, 2u);
      }

      goto LABEL_19;
    }

    p_rulerActive = &self->_rulerActive;
    if (self->_rulerActive)
    {
      return;
    }

    _showsRuler = [(PKToolPicker *)self _showsRuler];
    v7 = 0;
  }

  else
  {
    p_rulerActive = &self->_rulerActive;
    if (!self->_rulerActive)
    {
      return;
    }

    _showsRuler = 0;
    v7 = 1;
  }

  *p_rulerActive = _showsRuler;
  if (v7 == _showsRuler)
  {
    return;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _observers = [(PKToolPicker *)self _observers];
  v4 = [_observers copy];

  v9 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 toolPickerIsRulerActiveDidChange:self];
        }
      }

      v10 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

LABEL_19:
}

- (void)_setShowsRuler:(BOOL)ruler
{
  if (!ruler)
  {
    if (![(PKToolPicker *)self _showsRuler])
    {
      return;
    }

    v5 = [(NSMutableArray *)self->_mutableTools indexesOfObjectsPassingTest:&__block_literal_global_60];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__PKToolPicker__setShowsRuler___block_invoke_2;
    v6[3] = &unk_1E82D6F48;
    v6[4] = self;
    [(PKRulerTool *)v5 enumerateIndexesUsingBlock:v6];
LABEL_10:

    [(PKToolPicker *)self _updateUI];
    [(PKToolPicker *)self _saveToolPickerState];
    return;
  }

  if (!PKIsVisionDevice())
  {
    if ([(PKToolPicker *)self _showsRuler])
    {
      return;
    }

    v5 = objc_alloc_init(PKRulerTool);
    [(PKToolPicker *)self _insertTool:v5 atIndex:[(NSMutableArray *)self->_mutableTools count]- 4 updateUI:0];
    goto LABEL_10;
  }

  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "Can't enable the ruler on this platform.", buf, 2u);
  }
}

void __31__PKToolPicker__setShowsRuler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  [*(a1 + 32) _removeTool:v3 updateUI:0];
}

- (int64_t)_numberOfToolsAfterRuler
{
  result = [(NSMutableArray *)self->_mutableTools indexOfObjectPassingTest:&__block_literal_global_63];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  return result;
}

- (void)_setNumberOfToolsAfterRuler:(int64_t)ruler
{
  if (PKIsVisionDevice())
  {
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Can't enable the ruler on this platform.", buf, 2u);
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_mutableTools indexesOfObjectsPassingTest:&__block_literal_global_65];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PKToolPicker__setNumberOfToolsAfterRuler___block_invoke_2;
    v8[3] = &unk_1E82D6F48;
    v8[4] = self;
    [v6 enumerateIndexesUsingBlock:v8];

    v7 = objc_alloc_init(PKRulerTool);
    [(PKToolPicker *)self _insertTool:v7 atIndex:[(NSMutableArray *)self->_mutableTools count]- ruler updateUI:0];
    [(PKToolPicker *)self _updateUI];
    [(PKToolPicker *)self _saveToolPickerState];
  }
}

void __44__PKToolPicker__setNumberOfToolsAfterRuler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  [*(a1 + 32) _removeTool:v3 updateUI:0];
}

- (void)_setShouldHideHoverPreviewToggle:(BOOL)toggle
{
  if (self->__shouldHideHoverPreviewToggle != toggle)
  {
    self->__shouldHideHoverPreviewToggle = toggle;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setShouldAlwaysShowAutoRefineControls:(BOOL)controls
{
  if (self->__shouldAlwaysShowAutoRefineControls != controls)
  {
    self->__shouldAlwaysShowAutoRefineControls = controls;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setAccessoryItem:(id)item
{
  itemCopy = item;
  barButtonItem = [(PKPaletteBarButton *)self->_accessoryBarButton barButtonItem];
  v6 = itemCopy;
  if (v6 | barButtonItem)
  {
    v11 = v6;
    if (v6 && barButtonItem)
    {
      v7 = [barButtonItem isEqual:v6];

      v6 = v11;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (!v11)
      {
        accessoryBarButton = self->_accessoryBarButton;
        self->_accessoryBarButton = 0;

        goto LABEL_9;
      }
    }

    v8 = [[PKPaletteBarButton alloc] initWithBarButtonItem:v11];
    v9 = self->_accessoryBarButton;
    self->_accessoryBarButton = v8;

    [(PKPaletteBarButton *)self->_accessoryBarButton setAccessibilityIdentifier:@"Plus-Button"];
LABEL_9:
    [(PKToolPicker *)self _updateUI];
    v6 = v11;
  }

LABEL_10:
}

- (void)_setShowsPlusButton:(BOOL)button
{
  if (self->__showsPlusButton != button)
  {
    self->__showsPlusButton = button;
    if (button)
    {
      v5 = objc_alloc(MEMORY[0x1E69DC708]);
      v6 = +[UIImage _pk_plusButtonImage];
      v7 = [v5 initWithImage:v6 menu:self->__plusButtonMenu];
    }

    else
    {
      v7 = 0;
    }

    [(PKToolPicker *)self setAccessoryItem:v7];
  }
}

- (void)_setPlusButtonMenu:(id)menu
{
  menuCopy = menu;
  if (self->__plusButtonMenu != menuCopy)
  {
    v8 = menuCopy;
    objc_storeStrong(&self->__plusButtonMenu, menu);
    accessoryBarButton = self->_accessoryBarButton;
    if (accessoryBarButton)
    {
      barButtonItem = [(PKPaletteBarButton *)accessoryBarButton barButtonItem];
      [barButtonItem setMenu:v8];
    }

    [(PKToolPicker *)self _updateUI];
    menuCopy = v8;
  }
}

- (void)_setPlusButtonViewController:(id)controller
{
  controllerCopy = controller;
  if (self->__plusButtonViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->__plusButtonViewController, controller);
    [(PKToolPicker *)self _updateUI];
    controllerCopy = v6;
  }
}

- (void)_setShowsTextButton:(BOOL)button
{
  if (self->__showsTextButton != button)
  {
    self->__showsTextButton = button;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setTextButtonViewController:(id)controller
{
  controllerCopy = controller;
  if (self->__textButtonViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->__textButtonViewController, controller);
    [(PKToolPicker *)self _updateUI];
    controllerCopy = v6;
  }
}

- (void)_setShowsShapeButton:(BOOL)button
{
  if (self->__showsShapeButton != button)
  {
    self->__showsShapeButton = button;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setShapeButtonViewController:(id)controller
{
  controllerCopy = controller;
  if (self->__shapeButtonViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->__shapeButtonViewController, controller);
    [(PKToolPicker *)self _updateUI];
    controllerCopy = v6;
  }
}

- (UIView)_contextualEditingView
{
  if ([(PKToolPicker *)self isVisible])
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    contextualEditingView = [_paletteView contextualEditingView];
  }

  else
  {
    contextualEditingView = 0;
  }

  return contextualEditingView;
}

- (unint64_t)_edgeForContextualEditingView
{
  v3 = [(PKToolPicker *)self _palettePosition]- 1;
  _palettePosition = [(PKToolPicker *)self _palettePosition];
  if (v3 > 3)
  {
    if ((_palettePosition - 5) > 3)
    {
      return 4;
    }

    else
    {
      _paletteView = [(PKToolPicker *)self _paletteView];
      v7 = [(PKToolPicker *)self _palettePosition]- 5;
      if (v7 > 3)
      {
        v8 = -1;
      }

      else
      {
        v8 = qword_1C801C380[v7];
      }

      v9 = [_paletteView edgeLocationToDockFromCorner:v8];

      return v9;
    }
  }

  else if ((_palettePosition - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return qword_1C801C3A0[_palettePosition - 1];
  }
}

- (void)_setLassoToolEditingViewVisible:(BOOL)visible
{
  if (self->_lassoToolEditingViewVisible != visible)
  {
    self->_lassoToolEditingViewVisible = visible;
    [(PKToolPicker *)self _updateUIOnUpdateLink:1];
  }
}

- (UIView)_lassoToolEditingView
{
  if ([(PKToolPicker *)self isVisible])
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    lassoToolEditingView = [_paletteView lassoToolEditingView];
  }

  else
  {
    lassoToolEditingView = 0;
  }

  return lassoToolEditingView;
}

- (void)_setWantsEllipsisButtonVisibleInCompactSize:(BOOL)size
{
  sizeCopy = size;
  if ([(PKToolPicker *)self _canShowEllipsisButtonInCompactSize]&& self->__wantsEllipsisButtonVisibleInCompactSize != sizeCopy)
  {
    self->__wantsEllipsisButtonVisibleInCompactSize = sizeCopy;

    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setWantsBottomLineDividerVisibleInCompactSize:(BOOL)size
{
  if (self->__wantsBottomLineDividerVisibleInCompactSize != size)
  {
    self->__wantsBottomLineDividerVisibleInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setIgnoresSafeAreaInsetsInCompactSize:(BOOL)size
{
  if (self->__ignoresSafeAreaInsetsInCompactSize != size)
  {
    self->__ignoresSafeAreaInsetsInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)size
{
  v3.f64[0] = size.top;
  v3.f64[1] = size.leading;
  v4.f64[0] = size.bottom;
  v4.f64[1] = size.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__edgeInsetsInCompactSize.top, v3), vceqq_f64(*&self->__edgeInsetsInCompactSize.bottom, v4)))) & 1) == 0)
  {
    self->__edgeInsetsInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setInterItemToolsSpacingInCompactSize:(double)size
{
  if (vabdd_f64(self->__interItemToolsSpacingInCompactSize, size) >= 0.00999999978)
  {
    self->__interItemToolsSpacingInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setInterItemUndoRedoButtonsSpacingInCompactSize:(double)size
{
  if (self->__interItemUndoRedoButtonsSpacingInCompactSize != size)
  {
    self->__interItemUndoRedoButtonsSpacingInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setUseEqualSpacingLayoutInCompactSize:(BOOL)size
{
  if (self->__useEqualSpacingLayoutInCompactSize != size)
  {
    self->__useEqualSpacingLayoutInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (BOOL)_interactionIsValid
{
  _interaction = [(PKToolPicker *)self _interaction];
  v3 = _interaction != 0;

  return v3;
}

- (double)_scalingFactor
{
  if (![(PKToolPicker *)self isVisible])
  {
    return 1.0;
  }

  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView paletteScaleFactor];
  v5 = v4;

  return v5;
}

- (void)_notifyScaleFactorDidChange
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _observers = [(PKToolPicker *)self _observers];
  v4 = [_observers copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 _toolPickerDidChangeScaleFactor:self];
          v10 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = PKDebugStringRepresentation(v9);
            *buf = 138412290;
            v17 = v11;
            _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Tool picker scale factor change notified to observer: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }
}

- (BOOL)isVisible
{
  toolPickerVisibility = self->_toolPickerVisibility;
  if (toolPickerVisibility)
  {
    return [(PKToolPickerVisibilityProtocol *)toolPickerVisibility toolPickerVisible];
  }

  else
  {
    return [(PKToolPicker *)self _toolPickerVisible];
  }
}

- (id)_windowScene
{
  if (self->_toolPickerVisibility)
  {
    windowScene = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility windowScene];
  }

  else
  {
    _interaction = [(PKToolPicker *)self _interaction];
    view = [_interaction view];
    window = [view window];
    windowScene = [window windowScene];
  }

  return windowScene;
}

- (void)_setVisibilityUpdatesEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->__visibilityUpdatesEnabled != enabled)
  {
    self->__visibilityUpdatesEnabled = enabled;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134218240;
      selfCopy = self;
      v7 = 1024;
      _visibilityUpdatesEnabled = [(PKToolPicker *)self _visibilityUpdatesEnabled];
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, visibility updates did change, visibilityUpdatesEnabled: %{BOOL}d", &v5, 0x12u);
    }

    [(PKToolPicker *)self _updateToolPickerVisibility];
  }
}

- (void)_performWithVisibilityUpdatesEnabled:(BOOL)enabled block:(id)block
{
  enabledCopy = enabled;
  visibilityUpdatesEnabled = self->__visibilityUpdatesEnabled;
  blockCopy = block;
  [(PKToolPicker *)self _setVisibilityUpdatesEnabled:enabledCopy];
  blockCopy[2](blockCopy);

  [(PKToolPicker *)self _setVisibilityUpdatesEnabled:visibilityUpdatesEnabled];
}

+ (void)_performWithVisibilityUpdatesEnabled:(BOOL)enabled window:(id)window block:(id)block
{
  enabledCopy = enabled;
  windowCopy = window;
  blockCopy = block;
  if (windowCopy && ([PKToolPicker activeToolPickerForWindow:windowCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v8 _performWithVisibilityUpdatesEnabled:enabledCopy block:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

+ (void)_updateToolPickerVisibilityForFirstResponder:(id)responder
{
  v16 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _allToolPickers;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        toolPicker = [*(*(&v11 + 1) + 8 * v8) toolPicker];
        v10 = toolPicker;
        if (toolPicker)
        {
          [toolPicker _updateToolPickerVisibilityForFirstResponder:responderCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateToolPickerVisibilityContextMenuPresentedDidChange:(BOOL)change
{
  v5 = objc_alloc_init(PKToolPickerVisibilityContext);
  v6 = v5;
  if (v5)
  {
    v5->_contextMenuPresentedDidChange = change;
  }

  if (self)
  {
    v7 = v5;
    [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v5 completion:0];
    v6 = v7;
  }
}

- (void)_updateToolPickerVisibilityForFirstResponder:(id)responder withContext:(id)context completion:(id)completion
{
  responderCopy = responder;
  contextCopy = context;
  completionCopy = completion;
  if ([(PKToolPicker *)self _visibilityUpdatesEnabled])
  {
    if ([(PKToolPicker *)self _isContextMenuPresented])
    {
      v10 = 0;
    }

    else
    {
      v10 = [PKToolPicker _windowForToolPicker:self];
    }

    if (contextCopy)
    {
      if (contextCopy[8] == 1)
      {
        v11 = contextCopy[10];
      }

      else
      {
        v11 = 1;
      }

      if (![(PKToolPicker *)self _isContextMenuPresented]&& contextCopy[9] == 1)
      {
        windowScene = [v10 windowScene];
        v13 = [(PKToolPicker *)self _squeezePaletteVisibleInWindowScene:windowScene];

        if (v13)
        {

          v10 = 0;
        }

        v11 = 0;
      }
    }

    else
    {
      [(PKToolPicker *)self _isContextMenuPresented];
      v11 = 1;
    }

    [(PKToolPicker *)self _setVisibleInWindow:v10 forFirstResponder:responderCopy animated:1 notify:v11 & 1 completion:completionCopy];
  }
}

- (BOOL)_squeezePaletteVisibleInWindowScene:(id)scene
{
  if (!scene)
  {
    return 0;
  }

  v3 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:?];
  _paletteViewVisible = [v3 _paletteViewVisible];

  return _paletteViewVisible;
}

- (void)_setVisibleInWindow:(id)window forFirstResponder:(id)responder animated:(BOOL)animated notify:(BOOL)notify completion:(id)completion
{
  notifyCopy = notify;
  animatedCopy = animated;
  v89 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  responderCopy = responder;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke;
  aBlock[3] = &unk_1E82D6F70;
  v15 = completionCopy;
  v81 = v15;
  v16 = _Block_copy(aBlock);
  if (!responderCopy || ([responderCopy isFirstResponder] & 1) != 0)
  {
    if (__canBecomeVisible && ![(PKToolPicker *)self _isLockedHidden])
    {
      _isEnabled = [(PKToolPicker *)self _isEnabled];
      if (!windowCopy || _isEnabled)
      {
        goto LABEL_15;
      }
    }

    else if (!windowCopy)
    {
      goto LABEL_15;
    }

    v19 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[PKToolPicker _canBecomeVisible];
      _isLockedHidden = [(PKToolPicker *)self _isLockedHidden];
      _isEnabled2 = [(PKToolPicker *)self _isEnabled];
      *buf = 134218752;
      selfCopy7 = self;
      v86 = 1024;
      *v87 = v20;
      *&v87[4] = 1024;
      *&v87[6] = _isLockedHidden;
      LOWORD(v88[0]) = 1024;
      *(v88 + 2) = _isEnabled2;
      _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, skip making tool picker visible, canBecomeVisible: %{BOOL}d, isLockedHidden: %{BOOL}d, isEnabled: %{BOOL}d", buf, 0x1Eu);
    }

    windowCopy = 0;
LABEL_15:
    if (![(PKToolPicker *)self _visibilityUpdatesEnabled])
    {
      v24 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        _visibilityUpdatesEnabled = [(PKToolPicker *)self _visibilityUpdatesEnabled];
        *buf = 134218240;
        selfCopy7 = self;
        v86 = 1024;
        *v87 = _visibilityUpdatesEnabled;
        _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, skip updating tool picker visibility, _visibilityUpdatesEnabled: %{BOOL}d", buf, 0x12u);
      }

      goto LABEL_22;
    }

    if ([(PKToolPicker *)self _visibilityUpdatesEnabled])
    {
      toolPickerVisibility = self->_toolPickerVisibility;
      if (toolPickerVisibility)
      {
        [(PKToolPickerVisibilityProtocol *)toolPickerVisibility setVisibleInWindow:windowCopy animated:animatedCopy notify:notifyCopy completion:v15];
        goto LABEL_64;
      }
    }

    windowScene = [windowCopy windowScene];
    v27 = [(PKToolPicker *)self _squeezePaletteVisibleInWindowScene:windowScene];

    if (v27)
    {
      isVisible = [(PKToolPicker *)self isVisible];
      if (windowCopy)
      {
        if (!isVisible)
        {
          v24 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            selfCopy7 = self;
            v86 = 1024;
            *v87 = 1;
            _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p can't become visible, isSqueezePaletteVisible: %{BOOL}d", buf, 0x12u);
          }

LABEL_22:

          v16[2](v16);
          goto LABEL_64;
        }
      }
    }

    v66 = animatedCopy;
    [(PKToolPicker *)self calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary];
    windowScene2 = [windowCopy windowScene];
    v30 = [PKPaletteViewInteraction paletteViewInteractionForWindow:windowCopy windowScene:windowScene2];

    if (v30)
    {
      [v30 setDelegate:self];
      _paletteViewDelegateProxy = [(PKToolPicker *)self _paletteViewDelegateProxy];
      paletteView = [v30 paletteView];
      [paletteView setDelegate:_paletteViewDelegateProxy];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    if (responderCopy)
    {
      pencilKitResponderState = [responderCopy pencilKitResponderState];
      _currentActiveToolPicker = [pencilKitResponderState _currentActiveToolPicker];

      if (_currentActiveToolPicker == self)
      {
        pencilKitResponderState2 = [responderCopy pencilKitResponderState];
        if ([pencilKitResponderState2 _currentToolPickerVisibility] == 1)
        {
          _isPencilInteractionEnabledWhenNotVisible = [(PKToolPicker *)self _isPencilInteractionEnabledWhenNotVisible];

          if (_isPencilInteractionEnabledWhenNotVisible)
          {
            v45 = os_log_create("com.apple.pencilkit", "ToolPicker");
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              selfCopy7 = self;
              _os_log_impl(&dword_1C7CCA000, v45, OS_LOG_TYPE_DEFAULT, "%p disable tap interaction", buf, 0xCu);
            }

            [(PKToolPicker *)self _disableTapInteractionWhenNotVisible];
            goto LABEL_32;
          }
        }

        else
        {
        }

        _paletteViewDelegateProxy = [responderCopy pencilKitResponderState];
        if ([_paletteViewDelegateProxy _currentToolPickerVisibility] != 2)
        {
          goto LABEL_31;
        }

        _isPencilInteractionEnabledWhenNotVisible2 = [(PKToolPicker *)self _isPencilInteractionEnabledWhenNotVisible];

        if (!_isPencilInteractionEnabledWhenNotVisible2)
        {
          v60 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy7 = self;
            _os_log_impl(&dword_1C7CCA000, v60, OS_LOG_TYPE_DEFAULT, "%p enable tap interaction", buf, 0xCu);
          }

          _paletteViewDelegateProxy = [responderCopy _responderWindow];
          paletteView = [(PKToolPicker *)self _interaction];
          [(PKToolPicker *)self _enableTapInteractionForWindow:_paletteViewDelegateProxy createPaletteView:paletteView == 0];
          goto LABEL_30;
        }
      }
    }

LABEL_32:
    _interaction = [(PKToolPicker *)self _interaction];

    if (v30 == _interaction)
    {
      paletteView2 = [v30 paletteView];
      [paletteView2 updateUndoRedo];

      v16[2](v16);
LABEL_63:

      goto LABEL_64;
    }

    v69 = notifyCopy;
    windowScene3 = [windowCopy windowScene];
    if (!windowScene3)
    {
      _interaction2 = [(PKToolPicker *)self _interaction];
      view = [_interaction2 view];
      window = [view window];
      windowScene4 = [window windowScene];

      if (!windowScene4)
      {
        v67 = 0;
        v65 = 0;
        v39 = 1;
        if (v30)
        {
          goto LABEL_37;
        }

        goto LABEL_47;
      }

      windowScene3 = windowScene4;
    }

    v82 = @"PKToolPickerNotificationWindowSceneUserInfoKey";
    v83 = windowScene3;
    v65 = windowScene3;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v39 = 0;
    if (v30)
    {
LABEL_37:
      hostingWindow = [v30 hostingWindow];
      firstResponder = [hostingWindow firstResponder];
      goto LABEL_48;
    }

LABEL_47:
    hostingWindow = [(PKToolPicker *)self _interaction];
    v40HostingWindow = [hostingWindow hostingWindow];
    firstResponder = [v40HostingWindow firstResponder];

LABEL_48:
    v48 = v69 && [(PKToolPicker *)self _visibilityUpdatesEnabled];
    v64 = v48;
    if (v30)
    {
      [(PKToolPicker *)self _setInteraction:v30];
      [(PKToolPicker *)self set_wasVisibleBeforeResponderChanges:1];
      v49 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        _pkDebugStringRepresentation = [firstResponder _pkDebugStringRepresentation];
        *buf = 134218498;
        selfCopy7 = self;
        v86 = 2112;
        *v87 = _pkDebugStringRepresentation;
        *&v87[8] = 1024;
        v88[0] = v69;
        _os_log_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, interaction should show palette, currentFirstResponder: %@, notify: %{BOOL}d", buf, 0x1Cu);
      }

      [(PKToolPicker *)self set_toolPickerVisible:1];
      if (v64)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"PKToolPickerWillShowNotification" object:self userInfo:v67];

        self->__animatingToVisible = 1;
        [(PKToolPicker *)self _notifyVisibilityDidChangeIsAnimationFinished:0];
      }

      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke_79;
      v75[3] = &unk_1E82D6F98;
      v75[4] = self;
      v78 = v64;
      v52 = v67;
      v76 = v67;
      v79 = v69;
      v77 = v16;
      [v30 showPaletteViewAnimated:v66 completion:v75];

      v53 = v76;
    }

    else
    {
      if ((v39 & 1) != 0 || (-[PKToolPicker _interaction](self, "_interaction"), v54 = objc_claimAutoreleasedReturnValue(), [v54 paletteView], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "delegate"), v56 = objc_claimAutoreleasedReturnValue(), -[PKToolPicker _paletteViewDelegateProxy](self, "_paletteViewDelegateProxy"), v57 = objc_claimAutoreleasedReturnValue(), v57, v56, v55, v54, v56 != v57))
      {
        v52 = v67;
        if (!windowCopy)
        {
          [(PKToolPicker *)self set_toolPickerVisible:0];
          _selectionContext = [(PKToolPicker *)self _selectionContext];
          [_selectionContext setSelectionMask:0];

          v16[2](v16);
        }

        goto LABEL_62;
      }

      v61 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        _pkDebugStringRepresentation2 = [firstResponder _pkDebugStringRepresentation];
        *buf = 134218498;
        selfCopy7 = self;
        v86 = 2112;
        *v87 = _pkDebugStringRepresentation2;
        *&v87[8] = 1024;
        v88[0] = v69;
        _os_log_impl(&dword_1C7CCA000, v61, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, interaction should hide palette, currentFirstResponder: %@, notify: %{BOOL}d", buf, 0x1Cu);
      }

      [(PKToolPicker *)self set_toolPickerVisible:0];
      v52 = v67;
      if (v64)
      {
        [(PKToolPicker *)self _notifyVisibilityDidChangeIsAnimationFinished:0];
      }

      _interaction3 = [(PKToolPicker *)self _interaction];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke_80;
      v70[3] = &unk_1E82D6F98;
      v70[4] = self;
      v73 = v64;
      v71 = v67;
      v74 = v69;
      v72 = v16;
      [_interaction3 hidePaletteViewAnimated:v66 completion:v70];

      v53 = v71;
    }

LABEL_62:
    [(PKToolPicker *)self _setInteraction:v30];

    goto LABEL_63;
  }

  v17 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
  }

LABEL_64:
}

uint64_t __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke_79(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 100) = 0;
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _notifyVisibilityDidChangeIsAnimationFinished:1];
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"PKToolPickerDidShowNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
  }

  v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 57);
    v7 = 134218240;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, interaction did show palette, notify: %{BOOL}d", &v7, 0x12u);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke_80(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _selectionContext];
  [v2 setSelectionMask:0];

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _notifyVisibilityDidChangeIsAnimationFinished:1];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"PKToolPickerDidHideNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
  }

  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 57);
    v8 = 134218240;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, interaction did hide palette, notify: %{BOOL}d", &v8, 0x12u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_notifyVisibilityDidChangeIsAnimationFinished:(BOOL)finished
{
  finishedCopy = finished;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _observers = [(PKToolPicker *)self _observers];
  v6 = [_observers copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 _toolPickerVisibilityDidChange:self isAnimationFinished:finishedCopy];
        }

        else if (!finishedCopy && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v11 toolPickerVisibilityDidChange:self];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_setInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (self->__interaction != interactionCopy)
  {
    v9 = interactionCopy;
    objc_storeStrong(&self->__interaction, interaction);
    if (self->__interaction)
    {
      [(PKToolPicker *)self _restoreToolPickerStateNotify:1];
      interaction = self->__interaction;
    }

    else
    {
      interaction = 0;
    }

    hostingWindow = [(PKPaletteViewInteraction *)interaction hostingWindow];
    rootViewController = [hostingWindow rootViewController];
    [(PKToolPicker *)self _setPresentationController:rootViewController];

    interactionCopy = v9;
  }
}

- (void)_updateUIOnUpdateLink:(BOOL)link
{
  linkCopy = link;
  v10 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = linkCopy;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "PKToolPicker._updateUIOnUpdateLink: %d", v9, 8u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PKToolPicker *)self _updateHandwritingToolInstallation];
    [(PKToolPicker *)self _updateGenerationToolInstallation];
    v6 = [(PKTool *)self->_selectedTool ink];
    if ([v6 _isHandwritingInk])
    {
      rulerActive = self->_rulerActive;

      if (rulerActive)
      {
        [(PKToolPicker *)self setRulerActive:0];
      }
    }

    else
    {
    }

    if (self->_rulerActive && ![(PKToolPicker *)self _showsRuler])
    {
      [(PKToolPicker *)self setRulerActive:0];
    }

    _paletteView = [(PKToolPicker *)self _paletteView];
    [(PKToolPicker *)self _updatePaletteView:_paletteView onUpdateLink:linkCopy];
  }

  else
  {
    _paletteView = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(_paletteView, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_fault_impl(&dword_1C7CCA000, _paletteView, OS_LOG_TYPE_FAULT, "This should only be called from the main thread!", v9, 2u);
    }
  }
}

- (void)_updateGenerationToolInstallation
{
  v18 = *MEMORY[0x1E69E9840];
  shouldAddMagicWand = [(PKImageGenerationController *)self->_imageGenerationController shouldAddMagicWand];
  _hasGenerationTool = [(PKToolPicker *)self _hasGenerationTool];
  if (shouldAddMagicWand && !_hasGenerationTool)
  {
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Install generation tool", v13, 2u);
    }

    v6 = objc_alloc_init(PKGenerationTool);
    [(PKToolPicker *)self _insertTool:v6 atIndex:[(PKToolPicker *)self _numberOfToolsAfterRuler]];
LABEL_6:

    return;
  }

  if (!shouldAddMagicWand && _hasGenerationTool)
  {
    _indexOfGenerationTool = [(PKToolPicker *)self _indexOfGenerationTool];
    if (_indexOfGenerationTool != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = _indexOfGenerationTool;
      v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        isGenerationToolEnabled = [(PKImageGenerationController *)self->_imageGenerationController isGenerationToolEnabled];
        isImageGenerationAllowed = [(PKImageGenerationController *)self->_imageGenerationController isImageGenerationAllowed];
        isGenerationModelAvailable = [(PKImageGenerationController *)self->_imageGenerationController isGenerationModelAvailable];
        v13[0] = 67109632;
        v13[1] = isGenerationToolEnabled;
        v14 = 1024;
        v15 = isImageGenerationAllowed;
        v16 = 1024;
        v17 = isGenerationModelAvailable;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Remove generation tool, isGenerationToolEnabled: %{BOOL}d, isImageGenerationAllowed: %{BOOL}d, isGenerationModelAvailable: %{BOOL}d", v13, 0x14u);
      }

      v6 = [(NSMutableArray *)self->_mutableTools objectAtIndex:v8];
      [(PKToolPicker *)self _removeTool:v6 updateUI:0];
      goto LABEL_6;
    }
  }
}

- (void)_updateHandwritingToolInstallation
{
  if (self->__showsHandwritingTool)
  {
    _canShowHandwritingTool = [objc_opt_class() _canShowHandwritingTool];
  }

  else
  {
    _canShowHandwritingTool = 0;
  }

  _hasHandwritingTool = [(PKToolPicker *)self _hasHandwritingTool];
  v5 = !_hasHandwritingTool;
  if (_canShowHandwritingTool & 1) != 0 || (v5)
  {
    if ((_canShowHandwritingTool ^ 1 | _hasHandwritingTool))
    {
      if (((_canShowHandwritingTool ^ 1 | v5) & 1) == 0)
      {
        v6 = +[PKTextInputSettings sharedSettings];
        recognitionLocaleIdentifier = [v6 recognitionLocaleIdentifier];

        _handwritingTool = [(PKToolPicker *)self _handwritingTool];
        localeIdentifier = [_handwritingTool localeIdentifier];
        v9 = [localeIdentifier isEqualToString:recognitionLocaleIdentifier];

        if ((v9 & 1) == 0)
        {
          [(PKToolPicker *)self _removeHandwritingTool];
          [(PKToolPicker *)self _insertHandwritingTool];
        }
      }
    }

    else
    {

      [(PKToolPicker *)self _insertHandwritingTool];
    }
  }

  else
  {

    [(PKToolPicker *)self _removeHandwritingTool];
  }
}

- (void)_insertHandwritingTool
{
  v3 = +[PKTextInputSettings sharedSettings];
  recognitionLocaleIdentifier = [v3 recognitionLocaleIdentifier];

  v4 = [[PKHandwritingTool alloc] initWithLocaleIdentifier:recognitionLocaleIdentifier];
  [(PKToolPicker *)self _insertTool:v4 atIndex:self->_indexForHandwritingTool updateUI:0];
}

- (void)_removeHandwritingTool
{
  v3 = [(NSMutableArray *)self->_mutableTools indexesOfObjectsPassingTest:&__block_literal_global_90];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PKToolPicker__removeHandwritingTool__block_invoke_2;
  v4[3] = &unk_1E82D6F48;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
}

uint64_t __38__PKToolPicker__removeHandwritingTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isHandwritingInk];

  return v3;
}

void __38__PKToolPicker__removeHandwritingTool__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  [*(a1 + 32) _removeTool:v3 updateUI:0];
}

- (void)_updatePaletteView:(id)view onUpdateLink:(BOOL)link
{
  linkCopy = link;
  viewCopy = view;
  if (viewCopy)
  {
    _paletteHostView = [(PKToolPicker *)self _paletteHostView];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__PKToolPicker__updatePaletteView_onUpdateLink___block_invoke;
    v15 = &unk_1E82D6FC0;
    objc_copyWeak(&v18, &location);
    v8 = viewCopy;
    v16 = v8;
    v9 = _paletteHostView;
    v17 = v9;
    v10 = _Block_copy(&v12);
    v11 = v10;
    if (linkCopy)
    {
      [v8 performOnUpdateLink:{v10, v12, v13, v14, v15, v16}];
    }

    else
    {
      (*(v10 + 2))(v10);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __48__PKToolPicker__updatePaletteView_onUpdateLink___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] updateUndoRedo];
    [a1[4] _setShouldTrackHoverLocationForPencilTapActions:{objc_msgSend(WeakRetained, "_shouldTrackHoverLocationForPencilTapActions")}];
    [a1[4] setShouldAlwaysShowAutoRefineControls:{objc_msgSend(WeakRetained, "_shouldAlwaysShowAutoRefineControls")}];
    v3 = [WeakRetained _paletteAccessibilityIdentifier];
    [a1[4] setAccessibilityIdentifier:v3];

    [a1[4] setPencilInteractionEnabledWhenNotVisible:{objc_msgSend(WeakRetained, "_isPencilInteractionEnabledWhenNotVisible")}];
    [a1[4] setColorUserInterfaceStyle:{objc_msgSend(WeakRetained, "colorUserInterfaceStyle")}];
    [a1[4] setOverrideUserInterfaceStyle:{objc_msgSend(WeakRetained, "overrideUserInterfaceStyle")}];
    [a1[4] setShouldHideHoverPreviewToggle:{objc_msgSend(WeakRetained, "_shouldHideHoverPreviewToggle")}];
    [a1[4] setFingerDrawsOptionEnabled:{objc_msgSend(WeakRetained, "showsDrawingPolicyControls")}];
    [a1[4] setWantsClearBackgroundColorInCompactSize:{objc_msgSend(WeakRetained, "_wantsClearBackgroundColorInCompactSize")}];
    [a1[4] setWantsUndoRedoButtonsVisibleInCompactSize:{objc_msgSend(WeakRetained, "_wantsUndoRedoButtonsVisibleInCompactSize")}];
    [a1[4] setWantsEllipsisButtonVisibleInCompactSize:{objc_msgSend(WeakRetained, "_wantsEllipsisButtonVisibleInCompactSize")}];
    [a1[4] setWantsBottomLineDividerVisibleInCompactSize:{objc_msgSend(WeakRetained, "_wantsBottomLineDividerVisibleInCompactSize")}];
    [a1[4] setIgnoresSafeAreaInsetsInCompactSize:{objc_msgSend(WeakRetained, "_ignoresSafeAreaInsetsInCompactSize")}];
    [WeakRetained _edgeInsetsInCompactSize];
    [a1[4] setEdgeInsetsInCompactSize:?];
    [a1[4] setUseEqualSpacingLayoutInCompactSize:{objc_msgSend(WeakRetained, "_useEqualSpacingLayoutInCompactSize")}];
    v4 = [WeakRetained _tools];
    [a1[4] setTools:v4];

    [WeakRetained _interItemToolsSpacingInCompactSize];
    [a1[4] setInterItemToolsSpacingInCompactSize:?];
    [WeakRetained _interItemUndoRedoButtonsSpacingInCompactSize];
    [a1[4] setInterItemUndoRedoButtonsSpacingInCompactSize:?];
    [a1[4] setWantsUndoRedoButtonsShadowInCompactSize:{objc_msgSend(WeakRetained, "_wantsUndoRedoButtonsVisibleInCompactSize")}];
    [a1[4] setWantsMulticolorSwatchShadowInCompactSize:{objc_msgSend(WeakRetained, "_wantsUndoRedoButtonsVisibleInCompactSize")}];
    v5 = [WeakRetained _indexOfTool:WeakRetained[16]];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v26 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_FAULT, "_selectedTool must be in the tool picker's array of tools.", v26, 2u);
      }
    }

    [a1[4] selectToolAtIndex:v5];
    v7 = [WeakRetained _selectionContext];
    [a1[4] setEditingStrokeSelection:{objc_msgSend(v7, "selectionMask") & 1}];

    v8 = [WeakRetained _selectionContext];
    [a1[4] setEditingTextSelection:{(objc_msgSend(v8, "selectionMask") >> 1) & 1}];

    v9 = [WeakRetained _selectionContext];
    [a1[4] setEditingExternalElementsSelection:{(objc_msgSend(v9, "selectionMask") >> 2) & 1}];

    if ([WeakRetained _isLassoToolEditingViewVisible])
    {
      v10 = [WeakRetained[16] _configuration];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 20);
      }

      else
      {
        v12 = 0;
      }

      [a1[4] setShowsLassoToolEditingView:v12 & 1];
    }

    else
    {
      [a1[4] setShowsLassoToolEditingView:0];
    }

    [a1[4] setLassoToolEditingViewIdentifier:WeakRetained[3]];
    v13 = [WeakRetained _selectionContext];
    [a1[4] setColorSwatchesVisible:{objc_msgSend(v13, "colorSwatchesVisible")}];

    v14 = [WeakRetained _selectionContext];
    [a1[4] setPrefersLargeContextualEditingUI:{objc_msgSend(v14, "prefersLargeContextualEditingUI")}];

    if (_UISolariumEnabled() && ([a1[4] window], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "windowScene"), v16 = objc_claimAutoreleasedReturnValue(), v17 = PKIsQuickNoteWindowScene(v16), v16, v15, (v17 & 1) != 0))
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v18 = WeakRetained[8] != 0;
    }

    [a1[4] setShowsPlusButton:v18];
    v20 = [WeakRetained _annotationDelegate];
    if ((v19 & 1) != 0 || v20)
    {
    }

    else if (WeakRetained[8])
    {
      [a1[4] _setPlusButton:?];
    }

    v21 = [WeakRetained _plusButtonViewController];
    [a1[4] setPlusButtonViewController:v21];

    [a1[4] setCloseButtonVisible:{objc_msgSend(WeakRetained, "_closeButtonVisible")}];
    [WeakRetained colorMaximumLinearExposure];
    [a1[4] setColorMaximumLinearExposure:?];
    [a1[4] setShowsTextButton:{objc_msgSend(WeakRetained, "_showsTextButton")}];
    v22 = [WeakRetained _textButtonViewController];
    [a1[4] setTextButtonViewController:v22];

    [a1[4] setShowsShapeButton:{objc_msgSend(WeakRetained, "_showsShapeButton")}];
    v23 = [WeakRetained _shapeButtonViewController];
    [a1[4] setShapeButtonViewController:v23];

    v24 = [WeakRetained _presentationController];
    [a1[4] setPresentationController:v24];

    v25 = [WeakRetained _annotationDelegate];
    [a1[4] setAnnotationDelegate:v25];

    [a1[4] setShadowVisible:{objc_msgSend(WeakRetained, "_shadowVisible")}];
    [WeakRetained _directionalLayoutMargins];
    [a1[5] setDirectionalLayoutMargins:?];
    [a1[5] setInsetsLayoutMarginsFromSafeArea:0];
  }
}

- (id)_paletteAccessibilityIdentifier
{
  v3 = @"Drawing-Palette";
  if ([(PKToolPicker *)self _wantsUndoRedoButtonsVisibleInCompactSize]&& ![(PKToolPicker *)self _showsRuler])
  {
    v3 = @"ScrapPaper-Drawing-Palette";
  }

  return v3;
}

uint64_t __35__PKToolPicker__hasHandwritingTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isHandwritingInk];

  return v3;
}

uint64_t __30__PKToolPicker__hasEraserTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isEraserInk];

  return v3;
}

uint64_t __34__PKToolPicker__hasGenerationTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isGenerationTool];

  return v3;
}

- (BOOL)_hasToolPassingTest:(id)test
{
  testCopy = test;
  mutableTools = self->_mutableTools;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PKToolPicker__hasToolPassingTest___block_invoke;
  v8[3] = &unk_1E82D6FE8;
  v9 = testCopy;
  v6 = testCopy;
  LOBYTE(mutableTools) = [(NSMutableArray *)mutableTools indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;

  return mutableTools;
}

uint64_t __38__PKToolPicker__indexOfGenerationTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isGenerationTool];

  return v3;
}

- (unint64_t)_indexOfToolPassingTest:(id)test
{
  testCopy = test;
  mutableTools = self->_mutableTools;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PKToolPicker__indexOfToolPassingTest___block_invoke;
  v9[3] = &unk_1E82D6FE8;
  v10 = testCopy;
  v6 = testCopy;
  v7 = [(NSMutableArray *)mutableTools indexOfObjectPassingTest:v9];

  return v7;
}

- (int64_t)_palettePosition
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  if (_paletteView)
  {
    _paletteView2 = [(PKToolPicker *)self _paletteView];
    palettePosition = [_paletteView2 palettePosition];
  }

  else
  {
    palettePosition = 0;
  }

  return palettePosition;
}

- (void)_setPresentationController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->__presentationController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__presentationController, obj);
    [(PKToolPicker *)self _updateUI];
    v5 = obj;
  }
}

- (void)_setAnnotationDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->__annotationDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__annotationDelegate, obj);
    [(PKToolPicker *)self _updateUI];
    v5 = obj;
  }
}

- (void)_setShadowVisible:(BOOL)visible
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__shadowVisible != visible)
  {
    self->__shadowVisible = visible;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      shadowVisible = self->__shadowVisible;
      v6[0] = 67109120;
      v6[1] = shadowVisible;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "shadow visibility state did change: %{BOOL}d", v6, 8u);
    }

    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setBackgroundVisible:(BOOL)visible
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__backgroundVisible != visible)
  {
    self->__backgroundVisible = visible;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backgroundVisible = self->__backgroundVisible;
      v6[0] = 67109120;
      v6[1] = backgroundVisible;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "background visibility state did change: %{BOOL}d", v6, 8u);
    }

    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setWantsClearBackgroundColorInCompactSize:(BOOL)size
{
  if (self->__wantsClearBackgroundColorInCompactSize != size)
  {
    self->__wantsClearBackgroundColorInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)size
{
  if (self->__wantsUndoRedoButtonsVisibleInCompactSize != size)
  {
    self->__wantsUndoRedoButtonsVisibleInCompactSize = size;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setStateAutosaveName:(NSString *)stateAutosaveName
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = stateAutosaveName;
  v5 = self->_stateAutosaveName;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6 && v5)
    {
      v8 = [(NSString *)v5 isEqualToString:v6];

      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v9 = [(NSString *)v7 copy];
    v10 = self->_stateAutosaveName;
    self->_stateAutosaveName = v9;

    v11 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_stateAutosaveName;
      v13 = 138477827;
      v14 = v12;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Did change state autosave name to: %{private}@", &v13, 0xCu);
    }

    if ([(PKToolPicker *)self _useNewAutosaveNameBehavior]&& !self->_stateAutosaveName)
    {
      [(PKToolPicker *)self _restoreToolPickerStateFromRepresentation:self->_originalToolPickerStateRepresentation notify:1];
    }

    else
    {
      [(PKToolPicker *)self _restoreToolPickerStateNotify:1];
    }
  }

LABEL_13:
}

- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle
{
  if (self->_overrideUserInterfaceStyle != overrideUserInterfaceStyle)
  {
    self->_overrideUserInterfaceStyle = overrideUserInterfaceStyle;
    [(PKToolPicker *)self _updateUI];

    [(PKToolPicker *)self _updateUserInterfaceStyle];
  }
}

- (void)setColorUserInterfaceStyle:(UIUserInterfaceStyle)colorUserInterfaceStyle
{
  if (self->_colorUserInterfaceStyle != colorUserInterfaceStyle)
  {
    self->_colorUserInterfaceStyle = colorUserInterfaceStyle;
    [(PKToolPicker *)self _updateUI];

    [(PKToolPicker *)self _updateUserInterfaceStyle];
  }
}

- (void)setShowsDrawingPolicyControls:(BOOL)showsDrawingPolicyControls
{
  if (self->_showsDrawingPolicyControls != showsDrawingPolicyControls)
  {
    self->_showsDrawingPolicyControls = showsDrawingPolicyControls;
    [(PKToolPicker *)self _updateUI];
  }
}

- (CGRect)frameObscuredInView:(UIView *)view
{
  v4 = view;
  if (v4 && (-[PKToolPicker _paletteView](self, "_paletteView"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[PKToolPicker _paletteView](self, "_paletteView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 _pk_useCompactLayout], v7, v6, (v8 & 1) != 0))
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    _paletteView2 = [(PKToolPicker *)self _paletteView];
    [_paletteView2 bounds];
    [_paletteView convertRect:v4 toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(UIView *)v4 bounds];
    v34.origin.x = v19;
    v34.origin.y = v20;
    v34.size.width = v21;
    v34.size.height = v22;
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    v32 = CGRectIntersection(v31, v34);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGSize)_contentSize
{
  if (-[PKToolPicker isVisible](self, "isVisible") && (-[PKToolPicker _paletteView](self, "_paletteView"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _pk_useCompactLayout], v3, !v4))
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    palettePosition = [_paletteView palettePosition];
    if ((palettePosition - 1) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1C801C3A0[palettePosition - 1];
    }

    _paletteView2 = [(PKToolPicker *)self _paletteView];
    [_paletteView2 paletteSizeForEdge:v9];
    v5 = v11;
    v6 = v12;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v5;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_enableTapInteractionForWindow:(id)window
{
  windowCopy = window;
  [(PKToolPicker *)self _enableTapInteractionForWindow:windowCopy createPaletteView:0];
  v5 = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "Delay creating palette view", location, 2u);
  }

  objc_initWeak(location, self);
  v6 = dispatch_time(0, 1000000000);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKToolPicker__enableTapInteractionForWindow___block_invoke;
  v8[3] = &unk_1E82D7010;
  v9 = windowCopy;
  v7 = windowCopy;
  objc_copyWeak(&v10, location);
  dispatch_after(v6, MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(location);
}

void __47__PKToolPicker__enableTapInteractionForWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) windowScene];
  v3 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:v2];

  WeakRetained = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, WeakRetained, OS_LOG_TYPE_DEBUG, "Palette view already created", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7CCA000, WeakRetained, OS_LOG_TYPE_DEBUG, "Actually create palette view", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _createPaletteViewIfNecessaryInWindow:*(a1 + 32)];
  }
}

- (void)_createPaletteViewIfNecessaryInWindow:(id)window
{
  if (self)
  {
    [(PKToolPicker *)self _setVisibleInWindow:window forFirstResponder:0 animated:0 notify:0 completion:0];

    [(PKToolPicker *)self _setVisibleInWindow:0 forFirstResponder:0 animated:0 notify:0 completion:0];
  }
}

- (void)_enableTapInteractionForWindow:(id)window createPaletteView:(BOOL)view
{
  viewCopy = view;
  v13 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (windowCopy)
  {
    if (!PKIsVisionDevice())
    {
      v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134218240;
        v10 = windowCopy;
        v11 = 1024;
        v12 = viewCopy;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Enable tap interaction for window: %p, createPaletteView: %{BOOL}d", &v9, 0x12u);
      }

      [(PKToolPicker *)self set_pencilInteractionEnabledWhenNotVisible:1];
      if (viewCopy)
      {
        [(PKToolPicker *)self _createPaletteViewIfNecessaryInWindow:windowCopy];
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_INFO, "Unable to enable tap interaction for nil window", &v9, 2u);
    }
  }
}

- (void)_disableTapInteractionWhenNotVisible
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [PKToolPicker _windowForToolPicker:self];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Disable tap interaction for window: %p", &v5, 0xCu);
  }

  [(PKToolPicker *)self set_pencilInteractionEnabledWhenNotVisible:0];
}

+ (id)activeToolPickerForWindow:(id)window
{
  v16 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [_allToolPickers copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      toolPicker = [*(*(&v11 + 1) + 8 * v8) toolPicker];
      if ([toolPicker _isActiveToolPickerForWindow:windowCopy])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    toolPicker = 0;
  }

  return toolPicker;
}

+ (id)_existingToolPickerForWindow:(id)window
{
  v20 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [_allToolPickers copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        toolPicker = [*(*(&v15 + 1) + 8 * i) toolPicker];
        if ([toolPicker _isActiveToolPickerForWindow:windowCopy])
        {
          v12 = toolPicker;
LABEL_16:

          goto LABEL_17;
        }

        if (windowCopy)
        {
          v11 = [self existingPaletteViewForWindow:windowCopy];
          if (v11 && ([toolPicker _hasResponderRegisteredForWindow:windowCopy] & 1) != 0)
          {
            v13 = toolPicker;

            goto LABEL_16;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  toolPicker = 0;
LABEL_17:

  return toolPicker;
}

- (BOOL)_isActiveToolPickerForWindow:(id)window
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  if (windowScene)
  {
    toolPickerVisibility = self->_toolPickerVisibility;
    if (toolPickerVisibility)
    {
      v7 = [(PKToolPickerVisibilityProtocol *)toolPickerVisibility isActiveToolPickerForWindow:windowCopy];
    }

    else
    {
      v8 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:windowScene];
      if (v8)
      {
        _interaction = [(PKToolPicker *)self _interaction];
        v7 = _interaction == v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)existingPaletteViewForWindow:(id)window
{
  windowScene = [window windowScene];
  if (windowScene)
  {
    v4 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:windowScene];
    paletteView = [v4 paletteView];
  }

  else
  {
    paletteView = 0;
  }

  return paletteView;
}

+ (BOOL)isActiveToolPickerVisibleForWindow:(id)window
{
  v3 = [self activeToolPickerForWindow:window];
  if ([v3 isVisible])
  {
    _isAnimatingToVisible = 1;
  }

  else
  {
    _isAnimatingToVisible = [v3 _isAnimatingToVisible];
  }

  return _isAnimatingToVisible;
}

+ (PKToolPicker)sharedToolPickerForWindow:(UIWindow *)window
{
  v3 = window;
  windowScene = [(UIWindow *)v3 windowScene];
  if (windowScene)
  {
    v5 = _perCanvasToolPickers;
    if (!_perCanvasToolPickers)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v7 = _perCanvasToolPickers;
      _perCanvasToolPickers = weakToStrongObjectsMapTable;

      v5 = _perCanvasToolPickers;
    }

    v8 = [v5 objectForKey:windowScene];
    if (!v8)
    {
      v9 = [PKPaletteViewInteraction paletteViewInteractionForWindow:v3 windowScene:windowScene];
      if (v9)
      {
        v8 = objc_alloc_init(PKToolPicker);
        [(PKToolPicker *)v8 setStateAutosaveName:@"com.apple.PencilKit.shared"];
        [(PKToolPicker *)v8 _setInteraction:v9];
        [(PKToolPicker *)v8 _updateUI];
        [_perCanvasToolPickers setObject:v8 forKey:windowScene];
        [v9 setDelegate:v8];
      }

      else
      {
        v8 = 0;
      }
    }

    _interaction = [(PKToolPicker *)v8 _interaction];
    paletteView = [_interaction paletteView];
    delegate = [paletteView delegate];

    if (!delegate)
    {
      _paletteViewDelegateProxy = [(PKToolPicker *)v8 _paletteViewDelegateProxy];
      _interaction2 = [(PKToolPicker *)v8 _interaction];
      paletteView2 = [_interaction2 paletteView];
      [paletteView2 setDelegate:_paletteViewDelegateProxy];

      _paletteView = [(PKToolPicker *)v8 _paletteView];
      LOBYTE(_interaction2) = [_paletteView isAnnotationSupportEnabled];

      if ((_interaction2 & 1) == 0)
      {
        [(PKToolPicker *)v8 setColorUserInterfaceStyle:0];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKToolPicker)initWithToolItems:(id)items
{
  v75 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v71.receiver = self;
  v71.super_class = PKToolPicker;
  v5 = [(PKToolPicker *)&v71 init];
  if (v5)
  {
    v6 = [[PKToolPickerItemManager alloc] initWithToolItems:itemsCopy];
    v7 = *(v5 + 7);
    *(v5 + 7) = v6;

    v5[99] = 1;
    v5[122] = 0;
    v5[120] = 1;
    v5[114] = 1;
    *(v5 + 19) = 0x3FF0000000000000;
    v8 = +[PKContentVersionUtility sharedUtility];
    *(v5 + 20) = [(PKContentVersionUtility *)v8 contentVersionForCurrentSDK];

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = *(v5 + 3);
    *(v5 + 3) = uUIDString;

    v5[95] = 1;
    array = [MEMORY[0x1E695DF70] array];
    v13 = *(v5 + 1);
    *(v5 + 1) = array;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = *(v5 + 7);
    if (v14)
    {
      v15 = [*(v14 + 16) copy];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v68;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v68 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v67 + 1) + 8 * i);
          v21 = *(v5 + 1);
          _tool = [v20 _tool];
          [v21 addObject:_tool];

          if (v20)
          {
            [v20[1] addObject:v5];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v17);
    }

    v23 = [*(v5 + 1) indexOfObjectPassingTest:&__block_literal_global_117];
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v5[88] = v23 != 0x7FFFFFFFFFFFFFFFLL;
    *(v5 + 2) = v24;
    v25 = [*(v5 + 1) indexOfObjectPassingTest:{&__block_literal_global_119, v67}];
    v26 = *(v5 + 1);
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      firstObject = [v26 firstObject];
      v28 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v73 = firstObject;
        _os_log_error_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_ERROR, "Unable to find a suitable tool to select by default, select: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      firstObject = [v26 objectAtIndex:?];
    }

    v29 = *(v5 + 16);
    *(v5 + 16) = firstObject;

    _defaultValueForToolStatePersistenceEnabled = [objc_opt_class() _defaultValueForToolStatePersistenceEnabled];
    if ([v5 _useNewAutosaveNameBehavior])
    {
      if (_defaultValueForToolStatePersistenceEnabled)
      {
        v31 = @"PKPaletteNamedDefaults";
      }

      else
      {
        v31 = 0;
      }

      objc_storeStrong(v5 + 17, v31);
    }

    *(v5 + 52) = 257;
    v5[118] = PKIsVisionDevice();
    v5[117] = PKIsVisionDevice();
    v5[119] = PKIsVisionDevice();
    if (PKIsVisionDevice())
    {
      *(v5 + 168) = vdupq_n_s64(1uLL);
    }

    v5[116] = PKIsVisionDevice();
    v5[107] = 0;
    v5[108] = PKIsPadDevice();
    v5[109] = PKIsPadDevice();
    *(v5 + 55) = 1;
    v32 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v5 + 312) = *MEMORY[0x1E69DC5C0];
    *(v5 + 328) = v32;
    *(v5 + 91) = 1;
    *(v5 + 37) = 0x4028000000000000;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v34 = *(v5 + 25);
    *(v5 + 25) = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v36 = *(v5 + 23);
    *(v5 + 23) = weakToStrongObjectsMapTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleFirstResponderDidChangeNotification_ name:*MEMORY[0x1E69DEB18] object:0];

    if (!PKIsVisionDevice())
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v5 selector:sel__handleWindowDidBecomeKeyNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v5 selector:sel__handleHandwritingEducationPaneSettingsDidChange_ name:@"PKHandwritingEducationPaneSettingsDidChangeNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v5 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v5 selector:sel__hasSeenPencilPairingUIDidChange_ name:*MEMORY[0x1E69DEA20] object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v5 selector:sel__textInputResponderDidReloadNotification_ name:*MEMORY[0x1E69DE6E8] object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v5 selector:sel__handleSqueezeInteractionWillShowPaletteViewNotification_ name:@"PKPencilSqueezeInteractionWillShowPaletteViewNotification" object:0];

    v44 = _allToolPickers;
    if (!_allToolPickers)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v46 = _allToolPickers;
      _allToolPickers = array2;

      v44 = _allToolPickers;
    }

    v47 = [v44 indexesOfObjectsPassingTest:&__block_literal_global_138];
    [_allToolPickers removeObjectsAtIndexes:v47];
    v48 = objc_alloc_init(PKToolPickerWeak);
    [(PKToolPickerWeak *)v48 setToolPicker:v5];
    [_allToolPickers addObject:v48];
    _tools = [v5 _tools];
    v50 = [_tools count];
    _paletteView = [v5 _paletteView];
    showsPlusButton = [_paletteView showsPlusButton];
    v53 = 5.0;
    v54 = 2.0;
    if (!showsPlusButton)
    {
      v54 = 5.0;
    }

    if (v50 >= 8)
    {
      v53 = v54;
    }

    *(v5 + 36) = v53;

    v55 = [[PKToolPickerPaletteViewDelegateProxy alloc] initWithToolPicker:v5];
    v56 = *(v5 + 26);
    *(v5 + 26) = v55;

    _toolsState = [v5 _toolsState];
    v58 = *(v5 + 9);
    *(v5 + 9) = _toolsState;

    [v5 _restoreToolPickerStateNotify:0];
    v59 = objc_alloc_init(PKImageGenerationController);
    v60 = *(v5 + 10);
    *(v5 + 10) = v59;

    [*(v5 + 10) setDelegate:v5];
    *(v5 + 43) = 0x4050000000000000;
    __asm { FMOV            V0.2D, #20.0 }

    *(v5 + 22) = _Q0;
    *(v5 + 46) = 0x4034000000000000;
    [v5 _updateUI];
  }

  return v5;
}

uint64_t __34__PKToolPicker_initWithToolItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isHandwritingInk];

  return v3;
}

BOOL __34__PKToolPicker_initWithToolItems___block_invoke_135(uint64_t a1, void *a2)
{
  v2 = [a2 toolPicker];
  v3 = v2 == 0;

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKToolPicker;
  [(PKToolPicker *)&v4 dealloc];
}

- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v14 = *MEMORY[0x1E69E9840];
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__directionalLayoutMargins.top, v3), vceqq_f64(*&self->__directionalLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    top = margins.top;
    leading = margins.leading;
    bottom = margins.bottom;
    trailing = margins.trailing;
    v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15.top = top;
      v15.leading = leading;
      v15.bottom = bottom;
      v15.trailing = trailing;
      v7 = NSStringFromDirectionalEdgeInsets(v15);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "set directional layout margins to %{public}@", buf, 0xCu);
    }

    self->__directionalLayoutMargins.top = top;
    self->__directionalLayoutMargins.leading = leading;
    self->__directionalLayoutMargins.bottom = bottom;
    self->__directionalLayoutMargins.trailing = trailing;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setCloseButtonVisible:(BOOL)visible
{
  if (self->__closeButtonVisible != visible)
  {
    self->__closeButtonVisible = visible;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setColorMaximumLinearExposure:(double)exposure
{
  if (vabdd_f64(self->_colorMaximumLinearExposure, exposure) >= 0.00999999978)
  {
    self->_colorMaximumLinearExposure = exposure;
    [(PKToolPicker *)self _updateUIOnUpdateLink:1];
  }
}

- (void)_handleSqueezeInteractionWillShowPaletteViewNotification:(id)notification
{
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle squeeze interaction will show palette view notification", v6, 2u);
  }

  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _dismissEyeDropper];
}

- (void)setSelectedToolItem:(id)item
{
  identifier = [item identifier];
  [(PKToolPicker *)self setSelectedToolItemIdentifier:identifier];
}

- (void)setSelectedToolItemIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(PKToolPickerItemManager *)self->_toolItemManager toolForIdentifier:identifier];
    if (v4)
    {
      v5 = v4;
      [(PKToolPicker *)self _setSelectedTool:v4 saveState:1 updateUI:1 updateLastSelectedTool:1];
      v4 = v5;
    }
  }
}

- (void)_setEnabled:(BOOL)enabled
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__enabled != enabled)
  {
    self->__enabled = enabled;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      enabled = self->__enabled;
      v6[0] = 67109120;
      v6[1] = enabled;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Tool picker enabled state changed to: %{BOOL}d", v6, 8u);
    }

    [(PKToolPicker *)self _updateToolPickerVisibility];
  }
}

- (void)_setWantsExternalVisibility:(BOOL)visibility
{
  if (!PKIsVisionDevice())
  {
    v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
    }
  }
}

- (void)_lockHiddenNotify:(BOOL)notify
{
  v15 = *MEMORY[0x1E69E9840];
  ++self->_wantsToolPickerHiddenCount;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    wantsToolPickerHiddenCount = self->_wantsToolPickerHiddenCount;
    v9 = 134218496;
    selfCopy = self;
    v11 = 2048;
    v12 = wantsToolPickerHiddenCount;
    v13 = 1024;
    isVisible = [(PKToolPicker *)self isVisible];
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "ToolPicker: %p, locking tool picker visibility hidden, count: %ld, isVisible: %{BOOL}d", &v9, 0x1Cu);
  }

  if ([(PKToolPicker *)self isVisible])
  {
    v7 = objc_alloc_init(PKToolPickerVisibilityContext);
    v8 = v7;
    if (v7)
    {
      v7->_shouldNotifyDuringUpdate = notify;
    }

    [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v7 completion:0];
  }
}

- (void)_unlockHiddenNotify:(BOOL)notify
{
  v18 = *MEMORY[0x1E69E9840];
  wantsToolPickerHiddenCount = self->_wantsToolPickerHiddenCount;
  v4 = wantsToolPickerHiddenCount < 1;
  v5 = wantsToolPickerHiddenCount - 1;
  if (!v4)
  {
    self->_wantsToolPickerHiddenCount = v5;
    v8 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_wantsToolPickerHiddenCount;
      v12 = 134218496;
      selfCopy = self;
      v14 = 2048;
      v15 = v9;
      v16 = 1024;
      isVisible = [(PKToolPicker *)self isVisible];
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_INFO, "ToolPicker: %p, unlocking tool picker visibility hidden, count: %ld, isVisible: %{BOOL}d", &v12, 0x1Cu);
    }

    if (!self->_wantsToolPickerHiddenCount)
    {
      v10 = objc_alloc_init(PKToolPickerVisibilityContext);
      v11 = v10;
      if (v10)
      {
        v10->_shouldNotifyDuringUpdate = notify;
      }

      [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v10 completion:0];
    }
  }
}

- (void)setMaximumSupportedContentVersion:(PKContentVersion)maximumSupportedContentVersion
{
  self->_maximumSupportedContentVersion = maximumSupportedContentVersion;
  _tools = [(PKToolPicker *)self _tools];
  v5 = [_tools count];
  _paletteView = [(PKToolPicker *)self _paletteView];
  showsPlusButton = [_paletteView showsPlusButton];
  v8 = 5.0;
  v9 = 2.0;
  if (!showsPlusButton)
  {
    v9 = 5.0;
  }

  if (v5 >= 8)
  {
    v8 = v9;
  }

  self->__interItemToolsSpacingInCompactSize = v8;

  _tools2 = [(PKToolPicker *)self _tools];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKToolPicker_setMaximumSupportedContentVersion___block_invoke;
  v12[3] = &unk_1E82D7058;
  v12[4] = self;
  v11 = [_tools2 indexesOfObjectsPassingTest:v12];

  [(PKToolPicker *)self _removeToolsAtIndexes:v11];
  [(PKToolPicker *)self _updateUI];
}

BOOL __50__PKToolPicker_setMaximumSupportedContentVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ink];
  v4 = [v3 requiredContentVersion];
  v5 = v4 > [*(a1 + 32) maximumSupportedContentVersion];

  return v5;
}

- (void)_setPresentsDetached:(BOOL)detached
{
  if (!PKIsVisionDevice())
  {
    v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
    }
  }
}

- (void)_setDoneButtonVisible:(BOOL)visible
{
  if (!PKIsVisionDevice())
  {
    v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
    }
  }
}

- (void)_restoreToolPickerStateNotify:(BOOL)notify
{
  notifyCopy = notify;
  v19 = *MEMORY[0x1E69E9840];
  _isToolStatePersistenceEnabled = [(PKToolPicker *)self _isToolStatePersistenceEnabled];
  v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
  standardUserDefaults = v6;
  if (_isToolStatePersistenceEnabled)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _paletteViewStateRestorationDefaultsKey = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
      v17 = 138477827;
      v18 = _paletteViewStateRestorationDefaultsKey;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Restore state for name: %{private}@", &v17, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    _paletteViewStateRestorationDefaultsKey2 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    v11 = [standardUserDefaults dictionaryForKey:_paletteViewStateRestorationDefaultsKey2];

    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"PKPaletteTools"];
      if (v12)
      {
        v13 = v12;
        [(PKToolPicker *)self _restoreToolPickerStateFromRepresentation:v12 notify:notifyCopy];
      }

      else
      {
        v14 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          _paletteViewStateRestorationDefaultsKey3 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
          v17 = 138412290;
          v18 = _paletteViewStateRestorationDefaultsKey3;
          _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Missing tools array to restore state for: %@", &v17, 0xCu);
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _paletteViewStateRestorationDefaultsKey4 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
        v17 = 138412290;
        v18 = _paletteViewStateRestorationDefaultsKey4;
        _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Missing defaults dictionary to restore state for: %@", &v17, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1C7CCA000, standardUserDefaults, OS_LOG_TYPE_DEFAULT, "Tried to restore state but persistence is disabled.", &v17, 2u);
  }
}

- (void)_restoreToolPickerStateFromRepresentation:(id)representation notify:(BOOL)notify
{
  notifyCopy = notify;
  v59 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v45 = [(PKToolPicker *)self _validatedEncodedToolsArray:?];
  v5 = [PKToolPicker _keyEncodedToolsByIdentifier:?];
  toolItems = [(PKToolPicker *)self toolItems];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v51 = self->_selectedTool;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = toolItems;
  v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v53)
  {
    v52 = *v55;
    v48 = array;
    v49 = v5;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v55 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [v5 objectForKeyedSubscript:identifier];

        _tool = [v9 _tool];
        v13 = [_tool ink];
        identifier2 = [v13 identifier];

        if (!v11)
        {
          if ((-[__CFString isEqualToString:](identifier2, "isEqualToString:", @"com.apple.ink.custom") & 1) != 0 || ([v5 objectForKeyedSubscript:identifier2], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = 0;
              goto LABEL_15;
            }

            v16 = @"com.apple.ink.objectEraser";

            v17 = [v5 objectForKeyedSubscript:v16];
            if (v17)
            {
              v11 = v17;
              identifier2 = v16;
              goto LABEL_15;
            }

            identifier2 = @"com.apple.ink.eraser";

            v15 = [v5 objectForKeyedSubscript:identifier2];
          }

          v11 = v15;
        }

LABEL_15:
        _tool2 = [v9 _tool];
        v19 = _tool2;
        if (!v11)
        {
          v23 = _tool2;
          goto LABEL_32;
        }

        v20 = objc_opt_class();
        v21 = [v11 objectForKeyedSubscript:@"properties"];
        v22 = PKDynamicCast(v20, v21);

        v23 = v19;
        if (v22)
        {
          v24 = [v19 ink];
          if (v24)
          {
            v25 = [v19 ink];
            version = [v25 version];
          }

          else
          {
            version = -1;
          }

          v27 = [PKInk inkWithIdentifier:identifier2 properties:v22 inkVersion:version];
          v28 = objc_opt_class();
          v29 = PKDynamicCast(v28, v19);
          if (v29)
          {
            color = [v27 color];
            v31 = [v29 copyWithScrubbedColor:color];

            [v27 weight];
            v23 = [v31 copyWithScrubbedWeight:?];
            _configuration2 = v19;
            goto LABEL_27;
          }

          identifier3 = [v27 identifier];
          v34 = [identifier3 isEqualToString:@"com.apple.ink.custom"];

          v23 = v19;
          if ((v34 & 1) == 0)
          {
            v31 = v27;
            _configuration = [v19 _configuration];
            supportsColor = [_configuration supportsColor];

            if ((supportsColor & 1) == 0)
            {
              v37 = [v19 ink];
              color2 = [v37 color];
              v47 = [PKInk inkFromInk:v31 color:color2];

              v31 = v47;
            }

            _configuration2 = [v19 _configuration];
            v23 = [PKTool _toolWithInk:v31 configuration:_configuration2];

LABEL_27:
          }

          _toolPickerItemIdentifier = [v19 _toolPickerItemIdentifier];
          [v23 _setToolPickerItemIdentifier:_toolPickerItemIdentifier];

          array = v48;
          v5 = v49;
        }

        v40 = [v11 objectForKeyedSubscript:@"isSelected"];
        bOOLValue = [v40 BOOLValue];

        if (bOOLValue)
        {
          v42 = v23;

          v51 = v42;
        }

LABEL_32:
        [array addObject:v23];
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v53);
  }

  [(PKToolPicker *)selfCopy _resetTools:array selectedTool:v51 notify:notifyCopy];
  [(PKToolPicker *)selfCopy _updateUI];
}

+ (id)_keyEncodedToolsByIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = identifierCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = [v10 objectForKeyedSubscript:{@"identifier", v16}];
        v13 = PKDynamicCast(v11, v12);

        if (v13)
        {
          v14 = [dictionary objectForKeyedSubscript:v13];

          if (!v14)
          {
            [dictionary setObject:v10 forKeyedSubscript:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)_validatedEncodedToolsArray:(id)array
{
  v45 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = arrayCopy;
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v5)
    {
      goto LABEL_38;
    }

    v6 = v5;
    v30 = arrayCopy;
    v7 = *v37;
    v8 = v4;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 objectForKeyedSubscript:@"identifier"];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v10 objectForKeyedSubscript:@"properties"];
              if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v21 = objc_opt_class();
                  v32 = NSStringFromClass(v21);
                  _paletteViewStateRestorationDefaultsKey = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
                  *buf = 138543618;
                  v42 = v32;
                  v43 = 2112;
                  v44 = _paletteViewStateRestorationDefaultsKey;
                  v23 = _paletteViewStateRestorationDefaultsKey;
                  _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class for properties dictionary: %{public}@ from: %@", buf, 0x16u);
                }
              }

              else
              {
                v13 = [v10 objectForKeyedSubscript:@"isSelected"];
                if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v15 = os_log_create("com.apple.pencilkit", "ToolPicker");
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    v24 = objc_opt_class();
                    v33 = NSStringFromClass(v24);
                    _paletteViewStateRestorationDefaultsKey2 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
                    *buf = 138543618;
                    v42 = v33;
                    v43 = 2112;
                    v44 = _paletteViewStateRestorationDefaultsKey2;
                    _os_log_error_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class for selected bit: %{public}@ from: %@", buf, 0x16u);
                  }
                }

                else
                {
                  [array addObject:v10];
                }
              }

              goto LABEL_22;
            }

            v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
LABEL_21:
              v12 = v13;
LABEL_22:

              v4 = v8;
              goto LABEL_23;
            }

            v19 = objc_opt_class();
            _paletteViewStateRestorationDefaultsKey4 = NSStringFromClass(v19);
            _paletteViewStateRestorationDefaultsKey3 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
            *buf = 138543618;
            v42 = _paletteViewStateRestorationDefaultsKey4;
            v43 = 2112;
            v44 = _paletteViewStateRestorationDefaultsKey3;
            _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class for identifier: %{public}@ from: %@", buf, 0x16u);
          }

          else
          {
            v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            _paletteViewStateRestorationDefaultsKey4 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
            *buf = 138412290;
            v42 = _paletteViewStateRestorationDefaultsKey4;
            _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary missing identifier from: %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v12 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          _paletteViewStateRestorationDefaultsKey5 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
          *buf = 138543618;
          v42 = v17;
          v43 = 2112;
          v44 = _paletteViewStateRestorationDefaultsKey5;
          _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class: %{public}@ from: %@", buf, 0x16u);

          v4 = v8;
        }

        v11 = v12;
LABEL_23:

        ++v9;
      }

      while (v6 != v9);
      v25 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v6 = v25;
      if (!v25)
      {
        arrayCopy = v30;
        goto LABEL_38;
      }
    }
  }

  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    _paletteViewStateRestorationDefaultsKey6 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    *buf = 138543618;
    v42 = v28;
    v43 = 2112;
    v44 = _paletteViewStateRestorationDefaultsKey6;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Encoded tools array has wrong class: %{public}@ from: %@", buf, 0x16u);
  }

  array = MEMORY[0x1E695E0F0];
LABEL_38:

  return array;
}

- (void)_saveToolPickerState
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PKToolPicker *)self _isToolStatePersistenceEnabled])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    _paletteViewStateRestorationDefaultsKey = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    v5 = [standardUserDefaults dictionaryForKey:_paletteViewStateRestorationDefaultsKey];
    dictionary = [v5 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    _toolsState = [(PKToolPicker *)self _toolsState];
    [dictionary setObject:_toolsState forKey:@"PKPaletteTools"];

    _paletteViewStateRestorationDefaultsKey2 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    [standardUserDefaults setObject:dictionary forKey:_paletteViewStateRestorationDefaultsKey2];

    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _paletteViewStateRestorationDefaultsKey3 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
      v11 = 138477827;
      v12 = _paletteViewStateRestorationDefaultsKey3;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Did save state for name: %{private}@", &v11, 0xCu);
    }
  }

  else
  {
    standardUserDefaults = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(standardUserDefaults, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C7CCA000, standardUserDefaults, OS_LOG_TYPE_DEFAULT, "Tried to save state but persistence is disabled.", &v11, 2u);
    }
  }
}

- (void)keyboardSceneDelegate:(id)delegate inputViewSetVisibilityDidChange:(BOOL)change includedReset:(BOOL)reset
{
  resetCopy = reset;
  changeCopy = change;
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = changeCopy;
    v13 = 1024;
    v14 = resetCopy;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "keyboardSceneDelegate inputViewSetVisibilityDidChange isVisible: %d, includedReset: %d", v12, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_keyboardSceneDelegateVisibilityObserver);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_keyboardSceneDelegateVisibilityObserver);
    [v11 keyboardSceneDelegate:delegateCopy inputViewSetVisibilityDidChange:changeCopy includedReset:resetCopy];
  }
}

- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)change
{
  if ([(PKToolPicker *)self isVisible])
  {
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle handwriting education pane settings did change notification", v6, 2u);
    }

    _paletteView = [(PKToolPicker *)self _paletteView];
    [_paletteView handwritingEducationPaneSettingsDidChange];
  }
}

- (PKPaletteHostView)_paletteHostView
{
  toolPickerVisibility = self->_toolPickerVisibility;
  if (!toolPickerVisibility)
  {
    toolPickerVisibility = self->__interaction;
  }

  paletteHostView = [toolPickerVisibility paletteHostView];

  return paletteHostView;
}

- (void)_updatePaletteTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];

  [(PKToolPicker *)self _updatePaletteUserInterfaceStyle:userInterfaceStyle];
}

- (void)_updatePaletteUserInterfaceStyle:(int64_t)style
{
  [(PKPaletteViewInteraction *)self->__interaction _updatePaletteUserInterfaceStyle:style];

  [(PKToolPicker *)self _updateUserInterfaceStyle];
}

- (void)_updateUserInterfaceStyle
{
  v2 = [PKToolPicker _windowSceneForToolPicker:self];
  if (v2)
  {
    v4 = v2;
    v3 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v2];
    [v3 _updateUserInterfaceStyle];

    v2 = v4;
  }
}

- (BOOL)_internalClassesAcceptingFirstResponderContainsObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)_internalClassWantsToolPicker:(id)picker visibleForResponder:(id)responder
{
  v35 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    v7 = [responderCopy _wantsToolPickerVisible:pickerCopy];
    goto LABEL_35;
  }

  if (![pickerCopy _internalClassesAcceptingFirstResponderContainsObject:responderCopy])
  {
    pencilKitResponderState = [responderCopy pencilKitResponderState];
    _currentActiveToolPicker = [pencilKitResponderState _currentActiveToolPicker];
    v24 = _currentActiveToolPicker;
    if (_currentActiveToolPicker == pickerCopy)
    {
      pencilKitResponderState2 = [responderCopy pencilKitResponderState];
      _currentToolPickerVisibility = [pencilKitResponderState2 _currentToolPickerVisibility];

      if (_currentToolPickerVisibility == 3)
      {
        v7 = 1;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v7 = 0;
    goto LABEL_35;
  }

  v29 = responderCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  _firstRespondersForVisibleUI = [pickerCopy _firstRespondersForVisibleUI];
  keyEnumerator = [_firstRespondersForVisibleUI keyEnumerator];

  v10 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v28 = responderCopy;
  v12 = *v31;
  v13 = v29;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v15 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
          goto LABEL_23;
        }

        view = [v15 view];
      }

      v17 = view;
      if (view)
      {
        window = [view window];
        window2 = [v13 window];
        v20 = window2;
        if (window == window2)
        {
          _wasVisibleBeforeResponderChanges = [pickerCopy _wasVisibleBeforeResponderChanges];

          if (_wasVisibleBeforeResponderChanges)
          {
            v13 = v29;
            if ([v29 isDescendantOfView:v17] & 1) != 0 || (NSClassFromString(&cfstr_Icinktoolpicke.isa), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {

              v7 = 1;
              goto LABEL_29;
            }
          }

          else
          {
            v13 = v29;
          }
        }

        else
        {
        }
      }

LABEL_23:
    }

    v11 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v7 = 0;
LABEL_29:
  responderCopy = v28;
LABEL_31:

LABEL_35:
  return v7;
}

+ (BOOL)_textInputWantsToolPickerVisible:(id)visible forFirstResponder:(id)responder
{
  visibleCopy = visible;
  responderCopy = responder;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v10 = [bundleIdentifier isEqual:@"com.apple.mobilenotes"];

  if (!v10)
  {
    goto LABEL_12;
  }

  _paletteView = [visibleCopy _paletteView];
  windowFirstResponder = [_paletteView windowFirstResponder];

  if (windowFirstResponder)
  {
    _paletteView2 = [visibleCopy _paletteView];
    windowFirstResponder2 = [_paletteView2 windowFirstResponder];
    textInputSource = [windowFirstResponder2 textInputSource];
  }

  else
  {
    textInputSource = [PKTextInputUtilities responderTextInputSource:responderCopy];
  }

  if (textInputSource != 3 || ![visibleCopy _isHandwritingToolSelected])
  {
    [visibleCopy _isHandwritingToolSelected];
LABEL_12:
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

  NSClassFromString(&cfstr_Ictextview.isa);
  v16 = responderCopy;
  if (!v16)
  {
    goto LABEL_15;
  }

  while ((objc_opt_isKindOfClass() & 1) == 0)
  {
    nextResponder = [v16 nextResponder];

    v16 = nextResponder;
    if (!nextResponder)
    {
      goto LABEL_15;
    }
  }

  _responderWindow = [v16 _responderWindow];
  windowScene = [_responderWindow windowScene];
  v22 = [self _windowSceneForToolPicker:visibleCopy];

  if (windowScene == v22)
  {
    findInteraction = [v16 findInteraction];
    v18 = [findInteraction isFindNavigatorVisible] ^ 1;
  }

  else
  {
LABEL_15:
    LOBYTE(v18) = 0;
  }

LABEL_13:
  return v18;
}

- (void)_tellDelegateToHideToolPicker
{
  v3 = [(PKToolPicker *)self _delegateForSelector:sel__toolPicker_shouldSetVisible_];
  if (v3)
  {
    v4 = v3;
    [v3 _toolPicker:self shouldSetVisible:0];
    v3 = v4;
  }
}

- (PKToolPickerPopoverPresentationConfiguring)_popoverPresentationConfiguration
{
  if ([(PKToolPicker *)self isVisible])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_presentViewController:(id)controller asPopoverFromItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _presentViewController:controllerCopy asPopoverFromItem:itemCopy];
}

- (UIViewController)presentationViewController
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  palettePopoverPresentingController = [_paletteView palettePopoverPresentingController];

  return palettePopoverPresentingController;
}

- (NSArray)passthroughViews
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  palettePopoverPassthroughViews = [_paletteView palettePopoverPassthroughViews];

  return palettePopoverPassthroughViews;
}

- (unint64_t)permittedArrowDirections
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  palettePopoverPermittedArrowDirections = [_paletteView palettePopoverPermittedArrowDirections];

  return palettePopoverPermittedArrowDirections;
}

- (UIEdgeInsets)layoutSceneMargins
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView palettePopoverLayoutSceneMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

+ (BOOL)_canShowHandwritingTool
{
  if (PKIsVisionDevice())
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _supportsPencil = [currentDevice _supportsPencil];

  if (!_supportsPencil)
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E69DCD58] hasSeenPencilPairingUI];
  }

  if (os_variant_has_internal_diagnostics())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults BOOLForKey:@"PKForceShowHandwritingTool"];
  }

  if (os_variant_has_internal_diagnostics())
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11 = [bundleIdentifier isEqualToString:@"com.apple.dt.xctest.tool"];

    if (v11)
    {
      return 1;
    }
  }

  v4 = +[PKTextInputSettings sharedSettings];
  recognitionLocaleIdentifier = [v4 recognitionLocaleIdentifier];
  v6 = recognitionLocaleIdentifier != 0;

  return v6;
}

- (void)_setShowsHandwritingTool:(BOOL)tool
{
  toolCopy = tool;
  v13 = *MEMORY[0x1E69E9840];
  if (PKIsVisionDevice())
  {
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Can't show the handwriting tool on this platform.", &v11, 2u);
    }

    self->__showsHandwritingTool = 0;
  }

  else if (self->__showsHandwritingTool != toolCopy)
  {
    self->__showsHandwritingTool = toolCopy;
    if (toolCopy)
    {
      toolCopy = [objc_opt_class() _canShowHandwritingTool];
    }

    _hasHandwritingTool = [(PKToolPicker *)self _hasHandwritingTool];
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      showsHandwritingTool = self->__showsHandwritingTool;
      v11 = 67109120;
      LODWORD(v12) = showsHandwritingTool;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Should show handwriting tool: %d", &v11, 8u);
    }

    if (toolCopy != _hasHandwritingTool)
    {
      v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"HIDDEN";
        if (toolCopy)
        {
          v10 = @"VISIBLE";
        }

        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Handwriting tool state: %@", &v11, 0xCu);
      }

      [(PKToolPicker *)self _updateUI];
      [(PKToolPicker *)self _saveToolPickerState];
    }
  }
}

- (id)_handwritingTool
{
  v3 = [(NSMutableArray *)self->_mutableTools indexOfObjectPassingTest:&__block_literal_global_193];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_mutableTools objectAtIndex:v3];
  }

  return v4;
}

uint64_t __32__PKToolPicker__handwritingTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isHandwritingInk];

  return v3;
}

- (BOOL)_isHandwritingToolSelected
{
  v2 = [(PKTool *)self->_selectedTool ink];
  _isHandwritingInk = [v2 _isHandwritingInk];

  return _isHandwritingInk;
}

- (void)_updateHandwritingInputAssistantItems
{
  _isHandwritingToolSelected = [(PKToolPicker *)self _isHandwritingToolSelected];
  _paletteView = os_log_create("com.apple.pencilkit", "ToolPicker");
  v5 = os_log_type_enabled(_paletteView, OS_LOG_TYPE_DEFAULT);
  if (_isHandwritingToolSelected)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, _paletteView, OS_LOG_TYPE_DEFAULT, "Update handwriting assistant items.", v6, 2u);
    }

    _paletteView = [(PKToolPicker *)self _paletteView];
    [_paletteView updateHandwritingAssistantItems];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, _paletteView, OS_LOG_TYPE_DEFAULT, "Can't update handwriting assistant items if handwriting tool isn't the selected tool.", buf, 2u);
  }
}

- (BOOL)_isCanvasGenerationToolSelected
{
  v2 = [(PKTool *)self->_selectedTool ink];
  _isGenerationTool = [v2 _isGenerationTool];

  return _isGenerationTool;
}

- (void)_textInputResponderDidReloadNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v6, 0xCu);
  }

  [(PKToolPicker *)self _updateHandwritingInputAssistantItems];
}

- (void)_addTool:(id)tool
{
  mutableTools = self->_mutableTools;
  toolCopy = tool;
  [(PKToolPicker *)self _insertTool:toolCopy atIndex:[(NSMutableArray *)mutableTools count]];
}

- (void)_addTool:(id)tool updateUI:(BOOL)i
{
  iCopy = i;
  mutableTools = self->_mutableTools;
  toolCopy = tool;
  [(PKToolPicker *)self _insertTool:toolCopy atIndex:[(NSMutableArray *)mutableTools count] updateUI:iCopy];
}

- (void)_insertTool:(id)tool atIndex:(unint64_t)index updateUI:(BOOL)i
{
  iCopy = i;
  v12 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  if ([(PKToolPicker *)self _canInsertTool:toolCopy])
  {
    [(NSMutableArray *)self->_mutableTools insertObject:toolCopy atIndex:index];
    if (iCopy)
    {
      [(PKToolPicker *)self _updateUI];
    }

    [(PKToolPickerItemManager *)self->_toolItemManager _addTool:toolCopy];
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = toolCopy;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Can't insert tool: %@", &v10, 0xCu);
    }
  }
}

- (BOOL)_canInsertTool:(id)tool
{
  toolCopy = tool;
  _isLassoTool = [toolCopy _isLassoTool];
  _hasLassoTool = [(PKToolPicker *)self _hasLassoTool];
  if (_isLassoTool || ([toolCopy ink], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_isEraserInk"), v7, _hasLassoTool = -[PKToolPicker _hasEraserTool](self, "_hasEraserTool"), v8) || (objc_msgSend(toolCopy, "ink"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_isHandwritingInk"), v9, _hasLassoTool = -[PKToolPicker _hasHandwritingTool](self, "_hasHandwritingTool"), v10))
  {
    v11 = !_hasLassoTool;
  }

  else
  {
    v11 = [(PKToolPicker *)self _indexOfTool:toolCopy]== 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)_removeTool:(id)tool updateUI:(BOOL)i
{
  iCopy = i;
  v10 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  if ([(PKToolPicker *)self _canRemoveTool:toolCopy])
  {
    [(NSMutableArray *)self->_mutableTools removeObjectAtIndex:[(PKToolPicker *)self _indexOfTool:toolCopy]];
    if (iCopy)
    {
      [(PKToolPicker *)self _updateUI];
    }

    [(PKToolPickerItemManager *)self->_toolItemManager _removeTool:toolCopy];
  }

  else
  {
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = toolCopy;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Can't remove tool: %@", &v8, 0xCu);
    }
  }
}

- (void)_removeToolsAtIndexes:(id)indexes updateUI:(BOOL)i
{
  iCopy = i;
  mutableTools = self->_mutableTools;
  indexesCopy = indexes;
  v8 = [(NSMutableArray *)mutableTools copy];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__PKToolPicker__removeToolsAtIndexes_updateUI___block_invoke;
  v14 = &unk_1E82D7080;
  v9 = v8;
  v15 = v9;
  selfCopy = self;
  [indexesCopy enumerateIndexesUsingBlock:&v11];
  v10 = [indexesCopy count];

  if (v10 && iCopy)
  {
    [(PKToolPicker *)self _updateUI];
  }
}

void __47__PKToolPicker__removeToolsAtIndexes_updateUI___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [*(a1 + 40) _removeTool:v3 updateUI:0];
}

- (BOOL)_canRemoveTool:(id)tool
{
  toolCopy = tool;
  if ([(PKToolPicker *)self _indexOfTool:toolCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    _isGenerationTool = 0;
  }

  else if (self->_selectedTool == toolCopy)
  {
    v6 = [(PKTool *)toolCopy ink];
    _isGenerationTool = [v6 _isGenerationTool];
  }

  else
  {
    _isGenerationTool = 1;
  }

  return _isGenerationTool;
}

- (void)_resetTools:(id)tools selectedTool:(id)tool notify:(BOOL)notify
{
  notifyCopy = notify;
  v45 = *MEMORY[0x1E69E9840];
  toolsCopy = tools;
  toolCopy = tool;
  p_selectedTool = &self->_selectedTool;
  v11 = self->_selectedTool;
  if (([(NSMutableArray *)self->_mutableTools isEqual:toolsCopy]& 1) != 0)
  {
    v12 = [(PKToolPicker *)self _indexOfTool:toolCopy tools:toolsCopy];
    mutableTools = self->_mutableTools;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)mutableTools firstObject];
    }

    else
    {
      [(NSMutableArray *)mutableTools objectAtIndex:?];
    }
    v14 = ;
    v32 = *p_selectedTool;
    *p_selectedTool = v14;

LABEL_28:
    if (v11 != *p_selectedTool && notifyCopy)
    {
      v33 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *p_selectedTool;
        *buf = 138412290;
        v44 = v34;
        _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_DEFAULT, "Did reset selected tool to %@", buf, 0xCu);
      }

      [(PKToolPicker *)self _notifySelectedToolDidChange];
    }

    goto LABEL_36;
  }

  if ([(PKToolPicker *)self _canResetToolsFrom:toolsCopy])
  {
    v37 = v11;
    v36 = [(NSMutableArray *)self->_mutableTools copy];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[PKTool count](toolsCopy, "count")}];
    v16 = self->_mutableTools;
    self->_mutableTools = v15;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = toolsCopy;
    v18 = [(PKTool *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          [(PKToolPicker *)self _addTool:v22 updateUI:0];
          v23 = [(PKToolPicker *)self _indexOfTool:v22];
          if (v22 == toolCopy && v23 != 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_storeStrong(&self->_selectedTool, v22);
          }
        }

        v19 = [(PKTool *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v19);
    }

    v11 = v37;
    if (![(NSMutableArray *)self->_mutableTools count])
    {
      v25 = [v36 mutableCopy];
      v26 = self->_mutableTools;
      self->_mutableTools = v25;

      v27 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEFAULT, "Unable to restore tools. Did reset tools to last copy", buf, 2u);
      }
    }

    if ([(PKToolPicker *)self _indexOfTool:self->_selectedTool]== 0x7FFFFFFFFFFFFFFFLL)
    {
      firstObject = [(NSMutableArray *)self->_mutableTools firstObject];
      selectedTool = self->_selectedTool;
      self->_selectedTool = firstObject;

      v30 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *p_selectedTool;
        *buf = 138412290;
        v44 = v31;
        _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "Unable to restore last selected tool. Did reset selected tool to %@", buf, 0xCu);
      }
    }

    goto LABEL_28;
  }

  v35 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = toolsCopy;
    _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "Can't reset tools to: %@", buf, 0xCu);
  }

LABEL_36:
}

- (unint64_t)_indexOfTool:(id)tool tools:(id)tools
{
  toolCopy = tool;
  toolsCopy = tools;
  if ([toolsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [toolsCopy objectAtIndexedSubscript:v7];
      _toolPickerItemIdentifier = [v8 _toolPickerItemIdentifier];
      _toolPickerItemIdentifier2 = [toolCopy _toolPickerItemIdentifier];
      v11 = [_toolPickerItemIdentifier isEqualToString:_toolPickerItemIdentifier2];

      if (v11)
      {
        break;
      }

      if (++v7 >= [toolsCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_performPencilPreferredActionSwitchEraser
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _performPencilPreferredActionSwitchEraser];
}

- (void)_performPencilPreferredActionSwitchPrevious
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _performPencilPreferredActionSwitchPrevious];
}

- (void)_performPencilPreferredActionShowColorPalette
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _performPencilPreferredActionShowColorPalette];
}

- (void)_setSelectionMask:(unint64_t)mask updateUI:(BOOL)i
{
  if (self->_selectionMask != mask)
  {
    self->_selectionMask = mask;
    if (i)
    {
      [(PKToolPicker *)self _updateUI];
    }
  }
}

- (void)setColorSwatchesVisible:(BOOL)visible
{
  if (self->_colorSwatchesVisible != visible)
  {
    self->_colorSwatchesVisible = visible;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setPrefersLargeContextualEditingUI:(BOOL)i
{
  if (self->_prefersLargeContextualEditingUI != i)
  {
    self->_prefersLargeContextualEditingUI = i;
    [(PKToolPicker *)self _updateUI];
  }
}

- (BOOL)_startOpacityEditing
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _observers = [(PKToolPicker *)self _observers];
  v4 = [_observers copy];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v9;

    if (v11)
    {
      _paletteView = [(PKToolPicker *)self _paletteView];
      [_paletteView startOpacityEditing];

      _paletteView2 = [(PKToolPicker *)self _paletteView];
      opacityEditingView = [_paletteView2 opacityEditingView];
      [v11 _toolPicker:self startEditingOpacityWithAccessoryView:opacityEditingView];

      v10 = 1;
      v4 = v11;
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
LABEL_9:
    v10 = 0;
LABEL_12:
  }

  return v10;
}

- (void)_endOpacityEditing
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView endOpacityEditing];
}

- (void)set_temporarySelectionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->__temporarySelectionDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__temporarySelectionDelegate, obj);
    _paletteView = [(PKToolPicker *)self _paletteView];
    [_paletteView updateColorPickerSelectedColor];

    v5 = obj;
  }
}

- (void)_dismissPopovers
{
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView dismissPalettePopoverWithCompletion:0];
}

- (void)_canvasViewWillBeginDrawing:(id)drawing
{
  if (PKIsVisionDevice())
  {

    [(PKToolPicker *)self _dismissPopovers];
  }
}

- (void)_setContextMenuPresented:(BOOL)presented
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__contextMenuPresented != presented)
  {
    self->__contextMenuPresented = presented;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      contextMenuPresented = self->__contextMenuPresented;
      v6[0] = 67109120;
      v6[1] = contextMenuPresented;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Context menu presented state did change: %d", v6, 8u);
    }

    [(PKToolPicker *)self _updateToolPickerVisibilityContextMenuPresentedDidChange:1];
  }
}

- (void)_setOverlapsWindow:(BOOL)window
{
  windowCopy = window;
  if (PKIsVisionDevice() && self->__overlapsMainWindow != windowCopy)
  {
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
    }
  }
}

- (void)_setSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker
{
  picker = [(PKTool *)self->_selectedTool _copyWithColor:color, picker];
  [(PKToolPicker *)self _setSelectedTool:picker saveState:1 updateUI:1 updateLastSelectedTool:0];
}

- (void)_handleDidInvokeAddTextBox
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Handle did invoke add text-box", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [*(selfCopy + 200) copy];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      v7 = "com.apple.pencilkit";
      v8 = "ToolPicker";
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v11 = os_log_create(v7, v8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              PKDebugStringRepresentation(v10);
              v12 = v5;
              v13 = v6;
              v14 = v3;
              v15 = selfCopy;
              v16 = v8;
              v18 = v17 = v7;
              *buf = 138412290;
              v24 = v18;
              _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Invoke add text-box on observer: %@", buf, 0xCu);

              v7 = v17;
              v8 = v16;
              selfCopy = v15;
              v3 = v14;
              v6 = v13;
              v5 = v12;
            }

            [v10 _toolPickerDidInvokeAddTextBox:selfCopy];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v5);
    }
  }
}

- (void)_handleInsertStickerFromItemProvider:(uint64_t)provider
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a2;
  if (provider)
  {
    v2 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v24 = v17;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Handle did invoke insert sticker from item provider: %{private}@", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [*(provider + 200) copy];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      v7 = "com.apple.pencilkit";
      v8 = "ToolPicker";
      do
      {
        v9 = 0;
        v15 = v5;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v11 = os_log_create(v7, v8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              PKDebugStringRepresentation(v10);
              v12 = v8;
              v14 = v13 = v7;
              *buf = 138412290;
              v24 = v14;
              _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Invoke insert sticker on observer: %@", buf, 0xCu);

              v7 = v13;
              v8 = v12;
              v5 = v15;
            }

            [v10 _toolPickerDidInvokeInsertSticker:provider fromItemProvider:v17];
          }

          ++v9;
        }

        while (v5 != v9);
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

- (double)_fullScreenWindowScaleFactor
{
  if (!self)
  {
    return 0.0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = +[PKPaletteView _makeScaleFactorPolicy];
  _paletteView = [self _paletteView];
  [v11 scaleFactorForWindowBounds:_paletteView paletteView:{v4, v6, v8, v10}];
  v14 = v13;

  return v14;
}

- (void)toolPickerItemDidChange:(id)change
{
  changeCopy = change;
  _tool = [changeCopy _tool];
  v5 = [(PKToolPicker *)self _indexOfTool:_tool];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(NSMutableArray *)self->_mutableTools objectAtIndexedSubscript:v5];
    if (([_tool isEqual:v7] & 1) == 0)
    {
      [(PKToolPicker *)self _dismissPopovers];
      mutableTools = self->_mutableTools;
      _tool2 = [changeCopy _tool];
      [(NSMutableArray *)mutableTools replaceObjectAtIndex:v6 withObject:_tool2];

      identifier = [changeCopy identifier];
      _toolPickerItemIdentifier = [(PKTool *)self->_selectedTool _toolPickerItemIdentifier];
      LODWORD(_tool2) = [identifier isEqualToString:_toolPickerItemIdentifier];

      if (_tool2)
      {
        _tool3 = [changeCopy _tool];
        selectedTool = self->_selectedTool;
        self->_selectedTool = _tool3;
      }

      [(PKToolPicker *)self _saveToolPickerState];
      [(PKToolPicker *)self _updateUIOnUpdateLink:1];
    }
  }
}

- (void)toolPickerItemReloadImage:(id)image
{
  imageCopy = image;
  _paletteView = [(PKToolPicker *)self _paletteView];
  [_paletteView _reloadImageForToolItem:imageCopy];
}

- (UIViewController)_presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->__presentationController);

  return WeakRetained;
}

- (PKPaletteViewAnnotationDelegate)_annotationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__annotationDelegate);

  return WeakRetained;
}

- (PKToolPickerPrivateDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

- (PKToolPickerPrivateDelegate)_temporarySelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__temporarySelectionDelegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)_edgeInsetsInCompactSize
{
  top = self->__edgeInsetsInCompactSize.top;
  leading = self->__edgeInsetsInCompactSize.leading;
  bottom = self->__edgeInsetsInCompactSize.bottom;
  trailing = self->__edgeInsetsInCompactSize.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIKeyboardSceneDelegateVisibilityObserver)keyboardSceneDelegateVisibilityObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardSceneDelegateVisibilityObserver);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)_directionalLayoutMargins
{
  top = self->__directionalLayoutMargins.top;
  leading = self->__directionalLayoutMargins.leading;
  bottom = self->__directionalLayoutMargins.bottom;
  trailing = self->__directionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

+ (void)_setPrefersPencilOnlyDrawingForiWork:(BOOL)work
{
  workCopy = work;
  if (PKIsiWork())
  {

    [PKSettingsDaemon setPrefersPencilOnlyDrawing:workCopy];
  }
}

+ (void)_setPrefersHoverPreviewEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  if ((PKIsiWork() & 1) != 0 || ([MEMORY[0x1E696AAE8] mainBundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.freeform"), v7, v6, v8))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKToolPicker_iWorkSPI___setPrefersHoverPreviewEnabled_withCompletion___block_invoke;
    v9[3] = &unk_1E82D6F70;
    v10 = completionCopy;
    [PKSettingsDaemon setPrefersPencilHoverPreviewEnabled:enabledCopy withCompletion:v9];
  }
}

uint64_t __72__PKToolPicker_iWorkSPI___setPrefersHoverPreviewEnabled_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showImageWandTipWithController:(id)controller
{
  controllerCopy = controller;
  if ([(PKToolPicker *)self isVisible])
  {
    _paletteView = [(PKToolPicker *)self _paletteView];
    [_paletteView showImageWandTipWithController:controllerCopy];

    if (([controllerCopy tipStatusIsInvalid] & 1) == 0)
    {
      [controllerCopy setDelegate:self];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Unable to present image wand tip if no tool picker is visible", v7, 2u);
    }
  }
}

- (void)imageWandTipControllerTipStatusDidUpdate:(id)update
{
  v11 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109632;
    v6[1] = [updateCopy tipStatusIsInvalid];
    v7 = 1024;
    tipStatusIsPending = [updateCopy tipStatusIsPending];
    v9 = 1024;
    tipStatusIsAvailable = [updateCopy tipStatusIsAvailable];
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Image Wand Tip status did update, invalid: %{BOOL}d, pending: %{BOOL}d, available: %{BOOL}d", v6, 0x14u);
  }

  if ([updateCopy tipStatusIsInvalid])
  {
    [updateCopy setDelegate:0];
  }

  else
  {
    [(PKToolPicker *)self _showImageWandTipWithController:updateCopy];
  }
}

@end