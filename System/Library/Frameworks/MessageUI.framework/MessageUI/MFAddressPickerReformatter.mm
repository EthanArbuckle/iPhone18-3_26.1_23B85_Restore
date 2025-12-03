@interface MFAddressPickerReformatter
- (BOOL)_attemptUniquingDisplayedStringsUsingBlock:(id)block;
- (BOOL)_reformattedAddressesByDisplayedStringsAreUnique:(id)unique;
- (id)_reformattedAddressesByDisplayedStrings;
- (id)_saveMiddleTruncationRanges;
- (id)reformattedAddressAtIndex:(unint64_t)index;
- (id)reformattedAddressStringAtIndex:(unint64_t)index;
- (void)_attemptUniquingDisplayedStrings;
- (void)_determineFontSize:(BOOL *)size;
- (void)_expandAllLocalParts;
- (void)_invalidateReformattedAddresses;
- (void)_restoreMiddleTruncationRanges:(id)ranges;
- (void)_truncateIdenticalLocalPartsWithDifferentDomainParts;
- (void)_truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength:(unint64_t)length options:(unint64_t)options;
- (void)_updateReformattedAddressesIfNecessary;
- (void)setAddresses:(id)addresses;
- (void)setAttributesDisabled:(BOOL)disabled;
- (void)setMaximumWidth:(double)width;
- (void)setMinimumFontSize:(double)size maximumFontSize:(double)fontSize;
@end

@implementation MFAddressPickerReformatter

- (void)setAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (([addressesCopy isEqual:self->_addresses] & 1) == 0)
  {
    v4 = [addressesCopy copy];
    addresses = self->_addresses;
    self->_addresses = v4;

    [(MFAddressPickerReformatter *)self _invalidateReformattedAddresses];
  }
}

- (void)setMaximumWidth:(double)width
{
  if (self->_maximumWidth != width)
  {
    self->_maximumWidth = width;
    [(MFAddressPickerReformatter *)self _invalidateReformattedAddresses];
  }
}

- (void)setAttributesDisabled:(BOOL)disabled
{
  if (self->_attributesDisabled != disabled)
  {
    self->_attributesDisabled = disabled;
    [(MFAddressPickerReformatter *)self _invalidateReformattedAddresses];
  }
}

- (void)setMinimumFontSize:(double)size maximumFontSize:(double)fontSize
{
  if (self->_minimumFontSize != size || self->_maximumFontSize != fontSize)
  {
    self->_minimumFontSize = size;
    self->_maximumFontSize = fontSize;
    [(MFAddressPickerReformatter *)self _invalidateReformattedAddresses];
  }
}

- (id)reformattedAddressAtIndex:(unint64_t)index
{
  [(MFAddressPickerReformatter *)self _updateReformattedAddressesIfNecessary];
  v5 = [(NSArray *)self->_reformattedAddresses objectAtIndex:index];
  v6 = [v5 attributedStringWithFontSize:-[MFAddressPickerReformatter _defaultOptions](self maximumWidth:"_defaultOptions") options:{self->_fontSize, self->_maximumWidth}];

  return v6;
}

- (id)reformattedAddressStringAtIndex:(unint64_t)index
{
  v3 = [(MFAddressPickerReformatter *)self reformattedAddressAtIndex:index];
  string = [v3 string];

  return string;
}

- (void)_invalidateReformattedAddresses
{
  reformattedAddresses = self->_reformattedAddresses;
  self->_reformattedAddresses = 0;
}

- (void)_updateReformattedAddressesIfNecessary
{
  v18 = *MEMORY[0x1E69E9840];
  p_reformattedAddresses = &self->_reformattedAddresses;
  if (!self->_reformattedAddresses)
  {
    if (self->_attributesDisabled && self->_minimumFontSize != self->_maximumFontSize)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MFAddressPickerReformatter.m" lineNumber:115 description:@"Single font size required with attributes disabled"];
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_addresses, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_addresses;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [[MFReformattedAddress alloc] initWithAddress:*(*(&v13 + 1) + 8 * i)];
          [v4 addObject:v9];
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    objc_storeStrong(p_reformattedAddresses, v4);
    v12 = 0;
    [(MFAddressPickerReformatter *)self _determineFontSize:&v12];
    if (v12 == 1)
    {
      [(MFAddressPickerReformatter *)self _truncateIdenticalLocalPartsWithDifferentDomainParts];
    }

    [(MFAddressPickerReformatter *)self _attemptUniquingDisplayedStrings];
  }
}

- (void)_determineFontSize:(BOOL *)size
{
  minimumFontSize = self->_minimumFontSize;
  maximumFontSize = self->_maximumFontSize;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MFAddressPickerReformatter__determineFontSize___block_invoke;
  v9[3] = &unk_1E806C5C0;
  v9[4] = self;
  v7 = MFLastIndexInRangePassingTest((minimumFontSize + -1.0), maximumFontSize, v9);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || minimumFontSize > v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    minimumFontSize = v7;
  }

  self->_fontSize = minimumFontSize;
  if (size)
  {
    *size = v8;
  }
}

uint64_t __49__MFAddressPickerReformatter__determineFontSize___block_invoke(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) widthWithFontSize:objc_msgSend(*(a1 + 32) maximumWidth:"_defaultOptions" options:{v11) | 2, a2, *(*(a1 + 32) + 24)}];
        if (v8 > *(*(a1 + 32) + 24))
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)_truncateIdenticalLocalPartsWithDifferentDomainParts
{
  v3 = [(MFAddressPickerReformatter *)self _defaultOptions]| 1;

  [(MFAddressPickerReformatter *)self _truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength:0 options:v3];
}

- (void)_truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength:(unint64_t)length options:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_reformattedAddresses, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_reformattedAddresses;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        localPart = [v10 localPart];
        v12 = [v5 objectForKey:localPart];
        if (!v12)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          [v5 setObject:v12 forKey:localPart];
        }

        [v12 addObject:v10];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__MFAddressPickerReformatter__truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength_options___block_invoke;
  v15[3] = &unk_1E806C638;
  v15[4] = self;
  v15[5] = options;
  v15[6] = length;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
}

void __105__MFAddressPickerReformatter__truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength_options___block_invoke(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if ([v8 count] >= 2)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __105__MFAddressPickerReformatter__truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength_options___block_invoke_2;
    v30[3] = &unk_1E806C5E8;
    v9 = a1[5];
    v30[4] = a1[4];
    v30[5] = v9;
    v10 = [v8 mf_objectWithHighest:v30];
    v11 = [v7 length];
    if (v11 - a1[6] <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 - a1[6];
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __105__MFAddressPickerReformatter__truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength_options___block_invoke_3;
    v26[3] = &unk_1E806C610;
    v13 = v10;
    v14 = a1[4];
    v27 = v13;
    v28 = v14;
    v29 = v12;
    v15 = MFLastIndexInRangePassingTest(2uLL, v12, v26);
    v16 = v15;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || (v17 = v12 - v15) == 0)
    {
      [v13 setMiddleTruncationRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = v8;
      v19 = [v18 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v19)
      {
        v20 = *v23;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v22 + 1) + 8 * i) setMiddleTruncationRange:{v16, v17, v22}];
          }

          v19 = [v18 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v19);
      }
    }
  }
}

BOOL __105__MFAddressPickerReformatter__truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMiddleTruncationRange:{a2, *(a1 + 48) - a2}];
  [*(a1 + 32) widthWithFontSize:objc_msgSend(*(a1 + 40) maximumWidth:"_defaultOptions") | 3 options:{*(*(a1 + 40) + 48), *(*(a1 + 40) + 24)}];
  return v3 <= *(*(a1 + 40) + 24);
}

- (void)_attemptUniquingDisplayedStrings
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 1;
  do
  {
    v6[0] = v3;
    v6[1] = 3221225472;
    v6[2] = __62__MFAddressPickerReformatter__attemptUniquingDisplayedStrings__block_invoke;
    v6[3] = &unk_1E806C660;
    v6[4] = self;
    v6[5] = v4++;
  }

  while ([(MFAddressPickerReformatter *)self _attemptUniquingDisplayedStringsUsingBlock:v6]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MFAddressPickerReformatter__attemptUniquingDisplayedStrings__block_invoke_2;
  v5[3] = &unk_1E806C570;
  v5[4] = self;
  [(MFAddressPickerReformatter *)self _attemptUniquingDisplayedStringsUsingBlock:v5];
}

uint64_t __62__MFAddressPickerReformatter__attemptUniquingDisplayedStrings__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 _defaultOptions];

  return [v1 _truncateIdenticalLocalPartsWithDifferentDomainPartsWithTailLength:v2 options:v3];
}

- (BOOL)_attemptUniquingDisplayedStringsUsingBlock:(id)block
{
  blockCopy = block;
  _reformattedAddressesByDisplayedStrings = [(MFAddressPickerReformatter *)self _reformattedAddressesByDisplayedStrings];
  if ([(MFAddressPickerReformatter *)self _reformattedAddressesByDisplayedStringsAreUnique:_reformattedAddressesByDisplayedStrings])
  {
    v6 = 0;
  }

  else
  {
    _saveMiddleTruncationRanges = [(MFAddressPickerReformatter *)self _saveMiddleTruncationRanges];
    blockCopy[2](blockCopy);
    _reformattedAddressesByDisplayedStrings2 = [(MFAddressPickerReformatter *)self _reformattedAddressesByDisplayedStrings];
    v9 = [_reformattedAddressesByDisplayedStrings2 count];
    v6 = v9 > [_reformattedAddressesByDisplayedStrings count];
    if (!v6)
    {
      [(MFAddressPickerReformatter *)self _restoreMiddleTruncationRanges:_saveMiddleTruncationRanges];
    }
  }

  return v6;
}

- (id)_reformattedAddressesByDisplayedStrings
{
  v19 = *MEMORY[0x1E69E9840];
  p_reformattedAddresses = &self->_reformattedAddresses;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](self->_reformattedAddresses, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *p_reformattedAddresses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 attributedStringWithFontSize:-[MFAddressPickerReformatter _defaultOptions](self maximumWidth:"_defaultOptions" options:{v14), self->_fontSize, self->_maximumWidth}];
        string = [v10 string];

        v12 = [v4 objectForKey:string];
        if (!v12)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          [v4 setObject:v12 forKey:string];
        }

        [v12 addObject:v9];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_expandAllLocalParts
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_reformattedAddresses;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        middleTruncationRange = [v7 middleTruncationRange];
        if (middleTruncationRange != 0x7FFFFFFFFFFFFFFFLL && v9 != 0)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v11 = middleTruncationRange + v9;
          v13[1] = 3221225472;
          v13[2] = __50__MFAddressPickerReformatter__expandAllLocalParts__block_invoke;
          v13[3] = &unk_1E806C688;
          v13[6] = middleTruncationRange;
          v13[7] = v9;
          v13[4] = v7;
          v13[5] = self;
          v12 = MFLastIndexInRangePassingTest(middleTruncationRange, middleTruncationRange + v9, v13);
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v7 setMiddleTruncationRange:{v12, v11 - v12}];
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

BOOL __50__MFAddressPickerReformatter__expandAllLocalParts__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMiddleTruncationRange:{a2, *(a1 + 48) - a2 + *(a1 + 56)}];
  [*(a1 + 32) widthWithFontSize:objc_msgSend(*(a1 + 40) maximumWidth:"_defaultOptions") | 2 options:{*(*(a1 + 40) + 48), *(*(a1 + 40) + 24)}];
  return v3 <= *(*(a1 + 40) + 24);
}

- (BOOL)_reformattedAddressesByDisplayedStringsAreUnique:(id)unique
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__MFAddressPickerReformatter__reformattedAddressesByDisplayedStringsAreUnique___block_invoke;
  v5[3] = &unk_1E806C6B0;
  v5[4] = &v6;
  [unique enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

unint64_t __79__MFAddressPickerReformatter__reformattedAddressesByDisplayedStringsAreUnique___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result >= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (id)_saveMiddleTruncationRanges
{
  v15 = *MEMORY[0x1E69E9840];
  p_reformattedAddresses = &self->_reformattedAddresses;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_reformattedAddresses, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *p_reformattedAddresses;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v17.location = [*(*(&v10 + 1) + 8 * i) middleTruncationRange];
        v8 = NSStringFromRange(v17);
        [v3 addObject:v8];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_restoreMiddleTruncationRanges:(id)ranges
{
  rangesCopy = ranges;
  reformattedAddresses = self->_reformattedAddresses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MFAddressPickerReformatter__restoreMiddleTruncationRanges___block_invoke;
  v7[3] = &unk_1E806C6D8;
  v8 = rangesCopy;
  v6 = rangesCopy;
  [(NSArray *)reformattedAddresses enumerateObjectsUsingBlock:v7];
}

void __61__MFAddressPickerReformatter__restoreMiddleTruncationRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  v6 = NSRangeFromString(v5);
  [v7 setMiddleTruncationRange:{v6.location, v6.length}];
}

@end