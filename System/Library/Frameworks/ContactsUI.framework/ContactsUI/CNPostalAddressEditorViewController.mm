@interface CNPostalAddressEditorViewController
+ (id)cellIdentifierForClass:(Class)class;
+ (id)cellIdentifierForEditingProperty:(id)property;
- (CNPostalAddressEditorViewController)initWithContact:(id)contact propertyKey:(id)key editNames:(BOOL)names;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_rebuildPropertyGroupItems:(BOOL)items;
- (void)_startEditingFirstCell;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value;
- (void)propertyCellDidChangeLayout:(id)layout;
- (void)registerContactCellClass:(Class)class;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)validateContents;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNPostalAddressEditorViewController

- (void)propertyCellDidChangeLayout:(id)layout
{
  layoutCopy = layout;
  tableView = [(CNPostalAddressEditorViewController *)self tableView];
  v5 = [tableView indexPathForCell:layoutCopy];
  if (v5)
  {
    [layoutCopy setValue:MEMORY[0x1E695E118] forKey:@"needsHeightCalculation"];
    [tableView _heightForRowAtIndexPath:v5];
    [tableView _setHeight:v5 forRowAtIndexPath:?];
  }
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value
{
  cellCopy = cell;
  itemCopy = item;
  [itemCopy updateLabeledValueWithValue:value];
  [(CNPostalAddressEditorViewController *)self validateContents];
  if (objc_opt_respondsToSelector())
  {
    [cellCopy updateWithPropertyItem:itemCopy];
  }
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label
{
  itemCopy = item;
  cellCopy = cell;
  [itemCopy updateLabeledValueWithLabel:label];
  [cellCopy updateWithPropertyItem:itemCopy];
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CNPostalAddressEditorViewController_sender_dismissViewController_completionHandler___block_invoke;
  v8[3] = &unk_1E74E6F88;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [controller dismissViewControllerAnimated:1 completion:v8];
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

- (void)sender:(id)sender presentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controllerCopy;
    navigationController = [(CNPostalAddressEditorViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    tintColor = [navigationBar tintColor];

    navigationBar2 = [v5 navigationBar];
    [navigationBar2 setTintColor:tintColor];

    view = [v5 view];

    [view setTintColor:tintColor];
  }

  [(CNPostalAddressEditorViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = -[NSMutableArray objectAtIndex:](self->_propertyItems, "objectAtIndex:", [path indexAtPosition:1]);
  property = [v5 property];
  v7 = [objc_opt_class() cellIdentifierForEditingProperty:property];
  tableView = [(CNPostalAddressEditorViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:v7];

  [v9 setCardGroupItem:v5];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [v9 separatorInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ([property isEqualToString:*MEMORY[0x1E695C360]] || (objc_msgSend(property, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) != 0 || objc_msgSend(property, "isEqualToString:", *MEMORY[0x1E695C330]))
  {
    [v9 setPresentingDelegate:self];
    [v9 setDelegate:self];
    [v9 setLabelWidth:110.0];
    labelButton = [v9 labelButton];
    [labelButton titleEdgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (userInterfaceLayoutDirection == 1)
    {
      v25 = 20.0;
    }

    else
    {
      v21 = 20.0;
    }

    labelButton2 = [v9 labelButton];
    [labelButton2 setTitleEdgeInsets:{v19, v21, v23, v25}];
  }

  else
  {
    [v9 setSeparatorInset:{v12, 154.0, v14, v16}];
  }

  return v9;
}

- (void)registerContactCellClass:(Class)class
{
  v6 = [objc_opt_class() cellIdentifierForClass:class];
  tableView = [(CNPostalAddressEditorViewController *)self tableView];
  [tableView registerClass:class forCellReuseIdentifier:v6];
}

- (void)_startEditingFirstCell
{
  tableView = [(CNPostalAddressEditorViewController *)self tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [tableView cellForRowAtIndexPath:v3];

  firstResponderItem = [v5 firstResponderItem];
  [firstResponderItem becomeFirstResponder];
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
          property = [v10 property];
          if ([property isEqualToString:v3])
          {
            displayValue = [v10 displayValue];
            v13 = [displayValue length] != 0;

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
          property2 = [v19 property];
          if ([property2 isEqualToString:v14])
          {
            displayValue2 = [v19 displayValue];
            v22 = [displayValue2 length] != 0;

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
  navigationItem = [(CNPostalAddressEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7 & 1];
}

- (void)done:(id)done
{
  v16 = *MEMORY[0x1E69E9840];
  navigationController = [(CNPostalAddressEditorViewController *)self navigationController];
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

  [navigationController doneWithContact:self->_contact propertyKey:self->_propertyKey];
}

- (void)cancel:(id)cancel
{
  navigationController = [(CNPostalAddressEditorViewController *)self navigationController];
  addressEditorDelegate = [navigationController addressEditorDelegate];
  if (objc_opt_respondsToSelector())
  {
    [addressEditorDelegate postalAddressEditorDidCancel:navigationController];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNPostalAddressEditorViewController;
  [(CNPostalAddressEditorViewController *)&v4 viewDidAppear:appear];
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
  navigationItem = [(CNPostalAddressEditorViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [navigationItem setLeftBarButtonItem:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  if (![(NSString *)self->_propertyKey isEqualToString:*MEMORY[0x1E695C230]])
  {
    [v5 setEnabled:0];
  }

  [navigationItem setRightBarButtonItem:v5];
}

- (void)_rebuildPropertyGroupItems:(BOOL)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  propertyItems = self->_propertyItems;
  self->_propertyItems = v5;

  if (itemsCopy)
  {
    v7 = objc_alloc_init(ABPostalNameGroupItem);
    [(ABPostalNameGroupItem *)v7 setContact:self->_contact];
    givenName = [(CNMutableContact *)self->_contact givenName];
    [(ABPostalNameGroupItem *)v7 setValue:givenName];

    [(ABPostalNameGroupItem *)v7 setProperty:*MEMORY[0x1E695C240]];
    v9 = MEMORY[0x1E695CD58];
    property = [(ABPostalNameGroupItem *)v7 property];
    v11 = [v9 localizedStringForKey:property];
    [(ABPostalNameGroupItem *)v7 setPlaceholder:v11];

    [(ABPostalNameGroupItem *)v7 setSetter:sel_setGivenName_];
    v12 = objc_alloc_init(ABPostalNameGroupItem);
    [(ABPostalNameGroupItem *)v12 setContact:self->_contact];
    familyName = [(CNMutableContact *)self->_contact familyName];
    [(ABPostalNameGroupItem *)v12 setValue:familyName];

    [(ABPostalNameGroupItem *)v12 setProperty:*MEMORY[0x1E695C230]];
    v14 = MEMORY[0x1E695CD58];
    property2 = [(ABPostalNameGroupItem *)v12 property];
    v16 = [v14 localizedStringForKey:property2];
    [(ABPostalNameGroupItem *)v12 setPlaceholder:v16];

    [(ABPostalNameGroupItem *)v12 setSetter:sel_setFamilyName_];
    mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
    displayNameOrder = [mEMORY[0x1E695CE40] displayNameOrder];

    if (displayNameOrder == 1)
    {
      v19 = v7;
    }

    else
    {
      v19 = v12;
    }

    if (displayNameOrder == 1)
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
    mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    v25 = [CNCardPropertyGroup groupForProperty:v21 contact:contact store:0 policy:mEMORY[0x1E695CF48] linkedPolicies:0];
    p_propertyGroup = &self->_propertyGroup;
    propertyGroup = self->_propertyGroup;
    self->_propertyGroup = v25;

    postalAddresses = [(CNMutableContact *)self->_contact postalAddresses];
    lastObject = [postalAddresses lastObject];

    v29 = lastObject;
    if (!lastObject)
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
      mEMORY[0x1E695CF48]2 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
      v36 = [CNCardPropertyGroup groupForProperty:v33 contact:v34 store:0 policy:mEMORY[0x1E695CF48]2 linkedPolicies:0];
      p_propertyGroup = &self->_propertyGroup;
      v37 = self->_propertyGroup;
      self->_propertyGroup = v36;

      emailAddresses = [(CNMutableContact *)self->_contact emailAddresses];
      lastObject2 = [emailAddresses lastObject];

      v29 = lastObject2;
      if (!lastObject2)
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
    mEMORY[0x1E695CF48]3 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    v42 = [CNCardPropertyGroup groupForProperty:v39 contact:v40 store:0 policy:mEMORY[0x1E695CF48]3 linkedPolicies:0];
    p_propertyGroup = &self->_propertyGroup;
    v43 = self->_propertyGroup;
    self->_propertyGroup = v42;

    phoneNumbers = [(CNMutableContact *)self->_contact phoneNumbers];
    lastObject3 = [phoneNumbers lastObject];

    v29 = lastObject3;
    if (!lastObject3)
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

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CNPostalAddressEditorViewController;
  [(CNPostalAddressEditorViewController *)&v7 viewWillAppear:appear];
  view = [(CNPostalAddressEditorViewController *)self view];
  [view _cnui_applyContactStyle];

  navigationController = [(CNPostalAddressEditorViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _cnui_applyContactStyle];
}

- (CNPostalAddressEditorViewController)initWithContact:(id)contact propertyKey:(id)key editNames:(BOOL)names
{
  namesCopy = names;
  contactCopy = contact;
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = CNPostalAddressEditorViewController;
  v10 = [(CNPostalAddressEditorViewController *)&v18 initWithStyle:0];
  v11 = v10;
  if (v10)
  {
    if (contactCopy)
    {
      v10->_editingExistingContact = 1;
      v12 = [contactCopy mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695CF18]);
    }

    contact = v11->_contact;
    v11->_contact = v12;

    v14 = [keyCopy copy];
    propertyKey = v11->_propertyKey;
    v11->_propertyKey = v14;

    v11->_editNames = namesCopy;
    [(CNPostalAddressEditorViewController *)v11 _rebuildPropertyGroupItems:namesCopy];
    navigationItem = [(CNPostalAddressEditorViewController *)v11 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  return v11;
}

+ (id)cellIdentifierForClass:(Class)class
{
  v3 = MEMORY[0x1E696AEC0];
  Name = class_getName(class);

  return [v3 stringWithCString:Name encoding:1];
}

+ (id)cellIdentifierForEditingProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x1E695C360]] & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0)
  {
    [propertyCopy isEqualToString:*MEMORY[0x1E695C330]];
  }

  v4 = objc_opt_class();
  v5 = [objc_opt_class() cellIdentifierForClass:v4];

  return v5;
}

@end