@interface ReservationInputCell
- ($6DEE646D0694EE33DDAF15C88EA05AA8)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (NSString)placeholderText;
- (NSString)text;
- (id)detailTextColor;
- (void)configureTextField;
- (void)doneButtonTapped:(id)a3;
- (void)loadDetailView;
- (void)setDetailTextColor:(id)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setRequired:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setType:(int64_t)a3;
- (void)updateTextColorForText:(id)a3;
@end

@implementation ReservationInputCell

- (void)setRequired:(BOOL)a3
{
  if (self->_required == !a3)
  {
    self->_required = a3;
    v5 = [(ReservationInputCell *)self text];
    [(ReservationInputCell *)self updateTextColorForText:v5];
  }
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(ReservationInputCell *)self configureTextField];
  }
}

- (NSString)text
{
  v2 = [(ReservationInputCell *)self textField];
  v3 = [v2 text];

  return v3;
}

- (id)detailTextColor
{
  v2 = [(ReservationInputCell *)self textField];
  v3 = [v2 textColor];

  return v3;
}

- (void)setDetailTextColor:(id)a3
{
  v4 = a3;
  v5 = [(ReservationInputCell *)self textField];
  [v5 setTextColor:v4];
}

- (void)setText:(id)a3
{
  v5 = a3;
  v4 = [(ReservationInputCell *)self textField];
  [v4 setText:v5];

  [(ReservationInputCell *)self updateTextColorForText:v5];
}

- (NSString)placeholderText
{
  v2 = [(ReservationInputCell *)self textField];
  v3 = [v2 placeholder];

  return v3;
}

- (void)setPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(ReservationInputCell *)self textField];
  [v5 setPlaceholder:v4];
}

- (void)updateTextColorForText:(id)a3
{
  v6 = a3;
  if (-[ReservationInputCell required](self, "required") && ![v6 length])
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

- ($6DEE646D0694EE33DDAF15C88EA05AA8)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4
{
  v5 = a3;
  v6 = +[CNPhoneNumber defaultCountryCode];
  v7 = [CNPhoneNumber phoneNumberWithDigits:v5 countryCode:v6];

  v8 = [v7 formattedStringValue];
  v9 = v8;
  if (v8)
  {
    v16 = v8;
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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (![v10 length] || -[ReservationInputCell type](self, "type") || (objc_msgSend(v10, "isEqualToString:", @" ") & 1) != 0)
  {
    goto LABEL_8;
  }

  v11 = [v9 text];
  v12 = [v11 stringByReplacingCharactersInRange:location withString:{length, v10}];

  if (![v12 length])
  {

    goto LABEL_8;
  }

  v13 = [CNPhoneNumber phoneNumberWithStringValue:v12];
  v14 = [v13 formattedStringValue];
  v15 = [v14 length];

  if (v15)
  {
LABEL_8:
    v17 = [v9 text];
    v18 = [v17 stringByReplacingCharactersInRange:location withString:{length, v10}];

    [(ReservationInputCell *)self updateTextColorForText:v18];
    v16 = 1;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(ReservationInputCell *)self textField];

  if (v5 == v4)
  {
    [(ReservationInputCell *)self doneButtonTapped:v4];
  }

  return 1;
}

- (void)doneButtonTapped:(id)a3
{
  v3 = [(ReservationInputCell *)self textField];
  [v3 resignFirstResponder];
}

- (void)configureTextField
{
  v3 = [(ReservationInputCell *)self type];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v19 = [(ReservationInputCell *)self textField];
      [v19 setAutocorrectionType:1];

      v20 = [(ReservationInputCell *)self textField];
      [v20 setKeyboardType:5];

      v21 = [(ReservationInputCell *)self textField];
      [v21 setTextContentType:UITextContentTypeTelephoneNumber];
      goto LABEL_14;
    }

    if (v3 != 1)
    {
      return;
    }

    v7 = [(ReservationInputCell *)self textField];
    [v7 setAutocorrectionType:1];

    v8 = [(ReservationInputCell *)self textField];
    [v8 setAutocapitalizationType:0];

    v9 = [(ReservationInputCell *)self textField];
    [v9 setTextContentType:UITextContentTypeEmailAddress];

    v10 = [(ReservationInputCell *)self textField];
    v21 = v10;
    v11 = 7;
  }

  else
  {
    switch(v3)
    {
      case 2:
        v12 = [(ReservationInputCell *)self textField];
        [v12 setAutocorrectionType:1];

        v13 = [(ReservationInputCell *)self textField];
        [v13 setAutocapitalizationType:1];

        v14 = &UITextContentTypeGivenName;
        break;
      case 3:
        v15 = [(ReservationInputCell *)self textField];
        [v15 setAutocorrectionType:1];

        v16 = [(ReservationInputCell *)self textField];
        [v16 setAutocapitalizationType:1];

        v14 = &UITextContentTypeFamilyName;
        break;
      case 4:
        v4 = [(ReservationInputCell *)self textField];
        [v4 setAutocorrectionType:2];

        v5 = [(ReservationInputCell *)self textField];
        [v5 setAutocapitalizationType:2];

        v6 = [(ReservationInputCell *)self textField];
        [v6 setKeyboardType:0];

        v21 = [(ReservationInputCell *)self textField];
        [v21 setTextSuggestionDelegate:0];
        goto LABEL_14;
      default:
        return;
    }

    v17 = *v14;
    v18 = [(ReservationInputCell *)self textField];
    [v18 setTextContentType:v17];

    v10 = [(ReservationInputCell *)self textField];
    v21 = v10;
    v11 = 0;
  }

  [v10 setKeyboardType:v11];
LABEL_14:
}

- (void)loadDetailView
{
  v3 = objc_alloc_init(UITextField);
  [(ReservationInputCell *)self setTextField:v3];

  v4 = +[UIColor clearColor];
  v5 = [(ReservationInputCell *)self textField];
  [v5 setBackgroundColor:v4];

  v6 = [(ReservationTableViewCell *)self titleLabel];
  v7 = [v6 font];
  v8 = [(ReservationInputCell *)self textField];
  [v8 setFont:v7];

  v9 = [(ReservationInputCell *)self textField];
  [v9 setDelegate:self];

  v10 = [(ReservationInputCell *)self textField];
  [v10 setTextAlignment:2];

  v11 = [(ReservationInputCell *)self textField];
  [v11 setReturnKeyType:9];

  v12 = [(ReservationInputCell *)self textField];
  v13 = [v12 textInputTraits];
  [v13 setContentsIsSingleValue:1];

  v14 = [(ReservationInputCell *)self textField];
  LODWORD(v15) = 1132068864;
  [v14 setContentHuggingPriority:0 forAxis:v15];

  v16 = [(ReservationTableViewCell *)self titleLabel];
  LODWORD(v17) = 1148846080;
  [v16 setContentHuggingPriority:0 forAxis:v17];

  [(ReservationInputCell *)self configureTextField];
  v18 = [(ReservationInputCell *)self textField];
  [(ReservationTableViewCell *)self setDetailView:v18];
}

@end