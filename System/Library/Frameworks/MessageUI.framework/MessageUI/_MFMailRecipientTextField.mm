@interface _MFMailRecipientTextField
- (id)_previousKeyResponder;
- (id)insertDictationResultPlaceholder;
- (void)_handleKeyUIEvent:(id)event;
- (void)paste:(id)paste;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
@end

@implementation _MFMailRecipientTextField

- (id)insertDictationResultPlaceholder
{
  self->_isShowingDictationPlaceholder = 1;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  insertDictationResultPlaceholder = [(_MFMailRecipientTextField *)&v4 insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  self->_isShowingDictationPlaceholder = 0;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  [(_MFMailRecipientTextField *)&v4 removeDictationResultPlaceholder:placeholder willInsertResult:result];
}

- (id)_previousKeyResponder
{
  MFComposeRecipientTextViewIsCollectingPreviousKeyResponder = 1;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  _previousKeyResponder = [(_MFMailRecipientTextField *)&v4 _previousKeyResponder];
  MFComposeRecipientTextViewIsCollectingPreviousKeyResponder = 0;

  return _previousKeyResponder;
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] != 4)
  {
    goto LABEL_20;
  }

  delegate = [(_MFMailRecipientTextField *)self delegate];
  _modifiedInput = [eventCopy _modifiedInput];
  v7 = _modifiedInput;
  v8 = *MEMORY[0x1E69DDE90];
  if (_modifiedInput == *MEMORY[0x1E69DDE90] || _modifiedInput == *MEMORY[0x1E69DDF30])
  {
    if ([delegate mf_textFieldShowingSearchResults:self])
    {
      if (([eventCopy _isKeyDown] & 1) == 0)
      {
        if (v7 == v8)
        {
          [delegate mf_selectNextSearchResultForTextField:self];
        }

        else
        {
          [delegate mf_selectPreviousSearchResultForTextField:self];
        }
      }

      goto LABEL_23;
    }

    if (v7 != v8 || ![eventCopy _isKeyDown])
    {
      goto LABEL_19;
    }

    v10 = [delegate mf_presentSearchResultsForTextField:self];
  }

  else
  {
    if ([_modifiedInput length] != 1 || objc_msgSend(v7, "characterAtIndex:", 0) != 13 || !objc_msgSend(delegate, "mf_textFieldShowingSearchResults:", self))
    {
      goto LABEL_19;
    }

    v10 = [delegate mf_chooseSelectedSearchResultForTextField:self];
  }

  if (v10)
  {
LABEL_23:

    goto LABEL_21;
  }

LABEL_19:

LABEL_20:
  v11.receiver = self;
  v11.super_class = _MFMailRecipientTextField;
  [(_MFMailRecipientTextField *)&v11 _handleKeyUIEvent:eventCopy];
LABEL_21:
}

- (void)paste:(id)paste
{
  v26[1] = *MEMORY[0x1E69E9840];
  pasteCopy = paste;
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  identifier = [*MEMORY[0x1E6982F40] identifier];
  v26[0] = [*MEMORY[0x1E6983020] identifier];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v6 = &identifier;
  v7 = 1;
  do
  {
    v8 = [generalPasteboard valueForPasteboardType:*v6];
    v9 = (v8 == 0) & v7;
    v6 = v26;
    v7 = 0;
  }

  while ((v9 & 1) != 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(_MFMailRecipientTextField *)self delegate];
    v11 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

    v12 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v11];
    if ([v12 count] > 1)
    {
      [delegate mf_dismissSearchResults:self];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v14)
      {
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [delegate mf_recipientTextField:self didAddRecipientAddress:*(*(&v19 + 1) + 8 * i)];
          }

          v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v23.receiver = self;
      v23.super_class = _MFMailRecipientTextField;
      [(_MFMailRecipientTextField *)&v23 paste:pasteCopy];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _MFMailRecipientTextField;
    [(_MFMailRecipientTextField *)&v18 paste:pasteCopy];
    v11 = v8;
  }

  for (j = 1; j != -1; --j)
  {
  }
}

@end