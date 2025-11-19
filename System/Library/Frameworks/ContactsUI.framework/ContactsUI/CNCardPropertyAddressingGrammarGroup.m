@interface CNCardPropertyAddressingGrammarGroup
- (BOOL)canAddEditingItem;
- (BOOL)shouldKeepNoiseValue;
- (BOOL)shouldShowLanguageLabel;
- (id)newEditingItemWithValue:(id)a3;
- (void)saveChanges;
@end

@implementation CNCardPropertyAddressingGrammarGroup

- (BOOL)canAddEditingItem
{
  v9.receiver = self;
  v9.super_class = CNCardPropertyAddressingGrammarGroup;
  v3 = [(CNCardPropertyGroup *)&v9 canAddEditingItem];
  if (v3)
  {
    v4 = [(CNCardGroup *)self contact];
    v5 = [v4 contactType];

    if (v5 == 1)
    {
      LOBYTE(v3) = 0;
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
      LOBYTE(v3) = [v6 canDisplayPronounPicker];
    }
  }

  return v3;
}

- (BOOL)shouldKeepNoiseValue
{
  if ([(CNCardPropertyGroup *)self valueEditingItemsCount])
  {
    return 0;
  }

  v3 = [(CNCardGroup *)self contact];
  v4 = [v3 addressingGrammars];
  v5 = [v4 count];

  if (v5 != 1)
  {
    return 0;
  }

  objc_opt_class();
  v6 = [(CNCardGroup *)self contact];
  v7 = [v6 addressingGrammars];
  v8 = [v7 firstObject];
  v9 = [v8 value];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 isUnspecified];
  return v12;
}

- (void)saveChanges
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v3 = [(CNCardGroup *)self contact];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = [(CNCardPropertyGroup *)self editingItems];
    v23 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(CNCardPropertyGroup *)self editingItems];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v8);
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

          v18 = [v17 labeledValue];
          v19 = [v18 value];

          if (((*(v12 + 16))(v12, v19) & 1) == 0)
          {
            v20 = [v17 labeledValue];
            [v23 _cn_addNonNilObject:v20];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v21 = [v5 addressingGrammars];
    v22 = [v21 isEqualToArray:v23];

    if ((v22 & 1) == 0 && ![(CNCardPropertyAddressingGrammarGroup *)self shouldKeepNoiseValue])
    {
      [v5 setAddressingGrammars:v23];
    }
  }
}

- (BOOL)shouldShowLanguageLabel
{
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [v3 firstObject];

  v5 = [v4 componentsSeparatedByString:@"-"];
  v6 = [v5 firstObject];
  v7 = [(CNCardPropertyGroup *)self editingItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CNCardPropertyAddressingGrammarGroup_shouldShowLanguageLabel__block_invoke;
  v12[3] = &unk_1E74E6260;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = [v7 _cn_any:v12];

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

- (id)newEditingItemWithValue:(id)a3
{
  v4 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:a3];
  v5 = [(CNCardGroup *)self contact];
  v6 = [CNPropertyGroupAddressingGrammarItem propertyGroupItemWithLabeledValue:v4 group:self contact:v5];

  [v6 setWasAdded:1];
  return v6;
}

@end