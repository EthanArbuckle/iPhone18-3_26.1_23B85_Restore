@interface MapsDebugValuesViewController
- (BOOL)debugTableRow:(id)row matches:(id)matches;
- (BOOL)debugTableSection:(id)section matches:(id)matches;
- (MapsDebugNavigationTableRow)originNavigationRow;
- (MapsDebugValuesViewController)init;
- (MapsDebugViewControllerDelegate)delegate;
- (MapsDebugViewControllerNavigationDelegate)navigationDelegate;
- (NSString)description;
- (id)_currentChromeViewController;
- (id)_sections;
- (id)addSectionWithTitle:(id)title content:(id)content;
- (id)indexPathForRow:(id)row;
- (id)rowAtIndexPath:(id)path;
- (id)rowForIndexPath:(id)path;
- (id)sectionAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (void)_applySnapshotWithFilterText:(id)text animated:(BOOL)animated;
- (void)_done;
- (void)_performBlockAfterDismiss:(BOOL)dismiss block:(id)block;
- (void)dealloc;
- (void)loadContentNowIfNeeded:(BOOL)needed;
- (void)prepareContent;
- (void)rebuildSections;
- (void)reloadData;
- (void)segueToViewController:(id)controller;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willNavigateToSubsequentController:(id)controller;
@end

@implementation MapsDebugValuesViewController

- (MapsDebugNavigationTableRow)originNavigationRow
{
  WeakRetained = objc_loadWeakRetained(&self->_originNavigationRow);

  return WeakRetained;
}

- (MapsDebugViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MapsDebugViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(MapsDebugValuesViewController *)self _applySnapshotWithFilterText:text animated:1];
}

- (void)rebuildSections
{
  sections = self->_sections;
  self->_sections = 0;

  [(MapsDebugValuesViewController *)self loadContentNowIfNeeded:1];

  [(MapsDebugValuesViewController *)self reloadData];
}

- (void)reloadData
{
  tableView = [(MapsDebugValuesViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(MapsDebugValuesViewController *)self rowAtIndexPath:pathCopy];
  selectionAction = [v7 selectionAction];

  if (selectionAction)
  {
    selectionAction2 = [v7 selectionAction];
    selectionAction2[2]();
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v9 = [(MapsDebugValuesViewController *)self rowAtIndexPath:path];
  currentCell = [v9 currentCell];

  if (currentCell == cellCopy)
  {
    [v9 setCurrentCell:0];
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(MapsDebugValuesViewController *)self rowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[NSMutableArray array];
    [v10 addObject:pathCopy];
    navigationController = [(MapsDebugValuesViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v13 = [viewControllers count];

    v14 = v13 - 1;
    if (v13 == 1)
    {
LABEL_7:
      reverseObjectEnumerator = [v10 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v27 = [allObjects mutableCopy];

      title = [v9 title];
      objc_initWeak(&location, self);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100739F50;
      v32[3] = &unk_101627D98;
      objc_copyWeak(&v35, &location);
      v29 = title;
      v33 = v29;
      v10 = v27;
      v34 = v10;
      v30 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v32];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    else
    {
      while (1)
      {
        navigationController2 = [(MapsDebugValuesViewController *)self navigationController];
        viewControllers2 = [navigationController2 viewControllers];
        v17 = [viewControllers2 objectAtIndex:v14];

        navigationController3 = [(MapsDebugValuesViewController *)self navigationController];
        viewControllers3 = [navigationController3 viewControllers];
        v20 = [viewControllers3 objectAtIndex:v14 - 1];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v17 = v17;
        originNavigationRow = [v17 originNavigationRow];

        if (!originNavigationRow)
        {

          break;
        }

        v22 = v20;
        originNavigationRow2 = [v17 originNavigationRow];
        v24 = [v22 indexPathForRow:originNavigationRow2];

        [v10 addObject:v24];
        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  rowIdentifierMap = self->_rowIdentifierMap;
  viewCopy = view;
  v8 = [(NSDictionary *)rowIdentifierMap objectForKeyedSubscript:identifier];
  v9 = [v8 cellForTableView:viewCopy];

  selectionAction = [v8 selectionAction];
  [v9 setSelectionStyle:selectionAction != 0];

  [v8 setCurrentCell:v9];

  return v9;
}

- (id)rowAtIndexPath:(id)path
{
  v4 = [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  v5 = [(NSDictionary *)self->_rowIdentifierMap objectForKeyedSubscript:v4];

  return v5;
}

- (id)sectionAtIndex:(int64_t)index
{
  v4 = [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource sectionIdentifierForIndex:index];
  v5 = [(NSDictionary *)self->_sectionIdentifierMap objectForKeyedSubscript:v4];

  return v5;
}

- (void)_done
{
  delegate = [(MapsDebugValuesViewController *)self delegate];
  [delegate debugControllerDidFinish:self];
}

- (void)willNavigateToSubsequentController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MapsDebugValuesViewController *)self delegate];
  [controllerCopy setDelegate:delegate];
}

- (void)segueToViewController:(id)controller
{
  controllerCopy = controller;
  [(MapsDebugValuesViewController *)self willNavigateToSubsequentController:controllerCopy];
  navigationDelegate = [(MapsDebugValuesViewController *)self navigationDelegate];

  if (navigationDelegate)
  {
    navigationDelegate2 = [(MapsDebugValuesViewController *)self navigationDelegate];
    [navigationDelegate2 debugViewController:self segueToViewController:controllerCopy];
  }

  else
  {
    navigationDelegate2 = [(MapsDebugValuesViewController *)self navigationController];
    [navigationDelegate2 pushViewController:controllerCopy animated:1];
  }
}

- (void)_applySnapshotWithFilterText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  if (self->_searchController)
  {
    v30 = animatedCopy;
    v33 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_sections count]];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = self->_sections;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
    v9 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
    if (v8)
    {
      v10 = v8;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [NSNumber numberWithUnsignedLong:*(*(&v47 + 1) + 8 * i)];
          v14 = [(NSDictionary *)self->_sectionIdentifierMap objectForKeyedSubscript:v13];

          if (v14)
          {
            [v33 addObject:v13];
          }
        }

        v10 = [(NSArray *)v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v10);
    }

    v32 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    [v32 appendSectionsWithIdentifiers:v33];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = self->_sections;
    v35 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v35)
    {
      v34 = *v44;
      v38 = textCopy;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * j);
          v17 = [NSNumber numberWithUnsignedLong:v16];
          v18 = [*(&self->super.super.super.super.isa + v9[496]) objectForKeyedSubscript:v17];

          if (v18)
          {
            v36 = v17;
            v37 = j;
            if ([textCopy length])
            {
              v19 = [(MapsDebugValuesViewController *)self debugTableSection:v16 matches:textCopy];
            }

            else
            {
              v19 = 1;
            }

            rows = [v16 rows];
            v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [rows count]);

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            rows2 = [v16 rows];
            v23 = [rows2 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v40;
              do
              {
                for (k = 0; k != v24; k = k + 1)
                {
                  if (*v40 != v25)
                  {
                    objc_enumerationMutation(rows2);
                  }

                  v27 = *(*(&v39 + 1) + 8 * k);
                  v28 = [NSNumber numberWithUnsignedLong:v27];
                  v29 = [(NSDictionary *)self->_rowIdentifierMap objectForKeyedSubscript:v28];

                  if (v29 && ((v19 & 1) != 0 || ![v38 length] || -[MapsDebugValuesViewController debugTableRow:matches:](self, "debugTableRow:matches:", v27, v38)))
                  {
                    [v21 addObject:v28];
                  }
                }

                v24 = [rows2 countByEnumeratingWithState:&v39 objects:v51 count:16];
              }

              while (v24);
            }

            v17 = v36;
            [v32 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v36];

            j = v37;
            textCopy = v38;
            v9 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
          }
        }

        v35 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v35);
    }

    [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v32 animatingDifferences:v30];
  }
}

- (BOOL)debugTableRow:(id)row matches:(id)matches
{
  rowCopy = row;
  matchesCopy = matches;
  title = [rowCopy title];
  if ([title localizedCaseInsensitiveContainsString:matchesCopy])
  {
    v8 = 1;
  }

  else
  {
    subtitle = [rowCopy subtitle];
    v8 = [subtitle localizedCaseInsensitiveContainsString:matchesCopy];
  }

  return v8;
}

- (BOOL)debugTableSection:(id)section matches:(id)matches
{
  sectionCopy = section;
  matchesCopy = matches;
  title = [sectionCopy title];
  if ([title localizedCaseInsensitiveContainsString:matchesCopy])
  {
    v8 = 1;
  }

  else
  {
    footer = [sectionCopy footer];
    v8 = [footer localizedCaseInsensitiveContainsString:matchesCopy];
  }

  return v8;
}

- (void)loadContentNowIfNeeded:(BOOL)needed
{
  if (!self->_sections)
  {
    selfCopy = self;
    neededCopy = needed;
    v4 = objc_alloc_init(NSMutableArray);
    mutableSections = selfCopy->_mutableSections;
    selfCopy->_mutableSections = v4;

    [(MapsDebugValuesViewController *)selfCopy prepareContent];
    v6 = [(NSMutableArray *)selfCopy->_mutableSections copy];
    sections = selfCopy->_sections;
    selfCopy->_sections = v6;

    v8 = selfCopy->_mutableSections;
    selfCopy->_mutableSections = 0;

    v36 = +[NSMutableDictionary dictionary];
    v9 = +[NSMutableDictionary dictionary];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = selfCopy->_sections;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
    v35 = selfCopy;
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          [v15 setDisplayingViewController:selfCopy];
          [v15 commit];
          if ([v15 visible])
          {
            v16 = [NSNumber numberWithUnsignedLong:v15];
            [v36 setObject:v15 forKeyedSubscript:v16];

            selfCopy = v35;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v12);
    }

    v17 = [v36 copy];
    sectionIdentifierMap = selfCopy->_sectionIdentifierMap;
    selfCopy->_sectionIdentifierMap = v17;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = selfCopy->_sections;
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v38 = *v44;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v43 + 1) + 8 * j);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          rows = [v22 rows];
          v24 = [rows countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v40;
            do
            {
              for (k = 0; k != v25; k = k + 1)
              {
                if (*v40 != v26)
                {
                  objc_enumerationMutation(rows);
                }

                v28 = *(*(&v39 + 1) + 8 * k);
                if ([v28 visible])
                {
                  v29 = [NSNumber numberWithUnsignedLong:v28];
                  [v9 setObject:v28 forKeyedSubscript:v29];
                }
              }

              v25 = [rows countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v25);
          }
        }

        v20 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v20);
    }

    v30 = [v9 copy];
    rowIdentifierMap = v35->_rowIdentifierMap;
    v35->_rowIdentifierMap = v30;

    if ([(UISearchController *)v35->_searchController isActive])
    {
      searchBar = [(UISearchController *)v35->_searchController searchBar];
      text = [searchBar text];
    }

    else
    {
      text = 0;
    }

    [(MapsDebugValuesViewController *)v35 _applySnapshotWithFilterText:text animated:neededCopy];
  }
}

- (id)_sections
{
  [(MapsDebugValuesViewController *)self loadContentNowIfNeeded:0];
  sections = self->_sections;

  return sections;
}

- (id)addSectionWithTitle:(id)title content:(id)content
{
  contentCopy = content;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugTableSection);
  [(MapsDebugTableSection *)v8 setTitle:titleCopy];

  contentCopy[2](contentCopy, v8);
  [(MapsDebugTableSection *)v8 commit];
  [(NSMutableArray *)self->_mutableSections addObject:v8];

  return v8;
}

- (id)indexPathForRow:(id)row
{
  rowCopy = row;
  sections = self->_sections;
  section = [rowCopy section];
  v7 = [(NSArray *)sections indexOfObject:section];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || ([rowCopy section], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "rows"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "indexOfObject:", rowCopy), v9, v8, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = 0;
  }

  else
  {
    v11 = [NSIndexPath indexPathForRow:v10 inSection:v7];
  }

  return v11;
}

- (id)rowForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->_sections count])
  {
    v11 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
    v7 = [pathCopy row];
    rows = [v6 rows];
    v9 = [rows count];

    if (v7 >= v9)
    {
      v11 = 0;
    }

    else
    {
      rows2 = [v6 rows];
      v11 = [rows2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    }
  }

  return v11;
}

- (void)prepareContent
{
  if (self->_navigationDestinationTitle)
  {
    [(MapsDebugValuesViewController *)self setTitle:?];
  }

  prepareContentBlock = self->_prepareContentBlock;
  if (prepareContentBlock)
  {
    v4 = *(prepareContentBlock + 2);

    v4();
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  title = [(MapsDebugValuesViewController *)self title];
  originNavigationRow = [(MapsDebugValuesViewController *)self originNavigationRow];
  v6 = [NSString stringWithFormat:@"<%@: %p title:%@ from:%@>", v3, self, title, originNavigationRow];

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MapsDebugValuesViewController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:appear];
  [(MapsDebugValuesViewController *)self loadContentNowIfNeeded:0];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MapsDebugValuesViewController;
  [(MapsDebugValuesViewController *)&v13 viewDidLoad];
  if (self->_searchController)
  {
    v3 = [MapsDebugValuesViewDiffableDataSource alloc];
    tableView = [(MapsDebugValuesViewController *)self tableView];
    v5 = sub_10009ACF0(self);
    v6 = [(MapsDebugValuesViewDiffableDataSource *)v3 initWithTableView:tableView cellProvider:v5];
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v6;

    [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource setDefaultRowAnimation:0];
    objc_storeWeak(&self->_diffableDataSource->_debugVC, self);
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar setDelegate:self];

    searchController = self->_searchController;
    navigationItem = [(MapsDebugValuesViewController *)self navigationItem];
    [navigationItem setSearchController:searchController];

    searchBar2 = [(UISearchController *)self->_searchController searchBar];
    [searchBar2 setTranslatesAutoresizingMaskIntoConstraints:0];

    searchBar3 = [(UISearchController *)self->_searchController searchBar];
    [searchBar3 setAutocorrectionType:1];
  }
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setDisplayingViewController:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MapsDebugValuesViewController;
  [(MapsDebugValuesViewController *)&v8 dealloc];
}

- (MapsDebugValuesViewController)init
{
  v9.receiver = self;
  v9.super_class = MapsDebugValuesViewController;
  v2 = [(MapsDebugValuesViewController *)&v9 initWithStyle:2];
  if (v2)
  {
    navigationDestinationTitle = [objc_opt_class() navigationDestinationTitle];
    [(MapsDebugValuesViewController *)v2 setTitle:navigationDestinationTitle];

    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"_done"];
    navigationItem = [(MapsDebugValuesViewController *)v2 navigationItem];
    [navigationItem setRightBarButtonItem:v4];

    if ([objc_opt_class() isSearchable])
    {
      v6 = objc_alloc_init(UISearchController);
      searchController = v2->_searchController;
      v2->_searchController = v6;

      [(UISearchController *)v2->_searchController setDelegate:v2];
      [(UISearchController *)v2->_searchController setActive:1];
      [(UISearchController *)v2->_searchController setSearchResultsUpdater:v2];
      [(UISearchController *)v2->_searchController setObscuresBackgroundDuringPresentation:0];
    }
  }

  return v2;
}

- (void)_performBlockAfterDismiss:(BOOL)dismiss block:(id)block
{
  dismissCopy = dismiss;
  blockCopy = block;
  presentingViewController = [(MapsDebugValuesViewController *)self presentingViewController];
  _maps_mapsSceneDelegate = [presentingViewController _maps_mapsSceneDelegate];

  chromeViewController = [_maps_mapsSceneDelegate chromeViewController];
  if (dismissCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100DA00A0;
    v10[3] = &unk_101661090;
    v12 = blockCopy;
    v11 = chromeViewController;
    [(MapsDebugValuesViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, chromeViewController);
  }
}

- (id)_currentChromeViewController
{
  presentingViewController = [(MapsDebugValuesViewController *)self presentingViewController];
  _maps_mapsSceneDelegate = [presentingViewController _maps_mapsSceneDelegate];

  chromeViewController = [_maps_mapsSceneDelegate chromeViewController];

  return chromeViewController;
}

@end