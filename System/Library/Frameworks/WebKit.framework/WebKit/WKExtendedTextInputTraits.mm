@interface WKExtendedTextInputTraits
- (NSString)textContentType;
- (UITextInputPasswordRules)passwordRules;
- (WKExtendedTextInputTraits)init;
- (id).cxx_construct;
- (void)restoreDefaultValues;
- (void)setConversationContext:(id)a3;
- (void)setInsertionPointColor:(id)a3;
- (void)setPasswordRules:(id)a3;
- (void)setSelectionColorsToMatchTintColor:(id)a3;
- (void)setSelectionHandleColor:(id)a3;
- (void)setSelectionHighlightColor:(id)a3;
- (void)setTextContentType:(id)a3;
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

- (void)setPasswordRules:(id)a3
{
  v4 = [a3 copy];
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

- (void)setTextContentType:(id)a3
{
  v4 = [a3 copy];
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

- (void)setInsertionPointColor:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_insertionPointColor.m_ptr;
  self->_insertionPointColor.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)setSelectionHandleColor:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_selectionHandleColor.m_ptr;
  self->_selectionHandleColor.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)setSelectionHighlightColor:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_selectionHighlightColor.m_ptr;
  self->_selectionHighlightColor.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)setConversationContext:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_conversationContext.m_ptr;
  self->_conversationContext.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)setSelectionColorsToMatchTintColor:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
    if (v5 == a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    [(WKExtendedTextInputTraits *)self setInsertionPointColor:v6];
    [(WKExtendedTextInputTraits *)self setSelectionHandleColor:v6];
    if (v5 != a3)
    {
      v7 = [a3 colorWithAlphaComponent:0.2];
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