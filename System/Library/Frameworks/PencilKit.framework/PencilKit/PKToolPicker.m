@interface PKToolPicker
+ (BOOL)_canShowHandwritingTool;
+ (BOOL)_defaultValueForToolStatePersistenceEnabled;
+ (BOOL)_internalClassWantsToolPicker:(id)a3 visibleForResponder:(id)a4;
+ (BOOL)_textInputWantsToolPickerVisible:(id)a3 forFirstResponder:(id)a4;
+ (BOOL)isActiveToolPickerVisibleForWindow:(id)a3;
+ (NSArray)defaultToolItems;
+ (PKToolPicker)sharedToolPickerForWindow:(UIWindow *)window;
+ (id)_existingToolPickerForWindow:(id)a3;
+ (id)_keyEncodedToolsByIdentifier:(id)a3;
+ (id)_toolPickersForWindow:(uint64_t)a3 includeHidden:;
+ (id)_windowForToolPicker:(id)a3;
+ (id)_windowSceneForToolPicker:(id)a3;
+ (id)_windowScenesForToolPicker:(id)a3;
+ (id)activeToolPickerForWindow:(id)a3;
+ (id)existingPaletteViewForWindow:(id)a3;
+ (void)_cycleToolPickersForResponder:(uint64_t)a1;
+ (void)_dockToolPickerForWindowScene:(uint64_t)a3 toAutoHideCornerAnimated:;
+ (void)_performWithVisibilityUpdatesEnabled:(BOOL)a3 window:(id)a4 block:(id)a5;
+ (void)_setCanBecomeVisible:(BOOL)a3;
+ (void)_setPrefersHoverPreviewEnabled:(BOOL)a3 withCompletion:(id)a4;
+ (void)_setPrefersPencilOnlyDrawingForiWork:(BOOL)a3;
+ (void)_updateToolPickerVisibilityForFirstResponder:(id)a3;
- (BOOL)_canInsertTool:(id)a3;
- (BOOL)_canRemoveTool:(id)a3;
- (BOOL)_hasResponderRegisteredForWindow:(id)a3;
- (BOOL)_hasToolPassingTest:(id)a3;
- (BOOL)_interactionIsValid;
- (BOOL)_internalClassesAcceptingFirstResponderContainsObject:(id)a3;
- (BOOL)_isActiveToolPickerForWindow:(id)a3;
- (BOOL)_isCanvasGenerationToolSelected;
- (BOOL)_isHandwritingToolSelected;
- (BOOL)_isToolStatePersistenceEnabled;
- (BOOL)_squeezePaletteVisibleInWindowScene:(id)a3;
- (BOOL)_startOpacityEditing;
- (BOOL)_wantsVisibleForFirstResponder:(id)a3 includeHidden:(BOOL)a4;
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
- (PKToolPicker)initWithToolItems:(id)a3;
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
- (id)_delegateForSelector:(SEL)a3;
- (id)_handwritingTool;
- (id)_paletteAccessibilityIdentifier;
- (id)_validatedEncodedToolsArray:(id)a3;
- (id)_windowScene;
- (int64_t)_numberOfToolsAfterRuler;
- (int64_t)_palettePosition;
- (unint64_t)_edgeForContextualEditingView;
- (unint64_t)_indexOfTool:(id)a3 tools:(id)a4;
- (unint64_t)_indexOfToolPassingTest:(id)a3;
- (unint64_t)permittedArrowDirections;
- (void)_addTool:(id)a3;
- (void)_addTool:(id)a3 updateUI:(BOOL)a4;
- (void)_canvasViewWillBeginDrawing:(id)a3;
- (void)_createPaletteViewIfNecessaryInWindow:(id)a3;
- (void)_disableTapInteractionWhenNotVisible;
- (void)_dismissPopovers;
- (void)_enableTapInteractionForWindow:(id)a3;
- (void)_enableTapInteractionForWindow:(id)a3 createPaletteView:(BOOL)a4;
- (void)_endOpacityEditing;
- (void)_handleDidInvokeAddTextBox;
- (void)_handleFirstResponderDidChangeNotification:(id)a3;
- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)a3;
- (void)_handleInsertStickerFromItemProvider:(uint64_t)a1;
- (void)_handleSqueezeInteractionWillShowPaletteViewNotification:(id)a3;
- (void)_insertHandwritingTool;
- (void)_insertTool:(id)a3 atIndex:(unint64_t)a4 updateUI:(BOOL)a5;
- (void)_lockHiddenNotify:(BOOL)a3;
- (void)_notifyScaleFactorDidChange;
- (void)_notifySelectedToolDidChange;
- (void)_notifyVisibilityDidChangeIsAnimationFinished:(BOOL)a3;
- (void)_performPencilPreferredActionShowColorPalette;
- (void)_performPencilPreferredActionSwitchEraser;
- (void)_performPencilPreferredActionSwitchPrevious;
- (void)_performWithVisibilityUpdatesEnabled:(BOOL)a3 block:(id)a4;
- (void)_presentViewController:(id)a3 asPopoverFromItem:(id)a4;
- (void)_removeHandwritingTool;
- (void)_removeTool:(id)a3 updateUI:(BOOL)a4;
- (void)_removeToolsAtIndexes:(id)a3 updateUI:(BOOL)a4;
- (void)_resetTools:(id)a3 selectedTool:(id)a4 notify:(BOOL)a5;
- (void)_restoreToolPickerStateFromRepresentation:(id)a3 notify:(BOOL)a4;
- (void)_restoreToolPickerStateNotify:(BOOL)a3;
- (void)_saveStateIfNecessary;
- (void)_saveToolPickerState;
- (void)_setAnnotationDelegate:(id)a3;
- (void)_setBackgroundVisible:(BOOL)a3;
- (void)_setCloseButtonVisible:(BOOL)a3;
- (void)_setContextMenuPresented:(BOOL)a3;
- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)_setDoneButtonVisible:(BOOL)a3;
- (void)_setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)a3;
- (void)_setEnabled:(BOOL)a3;
- (void)_setIgnoresSafeAreaInsetsInCompactSize:(BOOL)a3;
- (void)_setInterItemToolsSpacingInCompactSize:(double)a3;
- (void)_setInterItemUndoRedoButtonsSpacingInCompactSize:(double)a3;
- (void)_setInteraction:(id)a3;
- (void)_setLassoToolEditingViewVisible:(BOOL)a3;
- (void)_setNumberOfToolsAfterRuler:(int64_t)a3;
- (void)_setOverlapsWindow:(BOOL)a3;
- (void)_setPlusButtonMenu:(id)a3;
- (void)_setPlusButtonViewController:(id)a3;
- (void)_setPresentationController:(id)a3;
- (void)_setPresentsDetached:(BOOL)a3;
- (void)_setSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4;
- (void)_setSelectedTool:(id)a3 saveState:(BOOL)a4 updateUI:(BOOL)a5 updateLastSelectedTool:(BOOL)a6;
- (void)_setSelectionMask:(unint64_t)a3 updateUI:(BOOL)a4;
- (void)_setShadowVisible:(BOOL)a3;
- (void)_setShapeButtonViewController:(id)a3;
- (void)_setShouldAlwaysShowAutoRefineControls:(BOOL)a3;
- (void)_setShouldHideHoverPreviewToggle:(BOOL)a3;
- (void)_setShowsHandwritingTool:(BOOL)a3;
- (void)_setShowsPlusButton:(BOOL)a3;
- (void)_setShowsRuler:(BOOL)a3;
- (void)_setShowsShapeButton:(BOOL)a3;
- (void)_setShowsTextButton:(BOOL)a3;
- (void)_setTextButtonViewController:(id)a3;
- (void)_setUseEqualSpacingLayoutInCompactSize:(BOOL)a3;
- (void)_setVisibilityUpdatesEnabled:(BOOL)a3;
- (void)_setVisibleInWindow:(id)a3 forFirstResponder:(id)a4 animated:(BOOL)a5 notify:(BOOL)a6 completion:(id)a7;
- (void)_setWantsBottomLineDividerVisibleInCompactSize:(BOOL)a3;
- (void)_setWantsClearBackgroundColorInCompactSize:(BOOL)a3;
- (void)_setWantsEllipsisButtonVisibleInCompactSize:(BOOL)a3;
- (void)_setWantsExternalVisibility:(BOOL)a3;
- (void)_setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)a3;
- (void)_showImageWandTipWithController:(id)a3;
- (void)_tellDelegateToHideToolPicker;
- (void)_textInputResponderDidReloadNotification:(id)a3;
- (void)_unlockHiddenNotify:(BOOL)a3;
- (void)_updateGenerationToolInstallation;
- (void)_updateHandwritingInputAssistantItems;
- (void)_updateHandwritingToolInstallation;
- (void)_updatePaletteTraitCollection:(id)a3;
- (void)_updatePaletteUserInterfaceStyle:(int64_t)a3;
- (void)_updatePaletteView:(id)a3 onUpdateLink:(BOOL)a4;
- (void)_updateToolPickerVisibilityContextMenuPresentedDidChange:(BOOL)a3;
- (void)_updateToolPickerVisibilityForFirstResponder:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)_updateUIOnUpdateLink:(BOOL)a3;
- (void)_updateUserInterfaceStyle;
- (void)addObserver:(id)observer;
- (void)calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary;
- (void)dealloc;
- (void)imageWandTipControllerTipStatusDidUpdate:(id)a3;
- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5;
- (void)removeObserver:(id)observer;
- (void)setAccessoryItem:(id)a3;
- (void)setColorMaximumLinearExposure:(double)a3;
- (void)setColorSwatchesVisible:(BOOL)a3;
- (void)setColorUserInterfaceStyle:(UIUserInterfaceStyle)colorUserInterfaceStyle;
- (void)setMaximumSupportedContentVersion:(PKContentVersion)maximumSupportedContentVersion;
- (void)setOverrideUserInterfaceStyle:(UIUserInterfaceStyle)overrideUserInterfaceStyle;
- (void)setPrefersLargeContextualEditingUI:(BOOL)a3;
- (void)setRulerActive:(BOOL)rulerActive;
- (void)setSelectedToolItem:(id)a3;
- (void)setSelectedToolItemIdentifier:(id)a3;
- (void)setShowsDrawingPolicyControls:(BOOL)showsDrawingPolicyControls;
- (void)setStateAutosaveName:(NSString *)stateAutosaveName;
- (void)setVisibility:(int64_t)a3 whenFirstResponderIsDescendantOf:(id)a4;
- (void)setVisible:(BOOL)visible forFirstResponder:(UIResponder *)responder;
- (void)set_temporarySelectionDelegate:(id)a3;
- (void)toolPickerItemDidChange:(id)a3;
- (void)toolPickerItemReloadImage:(id)a3;
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
  v3 = [(PKToolPicker *)self toolItems];
  v4 = [(PKToolPicker *)self selectedToolItemIdentifier];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
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
        v12 = [v11 _dictionaryRepresentation];
        if (v4)
        {
          v13 = [v11 identifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
            [v15 setValue:MEMORY[0x1E695E118] forKey:@"isSelected"];
            v16 = [v15 copy];

            v12 = v16;
          }
        }

        if ([v12 count] >= 2)
        {
          [v5 addObject:v12];
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
    v5 = [(PKToolPicker *)self stateAutosaveName];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD60] stringWithString:@"PKPaletteNamedDefaults"];
    v6 = [(PKToolPicker *)self stateAutosaveName];

    if (v6)
    {
      v7 = [(PKToolPicker *)self stateAutosaveName];
      [v5 appendFormat:@"-%@", v7];
    }
  }

  return v5;
}

- (NSArray)_tools
{
  v2 = [(NSMutableArray *)self->_mutableTools copy];

  return v2;
}

- (NSString)selectedToolItemIdentifier
{
  v2 = [(PKToolPicker *)self selectedToolItem];
  v3 = [v2 identifier];

  return v3;
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
  v3 = [objc_opt_class() _defaultValueForToolStatePersistenceEnabled];
  v4 = ![(PKToolPicker *)self _useNewAutosaveNameBehavior];
  result = v4 & v3;
  if (v4 & 1) == 0 && (v3)
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
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"PKShouldRestoreToolPickerState"];

    if (v5)
    {
      v2 = [v4 BOOLForKey:@"PKShouldRestoreToolPickerState"];
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

- (BOOL)_hasResponderRegisteredForWindow:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v11 = [v10 view];
      }

      v12 = v11;
      if (v11)
      {
        v13 = [v11 window];

        if (v13 == v4)
        {
          LOBYTE(v7) = 1;
          goto LABEL_16;
        }
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v2 = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility currentFirstResponder];
  }

  else
  {
    v3 = [(PKToolPicker *)self _interaction];
    v4 = [v3 hostingWindow];
    v2 = [v4 firstResponder];
  }

  return v2;
}

- (id)_delegateForSelector:(SEL)a3
{
  v4 = [(PKToolPicker *)self _temporarySelectionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PKToolPicker *)self _temporarySelectionDelegate];
  }

  else
  {
    v7 = [(PKToolPicker *)self _delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v6 = [(PKToolPicker *)self _delegate];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_wantsVisibleForFirstResponder:(id)a3 includeHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PKToolPicker _internalClassWantsToolPicker:self visibleForResponder:v6];
  v8 = [PKToolPicker _textInputWantsToolPickerVisible:self forFirstResponder:v6];
  LOBYTE(v9) = 1;
  if (v7 || v8)
  {
    goto LABEL_33;
  }

  v10 = objc_opt_class();
  v11 = PKDynamicCast(v10, v6);
  if (!v11)
  {
    v22 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    v23 = [v22 objectForKey:v6];

    if (v23 && [(PKToolPicker *)v23 integerValue]< 2)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_26:
    v24 = [v6 pencilKitResponderState];
    v23 = [v24 _currentActiveToolPicker];

    if (v23 == self)
    {
      v25 = [v6 pencilKitResponderState];
      v26 = [v25 _currentToolPickerVisibility];
      LOBYTE(v9) = v26 == 3;
      if (v26 != 3 && v4)
      {
        v27 = [v6 pencilKitResponderState];
        LOBYTE(v9) = [v27 _currentToolPickerVisibility] == 2;
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
    v14 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    v15 = [v14 objectForKey:v12];

    if (v15)
    {
      v16 = [v15 integerValue];
      v17 = (v12 != v6) & v9;
      if (v16 == 3)
      {
        v18 = 0;
      }

      else
      {
        v18 = v9;
      }

      if (v16 != 2)
      {
        v17 = v18;
      }

      v19 = (v12 == v6) | v9;
      if (v16 == 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v9;
      }

      if (v16)
      {
        v19 = v20;
      }

      if (v16 <= 1)
      {
        v9 = v19;
      }

      else
      {
        v9 = v17;
      }

      v13 = 1;
    }

    v21 = [v12 superview];

    v12 = v21;
  }

  while (v21);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_33:

  return v9 & 1;
}

+ (void)_cycleToolPickersForResponder:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 _responderWindow];
  if (v2 && v3)
  {
    v15 = v3;
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

          v9 = [*(*(&v16 + 1) + 8 * v8) toolPicker];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 _firstRespondersForVisibleUI];
            v12 = [v11 keyEnumerator];
            v13 = [v12 allObjects];
            v14 = [v13 containsObject:v2];

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

    v3 = v15;
  }
}

+ (id)_toolPickersForWindow:(uint64_t)a3 includeHidden:
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
    v6 = [v4 firstResponder];
    if (v6)
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

            v13 = [*(*(&v16 + 1) + 8 * i) toolPicker];
            v14 = v13;
            if (v13 && [v13 _wantsVisibleForFirstResponder:v6 includeHidden:a3])
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

+ (id)_windowScenesForToolPicker:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 _firstRespondersForVisibleUI];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) _responderWindow];
        v12 = [v11 windowScene];

        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)_windowSceneForToolPicker:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 _firstRespondersForVisibleUI];
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 _responderWindow];

        if (v9)
        {
          v10 = [v8 _responderWindow];
          v5 = [v10 windowScene];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)_windowForToolPicker:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary];
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
        v10 = [v9 _allWindows];
        v11 = [v10 countByEnumeratingWithState:&v52 objects:v63 count:16];
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
                objc_enumerationMutation(v10);
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

                      if (v19 == v3)
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

            v12 = [v10 countByEnumeratingWithState:&v52 objects:v63 count:16];
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
        v10 = [v9 _allWindows];
        v23 = [v10 countByEnumeratingWithState:&v44 objects:v61 count:16];
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
                objc_enumerationMutation(v10);
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

                  if (v19 == v3)
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
            v24 = [v10 countByEnumeratingWithState:&v44 objects:v61 count:16];
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

+ (void)_dockToolPickerForWindowScene:(uint64_t)a3 toAutoHideCornerAnimated:
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

  v7 = [v5 paletteHostView];
  [v7 _dockPaletteToAutoHideCornerAnimated:a3];
}

- (id)_applicationWindow
{
  v20 = *MEMORY[0x1E69E9840];
  if (PKIsVisionDevice())
  {
    toolPickerVisibility = self->_toolPickerVisibility;
    if (toolPickerVisibility)
    {
      v4 = [(PKToolPickerVisibilityProtocol *)toolPickerVisibility windowScene];
      if (v4)
      {
        v5 = v4;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [v4 windows];
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v15 + 1) + 8 * i);
              if (([(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility isActiveToolPickerForWindow:v11]& 1) != 0)
              {
                v13 = v11;
                goto LABEL_19;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v5 = [(PKToolPicker *)self _interaction];
    if (v5 && [(PKToolPicker *)self isVisible])
    {
      v6 = [(PKToolPicker *)self _interaction];
      v13 = [v6 hostingWindow];
LABEL_19:
      v12 = v13;
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
  v5 = [(PKToolPicker *)self _observers];
  [v5 addObject:v4];

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
  v5 = [(PKToolPicker *)self _observers];
  [v5 removeObject:v4];
}

- (void)_saveStateIfNecessary
{
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 saveOptionsIfNecessary];
}

+ (void)_setCanBecomeVisible:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (__canBecomeVisible != a3)
  {
    __canBecomeVisible = a3;
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

          v8 = [*(*(&v10 + 1) + 8 * v7) toolPicker];
          if (v8)
          {
            v9 = [PKToolPicker _windowForToolPicker:v8];
            [v8 _setVisibleInWindow:v9];
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
  v7 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  v8 = [v7 objectForKey:v6];

  if ((v8 != 0) != v4)
  {
    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 _pkDebugStringRepresentation];
      v11 = [(PKToolPicker *)self _currentFirstResponder];
      v12 = [v11 _pkDebugStringRepresentation];
      v15 = 134218754;
      v16 = self;
      v17 = 1024;
      v18 = v4;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, should setVisible %{BOOL}d for responder: %@, current: %@", &v15, 0x26u);
    }
  }

  v13 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
  v14 = v13;
  if (v4)
  {
    [v13 setObject:&unk_1F47C1010 forKey:v6];
  }

  else
  {
    [v13 removeObjectForKey:v6];
  }

  if ([(UIResponder *)v6 isFirstResponder])
  {
    [(PKToolPicker *)self _updateToolPickerVisibility];
  }
}

- (void)setVisibility:(int64_t)a3 whenFirstResponderIsDescendantOf:(id)a4
{
  v9 = a4;
  if (a3 == 2)
  {
    v7 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
    [v7 removeObjectForKey:v9];
  }

  else
  {
    if (a3 == 1)
    {
      v6 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
      v7 = v6;
      v8 = &unk_1F47C1040;
    }

    else
    {
      if (a3)
      {
        goto LABEL_9;
      }

      v6 = [(PKToolPicker *)self _firstRespondersForVisibleUI];
      v7 = v6;
      v8 = &unk_1F47C1028;
    }

    [v6 setObject:v8 forKey:v9];
  }

LABEL_9:
  [(PKToolPicker *)self _updateToolPickerVisibility];
}

- (void)_handleFirstResponderDidChangeNotification:(id)a3
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKToolPicker *)self _currentFirstResponder];
    v7 = [v6 _pkDebugStringRepresentation];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    *v25 = v7;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "first responder did change notification: %@, firstResponder: %@", &v22, 0x16u);
  }

  v8 = [(PKToolPicker *)v4 userInfo];
  v9 = [v8 objectForKey:@"_UIWindowHostDidPromoteFirstResponderUserInfoKey"];
  v10 = [v9 BOOLValue];

  v11 = [(PKToolPicker *)v4 userInfo];
  v12 = [v11 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  if (!v10 || v12)
  {
    v13 = [(PKToolPicker *)self _paletteView];
    v14 = [v13 isExtendedColorPickerVisible];

    if (PKIsPhoneDevice() && ([(PKToolPicker *)self isVisible]& v14) == 1)
    {
      v15 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(PKToolPicker *)self isVisible];
        v22 = 134218496;
        v23 = self;
        v24 = 1024;
        *v25 = v16;
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
        v21 = [(PKToolPicker *)self isVisible];
        v22 = 134218496;
        v23 = self;
        v24 = 1024;
        *v25 = v21;
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
    v2 = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility paletteView];
  }

  else
  {
    v3 = [(PKToolPicker *)self _interaction];
    v2 = [v3 paletteView];
  }

  return v2;
}

- (PKToolPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

- (void)_setSelectedTool:(id)a3 saveState:(BOOL)a4 updateUI:(BOOL)a5 updateLastSelectedTool:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = v11;
  if (v11)
  {
    if ([(PKTool *)v11 _isRulerTool])
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
          v34 = v22;
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
          v34 = v21;
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
          if (v6)
          {
            objc_storeStrong(&self->_lastSelectedTool, self->_selectedTool);
          }

          v24 = self->_selectedTool;
          objc_storeStrong(&self->_selectedTool, a3);
          [(NSMutableArray *)self->_mutableTools replaceObjectAtIndex:v15 withObject:v12];
          [(PKToolPickerItemManager *)self->_toolItemManager updateItemForTool:v12];
          v25 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            selectedTool = self->_selectedTool;
            *buf = 138478083;
            v32 = v24;
            v33 = 2113;
            v34 = selectedTool;
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Did change selected tool from %{private}@ to %{private}@", buf, 0x16u);
          }

          [(PKToolPicker *)self _dismissPopovers];
          if (v7)
          {
            [(PKToolPicker *)self _updateUI];
          }

          if (v8)
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
  v2 = [(PKToolPicker *)self _observers];
  v3 = [v2 copy];

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

    v6 = [(PKToolPicker *)self _showsRuler];
    v7 = 0;
  }

  else
  {
    p_rulerActive = &self->_rulerActive;
    if (!self->_rulerActive)
    {
      return;
    }

    v6 = 0;
    v7 = 1;
  }

  *p_rulerActive = v6;
  if (v7 == v6)
  {
    return;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(PKToolPicker *)self _observers];
  v4 = [v8 copy];

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

- (void)_setShowsRuler:(BOOL)a3
{
  if (!a3)
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

- (void)_setNumberOfToolsAfterRuler:(int64_t)a3
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
    [(PKToolPicker *)self _insertTool:v7 atIndex:[(NSMutableArray *)self->_mutableTools count]- a3 updateUI:0];
    [(PKToolPicker *)self _updateUI];
    [(PKToolPicker *)self _saveToolPickerState];
  }
}

void __44__PKToolPicker__setNumberOfToolsAfterRuler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  [*(a1 + 32) _removeTool:v3 updateUI:0];
}

- (void)_setShouldHideHoverPreviewToggle:(BOOL)a3
{
  if (self->__shouldHideHoverPreviewToggle != a3)
  {
    self->__shouldHideHoverPreviewToggle = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setShouldAlwaysShowAutoRefineControls:(BOOL)a3
{
  if (self->__shouldAlwaysShowAutoRefineControls != a3)
  {
    self->__shouldAlwaysShowAutoRefineControls = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setAccessoryItem:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteBarButton *)self->_accessoryBarButton barButtonItem];
  v6 = v4;
  if (v6 | v5)
  {
    v11 = v6;
    if (v6 && v5)
    {
      v7 = [v5 isEqual:v6];

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

- (void)_setShowsPlusButton:(BOOL)a3
{
  if (self->__showsPlusButton != a3)
  {
    self->__showsPlusButton = a3;
    if (a3)
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

- (void)_setPlusButtonMenu:(id)a3
{
  v5 = a3;
  if (self->__plusButtonMenu != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__plusButtonMenu, a3);
    accessoryBarButton = self->_accessoryBarButton;
    if (accessoryBarButton)
    {
      v7 = [(PKPaletteBarButton *)accessoryBarButton barButtonItem];
      [v7 setMenu:v8];
    }

    [(PKToolPicker *)self _updateUI];
    v5 = v8;
  }
}

- (void)_setPlusButtonViewController:(id)a3
{
  v5 = a3;
  if (self->__plusButtonViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__plusButtonViewController, a3);
    [(PKToolPicker *)self _updateUI];
    v5 = v6;
  }
}

- (void)_setShowsTextButton:(BOOL)a3
{
  if (self->__showsTextButton != a3)
  {
    self->__showsTextButton = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setTextButtonViewController:(id)a3
{
  v5 = a3;
  if (self->__textButtonViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__textButtonViewController, a3);
    [(PKToolPicker *)self _updateUI];
    v5 = v6;
  }
}

- (void)_setShowsShapeButton:(BOOL)a3
{
  if (self->__showsShapeButton != a3)
  {
    self->__showsShapeButton = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setShapeButtonViewController:(id)a3
{
  v5 = a3;
  if (self->__shapeButtonViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__shapeButtonViewController, a3);
    [(PKToolPicker *)self _updateUI];
    v5 = v6;
  }
}

- (UIView)_contextualEditingView
{
  if ([(PKToolPicker *)self isVisible])
  {
    v3 = [(PKToolPicker *)self _paletteView];
    v4 = [v3 contextualEditingView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_edgeForContextualEditingView
{
  v3 = [(PKToolPicker *)self _palettePosition]- 1;
  v4 = [(PKToolPicker *)self _palettePosition];
  if (v3 > 3)
  {
    if ((v4 - 5) > 3)
    {
      return 4;
    }

    else
    {
      v6 = [(PKToolPicker *)self _paletteView];
      v7 = [(PKToolPicker *)self _palettePosition]- 5;
      if (v7 > 3)
      {
        v8 = -1;
      }

      else
      {
        v8 = qword_1C801C380[v7];
      }

      v9 = [v6 edgeLocationToDockFromCorner:v8];

      return v9;
    }
  }

  else if ((v4 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return qword_1C801C3A0[v4 - 1];
  }
}

- (void)_setLassoToolEditingViewVisible:(BOOL)a3
{
  if (self->_lassoToolEditingViewVisible != a3)
  {
    self->_lassoToolEditingViewVisible = a3;
    [(PKToolPicker *)self _updateUIOnUpdateLink:1];
  }
}

- (UIView)_lassoToolEditingView
{
  if ([(PKToolPicker *)self isVisible])
  {
    v3 = [(PKToolPicker *)self _paletteView];
    v4 = [v3 lassoToolEditingView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setWantsEllipsisButtonVisibleInCompactSize:(BOOL)a3
{
  v3 = a3;
  if ([(PKToolPicker *)self _canShowEllipsisButtonInCompactSize]&& self->__wantsEllipsisButtonVisibleInCompactSize != v3)
  {
    self->__wantsEllipsisButtonVisibleInCompactSize = v3;

    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setWantsBottomLineDividerVisibleInCompactSize:(BOOL)a3
{
  if (self->__wantsBottomLineDividerVisibleInCompactSize != a3)
  {
    self->__wantsBottomLineDividerVisibleInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setIgnoresSafeAreaInsetsInCompactSize:(BOOL)a3
{
  if (self->__ignoresSafeAreaInsetsInCompactSize != a3)
  {
    self->__ignoresSafeAreaInsetsInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__edgeInsetsInCompactSize.top, v3), vceqq_f64(*&self->__edgeInsetsInCompactSize.bottom, v4)))) & 1) == 0)
  {
    self->__edgeInsetsInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setInterItemToolsSpacingInCompactSize:(double)a3
{
  if (vabdd_f64(self->__interItemToolsSpacingInCompactSize, a3) >= 0.00999999978)
  {
    self->__interItemToolsSpacingInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setInterItemUndoRedoButtonsSpacingInCompactSize:(double)a3
{
  if (self->__interItemUndoRedoButtonsSpacingInCompactSize != a3)
  {
    self->__interItemUndoRedoButtonsSpacingInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setUseEqualSpacingLayoutInCompactSize:(BOOL)a3
{
  if (self->__useEqualSpacingLayoutInCompactSize != a3)
  {
    self->__useEqualSpacingLayoutInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (BOOL)_interactionIsValid
{
  v2 = [(PKToolPicker *)self _interaction];
  v3 = v2 != 0;

  return v3;
}

- (double)_scalingFactor
{
  if (![(PKToolPicker *)self isVisible])
  {
    return 1.0;
  }

  v3 = [(PKToolPicker *)self _paletteView];
  [v3 paletteScaleFactor];
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
  v3 = [(PKToolPicker *)self _observers];
  v4 = [v3 copy];

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
    v2 = [(PKToolPickerVisibilityProtocol *)self->_toolPickerVisibility windowScene];
  }

  else
  {
    v3 = [(PKToolPicker *)self _interaction];
    v4 = [v3 view];
    v5 = [v4 window];
    v2 = [v5 windowScene];
  }

  return v2;
}

- (void)_setVisibilityUpdatesEnabled:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->__visibilityUpdatesEnabled != a3)
  {
    self->__visibilityUpdatesEnabled = a3;
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134218240;
      v6 = self;
      v7 = 1024;
      v8 = [(PKToolPicker *)self _visibilityUpdatesEnabled];
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, visibility updates did change, visibilityUpdatesEnabled: %{BOOL}d", &v5, 0x12u);
    }

    [(PKToolPicker *)self _updateToolPickerVisibility];
  }
}

- (void)_performWithVisibilityUpdatesEnabled:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  visibilityUpdatesEnabled = self->__visibilityUpdatesEnabled;
  v7 = a4;
  [(PKToolPicker *)self _setVisibilityUpdatesEnabled:v4];
  v7[2](v7);

  [(PKToolPicker *)self _setVisibilityUpdatesEnabled:visibilityUpdatesEnabled];
}

+ (void)_performWithVisibilityUpdatesEnabled:(BOOL)a3 window:(id)a4 block:(id)a5
{
  v6 = a3;
  v10 = a4;
  v7 = a5;
  if (v10 && ([PKToolPicker activeToolPickerForWindow:v10], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v8 _performWithVisibilityUpdatesEnabled:v6 block:v7];
  }

  else
  {
    v7[2](v7);
  }
}

+ (void)_updateToolPickerVisibilityForFirstResponder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
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

        v9 = [*(*(&v11 + 1) + 8 * v8) toolPicker];
        v10 = v9;
        if (v9)
        {
          [v9 _updateToolPickerVisibilityForFirstResponder:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateToolPickerVisibilityContextMenuPresentedDidChange:(BOOL)a3
{
  v5 = objc_alloc_init(PKToolPickerVisibilityContext);
  v6 = v5;
  if (v5)
  {
    v5->_contextMenuPresentedDidChange = a3;
  }

  if (self)
  {
    v7 = v5;
    [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v5 completion:0];
    v6 = v7;
  }
}

- (void)_updateToolPickerVisibilityForFirstResponder:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
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

    if (v8)
    {
      if (v8[8] == 1)
      {
        v11 = v8[10];
      }

      else
      {
        v11 = 1;
      }

      if (![(PKToolPicker *)self _isContextMenuPresented]&& v8[9] == 1)
      {
        v12 = [v10 windowScene];
        v13 = [(PKToolPicker *)self _squeezePaletteVisibleInWindowScene:v12];

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

    [(PKToolPicker *)self _setVisibleInWindow:v10 forFirstResponder:v14 animated:1 notify:v11 & 1 completion:v9];
  }
}

- (BOOL)_squeezePaletteVisibleInWindowScene:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:?];
  v4 = [v3 _paletteViewVisible];

  return v4;
}

- (void)_setVisibleInWindow:(id)a3 forFirstResponder:(id)a4 animated:(BOOL)a5 notify:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v89 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke;
  aBlock[3] = &unk_1E82D6F70;
  v15 = v14;
  v81 = v15;
  v16 = _Block_copy(aBlock);
  if (!v13 || ([v13 isFirstResponder] & 1) != 0)
  {
    if (__canBecomeVisible && ![(PKToolPicker *)self _isLockedHidden])
    {
      v18 = [(PKToolPicker *)self _isEnabled];
      if (!v12 || v18)
      {
        goto LABEL_15;
      }
    }

    else if (!v12)
    {
      goto LABEL_15;
    }

    v19 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[PKToolPicker _canBecomeVisible];
      v21 = [(PKToolPicker *)self _isLockedHidden];
      v22 = [(PKToolPicker *)self _isEnabled];
      *buf = 134218752;
      v85 = self;
      v86 = 1024;
      *v87 = v20;
      *&v87[4] = 1024;
      *&v87[6] = v21;
      LOWORD(v88[0]) = 1024;
      *(v88 + 2) = v22;
      _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, skip making tool picker visible, canBecomeVisible: %{BOOL}d, isLockedHidden: %{BOOL}d, isEnabled: %{BOOL}d", buf, 0x1Eu);
    }

    v12 = 0;
LABEL_15:
    if (![(PKToolPicker *)self _visibilityUpdatesEnabled])
    {
      v24 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(PKToolPicker *)self _visibilityUpdatesEnabled];
        *buf = 134218240;
        v85 = self;
        v86 = 1024;
        *v87 = v25;
        _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, skip updating tool picker visibility, _visibilityUpdatesEnabled: %{BOOL}d", buf, 0x12u);
      }

      goto LABEL_22;
    }

    if ([(PKToolPicker *)self _visibilityUpdatesEnabled])
    {
      toolPickerVisibility = self->_toolPickerVisibility;
      if (toolPickerVisibility)
      {
        [(PKToolPickerVisibilityProtocol *)toolPickerVisibility setVisibleInWindow:v12 animated:v9 notify:v8 completion:v15];
        goto LABEL_64;
      }
    }

    v26 = [v12 windowScene];
    v27 = [(PKToolPicker *)self _squeezePaletteVisibleInWindowScene:v26];

    if (v27)
    {
      v28 = [(PKToolPicker *)self isVisible];
      if (v12)
      {
        if (!v28)
        {
          v24 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v85 = self;
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

    v66 = v9;
    [(PKToolPicker *)self calculateIsVisibleBeforeResponderChangesForCurrentRunLoopIfNecessary];
    v29 = [v12 windowScene];
    v30 = [PKPaletteViewInteraction paletteViewInteractionForWindow:v12 windowScene:v29];

    if (v30)
    {
      [v30 setDelegate:self];
      v31 = [(PKToolPicker *)self _paletteViewDelegateProxy];
      v32 = [v30 paletteView];
      [v32 setDelegate:v31];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    if (v13)
    {
      v41 = [v13 pencilKitResponderState];
      v42 = [v41 _currentActiveToolPicker];

      if (v42 == self)
      {
        v43 = [v13 pencilKitResponderState];
        if ([v43 _currentToolPickerVisibility] == 1)
        {
          v44 = [(PKToolPicker *)self _isPencilInteractionEnabledWhenNotVisible];

          if (v44)
          {
            v45 = os_log_create("com.apple.pencilkit", "ToolPicker");
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v85 = self;
              _os_log_impl(&dword_1C7CCA000, v45, OS_LOG_TYPE_DEFAULT, "%p disable tap interaction", buf, 0xCu);
            }

            [(PKToolPicker *)self _disableTapInteractionWhenNotVisible];
            goto LABEL_32;
          }
        }

        else
        {
        }

        v31 = [v13 pencilKitResponderState];
        if ([v31 _currentToolPickerVisibility] != 2)
        {
          goto LABEL_31;
        }

        v59 = [(PKToolPicker *)self _isPencilInteractionEnabledWhenNotVisible];

        if (!v59)
        {
          v60 = os_log_create("com.apple.pencilkit", "ToolPicker");
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v85 = self;
            _os_log_impl(&dword_1C7CCA000, v60, OS_LOG_TYPE_DEFAULT, "%p enable tap interaction", buf, 0xCu);
          }

          v31 = [v13 _responderWindow];
          v32 = [(PKToolPicker *)self _interaction];
          [(PKToolPicker *)self _enableTapInteractionForWindow:v31 createPaletteView:v32 == 0];
          goto LABEL_30;
        }
      }
    }

LABEL_32:
    v33 = [(PKToolPicker *)self _interaction];

    if (v30 == v33)
    {
      v46 = [v30 paletteView];
      [v46 updateUndoRedo];

      v16[2](v16);
LABEL_63:

      goto LABEL_64;
    }

    v69 = v8;
    v34 = [v12 windowScene];
    if (!v34)
    {
      v35 = [(PKToolPicker *)self _interaction];
      v36 = [v35 view];
      v37 = [v36 window];
      v38 = [v37 windowScene];

      if (!v38)
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

      v34 = v38;
    }

    v82 = @"PKToolPickerNotificationWindowSceneUserInfoKey";
    v83 = v34;
    v65 = v34;
    v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v39 = 0;
    if (v30)
    {
LABEL_37:
      v40 = [v30 hostingWindow];
      v68 = [v40 firstResponder];
      goto LABEL_48;
    }

LABEL_47:
    v40 = [(PKToolPicker *)self _interaction];
    v47 = [v40 hostingWindow];
    v68 = [v47 firstResponder];

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
        v50 = [v68 _pkDebugStringRepresentation];
        *buf = 134218498;
        v85 = self;
        v86 = 2112;
        *v87 = v50;
        *&v87[8] = 1024;
        v88[0] = v69;
        _os_log_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEFAULT, "ToolPicker: %p, interaction should show palette, currentFirstResponder: %@, notify: %{BOOL}d", buf, 0x1Cu);
      }

      [(PKToolPicker *)self set_toolPickerVisible:1];
      if (v64)
      {
        v51 = [MEMORY[0x1E696AD88] defaultCenter];
        [v51 postNotificationName:@"PKToolPickerWillShowNotification" object:self userInfo:v67];

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
        if (!v12)
        {
          [(PKToolPicker *)self set_toolPickerVisible:0];
          v58 = [(PKToolPicker *)self _selectionContext];
          [v58 setSelectionMask:0];

          v16[2](v16);
        }

        goto LABEL_62;
      }

      v61 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v68 _pkDebugStringRepresentation];
        *buf = 134218498;
        v85 = self;
        v86 = 2112;
        *v87 = v62;
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

      v63 = [(PKToolPicker *)self _interaction];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __81__PKToolPicker__setVisibleInWindow_forFirstResponder_animated_notify_completion___block_invoke_80;
      v70[3] = &unk_1E82D6F98;
      v70[4] = self;
      v73 = v64;
      v71 = v67;
      v74 = v69;
      v72 = v16;
      [v63 hidePaletteViewAnimated:v66 completion:v70];

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

- (void)_notifyVisibilityDidChangeIsAnimationFinished:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PKToolPicker *)self _observers];
  v6 = [v5 copy];

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
          [v11 _toolPickerVisibilityDidChange:self isAnimationFinished:v3];
        }

        else if (!v3 && (objc_opt_respondsToSelector() & 1) != 0)
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

- (void)_setInteraction:(id)a3
{
  v5 = a3;
  if (self->__interaction != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->__interaction, a3);
    if (self->__interaction)
    {
      [(PKToolPicker *)self _restoreToolPickerStateNotify:1];
      interaction = self->__interaction;
    }

    else
    {
      interaction = 0;
    }

    v7 = [(PKPaletteViewInteraction *)interaction hostingWindow];
    v8 = [v7 rootViewController];
    [(PKToolPicker *)self _setPresentationController:v8];

    v5 = v9;
  }
}

- (void)_updateUIOnUpdateLink:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = v3;
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

    v8 = [(PKToolPicker *)self _paletteView];
    [(PKToolPicker *)self _updatePaletteView:v8 onUpdateLink:v3];
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_FAULT, "This should only be called from the main thread!", v9, 2u);
    }
  }
}

- (void)_updateGenerationToolInstallation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PKImageGenerationController *)self->_imageGenerationController shouldAddMagicWand];
  v4 = [(PKToolPicker *)self _hasGenerationTool];
  if (v3 && !v4)
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

  if (!v3 && v4)
  {
    v7 = [(PKToolPicker *)self _indexOfGenerationTool];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(PKImageGenerationController *)self->_imageGenerationController isGenerationToolEnabled];
        v11 = [(PKImageGenerationController *)self->_imageGenerationController isImageGenerationAllowed];
        v12 = [(PKImageGenerationController *)self->_imageGenerationController isGenerationModelAvailable];
        v13[0] = 67109632;
        v13[1] = v10;
        v14 = 1024;
        v15 = v11;
        v16 = 1024;
        v17 = v12;
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
    v3 = [objc_opt_class() _canShowHandwritingTool];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PKToolPicker *)self _hasHandwritingTool];
  v5 = !v4;
  if (v3 & 1) != 0 || (v5)
  {
    if ((v3 ^ 1 | v4))
    {
      if (((v3 ^ 1 | v5) & 1) == 0)
      {
        v6 = +[PKTextInputSettings sharedSettings];
        v10 = [v6 recognitionLocaleIdentifier];

        v7 = [(PKToolPicker *)self _handwritingTool];
        v8 = [v7 localeIdentifier];
        v9 = [v8 isEqualToString:v10];

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
  v5 = [v3 recognitionLocaleIdentifier];

  v4 = [[PKHandwritingTool alloc] initWithLocaleIdentifier:v5];
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

- (void)_updatePaletteView:(id)a3 onUpdateLink:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(PKToolPicker *)self _paletteHostView];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__PKToolPicker__updatePaletteView_onUpdateLink___block_invoke;
    v15 = &unk_1E82D6FC0;
    objc_copyWeak(&v18, &location);
    v8 = v6;
    v16 = v8;
    v9 = v7;
    v17 = v9;
    v10 = _Block_copy(&v12);
    v11 = v10;
    if (v4)
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

- (BOOL)_hasToolPassingTest:(id)a3
{
  v4 = a3;
  mutableTools = self->_mutableTools;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PKToolPicker__hasToolPassingTest___block_invoke;
  v8[3] = &unk_1E82D6FE8;
  v9 = v4;
  v6 = v4;
  LOBYTE(mutableTools) = [(NSMutableArray *)mutableTools indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;

  return mutableTools;
}

uint64_t __38__PKToolPicker__indexOfGenerationTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isGenerationTool];

  return v3;
}

- (unint64_t)_indexOfToolPassingTest:(id)a3
{
  v4 = a3;
  mutableTools = self->_mutableTools;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PKToolPicker__indexOfToolPassingTest___block_invoke;
  v9[3] = &unk_1E82D6FE8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)mutableTools indexOfObjectPassingTest:v9];

  return v7;
}

- (int64_t)_palettePosition
{
  v3 = [(PKToolPicker *)self _paletteView];
  if (v3)
  {
    v4 = [(PKToolPicker *)self _paletteView];
    v5 = [v4 palettePosition];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setPresentationController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__presentationController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__presentationController, obj);
    [(PKToolPicker *)self _updateUI];
    v5 = obj;
  }
}

- (void)_setAnnotationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__annotationDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__annotationDelegate, obj);
    [(PKToolPicker *)self _updateUI];
    v5 = obj;
  }
}

- (void)_setShadowVisible:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__shadowVisible != a3)
  {
    self->__shadowVisible = a3;
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

- (void)_setBackgroundVisible:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__backgroundVisible != a3)
  {
    self->__backgroundVisible = a3;
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

- (void)_setWantsClearBackgroundColorInCompactSize:(BOOL)a3
{
  if (self->__wantsClearBackgroundColorInCompactSize != a3)
  {
    self->__wantsClearBackgroundColorInCompactSize = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)_setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)a3
{
  if (self->__wantsUndoRedoButtonsVisibleInCompactSize != a3)
  {
    self->__wantsUndoRedoButtonsVisibleInCompactSize = a3;
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
    v9 = [(PKToolPicker *)self _paletteView];
    v10 = [(PKToolPicker *)self _paletteView];
    [v10 bounds];
    [v9 convertRect:v4 toView:?];
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
    v7 = [(PKToolPicker *)self _paletteView];
    v8 = [v7 palettePosition];
    if ((v8 - 1) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1C801C3A0[v8 - 1];
    }

    v10 = [(PKToolPicker *)self _paletteView];
    [v10 paletteSizeForEdge:v9];
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

- (void)_enableTapInteractionForWindow:(id)a3
{
  v4 = a3;
  [(PKToolPicker *)self _enableTapInteractionForWindow:v4 createPaletteView:0];
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
  v9 = v4;
  v7 = v4;
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

- (void)_createPaletteViewIfNecessaryInWindow:(id)a3
{
  if (self)
  {
    [(PKToolPicker *)self _setVisibleInWindow:a3 forFirstResponder:0 animated:0 notify:0 completion:0];

    [(PKToolPicker *)self _setVisibleInWindow:0 forFirstResponder:0 animated:0 notify:0 completion:0];
  }
}

- (void)_enableTapInteractionForWindow:(id)a3 createPaletteView:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    if (!PKIsVisionDevice())
    {
      v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134218240;
        v10 = v6;
        v11 = 1024;
        v12 = v4;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Enable tap interaction for window: %p, createPaletteView: %{BOOL}d", &v9, 0x12u);
      }

      [(PKToolPicker *)self set_pencilInteractionEnabledWhenNotVisible:1];
      if (v4)
      {
        [(PKToolPicker *)self _createPaletteViewIfNecessaryInWindow:v6];
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

+ (id)activeToolPickerForWindow:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
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

      v9 = [*(*(&v11 + 1) + 8 * v8) toolPicker];
      if ([v9 _isActiveToolPickerForWindow:v3])
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
    v9 = 0;
  }

  return v9;
}

+ (id)_existingToolPickerForWindow:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v10 = [*(*(&v15 + 1) + 8 * i) toolPicker];
        if ([v10 _isActiveToolPickerForWindow:v4])
        {
          v12 = v10;
LABEL_16:

          goto LABEL_17;
        }

        if (v4)
        {
          v11 = [a1 existingPaletteViewForWindow:v4];
          if (v11 && ([v10 _hasResponderRegisteredForWindow:v4] & 1) != 0)
          {
            v13 = v10;

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

  v10 = 0;
LABEL_17:

  return v10;
}

- (BOOL)_isActiveToolPickerForWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 windowScene];
  if (v5)
  {
    toolPickerVisibility = self->_toolPickerVisibility;
    if (toolPickerVisibility)
    {
      v7 = [(PKToolPickerVisibilityProtocol *)toolPickerVisibility isActiveToolPickerForWindow:v4];
    }

    else
    {
      v8 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:v5];
      if (v8)
      {
        v9 = [(PKToolPicker *)self _interaction];
        v7 = v9 == v8;
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

+ (id)existingPaletteViewForWindow:(id)a3
{
  v3 = [a3 windowScene];
  if (v3)
  {
    v4 = [PKPaletteViewInteraction existingPaletteViewInteractionForWindowScene:v3];
    v5 = [v4 paletteView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isActiveToolPickerVisibleForWindow:(id)a3
{
  v3 = [a1 activeToolPickerForWindow:a3];
  if ([v3 isVisible])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _isAnimatingToVisible];
  }

  return v4;
}

+ (PKToolPicker)sharedToolPickerForWindow:(UIWindow *)window
{
  v3 = window;
  v4 = [(UIWindow *)v3 windowScene];
  if (v4)
  {
    v5 = _perCanvasToolPickers;
    if (!_perCanvasToolPickers)
    {
      v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v7 = _perCanvasToolPickers;
      _perCanvasToolPickers = v6;

      v5 = _perCanvasToolPickers;
    }

    v8 = [v5 objectForKey:v4];
    if (!v8)
    {
      v9 = [PKPaletteViewInteraction paletteViewInteractionForWindow:v3 windowScene:v4];
      if (v9)
      {
        v8 = objc_alloc_init(PKToolPicker);
        [(PKToolPicker *)v8 setStateAutosaveName:@"com.apple.PencilKit.shared"];
        [(PKToolPicker *)v8 _setInteraction:v9];
        [(PKToolPicker *)v8 _updateUI];
        [_perCanvasToolPickers setObject:v8 forKey:v4];
        [v9 setDelegate:v8];
      }

      else
      {
        v8 = 0;
      }
    }

    v10 = [(PKToolPicker *)v8 _interaction];
    v11 = [v10 paletteView];
    v12 = [v11 delegate];

    if (!v12)
    {
      v13 = [(PKToolPicker *)v8 _paletteViewDelegateProxy];
      v14 = [(PKToolPicker *)v8 _interaction];
      v15 = [v14 paletteView];
      [v15 setDelegate:v13];

      v16 = [(PKToolPicker *)v8 _paletteView];
      LOBYTE(v14) = [v16 isAnnotationSupportEnabled];

      if ((v14 & 1) == 0)
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

- (PKToolPicker)initWithToolItems:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v71.receiver = self;
  v71.super_class = PKToolPicker;
  v5 = [(PKToolPicker *)&v71 init];
  if (v5)
  {
    v6 = [[PKToolPickerItemManager alloc] initWithToolItems:v4];
    v7 = *(v5 + 7);
    *(v5 + 7) = v6;

    v5[99] = 1;
    v5[122] = 0;
    v5[120] = 1;
    v5[114] = 1;
    *(v5 + 19) = 0x3FF0000000000000;
    v8 = +[PKContentVersionUtility sharedUtility];
    *(v5 + 20) = [(PKContentVersionUtility *)v8 contentVersionForCurrentSDK];

    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = *(v5 + 3);
    *(v5 + 3) = v10;

    v5[95] = 1;
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(v5 + 1);
    *(v5 + 1) = v12;

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
          v22 = [v20 _tool];
          [v21 addObject:v22];

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
      v27 = [v26 firstObject];
      v28 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v73 = v27;
        _os_log_error_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_ERROR, "Unable to find a suitable tool to select by default, select: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v27 = [v26 objectAtIndex:?];
    }

    v29 = *(v5 + 16);
    *(v5 + 16) = v27;

    v30 = [objc_opt_class() _defaultValueForToolStatePersistenceEnabled];
    if ([v5 _useNewAutosaveNameBehavior])
    {
      if (v30)
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
    v33 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v34 = *(v5 + 25);
    *(v5 + 25) = v33;

    v35 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v36 = *(v5 + 23);
    *(v5 + 23) = v35;

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:v5 selector:sel__handleFirstResponderDidChangeNotification_ name:*MEMORY[0x1E69DEB18] object:0];

    if (!PKIsVisionDevice())
    {
      v38 = [MEMORY[0x1E696AD88] defaultCenter];
      [v38 addObserver:v5 selector:sel__handleWindowDidBecomeKeyNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
    }

    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v5 selector:sel__handleHandwritingEducationPaneSettingsDidChange_ name:@"PKHandwritingEducationPaneSettingsDidChangeNotification" object:0];

    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 addObserver:v5 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    [v41 addObserver:v5 selector:sel__hasSeenPencilPairingUIDidChange_ name:*MEMORY[0x1E69DEA20] object:0];

    v42 = [MEMORY[0x1E696AD88] defaultCenter];
    [v42 addObserver:v5 selector:sel__textInputResponderDidReloadNotification_ name:*MEMORY[0x1E69DE6E8] object:0];

    v43 = [MEMORY[0x1E696AD88] defaultCenter];
    [v43 addObserver:v5 selector:sel__handleSqueezeInteractionWillShowPaletteViewNotification_ name:@"PKPencilSqueezeInteractionWillShowPaletteViewNotification" object:0];

    v44 = _allToolPickers;
    if (!_allToolPickers)
    {
      v45 = [MEMORY[0x1E695DF70] array];
      v46 = _allToolPickers;
      _allToolPickers = v45;

      v44 = _allToolPickers;
    }

    v47 = [v44 indexesOfObjectsPassingTest:&__block_literal_global_138];
    [_allToolPickers removeObjectsAtIndexes:v47];
    v48 = objc_alloc_init(PKToolPickerWeak);
    [(PKToolPickerWeak *)v48 setToolPicker:v5];
    [_allToolPickers addObject:v48];
    v49 = [v5 _tools];
    v50 = [v49 count];
    v51 = [v5 _paletteView];
    v52 = [v51 showsPlusButton];
    v53 = 5.0;
    v54 = 2.0;
    if (!v52)
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

    v57 = [v5 _toolsState];
    v58 = *(v5 + 9);
    *(v5 + 9) = v57;

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKToolPicker;
  [(PKToolPicker *)&v4 dealloc];
}

- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__directionalLayoutMargins.top, v3), vceqq_f64(*&self->__directionalLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    top = a3.top;
    leading = a3.leading;
    bottom = a3.bottom;
    trailing = a3.trailing;
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

- (void)_setCloseButtonVisible:(BOOL)a3
{
  if (self->__closeButtonVisible != a3)
  {
    self->__closeButtonVisible = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setColorMaximumLinearExposure:(double)a3
{
  if (vabdd_f64(self->_colorMaximumLinearExposure, a3) >= 0.00999999978)
  {
    self->_colorMaximumLinearExposure = a3;
    [(PKToolPicker *)self _updateUIOnUpdateLink:1];
  }
}

- (void)_handleSqueezeInteractionWillShowPaletteViewNotification:(id)a3
{
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle squeeze interaction will show palette view notification", v6, 2u);
  }

  v5 = [(PKToolPicker *)self _paletteView];
  [v5 _dismissEyeDropper];
}

- (void)setSelectedToolItem:(id)a3
{
  v4 = [a3 identifier];
  [(PKToolPicker *)self setSelectedToolItemIdentifier:v4];
}

- (void)setSelectedToolItemIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(PKToolPickerItemManager *)self->_toolItemManager toolForIdentifier:a3];
    if (v4)
    {
      v5 = v4;
      [(PKToolPicker *)self _setSelectedTool:v4 saveState:1 updateUI:1 updateLastSelectedTool:1];
      v4 = v5;
    }
  }
}

- (void)_setEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__enabled != a3)
  {
    self->__enabled = a3;
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

- (void)_setWantsExternalVisibility:(BOOL)a3
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

- (void)_lockHiddenNotify:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  ++self->_wantsToolPickerHiddenCount;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    wantsToolPickerHiddenCount = self->_wantsToolPickerHiddenCount;
    v9 = 134218496;
    v10 = self;
    v11 = 2048;
    v12 = wantsToolPickerHiddenCount;
    v13 = 1024;
    v14 = [(PKToolPicker *)self isVisible];
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "ToolPicker: %p, locking tool picker visibility hidden, count: %ld, isVisible: %{BOOL}d", &v9, 0x1Cu);
  }

  if ([(PKToolPicker *)self isVisible])
  {
    v7 = objc_alloc_init(PKToolPickerVisibilityContext);
    v8 = v7;
    if (v7)
    {
      v7->_shouldNotifyDuringUpdate = a3;
    }

    [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v7 completion:0];
  }
}

- (void)_unlockHiddenNotify:(BOOL)a3
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
      v13 = self;
      v14 = 2048;
      v15 = v9;
      v16 = 1024;
      v17 = [(PKToolPicker *)self isVisible];
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_INFO, "ToolPicker: %p, unlocking tool picker visibility hidden, count: %ld, isVisible: %{BOOL}d", &v12, 0x1Cu);
    }

    if (!self->_wantsToolPickerHiddenCount)
    {
      v10 = objc_alloc_init(PKToolPickerVisibilityContext);
      v11 = v10;
      if (v10)
      {
        v10->_shouldNotifyDuringUpdate = a3;
      }

      [(PKToolPicker *)self _updateToolPickerVisibilityForFirstResponder:0 withContext:v10 completion:0];
    }
  }
}

- (void)setMaximumSupportedContentVersion:(PKContentVersion)maximumSupportedContentVersion
{
  self->_maximumSupportedContentVersion = maximumSupportedContentVersion;
  v4 = [(PKToolPicker *)self _tools];
  v5 = [v4 count];
  v6 = [(PKToolPicker *)self _paletteView];
  v7 = [v6 showsPlusButton];
  v8 = 5.0;
  v9 = 2.0;
  if (!v7)
  {
    v9 = 5.0;
  }

  if (v5 >= 8)
  {
    v8 = v9;
  }

  self->__interItemToolsSpacingInCompactSize = v8;

  v10 = [(PKToolPicker *)self _tools];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKToolPicker_setMaximumSupportedContentVersion___block_invoke;
  v12[3] = &unk_1E82D7058;
  v12[4] = self;
  v11 = [v10 indexesOfObjectsPassingTest:v12];

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

- (void)_setPresentsDetached:(BOOL)a3
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

- (void)_setDoneButtonVisible:(BOOL)a3
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

- (void)_restoreToolPickerStateNotify:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(PKToolPicker *)self _isToolStatePersistenceEnabled];
  v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
  v7 = v6;
  if (v5)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
      v17 = 138477827;
      v18 = v9;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Restore state for name: %{private}@", &v17, 0xCu);
    }

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    v11 = [v7 dictionaryForKey:v10];

    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"PKPaletteTools"];
      if (v12)
      {
        v13 = v12;
        [(PKToolPicker *)self _restoreToolPickerStateFromRepresentation:v12 notify:v3];
      }

      else
      {
        v14 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
          v17 = 138412290;
          v18 = v16;
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
        v15 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
        v17 = 138412290;
        v18 = v15;
        _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Missing defaults dictionary to restore state for: %@", &v17, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Tried to restore state but persistence is disabled.", &v17, 2u);
  }
}

- (void)_restoreToolPickerStateFromRepresentation:(id)a3 notify:(BOOL)a4
{
  v43 = a4;
  v59 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v45 = [(PKToolPicker *)self _validatedEncodedToolsArray:?];
  v5 = [PKToolPicker _keyEncodedToolsByIdentifier:?];
  v6 = [(PKToolPicker *)self toolItems];
  v7 = [MEMORY[0x1E695DF70] array];
  v44 = self;
  v51 = self->_selectedTool;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v6;
  v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v53)
  {
    v52 = *v55;
    v48 = v7;
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
        v10 = [v9 identifier];
        v11 = [v5 objectForKeyedSubscript:v10];

        v12 = [v9 _tool];
        v13 = [v12 ink];
        v14 = [v13 identifier];

        if (!v11)
        {
          if ((-[__CFString isEqualToString:](v14, "isEqualToString:", @"com.apple.ink.custom") & 1) != 0 || ([v5 objectForKeyedSubscript:v14], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
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
              v14 = v16;
              goto LABEL_15;
            }

            v14 = @"com.apple.ink.eraser";

            v15 = [v5 objectForKeyedSubscript:v14];
          }

          v11 = v15;
        }

LABEL_15:
        v18 = [v9 _tool];
        v19 = v18;
        if (!v11)
        {
          v23 = v18;
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
            v26 = [v25 version];
          }

          else
          {
            v26 = -1;
          }

          v27 = [PKInk inkWithIdentifier:v14 properties:v22 inkVersion:v26];
          v28 = objc_opt_class();
          v29 = PKDynamicCast(v28, v19);
          if (v29)
          {
            v30 = [v27 color];
            v31 = [v29 copyWithScrubbedColor:v30];

            [v27 weight];
            v23 = [v31 copyWithScrubbedWeight:?];
            v32 = v19;
            goto LABEL_27;
          }

          v33 = [v27 identifier];
          v34 = [v33 isEqualToString:@"com.apple.ink.custom"];

          v23 = v19;
          if ((v34 & 1) == 0)
          {
            v31 = v27;
            v35 = [v19 _configuration];
            v36 = [v35 supportsColor];

            if ((v36 & 1) == 0)
            {
              v37 = [v19 ink];
              v38 = [v37 color];
              v47 = [PKInk inkFromInk:v31 color:v38];

              v31 = v47;
            }

            v32 = [v19 _configuration];
            v23 = [PKTool _toolWithInk:v31 configuration:v32];

LABEL_27:
          }

          v39 = [v19 _toolPickerItemIdentifier];
          [v23 _setToolPickerItemIdentifier:v39];

          v7 = v48;
          v5 = v49;
        }

        v40 = [v11 objectForKeyedSubscript:@"isSelected"];
        v41 = [v40 BOOLValue];

        if (v41)
        {
          v42 = v23;

          v51 = v42;
        }

LABEL_32:
        [v7 addObject:v23];
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v53);
  }

  [(PKToolPicker *)v44 _resetTools:v7 selectedTool:v51 notify:v43];
  [(PKToolPicker *)v44 _updateUI];
}

+ (id)_keyEncodedToolsByIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
          v14 = [v4 objectForKeyedSubscript:v13];

          if (!v14)
          {
            [v4 setObject:v10 forKeyedSubscript:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_validatedEncodedToolsArray:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v5)
    {
      goto LABEL_38;
    }

    v6 = v5;
    v30 = v3;
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
                  v22 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
                  *buf = 138543618;
                  v42 = v32;
                  v43 = 2112;
                  v44 = v22;
                  v23 = v22;
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
                    v31 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
                    *buf = 138543618;
                    v42 = v33;
                    v43 = 2112;
                    v44 = v31;
                    _os_log_error_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class for selected bit: %{public}@ from: %@", buf, 0x16u);
                  }
                }

                else
                {
                  [v35 addObject:v10];
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
            v14 = NSStringFromClass(v19);
            v20 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
            *buf = 138543618;
            v42 = v14;
            v43 = 2112;
            v44 = v20;
            _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary with wrong class for identifier: %{public}@ from: %@", buf, 0x16u);
          }

          else
          {
            v13 = os_log_create("com.apple.pencilkit", "ToolPicker");
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            v14 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
            *buf = 138412290;
            v42 = v14;
            _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Skipping decode of tool dictionary missing identifier from: %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v12 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
          *buf = 138543618;
          v42 = v17;
          v43 = 2112;
          v44 = v18;
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
        v3 = v30;
        goto LABEL_38;
      }
    }
  }

  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    *buf = 138543618;
    v42 = v28;
    v43 = 2112;
    v44 = v29;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Encoded tools array has wrong class: %{public}@ from: %@", buf, 0x16u);
  }

  v35 = MEMORY[0x1E695E0F0];
LABEL_38:

  return v35;
}

- (void)_saveToolPickerState
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PKToolPicker *)self _isToolStatePersistenceEnabled])
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    v5 = [v3 dictionaryForKey:v4];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
    }

    v7 = [(PKToolPicker *)self _toolsState];
    [v6 setObject:v7 forKey:@"PKPaletteTools"];

    v8 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
    [v3 setObject:v6 forKey:v8];

    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PKToolPicker *)self _paletteViewStateRestorationDefaultsKey];
      v11 = 138477827;
      v12 = v10;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Did save state for name: %{private}@", &v11, 0xCu);
    }
  }

  else
  {
    v3 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Tried to save state but persistence is disabled.", &v11, 2u);
    }
  }
}

- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = v6;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "keyboardSceneDelegate inputViewSetVisibilityDidChange isVisible: %d, includedReset: %d", v12, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_keyboardSceneDelegateVisibilityObserver);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_keyboardSceneDelegateVisibilityObserver);
    [v11 keyboardSceneDelegate:v8 inputViewSetVisibilityDidChange:v6 includedReset:v5];
  }
}

- (void)_handleHandwritingEducationPaneSettingsDidChange:(id)a3
{
  if ([(PKToolPicker *)self isVisible])
  {
    v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle handwriting education pane settings did change notification", v6, 2u);
    }

    v5 = [(PKToolPicker *)self _paletteView];
    [v5 handwritingEducationPaneSettingsDidChange];
  }
}

- (PKPaletteHostView)_paletteHostView
{
  toolPickerVisibility = self->_toolPickerVisibility;
  if (!toolPickerVisibility)
  {
    toolPickerVisibility = self->__interaction;
  }

  v4 = [toolPickerVisibility paletteHostView];

  return v4;
}

- (void)_updatePaletteTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceStyle];

  [(PKToolPicker *)self _updatePaletteUserInterfaceStyle:v4];
}

- (void)_updatePaletteUserInterfaceStyle:(int64_t)a3
{
  [(PKPaletteViewInteraction *)self->__interaction _updatePaletteUserInterfaceStyle:a3];

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

- (BOOL)_internalClassesAcceptingFirstResponderContainsObject:(id)a3
{
  v3 = a3;
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

+ (BOOL)_internalClassWantsToolPicker:(id)a3 visibleForResponder:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 _wantsToolPickerVisible:v5];
    goto LABEL_35;
  }

  if (![v5 _internalClassesAcceptingFirstResponderContainsObject:v6])
  {
    v22 = [v6 pencilKitResponderState];
    v23 = [v22 _currentActiveToolPicker];
    v24 = v23;
    if (v23 == v5)
    {
      v25 = [v6 pencilKitResponderState];
      v26 = [v25 _currentToolPickerVisibility];

      if (v26 == 3)
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

  v29 = v6;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v5 _firstRespondersForVisibleUI];
  v9 = [v8 keyEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v28 = v6;
  v12 = *v31;
  v13 = v29;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
          goto LABEL_23;
        }

        v16 = [v15 view];
      }

      v17 = v16;
      if (v16)
      {
        v18 = [v16 window];
        v19 = [v13 window];
        v20 = v19;
        if (v18 == v19)
        {
          v21 = [v5 _wasVisibleBeforeResponderChanges];

          if (v21)
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

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v7 = 0;
LABEL_29:
  v6 = v28;
LABEL_31:

LABEL_35:
  return v7;
}

+ (BOOL)_textInputWantsToolPickerVisible:(id)a3 forFirstResponder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqual:@"com.apple.mobilenotes"];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [v6 _paletteView];
  v12 = [v11 windowFirstResponder];

  if (v12)
  {
    v13 = [v6 _paletteView];
    v14 = [v13 windowFirstResponder];
    v15 = [v14 textInputSource];
  }

  else
  {
    v15 = [PKTextInputUtilities responderTextInputSource:v7];
  }

  if (v15 != 3 || ![v6 _isHandwritingToolSelected])
  {
    [v6 _isHandwritingToolSelected];
LABEL_12:
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

  NSClassFromString(&cfstr_Ictextview.isa);
  v16 = v7;
  if (!v16)
  {
    goto LABEL_15;
  }

  while ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [v16 nextResponder];

    v16 = v17;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

  v20 = [v16 _responderWindow];
  v21 = [v20 windowScene];
  v22 = [a1 _windowSceneForToolPicker:v6];

  if (v21 == v22)
  {
    v23 = [v16 findInteraction];
    v18 = [v23 isFindNavigatorVisible] ^ 1;
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_presentViewController:(id)a3 asPopoverFromItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKToolPicker *)self _paletteView];
  [v8 _presentViewController:v7 asPopoverFromItem:v6];
}

- (UIViewController)presentationViewController
{
  v2 = [(PKToolPicker *)self _paletteView];
  v3 = [v2 palettePopoverPresentingController];

  return v3;
}

- (NSArray)passthroughViews
{
  v2 = [(PKToolPicker *)self _paletteView];
  v3 = [v2 palettePopoverPassthroughViews];

  return v3;
}

- (unint64_t)permittedArrowDirections
{
  v2 = [(PKToolPicker *)self _paletteView];
  v3 = [v2 palettePopoverPermittedArrowDirections];

  return v3;
}

- (UIEdgeInsets)layoutSceneMargins
{
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 palettePopoverLayoutSceneMargins];
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

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 _supportsPencil];

  if (!v3)
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E69DCD58] hasSeenPencilPairingUI];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 BOOLForKey:@"PKForceShowHandwritingTool"];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.dt.xctest.tool"];

    if (v11)
    {
      return 1;
    }
  }

  v4 = +[PKTextInputSettings sharedSettings];
  v5 = [v4 recognitionLocaleIdentifier];
  v6 = v5 != 0;

  return v6;
}

- (void)_setShowsHandwritingTool:(BOOL)a3
{
  v3 = a3;
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

  else if (self->__showsHandwritingTool != v3)
  {
    self->__showsHandwritingTool = v3;
    if (v3)
    {
      v3 = [objc_opt_class() _canShowHandwritingTool];
    }

    v6 = [(PKToolPicker *)self _hasHandwritingTool];
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      showsHandwritingTool = self->__showsHandwritingTool;
      v11 = 67109120;
      LODWORD(v12) = showsHandwritingTool;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Should show handwriting tool: %d", &v11, 8u);
    }

    if (v3 != v6)
    {
      v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"HIDDEN";
        if (v3)
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
  v3 = [v2 _isHandwritingInk];

  return v3;
}

- (void)_updateHandwritingInputAssistantItems
{
  v3 = [(PKToolPicker *)self _isHandwritingToolSelected];
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Update handwriting assistant items.", v6, 2u);
    }

    v4 = [(PKToolPicker *)self _paletteView];
    [v4 updateHandwritingAssistantItems];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Can't update handwriting assistant items if handwriting tool isn't the selected tool.", buf, 2u);
  }
}

- (BOOL)_isCanvasGenerationToolSelected
{
  v2 = [(PKTool *)self->_selectedTool ink];
  v3 = [v2 _isGenerationTool];

  return v3;
}

- (void)_textInputResponderDidReloadNotification:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v6, 0xCu);
  }

  [(PKToolPicker *)self _updateHandwritingInputAssistantItems];
}

- (void)_addTool:(id)a3
{
  mutableTools = self->_mutableTools;
  v5 = a3;
  [(PKToolPicker *)self _insertTool:v5 atIndex:[(NSMutableArray *)mutableTools count]];
}

- (void)_addTool:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  mutableTools = self->_mutableTools;
  v7 = a3;
  [(PKToolPicker *)self _insertTool:v7 atIndex:[(NSMutableArray *)mutableTools count] updateUI:v4];
}

- (void)_insertTool:(id)a3 atIndex:(unint64_t)a4 updateUI:(BOOL)a5
{
  v5 = a5;
  v12 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([(PKToolPicker *)self _canInsertTool:v8])
  {
    [(NSMutableArray *)self->_mutableTools insertObject:v8 atIndex:a4];
    if (v5)
    {
      [(PKToolPicker *)self _updateUI];
    }

    [(PKToolPickerItemManager *)self->_toolItemManager _addTool:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Can't insert tool: %@", &v10, 0xCu);
    }
  }
}

- (BOOL)_canInsertTool:(id)a3
{
  v4 = a3;
  v5 = [v4 _isLassoTool];
  v6 = [(PKToolPicker *)self _hasLassoTool];
  if (v5 || ([v4 ink], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_isEraserInk"), v7, v6 = -[PKToolPicker _hasEraserTool](self, "_hasEraserTool"), v8) || (objc_msgSend(v4, "ink"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_isHandwritingInk"), v9, v6 = -[PKToolPicker _hasHandwritingTool](self, "_hasHandwritingTool"), v10))
  {
    v11 = !v6;
  }

  else
  {
    v11 = [(PKToolPicker *)self _indexOfTool:v4]== 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)_removeTool:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(PKToolPicker *)self _canRemoveTool:v6])
  {
    [(NSMutableArray *)self->_mutableTools removeObjectAtIndex:[(PKToolPicker *)self _indexOfTool:v6]];
    if (v4)
    {
      [(PKToolPicker *)self _updateUI];
    }

    [(PKToolPickerItemManager *)self->_toolItemManager _removeTool:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Can't remove tool: %@", &v8, 0xCu);
    }
  }
}

- (void)_removeToolsAtIndexes:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  mutableTools = self->_mutableTools;
  v7 = a3;
  v8 = [(NSMutableArray *)mutableTools copy];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__PKToolPicker__removeToolsAtIndexes_updateUI___block_invoke;
  v14 = &unk_1E82D7080;
  v9 = v8;
  v15 = v9;
  v16 = self;
  [v7 enumerateIndexesUsingBlock:&v11];
  v10 = [v7 count];

  if (v10 && v4)
  {
    [(PKToolPicker *)self _updateUI];
  }
}

void __47__PKToolPicker__removeToolsAtIndexes_updateUI___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [*(a1 + 40) _removeTool:v3 updateUI:0];
}

- (BOOL)_canRemoveTool:(id)a3
{
  v4 = a3;
  if ([(PKToolPicker *)self _indexOfTool:v4]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else if (self->_selectedTool == v4)
  {
    v6 = [(PKTool *)v4 ink];
    v5 = [v6 _isGenerationTool];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_resetTools:(id)a3 selectedTool:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  p_selectedTool = &self->_selectedTool;
  v11 = self->_selectedTool;
  if (([(NSMutableArray *)self->_mutableTools isEqual:v8]& 1) != 0)
  {
    v12 = [(PKToolPicker *)self _indexOfTool:v9 tools:v8];
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
    if (v11 != *p_selectedTool && v5)
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

  if ([(PKToolPicker *)self _canResetToolsFrom:v8])
  {
    v37 = v11;
    v36 = [(NSMutableArray *)self->_mutableTools copy];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[PKTool count](v8, "count")}];
    v16 = self->_mutableTools;
    self->_mutableTools = v15;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v8;
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
          if (v22 == v9 && v23 != 0x7FFFFFFFFFFFFFFFLL)
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
      v28 = [(NSMutableArray *)self->_mutableTools firstObject];
      selectedTool = self->_selectedTool;
      self->_selectedTool = v28;

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
    v44 = v8;
    _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "Can't reset tools to: %@", buf, 0xCu);
  }

LABEL_36:
}

- (unint64_t)_indexOfTool:(id)a3 tools:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [v8 _toolPickerItemIdentifier];
      v10 = [v5 _toolPickerItemIdentifier];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        break;
      }

      if (++v7 >= [v6 count])
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
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 _performPencilPreferredActionSwitchEraser];
}

- (void)_performPencilPreferredActionSwitchPrevious
{
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 _performPencilPreferredActionSwitchPrevious];
}

- (void)_performPencilPreferredActionShowColorPalette
{
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 _performPencilPreferredActionShowColorPalette];
}

- (void)_setSelectionMask:(unint64_t)a3 updateUI:(BOOL)a4
{
  if (self->_selectionMask != a3)
  {
    self->_selectionMask = a3;
    if (a4)
    {
      [(PKToolPicker *)self _updateUI];
    }
  }
}

- (void)setColorSwatchesVisible:(BOOL)a3
{
  if (self->_colorSwatchesVisible != a3)
  {
    self->_colorSwatchesVisible = a3;
    [(PKToolPicker *)self _updateUI];
  }
}

- (void)setPrefersLargeContextualEditingUI:(BOOL)a3
{
  if (self->_prefersLargeContextualEditingUI != a3)
  {
    self->_prefersLargeContextualEditingUI = a3;
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
  v3 = [(PKToolPicker *)self _observers];
  v4 = [v3 copy];

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
      v12 = [(PKToolPicker *)self _paletteView];
      [v12 startOpacityEditing];

      v13 = [(PKToolPicker *)self _paletteView];
      v14 = [v13 opacityEditingView];
      [v11 _toolPicker:self startEditingOpacityWithAccessoryView:v14];

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
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 endOpacityEditing];
}

- (void)set_temporarySelectionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__temporarySelectionDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__temporarySelectionDelegate, obj);
    v6 = [(PKToolPicker *)self _paletteView];
    [v6 updateColorPickerSelectedColor];

    v5 = obj;
  }
}

- (void)_dismissPopovers
{
  v2 = [(PKToolPicker *)self _paletteView];
  [v2 dismissPalettePopoverWithCompletion:0];
}

- (void)_canvasViewWillBeginDrawing:(id)a3
{
  if (PKIsVisionDevice())
  {

    [(PKToolPicker *)self _dismissPopovers];
  }
}

- (void)_setContextMenuPresented:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__contextMenuPresented != a3)
  {
    self->__contextMenuPresented = a3;
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

- (void)_setOverlapsWindow:(BOOL)a3
{
  v3 = a3;
  if (PKIsVisionDevice() && self->__overlapsMainWindow != v3)
  {
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
    }
  }
}

- (void)_setSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4
{
  v5 = [(PKTool *)self->_selectedTool _copyWithColor:a3, a4];
  [(PKToolPicker *)self _setSelectedTool:v5 saveState:1 updateUI:1 updateLastSelectedTool:0];
}

- (void)_handleDidInvokeAddTextBox
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
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
    v3 = [*(v1 + 200) copy];
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
              v15 = v1;
              v16 = v8;
              v18 = v17 = v7;
              *buf = 138412290;
              v24 = v18;
              _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Invoke add text-box on observer: %@", buf, 0xCu);

              v7 = v17;
              v8 = v16;
              v1 = v15;
              v3 = v14;
              v6 = v13;
              v5 = v12;
            }

            [v10 _toolPickerDidInvokeAddTextBox:v1];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v5);
    }
  }
}

- (void)_handleInsertStickerFromItemProvider:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a2;
  if (a1)
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
    v3 = [*(a1 + 200) copy];
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

            [v10 _toolPickerDidInvokeInsertSticker:a1 fromItemProvider:v17];
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
  if (!a1)
  {
    return 0.0;
  }

  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = +[PKPaletteView _makeScaleFactorPolicy];
  v12 = [a1 _paletteView];
  [v11 scaleFactorForWindowBounds:v12 paletteView:{v4, v6, v8, v10}];
  v14 = v13;

  return v14;
}

- (void)toolPickerItemDidChange:(id)a3
{
  v14 = a3;
  v4 = [v14 _tool];
  v5 = [(PKToolPicker *)self _indexOfTool:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(NSMutableArray *)self->_mutableTools objectAtIndexedSubscript:v5];
    if (([v4 isEqual:v7] & 1) == 0)
    {
      [(PKToolPicker *)self _dismissPopovers];
      mutableTools = self->_mutableTools;
      v9 = [v14 _tool];
      [(NSMutableArray *)mutableTools replaceObjectAtIndex:v6 withObject:v9];

      v10 = [v14 identifier];
      v11 = [(PKTool *)self->_selectedTool _toolPickerItemIdentifier];
      LODWORD(v9) = [v10 isEqualToString:v11];

      if (v9)
      {
        v12 = [v14 _tool];
        selectedTool = self->_selectedTool;
        self->_selectedTool = v12;
      }

      [(PKToolPicker *)self _saveToolPickerState];
      [(PKToolPicker *)self _updateUIOnUpdateLink:1];
    }
  }
}

- (void)toolPickerItemReloadImage:(id)a3
{
  v4 = a3;
  v5 = [(PKToolPicker *)self _paletteView];
  [v5 _reloadImageForToolItem:v4];
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

+ (void)_setPrefersPencilOnlyDrawingForiWork:(BOOL)a3
{
  v3 = a3;
  if (PKIsiWork())
  {

    [PKSettingsDaemon setPrefersPencilOnlyDrawing:v3];
  }
}

+ (void)_setPrefersHoverPreviewEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v5 = a4;
  if ((PKIsiWork() & 1) != 0 || ([MEMORY[0x1E696AAE8] mainBundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.freeform"), v7, v6, v8))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKToolPicker_iWorkSPI___setPrefersHoverPreviewEnabled_withCompletion___block_invoke;
    v9[3] = &unk_1E82D6F70;
    v10 = v5;
    [PKSettingsDaemon setPrefersPencilHoverPreviewEnabled:v4 withCompletion:v9];
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

- (void)_showImageWandTipWithController:(id)a3
{
  v4 = a3;
  if ([(PKToolPicker *)self isVisible])
  {
    v5 = [(PKToolPicker *)self _paletteView];
    [v5 showImageWandTipWithController:v4];

    if (([v4 tipStatusIsInvalid] & 1) == 0)
    {
      [v4 setDelegate:self];
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

- (void)imageWandTipControllerTipStatusDidUpdate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109632;
    v6[1] = [v4 tipStatusIsInvalid];
    v7 = 1024;
    v8 = [v4 tipStatusIsPending];
    v9 = 1024;
    v10 = [v4 tipStatusIsAvailable];
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Image Wand Tip status did update, invalid: %{BOOL}d, pending: %{BOOL}d, available: %{BOOL}d", v6, 0x14u);
  }

  if ([v4 tipStatusIsInvalid])
  {
    [v4 setDelegate:0];
  }

  else
  {
    [(PKToolPicker *)self _showImageWandTipWithController:v4];
  }
}

@end