@interface MFComposeRecipientView
- (BOOL)containsAddress:(id)a3;
- (BOOL)finishEnteringRecipient;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasContent;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)mf_chooseSelectedSearchResultForTextField:(id)a3;
- (BOOL)mf_presentSearchResultsForTextField:(id)a3;
- (BOOL)mf_textFieldShowingSearchResults:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (MFComposeRecipientView)initWithFrame:(CGRect)a3;
- (MFComposeRecipientViewDelegate)delegate;
- (NSString)text;
- (UIFont)baseFont;
- (double)_topRowTextWidth;
- (double)offsetForRowWithTextField;
- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)a3 numberOfRowsAboveField:(int64_t)a4;
- (int64_t)numberOfRowsOfTextInField;
- (unint64_t)_addressAtomPresentationOptionsForRecipient:(id)a3;
- (void)_addRecord:(void *)a3 identifier:(int)a4;
- (void)_addUncommentedAddress:(id)a3;
- (void)_cancelDelayTimer;
- (void)_delayTimerFired:(id)a3;
- (void)_deleteSelectedAtom;
- (void)_deselectAtom;
- (void)_reflowAnimated:(BOOL)a3;
- (void)_removeAddressAtomPresentationOptionsForRecipient:(id)a3;
- (void)_removeAllRecipients;
- (void)_removeUncommentedAddress:(id)a3;
- (void)_setNeedsLayoutConstraintUpdate;
- (void)_setNeedsReflow;
- (void)_tapGestureRecognized:(id)a3;
- (void)_updateLayoutConstraintsAndGetNumberOfRows:(unint64_t *)a3 textFieldWillBeLastRow:(BOOL *)a4;
- (void)addAddress:(id)a3;
- (void)addButtonClicked:(id)a3;
- (void)addRecipient:(id)a3;
- (void)addRecipient:(id)a3 index:(unint64_t)a4 animate:(BOOL)a5;
- (void)addRecord:(void *)a3 property:(int)a4 identifier:(int)a5;
- (void)clearAllAddressAtomPresentationOptions;
- (void)composeRecipientAtomSelectNext:(id)a3;
- (void)composeRecipientAtomSelectPrevious:(id)a3;
- (void)composeRecipientAtomShowPersonCard:(id)a3;
- (void)dealloc;
- (void)deselectComposeRecipientAtom:(id)a3;
- (void)didMoveToSuperview;
- (void)didTapShowCorecipientsForIndicatorAtom:(id)a3 recipients:(id)a4;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)mf_dismissSearchResults:(id)a3;
- (void)mf_recipientTextField:(id)a3 didAddRecipientAddress:(id)a4;
- (void)mf_selectNextSearchResultForTextField:(id)a3;
- (void)mf_selectPreviousSearchResultForTextField:(id)a3;
- (void)refreshPreferredContentSize;
- (void)removeRecipient:(id)a3;
- (void)selectComposeRecipientAtom:(id)a3;
- (void)setAddressAtomPresentationOptions:(unint64_t)a3 forRecipient:(id)a4;
- (void)setAddresses:(id)a3;
- (void)setBaseFont:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setPlaceholderRecipient:(id)a3;
- (void)setProperty:(int)a3;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)showCorecipientIndicator:(BOOL)a3 withCorecipients:(id)a4 animated:(BOOL)a5;
- (void)textChanged:(id)a3;
- (void)textFieldDidBecomeFirstResponder:(id)a3;
- (void)textFieldDidResignFirstResponder:(id)a3;
@end

@implementation MFComposeRecipientView

- (MFComposeRecipientView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v27.receiver = self;
  v27.super_class = MFComposeRecipientView;
  v4 = [(MFComposeHeaderView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipients = v4->_recipients;
    v4->_recipients = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    atoms = v4->_atoms;
    v4->_atoms = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    uncommentedAddresses = v4->_uncommentedAddresses;
    v4->_uncommentedAddresses = v9;

    v11 = [[_MFMailRecipientTextField alloc] initWithFrame:0.0, 0.0, width, 25.0];
    textField = v4->_textField;
    v4->_textField = v11;

    [(_MFMailRecipientTextField *)v4->_textField setAutoresizingMask:0];
    [(_MFMailRecipientTextField *)v4->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFMailRecipientTextField *)v4->_textField setDelegate:v4];
    [(_MFMailRecipientTextField *)v4->_textField setBorderStyle:0];
    v13 = v4->_textField;
    v14 = [(MFComposeRecipientView *)v4 baseFont];
    [(_MFMailRecipientTextField *)v13 setFont:v14];

    [(_MFMailRecipientTextField *)v4->_textField setForceEnableDictation:1];
    [(_MFMailRecipientTextField *)v4->_textField setKeyboardType:7];
    [(_MFMailRecipientTextField *)v4->_textField setAutocapitalizationType:0];
    [(_MFMailRecipientTextField *)v4->_textField setAutocorrectionType:1];
    [(MFComposeRecipientView *)v4 addSubview:v4->_textField];
    [(MFComposeRecipientView *)v4 setProperty:*MEMORY[0x1E698A148]];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v4 selector:sel_textChanged_ name:*MEMORY[0x1E69DE5C0] object:v4->_textField];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGestureRecognized_];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v16;

    [(UITapGestureRecognizer *)v4->_tapGestureRecognizer setDelegate:v4];
    [(MFComposeRecipientView *)v4 addGestureRecognizer:v4->_tapGestureRecognizer];
    v18 = [MEMORY[0x1E69DC738] buttonWithType:5];
    addButton = v4->_addButton;
    v4->_addButton = v18;

    v20 = v4->_addButton;
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ADD_CONTACT_ACCESSIBILITY_LABEL" value:&stru_1F3CF3758 table:@"Main"];
    [(UIButton *)v20 setAccessibilityLabel:v22];

    [(UIButton *)v4->_addButton setAutoresizingMask:0];
    [(UIButton *)v4->_addButton setAutoresizesSubviews:0];
    [(UIButton *)v4->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148846080;
    [(UIButton *)v4->_addButton setContentHuggingPriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIButton *)v4->_addButton setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIButton *)v4->_addButton setContentCompressionResistancePriority:1 forAxis:v25];
    [(UIButton *)v4->_addButton addTarget:v4 action:sel_addButtonClicked_ forControlEvents:64];
    [(MFComposeRecipientView *)v4 addSubview:v4->_addButton];
    [(MFComposeRecipientView *)v4 setAllowsDragAndDrop:0];
    v4->_editable = 1;
    [(MFComposeRecipientView *)v4 setHideLastAtomComma:1];
  }

  return v4;
}

- (void)dealloc
{
  [(MFComposeRecipientView *)self _cancelDelayTimer];
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFRelease(atomPresentationOptionsByRecipient);
  }

  v4.receiver = self;
  v4.super_class = MFComposeRecipientView;
  [(MFComposeRecipientView *)&v4 dealloc];
}

- (MFComposeRecipientViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);

  return WeakRetained;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeRecipientView;
  [(MFComposeHeaderView *)&v5 setLabel:v4];
  [(MFComposeRecipientView *)self _setNeedsReflow];
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    v3 = a3;
    self->_editable = a3;
    v5 = [(NSMutableDictionary *)self->_atoms allValues];
    [v5 makeObjectsPerformSelector:sel_removeFromSuperview];

    if (v3)
    {
      [(MFComposeRecipientView *)self clearText];
    }

    [(MFComposeRecipientView *)self _reflowAnimated:0];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(MFComposeRecipientView *)self _setNeedsReflow];
  }
}

- (NSString)text
{
  v2 = [(_MFMailRecipientTextField *)self->_textField searchText];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (double)offsetForRowWithTextField
{
  [(MFComposeRecipientView *)self bounds];
  v3 = v2;
  [objc_opt_class() preferredHeight];
  return v3 - v4;
}

- (int64_t)numberOfRowsOfTextInField
{
  [(MFComposeRecipientView *)self bounds];
  v3 = v2 + -20.0;
  [objc_opt_class() preferredHeight];
  return llround(v3 / (v4 + -20.0));
}

- (BOOL)hasContent
{
  v3 = [(MFComposeRecipientView *)self recipients];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MFComposeRecipientView *)self text];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (void)setProperty:(int)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  v5 = [v4 arrayWithObject:?];
  [(MFComposeRecipientView *)self setProperties:v5];
}

- (void)setAddresses:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a3;
  [(MFComposeRecipientView *)self layoutIfNeeded];
  v20 = self->_recipients;
  [(MFComposeRecipientView *)self _removeAllRecipients];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  recipients = self->_recipients;
  self->_recipients = v4;

  v23 = [(MFComposeRecipientView *)self delegate];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v21;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v23 composeRecipientView:self composeRecipientForAddress:v9];
        if (([(NSMutableArray *)self->_recipients containsObject:v10]& 1) == 0)
        {
          v11 = v9;
          v12 = [v11 emailAddressValue];
          v13 = [v12 simpleAddress];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = [v11 stringValue];
          }

          v16 = v15;

          [(MFComposeRecipientView *)self _addUncommentedAddress:v16];
          [(NSMutableArray *)self->_recipients addObject:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  if (objc_opt_respondsToSelector())
  {
    if ([(NSMutableArray *)v20 count])
    {
      v17 = v20;
    }

    else
    {
      v17 = 0;
    }

    if ([(NSMutableArray *)self->_recipients count])
    {
      v18 = self->_recipients;
    }

    else
    {
      v18 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained composeRecipientView:self didReplaceRecipients:v17 withRecipients:v18];
  }

  [(MFComposeRecipientView *)self _setNeedsReflow];
}

- (void)removeRecipient:(id)a3
{
  v4 = a3;
  recipients = self->_recipients;
  if (recipients)
  {
    v16 = v4;
    v6 = [(NSMutableArray *)recipients indexOfObject:?];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(MFComposeRecipientView *)self firstResponder];
      v8 = [v7 undoManager];

      [v8 registerUndoWithTarget:self selector:sel_addRecipient_ object:v16];
      if (([v8 isUndoing] & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"ADDRESS_DELETION" value:&stru_1F3CF3758 table:@"Main"];
        [v8 setActionName:v10];
      }

      v11 = v16;
      [(MFComposeRecipientView *)self _removeAddressAtomPresentationOptionsForRecipient:v11];
      v12 = [(NSMutableDictionary *)self->_atoms objectForKey:v11];
      [v12 removeFromSuperview];

      [(NSMutableDictionary *)self->_atoms removeObjectForKey:v11];
      v13 = [v11 uncommentedAddress];
      [(MFComposeRecipientView *)self _removeUncommentedAddress:v13];

      [(NSMutableArray *)self->_recipients removeObjectAtIndex:v6];
      v14 = [(MFComposeRecipientView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v14 composeRecipientView:self didRemoveRecipient:v11];
      }

      [(MFComposeRecipientView *)self _setNeedsReflow];
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  [(MFComposeRecipientView *)self addRecipient:v4 index:[(NSMutableArray *)self->_recipients count] animate:0];
}

- (void)addRecipient:(id)a3 index:(unint64_t)a4 animate:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 isGroup])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 children];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(MFComposeRecipientView *)self addRecipient:*(*(&v20 + 1) + 8 * i) index:a4 animate:v5];
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v8)
  {
    if (([(NSMutableArray *)self->_recipients containsObject:v8]& 1) == 0)
    {
      [(NSMutableArray *)self->_recipients insertObject:v8 atIndex:a4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [(MFComposeRecipientView *)self firstResponder];
        v14 = [v13 undoManager];

        [v14 registerUndoWithTarget:self selector:sel_removeRecipient_ object:v8];
        if (([v14 isUndoing] & 1) == 0)
        {
          v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v16 = [v15 localizedStringForKey:@"ADDRESS_ADDITION" value:&stru_1F3CF3758 table:@"Main"];
          [v14 setActionName:v16];
        }

        v17 = [v8 uncommentedAddress];
        [(MFComposeRecipientView *)self _addUncommentedAddress:v17];

        v18 = [(MFComposeRecipientView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v24 = v8;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
          [v18 composeRecipientView:self didAddRecipients:v19];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v18 composeRecipientView:self didAddRecipient:v8];
        }
      }
    }

    if (v5)
    {
      [(MFComposeRecipientView *)self _reflowAnimated:1];
    }

    else
    {
      [(MFComposeRecipientView *)self _setNeedsReflow];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)addAddress:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v5 = [WeakRetained composeRecipientView:self composeRecipientForAddress:v6];

  [(MFComposeRecipientView *)self addRecipient:v5];
}

- (void)_addRecord:(void *)a3 identifier:(int)a4
{
  v4 = *&a4;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v8 = [WeakRetained composeRecipientView:self composeRecipientForRecord:a3 identifier:v4];

  [(MFComposeRecipientView *)self addRecipient:v8];
}

- (void)addRecord:(void *)a3 property:(int)a4 identifier:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v10 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v10 composeRecipientView:self composeRecipientForRecord:a3 property:v6 identifier:v5];
    [(MFComposeRecipientView *)self addRecipient:v9];
  }

  else
  {
    [(MFComposeRecipientView *)self _addRecord:a3 identifier:v5];
  }
}

- (void)setPlaceholderRecipient:(id)a3
{
  v4 = a3;
  if (self->_placeholderRecipient)
  {
    atoms = self->_atoms;
    v6 = [(MFComposeRecipientView *)self placeholderRecipient];
    v7 = [(NSMutableDictionary *)atoms objectForKey:v6];
    [v7 removeFromSuperview];

    v8 = self->_atoms;
    v9 = [(MFComposeRecipientView *)self placeholderRecipient];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    recipients = self->_recipients;
    v11 = [(MFComposeRecipientView *)self placeholderRecipient];
    [(NSMutableArray *)recipients removeObject:v11];
  }

  placeholderRecipient = self->_placeholderRecipient;
  self->_placeholderRecipient = v4;
}

- (void)setAddressAtomPresentationOptions:(unint64_t)a3 forRecipient:(id)a4
{
  v6 = a4;
  if (v6)
  {
    key = v6;
    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
    if (!atomPresentationOptionsByRecipient)
    {
      atomPresentationOptionsByRecipient = CFDictionaryCreateMutable(0, 0, 0, 0);
      self->_atomPresentationOptionsByRecipient = atomPresentationOptionsByRecipient;
    }

    CFDictionarySetValue(atomPresentationOptionsByRecipient, key, a3);
    v8 = [(NSMutableDictionary *)self->_atoms objectForKey:key];
    v9 = v8;
    if (v8)
    {
      [v8 setPresentationOptions:a3];
    }

    v6 = key;
  }
}

- (void)_removeAddressAtomPresentationOptionsForRecipient:(id)a3
{
  key = a3;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFDictionaryRemoveValue(atomPresentationOptionsByRecipient, key);
  }
}

- (unint64_t)_addressAtomPresentationOptionsForRecipient:(id)a3
{
  v4 = a3;
  defaultAtomPresentationOptions = self->_defaultAtomPresentationOptions;
  value = defaultAtomPresentationOptions;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFDictionaryGetValueIfPresent(atomPresentationOptionsByRecipient, v4, &value);
    defaultAtomPresentationOptions = value;
  }

  return defaultAtomPresentationOptions;
}

- (void)clearAllAddressAtomPresentationOptions
{
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFRelease(atomPresentationOptionsByRecipient);
    self->_atomPresentationOptionsByRecipient = 0;
  }
}

- (BOOL)containsAddress:(id)a3
{
  v4 = a3;
  uncommentedAddresses = self->_uncommentedAddresses;
  v6 = v4;
  v7 = [v6 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 stringValue];
  }

  v11 = v10;

  v12 = [(NSCountedSet *)uncommentedAddresses countForObject:v11]!= 0;
  return v12;
}

- (void)_addUncommentedAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSCountedSet *)self->_uncommentedAddresses addObject:v4];
  }
}

- (void)_removeUncommentedAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSCountedSet *)self->_uncommentedAddresses removeObject:v4];
  }
}

- (void)_removeAllRecipients
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_atoms allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_atoms removeAllObjects];
  [(MFComposeRecipientView *)self clearAllAddressAtomPresentationOptions];
  [(NSCountedSet *)self->_uncommentedAddresses removeAllObjects];
  recipients = self->_recipients;
  self->_recipients = 0;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  if (self->_selectedAtom && self->_deselectOnNextKeyboardInput)
  {
    [(MFComposeRecipientView *)self _deselectAtom];
  }

  else
  {
    self->_deselectOnNextKeyboardInput = 1;
  }
}

- (void)selectComposeRecipientAtom:(id)a3
{
  v5 = a3;
  if (self->_selectedAtom != v5)
  {
    if (([(_MFMailRecipientTextField *)self->_textField isFirstResponder]& 1) == 0)
    {
      self->_deselectOnNextKeyboardInput = 0;
      v6 = [MEMORY[0x1E699B978] mainThreadScheduler];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__MFComposeRecipientView_selectComposeRecipientAtom___block_invoke;
      v8[3] = &unk_1E806C570;
      v8[4] = self;
      v7 = [v6 afterDelay:v8 performBlock:0.1];
    }

    [(MFComposeRecipientView *)self finishEnteringRecipient];
    [(MFComposeRecipientView *)self _deselectAtom];
    [(_MFMailRecipientTextField *)self->_textField _clearSelectionUI];
    [(MFModernAtomView *)v5 setSelected:1 animated:1];
    objc_storeStrong(&self->_selectedAtom, a3);
  }
}

- (void)deselectComposeRecipientAtom:(id)a3
{
  if (self->_selectedAtom == a3)
  {
    [(MFComposeRecipientView *)self _deselectAtom];
  }
}

- (void)_reflowAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFComposeRecipientView *)self _addable];
  v6 = !+[MFAddressBookManager isAuthorizedToUseAddressBook]|| !self->_editable || !v5 || !self->_expanded;
  [(UIButton *)self->_addButton setHidden:v6];
  if (self->_editable)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0xAAAAAAAAAAAAAAAALL;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = -86;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__MFComposeRecipientView__reflowAnimated___block_invoke;
    aBlock[3] = &unk_1E806D360;
    aBlock[4] = self;
    aBlock[5] = v27;
    aBlock[6] = v25;
    v7 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__MFComposeRecipientView__reflowAnimated___block_invoke_2;
    v23[3] = &unk_1E806D388;
    v23[4] = self;
    v23[5] = v27;
    v23[6] = v25;
    v8 = _Block_copy(v23);
    v9 = 0.200000003;
    if (!v3)
    {
      v9 = 0.0;
    }

    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v8 completion:v9];

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);
  }

  else
  {
    [(MFComposeRecipientView *)self frame];
    v11 = v10;
    [objc_opt_class() preferredHeight];
    v13 = v12;
    if ([(MFComposeRecipientView *)self isSeparatorHidden])
    {
      +[MFComposeHeaderView separatorHeight];
      v13 = v13 - v14;
    }

    v27[0] = 0xAAAAAAAAAAAAAAAALL;
    LOBYTE(v25[0]) = -86;
    [(MFComposeRecipientView *)self _updateLayoutConstraintsAndGetNumberOfRows:v27 textFieldWillBeLastRow:v25];
    [(MFComposeHeaderView *)self layoutSubviews];
    recipients = self->_recipients;
    [(MFComposeRecipientView *)self _topRowTextWidth];
    v17 = v16;
    v18 = [(MFComposeRecipientView *)self baseFont];
    v19 = [(NSMutableArray *)recipients mf_commaSeparatedRecipientListWithWidth:v18 forFont:&__block_literal_global_11 usingBlock:v17];

    textField = self->_textField;
    v21 = [(MFComposeRecipientView *)self tintColor];
    [(_MFMailRecipientTextField *)textField setTextColor:v21];

    [(_MFMailRecipientTextField *)self->_textField setText:v19];
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained composeRecipientView:self didChangeSize:{v11, v13}];
  }

  self->_needsReflow = 0;
}

uint64_t __42__MFComposeRecipientView__reflowAnimated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 456);
  v3 = [MEMORY[0x1E69DC888] mailModernLabelledAtomDefaultTextColor];
  [v2 setTextColor:v3];

  v4 = [*(a1 + 32) recipients];
  v5 = [v4 count];

  v22 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
  if (v5)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v11 = [*(a1 + 32) recipients];
      v12 = [v11 objectAtIndexedSubscript:v6];

      v13 = [*(a1 + 32) atoms];
      v14 = [v13 objectForKeyedSubscript:v12];

      if (!v14)
      {
        v15 = [[MFModernComposeRecipientAtom alloc] initWithFrame:v12 recipient:0 presentationOptions:v7, v8, v9, v10];
        [(MFModernComposeRecipientAtom *)v15 setDelegate:*(a1 + 32)];
        v16 = [*(a1 + 32) atoms];
        [v16 setObject:v15 forKeyedSubscript:v12];

        objc_opt_class();
        v14 = v15;
        if (objc_opt_isKindOfClass())
        {
          [(MFModernComposeRecipientAtom *)v15 setHidden:1];
        }
      }

      v18 = 0;
      if (v5 == 1)
      {
        v17 = *(a1 + 32);
        if (v17[538] != 1 || ![v17 hideLastAtomComma])
        {
          v18 = 1;
        }
      }

      [v14 setSeparatorHidden:v18];
      [v14 tintColorDidChange];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 setPresentationOptions:{objc_msgSend(*(a1 + 32), "_addressAtomPresentationOptionsForRecipient:", v12)}];
      if (*(*(a1 + 32) + 600))
      {
        [v14 setTitleFont:?];
      }

      v19 = [v14 superview];

      if (!v19)
      {
        [*(a1 + 32) addSubview:v14];
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  [MEMORY[0x1E69DD250] setAnimationsEnabled:v22];
  [*(a1 + 32) _updateLayoutConstraintsAndGetNumberOfRows:*(*(a1 + 40) + 8) + 24 textFieldWillBeLastRow:*(*(a1 + 48) + 8) + 24];
  v20 = *(a1 + 32);

  return [v20 layoutIfNeeded];
}

void __42__MFComposeRecipientView__reflowAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v4 = *(a1 + 32);
  if ((v4[538] & 1) == 0)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    if (v6 >= 2 && *(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *(v5 + 24) = v6 - 1;
      v4 = *(a1 + 32);
    }
  }

  [v4 labelTopPadding];
  v8 = v7;
  [*(*(a1 + 32) + 416) frame];
  v10 = v8 + v9;
  [*(*(a1 + 32) + 416) _baselineOffsetFromBottom];
  v12 = v10 - v11;
  [objc_opt_class() preferredHeight];
  v14 = v13 + (*(*(*(a1 + 40) + 8) + 24) - 1) * v12;
  if ([*(a1 + 32) isSeparatorHidden])
  {
    +[MFComposeHeaderView separatorHeight];
    v14 = v14 - v15;
  }

  v18 = [*(a1 + 32) delegate];
  v16 = [*(a1 + 32) superview];
  if (v16)
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      [v18 composeRecipientView:*(a1 + 32) didChangeSize:{v3, v14}];
    }
  }
}

id __42__MFComposeRecipientView__reflowAnimated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 displayString];

  return v2;
}

- (void)showCorecipientIndicator:(BOOL)a3 withCorecipients:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if ([(MFComposeRecipientView *)self _shouldShowCorecipientsIndicatorAtom])
  {
    if (v6)
    {
      v9 = [v8 count];
      p_corecipientsIndicatorAtom = &self->_corecipientsIndicatorAtom;
      corecipientsIndicatorAtom = self->_corecipientsIndicatorAtom;
      if (!v9)
      {
        [(MFCorecipientsIndicatorAtom *)corecipientsIndicatorAtom setRecipients:0];
        goto LABEL_11;
      }

      if (!corecipientsIndicatorAtom)
      {
        v12 = objc_alloc_init(MFCorecipientsIndicatorAtom);
        v13 = *p_corecipientsIndicatorAtom;
        *p_corecipientsIndicatorAtom = v12;

        [*p_corecipientsIndicatorAtom setDelegate:self];
        [(MFComposeRecipientView *)self addSubview:*p_corecipientsIndicatorAtom];
        corecipientsIndicatorAtom = *p_corecipientsIndicatorAtom;
      }

      [(MFCorecipientsIndicatorAtom *)corecipientsIndicatorAtom setRecipients:v8];
      [*p_corecipientsIndicatorAtom setTitle:@" ..."];
      [*p_corecipientsIndicatorAtom setAlpha:0.649999976];
      if (v5 && [*p_corecipientsIndicatorAtom isHidden])
      {
        [*p_corecipientsIndicatorAtom setAlpha:0.0];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __77__MFComposeRecipientView_showCorecipientIndicator_withCorecipients_animated___block_invoke;
        v14[3] = &unk_1E806C570;
        v14[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v14 animations:0.319999993];
      }
    }

    else
    {
      p_corecipientsIndicatorAtom = &self->_corecipientsIndicatorAtom;
      [(MFCorecipientsIndicatorAtom *)self->_corecipientsIndicatorAtom setRecipients:0];
    }

    [*p_corecipientsIndicatorAtom setHidden:!v6];
LABEL_11:
    [(MFComposeRecipientView *)self _reflowAnimated:v5];
  }
}

- (void)addButtonClicked:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 composeRecipientViewRequestAddRecipient:self];
  }
}

- (void)setSeparatorHidden:(BOOL)a3
{
  if (self->_separatorHidden != a3)
  {
    self->_separatorHidden = a3;
    [(UIView *)self->super._separator setHidden:?];
  }
}

- (void)refreshPreferredContentSize
{
  v6.receiver = self;
  v6.super_class = MFComposeRecipientView;
  [(MFComposeHeaderView *)&v6 refreshPreferredContentSize];
  textField = self->_textField;
  v4 = [(MFComposeRecipientView *)self baseFont];
  [(_MFMailRecipientTextField *)textField setFont:v4];

  [(MFComposeRecipientView *)self setEditable:0];
  if (self->_textFieldConstraints)
  {
    [(MFComposeRecipientView *)self removeConstraints:?];
    textFieldConstraints = self->_textFieldConstraints;
    self->_textFieldConstraints = 0;
  }

  [(MFComposeHeaderView *)self layoutSubviews];
  [(MFComposeRecipientView *)self reflow];
}

- (void)setBaseFont:(id)a3
{
  v5 = a3;
  if (([(UIFont *)self->_baseFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_baseFont, a3);
    [(_MFMailRecipientTextField *)self->_textField setFont:self->_baseFont];
    [(MFComposeRecipientView *)self _setNeedsReflow];
  }
}

- (UIFont)baseFont
{
  v2 = self->_baseFont;
  if (!v2)
  {
    v2 = [objc_opt_class() defaultFont];
  }

  return v2;
}

- (BOOL)mf_textFieldShowingSearchResults:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 composeRecipientViewShowingSearchResults:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mf_selectNextSearchResultForTextField:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 selectNextSearchResultForComposeRecipientView:self];
  }
}

- (void)mf_selectPreviousSearchResultForTextField:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 selectPreviousSearchResultForComposeRecipientView:self];
  }
}

- (BOOL)mf_presentSearchResultsForTextField:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 presentSearchResultsForComposeRecipientView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mf_chooseSelectedSearchResultForTextField:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 chooseSelectedSearchResultForComposeRecipientView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mf_dismissSearchResults:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dismissSearchResultsForComposeRecipientView:self];
  }
}

- (void)mf_recipientTextField:(id)a3 didAddRecipientAddress:(id)a4
{
  v6 = a4;
  v5 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 composeRecipientView:self didFinishEnteringAddress:v6];
  }
}

- (void)textFieldDidBecomeFirstResponder:(id)a3
{
  [(MFComposeRecipientView *)self setDidIgnoreFirstResponderResign:0];
  v6 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 recipientViewDidBecomeFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 composeRecipientViewDidBecomeFirstResponder:self];
  }

  if (![(MFComposeRecipientView *)self _addable])
  {
    v4 = [(NSMutableArray *)self->_recipients lastObject];
    v5 = [(NSMutableDictionary *)self->_atoms objectForKey:v4];
    [(MFComposeRecipientView *)self selectComposeRecipientAtom:v5];
  }

  if (self->_clearSelectionUIAfterFirstResponder)
  {
    self->_clearSelectionUIAfterFirstResponder = 0;
    [(_MFMailRecipientTextField *)self->_textField _clearSelectionUI];
  }

  if ([(MFComposeRecipientView *)self editable])
  {
    [(MFComposeRecipientView *)self setExpanded:1];
  }
}

- (void)textFieldDidResignFirstResponder:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 recipientViewShouldIgnoreFirstResponderChanges:self])
  {
    [(MFComposeRecipientView *)self setDidIgnoreFirstResponderResign:1];
  }

  else
  {
    [(MFComposeRecipientView *)self finishEnteringRecipient];
    if (objc_opt_respondsToSelector())
    {
      [v4 recipientViewDidResignFirstResponder:self];
    }

    [(MFComposeRecipientView *)self _deselectAtom];
    [(MFComposeRecipientView *)self setExpanded:0];
  }
}

- (void)composeRecipientAtomShowPersonCard:(id)a3
{
  v5 = a3;
  v4 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 composeRecipientView:self showPersonCardForAtom:v5];
  }
}

- (void)didTapShowCorecipientsForIndicatorAtom:(id)a3 recipients:(id)a4
{
  v6 = a4;
  v5 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 composeRecipientView:self showCorecipients:v6];
  }
}

- (void)_cancelDelayTimer
{
  [(NSTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;
}

- (void)_delayTimerFired:(id)a3
{
  [(MFComposeRecipientView *)self _cancelDelayTimer];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v4 = [(MFComposeRecipientView *)self text];
  [WeakRetained composeRecipientView:self textDidChange:v4];
}

- (void)composeRecipientAtomSelectPrevious:(id)a3
{
  v4 = a3;
  recipients = self->_recipients;
  v12 = v4;
  v6 = [v4 recipient];
  v7 = [(NSMutableArray *)recipients indexOfObject:v6];

  if (v7)
  {
    v8 = v7 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    atoms = self->_atoms;
    v10 = [(NSMutableArray *)self->_recipients objectAtIndex:v7 - 1];
    v11 = [(NSMutableDictionary *)atoms objectForKey:v10];
    [v11 becomeFirstResponder];
  }
}

- (void)composeRecipientAtomSelectNext:(id)a3
{
  v4 = a3;
  recipients = self->_recipients;
  v11 = v4;
  v6 = [v4 recipient];
  v7 = [(NSMutableArray *)recipients indexOfObject:v6];

  if (v7 >= [(NSMutableArray *)self->_recipients count]- 1)
  {
    [(MFComposeRecipientView *)self becomeFirstResponder];
  }

  else
  {
    atoms = self->_atoms;
    v9 = [(NSMutableArray *)self->_recipients objectAtIndex:v7 + 1];
    v10 = [(NSMutableDictionary *)atoms objectForKey:v9];
    [v10 becomeFirstResponder];
  }
}

- (void)textChanged:(id)a3
{
  v7 = a3;
  if (self->_inputDelay <= 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v5 = [(MFComposeRecipientView *)self text];
    [WeakRetained composeRecipientView:self textDidChange:v5];
  }

  else if (self->_delayTimer)
  {
    WeakRetained = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:self->_inputDelay];
    [(NSTimer *)self->_delayTimer setFireDate:WeakRetained];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__delayTimerFired_ selector:0 userInfo:0 repeats:?];
    WeakRetained = self->_delayTimer;
    self->_delayTimer = v6;
  }
}

- (void)_deselectAtom
{
  selectedAtom = self->_selectedAtom;
  if (selectedAtom)
  {
    [(MFModernAtomView *)selectedAtom setSelected:0 animated:1];
    v4 = self->_selectedAtom;
    self->_selectedAtom = 0;
  }
}

- (void)_deleteSelectedAtom
{
  v3 = [(MFModernComposeRecipientAtom *)self->_selectedAtom recipient];
  [(MFComposeRecipientView *)self removeRecipient:v3];

  [(MFComposeRecipientView *)self _deselectAtom];
  textField = self->_textField;

  [(_MFMailRecipientTextField *)textField _resetSelectionUI];
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v6 = a4;
  if ([v6 isEqual:{@", "}])
  {
    v7 = ![(MFComposeRecipientView *)self finishEnteringRecipient];
  }

  else
  {
    if (self->_selectedAtom)
    {
      [(MFComposeRecipientView *)self _deleteSelectedAtom];
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = [(_MFMailRecipientTextField *)self->_textField text];
  v5 = [v4 length];
  v6 = v5 != 0;
  if (!v5)
  {
    v7 = [(_MFMailRecipientTextField *)self->_textField isShowingDictationPlaceholder];

    if (v7)
    {
      return 1;
    }

    if (self->_selectedAtom)
    {
      [(MFComposeRecipientView *)self _deleteSelectedAtom];
      return 0;
    }

    atoms = self->_atoms;
    v4 = [(NSMutableArray *)self->_recipients lastObject];
    v10 = [(NSMutableDictionary *)atoms objectForKey:v4];
    [(MFComposeRecipientView *)self selectComposeRecipientAtom:v10];
  }

  return v6;
}

- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)a3 numberOfRowsAboveField:(int64_t)a4
{
  v6 = [(MFComposeRecipientView *)self numberOfRowsOfTextInField];
  if (a4 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a4;
  }

  v8 = a3 - v7;
  if (v6 < a3 - v7)
  {
    v8 = v6;
  }

  if (a4 >= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0.0;
  v11 = 0.0;
  if (v7 >= 1)
  {
    v12 = v7;
    [objc_opt_class() preferredHeight];
    v11 = v13 * v12;
  }

  if (v9 >= 1)
  {
    [objc_opt_class() preferredHeight];
    v10 = (v14 + -20.0) * v9;
  }

  return v11 + v10;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(MFComposeRecipientView *)self delegate];
  if (![(MFComposeRecipientView *)self finishEnteringRecipient]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 composeRecipientViewReturnPressed:self];
  }

  return 0;
}

- (BOOL)finishEnteringRecipient
{
  if (self->_parentIsClosing)
  {
    return 0;
  }

  if (!self->_editable)
  {
    return 0;
  }

  v3 = [(MFComposeRecipientView *)self text];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MFComposeRecipientView *)self text];
    [v5 composeRecipientView:self didFinishEnteringAddress:v6];
  }

  return 1;
}

- (double)_topRowTextWidth
{
  textField = self->_textField;
  [(_MFMailRecipientTextField *)textField frame];
  [(_MFMailRecipientTextField *)textField alignmentRectForFrame:?];
  Width = CGRectGetWidth(v7);
  if (self->_editable)
  {
    [(UIButton *)self->_addButton frame];
    return Width - v5;
  }

  return Width;
}

- (void)_updateLayoutConstraintsAndGetNumberOfRows:(unint64_t *)a3 textFieldWillBeLastRow:(BOOL *)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = [(MFComposeRecipientView *)self superview];

  if (!v4)
  {
    return;
  }

  if (self->_textFieldConstraints)
  {
    [(MFComposeRecipientView *)self removeConstraints:?];
    textFieldConstraints = self->_textFieldConstraints;
    self->_textFieldConstraints = 0;
  }

  v80 = [MEMORY[0x1E695DF70] array];
  v6 = self;
  firstValue = self->super._labelView;
  [(MFComposeRecipientView *)self bounds];
  v8 = v7;
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  [(MFHeaderLabelView *)self->super._labelView frame];
  if (v10)
  {
    MaxX = v8 - CGRectGetMinX(*&v11);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v11);
  }

  v16 = 0x1E696A000;
  if (![(NSMutableArray *)self->_recipients count])
  {
    v57 = 1;
    goto LABEL_35;
  }

  [(UIButton *)self->_addButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v18 = v17;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = self->_recipients;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  v20 = 0;
  if (!v19)
  {
    v22 = 1;
    v23 = MaxX;
    goto LABEL_34;
  }

  v81 = *v86;
  v21 = v18 + 15.0;
  v22 = 1;
  v23 = MaxX;
  do
  {
    v82 = v19;
    for (i = 0; i != v82; ++i)
    {
      if (*v86 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v25 = [(NSMutableDictionary *)v6->_atoms objectForKey:*(*(&v85 + 1) + 8 * i)];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v26) = 1148846080;
      [v25 setContentHuggingPriority:0 forAxis:v26];
      LODWORD(v27) = 1148846080;
      [v25 setContentCompressionResistancePriority:1 forAxis:v27];
      [v25 layoutIfNeeded];
      v28 = [v25 superview];
      v29 = v28 == 0;

      if (!v29)
      {
        v30 = self;
        v31 = self->super._labelView;
        v32 = v31;
        if (v22 == 1)
        {
          v33 = v21;
        }

        else
        {
          v33 = 0.0;
        }

        v34 = v8 - v33 - v23;
        if (v20)
        {
          [v25 preferredWidth];
          if (v35 > v34)
          {

            v36 = v22 + 1;
            v23 = MaxX;
            v34 = v8 - MaxX;
            v30 = self;
            goto LABEL_22;
          }

          v48 = v20;

          v32 = v48;
          v30 = self;
LABEL_24:
          if (v32 == v30->super._labelView)
          {
            v50 = 0.0;
          }

          else
          {
            [v25 edgeInsets];
            v50 = -v49;
          }

          v51 = MEMORY[0x1E696ACD8];
          v93[0] = @"PADDING";
          v37 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
          v93[1] = @"maximumAtomWidth";
          v94[0] = v37;
          v46 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
          v94[1] = v46;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
          v53 = _NSDictionaryOfVariableBindings(&cfstr_AlignmentviewA.isa, v32, v25, 0);
          v47 = [v51 constraintsWithVisualFormat:@"[alignmentView]-(PADDING)-[atomView(<=maximumAtomWidth)]" options:2048 metrics:v52 views:v53];
        }

        else
        {
          if (v31)
          {
            goto LABEL_24;
          }

          v36 = v22;
LABEL_22:
          v22 = v36;
          v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v25 attribute:11 relatedBy:0 toItem:v30->super._labelView attribute:11 multiplier:v36 constant:0.0];
          [v25 edgeInsets];
          v39 = v38;
          [(MFComposeRecipientView *)v30 layoutMargins];
          v41 = MEMORY[0x1E696ACD8];
          v91[0] = @"PADDING";
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v40 + 0.0 - v39];
          v91[1] = @"maximumAtomWidth";
          v92[0] = v42;
          v43 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
          v92[1] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
          v45 = _NSDictionaryOfVariableBindings(&cfstr_Atomview.isa, v25, 0);
          v46 = [v41 constraintsWithVisualFormat:@"|-(PADDING)-[atomView(<=maximumAtomWidth)]" options:2 metrics:v44 views:v45];

          v47 = [v46 arrayByAddingObject:v37];
          v32 = 0;
        }

        [v25 preferredWidth];
        v55 = v54;
        [v80 addObjectsFromArray:v47];
        v56 = v25;

        v20 = v56;
        v23 = v23 + v55;
        firstValue = v20;
      }

      v6 = self;
    }

    v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  }

  while (v19);
LABEL_34:

  MaxX = v23;
  v57 = v22;
  v16 = 0x1E696A000uLL;
LABEL_35:
  if (firstValue == self->super._labelView)
  {
    v58 = 4.0;
  }

  else
  {
    v58 = 0.0;
  }

  v89[0] = @"HORIZ_INSET";
  v59 = *(v16 + 3480);
  [(MFComposeRecipientView *)self layoutMargins];
  v61 = [v59 numberWithDouble:v60];
  v90[0] = v61;
  v89[1] = @"PADDING";
  v62 = [*(v16 + 3480) numberWithDouble:v58];
  v90[1] = v62;
  v90[2] = &unk_1F3D167F0;
  v89[2] = @"BUTTON_PADDING";
  v89[3] = @"SPACE";
  v90[3] = &unk_1F3D16800;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];

  v64 = MaxX + 80.0;
  if (v57 == 1 && v64 <= v8)
  {
    v65 = 1;
    v66 = @"%@-[_textField]-(SPACE)-[_addButton]-(BUTTON_PADDING)-|";
  }

  else
  {
    v67 = MEMORY[0x1E696ACD8];
    v68 = _NSDictionaryOfVariableBindings(&cfstr_Addbutton.isa, self->_addButton, 0);
    v69 = [v67 constraintsWithVisualFormat:@"[_addButton]-(BUTTON_PADDING)-|" options:0 metrics:v63 views:v68];
    [v80 addObjectsFromArray:v69];

    v66 = @"%@-[_textField]-(BUTTON_PADDING)-|";
    v65 = v57;
  }

  v70 = _NSDictionaryOfVariableBindings(&cfstr_Textfieldbuddy.isa, firstValue, self->_textField, self->_addButton, 0);
  if (v64 <= v8)
  {
    v71 = @"[textFieldBuddy]-(PADDING)";
    if (a4)
    {
      v72 = 0;
LABEL_47:
      *a4 = v72;
    }
  }

  else
  {
    ++v65;
    v71 = @"H:|-(HORIZ_INSET)";
    if (a4)
    {
      v72 = 1;
      goto LABEL_47;
    }
  }

  v73 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textField attribute:11 relatedBy:0 toItem:self->super._labelView attribute:11 multiplier:v65 constant:0.0];
  [v80 addObject:v73];
  v74 = [MEMORY[0x1E696AEC0] stringWithFormat:v66, v71];
  v75 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v74 options:0 metrics:v63 views:v70];
  [v80 addObjectsFromArray:v75];
  v76 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_addButton attribute:10 relatedBy:0 toItem:self->super._labelView attribute:10 multiplier:1.0 constant:1.0];
  [v80 addObject:v76];
  if (a3)
  {
    *a3 = v65;
  }

  if (v80)
  {
    objc_storeStrong(&self->_textFieldConstraints, v80);
    [(MFComposeRecipientView *)self addConstraints:self->_textFieldConstraints];
  }

  self->_needsLayoutConstraintUpdate = 0;
}

- (void)_setNeedsReflow
{
  if (!self->_needsReflow)
  {
    self->_needsReflow = 1;
    v4 = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v3 = [(MFComposeRecipientView *)self ef_onScheduler:?];
    [v3 _reflowAnimated:0];
  }
}

- (void)_setNeedsLayoutConstraintUpdate
{
  if (!self->_needsLayoutConstraintUpdate)
  {
    self->_needsLayoutConstraintUpdate = 1;
    v4 = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v3 = [(MFComposeRecipientView *)self ef_onScheduler:?];
    [v3 _updateLayoutConstraintsAndGetNumberOfRows:0 textFieldWillBeLastRow:0];
  }
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = MFComposeRecipientView;
  [(MFComposeRecipientView *)&v2 viewDidMoveToSuperview];
}

- (void)_tapGestureRecognized:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(_MFMailRecipientTextField *)self->_textField becomeFirstResponder];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)self->_atoms allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) frame];
        v20.x = v5;
        v20.y = v7;
        if (CGRectContainsPoint(v21, v20))
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

@end