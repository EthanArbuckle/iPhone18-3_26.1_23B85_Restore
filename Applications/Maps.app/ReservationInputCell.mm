@interface ReservationInputCell
- ($6DEE646D0694EE33DDAF15C88EA05AA8)suggestionsForString:(id)string inputIndex:(unsigned int)index;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (NSString)placeholderText;
- (NSString)text;
- (id)detailTextColor;
- (void)configureTextField;
- (void)doneButtonTapped:(id)tapped;
- (void)loadDetailView;
- (void)setDetailTextColor:(id)color;
- (void)setPlaceholderText:(id)text;
- (void)setRequired:(BOOL)required;
- (void)setText:(id)text;
- (void)setType:(int64_t)type;
- (void)updateTextColorForText:(id)text;
@end

@implementation ReservationInputCell

- (void)setRequired:(BOOL)required
{
  if (self->_required == !required)
  {
    self->_required = required;
    text = [(ReservationInputCell *)self text];
    [(ReservationInputCell *)self updateTextColorForText:text];
  }
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(ReservationInputCell *)self configureTextField];
  }
}

- (NSString)text
{
  textField = [(ReservationInputCell *)self textField];
  text = [textField text];

  return text;
}

- (id)detailTextColor
{
  textField = [(ReservationInputCell *)self textField];
  textColor = [textField textColor];

  return textColor;
}

- (void)setDetailTextColor:(id)color
{
  colorCopy = color;
  textField = [(ReservationInputCell *)self textField];
  [textField setTextColor:colorCopy];
}

- (void)setText:(id)text
{
  textCopy = text;
  textField = [(ReservationInputCell *)self textField];
  [textField setText:textCopy];

  [(ReservationInputCell *)self updateTextColorForText:textCopy];
}

- (NSString)placeholderText
{
  textField = [(ReservationInputCell *)self textField];
  placeholder = [textField placeholder];

  return placeholder;
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  textField = [(ReservationInputCell *)self textField];
  [textField setPlaceholder:textCopy];
}

- (void)updateTextColorForText:(id)text
{
  textCopy = text;
  if (-[ReservationInputCell required](self, "required") && ![textCopy length])
  {
    v4 = +[UIColor redColor];
  }

  else
  {
    v4 = +[UIColor labelColor];
  }

  v5 = v4;
  [(ReservationTableViewCell *)self setTitleTextColor:v4];
}

- ($6DEE646D0694EE33DDAF15C88EA05AA8)suggestionsForString:(id)string inputIndex:(unsigned int)index
{
  stringCopy = string;
  v6 = +[CNPhoneNumber defaultCountryCode];
  v7 = [CNPhoneNumber phoneNumberWithDigits:stringCopy countryCode:v6];

  formattedStringValue = [v7 formattedStringValue];
  v9 = formattedStringValue;
  if (formattedStringValue)
  {
    v16 = formattedStringValue;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [v9 length];
    v12 = [v9 copy];
    previousValue = self->_previousValue;
    self->_previousValue = v12;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = v10;
  v15 = v11;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if (![stringCopy length] || -[ReservationInputCell type](self, "type") || (objc_msgSend(stringCopy, "isEqualToString:", @" ") & 1) != 0)
  {
    goto LABEL_8;
  }

  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if (![v12 length])
  {

    goto LABEL_8;
  }

  v13 = [CNPhoneNumber phoneNumberWithStringValue:v12];
  formattedStringValue = [v13 formattedStringValue];
  v15 = [formattedStringValue length];

  if (v15)
  {
LABEL_8:
    text2 = [fieldCopy text];
    v18 = [text2 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    [(ReservationInputCell *)self updateTextColorForText:v18];
    v16 = 1;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  textField = [(ReservationInputCell *)self textField];

  if (textField == returnCopy)
  {
    [(ReservationInputCell *)self doneButtonTapped:returnCopy];
  }

  return 1;
}

- (void)doneButtonTapped:(id)tapped
{
  textField = [(ReservationInputCell *)self textField];
  [textField resignFirstResponder];
}

- (void)configureTextField
{
  type = [(ReservationInputCell *)self type];
  if (type <= 1)
  {
    if (!type)
    {
      textField = [(ReservationInputCell *)self textField];
      [textField setAutocorrectionType:1];

      textField2 = [(ReservationInputCell *)self textField];
      [textField2 setKeyboardType:5];

      textField3 = [(ReservationInputCell *)self textField];
      [textField3 setTextContentType:UITextContentTypeTelephoneNumber];
      goto LABEL_14;
    }

    if (type != 1)
    {
      return;
    }

    textField4 = [(ReservationInputCell *)self textField];
    [textField4 setAutocorrectionType:1];

    textField5 = [(ReservationInputCell *)self textField];
    [textField5 setAutocapitalizationType:0];

    textField6 = [(ReservationInputCell *)self textField];
    [textField6 setTextContentType:UITextContentTypeEmailAddress];

    textField7 = [(ReservationInputCell *)self textField];
    textField3 = textField7;
    v11 = 7;
  }

  else
  {
    switch(type)
    {
      case 2:
        textField8 = [(ReservationInputCell *)self textField];
        [textField8 setAutocorrectionType:1];

        textField9 = [(ReservationInputCell *)self textField];
        [textField9 setAutocapitalizationType:1];

        v14 = &UITextContentTypeGivenName;
        break;
      case 3:
        textField10 = [(ReservationInputCell *)self textField];
        [textField10 setAutocorrectionType:1];

        textField11 = [(ReservationInputCell *)self textField];
        [textField11 setAutocapitalizationType:1];

        v14 = &UITextContentTypeFamilyName;
        break;
      case 4:
        textField12 = [(ReservationInputCell *)self textField];
        [textField12 setAutocorrectionType:2];

        textField13 = [(ReservationInputCell *)self textField];
        [textField13 setAutocapitalizationType:2];

        textField14 = [(ReservationInputCell *)self textField];
        [textField14 setKeyboardType:0];

        textField3 = [(ReservationInputCell *)self textField];
        [textField3 setTextSuggestionDelegate:0];
        goto LABEL_14;
      default:
        return;
    }

    v17 = *v14;
    textField15 = [(ReservationInputCell *)self textField];
    [textField15 setTextContentType:v17];

    textField7 = [(ReservationInputCell *)self textField];
    textField3 = textField7;
    v11 = 0;
  }

  [textField7 setKeyboardType:v11];
LABEL_14:
}

- (void)loadDetailView
{
  v3 = objc_alloc_init(UITextField);
  [(ReservationInputCell *)self setTextField:v3];

  v4 = +[UIColor clearColor];
  textField = [(ReservationInputCell *)self textField];
  [textField setBackgroundColor:v4];

  titleLabel = [(ReservationTableViewCell *)self titleLabel];
  font = [titleLabel font];
  textField2 = [(ReservationInputCell *)self textField];
  [textField2 setFont:font];

  textField3 = [(ReservationInputCell *)self textField];
  [textField3 setDelegate:self];

  textField4 = [(ReservationInputCell *)self textField];
  [textField4 setTextAlignment:2];

  textField5 = [(ReservationInputCell *)self textField];
  [textField5 setReturnKeyType:9];

  textField6 = [(ReservationInputCell *)self textField];
  textInputTraits = [textField6 textInputTraits];
  [textInputTraits setContentsIsSingleValue:1];

  textField7 = [(ReservationInputCell *)self textField];
  LODWORD(v15) = 1132068864;
  [textField7 setContentHuggingPriority:0 forAxis:v15];

  titleLabel2 = [(ReservationTableViewCell *)self titleLabel];
  LODWORD(v17) = 1148846080;
  [titleLabel2 setContentHuggingPriority:0 forAxis:v17];

  [(ReservationInputCell *)self configureTextField];
  textField8 = [(ReservationInputCell *)self textField];
  [(ReservationTableViewCell *)self setDetailView:textField8];
}

@end