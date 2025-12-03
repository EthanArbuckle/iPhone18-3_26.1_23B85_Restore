@interface CNPostalAddressEditorNavigationController
- (CNPostalAddressEditorDelegate)addressEditorDelegate;
- (CNPostalAddressEditorNavigationController)initWithContact:(id)contact propertyKey:(id)key editNames:(BOOL)names;
- (CNPostalAddressEditorNavigationController)initWithFirstName:(id)name lastName:(id)lastName addressDictionary:(id)dictionary label:(id)label;
- (CNPostalAddressEditorNavigationController)initWithPropertyKey:(id)key label:(id)label;
- (void)doneWithContact:(id)contact propertyKey:(id)key;
- (void)setTitle:(id)title;
@end

@implementation CNPostalAddressEditorNavigationController

- (CNPostalAddressEditorDelegate)addressEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addressEditorDelegate);

  return WeakRetained;
}

- (void)doneWithContact:(id)contact propertyKey:(id)key
{
  contactCopy = contact;
  keyCopy = key;
  addressEditorDelegate = [(CNPostalAddressEditorNavigationController *)self addressEditorDelegate];
  if (objc_opt_respondsToSelector())
  {
    contactPropertiesByKey = [MEMORY[0x1E695CD00] contactPropertiesByKey];
    v9 = [contactPropertiesByKey objectForKeyedSubscript:keyCopy];

    if ([v9 isMultiValue])
    {
      v10 = [v9 CNValueForContact:contactCopy];
      lastObject = [v10 lastObject];

      identifier = [lastObject identifier];
    }

    else
    {
      identifier = 0;
    }

    v13 = [MEMORY[0x1E695CE08] contactPropertyWithContact:contactCopy propertyKey:keyCopy identifier:identifier];
    [addressEditorDelegate postalAddressEditor:self finishedEditingProperty:v13];
  }

  else if (objc_opt_respondsToSelector())
  {
    [addressEditorDelegate postalAddressEditor:self finishedEditingContact:contactCopy];
  }
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = CNPostalAddressEditorNavigationController;
  titleCopy = title;
  [(CNPostalAddressEditorNavigationController *)&v6 setTitle:titleCopy];
  v5 = [(CNPostalAddressEditorNavigationController *)self topViewController:v6.receiver];
  [v5 setTitle:titleCopy];
}

- (CNPostalAddressEditorNavigationController)initWithFirstName:(id)name lastName:(id)lastName addressDictionary:(id)dictionary label:(id)label
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695CF18];
  labelCopy = label;
  dictionaryCopy = dictionary;
  lastNameCopy = lastName;
  nameCopy = name;
  v15 = objc_alloc_init(v10);
  [v15 setGivenName:nameCopy];

  [v15 setFamilyName:lastNameCopy];
  v16 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:dictionaryCopy];

  v17 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:labelCopy value:v16];
  v21[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v15 setPostalAddresses:v18];

  v19 = [(CNPostalAddressEditorNavigationController *)self initWithContact:v15 propertyKey:*MEMORY[0x1E695C360] editNames:1];
  return v19;
}

- (CNPostalAddressEditorNavigationController)initWithPropertyKey:(id)key label:(id)label
{
  v17[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  labelCopy = label;
  v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
  if ([keyCopy isEqualToString:*MEMORY[0x1E695C208]])
  {
    v9 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:labelCopy value:&stru_1F0CE7398];
    v17[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v8 setEmailAddresses:v10];
LABEL_5:

    goto LABEL_6;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E695C330]])
  {
    v11 = objc_alloc(MEMORY[0x1E695CEE0]);
    v12 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:&stru_1F0CE7398];
    v9 = [v11 initWithLabel:labelCopy value:v12];

    v16 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v8 setPhoneNumbers:v10];
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E695C230]])
  {
    [v8 setFamilyName:&stru_1F0CE7398];
    v13 = 1;
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0;
LABEL_7:
  v14 = [(CNPostalAddressEditorNavigationController *)self initWithContact:v8 propertyKey:keyCopy editNames:v13];

  return v14;
}

- (CNPostalAddressEditorNavigationController)initWithContact:(id)contact propertyKey:(id)key editNames:(BOOL)names
{
  namesCopy = names;
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = CNPostalAddressEditorNavigationController;
  v10 = [(CNPostalAddressEditorNavigationController *)&v14 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [[CNPostalAddressEditorViewController alloc] initWithContact:contactCopy propertyKey:keyCopy editNames:namesCopy];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNPostalAddressEditorNavigationController *)v10 setViewControllers:v12];
  }

  return v10;
}

@end