@interface PKTextInputKeyboardSuppressionPolicyDelegate
- (BOOL)_shouldSuppressAssistantBarForDelegate:(id)delegate;
- (BOOL)_shouldSuppressKeyboardUIForDelegate:(id)delegate checkSource:(BOOL)source;
- (id)_recognitionLocaleIdentifier;
- (void)updateKeyboardSuppressionPolicy;
@end

@implementation PKTextInputKeyboardSuppressionPolicyDelegate

- (void)updateKeyboardSuppressionPolicy
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69DE718] object:0];
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
    recognitionLocaleIdentifier = [v4 recognitionLocaleIdentifier];
    self->_isQueryingLocaleIdentifier = 0;
    if ([(PKTextInputKeyboardSuppressionPolicyDelegate *)self _suppressLocaleIdentifier])
    {
      v6 = 0;
    }

    else
    {
      v6 = recognitionLocaleIdentifier;
    }

    v2 = v6;
  }

  return v2;
}

- (BOOL)_shouldSuppressAssistantBarForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!_os_feature_enabled_impl())
  {
    v8 = +[PKTextInputSettings sharedSettings];
    uCBPaletteEnabled = [v8 UCBPaletteEnabled];

    if (uCBPaletteEnabled && ![(PKTextInputKeyboardSuppressionPolicyDelegate *)self isFloatingKeyboardVisible])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([delegateCopy _responderWindow], v10 = objc_claimAutoreleasedReturnValue(), v11 = +[PKToolPicker isActiveToolPickerVisibleForWindow:](PKToolPicker, "isActiveToolPickerVisibleForWindow:", v10), v10, v11))
      {
        v12 = delegateCopy;
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

      v17 = [(PKTextInputKeyboardSuppressionPolicyDelegate *)self _shouldSuppressKeyboardUIForDelegate:delegateCopy checkSource:v13];
      goto LABEL_21;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_22;
  }

  _responderWindow = [delegateCopy _responderWindow];
  v6 = [PKToolPicker isActiveToolPickerVisibleForWindow:_responderWindow];

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

    v7 = [delegateCopy conformsToProtocol:&unk_1F4840D28];
  }

  if ((v6 & v7) != 1)
  {
LABEL_14:
    if (delegateCopy)
    {
      v17 = [PKTextInputElementsFinder shouldDisableInputAssistantForTextInput:delegateCopy];
LABEL_21:
      v16 = v17;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  _responderWindow2 = [delegateCopy _responderWindow];
  v15 = [PKToolPicker activeToolPickerForWindow:_responderWindow2];

  v16 = -[PKTextInputKeyboardSuppressionPolicyDelegate _shouldSuppressKeyboardUIForDelegate:checkSource:](self, "_shouldSuppressKeyboardUIForDelegate:checkSource:", delegateCopy, [v15 _isHandwritingToolSelected] ^ 1);
LABEL_22:

  return v16;
}

- (BOOL)_shouldSuppressKeyboardUIForDelegate:(id)delegate checkSource:(BOOL)source
{
  sourceCopy = source;
  delegateCopy = delegate;
  _recognitionLocaleIdentifier = [(PKTextInputKeyboardSuppressionPolicyDelegate *)self _recognitionLocaleIdentifier];

  if (!_recognitionLocaleIdentifier)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [delegateCopy _textInputSource] == 3;
    if (!sourceCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!sourceCopy)
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
  v10 = [PKTextInputUtilities isResponderSupportedTextInput:delegateCopy outTextInputTraits:&v16];
  v11 = v16;
  textContentType = [v11 textContentType];
  if (textContentType)
  {
    textContentType2 = [v11 textContentType];
    v14 = [textContentType2 isEqualToString:*MEMORY[0x1E69DE4A8]] ^ 1;
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