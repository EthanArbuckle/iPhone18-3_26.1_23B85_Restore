@interface WKExtendedTextInputTraits
- (NSString)textContentType;
- (UITextInputPasswordRules)passwordRules;
- (WKExtendedTextInputTraits)init;
- (id).cxx_construct;
- (void)restoreDefaultValues;
- (void)setConversationContext:(id)context;
- (void)setInsertionPointColor:(id)color;
- (void)setPasswordRules:(id)rules;
- (void)setSelectionColorsToMatchTintColor:(id)color;
- (void)setSelectionHandleColor:(id)color;
- (void)setSelectionHighlightColor:(id)color;
- (void)setTextContentType:(id)type;
@end

@implementation WKExtendedTextInputTraits

- (WKExtendedTextInputTraits)init
{
  v5.receiver = self;
  v5.super_class = WKExtendedTextInputTraits;
  v2 = [(WKExtendedTextInputTraits *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WKExtendedTextInputTraits *)v2 setAllowsNumberPadPopover:0];
    [(WKExtendedTextInputTraits *)v3 setTypingAdaptationEnabled:1];
    [(WKExtendedTextInputTraits *)v3 setAutocapitalizationType:2];
  }

  return v3;
}

- (void)setPasswordRules:(id)rules
{
  v4 = [rules copy];
  m_ptr = self->_passwordRules.m_ptr;
  self->_passwordRules.m_ptr = v4;
  if (m_ptr)
  {
  }
}

- (UITextInputPasswordRules)passwordRules
{
  v2 = [(UITextInputPasswordRules *)self->_passwordRules.m_ptr copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)setTextContentType:(id)type
{
  v4 = [type copy];
  m_ptr = self->_textContentType.m_ptr;
  self->_textContentType.m_ptr = v4;
  if (m_ptr)
  {
  }
}

- (NSString)textContentType
{
  v2 = [(NSString *)self->_textContentType.m_ptr copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)setInsertionPointColor:(id)color
{
  if (color)
  {
    colorCopy = color;
  }

  m_ptr = self->_insertionPointColor.m_ptr;
  self->_insertionPointColor.m_ptr = color;
  if (m_ptr)
  {
  }
}

- (void)setSelectionHandleColor:(id)color
{
  if (color)
  {
    colorCopy = color;
  }

  m_ptr = self->_selectionHandleColor.m_ptr;
  self->_selectionHandleColor.m_ptr = color;
  if (m_ptr)
  {
  }
}

- (void)setSelectionHighlightColor:(id)color
{
  if (color)
  {
    colorCopy = color;
  }

  m_ptr = self->_selectionHighlightColor.m_ptr;
  self->_selectionHighlightColor.m_ptr = color;
  if (m_ptr)
  {
  }
}

- (void)setConversationContext:(id)context
{
  if (context)
  {
    contextCopy = context;
  }

  m_ptr = self->_conversationContext.m_ptr;
  self->_conversationContext.m_ptr = context;
  if (m_ptr)
  {
  }
}

- (void)setSelectionColorsToMatchTintColor:(id)color
{
  if (color)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    if (systemBlueColor == color)
    {
      colorCopy = 0;
    }

    else
    {
      colorCopy = color;
    }

    [(WKExtendedTextInputTraits *)self setInsertionPointColor:colorCopy];
    [(WKExtendedTextInputTraits *)self setSelectionHandleColor:colorCopy];
    if (systemBlueColor != color)
    {
      v7 = [color colorWithAlphaComponent:0.2];
      goto LABEL_9;
    }
  }

  else
  {
    [(WKExtendedTextInputTraits *)self setInsertionPointColor:?];
    [(WKExtendedTextInputTraits *)self setSelectionHandleColor:0];
  }

  v7 = 0;
LABEL_9:

  [(WKExtendedTextInputTraits *)self setSelectionHighlightColor:v7];
}

- (void)restoreDefaultValues
{
  [(WKExtendedTextInputTraits *)self setTypingAdaptationEnabled:1];
  [(WKExtendedTextInputTraits *)self setInlinePredictionType:0];
  [(WKExtendedTextInputTraits *)self setAutocapitalizationType:2];
  [(WKExtendedTextInputTraits *)self setAutocorrectionType:0];
  [(WKExtendedTextInputTraits *)self setSpellCheckingType:0];
  [(WKExtendedTextInputTraits *)self setSmartQuotesType:0];
  [(WKExtendedTextInputTraits *)self setSmartDashesType:0];
  [(WKExtendedTextInputTraits *)self setKeyboardType:0];
  [(WKExtendedTextInputTraits *)self setKeyboardAppearance:0];
  [(WKExtendedTextInputTraits *)self setAllowsNumberPadPopover:0];
  [(WKExtendedTextInputTraits *)self setReturnKeyType:0];
  [(WKExtendedTextInputTraits *)self setSecureTextEntry:0];
  [(WKExtendedTextInputTraits *)self setSingleLineDocument:0];
  [(WKExtendedTextInputTraits *)self setTextContentType:0];
  [(WKExtendedTextInputTraits *)self setPasswordRules:0];
  [(WKExtendedTextInputTraits *)self setSmartInsertDeleteType:0];
  [(WKExtendedTextInputTraits *)self setEnablesReturnKeyAutomatically:0];
  [(WKExtendedTextInputTraits *)self setInsertionPointColor:0];
  [(WKExtendedTextInputTraits *)self setSelectionHandleColor:0];

  [(WKExtendedTextInputTraits *)self setSelectionHighlightColor:0];
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end