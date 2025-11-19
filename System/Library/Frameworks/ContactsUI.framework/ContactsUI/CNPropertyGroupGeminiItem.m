@interface CNPropertyGroupGeminiItem
- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4;
- (CNUIGeminiDataSourceDelegate)geminiUpdateDelegate;
- (NSString)description;
- (id)displayLabel;
- (id)displayStringForValue:(id)a3;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)updateLabeledValueWithValue:(id)a3;
@end

@implementation CNPropertyGroupGeminiItem

- (CNUIGeminiDataSourceDelegate)geminiUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_geminiUpdateDelegate);

  return WeakRetained;
}

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupGeminiItem *)self geminiUpdateDelegate];
  [v5 geminiDataSourceDidUpdate:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];
  v7 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  v8 = [v7 channel];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "usage")}];
  v12 = [v3 stringWithFormat:@"<%@ %p> %@ %@ %@", v4, self, v6, v8, v11];

  return v12;
}

- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4
{
  v5 = a3;
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 value];
  v8 = [v5 labeledValue];

  v9 = [v8 value];
  v10 = [v7 isEqual:v9];

  return v10;
}

- (void)updateLabeledValueWithValue:(id)a3
{
  v13.receiver = self;
  v13.super_class = CNPropertyGroupGeminiItem;
  v4 = a3;
  [(CNPropertyGroupItem *)&v13 updateLabeledValueWithValue:v4];
  v5 = [(CNPropertyGroupGeminiItem *)self editingContact:v13.receiver];

  if (!v5)
  {
    v6 = [(CNPropertyGroupItem *)self contact];
    v7 = [v6 mutableCopy];
    [(CNPropertyGroupGeminiItem *)self setEditingContact:v7];
  }

  v8 = [(CNPropertyGroupGeminiItem *)self editingContact];
  [v8 setPreferredChannel:v4];

  v9 = +[CNUIContactsEnvironment currentEnvironment];
  v10 = [v9 geminiManager];
  v11 = [(CNPropertyGroupGeminiItem *)self editingContact];
  v12 = [v10 remoteGeminiResultForContact:v11 substituteDefaultForDangling:0 error:0];
  [(CNPropertyGroupGeminiItem *)self setGeminiResult:v12];
}

- (id)displayStringForValue:(id)a3
{
  v4 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  v5 = [v4 usage];

  if (v5 == 2)
  {
    v11 = [(CNPropertyGroupGeminiItem *)self geminiResult];
    v12 = [v11 channel];
    v13 = [v12 isAvailable];

    v9 = CNContactsUIBundle();
    if (v13)
    {
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_LAST_USED_VALUE-%@";
    }

    else
    {
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_LAST_USED_VALUE_UNAVAILABLE-%@";
    }
  }

  else
  {
    if (v5 != 1)
    {
      v14 = CNContactsUIBundle();
      v9 = v14;
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_DEFAULT_VALUE-%@";
      goto LABEL_11;
    }

    v6 = [(CNPropertyGroupGeminiItem *)self geminiResult];
    v7 = [v6 channel];
    v8 = [v7 isAvailable];

    v9 = CNContactsUIBundle();
    if (v8)
    {
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_ALWAYS_USE_VALUE-%@";
    }

    else
    {
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_ALWAYS_USE_VALUE_UNAVAILABLE-%@";
    }
  }

  v14 = v9;
LABEL_11:
  v15 = [v14 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  v18 = [v17 channel];
  v19 = [v18 localizedLabel];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1F0CE7398;
  }

  v22 = [v16 stringWithFormat:v15, v21];

  return v22;
}

- (id)displayLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_LABEL" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  return v3;
}

@end