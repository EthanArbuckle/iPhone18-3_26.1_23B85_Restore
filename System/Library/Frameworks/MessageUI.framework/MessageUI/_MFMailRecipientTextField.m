@interface _MFMailRecipientTextField
- (id)_previousKeyResponder;
- (id)insertDictationResultPlaceholder;
- (void)_handleKeyUIEvent:(id)a3;
- (void)paste:(id)a3;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
@end

@implementation _MFMailRecipientTextField

- (id)insertDictationResultPlaceholder
{
  self->_isShowingDictationPlaceholder = 1;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  v2 = [(_MFMailRecipientTextField *)&v4 insertDictationResultPlaceholder];

  return v2;
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  self->_isShowingDictationPlaceholder = 0;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  [(_MFMailRecipientTextField *)&v4 removeDictationResultPlaceholder:a3 willInsertResult:a4];
}

- (id)_previousKeyResponder
{
  MFComposeRecipientTextViewIsCollectingPreviousKeyResponder = 1;
  v4.receiver = self;
  v4.super_class = _MFMailRecipientTextField;
  v2 = [(_MFMailRecipientTextField *)&v4 _previousKeyResponder];
  MFComposeRecipientTextViewIsCollectingPreviousKeyResponder = 0;

  return v2;
}

- (void)_handleKeyUIEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] != 4)
  {
    goto LABEL_20;
  }

  v5 = [(_MFMailRecipientTextField *)self delegate];
  v6 = [v4 _modifiedInput];
  v7 = v6;
  v8 = *MEMORY[0x1E69DDE90];
  if (v6 == *MEMORY[0x1E69DDE90] || v6 == *MEMORY[0x1E69DDF30])
  {
    if ([v5 mf_textFieldShowingSearchResults:self])
    {
      if (([v4 _isKeyDown] & 1) == 0)
      {
        if (v7 == v8)
        {
          [v5 mf_selectNextSearchResultForTextField:self];
        }

        else
        {
          [v5 mf_selectPreviousSearchResultForTextField:self];
        }
      }

      goto LABEL_23;
    }

    if (v7 != v8 || ![v4 _isKeyDown])
    {
      goto LABEL_19;
    }

    v10 = [v5 mf_presentSearchResultsForTextField:self];
  }

  else
  {
    if ([v6 length] != 1 || objc_msgSend(v7, "characterAtIndex:", 0) != 13 || !objc_msgSend(v5, "mf_textFieldShowingSearchResults:", self))
    {
      goto LABEL_19;
    }

    v10 = [v5 mf_chooseSelectedSearchResultForTextField:self];
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
  [(_MFMailRecipientTextField *)&v11 _handleKeyUIEvent:v4];
LABEL_21:
}

- (void)paste:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  v25 = [*MEMORY[0x1E6982F40] identifier];
  v26[0] = [*MEMORY[0x1E6983020] identifier];
  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v6 = &v25;
  v7 = 1;
  do
  {
    v8 = [v5 valueForPasteboardType:*v6];
    v9 = (v8 == 0) & v7;
    v6 = v26;
    v7 = 0;
  }

  while ((v9 & 1) != 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(_MFMailRecipientTextField *)self delegate];
    v11 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

    v12 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v11];
    if ([v12 count] > 1)
    {
      [v10 mf_dismissSearchResults:self];
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

            [v10 mf_recipientTextField:self didAddRecipientAddress:*(*(&v19 + 1) + 8 * i)];
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
      [(_MFMailRecipientTextField *)&v23 paste:v4];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _MFMailRecipientTextField;
    [(_MFMailRecipientTextField *)&v18 paste:v4];
    v11 = v8;
  }

  for (j = 1; j != -1; --j)
  {
  }
}

@end