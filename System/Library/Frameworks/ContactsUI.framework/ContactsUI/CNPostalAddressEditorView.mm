@interface CNPostalAddressEditorView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isFirstResponder;
- (CNPostalAddress)address;
- (CNPostalAddressEditorView)initWithFrame:(CGRect)a3;
- (CNPresenterDelegate)delegate;
- (NSArray)cellsLayout;
- (UIColor)separatorColor;
- (id)_addressValueForKey:(id)a3;
- (id)_cellsLayoutForCountryCode:(id)a3;
- (id)_countryCode;
- (id)_normalizeCountryCodeToISO:(id)a3;
- (id)keyboardSettingsForAddress:(id)a3 component:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)lineCount;
- (void)_invalidateCellsLayout;
- (void)_setAddressValue:(id)a3 forKey:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)countryPicker:(id)a3 didPickCountryCode:(id)a4;
- (void)countryPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)keyboardWillShow:(id)a3;
- (void)setAb_textAttributes:(id)a3;
- (void)setAddress:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setSeparatorColor:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldChanged:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation CNPostalAddressEditorView

- (CNPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)keyboardSettingsForAddress:(id)a3 component:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 ISOCountryCode];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1F0CE7398;
    }

    v11 = v10;

    v12 = [v5 ISOCountryCode];
    v13 = [v12 isEqualToString:&stru_1F0CE7398];

    if (v13)
    {
      v14 = [MEMORY[0x1E69967B0] defaultCountryCode];

      v11 = v14;
    }

    v15 = [MEMORY[0x1E695CF68] formatPropertyKeyForPostalAddressPropertyKey:v6];
    v16 = [MEMORY[0x1E69967B8] addressFormats];
    v17 = [v16 objectForKeyedSubscript:v11];
    v18 = [v17 objectForKeyedSubscript:@"kbdSettings"];
    v7 = [v18 objectForKeyedSubscript:v15];
    if (!v7)
    {
      v19 = [v16 objectForKeyedSubscript:@"defaultKbdSettings"];
      v7 = [v19 objectForKeyedSubscript:v15];
    }
  }

  return v7;
}

- (id)_cellsLayoutForCountryCode:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPostalAddressEditorView *)self textFields];
  [v5 removeAllObjects];

  if (![v4 length])
  {
    v6 = [MEMORY[0x1E69967B0] defaultCountryCode];

    v4 = v6;
  }

  v7 = [MEMORY[0x1E695CF68] specificationForCountry:v4];
  if (!v7)
  {
    v8 = MEMORY[0x1E695CF68];
    v9 = [MEMORY[0x1E69967B0] defaultCountryCode];
    v7 = [v8 specificationForCountry:v9];
  }

  objc_storeStrong(&self->_formatSpecification, v7);
  v10 = [v7 editingFieldArrangement];
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v11 = [v10 _cn_flatten];
    v12 = [v11 _cn_map:&__block_literal_global_75_27396];

    v10 = v12;
  }

  v21[0] = *MEMORY[0x1E695CC30];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v14 = [v10 indexOfObject:v13];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v10 mutableCopy];
    [v15 removeObjectAtIndex:v14];
    [v15 insertObject:&unk_1F0D4B988 atIndex:v14];
    [v15 insertObject:&unk_1F0D4B9A0 atIndex:v14];

    v10 = v15;
  }

  v16 = *MEMORY[0x1E6996568];
  v17 = [(CNPostalAddressEditorView *)self address];
  v18 = [v17 country];
  LODWORD(v16) = (*(v16 + 16))(v16, v18);

  if (v16)
  {
    v19 = [MEMORY[0x1E695CF68] localizedCountryNameForISOCountryCode:v4];
    [(CNMutablePostalAddress *)self->_address setCountry:v19];

    [(CNMutablePostalAddress *)self->_address setISOCountryCode:v4];
  }

  return v10;
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

- (id)_normalizeCountryCodeToISO:(id)a3
{
  v3 = a3;
  if (_normalizeCountryCodeToISO__onceToken != -1)
  {
    dispatch_once(&_normalizeCountryCodeToISO__onceToken, &__block_literal_global_27408);
  }

  if (![v3 length] || (objc_msgSend(v3, "lowercaseString"), v4 = objc_claimAutoreleasedReturnValue(), v3, objc_msgSend(_normalizeCountryCodeToISO__countryCodes, "objectForKeyedSubscript:", v4), v5 = objc_claimAutoreleasedReturnValue(), v3 = v4, !v5))
  {
    v5 = v3;
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
  v3 = [(CNPostalAddressEditorView *)self address];
  v4 = [v3 ISOCountryCode];
  v5 = [(CNPostalAddressEditorView *)self _normalizeCountryCodeToISO:v4];

  return v5;
}

- (id)_addressValueForKey:(id)a3
{
  v4 = *MEMORY[0x1E695CC30];
  v5 = a3;
  if ([v5 rangeOfString:v4])
  {
    v6 = [(CNPostalAddressEditorView *)self address];
    v7 = [v6 valueForKey:v5];
  }

  else
  {
    v8 = [(CNMutablePostalAddress *)self->_address street];
    v6 = [v8 componentsSeparatedByString:@"\n"];

    v9 = [v5 characterAtIndex:{objc_msgSend(v4, "length")}];
    if (v9 - 49 >= [v6 count])
    {
      v7 = &stru_1F0CE7398;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:v9 - 49];
    }
  }

  return v7;
}

- (void)_setAddressValue:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E695CC30];
  v8 = [v6 rangeOfString:*MEMORY[0x1E695CC30]];
  address = self->_address;
  if (v8)
  {
    [(CNMutablePostalAddress *)address setValue:v15 forKey:v6];
  }

  else
  {
    v10 = [(CNMutablePostalAddress *)address street];
    v11 = [v10 componentsSeparatedByString:@"\n"];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    v13 = [v6 characterAtIndex:{objc_msgSend(v7, "length")}] - 49;
    if (v13 >= [v12 count])
    {
      [v12 addObject:v15];
    }

    else if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      [v12 removeObjectAtIndex:v13];
    }

    else
    {
      [v12 setObject:v15 atIndexedSubscript:v13];
    }

    v14 = [v12 componentsJoinedByString:@"\n"];
    [(CNMutablePostalAddress *)self->_address setStreet:v14];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNPostalAddressEditorView;
  v4 = a3;
  [(CNPostalAddressEditorView *)&v6 setBackgroundColor:v4];
  v5 = [(CNPostalAddressEditorView *)self tableView:v6.receiver];
  [v5 setBackgroundColor:v4];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v11 = a3;
  v4 = [(CNPostalAddressEditorView *)self textFields];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695CC08]];

  if (v5 == v11)
  {
    v6 = objc_alloc_init(CNCountryPickerController);
    [(CNCountryPickerController *)v6 setDelegate:self];
    v7 = [(CNPostalAddressEditorView *)self address];
    v8 = [v7 ISOCountryCode];
    [(CNCountryPickerController *)v6 setSelectedCountryCode:v8];

    v9 = [(CNPostalAddressEditorView *)self delegate];
    v10 = [v11 superview];
    [v9 sender:v10 presentViewController:v6];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(CNPostalAddressEditorView *)self backgroundColor];
  [v14 setBackgroundColor:v8];

  [v14 setPreservesSuperviewLayoutMargins:0];
  v9 = [v7 row];

  [v14 setSeparatorStyle:{v9 != -[CNPostalAddressEditorView lineCount](self, "lineCount") - 1}];
  [v14 _setShouldHaveFullLengthTopSeparator:1];
  [v14 setLayoutMarginsFollowReadableWidth:0];
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  [v14 setLayoutMargins:{*MEMORY[0x1E69DDCE0], v11, v12, v13}];
  [v14 setSeparatorInset:{v10, v11, v12, v13}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNPostalAddressEditorView *)self cellsLayout];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

  v11 = off_1E74DE9D0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    if ([v10 count] >= 3)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"CNPostalAddressEditorView.m" lineNumber:324 description:@"Only one or two cells per line are supported."];
    }

    if ([v10 count] > 1)
    {
      v11 = off_1E74DE9C8;
    }
  }

  [(__objc2_class *)*v11 cellIdentifier];
  v34 = v8;
  v33 = v35 = v7;
  v12 = [v7 dequeueReusableCellWithIdentifier:? forIndexPath:?];
  [v12 setTextAttributes:self->_valueTextAttributes];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v13];

  v36 = v12;
  v38 = [v12 textFields];
  v14 = [v38 count];
  if (v14 != [v10 count])
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"CNPostalAddressEditorView.m" lineNumber:337 description:@"We should have as many text fields as there are line parts."];
  }

  if ([v10 count])
  {
    v15 = 0;
    v39 = *MEMORY[0x1E695CC30];
    v37 = *MEMORY[0x1E695CC08];
    do
    {
      v16 = [v10 objectAtIndexedSubscript:v15];
      v17 = [v38 objectAtIndexedSubscript:v15];
      v18 = [(CNPostalAddressEditorView *)self _addressValueForKey:v16];
      [v17 setText:v18];

      v19 = v16;
      if (![v16 rangeOfString:v39])
      {
        v19 = v39;
      }

      v20 = [(CNPostalAddressEditorView *)self formatSpecification];
      v21 = [v20 localizedPlaceholderForKey:v19];

      v22 = [v17 placeholder];
      v23 = [v22 isEqualToString:v21];

      if ((v23 & 1) == 0)
      {
        [v17 setPlaceholder:v21];
      }

      v24 = [(CNPostalAddressEditorView *)self address];
      v25 = [(CNPostalAddressEditorView *)self keyboardSettingsForAddress:v24 component:v19];

      [v17 setKeyboardType:{+[CNKeyboardSettings keyboardTypeFromDictionary:](CNKeyboardSettings, "keyboardTypeFromDictionary:", v25)}];
      [v17 setAutocapitalizationType:{+[CNKeyboardSettings autocapitalizationTypeFromDictionary:](CNKeyboardSettings, "autocapitalizationTypeFromDictionary:", v25)}];
      [v17 setAutocorrectionType:{+[CNKeyboardSettings autocorrectionTypeFromDictionary:](CNKeyboardSettings, "autocorrectionTypeFromDictionary:", v25)}];
      [v17 _cnui_applyContactStyle];
      v26 = [v10 objectAtIndexedSubscript:v15];
      v27 = [v26 isEqualToString:v37];

      if (v27)
      {
        [v36 setShowsChevron:1];
        v28 = self;
      }

      else
      {
        v28 = 0;
      }

      [v17 setDelegate:v28];
      v29 = [(CNPostalAddressEditorView *)self textFields];
      [v29 setObject:v17 forKeyedSubscript:v16];

      ++v15;
    }

    while (v15 < [v10 count]);
  }

  [v36 setNeedsUpdateConstraints];

  return v36;
}

- (void)countryPicker:(id)a3 didPickCountryCode:(id)a4
{
  address = self->_address;
  v7 = a4;
  v8 = a3;
  [(CNMutablePostalAddress *)address setISOCountryCode:v7];
  v9 = [MEMORY[0x1E695CF68] localizedCountryNameForISOCountryCode:v7];

  [(CNMutablePostalAddress *)self->_address setCountry:v9];
  [(CNPostalAddressEditorView *)self _invalidateCellsLayout];
  [(CNPostalAddressEditorView *)self sendActionsForControlEvents:0x1000000];
  [(CNPostalAddressEditorView *)self sendActionsForControlEvents:4096];
  v10 = [(CNPostalAddressEditorView *)self delegate];
  [v10 sender:self dismissViewController:v8];
}

- (void)countryPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNPostalAddressEditorView *)self delegate];
  [v5 sender:self dismissViewController:v4];
}

- (void)keyboardWillShow:(id)a3
{
  v3 = [(CNPostalAddressEditorView *)self textFields];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695CC08]];

  if ([v4 isFirstResponder])
  {
    [v4 resignFirstResponder];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v5 = 44.0;
  if (v4)
  {
    v5 = 33.0;
  }

  [v6 _scaledValueForValue:v5];
  [(CNPostalAddressEditorTableView *)self->_tableView setRowHeight:?];
  [(CNPostalAddressEditorView *)self _invalidateCellsLayout];
}

- (void)textFieldChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CNPostalAddressEditorView *)self textFields];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(CNPostalAddressEditorView *)self textFields];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v4 == v13)
        {
          v14 = [v4 text];
          [(CNPostalAddressEditorView *)self _setAddressValue:v14 forKey:v11];

          [(CNPostalAddressEditorView *)self sendActionsForControlEvents:4096];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4 = [(CNPostalAddressEditorView *)self _countryCode];
    v5 = [(CNPostalAddressEditorView *)self _cellsLayoutForCountryCode:v4];
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
  v3 = [(CNPostalAddressEditorView *)self tableView];
  [v3 reloadData];

  v4 = [(CNPostalAddressEditorView *)self tableView];
  [v4 invalidateIntrinsicContentSize];
}

- (void)setAddress:(id)a3
{
  v9 = a3;
  v4 = [v9 isEqual:self->_address];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = [v9 mutableCopy];
    address = self->_address;
    self->_address = v6;

    v8 = [(CNPostalAddressEditorView *)self _countryCode];
    if (v8)
    {
      [(CNMutablePostalAddress *)self->_address setISOCountryCode:v8];
    }

    [(CNPostalAddressEditorView *)self _invalidateCellsLayout];

    v5 = v9;
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

    v6 = [MEMORY[0x1E69967B0] defaultCountryCode];
    [(CNMutablePostalAddress *)self->_address setISOCountryCode:v6];

    address = self->_address;
  }

  return address;
}

- (UIColor)separatorColor
{
  v2 = [(CNPostalAddressEditorView *)self tableView];
  v3 = [v2 separatorColor];

  return v3;
}

- (void)setSeparatorColor:(id)a3
{
  v4 = a3;
  v5 = [(CNPostalAddressEditorView *)self tableView];
  [v5 setSeparatorColor:v4];
}

- (void)setAb_textAttributes:(id)a3
{
  if (self->_valueTextAttributes != a3)
  {
    v4 = [a3 copy];
    valueTextAttributes = self->_valueTextAttributes;
    self->_valueTextAttributes = v4;

    v6 = [(CNPostalAddressEditorView *)self tableView];
    [v6 reloadData];

    v7 = [(CNPostalAddressEditorView *)self tableView];
    [v7 invalidateIntrinsicContentSize];
  }
}

- (int64_t)lineCount
{
  v2 = [(CNPostalAddressEditorView *)self cellsLayout];
  v3 = [v2 count];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CNPostalAddressEditorView;
  [(CNPostalAddressEditorView *)&v16 setEnabled:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CNPostalAddressEditorView *)self textFields];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setEnabled:v3];
        [v11 setUserInteractionEnabled:v3];
        [v11 _cnui_applyContactStyle];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(CNPostalAddressEditorView *)self textFields];
  v4 = [v3 objectForKeyedSubscript:@"street1"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNPostalAddressEditorView *)self textFields];
  v6 = [v5 objectForKeyedSubscript:@"street1"];
  v7 = [v6 becomeFirstResponder];

  return v7;
}

- (BOOL)isFirstResponder
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CNPostalAddressEditorView *)self textFields];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isFirstResponder])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [(CNPostalAddressEditorView *)self textFields];
  v4 = [v3 objectForKeyedSubscript:@"street1"];
  if (v4)
  {
    v5 = [(CNPostalAddressEditorView *)self isEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPostalAddressEditorView;
  [(CNPostalAddressEditorView *)&v4 dealloc];
}

- (CNPostalAddressEditorView)initWithFrame:(CGRect)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CNPostalAddressEditorView;
  v3 = [(CNPostalAddressEditorView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v9 = 44.0;
    if (v8)
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
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = MEMORY[0x1E696ACD8];
    v32 = @"tableView";
    v33[0] = v3->_tableView;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v13 = [v11 constraintsWithVisualFormat:@"H:|-0-[tableView]-0-|" options:0 metrics:0 views:v12];
    [v10 addObjectsFromArray:v13];

    v14 = MEMORY[0x1E696ACD8];
    v30 = @"tableView";
    v31 = v3->_tableView;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v16 = [v14 constraintsWithVisualFormat:@"V:|-0-[tableView]-0-|" options:0 metrics:0 views:v15];
    [v10 addObjectsFromArray:v16];

    [MEMORY[0x1E696ACD8] activateConstraints:v10];
    v17 = v3->_tableView;
    v18 = objc_opt_class();
    v19 = +[CNAddressComponentTextFieldCell cellIdentifier];
    [(CNPostalAddressEditorTableView *)v17 registerClass:v18 forCellReuseIdentifier:v19];

    v20 = v3->_tableView;
    v21 = objc_opt_class();
    v22 = +[CNAddressComponentSplitTextFieldCell cellIdentifier];
    [(CNPostalAddressEditorTableView *)v20 registerClass:v21 forCellReuseIdentifier:v22];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v3 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    textFields = v3->_textFields;
    v3->_textFields = v25;

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v3 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];
  }

  return v3;
}

@end