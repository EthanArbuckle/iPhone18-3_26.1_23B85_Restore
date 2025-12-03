@interface PKToolPickerPaletteViewDelegateProxy
- (BOOL)paletteView:(id)view shouldChangeSelectedToolColor:(id)color;
- (BOOL)shouldHandlePencilInteractionWhenNotVisible:(id)visible;
- (BOOL)toggleLassoToolEditingViewColorPickerForPaletteView:(id)view;
- (CGRect)paletteViewColorPickerPopoverPresentationSourceRect:(id)rect;
- (id)initWithToolPicker:(id *)picker;
- (id)paletteViewColorPickerPopoverPresentationSourceView:(id)view;
- (id)paletteViewCurrentFirstResponder:(id)responder;
- (id)paletteViewCurrentSelectionColor:(id)color;
- (id)paletteViewUndoManager:(id)manager;
- (void)imageWandOnboardingControllerDidHideView:(id)view;
- (void)paletteView:(id)view didChangeColor:(id)color;
- (void)paletteView:(id)view didChangeTraitCollection:(id)collection;
- (void)paletteView:(id)view didReceivePencilInteractionDidTap:(id)tap;
- (void)paletteView:(id)view didSelectTool:(id)tool atIndex:(unint64_t)index;
- (void)paletteViewContentSizeDidChange:(id)change;
- (void)paletteViewDidChangeInterItemToolsSpacingInCompactSize:(id)size;
- (void)paletteViewDidChangePosition:(id)position fromPosition:(int64_t)fromPosition toPosition:(int64_t)toPosition;
- (void)paletteViewDidChangeScaleFactor:(id)factor;
- (void)paletteViewDidTapCloseButton:(id)button;
- (void)paletteViewDidToggleRuler:(id)ruler;
- (void)paletteViewFirstResponderDidUpdate:(id)update;
- (void)paletteViewToolsDidChange:(id)change;
@end

@implementation PKToolPickerPaletteViewDelegateProxy

- (id)initWithToolPicker:(id *)picker
{
  v3 = a2;
  if (picker)
  {
    v6.receiver = picker;
    v6.super_class = PKToolPickerPaletteViewDelegateProxy;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    picker = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return picker;
}

- (void)paletteViewContentSizeDidChange:(id)change
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_toolPicker);
  }

  selfCopy = self;
  [(PKToolPickerPaletteViewDelegateProxy *)self _paletteContentSizeDidChange];
}

- (void)paletteViewDidChangeScaleFactor:(id)factor
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_toolPicker);
  }

  selfCopy = self;
  [(PKToolPickerPaletteViewDelegateProxy *)self _notifyScaleFactorDidChange];
}

- (id)paletteViewCurrentFirstResponder:(id)responder
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  _currentFirstResponder = [WeakRetained _currentFirstResponder];

  return _currentFirstResponder;
}

- (void)paletteViewFirstResponderDidUpdate:(id)update
{
  windowFirstResponder = [update windowFirstResponder];
  if ([windowFirstResponder isVisible] && ((objc_msgSend(windowFirstResponder, "isEditableTextInput") & 1) != 0 || objc_msgSend(windowFirstResponder, "hasScribbleInteraction")))
  {
    if ([windowFirstResponder textInputSource] == 3)
    {
      v5 = 1;
      if (!self)
      {
        goto LABEL_26;
      }

LABEL_8:
      WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
      goto LABEL_9;
    }

    v5 = [windowFirstResponder textInputSource] == 0;
    if (self)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (self)
    {
      goto LABEL_8;
    }
  }

LABEL_26:
  WeakRetained = 0;
LABEL_9:
  v7 = v5 | ~[WeakRetained _isHandwritingToolSelected];

  if (v7)
  {
    if (self)
    {
      v8 = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      v8 = 0;
    }

    v16 = [PKToolPicker _windowForToolPicker:v8];
  }

  else
  {
    v16 = 0;
  }

  if (self)
  {
    v9 = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    v9 = 0;
  }

  isVisible = [v9 isVisible];

  if (self)
  {
    v11 = objc_loadWeakRetained(&self->_toolPicker);
    [v11 _setVisibleInWindow:v16];

    v12 = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    [0 _setVisibleInWindow:v16];
    v12 = 0;
  }

  isVisible2 = [v12 isVisible];

  if (isVisible != isVisible2)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    v14 = [PKToolPicker _windowSceneForToolPicker:self];

    v15 = [PKTextInputInteraction interactionForScene:v14];
    [v15 _updateKeyboardSuppressionPolicy];
  }
}

- (id)paletteViewUndoManager:(id)manager
{
  managerCopy = manager;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _delegateForSelector:sel__toolPickerUndoManager_];

  if (v6)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    undoManager = [v6 _toolPickerUndoManager:self];
  }

  else
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    _currentFirstResponder = [(PKToolPickerPaletteViewDelegateProxy *)self _currentFirstResponder];
    undoManager = [_currentFirstResponder undoManager];
  }

  return undoManager;
}

- (void)paletteView:(id)view didReceivePencilInteractionDidTap:(id)tap
{
  viewCopy = view;
  tapCopy = tap;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  isVisible = [WeakRetained isVisible];

  if ((isVisible & 1) == 0)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    [(PKToolPickerPaletteViewDelegateProxy *)self _updatePaletteView:viewCopy onUpdateLink:0];
  }
}

- (BOOL)paletteView:(id)view shouldChangeSelectedToolColor:(id)color
{
  viewCopy = view;
  colorCopy = color;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [WeakRetained _delegateForSelector:sel__toolPicker_shouldChangeSelectedToolColor_];

  if (v9)
  {
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 _toolPicker:v10 shouldChangeSelectedToolColor:colorCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)paletteViewCurrentSelectionColor:(id)color
{
  colorCopy = color;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _delegateForSelector:sel__toolPickerCurrentSelectionColor_];

  if (v6)
  {
    if (self)
    {
      v7 = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v6 _toolPickerCurrentSelectionColor:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)paletteView:(id)view didSelectTool:(id)tool atIndex:(unint64_t)index
{
  toolCopy = tool;
  selectedTool = [view selectedTool];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  selectedTool2 = [WeakRetained selectedTool];
  _configuration = [selectedTool2 _configuration];
  v12 = _configuration;
  if (_configuration && (*(_configuration + 20) & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    _configuration2 = [selectedTool _configuration];
    if (_configuration2)
    {
      v13 = _configuration2[20];
    }

    else
    {
      v13 = 0;
    }
  }

  if (self)
  {
    v15 = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    v15 = 0;
  }

  [v15 _setSelectedTool:selectedTool saveState:1 updateUI:v13 & 1];

  v16 = [toolCopy ink];

  if ([v16 _isGenerationTool])
  {
    v17 = +[PKImageWandOnboardingController canShowOnboardingView];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_toolPicker);
      _applicationWindow = [v18 _applicationWindow];
      rootViewController = [_applicationWindow rootViewController];

      if (rootViewController)
      {
        v21 = [PKImageWandOnboardingController alloc];
        v22 = objc_loadWeakRetained(&self->_toolPicker);
        v23 = [(PKImageWandOnboardingController *)&v21->super.isa initWithPresentationViewController:rootViewController toolPicker:v22];
        imageWandOnboardingController = self->_imageWandOnboardingController;
        self->_imageWandOnboardingController = v23;

        v25 = self->_imageWandOnboardingController;
        if (v25)
        {
          objc_storeWeak(&v25->_delegate, self);
          v26 = self->_imageWandOnboardingController;
        }

        else
        {
          v26 = 0;
        }

        [(PKImageWandOnboardingController *)v26 showOnboardingViewAfterDelay:?];
      }

      else
      {
        v27 = os_log_create("com.apple.pencilkit", "ToolPicker");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v28 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_ERROR, "Unable to present Image Wand Onboarding UI; no presentation view controller", v28, 2u);
        }
      }
    }
  }

  else
  {
  }
}

- (void)paletteViewToolsDidChange:(id)change
{
  changeCopy = change;
  tools = [changeCopy tools];
  selectedTool = [changeCopy selectedTool];

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    [WeakRetained _resetTools:tools selectedTool:selectedTool];

    self = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    [0 _resetTools:tools selectedTool:selectedTool];
  }

  [(PKToolPickerPaletteViewDelegateProxy *)self _saveToolPickerState];
}

- (void)paletteViewDidToggleRuler:(id)ruler
{
  rulerCopy = ruler;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    if ([WeakRetained _isHandwritingToolSelected])
    {
      v5 = objc_loadWeakRetained(&self->_toolPicker);
      goto LABEL_4;
    }
  }

  else
  {
    WeakRetained = 0;
    v5 = 0;
    if ([0 _isHandwritingToolSelected])
    {
LABEL_4:
      isRulerActive = [v5 isRulerActive];

      if (!isRulerActive)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  if (self)
  {
    v7 = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    v7 = 0;
  }

  [v7 setRulerActive:{objc_msgSend(v7, "isRulerActive") ^ 1}];

LABEL_11:
  if (self)
  {
    self = objc_loadWeakRetained(&self->_toolPicker);
  }

  isRulerActive2 = [(PKToolPickerPaletteViewDelegateProxy *)self isRulerActive];

  if (isRulerActive2)
  {
    v9 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v9 recordShowRuler];
  }
}

- (void)paletteView:(id)view didChangeTraitCollection:(id)collection
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  collectionCopy = collection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [viewCopy traitCollection];
  if (horizontalSizeClass == [traitCollection horizontalSizeClass])
  {
    verticalSizeClass = [collectionCopy verticalSizeClass];
    traitCollection2 = [viewCopy traitCollection];
    verticalSizeClass2 = [traitCollection2 verticalSizeClass];

    if (verticalSizeClass == verticalSizeClass2)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = viewCopy;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  _observers = [WeakRetained _observers];
  v15 = [_observers copy];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          if (self)
          {
            v21 = objc_loadWeakRetained(&self->_toolPicker);
          }

          else
          {
            v21 = 0;
          }

          [v20 toolPickerFramesObscuredDidChange:v21];
        }

        ++v19;
      }

      while (v17 != v19);
      v22 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v17 = v22;
    }

    while (v22);
  }

  viewCopy = v23;
LABEL_21:
}

- (void)paletteViewDidChangePosition:(id)position fromPosition:(int64_t)fromPosition toPosition:(int64_t)toPosition
{
  v26 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  _observers = [WeakRetained _observers];
  v9 = [_observers copy];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          if (self)
          {
            v15 = objc_loadWeakRetained(&self->_toolPicker);
          }

          else
          {
            v15 = 0;
          }

          [v14 _toolPickerDidChangePosition:v15];
        }

        if (objc_opt_respondsToSelector())
        {
          if (self)
          {
            v16 = objc_loadWeakRetained(&self->_toolPicker);
          }

          else
          {
            v16 = 0;
          }

          [v14 _toolPickerDidChangePosition:v16 fromPosition:fromPosition toPosition:toPosition];
        }

        ++v13;
      }

      while (v11 != v13);
      v17 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v11 = v17;
    }

    while (v17);
  }
}

- (void)paletteView:(id)view didChangeColor:(id)color
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  colorCopy = color;
  if (colorCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = viewCopy;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      WeakRetained = 0;
    }

    _observers = [WeakRetained _observers];
    v10 = [_observers copy];

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            if (self)
            {
              v16 = objc_loadWeakRetained(&self->_toolPicker);
            }

            else
            {
              v16 = 0;
            }

            [v15 _toolPicker:v16 didChangeColor:colorCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v17 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v12 = v17;
      }

      while (v17);
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    viewCopy = v18;
    [(PKToolPickerPaletteViewDelegateProxy *)self _saveToolPickerState];
  }
}

- (CGRect)paletteViewColorPickerPopoverPresentationSourceRect:(id)rect
{
  rectCopy = rect;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _delegateForSelector:sel__colorPickerPopoverPresentationBarButtonItem_];

  if (v6)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    v7 = [v6 _colorPickerPopoverPresentationBarButtonItem:self];

    self = [v7 view];
    [(PKToolPickerPaletteViewDelegateProxy *)self bounds];
  }

  else
  {
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      v12 = 0;
    }

    v7 = [v12 _delegateForSelector:sel__colorPickerPopoverPresentationSourceRect_];

    if (!v7)
    {
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_14;
    }

    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    [v7 _colorPickerPopoverPresentationSourceRect:self];
  }

  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;

LABEL_14:
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)paletteViewColorPickerPopoverPresentationSourceView:(id)view
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _delegateForSelector:sel__colorPickerPopoverPresentationBarButtonItem_];

  if (v6)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    v7 = [v6 _colorPickerPopoverPresentationBarButtonItem:self];

    view = [v7 view];
  }

  else
  {
    if (self)
    {
      v10 = objc_loadWeakRetained(&self->_toolPicker);
    }

    else
    {
      v10 = 0;
    }

    v7 = [v10 _delegateForSelector:sel__colorPickerPopoverPresentationSourceView_];

    if (v7)
    {
      if (self)
      {
        v11 = objc_loadWeakRetained(&self->_toolPicker);
      }

      else
      {
        v11 = 0;
      }

      v9 = [v7 _colorPickerPopoverPresentationSourceView:v11];

      goto LABEL_14;
    }

    view = v4;
  }

  v9 = view;
LABEL_14:

  return v9;
}

- (BOOL)shouldHandlePencilInteractionWhenNotVisible:(id)visible
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  window = [visible window];
  windowScene = [window windowScene];
  windows = [windowScene windows];

  v6 = [windows countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(windows);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isKeyWindow])
        {
          firstResponder = [v10 firstResponder];
          if (firstResponder)
          {
            if ([PKTextInputUtilities isTextInputResponder:firstResponder])
            {
              mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
              bundleIdentifier = [mainBundle bundleIdentifier];
              v14 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

              if (!v14)
              {

                v15 = 0;
                goto LABEL_15;
              }
            }
          }
        }
      }

      v7 = [windows countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)toggleLassoToolEditingViewColorPickerForPaletteView:(id)view
{
  viewCopy = view;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained _delegateForSelector:sel__toggleLassoToolEditingViewColorPickerForToolPicker_];

  if (v6)
  {
    if (self)
    {
      self = objc_loadWeakRetained(&self->_toolPicker);
    }

    [v6 _toggleLassoToolEditingViewColorPickerForToolPicker:self];
  }

  return v6 != 0;
}

- (void)paletteViewDidTapCloseButton:(id)button
{
  *&v15[13] = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Close button did tap", &v12, 2u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    _currentFirstResponder = [WeakRetained _currentFirstResponder];
    v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _pkDebugStringRepresentation = [_currentFirstResponder _pkDebugStringRepresentation];
      v12 = 138412546;
      v13 = _pkDebugStringRepresentation;
      v14 = 2112;
      *v15 = WeakRetained;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Resigning current first responder: %@, toolPicker: %@", &v12, 0x16u);
    }

    resignFirstResponder = [_currentFirstResponder resignFirstResponder];
    v10 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      _pkDebugStringRepresentation2 = [_currentFirstResponder _pkDebugStringRepresentation];
      v12 = 138412802;
      v13 = _pkDebugStringRepresentation2;
      v14 = 1024;
      *v15 = resignFirstResponder;
      v15[2] = 2112;
      *&v15[3] = WeakRetained;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "First responder: %@, did resign responder: %d, toolPicker: %@", &v12, 0x1Cu);
    }
  }
}

- (void)paletteViewDidChangeInterItemToolsSpacingInCompactSize:(id)size
{
  [size interItemToolsSpacingInCompactSize];
  v5 = v4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = WeakRetained;
  [WeakRetained _setInterItemToolsSpacingInCompactSize:v5];
}

- (void)imageWandOnboardingControllerDidHideView:(id)view
{
  viewCopy = view;
  v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
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