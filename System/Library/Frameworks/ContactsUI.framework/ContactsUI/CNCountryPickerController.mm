@interface CNCountryPickerController
- (CNCountryPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_configureSections;
- (void)_loadCountryCodes;
- (void)cancelPicker:(id)picker;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)windowDidRotate:(id)rotate;
@end

@implementation CNCountryPickerController

- (void)_configureSections
{
  v45 = *MEMORY[0x1E69E9840];
  currentCollation = [MEMORY[0x1E69DCC40] currentCollation];
  [(CNCountryPickerController *)self setCollation:currentCollation];

  selfCopy = self;
  collation = [(CNCountryPickerController *)self collation];
  sectionTitles = [collation sectionTitles];
  v6 = [sectionTitles count];

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
  selfCopy2 = self;
  selectedCountryCode = [(CNCountryPickerController *)self selectedCountryCode];
  v38 = (*(v10 + 16))(v10, selectedCountryCode);

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
        collation2 = [(CNCountryPickerController *)selfCopy2 collation];
        v20 = [collation2 sectionForObject:v18 collationStringSelector:sel_phoneticCountryName];

        v21 = [v7 objectAtIndexedSubscript:v20];
        [v21 addObject:v18];
        if ((v38 & 1) == 0)
        {
          selectedCountryCode2 = [(CNCountryPickerController *)selfCopy2 selectedCountryCode];
          countryCode = [v18 countryCode];
          v24 = [selectedCountryCode2 isEqualToString:countryCode];

          v25 = (v24 & 1) == 0;
          v7 = v36;
          selfCopy2 = selfCopy;
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
      collation3 = [(CNCountryPickerController *)selfCopy2 collation];
      v30 = [collation3 sortedArrayFromArray:v28 collationStringSelector:sel_phoneticCountryName];

      if (v30)
      {
        [v36 setObject:v30 atIndexedSubscript:v26];
      }

      v31 = v38;
      if (v16 != v26)
      {
        v31 = 1;
      }

      selfCopy2 = selfCopy;
      if ((v31 & 1) == 0)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __47__CNCountryPickerController__configureSections__block_invoke;
        v39[3] = &unk_1E74E2A50;
        v39[4] = selfCopy;
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
  v33 = v32 = selfCopy2;
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
    selfCopy = self;
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

          lowercaseString = [*(*(&v24 + 1) + 8 * i) lowercaseString];
          addressFormats = [MEMORY[0x1E69967B8] addressFormats];
          v9 = [addressFormats objectForKeyedSubscript:lowercaseString];

          if (v9)
          {
            v10 = [v9 objectForKey:v21];
            v11 = [MEMORY[0x1E69967B8] localizedStringForPostalAddressString:v10 returningNilIfNotFound:0];
            v12 = [v9 objectForKey:v20];
            v13 = [MEMORY[0x1E69967B8] localizedStringForPostalAddressString:v12 returningNilIfNotFound:0];
            v14 = objc_alloc_init(ABCountry);
            [(ABCountry *)v14 setCountryCode:lowercaseString];
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

    self = selfCopy;
    [(CNCountryPickerController *)selfCopy setCountries:v22];

    v3 = v17;
  }

  [(CNCountryPickerController *)self _configureSections];
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

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v6 = [(CNCountryPickerController *)self collation:view];
  v7 = [v6 sectionForSectionIndexTitleAtIndex:index];

  return v7;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  collation = [(CNCountryPickerController *)self collation];
  sectionIndexTitles = [collation sectionIndexTitles];

  return sectionIndexTitles;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(CNCountryPickerController *)self sections];
  v14 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v9 = [pathCopy row];
  v10 = [v14 objectAtIndexedSubscript:v9];
  delegate = [(CNCountryPickerController *)self delegate];
  countryCode = [v10 countryCode];
  [delegate countryPicker:self didPickCountryCode:countryCode];

  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ABCountryNameCell"];
  sections = [(CNCountryPickerController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  textLabel = [v7 textLabel];
  [textLabel setAdjustsFontSizeToFitWidth:1];

  countryName = [v10 countryName];
  textLabel2 = [v7 textLabel];
  [textLabel2 setText:countryName];

  selectedIndexPath = [(CNCountryPickerController *)self selectedIndexPath];
  v15 = [pathCopy compare:selectedIndexPath];

  if (v15)
  {
    imageView = [v7 imageView];
    [imageView setImage:0];
  }

  else
  {
    imageView = [v7 _checkmarkImage:0];
    imageView2 = [v7 imageView];
    [imageView2 setImage:imageView];
  }

  [v7 separatorInset];
  [v7 setSeparatorInset:?];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(CNCountryPickerController *)self tableView:view numberOfRowsInSection:?]< 1)
  {
    v8 = 0;
  }

  else
  {
    collation = [(CNCountryPickerController *)self collation];
    sectionTitles = [collation sectionTitles];
    v8 = [sectionTitles objectAtIndexedSubscript:section];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(CNCountryPickerController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  v7 = [v6 count];
  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  collation = [(CNCountryPickerController *)self collation];
  sectionTitles = [collation sectionTitles];
  v5 = [sectionTitles count];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v4 dealloc];
}

- (void)windowDidRotate:(id)rotate
{
  selectedIndexPath = [(CNCountryPickerController *)self selectedIndexPath];
  v5 = [selectedIndexPath row];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(UITableViewController *)self->_tableViewController tableView];
    selectedIndexPath2 = [(CNCountryPickerController *)self selectedIndexPath];
    [tableView scrollToRowAtIndexPath:selectedIndexPath2 atScrollPosition:2 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v21.receiver = self;
  v21.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v21 viewWillAppear:?];
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
    tableViewController = [(CNCountryPickerController *)self tableViewController];
    navigationItem = [tableViewController navigationItem];
    [navigationItem setRightBarButtonItem:v5];
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v8 = +[CNUIColorRepository popoverBackgroundColor];
    tableView = [(UITableViewController *)self->_tableViewController tableView];
    [tableView setBackgroundColor:v8];

    tableView2 = [(UITableViewController *)self->_tableViewController tableView];
    backgroundColor = [tableView2 backgroundColor];
    tableView3 = [(UITableViewController *)self->_tableViewController tableView];
    [tableView3 setSectionIndexBackgroundColor:backgroundColor];
  }

  viewControllers = [(CNCountryPickerController *)self viewControllers];
  v14 = [viewControllers count];

  if (!v14)
  {
    tableViewController2 = [(CNCountryPickerController *)self tableViewController];
    [(CNCountryPickerController *)self pushViewController:tableViewController2 animated:0];

    selectedIndexPath = [(CNCountryPickerController *)self selectedIndexPath];
    v17 = [selectedIndexPath row];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      tableView4 = [(UITableViewController *)self->_tableViewController tableView];
      selectedIndexPath2 = [(CNCountryPickerController *)self selectedIndexPath];
      [tableView4 scrollToRowAtIndexPath:selectedIndexPath2 atScrollPosition:2 animated:appearCopy];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_windowDidRotate_ name:*MEMORY[0x1E69DE7D0] object:0];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNCountryPickerController;
  [(CNCountryPickerController *)&v5 viewDidLoad];
  [(CNCountryPickerController *)self _loadCountryCodes];
  tableViewController = [(CNCountryPickerController *)self tableViewController];
  tableView = [tableViewController tableView];
  [tableView reloadData];
}

- (void)cancelPicker:(id)picker
{
  delegate = [(CNCountryPickerController *)self delegate];
  [delegate countryPickerDidCancel:self];
}

- (CNCountryPickerController)initWithNibName:(id)name bundle:(id)bundle
{
  v23.receiver = self;
  v23.super_class = CNCountryPickerController;
  v4 = [(CNCountryPickerController *)&v23 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD038]) initWithNibName:0 bundle:0];
    tableViewController = v4->_tableViewController;
    v4->_tableViewController = v5;

    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"EDIT_COUNTRY_FORMAT" value:&stru_1F0CE7398 table:@"Localized"];
    [(UITableViewController *)v4->_tableViewController setTitle:v8];

    tableView = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView setDelegate:v4];

    tableView2 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView2 setDataSource:v4];

    v11 = *MEMORY[0x1E69DE3D0];
    tableView3 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView3 setRowHeight:v11];

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v13 lineHeight];
    v15 = v14 * 1.5;
    tableView4 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView4 setEstimatedRowHeight:v15];

    tableView5 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView5 setSeparatorInsetReference:1];

    tableView6 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView6 reloadData];

    tableView7 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"ABCountryNameCell"];

    navigationBar = [(CNCountryPickerController *)v4 navigationBar];
    [navigationBar _cnui_applyContactStyle];

    tableView8 = [(UITableViewController *)v4->_tableViewController tableView];
    [tableView8 _cnui_applyContactStyle];
  }

  return v4;
}

@end