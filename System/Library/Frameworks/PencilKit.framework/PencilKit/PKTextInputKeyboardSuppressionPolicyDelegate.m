@interface PKTextInputKeyboardSuppressionPolicyDelegate
- (BOOL)_shouldSuppressAssistantBarForDelegate:(id)a3;
- (BOOL)_shouldSuppressKeyboardUIForDelegate:(id)a3 checkSource:(BOOL)a4;
- (id)_recognitionLocaleIdentifier;
- (void)updateKeyboardSuppressionPolicy;
@end

@implementation PKTextInputKeyboardSuppressionPolicyDelegate

- (void)updateKeyboardSuppressionPolicy
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E69DE718] object:0];
}

- (id)_recognitionLocaleIdentifier
{
  if (self->_isQueryingLocaleIdentifier)
  {
    v2 = 0;
  }

  else
  {
    self->_isQueryingLocaleIdentifier = 1;
    v4 = +[PKTextInputSettings sharedSettings];
    v5 = [v4 recognitionLocaleIdentifier];
    self->_isQueryingLocaleIdentifier = 0;
    if ([(PKTextInputKeyboardSuppressionPolicyDelegate *)self _suppressLocaleIdentifier])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    v2 = v6;
  }

  return v2;
}

- (BOOL)_shouldSuppressAssistantBarForDelegate:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    v8 = +[PKTextInputSettings sharedSettings];
    v9 = [v8 UCBPaletteEnabled];

    if (v9 && ![(PKTextInputKeyboardSuppressionPolicyDelegate *)self isFloatingKeyboardVisible])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 _responderWindow], v10 = objc_claimAutoreleasedReturnValue(), v11 = +[PKToolPicker isActiveToolPickerVisibleForWindow:](PKToolPicker, "isActiveToolPickerVisibleForWindow:", v10), v10, v11))
      {
        v12 = v4;
        if ([v12 isStylusDrawingEnabled])
        {
          v13 = [v12 _isHandwritingToolSelected] ^ 1;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
      }

      v17 = [(PKTextInputKeyboardSuppressionPolicyDelegate *)self _shouldSuppressKeyboardUIForDelegate:v4 checkSource:v13];
      goto LABEL_21;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_22;
  }

  v5 = [v4 _responderWindow];
  v6 = [PKToolPicker isActiveToolPickerVisibleForWindow:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_14;
    }

    v7 = [v4 conformsToProtocol:&unk_1F4840D28];
  }

  if ((v6 & v7) != 1)
  {
LABEL_14:
    if (v4)
    {
      v17 = [PKTextInputElementsFinder shouldDisableInputAssistantForTextInput:v4];
LABEL_21:
      v16 = v17;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v14 = [v4 _responderWindow];
  v15 = [PKToolPicker activeToolPickerForWindow:v14];

  v16 = -[PKTextInputKeyboardSuppressionPolicyDelegate _shouldSuppressKeyboardUIForDelegate:checkSource:](self, "_shouldSuppressKeyboardUIForDelegate:checkSource:", v4, [v15 _isHandwritingToolSelected] ^ 1);
LABEL_22:

  return v16;
}

- (BOOL)_shouldSuppressKeyboardUIForDelegate:(id)a3 checkSource:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PKTextInputKeyboardSuppressionPolicyDelegate *)self _recognitionLocaleIdentifier];

  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 _textInputSource] == 3;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!v8)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v16 = 0;
  v10 = [PKTextInputUtilities isResponderSupportedTextInput:v6 outTextInputTraits:&v16];
  v11 = v16;
  v12 = [v11 textContentType];
  if (v12)
  {
    v13 = [v11 textContentType];
    v14 = [v13 isEqualToString:*MEMORY[0x1E69DE4A8]] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v9 = v10 & v14;
LABEL_12:

  return v9;
}

@end