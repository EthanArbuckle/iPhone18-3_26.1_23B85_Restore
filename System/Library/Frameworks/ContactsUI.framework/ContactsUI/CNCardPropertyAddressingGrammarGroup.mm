@interface CNCardPropertyAddressingGrammarGroup
- (BOOL)canAddEditingItem;
- (BOOL)shouldKeepNoiseValue;
- (BOOL)shouldShowLanguageLabel;
- (id)newEditingItemWithValue:(id)value;
- (void)saveChanges;
@end

@implementation CNCardPropertyAddressingGrammarGroup

- (BOOL)canAddEditingItem
{
  v9.receiver = self;
  v9.super_class = CNCardPropertyAddressingGrammarGroup;
  canAddEditingItem = [(CNCardPropertyGroup *)&v9 canAddEditingItem];
  if (canAddEditingItem)
  {
    contact = [(CNCardGroup *)self contact];
    contactType = [contact contactType];

    if (contactType == 1)
    {
      LOBYTE(canAddEditingItem) = 0;
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v6 = getIPPronounPickerViewControllerClass_softClass_58459;
      v14 = getIPPronounPickerViewControllerClass_softClass_58459;
      if (!getIPPronounPickerViewControllerClass_softClass_58459)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __getIPPronounPickerViewControllerClass_block_invoke_58460;
        v10[3] = &unk_1E74E7518;
        v10[4] = &v11;
        __getIPPronounPickerViewControllerClass_block_invoke_58460(v10);
        v6 = v12[3];
      }

      v7 = v6;
      _Block_object_dispose(&v11, 8);
      LOBYTE(canAddEditingItem) = [v6 canDisplayPronounPicker];
    }
  }

  return canAddEditingItem;
}

- (BOOL)shouldKeepNoiseValue
{
  if ([(CNCardPropertyGroup *)self valueEditingItemsCount])
  {
    return 0;
  }

  contact = [(CNCardGroup *)self contact];
  addressingGrammars = [contact addressingGrammars];
  v5 = [addressingGrammars count];

  if (v5 != 1)
  {
    return 0;
  }

  objc_opt_class();
  contact2 = [(CNCardGroup *)self contact];
  addressingGrammars2 = [contact2 addressingGrammars];
  firstObject = [addressingGrammars2 firstObject];
  value = [firstObject value];
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  isUnspecified = [v11 isUnspecified];
  return isUnspecified;
}

- (void)saveChanges
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  contact = [(CNCardGroup *)self contact];
  if (objc_opt_isKindOfClass())
  {
    v4 = contact;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    editingItems = [(CNCardPropertyGroup *)self editingItems];
    v23 = [v6 initWithCapacity:{objc_msgSend(editingItems, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    editingItems2 = [(CNCardPropertyGroup *)self editingItems];
    v9 = [editingItems2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      v12 = *MEMORY[0x1E6996528];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(editingItems2);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          v15 = v14;
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          labeledValue = [v17 labeledValue];
          value = [labeledValue value];

          if (((*(v12 + 16))(v12, value) & 1) == 0)
          {
            labeledValue2 = [v17 labeledValue];
            [v23 _cn_addNonNilObject:labeledValue2];
          }
        }

        v10 = [editingItems2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    addressingGrammars = [v5 addressingGrammars];
    v22 = [addressingGrammars isEqualToArray:v23];

    if ((v22 & 1) == 0 && ![(CNCardPropertyAddressingGrammarGroup *)self shouldKeepNoiseValue])
    {
      [v5 setAddressingGrammars:v23];
    }
  }
}

- (BOOL)shouldShowLanguageLabel
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v5 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v5 firstObject];
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CNCardPropertyAddressingGrammarGroup_shouldShowLanguageLabel__block_invoke;
  v12[3] = &unk_1E74E6260;
  v13 = firstObject2;
  v14 = firstObject;
  v8 = firstObject;
  v9 = firstObject2;
  v10 = [editingItems _cn_any:v12];

  return v10;
}

uint64_t __63__CNCardPropertyAddressingGrammarGroup_shouldShowLanguageLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = [v6 labeledValue];
  v8 = [v7 value];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ((*(*MEMORY[0x1E6996528] + 16))())
  {
    v11 = 0;
  }

  else
  {
    v12 = [v10 languageIdentifier];
    if ([v12 isEqualToString:*(a1 + 32)])
    {
      v11 = 0;
    }

    else
    {
      v13 = [v10 languageIdentifier];
      v11 = [v13 isEqualToString:*(a1 + 40)] ^ 1;
    }
  }

  return v11;
}

- (id)newEditingItemWithValue:(id)value
{
  v4 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:value];
  contact = [(CNCardGroup *)self contact];
  v6 = [CNPropertyGroupAddressingGrammarItem propertyGroupItemWithLabeledValue:v4 group:self contact:contact];

  [v6 setWasAdded:1];
  return v6;
}

@end