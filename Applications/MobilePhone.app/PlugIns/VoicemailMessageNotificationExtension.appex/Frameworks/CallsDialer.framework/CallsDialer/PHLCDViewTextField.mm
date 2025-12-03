@interface PHLCDViewTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (PHLCDViewTextField)initWithFrame:(CGRect)frame;
- (PHLCDViewTextFieldDelegate)lcdViewTextFieldDelegate;
- (void)_textFieldDidUpdate:(id)update;
- (void)buildMenuWithBuilder:(id)builder;
- (void)dealloc;
- (void)deleteBackward;
- (void)paste:(id)paste;
- (void)reformatText;
- (void)replaceRange:(id)range withText:(id)text;
- (void)setText:(id)text;
@end

@implementation PHLCDViewTextField

- (PHLCDViewTextField)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PHLCDViewTextField;
  v3 = [(PHLCDViewTextField *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_textFieldDidUpdate:" name:UITextFieldTextDidChangeNotification object:v3];

    v5 = +[NSCharacterSet unicodeDirectionalCharactersSet];
    unicodeDirectionalCharactersSet = v3->_unicodeDirectionalCharactersSet;
    v3->_unicodeDirectionalCharactersSet = v5;

    v7 = [(NSCharacterSet *)v3->_unicodeDirectionalCharactersSet mutableCopy];
    v8 = [NSCharacterSet characterSetWithCharactersInString:@" -./()"];
    [(NSCharacterSet *)v7 formUnionWithCharacterSet:v8];

    specialDialerCharacters = v3->_specialDialerCharacters;
    v3->_specialDialerCharacters = v7;

    textInputTraits = [(PHLCDViewTextField *)v3 textInputTraits];
    [textInputTraits setContentsIsSingleValue:1];

    [(PHLCDViewTextField *)v3 setNonEditingLinebreakMode:3];
    [(PHLCDViewTextField *)v3 setWritingToolsBehavior:-1];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v4 dealloc];
}

- (void)reformatText
{
  text = [(PHLCDViewTextField *)self text];
  if ([text length])
  {
    if ([(PHLCDViewTextField *)self isEditing])
    {
      [(PHLCDViewTextField *)self selectionRange];
    }

    v16 = 0;
    previousTextSuggestion = [(PHLCDViewTextField *)self previousTextSuggestion];
    v5 = TUNetworkCountryCode();
    if (v5)
    {
      v6 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();
    }

    else
    {
      v7 = TUHomeCountryCode();
      v6 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();
    }

    if (v6)
    {
      v8 = TUNetworkCountryCode();
      if (v8)
      {
        v9 = PNCreateFormattedStringWithCountry();
      }

      else
      {
        v10 = TUHomeCountryCode();
        v9 = PNCreateFormattedStringWithCountry();
      }

      if (([text isEqualToString:v9] & 1) == 0)
      {
        v15.receiver = self;
        v15.super_class = PHLCDViewTextField;
        [(PHLCDViewTextField *)&v15 setText:v9];
        if ([(PHLCDViewTextField *)self isEditing])
        {
          Length = v16;
          if (Length > CFStringGetLength(v6))
          {
            Length = CFStringGetLength(v6);
          }

          v12 = +[NSCharacterSet unicodeDirectionalCharactersSet];
          v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}]);
          integerValue = [v13 integerValue];

          [(PHLCDViewTextField *)self setSelectionRange:&integerValue[Length], 0];
        }
      }

      [(PHLCDViewTextField *)self setPreviousTextSuggestion:v9];
      CFRelease(v6);
    }
  }
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v4 setText:text];
  [(PHLCDViewTextField *)self reformatText];
}

- (void)replaceRange:(id)range withText:(id)text
{
  v5.receiver = self;
  v5.super_class = PHLCDViewTextField;
  [(PHLCDViewTextField *)&v5 replaceRange:range withText:text];
  [(PHLCDViewTextField *)self reformatText];
}

- (void)deleteBackward
{
  selectedTextRange = [(PHLCDViewTextField *)self selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if (isEmpty)
  {
    beginningOfDocument = [(PHLCDViewTextField *)self beginningOfDocument];
    selectedTextRange2 = [(PHLCDViewTextField *)self selectedTextRange];
    v7 = [selectedTextRange2 end];
    v8 = [(PHLCDViewTextField *)self textRangeFromPosition:beginningOfDocument toPosition:v7];
    selectedTextRange3 = [(PHLCDViewTextField *)self textInRange:v8];

    specialDialerCharacters = [(PHLCDViewTextField *)self specialDialerCharacters];
    invertedSet = [specialDialerCharacters invertedSet];
    v12 = [selectedTextRange3 rangeOfCharacterFromSet:invertedSet options:4];

    beginningOfDocument2 = [(PHLCDViewTextField *)self beginningOfDocument];
    v14 = [(PHLCDViewTextField *)self positionFromPosition:beginningOfDocument2 offset:v12 + 1];

    v15 = [(PHLCDViewTextField *)self textRangeFromPosition:v14 toPosition:v14];
    [(PHLCDViewTextField *)self setSelectedTextRange:v15];
    v16.receiver = self;
    v16.super_class = PHLCDViewTextField;
    [(PHLCDViewTextField *)&v16 deleteBackward];
  }

  else
  {
    selectedTextRange3 = [(PHLCDViewTextField *)self selectedTextRange];
    [(PHLCDViewTextField *)self replaceRange:selectedTextRange3 withText:&stru_50D80];
  }

  [(PHLCDViewTextField *)self reformatText];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v7.receiver = self;
  v7.super_class = PHLCDViewTextField;
  v5 = [(PHLCDViewTextField *)&v7 canPerformAction:action withSender:sender];
  if (NSSelectorFromString(&cfstr_Define.isa) == action || NSSelectorFromString(&cfstr_Translate.isa) == action || NSSelectorFromString(&cfstr_Capturetextfro.isa) == action || NSSelectorFromString(&cfstr_Showwritingtoo.isa) == action)
  {
    return 0;
  }

  return v5;
}

- (void)buildMenuWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = PHLCDViewTextField;
  builderCopy = builder;
  [(PHLCDViewTextField *)&v4 buildMenuWithBuilder:builderCopy];
  [builderCopy removeMenuForIdentifier:{UIMenuAutoFill, v4.receiver, v4.super_class}];
}

- (void)paste:(id)paste
{
  v4 = +[UIPasteboard generalPasteboard];
  string = [v4 string];
  encodedDialerString = [string encodedDialerString];

  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
  LOBYTE(string) = objc_opt_respondsToSelector();

  if (string)
  {
    v7 = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
    [v7 textField:self didPasteString:encodedDialerString];
  }
}

- (void)_textFieldDidUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);
    text = [(PHLCDViewTextField *)self text];
    [v6 textField:self didUpdateString:text];
  }

  selectedTextRange = [(PHLCDViewTextField *)self selectedTextRange];
  if ([selectedTextRange isEmpty])
  {
    v8 = [selectedTextRange end];
    endOfDocument = [(PHLCDViewTextField *)self endOfDocument];
    v10 = [v8 isEqual:endOfDocument];

    if (v10)
    {
      [(PHLCDViewTextField *)self endEditing:1];
    }

    else
    {
      selectedTextRange2 = [(PHLCDViewTextField *)self selectedTextRange];
      v12 = [selectedTextRange2 end];
      endOfDocument2 = [(PHLCDViewTextField *)self endOfDocument];
      v14 = [(PHLCDViewTextField *)self textRangeFromPosition:v12 toPosition:endOfDocument2];
      v15 = [(PHLCDViewTextField *)self textInRange:v14];

      v16 = [v15 stringByRemovingCharactersFromSet:self->_unicodeDirectionalCharactersSet];
      v17 = [v16 length];

      if (!v17)
      {
        [(PHLCDViewTextField *)self endEditing:1];
      }
    }
  }

  [(PHLCDViewTextField *)self reformatText];
}

- (PHLCDViewTextFieldDelegate)lcdViewTextFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lcdViewTextFieldDelegate);

  return WeakRetained;
}

@end