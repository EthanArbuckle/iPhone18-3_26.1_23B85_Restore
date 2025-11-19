@interface CNPostalAddressEditorNavigationController
- (CNPostalAddressEditorDelegate)addressEditorDelegate;
- (CNPostalAddressEditorNavigationController)initWithContact:(id)a3 propertyKey:(id)a4 editNames:(BOOL)a5;
- (CNPostalAddressEditorNavigationController)initWithFirstName:(id)a3 lastName:(id)a4 addressDictionary:(id)a5 label:(id)a6;
- (CNPostalAddressEditorNavigationController)initWithPropertyKey:(id)a3 label:(id)a4;
- (void)doneWithContact:(id)a3 propertyKey:(id)a4;
- (void)setTitle:(id)a3;
@end

@implementation CNPostalAddressEditorNavigationController

- (CNPostalAddressEditorDelegate)addressEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addressEditorDelegate);

  return WeakRetained;
}

- (void)doneWithContact:(id)a3 propertyKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CNPostalAddressEditorNavigationController *)self addressEditorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
    v9 = [v8 objectForKeyedSubscript:v6];

    if ([v9 isMultiValue])
    {
      v10 = [v9 CNValueForContact:v14];
      v11 = [v10 lastObject];

      v12 = [v11 identifier];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x1E695CE08] contactPropertyWithContact:v14 propertyKey:v6 identifier:v12];
    [v7 postalAddressEditor:self finishedEditingProperty:v13];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v7 postalAddressEditor:self finishedEditingContact:v14];
  }
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNPostalAddressEditorNavigationController;
  v4 = a3;
  [(CNPostalAddressEditorNavigationController *)&v6 setTitle:v4];
  v5 = [(CNPostalAddressEditorNavigationController *)self topViewController:v6.receiver];
  [v5 setTitle:v4];
}

- (CNPostalAddressEditorNavigationController)initWithFirstName:(id)a3 lastName:(id)a4 addressDictionary:(id)a5 label:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695CF18];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  [v15 setGivenName:v14];

  [v15 setFamilyName:v13];
  v16 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v12];

  v17 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:v11 value:v16];
  v21[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v15 setPostalAddresses:v18];

  v19 = [(CNPostalAddressEditorNavigationController *)self initWithContact:v15 propertyKey:*MEMORY[0x1E695C360] editNames:1];
  return v19;
}

- (CNPostalAddressEditorNavigationController)initWithPropertyKey:(id)a3 label:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
  if ([v6 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v9 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:v7 value:&stru_1F0CE7398];
    v17[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v8 setEmailAddresses:v10];
LABEL_5:

    goto LABEL_6;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v11 = objc_alloc(MEMORY[0x1E695CEE0]);
    v12 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:&stru_1F0CE7398];
    v9 = [v11 initWithLabel:v7 value:v12];

    v16 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v8 setPhoneNumbers:v10];
    goto LABEL_5;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695C230]])
  {
    [v8 setFamilyName:&stru_1F0CE7398];
    v13 = 1;
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0;
LABEL_7:
  v14 = [(CNPostalAddressEditorNavigationController *)self initWithContact:v8 propertyKey:v6 editNames:v13];

  return v14;
}

- (CNPostalAddressEditorNavigationController)initWithContact:(id)a3 propertyKey:(id)a4 editNames:(BOOL)a5
{
  v5 = a5;
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CNPostalAddressEditorNavigationController;
  v10 = [(CNPostalAddressEditorNavigationController *)&v14 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [[CNPostalAddressEditorViewController alloc] initWithContact:v8 propertyKey:v9 editNames:v5];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNPostalAddressEditorNavigationController *)v10 setViewControllers:v12];
  }

  return v10;
}

@end