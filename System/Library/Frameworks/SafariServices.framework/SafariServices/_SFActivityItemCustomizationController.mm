@interface _SFActivityItemCustomizationController
- (_SFActivityItemCustomizationController)init;
- (_SFActivityItemCustomizationDelegate)delegate;
- (id)_allowedContentTypes;
- (id)_customizationGroupsForActivityViewController:(id)controller;
- (int64_t)_contentTypeForAllowedContentAtIndex:(int64_t)index;
- (int64_t)_selectedIndex;
- (void)_customizationsDidChange;
- (void)_ensureSelectedContentTypeIsAllowed;
- (void)setDelegate:(id)delegate;
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

- (id)_customizationGroupsForActivityViewController:(id)controller
{
  v18[1] = *MEMORY[0x1E69E9840];
  _allowedContentTypes = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v5 = [_allowedContentTypes safari_mapObjectsUsingBlock:&__block_literal_global_43];

  if ([v5 count] >= 2)
  {
    v7 = MEMORY[0x1E69CDA48];
    _selectedIndex = [(_SFActivityItemCustomizationController *)self _selectedIndex];
    v9 = _WBSLocalizedString();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88___SFActivityItemCustomizationController__customizationGroupsForActivityViewController___block_invoke_2;
    v16[3] = &unk_1E84942A0;
    v16[4] = self;
    v10 = [v7 pickerCustomizationWithIdentifier:@"SFActivityFormatPicker" options:v5 selectedOptionIndex:_selectedIndex footerText:v9 valueChangedHandler:v16];

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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegateCopy webViewForCustomizationController:self];
    if (objc_opt_respondsToSelector())
    {
      v6 = [delegateCopy isContentObscuredByDigitalHealthForCustomizationController:self];
    }

    else
    {
      v6 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [delegateCopy isDisplayingQuickLookDocumentForCustomizationController:self] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [delegateCopy isReaderAvailableForCustomizationController:self];
    }

    else
    {
      v8 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [delegateCopy isShowingReaderForCustomizationController:self];
    }

    else
    {
      v9 = 0;
    }

    _isDisplayingStandaloneImageDocument = [v5 _isDisplayingStandaloneImageDocument];
    v11 = _isDisplayingStandaloneImageDocument;
    if ((v6 | _isDisplayingStandaloneImageDocument))
    {
      _isDisplayingPDF = 0;
    }

    else
    {
      _isDisplayingStandaloneMediaDocument = [v5 _isDisplayingStandaloneMediaDocument];
      if ((_isDisplayingStandaloneMediaDocument | v7))
      {
        _isDisplayingPDF = _isDisplayingStandaloneMediaDocument ^ 1;
      }

      else
      {
        _isDisplayingPDF = [v5 _isDisplayingPDF];
      }
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __54___SFActivityItemCustomizationController_setDelegate___block_invoke;
    v20 = &unk_1E84942C8;
    v22 = _isDisplayingPDF;
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

- (int64_t)_contentTypeForAllowedContentAtIndex:(int64_t)index
{
  _allowedContentTypes = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v5 = [_allowedContentTypes objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)_selectedIndex
{
  _allowedContentTypes = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_selectedContentType];
  v5 = [_allowedContentTypes indexOfObject:v4];

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
    _allowedContentTypes = [(_SFActivityItemCustomizationController *)self _allowedContentTypes];
    firstObject = [_allowedContentTypes firstObject];

    v5 = firstObject;
    if (firstObject)
    {
      integerValue = [firstObject integerValue];
      v5 = firstObject;
    }

    else
    {
      integerValue = 0;
    }

    self->_selectedContentType = integerValue;
  }
}

- (_SFActivityItemCustomizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end