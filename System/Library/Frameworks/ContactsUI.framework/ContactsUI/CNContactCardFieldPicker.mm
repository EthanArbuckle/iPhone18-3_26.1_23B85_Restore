@interface CNContactCardFieldPicker
+ (BOOL)isContactObject:(id)object equivalentTo:(id)to;
+ (BOOL)isProperty:(id)property value:(id)value inContact:(id)contact;
+ (id)descriptorForRequiredKeys;
+ (id)imageProperties;
+ (id)privateCardPropertiesForContacts:(id)contacts;
- (BOOL)allFieldsSelected;
- (BOOL)isAnyHandleSelected;
- (BOOL)isInActivityController;
- (BOOL)selectRowForKey:(id)key value:(id)value atIndex:(id)index;
- (CNContactCardFieldPicker)initWithContact:(id)contact;
- (CNContactCardFieldPicker)initWithContacts:(id)contacts isNameDropSession:(BOOL)session fieldSelections:(id)selections;
- (CNContactCardFieldPicker)initWithNameDrop:(id)drop fieldSelections:(id)selections;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)titleForSelectAllFieldsButton;
- (void)deselectAllFields;
- (void)done:(id)done;
- (void)saveFilteredContacts;
- (void)selectAllFields;
- (void)selectDefaultFieldKeys;
- (void)selectDefaultFields;
- (void)setPhotoFromContact:(id)contact onFilteredContact:(id)filteredContact;
- (void)setUpDoneButton;
- (void)setUpTableView;
- (void)setUpToggleSelectAllFieldsButton;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)toggleSelectionOfFields:(id)fields;
- (void)updateControllerButtons;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNContactCardFieldPicker

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
  sections = [fieldPickerDataSource sections];
  section = [pathCopy section];

  v11 = [sections objectAtIndexedSubscript:section];
  sectionType = [v11 sectionType];
  v13 = [sectionType isEqualToString:@"contactCardFieldPickerPhotoSection"];

  if (v13 && (-[CNContactCardFieldPicker contacts](self, "contacts"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 count], v14, v15 == 1))
  {
    [CNContactCardFieldPickerCell estimatedHeightDisplayingValue:1];
  }

  else
  {
    [viewCopy rowHeight];
  }

  v17 = v16;

  return v17;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
    firstContactContainingPhoto = [fieldPickerDataSource firstContactContainingPhoto];

    [cellCopy prepareCellWithContact:firstContactContainingPhoto];
  }
}

- (void)setPhotoFromContact:(id)contact onFilteredContact:(id)filteredContact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  filteredContactCopy = filteredContact;
  v7 = +[CNContactCardFieldPicker imageProperties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [contactCopy valueForKey:v12];
        [filteredContactCopy setValue:v13 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (BOOL)allFieldsSelected
{
  tableView = [(CNContactCardFieldPicker *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v5 = [indexPathsForSelectedRows count];
  fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
  LOBYTE(v5) = v5 == [fieldPickerDataSource totalItemCount];

  return v5;
}

- (id)titleForSelectAllFieldsButton
{
  allFieldsSelected = [(CNContactCardFieldPicker *)self allFieldsSelected];
  v3 = CNContactsUIBundle();
  v4 = v3;
  if (allFieldsSelected)
  {
    v5 = @"DESELECT_ALL_FIELDS_BUTTON_TITLE";
  }

  else
  {
    v5 = @"SELECT_ALL_FIELDS_BUTTON_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F0CE7398 table:@"Localized"];

  return v6;
}

- (BOOL)isAnyHandleSelected
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  tableView = [(CNContactCardFieldPicker *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  obj = indexPathsForSelectedRows;
  v5 = [indexPathsForSelectedRows countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = *MEMORY[0x1E695C208];
    v9 = *MEMORY[0x1E695C330];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
        v13 = [fieldPickerDataSource keyForIndexPath:v11];

        v23[0] = v8;
        v23[1] = v9;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
        v15 = [v14 containsObject:v13];

        if (v15)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)updateControllerButtons
{
  if ([(CNContactCardFieldPicker *)self isNameDropSession])
  {
    isAnyHandleSelected = [(CNContactCardFieldPicker *)self isAnyHandleSelected];
    navigationItem = [(CNContactCardFieldPicker *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:isAnyHandleSelected];
  }

  else
  {
    navigationItem = [(CNContactCardFieldPicker *)self titleForSelectAllFieldsButton];
    rightBarButtonItem = [(CNContactCardFieldPicker *)self toggleSelectAllFieldsButton];
    [rightBarButtonItem setTitle:navigationItem];
  }
}

- (void)deselectAllFields
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tableView = [(CNContactCardFieldPicker *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v5 = [indexPathsForSelectedRows countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        tableView2 = [(CNContactCardFieldPicker *)self tableView];
        [tableView2 deselectRowAtIndexPath:v9 animated:1];

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(CNContactCardFieldPicker *)self updateControllerButtons];
}

- (void)selectAllFields
{
  tableView = [(CNContactCardFieldPicker *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    v5 = 0;
    do
    {
      tableView2 = [(CNContactCardFieldPicker *)self tableView];
      v7 = [tableView2 numberOfRowsInSection:v5];

      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:v5];
          tableView3 = [(CNContactCardFieldPicker *)self tableView];
          [tableView3 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];

          ++v8;
          tableView4 = [(CNContactCardFieldPicker *)self tableView];
          v12 = [tableView4 numberOfRowsInSection:v5];
        }

        while (v8 < v12);
      }

      ++v5;
      tableView5 = [(CNContactCardFieldPicker *)self tableView];
      numberOfSections2 = [tableView5 numberOfSections];
    }

    while (v5 < numberOfSections2);
  }

  [(CNContactCardFieldPicker *)self updateControllerButtons];
}

- (void)selectDefaultFields
{
  defaultFieldSelections = [(CNContactCardFieldPicker *)self defaultFieldSelections];

  if (defaultFieldSelections)
  {
    tableView = [(CNContactCardFieldPicker *)self tableView];
    numberOfSections = [tableView numberOfSections];

    if (numberOfSections >= 1)
    {
      v6 = 0;
      v24 = *MEMORY[0x1E695C1D0];
      v23 = *MEMORY[0x1E695C318];
      while (1)
      {
        tableView2 = [(CNContactCardFieldPicker *)self tableView];
        v8 = [tableView2 numberOfRowsInSection:v6];

        if (v8 >= 1)
        {
          break;
        }

LABEL_12:
        ++v6;
        tableView3 = [(CNContactCardFieldPicker *)self tableView];
        numberOfSections2 = [tableView3 numberOfSections];

        if (v6 >= numberOfSections2)
        {
          return;
        }
      }

      v9 = 0;
      while (1)
      {
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:v6];
        fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
        v12 = [fieldPickerDataSource groupItemForIndexPath:v10];

        property = [v12 property];
        v14 = [property isEqualToString:@"birthdays"];
        labeledValue = [v12 labeledValue];
        selfCopy2 = self;
        if (!v14)
        {
          break;
        }

        v17 = [(CNContactCardFieldPicker *)self selectRowForKey:v24 value:labeledValue atIndex:v10];

        if (!v17)
        {
          labeledValue = [v12 labeledValue];
          selfCopy2 = self;
          v18 = v23;
LABEL_10:
          [(CNContactCardFieldPicker *)selfCopy2 selectRowForKey:v18 value:labeledValue atIndex:v10];
        }

        ++v9;
        tableView4 = [(CNContactCardFieldPicker *)self tableView];
        v20 = [tableView4 numberOfRowsInSection:v6];

        if (v9 >= v20)
        {
          goto LABEL_12;
        }
      }

      v18 = property;
      goto LABEL_10;
    }
  }
}

- (BOOL)selectRowForKey:(id)key value:(id)value atIndex:(id)index
{
  indexCopy = index;
  valueCopy = value;
  keyCopy = key;
  v11 = objc_opt_class();
  defaultFieldSelections = [(CNContactCardFieldPicker *)self defaultFieldSelections];
  v13 = [v11 isProperty:keyCopy value:valueCopy inContact:defaultFieldSelections];

  if (v13)
  {
    tableView = [(CNContactCardFieldPicker *)self tableView];
    [tableView selectRowAtIndexPath:indexCopy animated:0 scrollPosition:0];
  }

  return v13;
}

- (void)selectDefaultFieldKeys
{
  v27[6] = *MEMORY[0x1E69E9840];
  contacts = [(CNContactCardFieldPicker *)self contacts];
  v26 = [CNContactCardFieldPicker privateCardPropertiesForContacts:contacts];

  tableView = [(CNContactCardFieldPicker *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    v6 = 0;
    v25 = *MEMORY[0x1E695C278];
    v24 = *MEMORY[0x1E695C240];
    v23 = *MEMORY[0x1E695C230];
    v22 = *MEMORY[0x1E695C348];
    v7 = *MEMORY[0x1E695C350];
    v8 = *MEMORY[0x1E695C340];
    while (1)
    {
      v9 = [(CNContactCardFieldPicker *)self tableView:v22];
      v10 = [v9 numberOfRowsInSection:v6];

      if (v10 >= 1)
      {
        break;
      }

LABEL_11:
      ++v6;
      tableView2 = [(CNContactCardFieldPicker *)self tableView];
      numberOfSections2 = [tableView2 numberOfSections];

      if (v6 >= numberOfSections2)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
    while (1)
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v6];
      fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
      v14 = [fieldPickerDataSource keyForIndexPath:v12];

      if ([(CNContactCardFieldPicker *)self isNameDropSession])
      {
        break;
      }

      if (([v26 containsObject:v14] & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_10:

      ++v11;
      tableView3 = [(CNContactCardFieldPicker *)self tableView];
      v19 = [tableView3 numberOfRowsInSection:v6];

      if (v11 >= v19)
      {
        goto LABEL_11;
      }
    }

    v27[0] = v25;
    v27[1] = v24;
    v27[2] = v23;
    v27[3] = v22;
    v27[4] = v7;
    v27[5] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
    v16 = [v15 containsObject:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    tableView4 = [(CNContactCardFieldPicker *)self tableView];
    [tableView4 selectRowAtIndexPath:v12 animated:0 scrollPosition:0];

    goto LABEL_10;
  }

LABEL_12:
  if (![(CNContactCardFieldPicker *)self isNameDropSession])
  {
    [(CNContactCardFieldPicker *)self updateControllerButtons];
  }
}

- (void)toggleSelectionOfFields:(id)fields
{
  if ([(CNContactCardFieldPicker *)self allFieldsSelected])
  {

    [(CNContactCardFieldPicker *)self deselectAllFields];
  }

  else
  {

    [(CNContactCardFieldPicker *)self selectAllFields];
  }
}

- (void)saveFilteredContacts
{
  if (![(CNContactCardFieldPicker *)self isNameDropSession]|| [(CNContactCardFieldPicker *)self isAnyHandleSelected])
  {
    contacts = [(CNContactCardFieldPicker *)self contacts];
    v4 = [contacts count];

    contacts2 = [(CNContactCardFieldPicker *)self contacts];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CNContactCardFieldPicker_saveFilteredContacts__block_invoke;
    v8[3] = &unk_1E74E3140;
    v8[4] = self;
    v8[5] = v4;
    v6 = [contacts2 _cn_map:v8];

    delegate = [(CNContactCardFieldPicker *)self delegate];
    [delegate contactCardFieldPicker:self didFinishWithContacts:v6];
  }
}

id __48__CNContactCardFieldPicker_saveFilteredContacts__block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = [*(a1 + 32) tableView];
  v5 = [v4 indexPathsForSelectedRows];

  v41 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v41)
  {
    v39 = a1;
    v40 = *v53;
    v38 = v5;
    v34 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(v5);
        }

        v43 = v6;
        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = [*(a1 + 32) fieldPickerDataSource];
        v9 = [v8 sections];
        v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

        v11 = [v10 items];
        v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

        v42 = v10;
        v13 = [v10 sectionType];
        LODWORD(v9) = [v13 isEqualToString:@"contactCardFieldPickerPhotoSection"];

        if (v9)
        {
          [*(a1 + 32) setPhotoFromContact:v46 onFilteredContact:v3];
        }

        else
        {
          v14 = [v12 groupItem];
          v15 = [v14 property];

          v16 = [v46 valueForKey:v15];
          if (v16)
          {
            if ([CNContactView isMultiValueProperty:v15])
            {
              v17 = v16;
              if (*(a1 + 40) == 1)
              {
                v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
                v57 = v18;
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
                v20 = v19 = v17;
              }

              else
              {
                v36 = v16;
                v37 = v15;
                v18 = [CNCardPropertyGroup groupForProperty:v15 contact:v46 store:0 policy:0 linkedPolicies:0];
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v35 = v17;
                obj = v17;
                v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
                if (v47)
                {
                  v45 = *v49;
                  v20 = MEMORY[0x1E695E0F0];
                  do
                  {
                    for (i = 0; i != v47; ++i)
                    {
                      if (*v49 != v45)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v22 = *(*(&v48 + 1) + 8 * i);
                      v23 = v18;
                      v24 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v22 group:v18 contact:v46];
                      v25 = [v24 displayLabel];
                      v26 = v12;
                      v27 = [v12 groupItem];
                      v28 = [v27 displayLabel];
                      v29 = [v25 isEqualToString:v28];

                      if (v29)
                      {
                        v30 = [v20 arrayByAddingObject:v22];

                        v20 = v30;
                      }

                      v12 = v26;
                      v18 = v23;
                    }

                    v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
                  }

                  while (v47);
                }

                else
                {
                  v20 = MEMORY[0x1E695E0F0];
                }

                v3 = v34;
                v19 = v35;
                v16 = v36;
                v15 = v37;
              }

              v31 = [v3 valueForKey:v15];
              v32 = [v20 arrayByAddingObjectsFromArray:v31];

              [v3 setValue:v32 forKey:v15];
              v5 = v38;
              a1 = v39;
            }

            else
            {
              [v3 setValue:v16 forKey:v15];
            }
          }
        }

        v6 = v43 + 1;
      }

      while (v43 + 1 != v41);
      v41 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v41);
  }

  return v3;
}

- (void)done:(id)done
{
  [(CNContactCardFieldPicker *)self dismissViewControllerAnimated:1 completion:0];

  [(CNContactCardFieldPicker *)self saveFilteredContacts];
}

- (BOOL)isInActivityController
{
  navigationController = [(CNContactCardFieldPicker *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v4 = [viewControllers count] > 1;

  return v4;
}

- (void)setUpDoneButton
{
  if ([(CNContactCardFieldPicker *)self isNameDropSession])
  {
    navigationItem4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel_done_];
    navigationItem = [(CNContactCardFieldPicker *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem4];
    goto LABEL_11;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {

    goto LABEL_7;
  }

  isInActivityController = [(CNContactCardFieldPicker *)self isInActivityController];

  if (!isInActivityController)
  {
LABEL_7:
    navigationItem2 = [(CNContactCardFieldPicker *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];

    if (!rightBarButtonItem)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
      navigationItem3 = [(CNContactCardFieldPicker *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:v9];
    }

    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:
  navigationItem4 = [(CNContactCardFieldPicker *)self navigationItem];
  navigationItem = [navigationItem4 rightBarButtonItem];
  [navigationItem setHidden:v6];
LABEL_11:
}

- (void)setUpToggleSelectAllFieldsButton
{
  v10[3] = *MEMORY[0x1E69E9840];
  toggleSelectAllFieldsButton = [(CNContactCardFieldPicker *)self toggleSelectAllFieldsButton];

  if (toggleSelectAllFieldsButton)
  {
    [(CNContactCardFieldPicker *)self updateControllerButtons];
  }

  else
  {
    titleForSelectAllFieldsButton = [(CNContactCardFieldPicker *)self titleForSelectAllFieldsButton];
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:titleForSelectAllFieldsButton style:0 target:self action:sel_toggleSelectionOfFields_];
    [(CNContactCardFieldPicker *)self setToggleSelectAllFieldsButton:v5];
  }

  flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  toggleSelectAllFieldsButton2 = [(CNContactCardFieldPicker *)self toggleSelectAllFieldsButton];
  v10[1] = toggleSelectAllFieldsButton2;
  v10[2] = flexibleSpaceItem;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  [(CNContactCardFieldPicker *)self setToolbarItems:v8];

  navigationController = [(CNContactCardFieldPicker *)self navigationController];
  [navigationController setToolbarHidden:0];
}

- (void)setUpTableView
{
  v40[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(CNContactCardFieldPicker *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:2 style:?];
  [(CNContactCardFieldPicker *)self setTableView:v5];

  tableView = [(CNContactCardFieldPicker *)self tableView];
  [tableView setDelegate:self];

  fieldPickerDataSource = [(CNContactCardFieldPicker *)self fieldPickerDataSource];
  tableView2 = [(CNContactCardFieldPicker *)self tableView];
  [tableView2 setDataSource:fieldPickerDataSource];

  tableView3 = [(CNContactCardFieldPicker *)self tableView];
  [tableView3 setAllowsMultipleSelection:1];

  v10 = +[CNUIColorRepository groupsInsetBackgroundColor];

  if (v10)
  {
    v11 = +[CNUIColorRepository groupsInsetBackgroundColor];
    tableView4 = [(CNContactCardFieldPicker *)self tableView];
    [tableView4 setBackgroundColor:v11];
  }

  tableView5 = [(CNContactCardFieldPicker *)self tableView];
  [tableView5 setSectionFooterHeight:0.0];

  tableView6 = [(CNContactCardFieldPicker *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"contactCardFieldPickerCell"];

  tableView7 = [(CNContactCardFieldPicker *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"contactCardFieldPickerPhotoCell"];

  view2 = [(CNContactCardFieldPicker *)self view];
  tableView8 = [(CNContactCardFieldPicker *)self tableView];
  [view2 addSubview:tableView8];

  tableView9 = [(CNContactCardFieldPicker *)self tableView];
  leadingAnchor = [tableView9 leadingAnchor];
  view3 = [(CNContactCardFieldPicker *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v35;
  tableView10 = [(CNContactCardFieldPicker *)self tableView];
  trailingAnchor = [tableView10 trailingAnchor];
  view4 = [(CNContactCardFieldPicker *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v30;
  tableView11 = [(CNContactCardFieldPicker *)self tableView];
  topAnchor = [tableView11 topAnchor];
  view5 = [(CNContactCardFieldPicker *)self view];
  topAnchor2 = [view5 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v21;
  tableView12 = [(CNContactCardFieldPicker *)self tableView];
  bottomAnchor = [tableView12 bottomAnchor];
  view6 = [(CNContactCardFieldPicker *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v28];
  tableView13 = [(CNContactCardFieldPicker *)self tableView];
  [tableView13 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CNContactCardFieldPicker;
  [(CNContactCardFieldPicker *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNContactCardFieldPicker;
  [(CNContactCardFieldPicker *)&v4 viewWillAppear:appear];
  [(CNContactCardFieldPicker *)self setUpDoneButton];
  if (![(CNContactCardFieldPicker *)self isNameDropSession])
  {
    [(CNContactCardFieldPicker *)self setUpToggleSelectAllFieldsButton];
  }

  if ([(CNContactCardFieldPicker *)self shouldSelectDefaultFieldKeys])
  {
    [(CNContactCardFieldPicker *)self selectDefaultFieldKeys];
    [(CNContactCardFieldPicker *)self setShouldSelectDefaultFieldKeys:0];
  }

  if ([(CNContactCardFieldPicker *)self shouldSelectDefaultIndividualFields])
  {
    [(CNContactCardFieldPicker *)self selectDefaultFields];
    [(CNContactCardFieldPicker *)self setShouldSelectDefaultIndividualFields:0];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CNContactCardFieldPicker;
  [(CNContactCardFieldPicker *)&v12 viewDidLoad];
  v3 = +[CNUIColorRepository groupsInsetBackgroundColor];

  if (v3)
  {
    v4 = +[CNUIColorRepository groupsInsetBackgroundColor];
    view = [(CNContactCardFieldPicker *)self view];
    [view setBackgroundColor:v4];
  }

  if ([(CNContactCardFieldPicker *)self isNameDropSession])
  {
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SHARE_BOOP_CONTACT_FIELDS_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    navigationItem = [(CNContactCardFieldPicker *)self navigationItem];
    [navigationItem setTitle:v7];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SHARE_SELECTED_FIELDS_SHEET_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    navigationItem = [(CNContactCardFieldPicker *)self contacts];
    v10 = [v9 localizedStringWithFormat:v7, objc_msgSend(navigationItem, "count")];
    navigationItem2 = [(CNContactCardFieldPicker *)self navigationItem];
    [navigationItem2 setTitle:v10];
  }

  [(CNContactCardFieldPicker *)self setUpTableView];
}

- (CNContactCardFieldPicker)initWithContacts:(id)contacts isNameDropSession:(BOOL)session fieldSelections:(id)selections
{
  sessionCopy = session;
  v24[3] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  selectionsCopy = selections;
  v23.receiver = self;
  v23.super_class = CNContactCardFieldPicker;
  v11 = [(CNContactCardFieldPicker *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contacts, contacts);
    v12->_isNameDropSession = sessionCopy;
    v13 = [CNContactCardFieldPickerDataSource alloc];
    v14 = v13;
    if (sessionCopy)
    {
      v15 = *MEMORY[0x1E695C240];
      v24[0] = *MEMORY[0x1E695C278];
      v24[1] = v15;
      v24[2] = *MEMORY[0x1E695C230];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      v17 = [(CNContactCardFieldPickerDataSource *)v14 initWithContacts:contactsCopy hiddenProperties:v16];
      fieldPickerDataSource = v12->_fieldPickerDataSource;
      v12->_fieldPickerDataSource = v17;
    }

    else
    {
      v19 = [(CNContactCardFieldPickerDataSource *)v13 initWithContacts:contactsCopy];
      v20 = v12->_fieldPickerDataSource;
      v12->_fieldPickerDataSource = v19;

      v12->_shouldSelectDefaultFieldKeys = 1;
    }

    v12->_shouldSelectDefaultIndividualFields = selectionsCopy != 0;
    objc_storeStrong(&v12->_defaultFieldSelections, selections);
    v21 = v12;
  }

  return v12;
}

- (CNContactCardFieldPicker)initWithNameDrop:(id)drop fieldSelections:(id)selections
{
  v13 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  v6 = MEMORY[0x1E695DEC8];
  selectionsCopy = selections;
  dropCopy2 = drop;
  v9 = [v6 arrayWithObjects:&dropCopy count:1];

  v10 = [(CNContactCardFieldPicker *)self initWithContacts:v9 isNameDropSession:1 fieldSelections:selectionsCopy, dropCopy, v13];
  return v10;
}

- (CNContactCardFieldPicker)initWithContact:(id)contact
{
  v10 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = MEMORY[0x1E695DEC8];
  contactCopy2 = contact;
  v6 = [v4 arrayWithObjects:&contactCopy count:1];

  v7 = [(CNContactCardFieldPicker *)self initWithContacts:v6, contactCopy, v10];
  return v7;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNContactViewController descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactCardFieldPicker descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)privateCardPropertiesForContacts:(id)contacts
{
  v10[6] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  array = [MEMORY[0x1E695DF70] array];
  v5 = *MEMORY[0x1E695C1F0];
  v10[0] = @"birthdays";
  v10[1] = v5;
  v6 = *MEMORY[0x1E695C360];
  v10[2] = *MEMORY[0x1E695C320];
  v10[3] = v6;
  v7 = *MEMORY[0x1E695C358];
  v10[4] = *MEMORY[0x1E695C328];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];
  [array addObjectsFromArray:v8];

  if ([CNContactCardFieldPickerDataSource canSharePronounsForContacts:contactsCopy])
  {
    [array addObject:*MEMORY[0x1E695C1C0]];
  }

  if ([CNContactCardFieldPickerDataSource isSharingMeContactForContacts:contactsCopy])
  {
    [array addObject:*MEMORY[0x1E695C3A8]];
  }

  return array;
}

+ (id)imageProperties
{
  if (imageProperties_cn_once_token_1 != -1)
  {
    dispatch_once(&imageProperties_cn_once_token_1, &__block_literal_global_21479);
  }

  v3 = imageProperties_cn_once_object_1;

  return v3;
}

void __43__CNContactCardFieldPicker_imageProperties__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C400];
  v6[0] = *MEMORY[0x1E695C278];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695C280];
  v6[2] = *MEMORY[0x1E695C238];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695C1E8];
  v6[4] = *MEMORY[0x1E695C298];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E695C2E8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = [v3 copy];
  v5 = imageProperties_cn_once_object_1;
  imageProperties_cn_once_object_1 = v4;
}

+ (BOOL)isProperty:(id)property value:(id)value inContact:(id)contact
{
  v30 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  contactCopy = contact;
  if (![contactCopy isKeyAvailable:propertyCopy])
  {
    v20 = 0;
    goto LABEL_19;
  }

  v10 = [contactCopy valueForKey:propertyCopy];
  if (!v10)
  {
    v20 = 0;
LABEL_16:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_opt_class();
    value = [valueCopy value];
    v20 = [v21 isContactObject:value equivalentTo:v10];

    goto LABEL_16;
  }

  v24 = propertyCopy;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_opt_class();
        value2 = [valueCopy value];
        value3 = [v16 value];
        LOBYTE(v17) = [v17 isContactObject:value2 equivalentTo:value3];

        if (v17)
        {

          v20 = 1;
          goto LABEL_18;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_18:
  propertyCopy = v24;
LABEL_19:

  return v20;
}

+ (BOOL)isContactObject:(id)object equivalentTo:(id)to
{
  objectCopy = object;
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
    v8 = toCopy;
    v9 = MEMORY[0x1E69966F0];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke;
    v39[3] = &unk_1E74E7460;
    v40 = v7;
    v41 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke_2;
    aBlock[3] = &unk_1E74E7460;
    v10 = v40;
    v37 = v10;
    v11 = v41;
    v38 = v11;
    v12 = _Block_copy(aBlock);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke_3;
    v33[3] = &unk_1E74E7460;
    v13 = v10;
    v34 = v13;
    v14 = v11;
    v35 = v14;
    v15 = _Block_copy(v33);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke_4;
    v30[3] = &unk_1E74E7460;
    v16 = v13;
    v31 = v16;
    v17 = v14;
    v32 = v17;
    v18 = _Block_copy(v30);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke_5;
    v27 = &unk_1E74E7460;
    v28 = v16;
    v29 = v17;
    v19 = v17;
    v20 = v16;
    v21 = _Block_copy(&v24);
    v22 = [v9 isObject:v20 memberOfSameClassAndEqualTo:v19 withBlocks:{v39, v12, v15, v18, v21, 0, v24, v25, v26, v27}];
  }

  else
  {
    v22 = [MEMORY[0x1E69966F0] isObject:objectCopy equalToOther:toCopy];
  }

  return v22;
}

BOOL __57__CNContactCardFieldPicker_isContactObject_equivalentTo___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) calendar];
  v3 = [v2 calendarIdentifier];
  v4 = [*(a1 + 40) calendar];
  v5 = [v4 calendarIdentifier];
  v6 = v3 == v5;

  return v6;
}

@end