@interface ClarityUIAppSelectionTableViewDataSource
- (BOOL)_isClarityUIApplicationIdentifier:(id)identifier;
- (BOOL)_isHiddenByUserWithIdentifier:(id)identifier;
- (BOOL)_isSelectedApplicationIdentifier:(id)identifier;
- (BOOL)_requiresPreflightForApplicationWithIdentifier:(id)identifier;
- (ClarityUIAppSelectionTableViewDataSource)init;
- (ClarityUIAppSelectionTableViewDataSourceDelegate)dataSourceDelegate;
- (double)_calculateHeightForString:(id)string withFontStyle:(id)style;
- (double)_calculateWidthForString:(id)string withFontStyle:(id)style;
- (id)_applicationIdentifierForIndexPath:(id)path;
- (id)_applicationIdentifiersForSection:(int64_t)section;
- (id)_applicationRecordForIdentifier:(id)identifier;
- (id)_comparatorForApplicationIdentifiers;
- (id)_indexPathForApplicationIdentifier:(id)identifier;
- (id)_sortedApplicationIdentifiers:(id)identifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_indexForInsertingApplicationIdentifier:(id)identifier intoArray:(id)array;
- (void)_deselectIdentifierAtIndexPath:(id)path;
- (void)_didUpdateSelectedApplicationIdentifiers;
- (void)_moveIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)_reloadApplications;
- (void)_selectIdentifierAtIndexPath:(id)path;
- (void)commitChangeForApplicationIdentifier:(id)identifier;
- (void)commitChangesToSelectedApplications;
- (void)dealloc;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation ClarityUIAppSelectionTableViewDataSource

- (ClarityUIAppSelectionTableViewDataSource)init
{
  v21.receiver = self;
  v21.super_class = ClarityUIAppSelectionTableViewDataSource;
  v2 = [(ClarityUIAppSelectionTableViewDataSource *)&v21 init];
  if (v2)
  {
    v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v3 setDelegate:v2];
    [v3 setDataSource:v2];
    [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ClarityUIAppSelectionCell"];
    [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"ClarityUIAppSelectionHeader"];
    [v3 setEditing:1];
    objc_storeStrong(&v2->_tableView, v3);
    v4 = ClarityUIAllInstalledAppIdentifiers();
    IsPad = AXDeviceIsPad();
    v6 = [v4 mutableCopy];
    v7 = v6;
    v8 = &AX_MobilePhoneBundleName;
    if (!IsPad)
    {
      v8 = &AX_FaceTimeBundleName;
    }

    [v6 removeObject:*v8];
    v9 = [v7 copy];
    allApplicationIdentifiers = v2->_allApplicationIdentifiers;
    v2->_allApplicationIdentifiers = v9;

    [(ClarityUIAppSelectionTableViewDataSource *)v2 _reloadApplications];
    v11 = +[UIColor systemBackgroundColor];
    [v3 setBackgroundColor:v11];

    objc_initWeak(&location, v2);
    v12 = +[CLFAppAvailabilityChecker sharedInstance];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = __48__ClarityUIAppSelectionTableViewDataSource_init__block_invoke;
    v18 = &unk_255388;
    objc_copyWeak(&v19, &location);
    v13 = [v12 observeUpdatesWithHandler:&v15];
    [(ClarityUIAppSelectionTableViewDataSource *)v2 setAppAvailabilityObserver:v13, v15, v16, v17, v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __48__ClarityUIAppSelectionTableViewDataSource_init__block_invoke(uint64_t a1)
{
  v2 = CLFLogSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Reloading app lists because app availability changed.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadApplications];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 tableView];
  [v5 reloadData];
}

- (void)dealloc
{
  appAvailabilityObserver = [(ClarityUIAppSelectionTableViewDataSource *)self appAvailabilityObserver];
  [appAvailabilityObserver invalidate];

  v4.receiver = self;
  v4.super_class = ClarityUIAppSelectionTableViewDataSource;
  [(ClarityUIAppSelectionTableViewDataSource *)&v4 dealloc];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  section = [path section];
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DA7A8[section];
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy section] || objc_msgSend(indexPathCopy, "section") < 1)
  {
    v9 = indexPathCopy;
    if (![pathCopy section])
    {
      goto LABEL_7;
    }

    v9 = pathCopy;
    v10 = indexPathCopy;
  }

  else
  {
    v10 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifiersForSection:0];
    v11 = [v10 count];
    v9 = [NSIndexPath indexPathForRow:(v11 - 1) & ~((v11 - 1) >> 63) inSection:0];
  }

LABEL_7:

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifiersForSection:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ClarityUIAppSelectionCell" forIndexPath:pathCopy];
  v8 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifierForIndexPath:pathCopy];

  v9 = [(ClarityUIAppSelectionTableViewDataSource *)self _displayNameForApplicationIdentifier:v8];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v12 = [UIImage _applicationIconImageForBundleIdentifier:v8 format:0 scale:?];

  imageView = [v7 imageView];
  [imageView setImage:v12];

  v14 = +[UIColor secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v14];

  [v7 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"ClarityUIAppSelectionHeader"];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [textProperties setFont:v10];

  v11 = +[UIColor labelColor];
  [textProperties setColor:v11];

  [textProperties setAdjustsFontForContentSizeCategory:1];
  [textProperties setNumberOfLines:0];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [secondaryTextProperties setFont:v13];

  v14 = +[UIColor systemGrayColor];
  [secondaryTextProperties setColor:v14];

  [secondaryTextProperties setAdjustsFontForContentSizeCategory:1];
  [secondaryTextProperties setNumberOfLines:0];
  [defaultContentConfiguration setPrefersSideBySideTextAndSecondaryText:0];
  [defaultContentConfiguration setDirectionalLayoutMargins:{0.0, 0.0, 10.0, 0.0}];
  [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:0];
  v15 = [viewCopy numberOfRowsInSection:section];

  if (section == 2)
  {
    if (!v15)
    {
      goto LABEL_12;
    }

    v19 = settingsLocString(@"STANDARD_APPS", @"ClarityUISettings");
    [defaultContentConfiguration setText:v19];

    v18 = @"STANDARD_APPS_DETAIL";
    goto LABEL_10;
  }

  if (section == 1)
  {
    if (!v15)
    {
      goto LABEL_12;
    }

    v17 = settingsLocString(@"CLARITY_UI_APPS", @"ClarityUISettings");
    [defaultContentConfiguration setText:v17];

    v18 = @"CLARITY_UI_APPS_DETAIL";
LABEL_10:
    v16 = settingsLocString(v18, @"ClarityUISettings");
    [defaultContentConfiguration setSecondaryText:v16];
    goto LABEL_11;
  }

  if (section)
  {
LABEL_12:
    [defaultContentConfiguration setText:0];
    [defaultContentConfiguration setSecondaryText:0];
    goto LABEL_13;
  }

  [defaultContentConfiguration setSecondaryText:0];
  if ([(NSMutableArray *)self->_selectedApplicationIdentifiers count])
  {
    v16 = settingsLocString(@"SELECTED_APPS", @"ClarityUISettings");
    [defaultContentConfiguration setText:v16];
LABEL_11:

    goto LABEL_13;
  }

  [defaultContentConfiguration setText:0];
LABEL_13:
  [v7 setContentConfiguration:defaultContentConfiguration];

  return v7;
}

- (double)_calculateWidthForString:(id)string withFontStyle:(id)style
{
  stringCopy = string;
  v6 = [UIFont preferredFontForTextStyle:style];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v6, NSFontAttributeName, 0];

  v8 = [[NSAttributedString alloc] initWithString:stringCopy attributes:v7];
  [v8 size];
  v10 = v9;

  return v10;
}

- (double)_calculateHeightForString:(id)string withFontStyle:(id)style
{
  stringCopy = string;
  v6 = [UIFont preferredFontForTextStyle:style];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v6, NSFontAttributeName, 0];

  v8 = [[NSAttributedString alloc] initWithString:stringCopy attributes:v7];
  [v8 size];
  v10 = v9;

  return v10;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v13 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifierForIndexPath:pathCopy];
  section = [pathCopy section];

  v10 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifiersForSection:section];
  v11 = -[ClarityUIAppSelectionTableViewDataSource _applicationIdentifiersForSection:](self, "_applicationIdentifiersForSection:", [indexPathCopy section]);
  [v10 removeObject:v13];
  v12 = [indexPathCopy row];

  [v11 insertObject:v13 atIndex:v12];
  [(ClarityUIAppSelectionTableViewDataSource *)self _didUpdateSelectedApplicationIdentifiers];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy)
  {
    if (style == 1)
    {
      [(ClarityUIAppSelectionTableViewDataSource *)self _deselectIdentifierAtIndexPath:pathCopy];
    }

    else if (style == 2)
    {
      [(ClarityUIAppSelectionTableViewDataSource *)self _selectIdentifierAtIndexPath:pathCopy];
    }
  }
}

- (void)_reloadApplications
{
  v3 = +[CLFSettings sharedInstance];
  applicationBundleIdentifiers = [v3 applicationBundleIdentifiers];

  v5 = +[NSMutableArray array];
  selectedApplicationIdentifiers = self->_selectedApplicationIdentifiers;
  self->_selectedApplicationIdentifiers = v5;

  v52 = +[NSMutableArray array];
  v50 = +[NSMutableArray array];
  v70[0] = AX_CameraBundleName;
  v70[1] = AX_PhotosBundleName;
  v70[2] = AX_PreferencesBundleName;
  v70[3] = AX_ShortcutsBundleName;
  v70[4] = AX_AppStoreBundleName;
  v70[5] = AX_TipsBundleName;
  v51 = [NSArray arrayWithObjects:v70 count:6];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  allApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self allApplicationIdentifiers];
  v8 = [allApplicationIdentifiers countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(allApplicationIdentifiers);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        if ([(ClarityUIAppSelectionTableViewDataSource *)self _isHiddenByUserWithIdentifier:v12])
        {
          v13 = CLFLogSettings();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v12;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Removing application from list of selectable apps because it was hidden: %@", buf, 0xCu);
          }
        }

        else
        {
          if ([(ClarityUIAppSelectionTableViewDataSource *)self _isClarityUIApplicationIdentifier:v12])
          {
            v14 = v52;
          }

          else
          {
            if ([v51 containsObject:v12])
            {
              continue;
            }

            v14 = v50;
          }

          [v14 addObject:v12];
        }
      }

      v9 = [allApplicationIdentifiers countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v9);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v15 = applicationBundleIdentifiers;
  v16 = [v15 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (!v16)
  {
    goto LABEL_45;
  }

  v17 = v16;
  v18 = *v58;
  v19 = AX_MobilePhoneBundleName;
  v20 = AX_FaceTimeBundleName;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v58 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v57 + 1) + 8 * j);
      allApplicationIdentifiers2 = [(ClarityUIAppSelectionTableViewDataSource *)self allApplicationIdentifiers];
      v24 = [allApplicationIdentifiers2 containsObject:v22];

      if (v24)
      {
        if ([(ClarityUIAppSelectionTableViewDataSource *)self _requiresPreflightForApplicationWithIdentifier:v22])
        {
          v25 = CLFLogSettings();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v22;
            v26 = v25;
            v27 = "Removing application from selected apps because it requires preflight: %@";
LABEL_39:
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
            goto LABEL_40;
          }

          goto LABEL_40;
        }

        if ([(ClarityUIAppSelectionTableViewDataSource *)self _isHiddenByUserWithIdentifier:v22])
        {
          v25 = CLFLogSettings();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v22;
            v26 = v25;
            v27 = "Removing application from selected apps because it was hidden: %@";
            goto LABEL_39;
          }

LABEL_40:

          continue;
        }

        v31 = self->_selectedApplicationIdentifiers;
        v32 = v22;
        goto LABEL_42;
      }

      if ([v22 isEqualToString:v19])
      {
        allApplicationIdentifiers3 = [(ClarityUIAppSelectionTableViewDataSource *)self allApplicationIdentifiers];
        v29 = [allApplicationIdentifiers3 containsObject:v20];

        if (v29)
        {
          v30 = CLFLogSettings();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Replacing MobilePhone with FaceTime due to installed apps changing.", buf, 2u);
          }

          v31 = self->_selectedApplicationIdentifiers;
          v32 = v20;
LABEL_42:
          [(NSMutableArray *)v31 addObject:v32];
          continue;
        }
      }

      if ([v22 isEqualToString:v20])
      {
        allApplicationIdentifiers4 = [(ClarityUIAppSelectionTableViewDataSource *)self allApplicationIdentifiers];
        v34 = [allApplicationIdentifiers4 containsObject:v19];

        if (v34)
        {
          v35 = CLFLogSettings();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Replacing FaceTime with MobilePhone due to installed apps changing.", buf, 2u);
          }

          v31 = self->_selectedApplicationIdentifiers;
          v32 = v19;
          goto LABEL_42;
        }
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v57 objects:v66 count:16];
  }

  while (v17);
LABEL_45:

  v36 = self->_selectedApplicationIdentifiers;
  v37 = +[CLFSettings sharedInstance];
  [v37 setApplicationBundleIdentifiers:v36];

  v38 = [(ClarityUIAppSelectionTableViewDataSource *)self _sortedApplicationIdentifiers:v52];
  v39 = [v38 mutableCopy];
  unselectedClarityUIApplicationIdentifiers = self->_unselectedClarityUIApplicationIdentifiers;
  self->_unselectedClarityUIApplicationIdentifiers = v39;

  v41 = [(ClarityUIAppSelectionTableViewDataSource *)self _sortedApplicationIdentifiers:v50];
  v42 = [v41 mutableCopy];
  unselectedStandardApplicationIdentifiers = self->_unselectedStandardApplicationIdentifiers;
  self->_unselectedStandardApplicationIdentifiers = v42;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  v45 = [selectedApplicationIdentifiers countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v54;
    do
    {
      for (k = 0; k != v46; k = k + 1)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(selectedApplicationIdentifiers);
        }

        v49 = *(*(&v53 + 1) + 8 * k);
        [(NSMutableArray *)self->_unselectedClarityUIApplicationIdentifiers removeObject:v49];
        [(NSMutableArray *)self->_unselectedStandardApplicationIdentifiers removeObject:v49];
      }

      v46 = [selectedApplicationIdentifiers countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v46);
  }
}

- (void)_selectIdentifierAtIndexPath:(id)path
{
  v9 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifierForIndexPath:path];
  dataSourceDelegate = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
  if (dataSourceDelegate)
  {
    v5 = dataSourceDelegate;
    dataSourceDelegate2 = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      dataSourceDelegate3 = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
      [dataSourceDelegate3 dataSource:self didSelectBundleIdentifier:v9];
    }
  }
}

- (void)commitChangeForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = [(ClarityUIAppSelectionTableViewDataSource *)self _indexPathForApplicationIdentifier:identifierCopy];
  v5 = -[ClarityUIAppSelectionTableViewDataSource _applicationIdentifiersForSection:](self, "_applicationIdentifiersForSection:", [v10 section]);
  [v5 removeObject:identifierCopy];

  selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  v7 = [selectedApplicationIdentifiers count];

  selectedApplicationIdentifiers2 = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  [selectedApplicationIdentifiers2 addObject:identifierCopy];

  v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
  [(ClarityUIAppSelectionTableViewDataSource *)self _moveIndexPath:v10 toIndexPath:v9];

  [(ClarityUIAppSelectionTableViewDataSource *)self _didUpdateSelectedApplicationIdentifiers];
}

- (void)_deselectIdentifierAtIndexPath:(id)path
{
  pathCopy = path;
  v10 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifierForIndexPath:pathCopy];
  if ([(ClarityUIAppSelectionTableViewDataSource *)self _isClarityUIApplicationIdentifier:v10])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationIdentifiersForSection:v5];
  v7 = [(ClarityUIAppSelectionTableViewDataSource *)self _indexForInsertingApplicationIdentifier:v10 intoArray:v6];
  selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  [selectedApplicationIdentifiers removeObject:v10];

  [v6 insertObject:v10 atIndex:v7];
  v9 = [NSIndexPath indexPathForRow:v7 inSection:v5];
  [(ClarityUIAppSelectionTableViewDataSource *)self _moveIndexPath:pathCopy toIndexPath:v9];

  [(ClarityUIAppSelectionTableViewDataSource *)self _didUpdateSelectedApplicationIdentifiers];
}

- (void)_moveIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = -[UITableView numberOfRowsInSection:](self->_tableView, "numberOfRowsInSection:", [indexPathCopy section]);
  v9 = -[UITableView numberOfRowsInSection:](self->_tableView, "numberOfRowsInSection:", [pathCopy section]);
  tableView = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
  v23 = pathCopy;
  v12 = [NSArray arrayWithObjects:&v23 count:1];
  if (v9 == 1)
  {
    v13 = 100;
  }

  else
  {
    v13 = 0;
  }

  [tableView2 deleteRowsAtIndexPaths:v12 withRowAnimation:v13];

  tableView3 = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
  v22 = indexPathCopy;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = 100;
  }

  [tableView3 insertRowsAtIndexPaths:v15 withRowAnimation:v16];

  if (!v8)
  {
    tableView4 = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
    v18 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [indexPathCopy section]);
    [tableView4 reloadSections:v18 withRowAnimation:100];
  }

  if (v9 == 1)
  {
    tableView5 = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
    v20 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [pathCopy section]);
    [tableView5 reloadSections:v20 withRowAnimation:100];
  }

  tableView6 = [(ClarityUIAppSelectionTableViewDataSource *)self tableView];
  [tableView6 endUpdates];
}

- (void)commitChangesToSelectedApplications
{
  selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  v2 = +[CLFSettings sharedInstance];
  [v2 setApplicationBundleIdentifiers:selectedApplicationIdentifiers];
}

- (void)_didUpdateSelectedApplicationIdentifiers
{
  dataSourceDelegate = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
  if (dataSourceDelegate)
  {
    v4 = dataSourceDelegate;
    dataSourceDelegate2 = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      dataSourceDelegate3 = [(ClarityUIAppSelectionTableViewDataSource *)self dataSourceDelegate];
      [dataSourceDelegate3 didUpdateApplicationIdentifiersForDataSource:self];
    }
  }
}

- (id)_applicationIdentifiersForSection:(int64_t)section
{
  if (section == 2)
  {
    unselectedStandardApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self unselectedStandardApplicationIdentifiers];
  }

  else if (section == 1)
  {
    unselectedStandardApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self unselectedClarityUIApplicationIdentifiers];
  }

  else if (section)
  {
    unselectedStandardApplicationIdentifiers = 0;
  }

  else
  {
    unselectedStandardApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  }

  return unselectedStandardApplicationIdentifiers;
}

- (BOOL)_isSelectedApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
  v6 = [selectedApplicationIdentifiers containsObject:identifierCopy];

  return v6;
}

- (id)_applicationRecordForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = CLFLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUIAppSelectionTableViewDataSource *)identifierCopy _applicationRecordForIdentifier:v5, v6];
    }
  }

  return v4;
}

- (BOOL)_isClarityUIApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(ClarityUIAppSelectionTableViewDataSource *)self _applicationRecordForIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URL];
    v8 = [NSBundle bundleWithURL:v7];

    v9 = [v8 objectForInfoDictionaryKey:CLFSupportsAssistiveAccessKey];
    if (!v9)
    {
      v9 = [v8 objectForInfoDictionaryKey:CLFSupportsFullScreenInAssistiveAccessKey];
    }

    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    v11 = CLFLogSettings();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUIAppSelectionTableViewDataSource *)identifierCopy _isClarityUIApplicationIdentifier:v11];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_comparatorForApplicationIdentifiers
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __80__ClarityUIAppSelectionTableViewDataSource__comparatorForApplicationIdentifiers__block_invoke;
  v4[3] = &unk_256AC8;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

id __80__ClarityUIAppSelectionTableViewDataSource__comparatorForApplicationIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _displayNameForApplicationIdentifier:a2];
  v8 = [*(a1 + 32) _displayNameForApplicationIdentifier:v6];

  v9 = [v7 localizedCaseInsensitiveCompare:v8];
  return v9;
}

- (unint64_t)_indexForInsertingApplicationIdentifier:(id)identifier intoArray:(id)array
{
  arrayCopy = array;
  identifierCopy = identifier;
  v8 = [arrayCopy count];
  _comparatorForApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self _comparatorForApplicationIdentifiers];
  v10 = [arrayCopy indexOfObject:identifierCopy inSortedRange:0 options:v8 usingComparator:{1024, _comparatorForApplicationIdentifiers}];

  return v10;
}

- (id)_sortedApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _comparatorForApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self _comparatorForApplicationIdentifiers];
  v6 = [identifiersCopy sortedArrayUsingComparator:_comparatorForApplicationIdentifiers];

  return v6;
}

- (id)_applicationIdentifierForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[ClarityUIAppSelectionTableViewDataSource _applicationIdentifiersForSection:](self, "_applicationIdentifiersForSection:", [pathCopy section]);
  v6 = [pathCopy row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (id)_indexPathForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ClarityUIAppSelectionTableViewDataSource *)self _isSelectedApplicationIdentifier:identifierCopy])
  {
    selectedApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self selectedApplicationIdentifiers];
    v6 = [selectedApplicationIdentifiers indexOfObject:identifierCopy];
    v7 = 0;
  }

  else
  {
    selectedApplicationIdentifiers = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(ClarityUIAppSelectionTableViewDataSource *)self _isClarityUIApplicationIdentifier:identifierCopy]&& v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    unselectedClarityUIApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self unselectedClarityUIApplicationIdentifiers];

    v6 = [unselectedClarityUIApplicationIdentifiers indexOfObject:identifierCopy];
    v7 = 1;
    selectedApplicationIdentifiers = unselectedClarityUIApplicationIdentifiers;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    unselectedStandardApplicationIdentifiers = [(ClarityUIAppSelectionTableViewDataSource *)self unselectedStandardApplicationIdentifiers];

    v6 = [unselectedStandardApplicationIdentifiers indexOfObject:identifierCopy];
    v7 = 2;
    selectedApplicationIdentifiers = unselectedStandardApplicationIdentifiers;
  }

  v10 = [NSIndexPath indexPathForRow:v6 inSection:v7];

  return v10;
}

- (BOOL)_requiresPreflightForApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CLFAppAvailabilityChecker sharedInstance];
  v5 = [v4 requiresPreflightForBundleIdentifier:identifierCopy];

  return v5;
}

- (BOOL)_isHiddenByUserWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CLFAppAvailabilityChecker sharedInstance];
  v5 = [v4 isHiddenByUserForBundleIdentifier:identifierCopy];

  return v5;
}

- (ClarityUIAppSelectionTableViewDataSourceDelegate)dataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceDelegate);

  return WeakRetained;
}

- (void)_applicationRecordForIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Lookup for %@ encountered error: %@", &v3, 0x16u);
}

- (void)_isClarityUIApplicationIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Got nil record for bundle identifier: %@", &v2, 0xCu);
}

@end