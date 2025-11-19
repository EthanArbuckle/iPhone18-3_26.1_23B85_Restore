@interface PKResponderState
- (UIResponder)_responder;
- (id)_currentActiveToolPicker;
- (id)copy;
- (int64_t)_currentToolPickerVisibility;
- (void)_requestToolPickerVisibilityUpdate;
- (void)setActiveToolPicker:(id)a3;
- (void)setToolPickerVisibility:(int64_t)a3;
@end

@implementation PKResponderState

- (id)copy
{
  v3 = objc_alloc_init(PKResponderState);
  v4 = [(PKResponderState *)self activeToolPicker];
  [(PKResponderState *)v3 setActiveToolPicker:v4];

  [(PKResponderState *)v3 setToolPickerVisibility:[(PKResponderState *)self toolPickerVisibility]];
  return v3;
}

- (void)setToolPickerVisibility:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "PKResponderState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKToolPickerVisibilityDescription(a3);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "set tool picker visibility: %@", &v7, 0xCu);
  }

  self->_toolPickerVisibility = a3;
  [(PKResponderState *)self _requestToolPickerVisibilityUpdate];
}

- (void)setActiveToolPicker:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PKResponderState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "set active tool picker: %p", &v7, 0xCu);
  }

  activeToolPicker = self->_activeToolPicker;
  self->_activeToolPicker = v4;

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
        v6 = [v4 activeToolPicker];

        if (v6)
        {
          break;
        }
      }

      v7 = [v3 nextResponder];

      v3 = v7;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v7 = [v5 activeToolPicker];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (int64_t)_currentToolPickerVisibility
{
  if (!_responderPKConfigurations)
  {
    return 3;
  }

  v2 = [(PKResponderState *)self _responder];
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
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

    v6 = [v3 nextResponder];

    v3 = v6;
    if (!v6)
    {
      return 3;
    }
  }

  v8 = [v5 toolPickerVisibility];

  return v8;
}

- (void)_requestToolPickerVisibilityUpdate
{
  v3 = [(PKResponderState *)self _responder];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(PKResponderState *)self _responder];
    [PKToolPicker _updateToolPickerVisibilityForFirstResponder:v5];
  }
}

- (UIResponder)_responder
{
  WeakRetained = objc_loadWeakRetained(&self->__responder);

  return WeakRetained;
}

@end