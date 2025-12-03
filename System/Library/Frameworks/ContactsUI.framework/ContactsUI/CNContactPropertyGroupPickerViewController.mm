@interface CNContactPropertyGroupPickerViewController
+ (BOOL)propertiesLeftToPickWithPickedGroups:(id)groups policy:(id)policy prohibitedPropertyKeys:(id)keys contact:(id)contact;
+ (id)pickableGroupsWithPickedGroups:(id)groups policy:(id)policy prohibitedPropertyKeys:(id)keys contact:(id)contact;
+ (id)propertySections;
- (CNContactGroupPickerDelegate)groupPickerDelegate;
- (CNContactPropertyGroupPickerViewController)initWithGroups:(id)groups;
- (id)_loadPickableGroupsWithPickedGroups:(id)groups policy:(id)policy;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel:(id)cancel;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNContactPropertyGroupPickerViewController

- (CNContactGroupPickerDelegate)groupPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupPickerDelegate);

  return WeakRetained;
}

- (id)_loadPickableGroupsWithPickedGroups:(id)groups policy:(id)policy
{
  policyCopy = policy;
  groupsCopy = groups;
  prohibitedPropertyKeys = [(CNContactPropertyGroupPickerViewController *)self prohibitedPropertyKeys];
  contact = [(CNContactPropertyGroupPickerViewController *)self contact];
  v10 = [CNContactPropertyGroupPickerViewController pickableGroupsWithPickedGroups:groupsCopy policy:policyCopy prohibitedPropertyKeys:prohibitedPropertyKeys contact:contact];

  return v10;
}

- (void)cancel:(id)cancel
{
  groupPickerDelegate = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  [groupPickerDelegate contactGroupPickerDidCancel:self];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  [cellCopy _cnui_applyContactStyle];
  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    backgroundColor = [viewCopy backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pickableGroups = self->_pickableGroups;
  pathCopy = path;
  v10 = -[NSArray objectAtIndexedSubscript:](pickableGroups, "objectAtIndexedSubscript:", [pathCopy section]);
  groupPickerDelegate = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  v8 = [pathCopy row];

  v9 = [v10 objectAtIndexedSubscript:v8];
  [groupPickerDelegate contactGroupPickerDidFinish:self withGroup:v9];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x1E69DD028];
  pathCopy = path;
  v7 = [[v5 alloc] initWithStyle:0 reuseIdentifier:0];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_pickableGroups, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = MEMORY[0x1E695CD58];
  v10 = [pathCopy row];

  v11 = [v8 objectAtIndexedSubscript:v10];
  v12 = [v9 localizedStringForKey:v11];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  [v7 _cnui_applyContactStyle];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_pickableGroups objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    navigationItem = [(CNContactPropertyGroupPickerViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v5];
  }

  v8.receiver = self;
  v8.super_class = CNContactPropertyGroupPickerViewController;
  [(CNContactPropertyGroupPickerViewController *)&v8 viewWillAppear:appearCopy];
  view = [(CNContactPropertyGroupPickerViewController *)self view];
  [view _cnui_applyContactStyle];
}

- (void)loadView
{
  groupPickerDelegate = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  alreadyPickedGroups = [groupPickerDelegate alreadyPickedGroups];

  groupPickerDelegate2 = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  policy = [groupPickerDelegate2 policy];

  v6 = [(CNContactPropertyGroupPickerViewController *)self _loadPickableGroupsWithPickedGroups:alreadyPickedGroups policy:policy];
  pickableGroups = self->_pickableGroups;
  self->_pickableGroups = v6;

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v10 = [featureFlags isFeatureEnabled:11];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc(MEMORY[0x1E69DD020]);
  v13 = [v12 initWithFrame:v11 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v13;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v15 = +[CNUIColorRepository popoverBackgroundColor];
    [(UITableView *)self->_tableView setBackgroundColor:v15];
  }

  [(CNContactPropertyGroupPickerViewController *)self setView:self->_tableView];
}

- (void)dealloc
{
  objc_storeWeak(&self->_groupPickerDelegate, 0);
  v3.receiver = self;
  v3.super_class = CNContactPropertyGroupPickerViewController;
  [(CNContactPropertyGroupPickerViewController *)&v3 dealloc];
}

- (CNContactPropertyGroupPickerViewController)initWithGroups:(id)groups
{
  v8.receiver = self;
  v8.super_class = CNContactPropertyGroupPickerViewController;
  v3 = [(CNContactPropertyGroupPickerViewController *)&v8 initWithNibName:0 bundle:0];
  if (v3)
  {
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"ADD_MORE_PROPERTIES_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactPropertyGroupPickerViewController *)v3 setTitle:v5];

    navigationItem = [(CNContactPropertyGroupPickerViewController *)v3 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  return v3;
}

+ (id)pickableGroupsWithPickedGroups:(id)groups policy:(id)policy prohibitedPropertyKeys:(id)keys contact:(id)contact
{
  v40 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  policyCopy = policy;
  keysCopy = keys;
  contactCopy = contact;
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = +[CNContactPropertyGroupPickerViewController propertySections];
  v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v26 = *v35;
    v12 = *MEMORY[0x1E695C1C0];
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v13;
        v14 = *(*(&v34 + 1) + 8 * v13);
        array2 = [MEMORY[0x1E695DF70] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              if (([keysCopy containsObject:v21] & 1) == 0)
              {
                v22 = [v21 isEqualToString:v12];
                if ((!contactCopy || !v22 || [contactCopy contactType] != 1) && (objc_msgSend(groupsCopy, "containsObject:", v21) & 1) == 0 && objc_msgSend(policyCopy, "maximumCountOfValuesForContactProperty:", v21))
                {
                  [array2 addObject:v21];
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v18);
        }

        if ([array2 count])
        {
          [array addObject:array2];
        }

        v13 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  return array;
}

+ (id)propertySections
{
  if (propertySections_onceToken != -1)
  {
    dispatch_once(&propertySections_onceToken, &__block_literal_global_8460);
  }

  v3 = propertySections_sections;

  return v3;
}

void __62__CNContactPropertyGroupPickerViewController_propertySections__block_invoke()
{
  v19[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = *MEMORY[0x1E695C240];
  v18[0] = *MEMORY[0x1E695C300];
  v18[1] = v1;
  v2 = *MEMORY[0x1E695C3A0];
  v18[2] = *MEMORY[0x1E695C348];
  v18[3] = v2;
  v3 = *MEMORY[0x1E695C350];
  v18[4] = *MEMORY[0x1E695C2F0];
  v18[5] = v3;
  v4 = *MEMORY[0x1E695C340];
  v18[6] = *MEMORY[0x1E695C230];
  v18[7] = v4;
  v5 = *MEMORY[0x1E695C390];
  v18[8] = *MEMORY[0x1E695C398];
  v18[9] = v5;
  v6 = *MEMORY[0x1E695C310];
  v18[10] = *MEMORY[0x1E695C308];
  v18[11] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:12];
  v19[0] = v7;
  v8 = *MEMORY[0x1E695C1F8];
  v17[0] = *MEMORY[0x1E695C2C8];
  v17[1] = v8;
  v9 = *MEMORY[0x1E695C358];
  v17[2] = *MEMORY[0x1E695C328];
  v17[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v0 addObjectsFromArray:v11];

  v12 = +[CNContactView addFieldCardProperties];
  v16 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v0 addObjectsFromArray:v13];

  v14 = [v0 copy];
  v15 = propertySections_sections;
  propertySections_sections = v14;
}

+ (BOOL)propertiesLeftToPickWithPickedGroups:(id)groups policy:(id)policy prohibitedPropertyKeys:(id)keys contact:(id)contact
{
  v6 = [CNContactPropertyGroupPickerViewController pickableGroupsWithPickedGroups:groups policy:policy prohibitedPropertyKeys:keys contact:contact];
  v7 = [v6 count] != 0;

  return v7;
}

@end