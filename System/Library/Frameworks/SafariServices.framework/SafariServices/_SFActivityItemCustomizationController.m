@interface _SFActivityItemCustomizationController
- (_SFActivityItemCustomizationController)init;
- (_SFActivityItemCustomizationDelegate)delegate;
- (id)_allowedContentTypes;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (int64_t)_contentTypeForAllowedContentAtIndex:(int64_t)a3;
- (int64_t)_selectedIndex;
- (void)_customizationsDidChange;
- (void)_ensureSelectedContentTypeIsAllowed;
- (void)setDelegate:(id)a3;
@end

@implementation _SFActivityItemCustomizationController

- (_SFActivityItemCustomizationController)init
{
  v6.receiver = self;
  v6.super_class = _SFActivityItemCustomizationController;
  v2 = [(_SFActivityItemCustomizationController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_contentTypeAllowedMap[4] = 1;
    *v2->_contentTypeAllowedMap = 16843009;
    v2->_selectedContentType = 0;
    v4 = v2;
  }

  return v3;
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_43];

  if ([v5 count] >= 2)
  {
    v7 = MEMORY[0x1E69CDA48];
    v8 = [(_SFActivityItemCustomizationController *)self _selectedIndex];
    v9 = _WBSLocalizedString();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88___SFActivityItemCustomizationController__customizationGroupsForActivityViewController___block_invoke_2;
    v16[3] = &unk_1E84942A0;
    v16[4] = self;
    v10 = [v7 pickerCustomizationWithIdentifier:@"SFActivityFormatPicker" options:v5 selectedOptionIndex:v8 footerText:v9 valueChangedHandler:v16];

    v11 = objc_alloc(MEMORY[0x1E69CDA50]);
    v12 = _WBSLocalizedString();
    v18[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [v11 _initGroupWithName:v12 identifier:@"SFActivityFormatGroup" customizations:v13];

    v17 = v14;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 webViewForCustomizationController:self];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 isContentObscuredByDigitalHealthForCustomizationController:self];
    }

    else
    {
      v6 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 isDisplayingQuickLookDocumentForCustomizationController:self] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v4 isReaderAvailableForCustomizationController:self];
    }

    else
    {
      v8 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v4 isShowingReaderForCustomizationController:self];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 _isDisplayingStandaloneImageDocument];
    v11 = v10;
    if ((v6 | v10))
    {
      v12 = 0;
    }

    else
    {
      v13 = [v5 _isDisplayingStandaloneMediaDocument];
      if ((v13 | v7))
      {
        v12 = v13 ^ 1;
      }

      else
      {
        v12 = [v5 _isDisplayingPDF];
      }
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __54___SFActivityItemCustomizationController_setDelegate___block_invoke;
    v20 = &unk_1E84942C8;
    v22 = v12;
    v23 = v9;
    v24 = v8;
    v14 = v5;
    v21 = v14;
    v25 = v6;
    v26 = v11;
    v15 = _Block_copy(&v17);
    for (i = 0; i != 5; ++i)
    {
      self->_contentTypeAllowedMap[i] = v15[2](v15, i);
    }

    [(_SFActivityItemCustomizationController *)self _ensureSelectedContentTypeIsAllowed:v17];
  }
}

- (int64_t)_contentTypeForAllowedContentAtIndex:(int64_t)a3
{
  v4 = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (int64_t)_selectedIndex
{
  v3 = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_selectedContentType];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

- (id)_allowedContentTypes
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v4 = 0;
  contentTypeAllowedMap = self->_contentTypeAllowedMap;
  do
  {
    if (contentTypeAllowedMap[v4])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      [v3 addObject:v6];
    }

    ++v4;
  }

  while (v4 != 5);
  v7 = [v3 copy];

  return v7;
}

- (void)_customizationsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained customizationControllerCustomizationsDidChange:self];
  }
}

- (void)_ensureSelectedContentTypeIsAllowed
{
  if (!self->_contentTypeAllowedMap[self->_selectedContentType])
  {
    v4 = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
    v7 = [v4 firstObject];

    v5 = v7;
    if (v7)
    {
      v6 = [v7 integerValue];
      v5 = v7;
    }

    else
    {
      v6 = 0;
    }

    self->_selectedContentType = v6;
  }
}

- (_SFActivityItemCustomizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end