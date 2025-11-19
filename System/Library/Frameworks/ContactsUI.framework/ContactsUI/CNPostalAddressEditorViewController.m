@interface CNPostalAddressEditorViewController
+ (id)cellIdentifierForClass:(Class)a3;
+ (id)cellIdentifierForEditingProperty:(id)a3;
- (CNPostalAddressEditorViewController)initWithContact:(id)a3 propertyKey:(id)a4 editNames:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_rebuildPropertyGroupItems:(BOOL)a3;
- (void)_startEditingFirstCell;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5;
- (void)propertyCellDidChangeLayout:(id)a3;
- (void)registerContactCellClass:(Class)a3;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)validateContents;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNPostalAddressEditorViewController

- (void)propertyCellDidChangeLayout:(id)a3
{
  v6 = a3;
  v4 = [(CNPostalAddressEditorViewController *)self tableView];
  v5 = [v4 indexPathForCell:v6];
  if (v5)
  {
    [v6 setValue:MEMORY[0x1E695E118] forKey:@"needsHeightCalculation"];
    [v4 _heightForRowAtIndexPath:v5];
    [v4 _setHeight:v5 forRowAtIndexPath:?];
  }
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5
{
  v9 = a3;
  v8 = a4;
  [v8 updateLabeledValueWithValue:a5];
  [(CNPostalAddressEditorViewController *)self validateContents];
  if (objc_opt_respondsToSelector())
  {
    [v9 updateWithPropertyItem:v8];
  }
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5
{
  v7 = a4;
  v8 = a3;
  [v7 updateLabeledValueWithLabel:a5];
  [v8 updateWithPropertyItem:v7];
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CNPostalAddressEditorViewController_sender_dismissViewController_completionHandler___block_invoke;
  v8[3] = &unk_1E74E6F88;
  v9 = v6;
  v7 = v6;
  [a4 dismissViewControllerAnimated:1 completion:v8];
}

uint64_t __86__CNPostalAddressEditorViewController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
    v6 = [(CNPostalAddressEditorViewController *)self navigationController];
    v7 = [v6 navigationBar];
    v8 = [v7 tintColor];

    v9 = [v5 navigationBar];
    [v9 setTintColor:v8];

    v10 = [v5 view];

    [v10 setTintColor:v8];
  }

  [(CNPostalAddressEditorViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = -[NSMutableArray objectAtIndex:](self->_propertyItems, "objectAtIndex:", [a4 indexAtPosition:1]);
  v6 = [v5 property];
  v7 = [objc_opt_class() cellIdentifierForEditingProperty:v6];
  v8 = [(CNPostalAddressEditorViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:v7];

  [v9 setCardGroupItem:v5];
  v10 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [v9 separatorInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ([v6 isEqualToString:*MEMORY[0x1E695C360]] || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695C330]))
  {
    [v9 setPresentingDelegate:self];
    [v9 setDelegate:self];
    [v9 setLabelWidth:110.0];
    v17 = [v9 labelButton];
    [v17 titleEdgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (v10 == 1)
    {
      v25 = 20.0;
    }

    else
    {
      v21 = 20.0;
    }

    v26 = [v9 labelButton];
    [v26 setTitleEdgeInsets:{v19, v21, v23, v25}];
  }

  else
  {
    [v9 setSeparatorInset:{v12, 154.0, v14, v16}];
  }

  return v9;
}

- (void)registerContactCellClass:(Class)a3
{
  v6 = [objc_opt_class() cellIdentifierForClass:a3];
  v5 = [(CNPostalAddressEditorViewController *)self tableView];
  [v5 registerClass:a3 forCellReuseIdentifier:v6];
}

- (void)_startEditingFirstCell
{
  v2 = [(CNPostalAddressEditorViewController *)self tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v2 cellForRowAtIndexPath:v3];

  v4 = [v5 firstResponderItem];
  [v4 becomeFirstResponder];
}

- (void)validateContents
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C208];
  if ([(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C208]])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = self->_propertyItems;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 property];
          if ([v11 isEqualToString:v3])
          {
            v12 = [v10 displayValue];
            v13 = [v12 length] != 0;

            v7 |= v13;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v6);
      goto LABEL_24;
    }
  }

  else
  {
    v14 = *MEMORY[0x1E695C330];
    if (![(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      v7 = [(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C360]];
      goto LABEL_26;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = self->_propertyItems;
    v15 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v7 = 0;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          v20 = [v19 property];
          if ([v20 isEqualToString:v14])
          {
            v21 = [v19 displayValue];
            v22 = [v21 length] != 0;

            v7 |= v22;
          }
        }

        v16 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
      goto LABEL_24;
    }
  }

  v7 = 0;
LABEL_24:

LABEL_26:
  v23 = [(CNPostalAddressEditorViewController *)self navigationItem];
  v24 = [v23 rightBarButtonItem];
  [v24 setEnabled:v7 & 1];
}

- (void)done:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(CNPostalAddressEditorViewController *)self navigationController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_propertyItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 saveChangesImmediately:{0, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v4 doneWithContact:self->_contact propertyKey:self->_propertyKey];
}

- (void)cancel:(id)a3
{
  v4 = [(CNPostalAddressEditorViewController *)self navigationController];
  v3 = [v4 addressEditorDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 postalAddressEditorDidCancel:v4];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNPostalAddressEditorViewController;
  [(CNPostalAddressEditorViewController *)&v4 viewDidAppear:a3];
  [(CNPostalAddressEditorViewController *)self _startEditingFirstCell];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNPostalAddressEditorViewController;
  [(CNPostalAddressEditorViewController *)&v6 viewDidLoad];
  [(CNPostalAddressEditorViewController *)self registerContactCellClass:objc_opt_class()];
  [(CNPostalAddressEditorViewController *)self registerContactCellClass:objc_opt_class()];
  [(CNPostalAddressEditorViewController *)self registerContactCellClass:objc_opt_class()];
  v3 = [(CNPostalAddressEditorViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [v3 setLeftBarButtonItem:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  if (![(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C230]])
  {
    [v5 setEnabled:0];
  }

  [v3 setRightBarButtonItem:v5];
}

- (void)_rebuildPropertyGroupItems:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  propertyItems = self->_propertyItems;
  self->_propertyItems = v5;

  if (v3)
  {
    v7 = objc_alloc_init(ABPostalNameGroupItem);
    [(ABPostalNameGroupItem *)v7 setContact:self->_contact];
    v8 = [(CNMutableContact *)self->_contact givenName];
    [(ABPostalNameGroupItem *)v7 setValue:v8];

    [(ABPostalNameGroupItem *)v7 setProperty:*MEMORY[0x1E695C240]];
    v9 = MEMORY[0x1E695CD58];
    v10 = [(ABPostalNameGroupItem *)v7 property];
    v11 = [v9 localizedStringForKey:v10];
    [(ABPostalNameGroupItem *)v7 setPlaceholder:v11];

    [(ABPostalNameGroupItem *)v7 setSetter:sel_setGivenName_];
    v12 = objc_alloc_init(ABPostalNameGroupItem);
    [(ABPostalNameGroupItem *)v12 setContact:self->_contact];
    v13 = [(CNMutableContact *)self->_contact familyName];
    [(ABPostalNameGroupItem *)v12 setValue:v13];

    [(ABPostalNameGroupItem *)v12 setProperty:*MEMORY[0x1E695C230]];
    v14 = MEMORY[0x1E695CD58];
    v15 = [(ABPostalNameGroupItem *)v12 property];
    v16 = [v14 localizedStringForKey:v15];
    [(ABPostalNameGroupItem *)v12 setPlaceholder:v16];

    [(ABPostalNameGroupItem *)v12 setSetter:sel_setFamilyName_];
    v17 = [MEMORY[0x1E695CE40] sharedDefaults];
    v18 = [v17 displayNameOrder];

    if (v18 == 1)
    {
      v19 = v7;
    }

    else
    {
      v19 = v12;
    }

    if (v18 == 1)
    {
      v20 = v12;
    }

    else
    {
      v20 = v7;
    }

    [(NSMutableArray *)self->_propertyItems addObject:v19];
    [(NSMutableArray *)self->_propertyItems addObject:v20];
  }

  v21 = *MEMORY[0x1E695C360];
  if ([(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C360]])
  {
    p_contact = &self->_contact;
    contact = self->_contact;
    v24 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    v25 = [CNCardPropertyGroup groupForProperty:v21 contact:contact store:0 policy:v24 linkedPolicies:0];
    p_propertyGroup = &self->_propertyGroup;
    propertyGroup = self->_propertyGroup;
    self->_propertyGroup = v25;

    v28 = [(CNMutableContact *)self->_contact postalAddresses];
    v46 = [v28 lastObject];

    v29 = v46;
    if (!v46)
    {
      v30 = MEMORY[0x1E695CEE0];
      v31 = objc_alloc_init(MEMORY[0x1E695CF60]);
LABEL_12:
      v32 = v31;
      v47 = [v30 labeledValueWithLabel:0 value:v31];

      v29 = v47;
    }
  }

  else
  {
    v33 = *MEMORY[0x1E695C208];
    if ([(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C208]])
    {
      p_contact = &self->_contact;
      v34 = self->_contact;
      v35 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
      v36 = [CNCardPropertyGroup groupForProperty:v33 contact:v34 store:0 policy:v35 linkedPolicies:0];
      p_propertyGroup = &self->_propertyGroup;
      v37 = self->_propertyGroup;
      self->_propertyGroup = v36;

      v38 = [(CNMutableContact *)self->_contact emailAddresses];
      v48 = [v38 lastObject];

      v29 = v48;
      if (!v48)
      {
        v29 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:&stru_1F0CE7398];
      }

      goto LABEL_18;
    }

    v39 = *MEMORY[0x1E695C330];
    if (![(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      return;
    }

    p_contact = &self->_contact;
    v40 = self->_contact;
    v41 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    v42 = [CNCardPropertyGroup groupForProperty:v39 contact:v40 store:0 policy:v41 linkedPolicies:0];
    p_propertyGroup = &self->_propertyGroup;
    v43 = self->_propertyGroup;
    self->_propertyGroup = v42;

    v44 = [(CNMutableContact *)self->_contact phoneNumbers];
    v49 = [v44 lastObject];

    v29 = v49;
    if (!v49)
    {
      v30 = MEMORY[0x1E695CEE0];
      v31 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:&stru_1F0CE7398];
      goto LABEL_12;
    }
  }

LABEL_18:
  v50 = v29;
  v45 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v29 group:*p_propertyGroup contact:*p_contact];
  [(NSMutableArray *)self->_propertyItems addObject:v45];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNPostalAddressEditorViewController;
  [(CNPostalAddressEditorViewController *)&v7 viewWillAppear:a3];
  v4 = [(CNPostalAddressEditorViewController *)self view];
  [v4 _cnui_applyContactStyle];

  v5 = [(CNPostalAddressEditorViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 _cnui_applyContactStyle];
}

- (CNPostalAddressEditorViewController)initWithContact:(id)a3 propertyKey:(id)a4 editNames:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CNPostalAddressEditorViewController;
  v10 = [(CNPostalAddressEditorViewController *)&v18 initWithStyle:0];
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v10->_editingExistingContact = 1;
      v12 = [v8 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695CF18]);
    }

    contact = v11->_contact;
    v11->_contact = v12;

    v14 = [v9 copy];
    propertyKey = v11->_propertyKey;
    v11->_propertyKey = v14;

    v11->_editNames = v5;
    [(CNPostalAddressEditorViewController *)v11 _rebuildPropertyGroupItems:v5];
    v16 = [(CNPostalAddressEditorViewController *)v11 navigationItem];
    [v16 setLargeTitleDisplayMode:2];
  }

  return v11;
}

+ (id)cellIdentifierForClass:(Class)a3
{
  v3 = MEMORY[0x1E696AEC0];
  Name = class_getName(a3);

  return [v3 stringWithCString:Name encoding:1];
}

+ (id)cellIdentifierForEditingProperty:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C360]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C330]];
  }

  v4 = objc_opt_class();
  v5 = [objc_opt_class() cellIdentifierForClass:v4];

  return v5;
}

@end