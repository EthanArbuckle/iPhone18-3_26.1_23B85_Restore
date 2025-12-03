@interface PKPencilSqueezeControllerPaletteViewDelegateProxy
- (BOOL)paletteView:(id)view canSelectTool:(id)tool atIndex:(unint64_t)index;
- (BOOL)paletteViewCanRedo:(id)redo;
- (BOOL)paletteViewCanUndo:(id)undo;
- (NSUndoManager)cachedUndoManager;
- (id)_currentUndoManager;
- (id)initWithController:(void *)controller paletteView:;
- (uint64_t)dismissEyeDropper;
- (uint64_t)isColorPickerVisible;
- (unint64_t)paletteViewRedoCount:(id)count;
- (unint64_t)paletteViewUndoCount:(id)count;
- (void)_changeWasDone:(id)done;
- (void)_changeWasRedone:(id)redone;
- (void)_changeWasUndone:(id)undone;
- (void)_cycleToolPickerVisible;
- (void)_dismissColorPicker;
- (void)_selectColor:(uint64_t)color isFromExtendedColorPicker:(uint64_t)picker isContinuousColorSelection:(int)selection callColorSelectionHandler:;
- (void)_updateMoreOptionsViewController;
- (void)autoRefineSettingsDidChange;
- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection;
- (void)didDismissViewController:(uint64_t)controller;
- (void)handwritingEducationPaneSettingsDidChange;
- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler;
- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings;
- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar;
- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)refine;
- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)draws;
- (void)moreOptionsViewControllerDidToggleProofreading:(id)proofreading;
- (void)paletteView:(id)view didSelectColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection;
- (void)paletteView:(id)view didSelectTool:(id)tool atIndex:(unint64_t)index;
- (void)paletteViewDidInvokeAddShape:(id)shape sourceView:(id)view;
- (void)paletteViewDidInvokeAddSticker:(id)sticker sourceView:(id)view;
- (void)paletteViewDidInvokeAddTextBox:(id)box sourceView:(id)view;
- (void)paletteViewDidInvokeExtendedColorPicker:(id)picker currentSelectedColor:(id)color sourceView:(id)view;
- (void)paletteViewDidInvokeMoreOptions:(id)options sourceView:(id)view;
- (void)paletteViewDidInvokeRedo:(id)redo;
- (void)paletteViewDidInvokeSignature:(id)signature sourceView:(id)view;
- (void)paletteViewDidInvokeUndo:(id)undo;
- (void)paletteViewDidTapRuler:(id)ruler;
- (void)pencilInteractionSettingsDidChange;
- (void)setCachedUndoManager:(id)manager;
- (void)stickerPickerViewControllerDidDismiss;
@end

@implementation PKPencilSqueezeControllerPaletteViewDelegateProxy

- (id)initWithController:(void *)controller paletteView:
{
  v5 = a2;
  controllerCopy = controller;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PKPencilSqueezeControllerPaletteViewDelegateProxy;
    v7 = objc_msgSendSuper2(&v13, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 1, v5);
      objc_storeWeak(self + 2, controllerCopy);
      v8 = +[PKStatisticsManager sharedStatisticsManager];
      v9 = self[5];
      self[5] = v8;

      v10 = +[PKHoverSettings sharedSettings];
      v11 = self[6];
      self[6] = v10;
    }
  }

  return self;
}

- (void)pencilInteractionSettingsDidChange
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Handle pencil interaction settings did change", v3, 2u);
    }

    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _updateMoreOptionsViewController];
  }
}

- (void)_updateMoreOptionsViewController
{
  if (!self || ([self[4] isBeingDismissed] & 1) != 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(self + 1);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  if (PKCurrentDeviceSupportsPencil())
  {
    showsDrawingPolicyControls = [_toolPickerForKeyWindow showsDrawingPolicyControls];
  }

  else
  {
    showsDrawingPolicyControls = 0;
  }

  [self[4] setShouldShowFingerDrawsOption:showsDrawingPolicyControls];
  [self[4] setShouldAlwaysShowAutoRefineControls:{objc_msgSend(_toolPickerForKeyWindow, "_shouldAlwaysShowAutoRefineControls")}];
  [self[4] setIsFingerDrawsOn:{objc_msgSend(MEMORY[0x1E69DCD58], "prefersPencilOnlyDrawing") ^ 1}];
  v4 = objc_loadWeakRetained(self + 2);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [self[4] setShouldShowTapToRadarOption:-[PKSqueezePaletteViewContext canShowTapToRadar](v7)];

  v8 = objc_loadWeakRetained(self + 2);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [self[4] setShouldShowResetHandwritingEducationPane:-[PKSqueezePaletteViewContext canShowResetHandwritingEducationPane](v11)];

  v12 = objc_loadWeakRetained(self + 2);
  v13 = v12;
  if (!v12)
  {
    v14 = 0;
    goto LABEL_20;
  }

  v14 = v12[72];
  if (!v14)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_14;
  }

  v15 = PKCurrentDeviceSupportsPencil();
LABEL_14:
  [self[4] setShouldShowOpenPencilSettingsOption:v15];

  [self[4] setIsAutoRefineOn:{+[PKSettingsDaemon autoRefineEnabled](PKSettingsDaemon, "autoRefineEnabled")}];
  [self[4] setIsProofreadingOn:{+[PKSettingsDaemon proofreadingEnabled](PKSettingsDaemon, "proofreadingEnabled")}];
}

- (void)autoRefineSettingsDidChange
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Handle AutoRefine settings did change", v3, 2u);
    }

    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _updateMoreOptionsViewController];
  }
}

- (void)handwritingEducationPaneSettingsDidChange
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Handle handwriting education pane settings did change", v3, 2u);
    }

    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _updateMoreOptionsViewController];
  }
}

- (uint64_t)dismissEyeDropper
{
  if (result)
  {
    v1 = result;
    if (*(result + 64))
    {
      v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Dismiss eye dropper", v3, 2u);
      }

      return [*(v1 + 64) dismissEyeDropper];
    }
  }

  return result;
}

- (void)didDismissViewController:(uint64_t)controller
{
  v3 = a2;
  if (controller)
  {
    v4 = *(controller + 32);
    if (v4 == v3)
    {
      *(controller + 32) = 0;
      v5 = v3;

      v3 = v5;
    }
  }
}

- (void)_changeWasUndone:(id)undone
{
  if (![(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self isUndoRedoInvoked])
  {
    if (self && (WeakRetained = objc_loadWeakRetained(&self->_paletteView)) != 0)
    {
      v7 = WeakRetained;
      v5 = *(WeakRetained + 71);
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    v6 = v5;
    [v6 updateUI];
  }
}

- (void)_changeWasRedone:(id)redone
{
  if (![(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self isUndoRedoInvoked])
  {
    if (self && (WeakRetained = objc_loadWeakRetained(&self->_paletteView)) != 0)
    {
      v7 = WeakRetained;
      v5 = *(WeakRetained + 71);
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    v6 = v5;
    [v6 updateUI];
  }
}

- (void)_changeWasDone:(id)done
{
  if (![(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self isUndoRedoInvoked])
  {
    if (self && (WeakRetained = objc_loadWeakRetained(&self->_paletteView)) != 0)
    {
      v7 = WeakRetained;
      v5 = *(WeakRetained + 71);
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    v6 = v5;
    [v6 updateUI];
  }
}

- (id)_currentUndoManager
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 1);
    _currentUndoManager = [(PKPencilSqueezeController *)WeakRetained _currentUndoManager];

    cachedUndoManager = [self cachedUndoManager];

    if (cachedUndoManager != _currentUndoManager)
    {
      [self setCachedUndoManager:_currentUndoManager];
    }
  }

  else
  {
    _currentUndoManager = 0;
  }

  return _currentUndoManager;
}

- (void)setCachedUndoManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_cachedUndoManager);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_cachedUndoManager);

    if (self)
    {
      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_cachedUndoManager);

        if (v6)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v8 = *MEMORY[0x1E696AA30];
          v9 = objc_loadWeakRetained(&self->_cachedUndoManager);
          [defaultCenter removeObserver:self name:v8 object:v9];

          v10 = *MEMORY[0x1E696AA28];
          v11 = objc_loadWeakRetained(&self->_cachedUndoManager);
          [defaultCenter removeObserver:self name:v10 object:v11];

          v12 = *MEMORY[0x1E696AA18];
          v13 = objc_loadWeakRetained(&self->_cachedUndoManager);
          [defaultCenter removeObserver:self name:v12 object:v13];

          objc_storeWeak(&self->_cachedUndoManager, 0);
        }
      }
    }

    v14 = objc_storeWeak(&self->_cachedUndoManager, obj);

    if (obj)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = *MEMORY[0x1E696AA30];
      v17 = objc_loadWeakRetained(&self->_cachedUndoManager);
      [defaultCenter2 addObserver:self selector:sel__changeWasUndone_ name:v16 object:v17];

      v18 = *MEMORY[0x1E696AA28];
      v19 = objc_loadWeakRetained(&self->_cachedUndoManager);
      [defaultCenter2 addObserver:self selector:sel__changeWasRedone_ name:v18 object:v19];

      v20 = *MEMORY[0x1E696AA18];
      v21 = objc_loadWeakRetained(&self->_cachedUndoManager);
      [defaultCenter2 addObserver:self selector:sel__changeWasDone_ name:v20 object:v21];
    }
  }
}

- (BOOL)paletteViewCanUndo:(id)undo
{
  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  canUndo = [_currentUndoManager canUndo];

  return canUndo;
}

- (BOOL)paletteViewCanRedo:(id)redo
{
  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  canRedo = [_currentUndoManager canRedo];

  return canRedo;
}

- (void)paletteViewDidInvokeUndo:(id)undo
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _currentFirstResponder = [(PKPencilSqueezeController *)WeakRetained _currentFirstResponder];

  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _pkDebugStringRepresentation = [_currentFirstResponder _pkDebugStringRepresentation];
    v13 = 138478083;
    v14 = _pkDebugStringRepresentation;
    v15 = 2113;
    v16 = _currentUndoManager;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Perform undo action, current FR: %{private}@, undoManager: %{private}@", &v13, 0x16u);
  }

  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self setIsUndoRedoInvoked:1];
  [_currentUndoManager undo];
  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self setIsUndoRedoInvoked:0];
  v9 = objc_loadWeakRetained(&self->_controller);
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 31);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [(PKPencilSqueezeAnalyticsController *)v12 didUseMiniPalette];
}

- (void)paletteViewDidInvokeRedo:(id)redo
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _currentFirstResponder = [(PKPencilSqueezeController *)WeakRetained _currentFirstResponder];

  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _pkDebugStringRepresentation = [_currentFirstResponder _pkDebugStringRepresentation];
    v13 = 138478083;
    v14 = _pkDebugStringRepresentation;
    v15 = 2113;
    v16 = _currentUndoManager;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Perform redo action, current FR: %{private}@, undoManager: %{private}@", &v13, 0x16u);
  }

  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self setIsUndoRedoInvoked:1];
  [_currentUndoManager redo];
  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self setIsUndoRedoInvoked:0];
  v9 = objc_loadWeakRetained(&self->_controller);
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 31);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [(PKPencilSqueezeAnalyticsController *)v12 didUseMiniPalette];
}

- (unint64_t)paletteViewUndoCount:(id)count
{
  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  undoCount = [_currentUndoManager undoCount];

  return undoCount;
}

- (unint64_t)paletteViewRedoCount:(id)count
{
  _currentUndoManager = [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _currentUndoManager];
  redoCount = [_currentUndoManager redoCount];

  return redoCount;
}

- (void)paletteViewDidTapRuler:(id)ruler
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138477827;
    v12 = _toolPickerForKeyWindow;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Ruler tool tapped, notify tool picker: %{private}@", &v11, 0xCu);
  }

  if (([_toolPickerForKeyWindow _isHandwritingToolSelected] & 1) == 0)
  {
    if (_toolPickerForKeyWindow)
    {
      [_toolPickerForKeyWindow setRulerActive:{objc_msgSend(_toolPickerForKeyWindow, "isRulerActive") ^ 1}];
    }

    v7 = objc_loadWeakRetained(&self->_controller);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 31);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [(PKPencilSqueezeAnalyticsController *)v10 didUseMiniPalette];
  }
}

- (BOOL)paletteView:(id)view canSelectTool:(id)tool atIndex:(unint64_t)index
{
  toolCopy = tool;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v8 = [PKPencilSqueezeController _canSelectTool:toolCopy atIndex:?];

  return v8;
}

- (void)paletteView:(id)view didSelectTool:(id)tool atIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  v9 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138478083;
    v16 = toolCopy;
    v17 = 2113;
    v18 = _toolPickerForKeyWindow;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Select tool: %{private}@, on tool picker: %{private}@", &v15, 0x16u);
  }

  [_toolPickerForKeyWindow setSelectedTool:toolCopy];
  v10 = objc_loadWeakRetained(&self->_controller);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 31);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  [(PKPencilSqueezeAnalyticsController *)v13 didUseMiniPalette];

  v14 = objc_loadWeakRetained(&self->_controller);
  [PKPencilSqueezeController _didSelectTool:v14 atIndex:toolCopy];
}

- (void)paletteView:(id)view didSelectColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection
{
  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _selectColor:color isFromExtendedColorPicker:picker isContinuousColorSelection:selection callColorSelectionHandler:0];
  if (!picker)
  {
    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _dismissColorPicker];
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 31);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [(PKPencilSqueezeAnalyticsController *)v10 didUseMiniPalette];
}

- (void)_selectColor:(uint64_t)color isFromExtendedColorPicker:(uint64_t)picker isContinuousColorSelection:(int)selection callColorSelectionHandler:
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (self)
  {
    if ((picker & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

      v12 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138478083;
        v22 = v9;
        v23 = 2113;
        v24 = _toolPickerForKeyWindow;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Select color: %{private}@, on tool picker: %{private}@", &v21, 0x16u);
      }

      [_toolPickerForKeyWindow _setSelectedColor:v9 isFromExtendedColorPicker:color];
    }

    if (color)
    {
      v13 = objc_loadWeakRetained((self + 16));
      v14 = v13;
      v15 = v13 ? *(v13 + 75) : 0;
      v16 = v15;

      if (v16)
      {
        if (selection)
        {
          v17 = objc_loadWeakRetained((self + 16));
          v18 = v17;
          if (v17)
          {
            v19 = *(v17 + 75);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v20[2](v20, v9, picker);
        }
      }
    }
  }
}

- (void)_dismissColorPicker
{
  v7 = *MEMORY[0x1E69E9840];
  if (self && [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self isColorPickerVisible])
  {
    viewController = [*(self + 64) viewController];
    v3 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138477827;
      v6 = viewController;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Dismiss extended color picker: %{private}@", &v5, 0xCu);
    }

    [viewController dismissViewControllerAnimated:1 completion:0];
    v4 = *(self + 64);
    *(self + 64) = 0;
  }
}

- (void)paletteViewDidInvokeExtendedColorPicker:(id)picker currentSelectedColor:(id)color sourceView:(id)view
{
  v26 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  colorCopy = color;
  viewCopy = view;
  if (!self->_colorPickerController)
  {
    v11 = +[PKPaletteColorPickerControllerFactory makeColorPickerController];
    colorPickerController = self->_colorPickerController;
    self->_colorPickerController = v11;
  }

  if (pickerCopy)
  {
    v13 = pickerCopy[72];
    v14 = v13;
    if (v13)
    {
      v15 = v13[6];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0.0;
LABEL_6:
  [(PKPaletteColorPickerController *)self->_colorPickerController setColorMaximumLinearExposure:v15];

  viewController = [(PKPaletteColorPickerController *)self->_colorPickerController viewController];
  if ([(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self isColorPickerVisible])
  {
    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _dismissColorPicker];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    v18 = WeakRetained;
    if (WeakRetained)
    {
      v19 = WeakRetained[73];
    }

    else
    {
      v19 = 0;
    }

    colorPicker = [(PKPaletteColorPickerController *)self->_colorPickerController colorPicker];
    [colorPicker setColorUserInterfaceStyle:v19];

    colorPicker2 = [(PKPaletteColorPickerController *)self->_colorPickerController colorPicker];
    [colorPicker2 setSelectedColor:colorCopy];

    [(PKPaletteColorPickerController *)self->_colorPickerController setDelegate:self];
    v22 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138477827;
      v25 = viewController;
      _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEFAULT, "Show extended color picker: %{private}@", &v24, 0xCu);
    }

    v23 = objc_loadWeakRetained(&self->_controller);
    [(PKPencilSqueezeController *)v23 _presentViewControllerAsPopover:viewController sourceView:viewCopy];
  }
}

- (uint64_t)isColorPickerVisible
{
  selfCopy = self;
  if (self)
  {
    viewController = [*(self + 64) viewController];
    if (viewController)
    {
      WeakRetained = objc_loadWeakRetained((selfCopy + 8));
      selfCopy = [(PKPencilSqueezeController *)WeakRetained _isPresentedViewController:viewController];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)paletteViewDidInvokeAddTextBox:(id)box sourceView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138477827;
    v13 = _toolPickerForKeyWindow;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Add text box, tool picker: %{private}@", &v12, 0xCu);
  }

  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _cycleToolPickerVisible];
  [(PKToolPicker *)_toolPickerForKeyWindow _handleDidInvokeAddTextBox];
  v8 = objc_loadWeakRetained(&self->_controller);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 31);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [(PKPencilSqueezeAnalyticsController *)v11 didUseMiniPalette];
}

- (void)_cycleToolPickerVisible
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    _keyWindow = [(PKPencilSqueezeController *)WeakRetained _keyWindow];

    v4 = objc_loadWeakRetained((self + 8));
    _toolPickerForKeyWindow = [(PKPencilSqueezeController *)v4 _toolPickerForKeyWindow];

    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138478083;
      v8 = _toolPickerForKeyWindow;
      v9 = 2113;
      v10 = _keyWindow;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Cycle tool picker visibility, toolPicker: %{private}@, window: %{private}@", &v7, 0x16u);
    }

    if (_toolPickerForKeyWindow)
    {
      [_toolPickerForKeyWindow _setVisibleInWindow:_keyWindow forFirstResponder:0 animated:0 notify:1 completion:0];
      [_toolPickerForKeyWindow _setVisibleInWindow:0 forFirstResponder:0 animated:0 notify:1 completion:0];
    }
  }
}

- (void)paletteViewDidInvokeSignature:(id)signature sourceView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  if (self->_lastPresentedSignaturesViewController)
  {
    v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      lastPresentedSignaturesViewController = self->_lastPresentedSignaturesViewController;
      v26 = 138478083;
      v27 = lastPresentedSignaturesViewController;
      v28 = 2113;
      v29 = _toolPickerForKeyWindow;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Hide Signature view controller: %{private}@, toolPicker: %{private}@", &v26, 0x16u);
    }

    [(UIViewController *)self->_lastPresentedSignaturesViewController dismissViewControllerAnimated:1 completion:0];
    v10 = self->_lastPresentedSignaturesViewController;
    self->_lastPresentedSignaturesViewController = 0;
LABEL_16:

    v23 = objc_loadWeakRetained(&self->_controller);
    v10 = v23;
    if (v23)
    {
      v24 = *(v23 + 31);
    }

    else
    {
      v24 = 0;
    }

    _signaturesViewControllerProvider2 = v24;
    [(PKPencilSqueezeAnalyticsController *)_signaturesViewControllerProvider2 didUseMiniPalette];
    goto LABEL_19;
  }

  v11 = objc_loadWeakRetained(&self->_controller);
  v12 = v11;
  if (v11)
  {
    v10 = objc_loadWeakRetained(v11 + 29);
  }

  else
  {
    v10 = 0;
  }

  _signaturesViewControllerProvider = [_toolPickerForKeyWindow _signaturesViewControllerProvider];
  v14 = _signaturesViewControllerProvider;
  if (_signaturesViewControllerProvider)
  {
    v15 = (*(_signaturesViewControllerProvider + 16))(_signaturesViewControllerProvider, v10);
    if (v15)
    {
      v16 = v15;
LABEL_13:
      v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138478083;
        v27 = v16;
        v28 = 2113;
        v29 = _toolPickerForKeyWindow;
        _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Show signature view controller: %{private}@, toolPicker: %{private}@", &v26, 0x16u);
      }

      v20 = self->_lastPresentedSignaturesViewController;
      self->_lastPresentedSignaturesViewController = v16;
      v21 = v16;

      v22 = objc_loadWeakRetained(&self->_controller);
      [(PKPencilSqueezeController *)v22 _presentViewControllerAsPopover:v21 sourceView:viewCopy];

      goto LABEL_16;
    }
  }

  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _cycleToolPickerVisible];
  _signaturesViewControllerProvider2 = [_toolPickerForKeyWindow _signaturesViewControllerProvider];

  if (_signaturesViewControllerProvider2)
  {
    v18 = _signaturesViewControllerProvider2[2](_signaturesViewControllerProvider2, v10);
    if (v18)
    {
      v16 = v18;
      v14 = _signaturesViewControllerProvider2;
      goto LABEL_13;
    }
  }

  v25 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = 138478083;
    v27 = 0;
    v28 = 2113;
    v29 = _toolPickerForKeyWindow;
    _os_log_error_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_ERROR, "Failed to show signature view controller: %{private}@, toolPicker: %{private}@", &v26, 0x16u);
  }

LABEL_19:
}

- (void)paletteViewDidInvokeAddShape:(id)shape sourceView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  _shapeButtonViewController = [_toolPickerForKeyWindow _shapeButtonViewController];
  if (_shapeButtonViewController || ([(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _cycleToolPickerVisible], [_toolPickerForKeyWindow _shapeButtonViewController], (_shapeButtonViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = _shapeButtonViewController;
    v10 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138478083;
      v17 = v9;
      v18 = 2112;
      v19 = _toolPickerForKeyWindow;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Show Shapes view controller: %{private}@, toolPicker: %@", &v16, 0x16u);
    }

    v11 = objc_loadWeakRetained(&self->_controller);
    [(PKPencilSqueezeController *)v11 _togglePresentViewControllerAsPopover:v9 sourceView:viewCopy];

    v12 = objc_loadWeakRetained(&self->_controller);
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 31);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    [(PKPencilSqueezeAnalyticsController *)v15 didUseMiniPalette];
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138477827;
      v17 = _toolPickerForKeyWindow;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Failed to show shapes view controller for toolPicker: %{private}@", &v16, 0xCu);
    }
  }
}

- (void)paletteViewDidInvokeAddSticker:(id)sticker sourceView:(id)view
{
  viewCopy = view;
  v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Show stickers UI", v17, 2u);
  }

  stickerPickerViewController = self->_stickerPickerViewController;
  if (stickerPickerViewController)
  {
    [(_UIStickerPickerViewController *)stickerPickerViewController dismissCardAnimated:0];
    v8 = self->_stickerPickerViewController;
    self->_stickerPickerViewController = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69DD758]);
  v10 = self->_stickerPickerViewController;
  self->_stickerPickerViewController = v9;

  WeakRetained = objc_loadWeakRetained(&self->_paletteView);
  [(_UIStickerPickerViewController *)self->_stickerPickerViewController setSourceView:WeakRetained];

  [viewCopy frame];
  [(_UIStickerPickerViewController *)self->_stickerPickerViewController setSourceRect:?];
  [(_UIStickerPickerViewController *)self->_stickerPickerViewController setDelegate:self];
  v12 = objc_loadWeakRetained(&self->_controller);
  [(PKPencilSqueezeController *)v12 _presentViewControllerAsPopover:viewCopy sourceView:?];

  v13 = objc_loadWeakRetained(&self->_controller);
  v14 = v13;
  if (v13)
  {
    v15 = *(v13 + 31);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [(PKPencilSqueezeAnalyticsController *)v16 didUseMiniPalette];
}

- (void)paletteViewDidInvokeMoreOptions:(id)options sourceView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  viewCopy = view;
  self->_moreOptionsViewControllerVisible ^= 1u;
  v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    moreOptionsViewControllerVisible = self->_moreOptionsViewControllerVisible;
    moreOptionsViewController = self->_moreOptionsViewController;
    isBeingDismissed = [(PKPaletteMoreOptionsViewController *)moreOptionsViewController isBeingDismissed];
    isBeingPresented = [(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController isBeingPresented];
    *buf = 67109888;
    *v25 = moreOptionsViewControllerVisible;
    *&v25[4] = 2048;
    *&v25[6] = moreOptionsViewController;
    v26 = 1024;
    v27 = isBeingDismissed;
    v28 = 1024;
    v29 = isBeingPresented;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "moreOptionsViewControllerVisible: %d, _moreOptionsViewController: %p, dismissing: %d, presenting: %d", buf, 0x1Eu);
  }

  if (self->_moreOptionsViewControllerVisible)
  {
    if (([(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController isBeingDismissed]& 1) != 0)
    {
      isBeingPresented2 = 1;
    }

    else
    {
      isBeingPresented2 = [(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController isBeingPresented];
    }

    v17 = objc_alloc_init(PKPaletteMoreOptionsViewController);
    v18 = self->_moreOptionsViewController;
    self->_moreOptionsViewController = v17;

    [(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController setDelegate:self];
    [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)&self->super.isa _updateMoreOptionsViewController];
    v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_moreOptionsViewController;
      *buf = 134218240;
      *v25 = v20;
      *&v25[8] = 1024;
      *&v25[10] = isBeingPresented2;
      _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Show More view controller: %p, afterDelay: %{BOOL}d", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__PKPencilSqueezeControllerPaletteViewDelegateProxy_paletteViewDidInvokeMoreOptions_sourceView___block_invoke;
    v21[3] = &unk_1E82D7690;
    objc_copyWeak(&v23, buf);
    v22 = viewCopy;
    PKPerformOnMainThreadNextRunLoop(v21, isBeingPresented2);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_moreOptionsViewController;
      *buf = 138477827;
      *v25 = v15;
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Hide More view controller: %{private}@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [(PKPencilSqueezeController *)WeakRetained _dismissPopovers];
  }
}

void __96__PKPencilSqueezeControllerPaletteViewDelegateProxy_paletteViewDidInvokeMoreOptions_sourceView___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 24))
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = v3[4];
      v7 = [v6 isBeingDismissed];
      v8 = [v3[4] isBeingPresented];
      v9 = 134218496;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "delayed show More view controller: %p, dismissing: %d, presenting: %d", &v9, 0x18u);
    }

    v5 = objc_loadWeakRetained(v3 + 1);
    [(PKPencilSqueezeController *)v5 _presentViewControllerAsPopover:*(a1 + 32) sourceView:?];
  }
}

- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)draws
{
  v11 = *MEMORY[0x1E69E9840];
  isFingerDrawsOn = [draws isFingerDrawsOn];
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = isFingerDrawsOn;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Toggle draw with finger setting, isFingerDrawsOn: %{BOOL}d", v10, 8u);
  }

  [PKSettingsDaemon setPrefersPencilOnlyDrawing:isFingerDrawsOn ^ 1u];
  [PKStatisticsManager recordDrawWithFingerToggle:?];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 31);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(PKPencilSqueezeAnalyticsController *)v9 didUseMiniPalette];
}

- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings
{
  v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Open pencil settings", v9, 2u);
  }

  +[PKSettingsDaemon openPencilPreferences];
  [(PKStatisticsManager *)self->_statisticsManager recordJumpToSettings];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 31);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(PKPencilSqueezeAnalyticsController *)v8 didUseMiniPalette];
}

- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 31);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKPencilSqueezeAnalyticsController *)v5 didUseMiniPalette];
}

- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)refine
{
  isAutoRefineOn = [(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController isAutoRefineOn];

  [PKSettingsDaemon setAutoRefineEnabled:isAutoRefineOn];
}

- (void)moreOptionsViewControllerDidToggleProofreading:(id)proofreading
{
  isProofreadingOn = [(PKPaletteMoreOptionsViewController *)self->_moreOptionsViewController isProofreadingOn];

  [PKSettingsDaemon setProofreadingEnabled:isProofreadingOn];
}

- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  colorPicker = [color colorPicker];
  selectedColor = [colorPicker selectedColor];

  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _selectColor:selectedColor isFromExtendedColorPicker:1 isContinuousColorSelection:selectionCopy callColorSelectionHandler:1];
}

- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  [(PKPencilSqueezeControllerPaletteViewDelegateProxy *)self _cycleToolPickerVisible];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  _toolPickerForKeyWindow = [(PKPencilSqueezeController *)WeakRetained _toolPickerForKeyWindow];

  v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138477827;
    v11 = _toolPickerForKeyWindow;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Insert sticker, tool picker: %{private}@", &v10, 0xCu);
  }

  [(PKToolPicker *)_toolPickerForKeyWindow _handleInsertStickerFromItemProvider:providerCopy];
  [(_UIStickerPickerViewController *)self->_stickerPickerViewController dismissCardAnimated:1];
  stickerPickerViewController = self->_stickerPickerViewController;
  self->_stickerPickerViewController = 0;
}

- (void)stickerPickerViewControllerDidDismiss
{
  stickerPickerViewController = self->_stickerPickerViewController;
  self->_stickerPickerViewController = 0;
}

- (NSUndoManager)cachedUndoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedUndoManager);

  return WeakRetained;
}

@end