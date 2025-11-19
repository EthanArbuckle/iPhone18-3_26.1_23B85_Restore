@interface MapsDebugValuesViewController
- (BOOL)debugTableRow:(id)a3 matches:(id)a4;
- (BOOL)debugTableSection:(id)a3 matches:(id)a4;
- (MapsDebugNavigationTableRow)originNavigationRow;
- (MapsDebugValuesViewController)init;
- (MapsDebugViewControllerDelegate)delegate;
- (MapsDebugViewControllerNavigationDelegate)navigationDelegate;
- (NSString)description;
- (id)_currentChromeViewController;
- (id)_sections;
- (id)addSectionWithTitle:(id)a3 content:(id)a4;
- (id)indexPathForRow:(id)a3;
- (id)rowAtIndexPath:(id)a3;
- (id)rowForIndexPath:(id)a3;
- (id)sectionAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_applySnapshotWithFilterText:(id)a3 animated:(BOOL)a4;
- (void)_done;
- (void)_performBlockAfterDismiss:(BOOL)a3 block:(id)a4;
- (void)dealloc;
- (void)loadContentNowIfNeeded:(BOOL)a3;
- (void)prepareContent;
- (void)rebuildSections;
- (void)reloadData;
- (void)segueToViewController:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willNavigateToSubsequentController:(id)a3;
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

- (void)updateSearchResultsForSearchController:(id)a3
{
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(MapsDebugValuesViewController *)self _applySnapshotWithFilterText:v4 animated:1];
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
  v2 = [(MapsDebugValuesViewController *)self tableView];
  [v2 reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MapsDebugValuesViewController *)self rowAtIndexPath:v6];
  v8 = [v7 selectionAction];

  if (v8)
  {
    v9 = [v7 selectionAction];
    v9[2]();
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v9 = [(MapsDebugValuesViewController *)self rowAtIndexPath:a5];
  v8 = [v9 currentCell];

  if (v8 == v7)
  {
    [v9 setCurrentCell:0];
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(MapsDebugValuesViewController *)self rowAtIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[NSMutableArray array];
    [v10 addObject:v8];
    v11 = [(MapsDebugValuesViewController *)self navigationController];
    v12 = [v11 viewControllers];
    v13 = [v12 count];

    v14 = v13 - 1;
    if (v13 == 1)
    {
LABEL_7:
      v25 = [v10 reverseObjectEnumerator];
      v26 = [v25 allObjects];
      v27 = [v26 mutableCopy];

      v28 = [v9 title];
      objc_initWeak(&location, self);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100739F50;
      v32[3] = &unk_101627D98;
      objc_copyWeak(&v35, &location);
      v29 = v28;
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
        v15 = [(MapsDebugValuesViewController *)self navigationController];
        v16 = [v15 viewControllers];
        v17 = [v16 objectAtIndex:v14];

        v18 = [(MapsDebugValuesViewController *)self navigationController];
        v19 = [v18 viewControllers];
        v20 = [v19 objectAtIndex:v14 - 1];

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
        v21 = [v17 originNavigationRow];

        if (!v21)
        {

          break;
        }

        v22 = v20;
        v23 = [v17 originNavigationRow];
        v24 = [v22 indexPathForRow:v23];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  rowIdentifierMap = self->_rowIdentifierMap;
  v7 = a3;
  v8 = [(NSDictionary *)rowIdentifierMap objectForKeyedSubscript:a5];
  v9 = [v8 cellForTableView:v7];

  v10 = [v8 selectionAction];
  [v9 setSelectionStyle:v10 != 0];

  [v8 setCurrentCell:v9];

  return v9;
}

- (id)rowAtIndexPath:(id)a3
{
  v4 = [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a3];
  v5 = [(NSDictionary *)self->_rowIdentifierMap objectForKeyedSubscript:v4];

  return v5;
}

- (id)sectionAtIndex:(int64_t)a3
{
  v4 = [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource sectionIdentifierForIndex:a3];
  v5 = [(NSDictionary *)self->_sectionIdentifierMap objectForKeyedSubscript:v4];

  return v5;
}

- (void)_done
{
  v3 = [(MapsDebugValuesViewController *)self delegate];
  [v3 debugControllerDidFinish:self];
}

- (void)willNavigateToSubsequentController:(id)a3
{
  v4 = a3;
  v5 = [(MapsDebugValuesViewController *)self delegate];
  [v4 setDelegate:v5];
}

- (void)segueToViewController:(id)a3
{
  v4 = a3;
  [(MapsDebugValuesViewController *)self willNavigateToSubsequentController:v4];
  v5 = [(MapsDebugValuesViewController *)self navigationDelegate];

  if (v5)
  {
    v6 = [(MapsDebugValuesViewController *)self navigationDelegate];
    [v6 debugViewController:self segueToViewController:v4];
  }

  else
  {
    v6 = [(MapsDebugValuesViewController *)self navigationController];
    [v6 pushViewController:v4 animated:1];
  }
}

- (void)_applySnapshotWithFilterText:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_searchController)
  {
    v30 = v4;
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
      v38 = v6;
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
            if ([v6 length])
            {
              v19 = [(MapsDebugValuesViewController *)self debugTableSection:v16 matches:v6];
            }

            else
            {
              v19 = 1;
            }

            v20 = [v16 rows];
            v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v22 = [v16 rows];
            v23 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
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
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v39 + 1) + 8 * k);
                  v28 = [NSNumber numberWithUnsignedLong:v27];
                  v29 = [(NSDictionary *)self->_rowIdentifierMap objectForKeyedSubscript:v28];

                  if (v29 && ((v19 & 1) != 0 || ![v38 length] || -[MapsDebugValuesViewController debugTableRow:matches:](self, "debugTableRow:matches:", v27, v38)))
                  {
                    [v21 addObject:v28];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
              }

              while (v24);
            }

            v17 = v36;
            [v32 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v36];

            j = v37;
            v6 = v38;
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

- (BOOL)debugTableRow:(id)a3 matches:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 title];
  if ([v7 localizedCaseInsensitiveContainsString:v6])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 subtitle];
    v8 = [v9 localizedCaseInsensitiveContainsString:v6];
  }

  return v8;
}

- (BOOL)debugTableSection:(id)a3 matches:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 title];
  if ([v7 localizedCaseInsensitiveContainsString:v6])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 footer];
    v8 = [v9 localizedCaseInsensitiveContainsString:v6];
  }

  return v8;
}

- (void)loadContentNowIfNeeded:(BOOL)a3
{
  if (!self->_sections)
  {
    v3 = self;
    v34 = a3;
    v4 = objc_alloc_init(NSMutableArray);
    mutableSections = v3->_mutableSections;
    v3->_mutableSections = v4;

    [(MapsDebugValuesViewController *)v3 prepareContent];
    v6 = [(NSMutableArray *)v3->_mutableSections copy];
    sections = v3->_sections;
    v3->_sections = v6;

    v8 = v3->_mutableSections;
    v3->_mutableSections = 0;

    v36 = +[NSMutableDictionary dictionary];
    v9 = +[NSMutableDictionary dictionary];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v3->_sections;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
    v35 = v3;
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
          [v15 setDisplayingViewController:v3];
          [v15 commit];
          if ([v15 visible])
          {
            v16 = [NSNumber numberWithUnsignedLong:v15];
            [v36 setObject:v15 forKeyedSubscript:v16];

            v3 = v35;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v12);
    }

    v17 = [v36 copy];
    sectionIdentifierMap = v3->_sectionIdentifierMap;
    v3->_sectionIdentifierMap = v17;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v3->_sections;
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
          v23 = [v22 rows];
          v24 = [v23 countByEnumeratingWithState:&v39 objects:v51 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v39 + 1) + 8 * k);
                if ([v28 visible])
                {
                  v29 = [NSNumber numberWithUnsignedLong:v28];
                  [v9 setObject:v28 forKeyedSubscript:v29];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v39 objects:v51 count:16];
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
      v32 = [(UISearchController *)v35->_searchController searchBar];
      v33 = [v32 text];
    }

    else
    {
      v33 = 0;
    }

    [(MapsDebugValuesViewController *)v35 _applySnapshotWithFilterText:v33 animated:v34];
  }
}

- (id)_sections
{
  [(MapsDebugValuesViewController *)self loadContentNowIfNeeded:0];
  sections = self->_sections;

  return sections;
}

- (id)addSectionWithTitle:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugTableSection);
  [(MapsDebugTableSection *)v8 setTitle:v7];

  v6[2](v6, v8);
  [(MapsDebugTableSection *)v8 commit];
  [(NSMutableArray *)self->_mutableSections addObject:v8];

  return v8;
}

- (id)indexPathForRow:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v6 = [v4 section];
  v7 = [(NSArray *)sections indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || ([v4 section], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "rows"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "indexOfObject:", v4), v9, v8, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = 0;
  }

  else
  {
    v11 = [NSIndexPath indexPathForRow:v10 inSection:v7];
  }

  return v11;
}

- (id)rowForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [(NSArray *)self->_sections count])
  {
    v11 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [v4 section]);
    v7 = [v4 row];
    v8 = [v6 rows];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = [v6 rows];
      v11 = [v10 objectAtIndex:{objc_msgSend(v4, "row")}];
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
  v4 = [(MapsDebugValuesViewController *)self title];
  v5 = [(MapsDebugValuesViewController *)self originNavigationRow];
  v6 = [NSString stringWithFormat:@"<%@: %p title:%@ from:%@>", v3, self, v4, v5];

  return v6;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsDebugValuesViewController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:a3];
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
    v4 = [(MapsDebugValuesViewController *)self tableView];
    v5 = sub_10009ACF0(self);
    v6 = [(MapsDebugValuesViewDiffableDataSource *)v3 initWithTableView:v4 cellProvider:v5];
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v6;

    [(MapsDebugValuesViewDiffableDataSource *)self->_diffableDataSource setDefaultRowAnimation:0];
    objc_storeWeak(&self->_diffableDataSource->_debugVC, self);
    v8 = [(UISearchController *)self->_searchController searchBar];
    [v8 setDelegate:self];

    searchController = self->_searchController;
    v10 = [(MapsDebugValuesViewController *)self navigationItem];
    [v10 setSearchController:searchController];

    v11 = [(UISearchController *)self->_searchController searchBar];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(UISearchController *)self->_searchController searchBar];
    [v12 setAutocorrectionType:1];
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
    v3 = [objc_opt_class() navigationDestinationTitle];
    [(MapsDebugValuesViewController *)v2 setTitle:v3];

    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"_done"];
    v5 = [(MapsDebugValuesViewController *)v2 navigationItem];
    [v5 setRightBarButtonItem:v4];

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

- (void)_performBlockAfterDismiss:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MapsDebugValuesViewController *)self presentingViewController];
  v8 = [v7 _maps_mapsSceneDelegate];

  v9 = [v8 chromeViewController];
  if (v4)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100DA00A0;
    v10[3] = &unk_101661090;
    v12 = v6;
    v11 = v9;
    [(MapsDebugValuesViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    (*(v6 + 2))(v6, v9);
  }
}

- (id)_currentChromeViewController
{
  v2 = [(MapsDebugValuesViewController *)self presentingViewController];
  v3 = [v2 _maps_mapsSceneDelegate];

  v4 = [v3 chromeViewController];

  return v4;
}

@end