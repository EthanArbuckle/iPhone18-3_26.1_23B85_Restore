@interface CNContactPropertyGroupPickerViewController
+ (BOOL)propertiesLeftToPickWithPickedGroups:(id)a3 policy:(id)a4 prohibitedPropertyKeys:(id)a5 contact:(id)a6;
+ (id)pickableGroupsWithPickedGroups:(id)a3 policy:(id)a4 prohibitedPropertyKeys:(id)a5 contact:(id)a6;
+ (id)propertySections;
- (CNContactGroupPickerDelegate)groupPickerDelegate;
- (CNContactPropertyGroupPickerViewController)initWithGroups:(id)a3;
- (id)_loadPickableGroupsWithPickedGroups:(id)a3 policy:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNContactPropertyGroupPickerViewController

- (CNContactGroupPickerDelegate)groupPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupPickerDelegate);

  return WeakRetained;
}

- (id)_loadPickableGroupsWithPickedGroups:(id)a3 policy:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactPropertyGroupPickerViewController *)self prohibitedPropertyKeys];
  v9 = [(CNContactPropertyGroupPickerViewController *)self contact];
  v10 = [CNContactPropertyGroupPickerViewController pickableGroupsWithPickedGroups:v7 policy:v6 prohibitedPropertyKeys:v8 contact:v9];

  return v10;
}

- (void)cancel:(id)a3
{
  v4 = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  [v4 contactGroupPickerDidCancel:self];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a3;
  v7 = a4;
  [v7 _cnui_applyContactStyle];
  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v8 = [v9 backgroundColor];
    [v7 setBackgroundColor:v8];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  pickableGroups = self->_pickableGroups;
  v6 = a4;
  v10 = -[NSArray objectAtIndexedSubscript:](pickableGroups, "objectAtIndexedSubscript:", [v6 section]);
  v7 = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  v8 = [v6 row];

  v9 = [v10 objectAtIndexedSubscript:v8];
  [v7 contactGroupPickerDidFinish:self withGroup:v9];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = MEMORY[0x1E69DD028];
  v6 = a4;
  v7 = [[v5 alloc] initWithStyle:0 reuseIdentifier:0];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_pickableGroups, "objectAtIndexedSubscript:", [v6 section]);
  v9 = MEMORY[0x1E695CD58];
  v10 = [v6 row];

  v11 = [v8 objectAtIndexedSubscript:v10];
  v12 = [v9 localizedStringForKey:v11];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  [v7 _cnui_applyContactStyle];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_pickableGroups objectAtIndexedSubscript:a4];
  v5 = [v4 count];

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    v6 = [(CNContactPropertyGroupPickerViewController *)self navigationItem];
    [v6 setLeftBarButtonItem:v5];
  }

  v8.receiver = self;
  v8.super_class = CNContactPropertyGroupPickerViewController;
  [(CNContactPropertyGroupPickerViewController *)&v8 viewWillAppear:v3];
  v7 = [(CNContactPropertyGroupPickerViewController *)self view];
  [v7 _cnui_applyContactStyle];
}

- (void)loadView
{
  v3 = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  v16 = [v3 alreadyPickedGroups];

  v4 = [(CNContactPropertyGroupPickerViewController *)self groupPickerDelegate];
  v5 = [v4 policy];

  v6 = [(CNContactPropertyGroupPickerViewController *)self _loadPickableGroupsWithPickedGroups:v16 policy:v5];
  pickableGroups = self->_pickableGroups;
  self->_pickableGroups = v6;

  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 featureFlags];
  v10 = [v9 isFeatureEnabled:11];

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

- (CNContactPropertyGroupPickerViewController)initWithGroups:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNContactPropertyGroupPickerViewController;
  v3 = [(CNContactPropertyGroupPickerViewController *)&v8 initWithNibName:0 bundle:0];
  if (v3)
  {
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"ADD_MORE_PROPERTIES_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactPropertyGroupPickerViewController *)v3 setTitle:v5];

    v6 = [(CNContactPropertyGroupPickerViewController *)v3 navigationItem];
    [v6 setLargeTitleDisplayMode:2];
  }

  return v3;
}

+ (id)pickableGroupsWithPickedGroups:(id)a3 policy:(id)a4 prohibitedPropertyKeys:(id)a5 contact:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v29 = a4;
  v10 = a5;
  v11 = a6;
  v25 = [MEMORY[0x1E695DF70] array];
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
        v15 = [MEMORY[0x1E695DF70] array];
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
              if (([v10 containsObject:v21] & 1) == 0)
              {
                v22 = [v21 isEqualToString:v12];
                if ((!v11 || !v22 || [v11 contactType] != 1) && (objc_msgSend(v9, "containsObject:", v21) & 1) == 0 && objc_msgSend(v29, "maximumCountOfValuesForContactProperty:", v21))
                {
                  [v15 addObject:v21];
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v18);
        }

        if ([v15 count])
        {
          [v25 addObject:v15];
        }

        v13 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  return v25;
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

+ (BOOL)propertiesLeftToPickWithPickedGroups:(id)a3 policy:(id)a4 prohibitedPropertyKeys:(id)a5 contact:(id)a6
{
  v6 = [CNContactPropertyGroupPickerViewController pickableGroupsWithPickedGroups:a3 policy:a4 prohibitedPropertyKeys:a5 contact:a6];
  v7 = [v6 count] != 0;

  return v7;
}

@end