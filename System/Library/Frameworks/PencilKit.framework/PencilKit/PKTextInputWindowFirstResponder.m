@interface PKTextInputWindowFirstResponder
- (BOOL)isEditableTextInputWithPencilTextInputSource;
- (PKTextInputWindowFirstResponder)initWithIsVisible:(BOOL)a3 isEditableTextInput:(BOOL)a4 hasScribbleInteraction:(BOOL)a5 textInputSource:(int64_t)a6 inputAssistantItem:(id)a7;
@end

@implementation PKTextInputWindowFirstResponder

- (PKTextInputWindowFirstResponder)initWithIsVisible:(BOOL)a3 isEditableTextInput:(BOOL)a4 hasScribbleInteraction:(BOOL)a5 textInputSource:(int64_t)a6 inputAssistantItem:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = PKTextInputWindowFirstResponder;
  v14 = [(PKTextInputWindowFirstResponder *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isVisible = a3;
    v14->_editableTextInput = a4;
    v14->_hasScribbleInteraction = a5;
    v14->_textInputSource = a6;
    objc_storeStrong(&v14->_inputAssistantItem, a7);
  }

  return v15;
}

- (BOOL)isEditableTextInputWithPencilTextInputSource
{
  v3 = [(PKTextInputWindowFirstResponder *)self isPencilTextInputSource];
  if (v3)
  {

    LOBYTE(v3) = [(PKTextInputWindowFirstResponder *)self isEditableTextInput];
  }

  return v3;
}

@end