@interface PKResponderState
- (UIResponder)_responder;
- (id)_currentActiveToolPicker;
- (id)copy;
- (int64_t)_currentToolPickerVisibility;
- (void)_requestToolPickerVisibilityUpdate;
- (void)setActiveToolPicker:(id)picker;
- (void)setToolPickerVisibility:(int64_t)visibility;
@end

@implementation PKResponderState

- (id)copy
{
  v3 = objc_alloc_init(PKResponderState);
  activeToolPicker = [(PKResponderState *)self activeToolPicker];
  [(PKResponderState *)v3 setActiveToolPicker:activeToolPicker];

  [(PKResponderState *)v3 setToolPickerVisibility:[(PKResponderState *)self toolPickerVisibility]];
  return v3;
}

- (void)setToolPickerVisibility:(int64_t)visibility
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "PKResponderState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKToolPickerVisibilityDescription(visibility);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "set tool picker visibility: %@", &v7, 0xCu);
  }

  self->_toolPickerVisibility = visibility;
  [(PKResponderState *)self _requestToolPickerVisibilityUpdate];
}

- (void)setActiveToolPicker:(id)picker
{
  v9 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  v5 = os_log_create("com.apple.pencilkit", "PKResponderState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = pickerCopy;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "set active tool picker: %p", &v7, 0xCu);
  }

  activeToolPicker = self->_activeToolPicker;
  self->_activeToolPicker = pickerCopy;

  [(PKResponderState *)self _requestToolPickerVisibilityUpdate];
}

- (id)_currentActiveToolPicker
{
  if (_responderPKConfigurations && ([(PKResponderState *)self _responder], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    while (1)
    {
      v4 = [_responderPKConfigurations objectForKey:v3];
      v5 = v4;
      if (v4)
      {
        activeToolPicker = [v4 activeToolPicker];

        if (activeToolPicker)
        {
          break;
        }
      }

      nextResponder = [v3 nextResponder];

      v3 = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_9;
      }
    }

    nextResponder = [v5 activeToolPicker];
  }

  else
  {
    nextResponder = 0;
  }

LABEL_9:

  return nextResponder;
}

- (int64_t)_currentToolPickerVisibility
{
  if (!_responderPKConfigurations)
  {
    return 3;
  }

  _responder = [(PKResponderState *)self _responder];
  if (!_responder)
  {
    return 3;
  }

  v3 = _responder;
  while (1)
  {
    v4 = [_responderPKConfigurations objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      if ([v4 toolPickerVisibility])
      {
        break;
      }
    }

    nextResponder = [v3 nextResponder];

    v3 = nextResponder;
    if (!nextResponder)
    {
      return 3;
    }
  }

  toolPickerVisibility = [v5 toolPickerVisibility];

  return toolPickerVisibility;
}

- (void)_requestToolPickerVisibilityUpdate
{
  _responder = [(PKResponderState *)self _responder];
  isFirstResponder = [_responder isFirstResponder];

  if (isFirstResponder)
  {
    _responder2 = [(PKResponderState *)self _responder];
    [PKToolPicker _updateToolPickerVisibilityForFirstResponder:_responder2];
  }
}

- (UIResponder)_responder
{
  WeakRetained = objc_loadWeakRetained(&self->__responder);

  return WeakRetained;
}

@end