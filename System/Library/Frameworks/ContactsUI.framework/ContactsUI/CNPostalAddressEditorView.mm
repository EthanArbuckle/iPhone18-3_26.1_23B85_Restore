@interface CNPostalAddressEditorView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isFirstResponder;
- (CNPostalAddress)address;
- (CNPostalAddressEditorView)initWithFrame:(CGRect)frame;
- (CNPresenterDelegate)delegate;
- (NSArray)cellsLayout;
- (UIColor)separatorColor;
- (id)_addressValueForKey:(id)key;
- (id)_cellsLayoutForCountryCode:(id)code;
- (id)_countryCode;
- (id)_normalizeCountryCodeToISO:(id)o;
- (id)keyboardSettingsForAddress:(id)address component:(id)component;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)lineCount;
- (void)_invalidateCellsLayout;
- (void)_setAddressValue:(id)value forKey:(id)key;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)countryPicker:(id)picker didPickCountryCode:(id)code;
- (void)countryPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)keyboardWillShow:(id)show;
- (void)setAb_textAttributes:(id)attributes;
- (void)setAddress:(id)address;
- (void)setBackgroundColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setSeparatorColor:(id)color;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldChanged:(id)changed;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation CNPostalAddressEditorView

- (CNPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)keyboardSettingsForAddress:(id)address component:(id)component
{
  addressCopy = address;
  componentCopy = component;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = 0;
  }

  else
  {
    iSOCountryCode = [addressCopy ISOCountryCode];
    v9 = iSOCountryCode;
    if (iSOCountryCode)
    {
      v10 = iSOCountryCode;
    }

    else
    {
      v10 = &stru_1F0CE7398;
    }

    v11 = v10;

    iSOCountryCode2 = [addressCopy ISOCountryCode];
    v13 = [iSOCountryCode2 isEqualToString:&stru_1F0CE7398];

    if (v13)
    {
      defaultCountryCode = [MEMORY[0x1E69967B0] defaultCountryCode];

      v11 = defaultCountryCode;
    }

    v15 = [MEMORY[0x1E695CF68] formatPropertyKeyForPostalAddressPropertyKey:componentCopy];
    addressFormats = [MEMORY[0x1E69967B8] addressFormats];
    v17 = [addressFormats objectForKeyedSubscript:v11];
    v18 = [v17 objectForKeyedSubscript:@"kbdSettings"];
    v7 = [v18 objectForKeyedSubscript:v15];
    if (!v7)
    {
      v19 = [addressFormats objectForKeyedSubscript:@"defaultKbdSettings"];
      v7 = [v19 objectForKeyedSubscript:v15];
    }
  }

  return v7;
}

- (id)_cellsLayoutForCountryCode:(id)code
{
  v21[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  textFields = [(CNPostalAddressEditorView *)self textFields];
  [textFields removeAllObjects];

  if (![codeCopy length])
  {
    defaultCountryCode = [MEMORY[0x1E69967B0] defaultCountryCode];

    codeCopy = defaultCountryCode;
  }

  v7 = [MEMORY[0x1E695CF68] specificationForCountry:codeCopy];
  if (!v7)
  {
    v8 = MEMORY[0x1E695CF68];
    defaultCountryCode2 = [MEMORY[0x1E69967B0] defaultCountryCode];
    v7 = [v8 specificationForCountry:defaultCountryCode2];
  }

  objc_storeStrong(&self->_formatSpecification, v7);
  editingFieldArrangement = [v7 editingFieldArrangement];
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    _cn_flatten = [editingFieldArrangement _cn_flatten];
    v12 = [_cn_flatten _cn_map:&__block_literal_global_75_27396];

    editingFieldArrangement = v12;
  }

  v21[0] = *MEMORY[0x1E695CC30];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v14 = [editingFieldArrangement indexOfObject:v13];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [editingFieldArrangement mutableCopy];
    [v15 removeObjectAtIndex:v14];
    [v15 insertObject:&unk_1F0D4B988 atIndex:v14];
    [v15 insertObject:&unk_1F0D4B9A0 atIndex:v14];

    editingFieldArrangement = v15;
  }

  v16 = *MEMORY[0x1E6996568];
  address = [(CNPostalAddressEditorView *)self address];
  country = [address country];
  LODWORD(v16) = (*(v16 + 16))(v16, country);

  if (v16)
  {
    v19 = [MEMORY[0x1E695CF68] localizedCountryNameForISOCountryCode:codeCopy];
    [(CNMutablePostalAddress *)self->_address setCountry:v19];

    [(CNMutablePostalAddress *)self->_address setISOCountryCode:codeCopy];
  }

  return editingFieldArrangement;
}

id __56__CNPostalAddressEditorView__cellsLayoutForCountryCode___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v6 count:1];

  return v4;
}

- (id)_normalizeCountryCodeToISO:(id)o
{
  oCopy = o;
  if (_normalizeCountryCodeToISO__onceToken != -1)
  {
    dispatch_once(&_normalizeCountryCodeToISO__onceToken, &__block_literal_global_27408);
  }

  if (![oCopy length] || (objc_msgSend(oCopy, "lowercaseString"), v4 = objc_claimAutoreleasedReturnValue(), oCopy, objc_msgSend(_normalizeCountryCodeToISO__countryCodes, "objectForKeyedSubscript:", v4), v5 = objc_claimAutoreleasedReturnValue(), oCopy = v4, !v5))
  {
    v5 = oCopy;
    v4 = v5;
  }

  return v5;
}

void __56__CNPostalAddressEditorView__normalizeCountryCodeToISO___block_invoke()
{
  v0 = _normalizeCountryCodeToISO__countryCodes;
  _normalizeCountryCodeToISO__countryCodes = &unk_1F0D4BB88;
}

- (id)_countryCode
{
  address = [(CNPostalAddressEditorView *)self address];
  iSOCountryCode = [address ISOCountryCode];
  v5 = [(CNPostalAddressEditorView *)self _normalizeCountryCodeToISO:iSOCountryCode];

  return v5;
}

- (id)_addressValueForKey:(id)key
{
  v4 = *MEMORY[0x1E695CC30];
  keyCopy = key;
  if ([keyCopy rangeOfString:v4])
  {
    address = [(CNPostalAddressEditorView *)self address];
    v7 = [address valueForKey:keyCopy];
  }

  else
  {
    street = [(CNMutablePostalAddress *)self->_address street];
    address = [street componentsSeparatedByString:@"\n"];

    v9 = [keyCopy characterAtIndex:{objc_msgSend(v4, "length")}];
    if (v9 - 49 >= [address count])
    {
      v7 = &stru_1F0CE7398;
    }

    else
    {
      v7 = [address objectAtIndexedSubscript:v9 - 49];
    }
  }

  return v7;
}

- (void)_setAddressValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = *MEMORY[0x1E695CC30];
  v8 = [keyCopy rangeOfString:*MEMORY[0x1E695CC30]];
  address = self->_address;
  if (v8)
  {
    [(CNMutablePostalAddress *)address setValue:valueCopy forKey:keyCopy];
  }

  else
  {
    street = [(CNMutablePostalAddress *)address street];
    v11 = [street componentsSeparatedByString:@"\n"];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    v13 = [keyCopy characterAtIndex:{objc_msgSend(v7, "length")}] - 49;
    if (v13 >= [v12 count])
    {
      [v12 addObject:valueCopy];
    }

    else if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      [v12 removeObjectAtIndex:v13];
    }

    else
    {
      [v12 setObject:valueCopy atIndexedSubscript:v13];
    }

    v14 = [v12 componentsJoinedByString:@"\n"];
    [(CNMutablePostalAddress *)self->_address setStreet:v14];
  }
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = CNPostalAddressEditorView;
  colorCopy = color;
  [(CNPostalAddressEditorView *)&v6 setBackgroundColor:colorCopy];
  v5 = [(CNPostalAddressEditorView *)self tableView:v6.receiver];
  [v5 setBackgroundColor:colorCopy];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  textFields = [(CNPostalAddressEditorView *)self textFields];
  v5 = [textFields objectForKeyedSubscript:*MEMORY[0x1E695CC08]];

  if (v5 == editingCopy)
  {
    v6 = objc_alloc_init(CNCountryPickerController);
    [(CNCountryPickerController *)v6 setDelegate:self];
    address = [(CNPostalAddressEditorView *)self address];
    iSOCountryCode = [address ISOCountryCode];
    [(CNCountryPickerController *)v6 setSelectedCountryCode:iSOCountryCode];

    delegate = [(CNPostalAddressEditorView *)self delegate];
    superview = [editingCopy superview];
    [delegate sender:superview presentViewController:v6];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  backgroundColor = [(CNPostalAddressEditorView *)self backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  [cellCopy setPreservesSuperviewLayoutMargins:0];
  v9 = [pathCopy row];

  [cellCopy setSeparatorStyle:{v9 != -[CNPostalAddressEditorView lineCount](self, "lineCount") - 1}];
  [cellCopy _setShouldHaveFullLengthTopSeparator:1];
  [cellCopy setLayoutMarginsFollowReadableWidth:0];
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  [cellCopy setLayoutMargins:{*MEMORY[0x1E69DDCE0], v11, v12, v13}];
  [cellCopy setSeparatorInset:{v10, v11, v12, v13}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  cellsLayout = [(CNPostalAddressEditorView *)self cellsLayout];
  v10 = [cellsLayout objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = off_1E74DE9D0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    if ([v10 count] >= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CNPostalAddressEditorView.m" lineNumber:324 description:@"Only one or two cells per line are supported."];
    }

    if ([v10 count] > 1)
    {
      v11 = off_1E74DE9C8;
    }
  }

  [(__objc2_class *)*v11 cellIdentifier];
  v34 = pathCopy;
  v33 = v35 = viewCopy;
  v12 = [viewCopy dequeueReusableCellWithIdentifier:? forIndexPath:?];
  [v12 setTextAttributes:self->_valueTextAttributes];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:clearColor];

  v36 = v12;
  textFields = [v12 textFields];
  v14 = [textFields count];
  if (v14 != [v10 count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CNPostalAddressEditorView.m" lineNumber:337 description:@"We should have as many text fields as there are line parts."];
  }

  if ([v10 count])
  {
    v15 = 0;
    v39 = *MEMORY[0x1E695CC30];
    v37 = *MEMORY[0x1E695CC08];
    do
    {
      v16 = [v10 objectAtIndexedSubscript:v15];
      v17 = [textFields objectAtIndexedSubscript:v15];
      v18 = [(CNPostalAddressEditorView *)self _addressValueForKey:v16];
      [v17 setText:v18];

      v19 = v16;
      if (![v16 rangeOfString:v39])
      {
        v19 = v39;
      }

      formatSpecification = [(CNPostalAddressEditorView *)self formatSpecification];
      v21 = [formatSpecification localizedPlaceholderForKey:v19];

      placeholder = [v17 placeholder];
      v23 = [placeholder isEqualToString:v21];

      if ((v23 & 1) == 0)
      {
        [v17 setPlaceholder:v21];
      }

      address = [(CNPostalAddressEditorView *)self address];
      v25 = [(CNPostalAddressEditorView *)self keyboardSettingsForAddress:address component:v19];

      [v17 setKeyboardType:{+[CNKeyboardSettings keyboardTypeFromDictionary:](CNKeyboardSettings, "keyboardTypeFromDictionary:", v25)}];
      [v17 setAutocapitalizationType:{+[CNKeyboardSettings autocapitalizationTypeFromDictionary:](CNKeyboardSettings, "autocapitalizationTypeFromDictionary:", v25)}];
      [v17 setAutocorrectionType:{+[CNKeyboardSettings autocorrectionTypeFromDictionary:](CNKeyboardSettings, "autocorrectionTypeFromDictionary:", v25)}];
      [v17 _cnui_applyContactStyle];
      v26 = [v10 objectAtIndexedSubscript:v15];
      v27 = [v26 isEqualToString:v37];

      if (v27)
      {
        [v36 setShowsChevron:1];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      [v17 setDelegate:selfCopy];
      textFields2 = [(CNPostalAddressEditorView *)self textFields];
      [textFields2 setObject:v17 forKeyedSubscript:v16];

      ++v15;
    }

    while (v15 < [v10 count]);
  }

  [v36 setNeedsUpdateConstraints];

  return v36;
}

- (void)countryPicker:(id)picker didPickCountryCode:(id)code
{
  address = self->_address;
  codeCopy = code;
  pickerCopy = picker;
  [(CNMutablePostalAddress *)address setISOCountryCode:codeCopy];
  v9 = [MEMORY[0x1E695CF68] localizedCountryNameForISOCountryCode:codeCopy];

  [(CNMutablePostalAddress *)self->_address setCountry:v9];
  [(CNPostalAddressEditorView *)self _invalidateCellsLayout];
  [(CNPostalAddressEditorView *)self sendActionsForControlEvents:0x1000000];
  [(CNPostalAddressEditorView *)self sendActionsForControlEvents:4096];
  delegate = [(CNPostalAddressEditorView *)self delegate];
  [delegate sender:self dismissViewController:pickerCopy];
}

- (void)countryPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  delegate = [(CNPostalAddressEditorView *)self delegate];
  [delegate sender:self dismissViewController:cancelCopy];
}

- (void)keyboardWillShow:(id)show
{
  textFields = [(CNPostalAddressEditorView *)self textFields];
  v4 = [textFields objectForKeyedSubscript:*MEMORY[0x1E695CC08]];

  if ([v4 isFirstResponder])
  {
    [v4 resignFirstResponder];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v5 = 44.0;
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    v5 = 33.0;
  }

  [v6 _scaledValueForValue:v5];
  [(CNPostalAddressEditorTableView *)self->_tableView setRowHeight:?];
  [(CNPostalAddressEditorView *)self _invalidateCellsLayout];
}

- (void)textFieldChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  object = [changed object];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  textFields = [(CNPostalAddressEditorView *)self textFields];
  allKeys = [textFields allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        textFields2 = [(CNPostalAddressEditorView *)self textFields];
        v13 = [textFields2 objectForKeyedSubscript:v11];

        if (object == v13)
        {
          text = [object text];
          [(CNPostalAddressEditorView *)self _setAddressValue:text forKey:v11];

          [(CNPostalAddressEditorView *)self sendActionsForControlEvents:4096];
          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (NSArray)cellsLayout
{
  cellsLayout = self->_cellsLayout;
  if (!cellsLayout)
  {
    _countryCode = [(CNPostalAddressEditorView *)self _countryCode];
    v5 = [(CNPostalAddressEditorView *)self _cellsLayoutForCountryCode:_countryCode];
    v6 = [v5 copy];
    v7 = self->_cellsLayout;
    self->_cellsLayout = v6;

    cellsLayout = self->_cellsLayout;
  }

  return cellsLayout;
}

- (void)_invalidateCellsLayout
{
  [(CNPostalAddressEditorView *)self setCellsLayout:0];
  tableView = [(CNPostalAddressEditorView *)self tableView];
  [tableView reloadData];

  tableView2 = [(CNPostalAddressEditorView *)self tableView];
  [tableView2 invalidateIntrinsicContentSize];
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy isEqual:self->_address];
  v5 = addressCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [addressCopy mutableCopy];
    address = self->_address;
    self->_address = v6;

    _countryCode = [(CNPostalAddressEditorView *)self _countryCode];
    if (_countryCode)
    {
      [(CNMutablePostalAddress *)self->_address setISOCountryCode:_countryCode];
    }

    [(CNPostalAddressEditorView *)self _invalidateCellsLayout];

    v5 = addressCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (CNPostalAddress)address
{
  address = self->_address;
  if (!address)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF30]);
    v5 = self->_address;
    self->_address = v4;

    defaultCountryCode = [MEMORY[0x1E69967B0] defaultCountryCode];
    [(CNMutablePostalAddress *)self->_address setISOCountryCode:defaultCountryCode];

    address = self->_address;
  }

  return address;
}

- (UIColor)separatorColor
{
  tableView = [(CNPostalAddressEditorView *)self tableView];
  separatorColor = [tableView separatorColor];

  return separatorColor;
}

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  tableView = [(CNPostalAddressEditorView *)self tableView];
  [tableView setSeparatorColor:colorCopy];
}

- (void)setAb_textAttributes:(id)attributes
{
  if (self->_valueTextAttributes != attributes)
  {
    v4 = [attributes copy];
    valueTextAttributes = self->_valueTextAttributes;
    self->_valueTextAttributes = v4;

    tableView = [(CNPostalAddressEditorView *)self tableView];
    [tableView reloadData];

    tableView2 = [(CNPostalAddressEditorView *)self tableView];
    [tableView2 invalidateIntrinsicContentSize];
  }
}

- (int64_t)lineCount
{
  cellsLayout = [(CNPostalAddressEditorView *)self cellsLayout];
  v3 = [cellsLayout count];

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CNPostalAddressEditorView;
  [(CNPostalAddressEditorView *)&v16 setEnabled:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  textFields = [(CNPostalAddressEditorView *)self textFields];
  allValues = [textFields allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setEnabled:enabledCopy];
        [v11 setUserInteractionEnabled:enabledCopy];
        [v11 _cnui_applyContactStyle];
      }

      v8 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)becomeFirstResponder
{
  textFields = [(CNPostalAddressEditorView *)self textFields];
  v4 = [textFields objectForKeyedSubscript:@"street1"];

  if (!v4)
  {
    return 0;
  }

  textFields2 = [(CNPostalAddressEditorView *)self textFields];
  v6 = [textFields2 objectForKeyedSubscript:@"street1"];
  becomeFirstResponder = [v6 becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)isFirstResponder
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  textFields = [(CNPostalAddressEditorView *)self textFields];
  allValues = [textFields allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v8 + 1) + 8 * i) isFirstResponder])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)canBecomeFirstResponder
{
  textFields = [(CNPostalAddressEditorView *)self textFields];
  v4 = [textFields objectForKeyedSubscript:@"street1"];
  if (v4)
  {
    isEnabled = [(CNPostalAddressEditorView *)self isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  return isEnabled;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPostalAddressEditorView;
  [(CNPostalAddressEditorView *)&v4 dealloc];
}

- (CNPostalAddressEditorView)initWithFrame:(CGRect)frame
{
  v33[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CNPostalAddressEditorView;
  v3 = [(CNPostalAddressEditorView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = [CNPostalAddressEditorTableView alloc];
    [(CNPostalAddressEditorView *)v3 bounds];
    v6 = [(CNPostalAddressEditorTableView *)v5 initWithFrame:0 style:?];
    tableView = v3->_tableView;
    v3->_tableView = v6;

    [(CNPostalAddressEditorTableView *)v3->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNPostalAddressEditorTableView *)v3->_tableView setDelegate:v3];
    [(CNPostalAddressEditorTableView *)v3->_tableView setDataSource:v3];
    [(CNPostalAddressEditorTableView *)v3->_tableView _setMarginWidth:0.0];
    [(CNPostalAddressEditorTableView *)v3->_tableView setScrollEnabled:0];
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v9 = 44.0;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v9 = 33.0;
    }

    [v4 _scaledValueForValue:v9];
    [(CNPostalAddressEditorTableView *)v3->_tableView setRowHeight:?];
    [(CNPostalAddressEditorTableView *)v3->_tableView setSeparatorStyle:0];
    [(CNPostalAddressEditorTableView *)v3->_tableView setLayoutMarginsFollowReadableWidth:0];
    [(CNPostalAddressEditorTableView *)v3->_tableView setPreservesSuperviewLayoutMargins:0];
    [(CNPostalAddressEditorTableView *)v3->_tableView _setNeedsLayoutOnVisibleBoundsChange:1];
    [(CNPostalAddressEditorView *)v3 addSubview:v3->_tableView];
    array = [MEMORY[0x1E695DF70] array];
    v11 = MEMORY[0x1E696ACD8];
    v32 = @"tableView";
    v33[0] = v3->_tableView;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v13 = [v11 constraintsWithVisualFormat:@"H:|-0-[tableView]-0-|" options:0 metrics:0 views:v12];
    [array addObjectsFromArray:v13];

    v14 = MEMORY[0x1E696ACD8];
    v30 = @"tableView";
    v31 = v3->_tableView;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v16 = [v14 constraintsWithVisualFormat:@"V:|-0-[tableView]-0-|" options:0 metrics:0 views:v15];
    [array addObjectsFromArray:v16];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v17 = v3->_tableView;
    v18 = objc_opt_class();
    v19 = +[CNAddressComponentTextFieldCell cellIdentifier];
    [(CNPostalAddressEditorTableView *)v17 registerClass:v18 forCellReuseIdentifier:v19];

    v20 = v3->_tableView;
    v21 = objc_opt_class();
    v22 = +[CNAddressComponentSplitTextFieldCell cellIdentifier];
    [(CNPostalAddressEditorTableView *)v20 registerClass:v21 forCellReuseIdentifier:v22];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    textFields = v3->_textFields;
    v3->_textFields = v25;

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];
  }

  return v3;
}

@end