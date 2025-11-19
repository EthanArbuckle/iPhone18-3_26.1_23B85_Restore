@interface CNCardPropertyGeminiGroup
- (id)_loadPropertyItems;
- (id)editingItems;
- (void)setGeminiResult:(id)a3;
@end

@implementation CNCardPropertyGeminiGroup

- (id)editingItems
{
  if ([(CNCardPropertyGeminiGroup *)self shouldShowGemini])
  {
    v3 = [(CNCardPropertyGroup *)self propertyItems];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)setGeminiResult:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CNCardPropertyGroup *)self propertyItems];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setGeminiResult:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_loadPropertyItems
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNCardGroup *)self contact];
  v4 = [v3 preferredChannel];
  v5 = v4;
  v6 = &stru_1F0CE7398;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v7];

  v9 = [(CNCardGroup *)self contact];
  v10 = [(CNPropertyGroupItem *)CNPropertyGroupGeminiItem propertyGroupItemWithLabeledValue:v8 group:self contact:v9];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end