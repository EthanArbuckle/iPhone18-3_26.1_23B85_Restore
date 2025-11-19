@interface CNCountryPickerController
- (CNCountryPickerController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_configureSections;
- (void)_loadCountryCodes;
- (void)cancelPicker:(id)a3;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)windowDidRotate:(id)a3;
@end

@implementation CNCountryPickerController

- (void)_configureSections
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC40] currentCollation];
  [(CNCountryPickerController *)self setCollation:v3];

  v37 = self;
  v4 = [(CNCountryPickerController *)self collation];
  v5 = [v4 sectionTitles];
  v6 = [v5 count];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  if (v6)
  {
    v8 = v6;
    do
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v7 addObject:v9];

      --v8;
    }

    while (v8);
  }

  v10 = *MEMORY[0x1E6996568];
  v11 = self;
  v12 = [(CNCountryPickerController *)self selectedCountryCode];
  v38 = (*(v10 + 16))(v10, v12);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(CNCountryPickerController *)self countries];
  v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  v36 = v7;
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = [(CNCountryPickerController *)v11 collation];
        v20 = [v19 sectionForObject:v18 collationStringSelector:sel_phoneticCountryName];

        v21 = [v7 objectAtIndexedSubscript:v20];
        [v21 addObject:v18];
        if ((v38 & 1) == 0)
        {
          v22 = [(CNCountryPickerController *)v11 selectedCountryCode];
          v23 = [v18 countryCode];
          v24 = [v22 isEqualToString:v23];

          v25 = (v24 & 1) == 0;
          v7 = v36;
          v11 = v37;
          if (!v25)
          {
            v16 = v20;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v26 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v28 = [v36 objectAtIndexedSubscript:v26];
      v29 = [(CNCountryPickerController *)v11 collation];
      v30 = [v29 sortedArrayFromArray:v28 collationStringSelector:sel_phoneticCountryName];

      if (v30)
      {
        [v36 setObject:v30 atIndexedSubscript:v26];
      }

      v31 = v38;
      if (v16 != v26)
      {
        v31 = 1;
      }

      v11 = v37;
      if ((v31 & 1) == 0)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __47__CNCountryPickerController__configureSections__block_invoke;
        v39[3] = &unk_1E74E2A50;
        v39[4] = v37;
        v27 = [v30 _cn_indexOfFirstObjectPassingTest:v39];
      }

      ++v26;
    }

    while (v34 != v26);
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [MEMORY[0x1E696AC88] indexPathForRow:v27 inSection:v16];
  v33 = v32 = v11;
  [(CNCountryPickerController *)v32 setSelectedIndexPath:v33];

  [(CNCountryPickerController *)v32 setSections:v36];
}

uint64_t __47__CNCountryPickerController__configureSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedCountryCode];
  v5 = [v3 countryCode];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)_loadCountryCodes
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = CFLocaleCopyISOCountryCodes();
  if (v3)
  {
    v18 = self;
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFArray count](v3, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v3;
    obj = v3;
    v4 = [(__CFArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v23 = *v25;
      v21 = *MEMORY[0x1E69965A8];
      v20 = *MEMORY[0x1E69965B0];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [*(*(&v24 + 1) + 8 * i) lowercaseString];
          v8 = [MEMORY[0x1E69967B8] addressFormats];
          v9 = [v8 objectForKeyedSubscript:v7];

          if (v9)
          {
            v10 = [v9 objectForKey:v21];
            v11 = [MEMORY[0x1E69967B8] localizedStringForPostalAddressString:v10 returningNilIfNotFound:0];
            v12 = [v9 objectForKey:v20];
            v13 = [MEMORY[0x1E69967B8] localizedStringForPostalAddressString:v12 returningNilIfNotFound:0];
            v14 = objc_alloc_init(ABCountry);
            [(ABCountry *)v14 setCountryCode:v7];
            [(ABCountry *)v14 setCountryName:v11];
            if (v13)
            {
              v15 = v12 == v13;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              v16 = v11;
            }

            else
            {
              v16 = v13;
            }

            [(ABCountry *)v14 setPhoneticCountryName:v16];
            [v22 addObject:v14];
          }
        }

        v5 = [(__CFArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v5);
    }

    self = v18;
    [(CNCountryPickerController *)v18 setCountries:v22];

    v3 = v17;
  }

  [(CNCountryPickerController *)self _configureSections];
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

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v6 = [(CNCountryPickerController *)self collation:a3];
  v7 = [v6 sectionForSectionIndexTitleAtIndex:a5];

  return v7;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v3 = [(CNCountryPickerController *)self collation];
  v4 = [v3 sectionIndexTitles];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNCountryPickerController *)self sections];
  v14 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v9 = [v6 row];
  v10 = [v14 objectAtIndexedSubscript:v9];
  v11 = [(CNCountryPickerController *)self delegate];
  v12 = [v10 countryCode];
  [v11 countryPicker:self didPickCountryCode:v12];

  v13 = [v7 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v13 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ABCountryNameCell"];
  v8 = [(CNCountryPickerController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  v11 = [v7 textLabel];
  [v11 setAdjustsFontSizeToFitWidth:1];

  v12 = [v10 countryName];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  v14 = [(CNCountryPickerController *)self selectedIndexPath];
  v15 = [v6 compare:v14];

  if (v15)
  {
    v16 = [v7 imageView];
    [v16 setImage:0];
  }

  else
  {
    v16 = [v7 _checkmarkImage:0];
    v17 = [v7 imageView];
    [v17 setImage:v16];
  }

  [v7 separatorInset];
  [v7 setSeparatorInset:?];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(CNCountryPickerController *)self tableView:a3 numberOfRowsInSection:?]< 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(CNCountryPickerController *)self collation];
    v7 = [v6 sectionTitles];
    v8 = [v7 objectAtIndexedSubscript:a4];
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CNCountryPickerController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CNCountryPickerController *)self collation];
  v4 = [v3 sectionTitles];
  v5 = [v4 count];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v4 dealloc];
}

- (void)windowDidRotate:(id)a3
{
  v4 = [(CNCountryPickerController *)self selectedIndexPath];
  v5 = [v4 row];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(UITableViewController *)self->_tableViewController tableView];
    v6 = [(CNCountryPickerController *)self selectedIndexPath];
    [v7 scrollToRowAtIndexPath:v6 atScrollPosition:2 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v21.receiver = self;
  v21.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v21 viewWillAppear:?];
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
    v6 = [(CNCountryPickerController *)self tableViewController];
    v7 = [v6 navigationItem];
    [v7 setRightBarButtonItem:v5];
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v8 = +[CNUIColorRepository popoverBackgroundColor];
    v9 = [(UITableViewController *)self->_tableViewController tableView];
    [v9 setBackgroundColor:v8];

    v10 = [(UITableViewController *)self->_tableViewController tableView];
    v11 = [v10 backgroundColor];
    v12 = [(UITableViewController *)self->_tableViewController tableView];
    [v12 setSectionIndexBackgroundColor:v11];
  }

  v13 = [(CNCountryPickerController *)self viewControllers];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = [(CNCountryPickerController *)self tableViewController];
    [(CNCountryPickerController *)self pushViewController:v15 animated:0];

    v16 = [(CNCountryPickerController *)self selectedIndexPath];
    v17 = [v16 row];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(UITableViewController *)self->_tableViewController tableView];
      v19 = [(CNCountryPickerController *)self selectedIndexPath];
      [v18 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:v3];
    }

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:self selector:sel_windowDidRotate_ name:*MEMORY[0x1E69DE7D0] object:0];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v5 viewDidLoad];
  [(CNCountryPickerController *)self _loadCountryCodes];
  v3 = [(CNCountryPickerController *)self tableViewController];
  v4 = [v3 tableView];
  [v4 reloadData];
}

- (void)cancelPicker:(id)a3
{
  v4 = [(CNCountryPickerController *)self delegate];
  [v4 countryPickerDidCancel:self];
}

- (CNCountryPickerController)initWithNibName:(id)a3 bundle:(id)a4
{
  v23.receiver = self;
  v23.super_class = CNCountryPickerController;
  v4 = [(CNCountryPickerController *)&v23 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD038]) initWithNibName:0 bundle:0];
    tableViewController = v4->_tableViewController;
    v4->_tableViewController = v5;

    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"EDIT_COUNTRY_FORMAT" value:&stru_1F0CE7398 table:@"Localized"];
    [(UITableViewController *)v4->_tableViewController setTitle:v8];

    v9 = [(UITableViewController *)v4->_tableViewController tableView];
    [v9 setDelegate:v4];

    v10 = [(UITableViewController *)v4->_tableViewController tableView];
    [v10 setDataSource:v4];

    v11 = *MEMORY[0x1E69DE3D0];
    v12 = [(UITableViewController *)v4->_tableViewController tableView];
    [v12 setRowHeight:v11];

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v13 lineHeight];
    v15 = v14 * 1.5;
    v16 = [(UITableViewController *)v4->_tableViewController tableView];
    [v16 setEstimatedRowHeight:v15];

    v17 = [(UITableViewController *)v4->_tableViewController tableView];
    [v17 setSeparatorInsetReference:1];

    v18 = [(UITableViewController *)v4->_tableViewController tableView];
    [v18 reloadData];

    v19 = [(UITableViewController *)v4->_tableViewController tableView];
    [v19 registerClass:objc_opt_class() forCellReuseIdentifier:@"ABCountryNameCell"];

    v20 = [(CNCountryPickerController *)v4 navigationBar];
    [v20 _cnui_applyContactStyle];

    v21 = [(UITableViewController *)v4->_tableViewController tableView];
    [v21 _cnui_applyContactStyle];
  }

  return v4;
}

@end