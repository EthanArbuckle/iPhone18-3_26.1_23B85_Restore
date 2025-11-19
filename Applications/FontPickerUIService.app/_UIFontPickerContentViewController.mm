@interface _UIFontPickerContentViewController
- (BOOL)_hasMultipleFacesInClientFontContext:(id)a3;
- (BOOL)_isSettingsLinkSection:(int64_t)a3;
- (_UIFontPickerContentViewController)init;
- (_UIFontPickerContentViewControllerDelegate)delegate;
- (id)_clientFontContext;
- (id)_fontsForSearchTerm:(id)a3;
- (id)_identifierForSection:(int64_t)a3;
- (id)_indexPathsForFont:(id)a3;
- (id)_infoForIndexPath:(id)a3;
- (id)_loadRecents;
- (id)_loadSystemExtras;
- (id)_selectedFontsForCurrentConfiguration;
- (id)_settingsLinkSymbolImage;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_addToRecents:(id)a3;
- (void)_loadFonts;
- (void)_persistToRecents:(id)a3;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)a3;
- (void)_pickerIsShowingKeyboard:(BOOL)a3;
- (void)_setConfiguration:(id)a3;
- (void)_setHideNavigationBar:(BOOL)a3;
- (void)_setSelectedFonts:(id)a3 scrollToVisible:(BOOL)a4 updatingRecentsSection:(BOOL)a5;
- (void)_setShowsGrabber:(BOOL)a3;
- (void)_setupTitleViewWhenNavigationBarHidden:(BOOL)a3 searchBarHidden:(BOOL)a4;
- (void)_updateSettingsLinkSymbolImageIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation _UIFontPickerContentViewController

- (_UIFontPickerContentViewController)init
{
  v3.receiver = self;
  v3.super_class = _UIFontPickerContentViewController;
  return [(_UIFontPickerContentViewController *)&v3 initWithStyle:2];
}

- (void)dealloc
{
  if (self->_fontChangeObservationToken)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self->_fontChangeObservationToken];
  }

  v5 = sub_100074080(v2);
  v7 = *(v6 + 488);
  v8 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _clientFontContextEndpoint];
  [v7 invalidateSharedInstanceForEndpoint:v8];

  v9.receiver = self;
  v9.super_class = _UIFontPickerContentViewController;
  [(_UIFontPickerContentViewController *)&v9 dealloc];
}

- (id)_settingsLinkSymbolImage
{
  [(_UIFontPickerContentViewController *)self _updateSettingsLinkSymbolImageIfNeeded];
  cachedSettingsLinkSymbolImage = self->_cachedSettingsLinkSymbolImage;

  return cachedSettingsLinkSymbolImage;
}

- (void)_updateSettingsLinkSymbolImageIfNeeded
{
  v3 = [(_UIFontPickerContentViewController *)self traitCollection];
  v4 = v3;
  if (self->_cachedSettingsLinkSymbolImage)
  {
    v5 = [v3 preferredContentSizeCategory];
    if ([v5 isEqualToString:self->_cachedSettingsLinkSymbolImageContentSize])
    {
      [v4 displayScale];
      v7 = v6;
      cachedSettingsLinkSymbolImageDisplayScale = self->_cachedSettingsLinkSymbolImageDisplayScale;

      if (v7 == cachedSettingsLinkSymbolImageDisplayScale)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v9 = [[ISSymbol alloc] initWithSymbolName:@"textformat" bundleURL:0];
  v10 = objc_opt_new();
  [v10 setSymbolColors:&off_1000994F8];
  [v10 setEnclosureColors:&off_100099510];
  [v10 setRenderingMode:0];
  v11 = [v9 imageForGraphicSymbolDescriptor:v10];
  v12 = [UIImage alloc];
  v13 = [v11 CGImage];
  [v10 scale];
  v14 = [v12 initWithCGImage:v13 scale:0 orientation:?];
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration displayUsingSystemFont])
  {
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v15 lineHeight];
    v17 = fmax(floor(v16 * 0.1), 5.0);
    [v15 pointSize];
    v19 = v18 + v18;
    [v15 lineHeight];
    v21 = v20 + v17 + v17;
    v22 = objc_opt_new();
    [v10 scale];
    [v22 setScale:?];
    v23 = [[UIGraphicsImageRenderer alloc] initWithSize:v22 format:{v19, v21}];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10006C8C0;
    v29[3] = &unk_100098CE8;
    v30 = v14;
    v31 = v19;
    v32 = v21;
    v24 = [v23 imageWithActions:v29];
    cachedSettingsLinkSymbolImage = self->_cachedSettingsLinkSymbolImage;
    self->_cachedSettingsLinkSymbolImage = v24;
  }

  else
  {
    objc_storeStrong(&self->_cachedSettingsLinkSymbolImage, v14);
  }

  v26 = [v4 preferredContentSizeCategory];
  cachedSettingsLinkSymbolImageContentSize = self->_cachedSettingsLinkSymbolImageContentSize;
  self->_cachedSettingsLinkSymbolImageContentSize = v26;

  [v4 displayScale];
  self->_cachedSettingsLinkSymbolImageDisplayScale = v28;

LABEL_10:
}

- (id)_loadRecents
{
  v2 = [(UIFontPickerViewControllerConfiguration *)self->_configuration copy];
  [v2 setIncludeFaces:0];
  v3 = _UIFontPickerLoadRecentsMatchingConfiguration();

  return v3;
}

- (id)_loadSystemExtras
{
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration _includeDefaultFont])
  {
    v3 = [[_UIFontPickerFontInfo alloc] initWithSystemDefaultFont];
    if ([v3 matchesConfiguration:self->_configuration])
    {
      v4 = [NSMutableArray arrayWithCapacity:1];
      [v4 addObject:v3];
      self->_showingSystemSection = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isSettingsLinkSection:(int64_t)a3
{
  if (![(_UIFontPickerContentViewController *)self _hasSettingsLinkSection])
  {
    return 0;
  }

  v5 = [(_UIFontPickerContentViewController *)self tableView];
  v6 = [(_UIFontPickerContentViewController *)self numberOfSectionsInTableView:v5]- 1 == a3;

  return v6;
}

- (id)_clientFontContext
{
  v3 = sub_100074080(v2);
  v5 = *(v4 + 488);
  v7 = [*(v6 + 512) _clientFontContextEndpoint];
  v8 = [v5 sharedInstanceForEndpoint:v7];

  return v8;
}

- (void)_loadFonts
{
  v3 = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v4 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];

  if (v4)
  {
    v5 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006CD94;
    v25[3] = &unk_100098D10;
    v25[4] = self;
    [v3 runWithFontNamesForFamilyName:v5 usingBlock:v25];

    v6 = [(_UIFontPickerContentViewController *)self tableView];
    [v6 reloadData];
  }

  else
  {
    v7 = +[UILocalizedIndexedCollation currentCollation];
    collation = self->_collation;
    self->_collation = v7;

    v9 = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
    v10 = [v9 count];

    v11 = [NSMutableDictionary dictionaryWithCapacity:v10];
    fontsBySection = self->_fontsBySection;
    self->_fontsBySection = v11;

    v13 = [NSMutableArray arrayWithCapacity:v10];
    sections = self->_sections;
    self->_sections = v13;

    v15 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFontNames];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10006CFEC;
    v21 = &unk_100098D60;
    v22 = v3;
    v23 = v15;
    v24 = self;
    v16 = v15;
    [v22 runBlockInClientFontContext:&v18];
    v17 = [(_UIFontPickerContentViewController *)self tableView:v18];
    [v17 reloadData];
  }
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = _UIFontPickerContentViewController;
  [(_UIFontPickerContentViewController *)&v25 loadView];
  v3 = [(_UIFontPickerContentViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIFontPickerCell"];

  v4 = [(_UIFontPickerContentViewController *)self tableView];
  [v4 setSeparatorInsetReference:1];

  v5 = [(_UIFontPickerContentViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(_UIFontPickerContentViewController *)self tableView];
  [v6 setEstimatedRowHeight:50.0];

  v7 = [[_UIFontPickerSearchContentViewController alloc] initWithStyle:2];
  resultController = self->_resultController;
  self->_resultController = v7;

  [(_UIFontPickerSearchContentViewController *)self->_resultController _setConfiguration:self->_configuration];
  [(_UIFontPickerSearchContentViewController *)self->_resultController setDelegate:self];
  v9 = [[_UIFontPickerSecureSearchController alloc] initWithSearchResultsController:self->_resultController];
  searchController = self->_searchController;
  self->_searchController = v9;

  [(_UIFontPickerSecureSearchController *)self->_searchController setSearchResultsUpdater:self];
  [(_UIFontPickerSecureSearchController *)self->_searchController setDelegate:self];
  [(_UIFontPickerContentViewController *)self setDefinesPresentationContext:1];
  v11 = [(_UIFontPickerContentViewController *)self navigationItem];
  [v11 setHidesSearchBarWhenScrolling:0];

  v12 = [(_UIFontPickerContentViewController *)self navigationItem];
  [v12 setPreferredSearchBarPlacement:2];

  [(_UIFontPickerContentViewController *)self _setHideNavigationBar:self->_hideNavBar];
  [(_UIFontPickerContentViewController *)self _setShowsGrabber:self->_showsGrabber];
  if (!self->_fontChangeObservationToken)
  {
    objc_initWeak(&location, self);
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = +[NSOperationQueue mainQueue];
    sub_10007405C(v15);
    v17 = **(v16 + 480);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006D794;
    v22[3] = &unk_100098D88;
    objc_copyWeak(&v23, &location);
    v18 = [v13 addObserverForName:v17 object:0 queue:v14 usingBlock:v22];
    fontChangeObservationToken = self->_fontChangeObservationToken;
    self->_fontChangeObservationToken = v18;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  selectedIndexPaths = self->_selectedIndexPaths;
  self->_selectedIndexPaths = 0;

  selectedFonts = self->_selectedFonts;
  self->_selectedFonts = 0;
}

- (void)_setHideNavigationBar:(BOOL)a3
{
  v3 = a3;
  self->_hideNavBar = a3;
  if (a3)
  {
    v5 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v5 setRightBarButtonItem:0];
  }

  else
  {
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_pickerDidCancel"];
    v6 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  v7 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _hideSearchBar];

  [(_UIFontPickerContentViewController *)self _setupTitleViewWhenNavigationBarHidden:v3 searchBarHidden:v7];
}

- (void)_setShowsGrabber:(BOOL)a3
{
  v3 = a3;
  self->_showsGrabber = a3;
  v4 = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 15.0;
  }

  [v4 setContentInset:{v5, 0.0, 0.0, 0.0}];
}

- (void)_setConfiguration:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_configuration, a3);
  v5 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
  self->_showingSingleFamily = v5 != 0;

  [(_UIFontPickerContentViewController *)self _loadFonts];
  v6 = [v14 _tintColor];

  if (v6)
  {
    v7 = [v14 _tintColor];
    v8 = [(_UIFontPickerContentViewController *)self tableView];
    [v8 setTintColor:v7];

    v9 = [v14 _tintColor];
    v10 = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
    [v10 setTintColor:v9];

    v11 = [v14 _tintColor];
    v12 = [(_UIFontPickerSearchContentViewController *)self->_resultController tableView];
    [v12 setTintColor:v11];
  }

  -[_UIFontPickerContentViewController _setupTitleViewWhenNavigationBarHidden:searchBarHidden:](self, "_setupTitleViewWhenNavigationBarHidden:searchBarHidden:", self->_hideNavBar, [v14 _hideSearchBar]);
  [(_UIFontPickerSearchContentViewController *)self->_resultController _setConfiguration:v14];
  v13 = [(_UIFontPickerContentViewController *)self tableView];
  [v13 reloadData];
}

- (void)_setupTitleViewWhenNavigationBarHidden:(BOOL)a3 searchBarHidden:(BOOL)a4
{
  if (!a3 || a4 || [(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces])
  {
    if (a4)
    {
      searchController = 0;
    }

    else
    {
      searchController = self->_searchController;
    }

    v7 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v7 setSearchController:searchController];

    v8 = _UISolariumEnabled();
    v9 = self->_searchController;
    if (v8)
    {
      [(_UIFontPickerSecureSearchController *)v9 _resetHidesNavigationBarDuringPresentation];
    }

    else
    {
      [(_UIFontPickerSecureSearchController *)v9 setHidesNavigationBarDuringPresentation:1];
    }

    v10 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v10 setTitleView:0];

    showingSingleFamily = self->_showingSingleFamily;
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = v12;
    if (showingSingleFamily)
    {
      v13 = @"FONT_PICKER_STYLES_TITLE";
      v14 = @"Choose Style";
    }

    else
    {
      v13 = @"FONT_PICKER_TITLE";
      v14 = @"Choose Font";
    }

    v15 = [v12 localizedStringForKey:v13 value:v14 table:@"Localizable"];
    v16 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v16 setTitle:v15];
  }

  else
  {
    v17 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v17 setSearchController:0];

    [(_UIFontPickerSecureSearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
    v18 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v18 setTitle:0];

    v19 = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
    v15 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v15 setTitleView:v19];
  }
}

- (void)_setSelectedFonts:(id)a3 scrollToVisible:(BOOL)a4 updatingRecentsSection:(BOOL)a5
{
  v8 = a3;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  if (v8 && [v8 count])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006DECC;
    v22[3] = &unk_100098DB0;
    v22[4] = self;
    v23 = v9;
    [v8 enumerateObjectsUsingBlock:v22];
  }

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v11 = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006DF40;
  v15[3] = &unk_100098E50;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v20 = a4;
  v21 = a5;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  [v11 runBlockInClientFontContext:v15];
}

- (void)_persistToRecents:(id)a3
{
  v4 = a3;
  v5 = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E3AC;
  v7[3] = &unk_100098E78;
  v8 = v4;
  v6 = v4;
  [v5 runBlockInClientFontContext:v7];
}

- (void)_addToRecents:(id)a3
{
  v6 = a3;
  if (([v6 isSystemFont] & 1) == 0 && objc_msgSend(v6, "isFontFamilyAvailable"))
  {
    if (self->_showingSingleFamily)
    {
      [(_UIFontPickerContentViewController *)self _persistToRecents:v6];
    }

    else
    {
      v4 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099440];
      if (v6 && v4)
      {
        if ([v4 indexOfObject:v6] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v4 insertObject:v6 atIndex:0];
          if ([v4 count] >= 8)
          {
            [v4 removeLastObject];
          }
        }

        v5 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099440];
        -[_UIFontPickerContentViewController _setRecentsHidden:](self, "_setRecentsHidden:", [v5 count] == 0);

        [(_UIFontPickerContentViewController *)self _persistToRecents:v6];
      }
    }
  }
}

- (void)_pickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _pickerDidCancel];
}

- (BOOL)_hasMultipleFacesInClientFontContext:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E618;
  v7[3] = &unk_100098EA0;
  v7[4] = &v8;
  [v5 runWithFontNamesForFamilyName:v4 usingBlock:v7];

  LOBYTE(v5) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_pickerDidSelectFont:(id)a3
{
  v4 = a3;
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces])
  {
    v5 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
    if (v5)
    {
    }

    else
    {
      v24 = [v4 objectForKey:UIFontDescriptorFamilyAttribute];
      if (v24)
      {
        v25 = v24;
        v26 = [v4 objectForKey:UIFontDescriptorFamilyAttribute];
        v27 = [(_UIFontPickerContentViewController *)self _hasMultipleFacesInClientFontContext:v26];

        if (v27)
        {
          v10 = objc_opt_new();
          v12 = [(UIFontPickerViewControllerConfiguration *)self->_configuration copy];
          v28 = [v4 objectForKey:UIFontDescriptorFamilyAttribute];
          [v12 set_filterFamilyName:v28];

          [v10 _setConfiguration:v12];
          [v10 _setHideNavigationBar:self->_hideNavBar];
          [v10 _setShowsGrabber:self->_showsGrabber];
          objc_storeStrong(v10 + 60, self->_selectedFonts);
          v29 = [(_UIFontPickerContentViewController *)self delegate];
          [v10 setDelegate:v29];

          v30 = [(_UIFontPickerContentViewController *)self navigationController];

          if (v30)
          {
            v31 = [(_UIFontPickerContentViewController *)self navigationController];
            [v31 pushViewController:v10 animated:1];
          }

          goto LABEL_15;
        }
      }
    }
  }

  v34 = v4;
  v6 = [NSArray arrayWithObjects:&v34 count:1];
  [(_UIFontPickerContentViewController *)self _setSelectedFonts:v6 scrollToVisible:0 updatingRecentsSection:0];

  v7 = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v8 = [v4 postscriptName];
  [v7 fontSelected:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _pickerDidSelectFont:v4];

  v10 = [(_UIFontPickerContentViewController *)self navigationController];
  if (!v10)
  {
    goto LABEL_16;
  }

  if (self->_hideNavBar)
  {
    goto LABEL_16;
  }

  v11 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(_UIFontPickerContentViewController *)self navigationController];
  v14 = [v13 viewControllers];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = v15;
  if (v15 == self)
  {

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_UIFontPickerContentViewController *)self navigationController];
  v18 = [v17 viewControllers];
  v19 = [v18 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = [(_UIFontPickerContentViewController *)self navigationController];
    v21 = [v20 viewControllers];
    v22 = [v21 objectAtIndexedSubscript:0];

    v33 = v4;
    v23 = [NSArray arrayWithObjects:&v33 count:1];
    [v22 _setSelectedFonts:v23 scrollToVisible:0 updatingRecentsSection:0];
  }

LABEL_17:
}

- (void)_pickerIsShowingKeyboard:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _pickerIsShowingKeyboard:v3];
  }
}

- (id)_selectedFontsForCurrentConfiguration
{
  selectedFonts = self->_selectedFonts;
  if (!selectedFonts || self->_showingSingleFamily || (v4 = [(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces], selectedFonts = self->_selectedFonts, (v4 & 1) != 0))
  {
    v5 = selectedFonts;
  }

  else
  {
    v7 = [NSMutableArray arrayWithCapacity:[(NSArray *)selectedFonts count]];
    v8 = self->_selectedFonts;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006EBD8;
    v9[3] = &unk_100098EC8;
    v5 = v7;
    v10 = v5;
    [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  }

  return v5;
}

- (id)_identifierForSection:(int64_t)a3
{
  if (self->_showingRecentsSection)
  {
    if (!a3)
    {
      v6 = &off_100099440;

      return v6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (self->_showingSystemSection)
  {
    if (v5 == a3)
    {
      v6 = &off_100099458;

      return v6;
    }

    ++v5;
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a3 - v5, v3];

  return v6;
}

- (id)_infoForIndexPath:(id)a3
{
  fontsBySection = self->_fontsBySection;
  v5 = a3;
  v6 = -[_UIFontPickerContentViewController _identifierForSection:](self, "_identifierForSection:", [v5 section]);
  v7 = [(NSMutableDictionary *)fontsBySection objectForKeyedSubscript:v6];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (id)_indexPathsForFont:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_sections count]>= -1)
  {
    v6 = -2;
    while (1)
    {
      if (v6 < 0)
      {
        v7 = [NSNumber numberWithInteger:v6];
        if (self->_showingRecentsSection)
        {
          v8 = (8 * (v6 > [&off_100099440 integerValue]));
        }

        else
        {
          v8 = 0;
        }

        if (self->_showingSystemSection)
        {
          v8 += 8 * (v6 > [&off_100099458 integerValue]);
        }
      }

      else
      {
        v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v6];
        v8 = [(_UIFontPickerContentViewController *)self _numberOfExtraTopSections]+ v6;
      }

      v15 = v7;
      v9 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:v7];
      if ([v9 count])
      {
        break;
      }

LABEL_18:

      if (++v6 >= [(NSMutableArray *)self->_sections count])
      {
        goto LABEL_19;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      v12 = v11;
      if (!self->_showingSingleFamily)
      {
        goto LABEL_24;
      }

      if ([v11 matchesFontDescriptor:v4])
      {
        goto LABEL_16;
      }

      if (!self->_showingSingleFamily)
      {
LABEL_24:
        if ([v12 matchesFamilyForFontDescriptor:v4])
        {
LABEL_16:
          v13 = [NSIndexPath indexPathForRow:v10 inSection:v8];
          [v5 addObject:v13];
        }
      }

      if (++v10 >= [v9 count])
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(_UIFontPickerContentViewController *)self _isSettingsLinkSection:a4])
  {
    return 1;
  }

  fontsBySection = self->_fontsBySection;
  v8 = [(_UIFontPickerContentViewController *)self _identifierForSection:a4];
  v9 = [(NSMutableDictionary *)fontsBySection objectForKeyedSubscript:v8];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(NSMutableArray *)self->_sections count];
  v5 = &v4[[(_UIFontPickerContentViewController *)self _numberOfExtraTopSections]];
  return &v5[[(_UIFontPickerContentViewController *)self _hasSettingsLinkSection]];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_showingSingleFamily)
  {
    v7 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099428];
    v8 = [v7 firstObject];
    v9 = [v8 localizedFamilyName];
    v10 = v9;
    v11 = &stru_100099070;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
    goto LABEL_5;
  }

  if ([(_UIFontPickerContentViewController *)self _isSettingsLinkSection:a4])
  {
    v13 = &stru_100099070;
    goto LABEL_14;
  }

  v7 = [(_UIFontPickerContentViewController *)self _identifierForSection:a4];
  if ([v7 isEqual:&off_100099440])
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = v14;
    v15 = @"FONT_PICKER_RECENTS";
    v16 = @"Recents";
LABEL_12:
    v13 = [v14 localizedStringForKey:v15 value:v16 table:@"Localizable"];
    goto LABEL_13;
  }

  if ([v7 isEqual:&off_100099458])
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = v14;
    v15 = @"FONT_PICKER_SYSTEM_EXTRAS";
    v16 = @"System";
    goto LABEL_12;
  }

  v8 = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
  v10 = [(_UIFontPickerContentViewController *)self _identifierForSection:a4];
  v12 = [v8 objectAtIndexedSubscript:{objc_msgSend(v10, "integerValue")}];
LABEL_5:
  v13 = v12;

LABEL_13:
LABEL_14:

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"UIFontPickerCell"];
  if (!v8)
  {
    v8 = [[_UIFontPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UIFontPickerCell"];
  }

  if (-[_UIFontPickerContentViewController _isSettingsLinkSection:](self, "_isSettingsLinkSection:", [v7 section]))
  {
    v9 = [(_UIFontPickerTableViewCell *)v8 defaultContentConfiguration];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK_SHORT" value:@"Manage Fonts" table:@"Localizable"];
    [v9 setText:v11];

    if ([(UIFontPickerViewControllerConfiguration *)self->_configuration displayUsingSystemFont])
    {
      leading = 10.0;
      [v9 setImageToTextPadding:10.0];
      [v9 setAxesPreservingSuperviewLayoutMargins:0];
      top = 0.0;
      bottom = 0.0;
      trailing = 10.0;
    }

    else
    {
      [v9 setAxesPreservingSuperviewLayoutMargins:1];
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
    }

    [v9 setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
    v21 = [(_UIFontPickerContentViewController *)self _settingsLinkSymbolImage];
    [v9 setImage:v21];

    [(_UIFontPickerTableViewCell *)v8 setContentConfiguration:v9];
    [(_UIFontPickerTableViewCell *)v8 setAccessoryType:1];
    v22 = v8;
  }

  else
  {
    v16 = [(_UIFontPickerContentViewController *)self _infoForIndexPath:v7];
    v17 = [(_UIFontPickerContentViewController *)self _clientFontContext];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10006F630;
    v36[3] = &unk_100098D60;
    v18 = v8;
    v37 = v18;
    v9 = v16;
    v38 = v9;
    v39 = self;
    [v17 runBlockInClientFontContext:v36];

    if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces]&& !self->_showingSingleFamily)
    {
      v19 = [v9 hasMultipleFaces];
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    selectedFonts = self->_selectedFonts;
    if (selectedFonts)
    {
      showingSingleFamily = self->_showingSingleFamily;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006F680;
      v28[3] = &unk_100098EF0;
      v30 = &v32;
      v31 = showingSingleFamily;
      v29 = v9;
      [(NSArray *)selectedFonts enumerateObjectsUsingBlock:v28];
    }

    if (v19)
    {
      v25 = 1;
    }

    else if ((v20 & v33[3]) != 0)
    {
      v25 = 3;
    }

    else
    {
      v25 = 0;
    }

    [(_UIFontPickerTableViewCell *)v18 setAccessoryType:v25];
    v26 = v18;
    _Block_object_dispose(&v32, 8);
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a4;
  v6 = a3;
  if (-[_UIFontPickerContentViewController _isSettingsLinkSection:](self, "_isSettingsLinkSection:", [v9 section]))
  {
    [v6 deselectRowAtIndexPath:v9 animated:1];

    sub_10006C3C0();
  }

  else
  {
    [v6 deselectRowAtIndexPath:v9 animated:0];

    v7 = [(_UIFontPickerContentViewController *)self _infoForIndexPath:v9];
    v8 = [v7 fontDescriptor];
    [(_UIFontPickerContentViewController *)self _pickerDidSelectFont:v8];
  }
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration _showsSectionIndexBar]&& !self->_showingSingleFamily)
  {
    v4 = [(UILocalizedIndexedCollation *)self->_collation sectionIndexTitles];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  if (![(UIFontPickerViewControllerConfiguration *)self->_configuration _showsSectionIndexBar:a3]|| self->_showingSingleFamily)
  {
    return 0;
  }

  sections = self->_sections;
  v9 = [NSNumber numberWithInteger:[(UILocalizedIndexedCollation *)self->_collation sectionForSectionIndexTitleAtIndex:a5]];
  v10 = [(NSMutableArray *)sections indexOfObject:v9];
  v7 = &v10[[(_UIFontPickerContentViewController *)self _numberOfExtraTopSections]];

  return v7;
}

- (id)_fontsForSearchTerm:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = 456;
  v21 = self;
  obj = self->_fontsBySection;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = &off_100099440;
    do
    {
      v10 = 0;
      v22 = v7;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        if (([v11 isEqual:{v9, v20, v21}] & 1) == 0)
        {
          v12 = v9;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = [*(&v21->super.super.super.super.isa + v20) objectForKeyedSubscript:v11];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * i);
                if ([v18 matchesSearchString:v4])
                {
                  [v5 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }

          v9 = v12;
          v7 = v22;
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  obj = [v4 text];

  [(_UIFontPickerSearchContentViewController *)self->_resultController setSearchTerm:obj];
  if ([obj length])
  {
    if (!self->_previousSearch)
    {
      goto LABEL_6;
    }

    if ([obj isEqualToString:?])
    {
      goto LABEL_8;
    }

    previousSearch = self->_previousSearch;
    if (previousSearch && [obj rangeOfString:previousSearch options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_UIFontPickerSearchContentViewController *)self->_resultController _filterResultsForSearchTerm:obj];
    }

    else
    {
LABEL_6:
      resultController = self->_resultController;
      v7 = [(_UIFontPickerContentViewController *)self _fontsForSearchTerm:obj];
      [(_UIFontPickerSearchContentViewController *)resultController _setResultFonts:v7];
    }

    objc_storeStrong(&self->_previousSearch, obj);
  }

LABEL_8:
}

- (void)willPresentSearchController:(id)a3
{
  v4 = [(_UIFontPickerContentViewController *)self tableView];
  [v4 setKeyboardDismissMode:1];

  [(_UIFontPickerContentViewController *)self _pickerIsShowingKeyboard:1];
  if (!self->_hideNavBar)
  {
    v7 = objc_opt_new();
    [v7 configureWithOpaqueBackground];
    v5 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v5 setScrollEdgeAppearance:v7];

    v6 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v6 setCompactScrollEdgeAppearance:v7];
  }
}

- (void)willDismissSearchController:(id)a3
{
  [(_UIFontPickerContentViewController *)self _pickerIsShowingKeyboard:0];
  if (!self->_hideNavBar)
  {
    v6 = objc_opt_new();
    [v6 configureWithTransparentBackground];
    v4 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v4 setScrollEdgeAppearance:v6];

    v5 = [(_UIFontPickerContentViewController *)self navigationItem];
    [v5 setCompactScrollEdgeAppearance:v6];
  }
}

- (_UIFontPickerContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end