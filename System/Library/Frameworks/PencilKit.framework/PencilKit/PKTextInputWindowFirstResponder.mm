@interface PKTextInputWindowFirstResponder
- (BOOL)isEditableTextInputWithPencilTextInputSource;
- (PKTextInputWindowFirstResponder)initWithIsVisible:(BOOL)visible isEditableTextInput:(BOOL)input hasScribbleInteraction:(BOOL)interaction textInputSource:(int64_t)source inputAssistantItem:(id)item;
@end

@implementation PKTextInputWindowFirstResponder

- (PKTextInputWindowFirstResponder)initWithIsVisible:(BOOL)visible isEditableTextInput:(BOOL)input hasScribbleInteraction:(BOOL)interaction textInputSource:(int64_t)source inputAssistantItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = PKTextInputWindowFirstResponder;
  v14 = [(PKTextInputWindowFirstResponder *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isVisible = visible;
    v14->_editableTextInput = input;
    v14->_hasScribbleInteraction = interaction;
    v14->_textInputSource = source;
    objc_storeStrong(&v14->_inputAssistantItem, item);
  }

  return v15;
}

- (BOOL)isEditableTextInputWithPencilTextInputSource
{
  isPencilTextInputSource = [(PKTextInputWindowFirstResponder *)self isPencilTextInputSource];
  if (isPencilTextInputSource)
  {

    LOBYTE(isPencilTextInputSource) = [(PKTextInputWindowFirstResponder *)self isEditableTextInput];
  }

  return isPencilTextInputSource;
}

@end