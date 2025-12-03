@interface MFComposeRecipientView
- (BOOL)containsAddress:(id)address;
- (BOOL)finishEnteringRecipient;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasContent;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)mf_chooseSelectedSearchResultForTextField:(id)field;
- (BOOL)mf_presentSearchResultsForTextField:(id)field;
- (BOOL)mf_textFieldShowingSearchResults:(id)results;
- (BOOL)textFieldShouldReturn:(id)return;
- (MFComposeRecipientView)initWithFrame:(CGRect)frame;
- (MFComposeRecipientViewDelegate)delegate;
- (NSString)text;
- (UIFont)baseFont;
- (double)_topRowTextWidth;
- (double)offsetForRowWithTextField;
- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)scroll numberOfRowsAboveField:(int64_t)field;
- (int64_t)numberOfRowsOfTextInField;
- (unint64_t)_addressAtomPresentationOptionsForRecipient:(id)recipient;
- (void)_addRecord:(void *)record identifier:(int)identifier;
- (void)_addUncommentedAddress:(id)address;
- (void)_cancelDelayTimer;
- (void)_delayTimerFired:(id)fired;
- (void)_deleteSelectedAtom;
- (void)_deselectAtom;
- (void)_reflowAnimated:(BOOL)animated;
- (void)_removeAddressAtomPresentationOptionsForRecipient:(id)recipient;
- (void)_removeAllRecipients;
- (void)_removeUncommentedAddress:(id)address;
- (void)_setNeedsLayoutConstraintUpdate;
- (void)_setNeedsReflow;
- (void)_tapGestureRecognized:(id)recognized;
- (void)_updateLayoutConstraintsAndGetNumberOfRows:(unint64_t *)rows textFieldWillBeLastRow:(BOOL *)row;
- (void)addAddress:(id)address;
- (void)addButtonClicked:(id)clicked;
- (void)addRecipient:(id)recipient;
- (void)addRecipient:(id)recipient index:(unint64_t)index animate:(BOOL)animate;
- (void)addRecord:(void *)record property:(int)property identifier:(int)identifier;
- (void)clearAllAddressAtomPresentationOptions;
- (void)composeRecipientAtomSelectNext:(id)next;
- (void)composeRecipientAtomSelectPrevious:(id)previous;
- (void)composeRecipientAtomShowPersonCard:(id)card;
- (void)dealloc;
- (void)deselectComposeRecipientAtom:(id)atom;
- (void)didMoveToSuperview;
- (void)didTapShowCorecipientsForIndicatorAtom:(id)atom recipients:(id)recipients;
- (void)keyboardInputChangedSelection:(id)selection;
- (void)mf_dismissSearchResults:(id)results;
- (void)mf_recipientTextField:(id)field didAddRecipientAddress:(id)address;
- (void)mf_selectNextSearchResultForTextField:(id)field;
- (void)mf_selectPreviousSearchResultForTextField:(id)field;
- (void)refreshPreferredContentSize;
- (void)removeRecipient:(id)recipient;
- (void)selectComposeRecipientAtom:(id)atom;
- (void)setAddressAtomPresentationOptions:(unint64_t)options forRecipient:(id)recipient;
- (void)setAddresses:(id)addresses;
- (void)setBaseFont:(id)font;
- (void)setEditable:(BOOL)editable;
- (void)setExpanded:(BOOL)expanded;
- (void)setLabel:(id)label;
- (void)setPlaceholderRecipient:(id)recipient;
- (void)setProperty:(int)property;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)showCorecipientIndicator:(BOOL)indicator withCorecipients:(id)corecipients animated:(BOOL)animated;
- (void)textChanged:(id)changed;
- (void)textFieldDidBecomeFirstResponder:(id)responder;
- (void)textFieldDidResignFirstResponder:(id)responder;
@end

@implementation MFComposeRecipientView

- (MFComposeRecipientView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v27.receiver = self;
  v27.super_class = MFComposeRecipientView;
  v4 = [(MFComposeHeaderView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    baseFont = [(MFComposeRecipientView *)v4 baseFont];
    [(_MFMailRecipientTextField *)v13 setFont:baseFont];

    [(_MFMailRecipientTextField *)v4->_textField setForceEnableDictation:1];
    [(_MFMailRecipientTextField *)v4->_textField setKeyboardType:7];
    [(_MFMailRecipientTextField *)v4->_textField setAutocapitalizationType:0];
    [(_MFMailRecipientTextField *)v4->_textField setAutocorrectionType:1];
    [(MFComposeRecipientView *)v4 addSubview:v4->_textField];
    [(MFComposeRecipientView *)v4 setProperty:*MEMORY[0x1E698A148]];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_textChanged_ name:*MEMORY[0x1E69DE5C0] object:v4->_textField];
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  v5.receiver = self;
  v5.super_class = MFComposeRecipientView;
  [(MFComposeHeaderView *)&v5 setLabel:labelCopy];
  [(MFComposeRecipientView *)self _setNeedsReflow];
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    editableCopy = editable;
    self->_editable = editable;
    allValues = [(NSMutableDictionary *)self->_atoms allValues];
    [allValues makeObjectsPerformSelector:sel_removeFromSuperview];

    if (editableCopy)
    {
      [(MFComposeRecipientView *)self clearText];
    }

    [(MFComposeRecipientView *)self _reflowAnimated:0];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(MFComposeRecipientView *)self _setNeedsReflow];
  }
}

- (NSString)text
{
  searchText = [(_MFMailRecipientTextField *)self->_textField searchText];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [searchText stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
  recipients = [(MFComposeRecipientView *)self recipients];
  if ([recipients count])
  {
    v4 = 1;
  }

  else
  {
    text = [(MFComposeRecipientView *)self text];
    v4 = [text length] != 0;
  }

  return v4;
}

- (void)setProperty:(int)property
{
  v4 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*&property];
  v5 = [v4 arrayWithObject:?];
  [(MFComposeRecipientView *)self setProperties:v5];
}

- (void)setAddresses:(id)addresses
{
  v29 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  [(MFComposeRecipientView *)self layoutIfNeeded];
  v20 = self->_recipients;
  [(MFComposeRecipientView *)self _removeAllRecipients];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  recipients = self->_recipients;
  self->_recipients = v4;

  delegate = [(MFComposeRecipientView *)self delegate];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = addressesCopy;
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
        v10 = [delegate composeRecipientView:self composeRecipientForAddress:v9];
        if (([(NSMutableArray *)self->_recipients containsObject:v10]& 1) == 0)
        {
          v11 = v9;
          emailAddressValue = [v11 emailAddressValue];
          simpleAddress = [emailAddressValue simpleAddress];
          v14 = simpleAddress;
          if (simpleAddress)
          {
            stringValue = simpleAddress;
          }

          else
          {
            stringValue = [v11 stringValue];
          }

          v16 = stringValue;

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

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipients = self->_recipients;
  if (recipients)
  {
    v16 = recipientCopy;
    v6 = [(NSMutableArray *)recipients indexOfObject:?];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      firstResponder = [(MFComposeRecipientView *)self firstResponder];
      undoManager = [firstResponder undoManager];

      [undoManager registerUndoWithTarget:self selector:sel_addRecipient_ object:v16];
      if (([undoManager isUndoing] & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"ADDRESS_DELETION" value:&stru_1F3CF3758 table:@"Main"];
        [undoManager setActionName:v10];
      }

      v11 = v16;
      [(MFComposeRecipientView *)self _removeAddressAtomPresentationOptionsForRecipient:v11];
      v12 = [(NSMutableDictionary *)self->_atoms objectForKey:v11];
      [v12 removeFromSuperview];

      [(NSMutableDictionary *)self->_atoms removeObjectForKey:v11];
      uncommentedAddress = [v11 uncommentedAddress];
      [(MFComposeRecipientView *)self _removeUncommentedAddress:uncommentedAddress];

      [(NSMutableArray *)self->_recipients removeObjectAtIndex:v6];
      delegate = [(MFComposeRecipientView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate composeRecipientView:self didRemoveRecipient:v11];
      }

      [(MFComposeRecipientView *)self _setNeedsReflow];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(MFComposeRecipientView *)self addRecipient:recipientCopy index:[(NSMutableArray *)self->_recipients count] animate:0];
}

- (void)addRecipient:(id)recipient index:(unint64_t)index animate:(BOOL)animate
{
  animateCopy = animate;
  v26 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if ([recipientCopy isGroup])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    children = [recipientCopy children];
    v10 = [children countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(children);
          }

          [(MFComposeRecipientView *)self addRecipient:*(*(&v20 + 1) + 8 * i) index:index animate:animateCopy];
        }

        v10 = [children countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

LABEL_24:

    goto LABEL_25;
  }

  if (recipientCopy)
  {
    if (([(NSMutableArray *)self->_recipients containsObject:recipientCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_recipients insertObject:recipientCopy atIndex:index];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        firstResponder = [(MFComposeRecipientView *)self firstResponder];
        undoManager = [firstResponder undoManager];

        [undoManager registerUndoWithTarget:self selector:sel_removeRecipient_ object:recipientCopy];
        if (([undoManager isUndoing] & 1) == 0)
        {
          v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v16 = [v15 localizedStringForKey:@"ADDRESS_ADDITION" value:&stru_1F3CF3758 table:@"Main"];
          [undoManager setActionName:v16];
        }

        uncommentedAddress = [recipientCopy uncommentedAddress];
        [(MFComposeRecipientView *)self _addUncommentedAddress:uncommentedAddress];

        delegate = [(MFComposeRecipientView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v24 = recipientCopy;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
          [delegate composeRecipientView:self didAddRecipients:v19];
        }

        else if (objc_opt_respondsToSelector())
        {
          [delegate composeRecipientView:self didAddRecipient:recipientCopy];
        }
      }
    }

    if (animateCopy)
    {
      [(MFComposeRecipientView *)self _reflowAnimated:1];
    }

    else
    {
      [(MFComposeRecipientView *)self _setNeedsReflow];
    }

    children = [MEMORY[0x1E696AD88] defaultCenter];
    [children postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)addAddress:(id)address
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v5 = [WeakRetained composeRecipientView:self composeRecipientForAddress:addressCopy];

  [(MFComposeRecipientView *)self addRecipient:v5];
}

- (void)_addRecord:(void *)record identifier:(int)identifier
{
  v4 = *&identifier;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v8 = [WeakRetained composeRecipientView:self composeRecipientForRecord:record identifier:v4];

  [(MFComposeRecipientView *)self addRecipient:v8];
}

- (void)addRecord:(void *)record property:(int)property identifier:(int)identifier
{
  v5 = *&identifier;
  v6 = *&property;
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate composeRecipientView:self composeRecipientForRecord:record property:v6 identifier:v5];
    [(MFComposeRecipientView *)self addRecipient:v9];
  }

  else
  {
    [(MFComposeRecipientView *)self _addRecord:record identifier:v5];
  }
}

- (void)setPlaceholderRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (self->_placeholderRecipient)
  {
    atoms = self->_atoms;
    placeholderRecipient = [(MFComposeRecipientView *)self placeholderRecipient];
    v7 = [(NSMutableDictionary *)atoms objectForKey:placeholderRecipient];
    [v7 removeFromSuperview];

    v8 = self->_atoms;
    placeholderRecipient2 = [(MFComposeRecipientView *)self placeholderRecipient];
    [(NSMutableDictionary *)v8 removeObjectForKey:placeholderRecipient2];

    recipients = self->_recipients;
    placeholderRecipient3 = [(MFComposeRecipientView *)self placeholderRecipient];
    [(NSMutableArray *)recipients removeObject:placeholderRecipient3];
  }

  placeholderRecipient = self->_placeholderRecipient;
  self->_placeholderRecipient = recipientCopy;
}

- (void)setAddressAtomPresentationOptions:(unint64_t)options forRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (recipientCopy)
  {
    key = recipientCopy;
    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
    if (!atomPresentationOptionsByRecipient)
    {
      atomPresentationOptionsByRecipient = CFDictionaryCreateMutable(0, 0, 0, 0);
      self->_atomPresentationOptionsByRecipient = atomPresentationOptionsByRecipient;
    }

    CFDictionarySetValue(atomPresentationOptionsByRecipient, key, options);
    v8 = [(NSMutableDictionary *)self->_atoms objectForKey:key];
    v9 = v8;
    if (v8)
    {
      [v8 setPresentationOptions:options];
    }

    recipientCopy = key;
  }
}

- (void)_removeAddressAtomPresentationOptionsForRecipient:(id)recipient
{
  key = recipient;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFDictionaryRemoveValue(atomPresentationOptionsByRecipient, key);
  }
}

- (unint64_t)_addressAtomPresentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  defaultAtomPresentationOptions = self->_defaultAtomPresentationOptions;
  value = defaultAtomPresentationOptions;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (atomPresentationOptionsByRecipient)
  {
    CFDictionaryGetValueIfPresent(atomPresentationOptionsByRecipient, recipientCopy, &value);
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

- (BOOL)containsAddress:(id)address
{
  addressCopy = address;
  uncommentedAddresses = self->_uncommentedAddresses;
  v6 = addressCopy;
  emailAddressValue = [v6 emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v6 stringValue];
  }

  v11 = stringValue;

  v12 = [(NSCountedSet *)uncommentedAddresses countForObject:v11]!= 0;
  return v12;
}

- (void)_addUncommentedAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    [(NSCountedSet *)self->_uncommentedAddresses addObject:addressCopy];
  }
}

- (void)_removeUncommentedAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    [(NSCountedSet *)self->_uncommentedAddresses removeObject:addressCopy];
  }
}

- (void)_removeAllRecipients
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_atoms allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_atoms removeAllObjects];
  [(MFComposeRecipientView *)self clearAllAddressAtomPresentationOptions];
  [(NSCountedSet *)self->_uncommentedAddresses removeAllObjects];
  recipients = self->_recipients;
  self->_recipients = 0;
}

- (void)keyboardInputChangedSelection:(id)selection
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

- (void)selectComposeRecipientAtom:(id)atom
{
  atomCopy = atom;
  if (self->_selectedAtom != atomCopy)
  {
    if (([(_MFMailRecipientTextField *)self->_textField isFirstResponder]& 1) == 0)
    {
      self->_deselectOnNextKeyboardInput = 0;
      mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__MFComposeRecipientView_selectComposeRecipientAtom___block_invoke;
      v8[3] = &unk_1E806C570;
      v8[4] = self;
      v7 = [mainThreadScheduler afterDelay:v8 performBlock:0.1];
    }

    [(MFComposeRecipientView *)self finishEnteringRecipient];
    [(MFComposeRecipientView *)self _deselectAtom];
    [(_MFMailRecipientTextField *)self->_textField _clearSelectionUI];
    [(MFModernAtomView *)atomCopy setSelected:1 animated:1];
    objc_storeStrong(&self->_selectedAtom, atom);
  }
}

- (void)deselectComposeRecipientAtom:(id)atom
{
  if (self->_selectedAtom == atom)
  {
    [(MFComposeRecipientView *)self _deselectAtom];
  }
}

- (void)_reflowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _addable = [(MFComposeRecipientView *)self _addable];
  v6 = !+[MFAddressBookManager isAuthorizedToUseAddressBook]|| !self->_editable || !_addable || !self->_expanded;
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
    if (!animatedCopy)
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
    baseFont = [(MFComposeRecipientView *)self baseFont];
    v19 = [(NSMutableArray *)recipients mf_commaSeparatedRecipientListWithWidth:baseFont forFont:&__block_literal_global_11 usingBlock:v17];

    textField = self->_textField;
    tintColor = [(MFComposeRecipientView *)self tintColor];
    [(_MFMailRecipientTextField *)textField setTextColor:tintColor];

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

- (void)showCorecipientIndicator:(BOOL)indicator withCorecipients:(id)corecipients animated:(BOOL)animated
{
  animatedCopy = animated;
  indicatorCopy = indicator;
  corecipientsCopy = corecipients;
  if ([(MFComposeRecipientView *)self _shouldShowCorecipientsIndicatorAtom])
  {
    if (indicatorCopy)
    {
      v9 = [corecipientsCopy count];
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

      [(MFCorecipientsIndicatorAtom *)corecipientsIndicatorAtom setRecipients:corecipientsCopy];
      [*p_corecipientsIndicatorAtom setTitle:@" ..."];
      [*p_corecipientsIndicatorAtom setAlpha:0.649999976];
      if (animatedCopy && [*p_corecipientsIndicatorAtom isHidden])
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

    [*p_corecipientsIndicatorAtom setHidden:!indicatorCopy];
LABEL_11:
    [(MFComposeRecipientView *)self _reflowAnimated:animatedCopy];
  }
}

- (void)addButtonClicked:(id)clicked
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientViewRequestAddRecipient:self];
  }
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  if (self->_separatorHidden != hidden)
  {
    self->_separatorHidden = hidden;
    [(UIView *)self->super._separator setHidden:?];
  }
}

- (void)refreshPreferredContentSize
{
  v6.receiver = self;
  v6.super_class = MFComposeRecipientView;
  [(MFComposeHeaderView *)&v6 refreshPreferredContentSize];
  textField = self->_textField;
  baseFont = [(MFComposeRecipientView *)self baseFont];
  [(_MFMailRecipientTextField *)textField setFont:baseFont];

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

- (void)setBaseFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_baseFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_baseFont, font);
    [(_MFMailRecipientTextField *)self->_textField setFont:self->_baseFont];
    [(MFComposeRecipientView *)self _setNeedsReflow];
  }
}

- (UIFont)baseFont
{
  defaultFont = self->_baseFont;
  if (!defaultFont)
  {
    defaultFont = [objc_opt_class() defaultFont];
  }

  return defaultFont;
}

- (BOOL)mf_textFieldShowingSearchResults:(id)results
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate composeRecipientViewShowingSearchResults:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mf_selectNextSearchResultForTextField:(id)field
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate selectNextSearchResultForComposeRecipientView:self];
  }
}

- (void)mf_selectPreviousSearchResultForTextField:(id)field
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate selectPreviousSearchResultForComposeRecipientView:self];
  }
}

- (BOOL)mf_presentSearchResultsForTextField:(id)field
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate presentSearchResultsForComposeRecipientView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mf_chooseSelectedSearchResultForTextField:(id)field
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate chooseSelectedSearchResultForComposeRecipientView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mf_dismissSearchResults:(id)results
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dismissSearchResultsForComposeRecipientView:self];
  }
}

- (void)mf_recipientTextField:(id)field didAddRecipientAddress:(id)address
{
  addressCopy = address;
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientView:self didFinishEnteringAddress:addressCopy];
  }
}

- (void)textFieldDidBecomeFirstResponder:(id)responder
{
  [(MFComposeRecipientView *)self setDidIgnoreFirstResponderResign:0];
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate recipientViewDidBecomeFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientViewDidBecomeFirstResponder:self];
  }

  if (![(MFComposeRecipientView *)self _addable])
  {
    lastObject = [(NSMutableArray *)self->_recipients lastObject];
    v5 = [(NSMutableDictionary *)self->_atoms objectForKey:lastObject];
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

- (void)textFieldDidResignFirstResponder:(id)responder
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate recipientViewShouldIgnoreFirstResponderChanges:self])
  {
    [(MFComposeRecipientView *)self setDidIgnoreFirstResponderResign:1];
  }

  else
  {
    [(MFComposeRecipientView *)self finishEnteringRecipient];
    if (objc_opt_respondsToSelector())
    {
      [delegate recipientViewDidResignFirstResponder:self];
    }

    [(MFComposeRecipientView *)self _deselectAtom];
    [(MFComposeRecipientView *)self setExpanded:0];
  }
}

- (void)composeRecipientAtomShowPersonCard:(id)card
{
  cardCopy = card;
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientView:self showPersonCardForAtom:cardCopy];
  }
}

- (void)didTapShowCorecipientsForIndicatorAtom:(id)atom recipients:(id)recipients
{
  recipientsCopy = recipients;
  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientView:self showCorecipients:recipientsCopy];
  }
}

- (void)_cancelDelayTimer
{
  [(NSTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;
}

- (void)_delayTimerFired:(id)fired
{
  [(MFComposeRecipientView *)self _cancelDelayTimer];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  text = [(MFComposeRecipientView *)self text];
  [WeakRetained composeRecipientView:self textDidChange:text];
}

- (void)composeRecipientAtomSelectPrevious:(id)previous
{
  previousCopy = previous;
  recipients = self->_recipients;
  v12 = previousCopy;
  recipient = [previousCopy recipient];
  v7 = [(NSMutableArray *)recipients indexOfObject:recipient];

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

- (void)composeRecipientAtomSelectNext:(id)next
{
  nextCopy = next;
  recipients = self->_recipients;
  v11 = nextCopy;
  recipient = [nextCopy recipient];
  v7 = [(NSMutableArray *)recipients indexOfObject:recipient];

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

- (void)textChanged:(id)changed
{
  changedCopy = changed;
  if (self->_inputDelay <= 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    text = [(MFComposeRecipientView *)self text];
    [WeakRetained composeRecipientView:self textDidChange:text];
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
  recipient = [(MFModernComposeRecipientAtom *)self->_selectedAtom recipient];
  [(MFComposeRecipientView *)self removeRecipient:recipient];

  [(MFComposeRecipientView *)self _deselectAtom];
  textField = self->_textField;

  [(_MFMailRecipientTextField *)textField _resetSelectionUI];
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  textCopy = text;
  if ([textCopy isEqual:{@", "}])
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

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  text = [(_MFMailRecipientTextField *)self->_textField text];
  v5 = [text length];
  v6 = v5 != 0;
  if (!v5)
  {
    isShowingDictationPlaceholder = [(_MFMailRecipientTextField *)self->_textField isShowingDictationPlaceholder];

    if (isShowingDictationPlaceholder)
    {
      return 1;
    }

    if (self->_selectedAtom)
    {
      [(MFComposeRecipientView *)self _deleteSelectedAtom];
      return 0;
    }

    atoms = self->_atoms;
    text = [(NSMutableArray *)self->_recipients lastObject];
    v10 = [(NSMutableDictionary *)atoms objectForKey:text];
    [(MFComposeRecipientView *)self selectComposeRecipientAtom:v10];
  }

  return v6;
}

- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)scroll numberOfRowsAboveField:(int64_t)field
{
  numberOfRowsOfTextInField = [(MFComposeRecipientView *)self numberOfRowsOfTextInField];
  if (field >= scroll)
  {
    fieldCopy = scroll;
  }

  else
  {
    fieldCopy = field;
  }

  v8 = scroll - fieldCopy;
  if (numberOfRowsOfTextInField < scroll - fieldCopy)
  {
    v8 = numberOfRowsOfTextInField;
  }

  if (field >= scroll)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0.0;
  v11 = 0.0;
  if (fieldCopy >= 1)
  {
    v12 = fieldCopy;
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

- (BOOL)textFieldShouldReturn:(id)return
{
  delegate = [(MFComposeRecipientView *)self delegate];
  if (![(MFComposeRecipientView *)self finishEnteringRecipient]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate composeRecipientViewReturnPressed:self];
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

  text = [(MFComposeRecipientView *)self text];
  v4 = [text length];

  if (!v4)
  {
    return 0;
  }

  delegate = [(MFComposeRecipientView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    text2 = [(MFComposeRecipientView *)self text];
    [delegate composeRecipientView:self didFinishEnteringAddress:text2];
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

- (void)_updateLayoutConstraintsAndGetNumberOfRows:(unint64_t *)rows textFieldWillBeLastRow:(BOOL *)row
{
  v96 = *MEMORY[0x1E69E9840];
  superview = [(MFComposeRecipientView *)self superview];

  if (!superview)
  {
    return;
  }

  if (self->_textFieldConstraints)
  {
    [(MFComposeRecipientView *)self removeConstraints:?];
    textFieldConstraints = self->_textFieldConstraints;
    self->_textFieldConstraints = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  selfCopy5 = self;
  firstValue = self->super._labelView;
  [(MFComposeRecipientView *)self bounds];
  v8 = v7;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  [(MFHeaderLabelView *)self->super._labelView frame];
  if (userInterfaceLayoutDirection)
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

      v25 = [(NSMutableDictionary *)selfCopy5->_atoms objectForKey:*(*(&v85 + 1) + 8 * i)];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v26) = 1148846080;
      [v25 setContentHuggingPriority:0 forAxis:v26];
      LODWORD(v27) = 1148846080;
      [v25 setContentCompressionResistancePriority:1 forAxis:v27];
      [v25 layoutIfNeeded];
      superview2 = [v25 superview];
      v29 = superview2 == 0;

      if (!v29)
      {
        selfCopy4 = self;
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
            selfCopy4 = self;
            goto LABEL_22;
          }

          v48 = v20;

          v32 = v48;
          selfCopy4 = self;
LABEL_24:
          if (v32 == selfCopy4->super._labelView)
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
          v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v25 attribute:11 relatedBy:0 toItem:selfCopy4->super._labelView attribute:11 multiplier:v36 constant:0.0];
          [v25 edgeInsets];
          v39 = v38;
          [(MFComposeRecipientView *)selfCopy4 layoutMargins];
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
        [array addObjectsFromArray:v47];
        v56 = v25;

        v20 = v56;
        v23 = v23 + v55;
        firstValue = v20;
      }

      selfCopy5 = self;
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
    [array addObjectsFromArray:v69];

    v66 = @"%@-[_textField]-(BUTTON_PADDING)-|";
    v65 = v57;
  }

  v70 = _NSDictionaryOfVariableBindings(&cfstr_Textfieldbuddy.isa, firstValue, self->_textField, self->_addButton, 0);
  if (v64 <= v8)
  {
    v71 = @"[textFieldBuddy]-(PADDING)";
    if (row)
    {
      v72 = 0;
LABEL_47:
      *row = v72;
    }
  }

  else
  {
    ++v65;
    v71 = @"H:|-(HORIZ_INSET)";
    if (row)
    {
      v72 = 1;
      goto LABEL_47;
    }
  }

  v73 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_textField attribute:11 relatedBy:0 toItem:self->super._labelView attribute:11 multiplier:v65 constant:0.0];
  [array addObject:v73];
  v74 = [MEMORY[0x1E696AEC0] stringWithFormat:v66, v71];
  v75 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v74 options:0 metrics:v63 views:v70];
  [array addObjectsFromArray:v75];
  v76 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_addButton attribute:10 relatedBy:0 toItem:self->super._labelView attribute:10 multiplier:1.0 constant:1.0];
  [array addObject:v76];
  if (rows)
  {
    *rows = v65;
  }

  if (array)
  {
    objc_storeStrong(&self->_textFieldConstraints, array);
    [(MFComposeRecipientView *)self addConstraints:self->_textFieldConstraints];
  }

  self->_needsLayoutConstraintUpdate = 0;
}

- (void)_setNeedsReflow
{
  if (!self->_needsReflow)
  {
    self->_needsReflow = 1;
    __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v3 = [(MFComposeRecipientView *)self ef_onScheduler:?];
    [v3 _reflowAnimated:0];
  }
}

- (void)_setNeedsLayoutConstraintUpdate
{
  if (!self->_needsLayoutConstraintUpdate)
  {
    self->_needsLayoutConstraintUpdate = 1;
    __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
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

- (void)_tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] == 3)
  {
    [(_MFMailRecipientTextField *)self->_textField becomeFirstResponder];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v19 = *MEMORY[0x1E69E9840];
  [begin locationInView:self];
  v5 = v4;
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_atoms allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allValues);
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

      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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