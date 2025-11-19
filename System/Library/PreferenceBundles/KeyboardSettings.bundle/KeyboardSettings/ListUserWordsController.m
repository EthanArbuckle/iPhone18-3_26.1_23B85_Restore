@interface ListUserWordsController
- (BOOL)_shouldHideIndex;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_mainContentView;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_hideSearchBar;
- (void)_showSearchBar;
- (void)addUserWord;
- (void)dealloc;
- (void)emitNavigationEventForListUserWordsController;
- (void)inlineUserDictionaryDoneEditing;
- (void)loadView;
- (void)reloadSections;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)userWordDidUpdate:(id)a3;
- (void)viewDidLoad;
- (void)willPresentSearchController:(id)a3;
@end

@implementation ListUserWordsController

- (id)_mainContentView
{
  result = self->_contentView;
  if (!result)
  {
    [+[UIScreen mainScreen](UIScreen bounds];
    v5 = v4;
    v7 = v6;
    v8 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v6}];
    self->_contentView = v8;
    [(UIView *)v8 setAutoresizingMask:18];
    v9 = [[UITableView alloc] initWithFrame:0 style:{0.0, 0.0, v5, v7}];
    [(UITableView *)v9 setAutoresizingMask:18];
    [(UITableView *)v9 setCountStringInsignificantRowCount:9];
    [(UITableView *)v9 setDataSource:self];
    [(UITableView *)v9 setDelegate:self];
    [(UITableView *)v9 setEstimatedSectionHeaderHeight:0.0];
    [(UITableView *)v9 setEstimatedSectionFooterHeight:0.0];
    self->_tableView = v9;
    [(UITableView *)v9 setTag:1];
    [(UITableView *)v9 setIndexHidden:0 animated:0];
    [(UIView *)self->_contentView addSubview:v9];
    [(UITableView *)v9 setContentInset:0.0, 0.0, 44.0, 0.0];
    self->_searchResultsController = [[SearchUserWordsController alloc] initWithListController:self];
    v10 = [[UINavigationController alloc] initWithRootViewController:self->_searchResultsController];
    [v10 setNavigationBarHidden:1 animated:0];
    [v10 setDelegate:self];
    v11 = [[UISearchController alloc] initWithSearchResultsController:v10];
    self->_searchController = v11;
    [(UISearchController *)v11 setSearchResultsUpdater:self->_searchResultsController];
    [(UISearchController *)self->_searchController setDelegate:self];
    [(ListUserWordsController *)self setDefinesPresentationContext:1];

    if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
    {
      [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
      [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
    }

    v12 = [(UISearchController *)self->_searchController searchBar];
    [(UISearchBar *)v12 setPlaceholder:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SEARCH_LOCAL_PLACEHOLDER", &stru_49C80, @"Keyboard"]];
    [(UISearchBar *)v12 setAutoresizingMask:2];
    [(UISearchBar *)v12 setAutocorrectionType:1];
    [(UISearchBar *)v12 setDelegate:self];
    [-[ListUserWordsController navigationItem](self "navigationItem")];
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addUserWord"];
    v14[0] = v13;
    v14[1] = [(ListUserWordsController *)self editButtonItem];
    [-[ListUserWordsController navigationItem](self "navigationItem")];

    return self->_contentView;
  }

  return result;
}

- (void)loadView
{
  v3 = [(ListUserWordsController *)self _mainContentView];
  self->_contentView = v3;

  [(ListUserWordsController *)self setView:v3];
}

- (void)reloadSections
{
  v3 = +[UILocalizedIndexedCollation currentCollation];
  v4 = [(NSArray *)[(UILocalizedIndexedCollation *)v3 sectionTitles] count];
  v5 = [[NSMutableArray alloc] initWithCapacity:v4];
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = objc_alloc_init(NSMutableArray);
      [v5 addObject:v7];

      --v6;
    }

    while (v6);
  }

  v8 = [(TIUserWordsManager *)[(ListUserWordsController *)self dictionaryController] entries];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [objc_msgSend(v5 objectAtIndex:{-[UILocalizedIndexedCollation sectionForObject:collationStringSelector:](v3, "sectionForObject:collationStringSelector:", *(*(&v17 + 1) + 8 * i), "shortcutForSorting")), "addObject:", *(*(&v17 + 1) + 8 * i)}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      [v5 replaceObjectAtIndex:j withObject:{-[UILocalizedIndexedCollation sortedArrayFromArray:collationStringSelector:](v3, "sortedArrayFromArray:collationStringSelector:", objc_msgSend(v5, "objectAtIndex:", j), "shortcutForSorting")}];
    }
  }

  [(ListUserWordsController *)self setCollation:v3];
  [(ListUserWordsController *)self setSections:v5];
  [(UITableView *)[(ListUserWordsController *)self tableView] reloadData];
  if ([(ListUserWordsController *)self currentShortcut]&& [(NSArray *)[(ListUserWordsController *)self sections] count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [(NSArray *)[(ListUserWordsController *)self sections] objectAtIndexedSubscript:v14];
      if ([v15 count])
      {
        break;
      }

LABEL_21:
      if (++v14 >= [(NSArray *)[(ListUserWordsController *)self sections] count])
      {
        goto LABEL_22;
      }
    }

    v16 = 0;
    while (([objc_msgSend(objc_msgSend(v15 objectAtIndexedSubscript:{v16), "shortcut"), "isEqualToString:", -[ListUserWordsController currentShortcut](self, "currentShortcut")}] & 1) == 0)
    {
      if (++v16 >= [v15 count])
      {
        goto LABEL_21;
      }
    }

    [(UITableView *)[(ListUserWordsController *)self tableView] scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:v14 inSection:?], 1, 1];
  }

  else
  {
LABEL_22:
    if (self->_restoreEditing)
    {
      self->_restoreEditing = 0;
      [(ListUserWordsController *)self setEditing:1 animated:0];
    }
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ListUserWordsController;
  [(ListUserWordsController *)&v6 viewDidLoad];
  [(ListUserWordsController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SHORTCUTS", &stru_49C80, @"Keyboard"]];
  [(ListUserWordsController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [-[ListUserWordsController parentController](self "parentController")];
  }

  else
  {
    v3 = objc_alloc_init(TIUserWordsManager);
  }

  [(ListUserWordsController *)self setDictionaryController:v3];
  [(SearchUserWordsController *)self->_searchResultsController setDictionaryController:[(ListUserWordsController *)self dictionaryController]];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = sub_2E30;
  v5[4] = sub_2E40;
  v5[5] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2E4C;
  v4[3] = &unk_48E88;
  v4[4] = v5;
  self->_observerToken = [(TIUserWordsManager *)[(ListUserWordsController *)self dictionaryController] addObserver:v4];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"userWordDidUpdate:" object:@"EditUserWordShortcutDidUpdateNotification", 0];
  if ([(ListUserWordsController *)self savedSearchTerm])
  {
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setText:self->savedSearchTerm];
    [(UISearchController *)self->_searchController setActive:[(ListUserWordsController *)self searchIsActive]];
    [(ListUserWordsController *)self setSavedSearchTerm:0];
  }

  [(TIUserWordsManager *)[(ListUserWordsController *)self dictionaryController] requestSync];
  _Block_object_dispose(v5, 8);
}

- (void)dealloc
{
  [(TIUserWordsManager *)[(ListUserWordsController *)self dictionaryController] removeObserver:self->_observerToken];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];

  self->_searchController = 0;
  self->currentShortcut = 0;

  self->_dictionaryController = 0;
  self->_contentView = 0;
  v3.receiver = self;
  v3.super_class = ListUserWordsController;
  [(ListUserWordsController *)&v3 dealloc];
}

- (BOOL)_shouldHideIndex
{
  v3 = [+[UIDevice currentDevice](UIDevice userInterfaceIdiom];
  v4 = [(ListUserWordsController *)self numberOfSectionsInTableView:[(ListUserWordsController *)self tableView]];
  v5 = 15;
  if (v3 == UIUserInterfaceIdiomPad)
  {
    v5 = 20;
  }

  return v4 < v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    if ([(ListUserWordsController *)self isEditing])
    {
      v8 = !self->_manualEditing;
    }

    else
    {
      v8 = 0;
    }

    self->_restoreEditing = v8;
    [a3 deselectRowAtIndexPath:a5 animated:1];
    v9 = [-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")];
    [(TIUserWordsManager *)[(ListUserWordsController *)self dictionaryController] addEntries:0 removeEntries:[NSArray withCompletionHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_48EC8];
    self->_manualEditing = 0;
    if (!v8)
    {
      [(ListUserWordsController *)self setEditing:0 animated:1];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [a3 deselectRowAtIndexPath:a4 animated:1];
  v6 = -[EditUserWordController initWithUserWord:]([EditUserWordController alloc], "initWithUserWord:", [-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")]);
  [(EditUserWordController *)v6 setDictionaryController:[(ListUserWordsController *)self dictionaryController]];
  [(ListUserWordsController *)self showController:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(ListUserWordsController *)self sections];

  return [(NSArray *)v3 count];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)[(ListUserWordsController *)self sections] objectAtIndex:a4];

  return [v4 count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"kCellIdentifier"];
  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"kCellIdentifier"];
    [v6 setAccessoryType:0];
  }

  v7 = [-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")];
  [objc_msgSend(v6 "detailTextLabel")];
  [objc_msgSend(v6 "textLabel")];
  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  result = [-[NSArray objectAtIndex:](-[ListUserWordsController sections](self sections];
  if (result)
  {
    v7 = [(UILocalizedIndexedCollation *)[(ListUserWordsController *)self collation] sectionTitles];

    return [(NSArray *)v7 objectAtIndex:a4];
  }

  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (-[ListUserWordsController _shouldHideIndex](self, "_shouldHideIndex") || ![-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")])
  {
    return 0.0;
  }

  [a3 sectionHeaderHeight];
  return result;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if ([(ListUserWordsController *)self _shouldHideIndex])
  {
    return 0;
  }

  v5 = [(ListUserWordsController *)self collation];

  return [(UILocalizedIndexedCollation *)v5 sectionIndexTitles];
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  if ([(ListUserWordsController *)self _shouldHideIndex:a3])
  {
    return 0;
  }

  v8 = [(UILocalizedIndexedCollation *)[(ListUserWordsController *)self collation] sectionForSectionIndexTitleAtIndex:a5];
  v9 = [(NSArray *)[(ListUserWordsController *)self sections] count];
  if (v8 < 0)
  {
LABEL_8:
    v11 = v8 + 1;
    do
    {
      v7 = v11;
      if (v11 >= v9)
      {
        break;
      }

      v12 = [-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")];
      v11 = v7 + 1;
    }

    while (!v12);
  }

  else
  {
    v7 = v8;
    while (![-[NSArray objectAtIndex:](-[ListUserWordsController sections](self "sections")])
    {
      if (v7-- <= 0)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 < v9)
  {
    return v7;
  }

  v14 = [(ListUserWordsController *)self collation];

  return [(UILocalizedIndexedCollation *)v14 sectionForSectionIndexTitleAtIndex:a5];
}

- (void)userWordDidUpdate:(id)a3
{
  v4 = [objc_msgSend(a3 "userInfo")];

  [(ListUserWordsController *)self setCurrentShortcut:v4];
}

- (void)addUserWord
{
  v3 = objc_alloc_init(EditUserWordController);
  [(EditUserWordController *)v3 setDictionaryController:[(ListUserWordsController *)self dictionaryController]];
  [(ListUserWordsController *)self showController:v3];
}

- (void)inlineUserDictionaryDoneEditing
{
  v2 = [(ListUserWordsController *)self navigationController];

  [v2 popViewControllerAnimated:1];
}

- (void)willPresentSearchController:(id)a3
{
  [(ListUserWordsController *)self setSearchNavControllerChanges:0];

  [(ListUserWordsController *)self setSearchIsActive:1];
}

- (void)_hideSearchBar
{
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] frame];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setFrame:v5.origin.x - CGRectGetWidth(v5), v5.origin.y, v5.size.width, v5.size.height];
  v3 = [(UISearchController *)self->_searchController searchBar];

  [(UISearchBar *)v3 resignFirstResponder];
}

- (void)_showSearchBar
{
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] frame];
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3C4C;
  v6[3] = &unk_48F18;
  v6[4] = self;
  *&v6[5] = -CGRectGetWidth(v7);
  *&v6[6] = y;
  *&v6[7] = width;
  *&v6[8] = height;
  [UIView performWithoutAnimation:v6];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] setFrame:0.0, y, width, height];
  [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] becomeFirstResponder];
}

- (void)emitNavigationEventForListUserWordsController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/USER_DICTIONARY"];
  v4 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  -[ListUserWordsController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [[_NSLocalizedStringResource alloc] initWithKey:@"SHORTCUTS" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}], +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 2), v3);
}

@end