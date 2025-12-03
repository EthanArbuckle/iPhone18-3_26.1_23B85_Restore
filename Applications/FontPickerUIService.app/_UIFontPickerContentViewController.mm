@interface _UIFontPickerContentViewController
- (BOOL)_hasMultipleFacesInClientFontContext:(id)context;
- (BOOL)_isSettingsLinkSection:(int64_t)section;
- (_UIFontPickerContentViewController)init;
- (_UIFontPickerContentViewControllerDelegate)delegate;
- (id)_clientFontContext;
- (id)_fontsForSearchTerm:(id)term;
- (id)_identifierForSection:(int64_t)section;
- (id)_indexPathsForFont:(id)font;
- (id)_infoForIndexPath:(id)path;
- (id)_loadRecents;
- (id)_loadSystemExtras;
- (id)_selectedFontsForCurrentConfiguration;
- (id)_settingsLinkSymbolImage;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_addToRecents:(id)recents;
- (void)_loadFonts;
- (void)_persistToRecents:(id)recents;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)font;
- (void)_pickerIsShowingKeyboard:(BOOL)keyboard;
- (void)_setConfiguration:(id)configuration;
- (void)_setHideNavigationBar:(BOOL)bar;
- (void)_setSelectedFonts:(id)fonts scrollToVisible:(BOOL)visible updatingRecentsSection:(BOOL)section;
- (void)_setShowsGrabber:(BOOL)grabber;
- (void)_setupTitleViewWhenNavigationBarHidden:(BOOL)hidden searchBarHidden:(BOOL)barHidden;
- (void)_updateSettingsLinkSymbolImageIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
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
  _clientFontContextEndpoint = [(UIFontPickerViewControllerConfiguration *)self->_configuration _clientFontContextEndpoint];
  [v7 invalidateSharedInstanceForEndpoint:_clientFontContextEndpoint];

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
  traitCollection = [(_UIFontPickerContentViewController *)self traitCollection];
  v4 = traitCollection;
  if (self->_cachedSettingsLinkSymbolImage)
  {
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if ([preferredContentSizeCategory isEqualToString:self->_cachedSettingsLinkSymbolImageContentSize])
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
  cGImage = [v11 CGImage];
  [v10 scale];
  v14 = [v12 initWithCGImage:cGImage scale:0 orientation:?];
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

  preferredContentSizeCategory2 = [v4 preferredContentSizeCategory];
  cachedSettingsLinkSymbolImageContentSize = self->_cachedSettingsLinkSymbolImageContentSize;
  self->_cachedSettingsLinkSymbolImageContentSize = preferredContentSizeCategory2;

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
    initWithSystemDefaultFont = [[_UIFontPickerFontInfo alloc] initWithSystemDefaultFont];
    if ([initWithSystemDefaultFont matchesConfiguration:self->_configuration])
    {
      v4 = [NSMutableArray arrayWithCapacity:1];
      [v4 addObject:initWithSystemDefaultFont];
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

- (BOOL)_isSettingsLinkSection:(int64_t)section
{
  if (![(_UIFontPickerContentViewController *)self _hasSettingsLinkSection])
  {
    return 0;
  }

  tableView = [(_UIFontPickerContentViewController *)self tableView];
  v6 = [(_UIFontPickerContentViewController *)self numberOfSectionsInTableView:tableView]- 1 == section;

  return v6;
}

- (id)_clientFontContext
{
  v3 = sub_100074080(v2);
  v5 = *(v4 + 488);
  _clientFontContextEndpoint = [*(v6 + 512) _clientFontContextEndpoint];
  v8 = [v5 sharedInstanceForEndpoint:_clientFontContextEndpoint];

  return v8;
}

- (void)_loadFonts
{
  _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
  _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];

  if (_filterFamilyName)
  {
    _filterFamilyName2 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006CD94;
    v25[3] = &unk_100098D10;
    v25[4] = self;
    [_clientFontContext runWithFontNamesForFamilyName:_filterFamilyName2 usingBlock:v25];

    tableView = [(_UIFontPickerContentViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    v7 = +[UILocalizedIndexedCollation currentCollation];
    collation = self->_collation;
    self->_collation = v7;

    sectionTitles = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
    v10 = [sectionTitles count];

    v11 = [NSMutableDictionary dictionaryWithCapacity:v10];
    fontsBySection = self->_fontsBySection;
    self->_fontsBySection = v11;

    v13 = [NSMutableArray arrayWithCapacity:v10];
    sections = self->_sections;
    self->_sections = v13;

    _filterFontNames = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFontNames];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10006CFEC;
    v21 = &unk_100098D60;
    v22 = _clientFontContext;
    v23 = _filterFontNames;
    selfCopy = self;
    v16 = _filterFontNames;
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
  tableView = [(_UIFontPickerContentViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"UIFontPickerCell"];

  tableView2 = [(_UIFontPickerContentViewController *)self tableView];
  [tableView2 setSeparatorInsetReference:1];

  tableView3 = [(_UIFontPickerContentViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(_UIFontPickerContentViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:50.0];

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
  navigationItem = [(_UIFontPickerContentViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:0];

  navigationItem2 = [(_UIFontPickerContentViewController *)self navigationItem];
  [navigationItem2 setPreferredSearchBarPlacement:2];

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

- (void)_setHideNavigationBar:(BOOL)bar
{
  barCopy = bar;
  self->_hideNavBar = bar;
  if (bar)
  {
    navigationItem = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }

  else
  {
    navigationItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_pickerDidCancel"];
    navigationItem2 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem];
  }

  _hideSearchBar = [(UIFontPickerViewControllerConfiguration *)self->_configuration _hideSearchBar];

  [(_UIFontPickerContentViewController *)self _setupTitleViewWhenNavigationBarHidden:barCopy searchBarHidden:_hideSearchBar];
}

- (void)_setShowsGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  self->_showsGrabber = grabber;
  searchBar = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
  v6 = searchBar;
  v5 = 0.0;
  if (grabberCopy)
  {
    v5 = 15.0;
  }

  [searchBar setContentInset:{v5, 0.0, 0.0, 0.0}];
}

- (void)_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
  self->_showingSingleFamily = _filterFamilyName != 0;

  [(_UIFontPickerContentViewController *)self _loadFonts];
  _tintColor = [configurationCopy _tintColor];

  if (_tintColor)
  {
    _tintColor2 = [configurationCopy _tintColor];
    tableView = [(_UIFontPickerContentViewController *)self tableView];
    [tableView setTintColor:_tintColor2];

    _tintColor3 = [configurationCopy _tintColor];
    searchBar = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
    [searchBar setTintColor:_tintColor3];

    _tintColor4 = [configurationCopy _tintColor];
    tableView2 = [(_UIFontPickerSearchContentViewController *)self->_resultController tableView];
    [tableView2 setTintColor:_tintColor4];
  }

  -[_UIFontPickerContentViewController _setupTitleViewWhenNavigationBarHidden:searchBarHidden:](self, "_setupTitleViewWhenNavigationBarHidden:searchBarHidden:", self->_hideNavBar, [configurationCopy _hideSearchBar]);
  [(_UIFontPickerSearchContentViewController *)self->_resultController _setConfiguration:configurationCopy];
  tableView3 = [(_UIFontPickerContentViewController *)self tableView];
  [tableView3 reloadData];
}

- (void)_setupTitleViewWhenNavigationBarHidden:(BOOL)hidden searchBarHidden:(BOOL)barHidden
{
  if (!hidden || barHidden || [(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces])
  {
    if (barHidden)
    {
      searchController = 0;
    }

    else
    {
      searchController = self->_searchController;
    }

    navigationItem = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem setSearchController:searchController];

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

    navigationItem2 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem2 setTitleView:0];

    showingSingleFamily = self->_showingSingleFamily;
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    searchBar = v12;
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

    navigationItem6 = [v12 localizedStringForKey:v13 value:v14 table:@"Localizable"];
    navigationItem3 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem3 setTitle:navigationItem6];
  }

  else
  {
    navigationItem4 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem4 setSearchController:0];

    [(_UIFontPickerSecureSearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
    navigationItem5 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem5 setTitle:0];

    searchBar = [(_UIFontPickerSecureSearchController *)self->_searchController searchBar];
    navigationItem6 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem6 setTitleView:searchBar];
  }
}

- (void)_setSelectedFonts:(id)fonts scrollToVisible:(BOOL)visible updatingRecentsSection:(BOOL)section
{
  fontsCopy = fonts;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fontsCopy count]);
  if (fontsCopy && [fontsCopy count])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006DECC;
    v22[3] = &unk_100098DB0;
    v22[4] = self;
    v23 = v9;
    [fontsCopy enumerateObjectsUsingBlock:v22];
  }

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fontsCopy count]);
  _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006DF40;
  v15[3] = &unk_100098E50;
  v16 = fontsCopy;
  v17 = v10;
  selfCopy = self;
  v19 = v9;
  visibleCopy = visible;
  sectionCopy = section;
  v12 = v9;
  v13 = v10;
  v14 = fontsCopy;
  [_clientFontContext runBlockInClientFontContext:v15];
}

- (void)_persistToRecents:(id)recents
{
  recentsCopy = recents;
  _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E3AC;
  v7[3] = &unk_100098E78;
  v8 = recentsCopy;
  v6 = recentsCopy;
  [_clientFontContext runBlockInClientFontContext:v7];
}

- (void)_addToRecents:(id)recents
{
  recentsCopy = recents;
  if (([recentsCopy isSystemFont] & 1) == 0 && objc_msgSend(recentsCopy, "isFontFamilyAvailable"))
  {
    if (self->_showingSingleFamily)
    {
      [(_UIFontPickerContentViewController *)self _persistToRecents:recentsCopy];
    }

    else
    {
      v4 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099440];
      if (recentsCopy && v4)
      {
        if ([v4 indexOfObject:recentsCopy] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v4 insertObject:recentsCopy atIndex:0];
          if ([v4 count] >= 8)
          {
            [v4 removeLastObject];
          }
        }

        v5 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099440];
        -[_UIFontPickerContentViewController _setRecentsHidden:](self, "_setRecentsHidden:", [v5 count] == 0);

        [(_UIFontPickerContentViewController *)self _persistToRecents:recentsCopy];
      }
    }
  }
}

- (void)_pickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _pickerDidCancel];
}

- (BOOL)_hasMultipleFacesInClientFontContext:(id)context
{
  contextCopy = context;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E618;
  v7[3] = &unk_100098EA0;
  v7[4] = &v8;
  [_clientFontContext runWithFontNamesForFamilyName:contextCopy usingBlock:v7];

  LOBYTE(_clientFontContext) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return _clientFontContext;
}

- (void)_pickerDidSelectFont:(id)font
{
  fontCopy = font;
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces])
  {
    _filterFamilyName = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
    if (_filterFamilyName)
    {
    }

    else
    {
      v24 = [fontCopy objectForKey:UIFontDescriptorFamilyAttribute];
      if (v24)
      {
        v25 = v24;
        v26 = [fontCopy objectForKey:UIFontDescriptorFamilyAttribute];
        v27 = [(_UIFontPickerContentViewController *)self _hasMultipleFacesInClientFontContext:v26];

        if (v27)
        {
          navigationController3 = objc_opt_new();
          v12 = [(UIFontPickerViewControllerConfiguration *)self->_configuration copy];
          v28 = [fontCopy objectForKey:UIFontDescriptorFamilyAttribute];
          [v12 set_filterFamilyName:v28];

          [navigationController3 _setConfiguration:v12];
          [navigationController3 _setHideNavigationBar:self->_hideNavBar];
          [navigationController3 _setShowsGrabber:self->_showsGrabber];
          objc_storeStrong(navigationController3 + 60, self->_selectedFonts);
          delegate = [(_UIFontPickerContentViewController *)self delegate];
          [navigationController3 setDelegate:delegate];

          navigationController = [(_UIFontPickerContentViewController *)self navigationController];

          if (navigationController)
          {
            navigationController2 = [(_UIFontPickerContentViewController *)self navigationController];
            [navigationController2 pushViewController:navigationController3 animated:1];
          }

          goto LABEL_15;
        }
      }
    }
  }

  v34 = fontCopy;
  v6 = [NSArray arrayWithObjects:&v34 count:1];
  [(_UIFontPickerContentViewController *)self _setSelectedFonts:v6 scrollToVisible:0 updatingRecentsSection:0];

  _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
  postscriptName = [fontCopy postscriptName];
  [_clientFontContext fontSelected:postscriptName];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _pickerDidSelectFont:fontCopy];

  navigationController3 = [(_UIFontPickerContentViewController *)self navigationController];
  if (!navigationController3)
  {
    goto LABEL_16;
  }

  if (self->_hideNavBar)
  {
    goto LABEL_16;
  }

  _filterFamilyName2 = [(UIFontPickerViewControllerConfiguration *)self->_configuration _filterFamilyName];
  if (!_filterFamilyName2)
  {
    goto LABEL_16;
  }

  v12 = _filterFamilyName2;
  navigationController4 = [(_UIFontPickerContentViewController *)self navigationController];
  viewControllers = [navigationController4 viewControllers];
  v15 = [viewControllers objectAtIndexedSubscript:0];
  v16 = v15;
  if (v15 == self)
  {

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  navigationController5 = [(_UIFontPickerContentViewController *)self navigationController];
  viewControllers2 = [navigationController5 viewControllers];
  v19 = [viewControllers2 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController6 = [(_UIFontPickerContentViewController *)self navigationController];
    viewControllers3 = [navigationController6 viewControllers];
    v22 = [viewControllers3 objectAtIndexedSubscript:0];

    v33 = fontCopy;
    v23 = [NSArray arrayWithObjects:&v33 count:1];
    [v22 _setSelectedFonts:v23 scrollToVisible:0 updatingRecentsSection:0];
  }

LABEL_17:
}

- (void)_pickerIsShowingKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 _pickerIsShowingKeyboard:keyboardCopy];
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

- (id)_identifierForSection:(int64_t)section
{
  if (self->_showingRecentsSection)
  {
    if (!section)
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
    if (v5 == section)
    {
      v6 = &off_100099458;

      return v6;
    }

    ++v5;
  }

  v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:section - v5, v3];

  return v6;
}

- (id)_infoForIndexPath:(id)path
{
  fontsBySection = self->_fontsBySection;
  pathCopy = path;
  v6 = -[_UIFontPickerContentViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  v7 = [(NSMutableDictionary *)fontsBySection objectForKeyedSubscript:v6];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (id)_indexPathsForFont:(id)font
{
  fontCopy = font;
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

      if ([v11 matchesFontDescriptor:fontCopy])
      {
        goto LABEL_16;
      }

      if (!self->_showingSingleFamily)
      {
LABEL_24:
        if ([v12 matchesFamilyForFontDescriptor:fontCopy])
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(_UIFontPickerContentViewController *)self _isSettingsLinkSection:section])
  {
    return 1;
  }

  fontsBySection = self->_fontsBySection;
  v8 = [(_UIFontPickerContentViewController *)self _identifierForSection:section];
  v9 = [(NSMutableDictionary *)fontsBySection objectForKeyedSubscript:v8];
  v10 = [v9 count];

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = [(NSMutableArray *)self->_sections count];
  v5 = &v4[[(_UIFontPickerContentViewController *)self _numberOfExtraTopSections]];
  return &v5[[(_UIFontPickerContentViewController *)self _hasSettingsLinkSection]];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_showingSingleFamily)
  {
    v7 = [(NSMutableDictionary *)self->_fontsBySection objectForKeyedSubscript:&off_100099428];
    firstObject = [v7 firstObject];
    localizedFamilyName = [firstObject localizedFamilyName];
    v10 = localizedFamilyName;
    v11 = &stru_100099070;
    if (localizedFamilyName)
    {
      v11 = localizedFamilyName;
    }

    v12 = v11;
    goto LABEL_5;
  }

  if ([(_UIFontPickerContentViewController *)self _isSettingsLinkSection:section])
  {
    v13 = &stru_100099070;
    goto LABEL_14;
  }

  v7 = [(_UIFontPickerContentViewController *)self _identifierForSection:section];
  if ([v7 isEqual:&off_100099440])
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    firstObject = v14;
    v15 = @"FONT_PICKER_RECENTS";
    v16 = @"Recents";
LABEL_12:
    v13 = [v14 localizedStringForKey:v15 value:v16 table:@"Localizable"];
    goto LABEL_13;
  }

  if ([v7 isEqual:&off_100099458])
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    firstObject = v14;
    v15 = @"FONT_PICKER_SYSTEM_EXTRAS";
    v16 = @"System";
    goto LABEL_12;
  }

  firstObject = [(UILocalizedIndexedCollation *)self->_collation sectionTitles];
  v10 = [(_UIFontPickerContentViewController *)self _identifierForSection:section];
  v12 = [firstObject objectAtIndexedSubscript:{objc_msgSend(v10, "integerValue")}];
LABEL_5:
  v13 = v12;

LABEL_13:
LABEL_14:

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"UIFontPickerCell"];
  if (!v8)
  {
    v8 = [[_UIFontPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UIFontPickerCell"];
  }

  if (-[_UIFontPickerContentViewController _isSettingsLinkSection:](self, "_isSettingsLinkSection:", [pathCopy section]))
  {
    defaultContentConfiguration = [(_UIFontPickerTableViewCell *)v8 defaultContentConfiguration];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"FONT_PICKER_SETTINGS_LINK_SHORT" value:@"Manage Fonts" table:@"Localizable"];
    [defaultContentConfiguration setText:v11];

    if ([(UIFontPickerViewControllerConfiguration *)self->_configuration displayUsingSystemFont])
    {
      leading = 10.0;
      [defaultContentConfiguration setImageToTextPadding:10.0];
      [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:0];
      top = 0.0;
      bottom = 0.0;
      trailing = 10.0;
    }

    else
    {
      [defaultContentConfiguration setAxesPreservingSuperviewLayoutMargins:1];
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
    }

    [defaultContentConfiguration setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
    _settingsLinkSymbolImage = [(_UIFontPickerContentViewController *)self _settingsLinkSymbolImage];
    [defaultContentConfiguration setImage:_settingsLinkSymbolImage];

    [(_UIFontPickerTableViewCell *)v8 setContentConfiguration:defaultContentConfiguration];
    [(_UIFontPickerTableViewCell *)v8 setAccessoryType:1];
    v22 = v8;
  }

  else
  {
    v16 = [(_UIFontPickerContentViewController *)self _infoForIndexPath:pathCopy];
    _clientFontContext = [(_UIFontPickerContentViewController *)self _clientFontContext];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10006F630;
    v36[3] = &unk_100098D60;
    v18 = v8;
    v37 = v18;
    defaultContentConfiguration = v16;
    v38 = defaultContentConfiguration;
    selfCopy = self;
    [_clientFontContext runBlockInClientFontContext:v36];

    if ([(UIFontPickerViewControllerConfiguration *)self->_configuration includeFaces]&& !self->_showingSingleFamily)
    {
      hasMultipleFaces = [defaultContentConfiguration hasMultipleFaces];
      v20 = 0;
    }

    else
    {
      hasMultipleFaces = 0;
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
      v29 = defaultContentConfiguration;
      [(NSArray *)selectedFonts enumerateObjectsUsingBlock:v28];
    }

    if (hasMultipleFaces)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if (-[_UIFontPickerContentViewController _isSettingsLinkSection:](self, "_isSettingsLinkSection:", [pathCopy section]))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

    sub_10006C3C0();
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];

    v7 = [(_UIFontPickerContentViewController *)self _infoForIndexPath:pathCopy];
    fontDescriptor = [v7 fontDescriptor];
    [(_UIFontPickerContentViewController *)self _pickerDidSelectFont:fontDescriptor];
  }
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  if ([(UIFontPickerViewControllerConfiguration *)self->_configuration _showsSectionIndexBar]&& !self->_showingSingleFamily)
  {
    sectionIndexTitles = [(UILocalizedIndexedCollation *)self->_collation sectionIndexTitles];
  }

  else
  {
    sectionIndexTitles = &__NSArray0__struct;
  }

  return sectionIndexTitles;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  if (![(UIFontPickerViewControllerConfiguration *)self->_configuration _showsSectionIndexBar:view]|| self->_showingSingleFamily)
  {
    return 0;
  }

  sections = self->_sections;
  v9 = [NSNumber numberWithInteger:[(UILocalizedIndexedCollation *)self->_collation sectionForSectionIndexTitleAtIndex:index]];
  v10 = [(NSMutableArray *)sections indexOfObject:v9];
  v7 = &v10[[(_UIFontPickerContentViewController *)self _numberOfExtraTopSections]];

  return v7;
}

- (id)_fontsForSearchTerm:(id)term
{
  termCopy = term;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = 456;
  selfCopy = self;
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
        if (([v11 isEqual:{v9, v20, selfCopy}] & 1) == 0)
        {
          v12 = v9;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = [*(&selfCopy->super.super.super.super.isa + v20) objectForKeyedSubscript:v11];
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
                if ([v18 matchesSearchString:termCopy])
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

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  obj = [searchBar text];

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

- (void)willPresentSearchController:(id)controller
{
  tableView = [(_UIFontPickerContentViewController *)self tableView];
  [tableView setKeyboardDismissMode:1];

  [(_UIFontPickerContentViewController *)self _pickerIsShowingKeyboard:1];
  if (!self->_hideNavBar)
  {
    v7 = objc_opt_new();
    [v7 configureWithOpaqueBackground];
    navigationItem = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem setScrollEdgeAppearance:v7];

    navigationItem2 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem2 setCompactScrollEdgeAppearance:v7];
  }
}

- (void)willDismissSearchController:(id)controller
{
  [(_UIFontPickerContentViewController *)self _pickerIsShowingKeyboard:0];
  if (!self->_hideNavBar)
  {
    v6 = objc_opt_new();
    [v6 configureWithTransparentBackground];
    navigationItem = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem setScrollEdgeAppearance:v6];

    navigationItem2 = [(_UIFontPickerContentViewController *)self navigationItem];
    [navigationItem2 setCompactScrollEdgeAppearance:v6];
  }
}

- (_UIFontPickerContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end