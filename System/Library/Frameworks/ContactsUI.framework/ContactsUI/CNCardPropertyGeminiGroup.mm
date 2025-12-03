@interface CNCardPropertyGeminiGroup
- (id)_loadPropertyItems;
- (id)editingItems;
- (void)setGeminiResult:(id)result;
@end

@implementation CNCardPropertyGeminiGroup

- (id)editingItems
{
  if ([(CNCardPropertyGeminiGroup *)self shouldShowGemini])
  {
    propertyItems = [(CNCardPropertyGroup *)self propertyItems];
  }

  else
  {
    propertyItems = MEMORY[0x1E695E0F0];
  }

  return propertyItems;
}

- (void)setGeminiResult:(id)result
{
  v15 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  propertyItems = [(CNCardPropertyGroup *)self propertyItems];
  v6 = [propertyItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(propertyItems);
        }

        [*(*(&v10 + 1) + 8 * v9++) setGeminiResult:resultCopy];
      }

      while (v7 != v9);
      v7 = [propertyItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_loadPropertyItems
{
  v13[1] = *MEMORY[0x1E69E9840];
  contact = [(CNCardGroup *)self contact];
  preferredChannel = [contact preferredChannel];
  v5 = preferredChannel;
  v6 = &stru_1F0CE7398;
  if (preferredChannel)
  {
    v6 = preferredChannel;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v7];

  contact2 = [(CNCardGroup *)self contact];
  v10 = [(CNPropertyGroupItem *)CNPropertyGroupGeminiItem propertyGroupItemWithLabeledValue:v8 group:self contact:contact2];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end