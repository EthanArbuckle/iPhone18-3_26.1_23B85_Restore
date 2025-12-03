@interface CNPropertyGroupGeminiItem
- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing;
- (CNUIGeminiDataSourceDelegate)geminiUpdateDelegate;
- (NSString)description;
- (id)displayLabel;
- (id)displayStringForValue:(id)value;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)updateLabeledValueWithValue:(id)value;
@end

@implementation CNPropertyGroupGeminiItem

- (CNUIGeminiDataSourceDelegate)geminiUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_geminiUpdateDelegate);

  return WeakRetained;
}

- (void)geminiDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  geminiUpdateDelegate = [(CNPropertyGroupGeminiItem *)self geminiUpdateDelegate];
  [geminiUpdateDelegate geminiDataSourceDidUpdate:updateCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  geminiResult = [(CNPropertyGroupGeminiItem *)self geminiResult];
  channel = [geminiResult channel];
  v9 = MEMORY[0x1E696AD98];
  geminiResult2 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  v11 = [v9 numberWithInteger:{objc_msgSend(geminiResult2, "usage")}];
  v12 = [v3 stringWithFormat:@"<%@ %p> %@ %@ %@", v4, self, value, channel, v11];

  return v12;
}

- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing
{
  itemCopy = item;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  labeledValue2 = [itemCopy labeledValue];

  value2 = [labeledValue2 value];
  v10 = [value isEqual:value2];

  return v10;
}

- (void)updateLabeledValueWithValue:(id)value
{
  v13.receiver = self;
  v13.super_class = CNPropertyGroupGeminiItem;
  valueCopy = value;
  [(CNPropertyGroupItem *)&v13 updateLabeledValueWithValue:valueCopy];
  v5 = [(CNPropertyGroupGeminiItem *)self editingContact:v13.receiver];

  if (!v5)
  {
    contact = [(CNPropertyGroupItem *)self contact];
    v7 = [contact mutableCopy];
    [(CNPropertyGroupGeminiItem *)self setEditingContact:v7];
  }

  editingContact = [(CNPropertyGroupGeminiItem *)self editingContact];
  [editingContact setPreferredChannel:valueCopy];

  v9 = +[CNUIContactsEnvironment currentEnvironment];
  geminiManager = [v9 geminiManager];
  editingContact2 = [(CNPropertyGroupGeminiItem *)self editingContact];
  v12 = [geminiManager remoteGeminiResultForContact:editingContact2 substituteDefaultForDangling:0 error:0];
  [(CNPropertyGroupGeminiItem *)self setGeminiResult:v12];
}

- (id)displayStringForValue:(id)value
{
  geminiResult = [(CNPropertyGroupGeminiItem *)self geminiResult];
  usage = [geminiResult usage];

  if (usage == 2)
  {
    geminiResult2 = [(CNPropertyGroupGeminiItem *)self geminiResult];
    channel = [geminiResult2 channel];
    isAvailable = [channel isAvailable];

    v9 = CNContactsUIBundle();
    if (isAvailable)
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
    if (usage != 1)
    {
      v14 = CNContactsUIBundle();
      v9 = v14;
      v10 = @"PREFERRED_LINE_EDIT_CONTACT_PROPERTY_DEFAULT_VALUE-%@";
      goto LABEL_11;
    }

    geminiResult3 = [(CNPropertyGroupGeminiItem *)self geminiResult];
    channel2 = [geminiResult3 channel];
    isAvailable2 = [channel2 isAvailable];

    v9 = CNContactsUIBundle();
    if (isAvailable2)
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
  geminiResult4 = [(CNPropertyGroupGeminiItem *)self geminiResult];
  channel3 = [geminiResult4 channel];
  localizedLabel = [channel3 localizedLabel];
  v20 = localizedLabel;
  if (localizedLabel)
  {
    v21 = localizedLabel;
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