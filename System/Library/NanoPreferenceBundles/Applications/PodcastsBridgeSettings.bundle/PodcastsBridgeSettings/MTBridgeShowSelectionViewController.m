@interface MTBridgeShowSelectionViewController
- (MTBridgeShowSelectionViewController)init;
- (MTBridgeShowSelectionViewControllerDelegate)delegate;
- (id)_addedShowsPredicate;
- (id)_allShowsPredicate;
- (id)_otherShowsPredicate;
- (id)_propertiesToFetch;
- (id)_specifierForShow:(id)a3;
- (id)specifiers;
- (id)title;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_doneButtonPressed:(id)a3;
- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3;
- (void)_updatePredicates;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation MTBridgeShowSelectionViewController

- (MTBridgeShowSelectionViewController)init
{
  v24.receiver = self;
  v24.super_class = MTBridgeShowSelectionViewController;
  v2 = [(MTBridgeShowSelectionViewController *)&v24 init];
  if (v2)
  {
    v3 = kMTPodcastEntityName;
    v4 = [NSFetchRequest fetchRequestWithEntityName:kMTPodcastEntityName];
    v5 = [(MTBridgeShowSelectionViewController *)v2 _addedShowsPredicate];
    [v4 setPredicate:v5];

    v6 = [(MTBridgeShowSelectionViewController *)v2 _sortDescriptors];
    [v4 setSortDescriptors:v6];

    v7 = [(MTBridgeShowSelectionViewController *)v2 _propertiesToFetch];
    [v4 setPropertiesToFetch:v7];

    v8 = [NSFetchedResultsController alloc];
    v9 = +[MTDB sharedInstance];
    v10 = [v9 mainQueueContext];
    v11 = [v8 initWithFetchRequest:v4 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];
    addedShowsFRC = v2->_addedShowsFRC;
    v2->_addedShowsFRC = v11;

    [(NSFetchedResultsController *)v2->_addedShowsFRC setDelegate:v2];
    v13 = [NSFetchRequest fetchRequestWithEntityName:v3];
    v14 = [(MTBridgeShowSelectionViewController *)v2 _otherShowsPredicate];
    [v13 setPredicate:v14];

    v15 = [(MTBridgeShowSelectionViewController *)v2 _sortDescriptors];
    [v13 setSortDescriptors:v15];

    v16 = [(MTBridgeShowSelectionViewController *)v2 _propertiesToFetch];
    [v13 setPropertiesToFetch:v16];

    v17 = [NSFetchedResultsController alloc];
    v18 = +[MTDB sharedInstance];
    v19 = [v18 mainQueueContext];
    v20 = [v17 initWithFetchRequest:v13 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];
    otherShowsFRC = v2->_otherShowsFRC;
    v2->_otherShowsFRC = v20;

    [(NSFetchedResultsController *)v2->_otherShowsFRC setDelegate:v2];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v2 selector:"_handlePodcastsIdentifiersDidChangeNotification:" name:NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTBridgeShowSelectionViewController;
  [(MTBridgeShowSelectionViewController *)&v3 viewDidLoad];
  [(MTBridgeShowSelectionViewController *)self setEditable:1];
}

- (id)title
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"ADD_SHOWS_VIEW_TITLE" value:@"Add Shows" table:0];

  return v3;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "MTBridgeShowSelectionViewController loading specifiers", buf, 2u);
    }

    v7 = +[NSMutableArray array];
    addedShowsFRC = self->_addedShowsFRC;
    v55 = 0;
    v9 = [(NSFetchedResultsController *)addedShowsFRC performFetch:&v55];
    v10 = v55;
    if ((v9 & 1) == 0)
    {
      v11 = _MTLogCategoryBridge();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Could not fetch added shows: %@", buf, 0xCu);
      }
    }

    v12 = [(NSFetchedResultsController *)self->_addedShowsFRC fetchedObjects];
    v13 = [v12 count];

    if (v13)
    {
      v14 = +[NSBundle podcastsFoundationBundle];
      v15 = [v14 localizedStringForKey:@"ADDED_SHOWS_SECTION_HEADER" value:@"Added Shows" table:0];
      v16 = [PSSpecifier groupSpecifierWithID:@"AddedShowsGroup" name:v15];
      [v7 addObject:v16];
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v17 = [(NSFetchedResultsController *)self->_addedShowsFRC fetchedObjects];
    v18 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(MTBridgeShowSelectionViewController *)self _specifierForShow:*(*(&v51 + 1) + 8 * i)];
          [v7 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v19);
    }

    otherShowsFRC = self->_otherShowsFRC;
    v50 = 0;
    v24 = [(NSFetchedResultsController *)otherShowsFRC performFetch:&v50];
    v25 = v50;
    if ((v24 & 1) == 0)
    {
      v26 = _MTLogCategoryBridge();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Could not fetch other shows: %@", buf, 0xCu);
      }
    }

    v27 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchedObjects];
    v28 = [v27 count];

    if (v28)
    {
      v29 = +[NSBundle podcastsFoundationBundle];
      v30 = [v29 localizedStringForKey:@"CHOOSE_SHOWS_SECTION_HEADER" value:@"Choose Shows" table:0];
      v31 = [PSSpecifier groupSpecifierWithID:@"OtherShowsGroup" name:v30];
      [v7 addObject:v31];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchedObjects];
    v33 = [v32 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v47;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [(MTBridgeShowSelectionViewController *)self _specifierForShow:*(*(&v46 + 1) + 8 * j)];
          [v7 addObject:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v34);
    }

    if ([v7 count])
    {
      [(MTBridgeShowSelectionViewController *)self _setContentUnavailableConfiguration:0];
    }

    else
    {
      v38 = +[UIContentUnavailableConfiguration emptyProminentConfiguration];
      v39 = +[NSBundle podcastsFoundationBundle];
      v40 = [v39 localizedStringForKey:@"NO_CONTENT_TITLE" value:@"No Shows Yet" table:0];
      [v38 setText:v40];

      v41 = +[NSBundle podcastsFoundationBundle];
      v42 = [v41 localizedStringForKey:@"NO_CONTENT_MESSAGE" value:@"To download episodes table:{follow some shows first.", 0}];
      [v38 setSecondaryText:v42];

      [(MTBridgeShowSelectionViewController *)self _setContentUnavailableConfiguration:v38];
    }

    v43 = [v7 copy];
    v44 = *&self->PSEditableListController_opaque[v2];
    *&self->PSEditableListController_opaque[v2] = v43;

    v4 = *&self->PSEditableListController_opaque[v2];
  }

  return v4;
}

- (id)_specifierForShow:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];

  v7 = [v4 feedURL];
  [v6 setIdentifier:v7];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v6 setProperty:&__kCFBooleanFalse forKey:NMBUISpecifierShouldShowSwitchKey];
  v8 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
  v9 = [v4 feedURL];
  [v8 setModelObject:v9];

  v10 = [v4 title];
  [v8 setTitle:v10];

  [v8 setPlaceholderSystemImageName:@"podcasts"];
  v11 = [v4 artworkCatalog];

  [v8 setArtworkCatalog:v11];
  [v6 setProperty:v8 forKey:NMBUISpecifierCellConfigurationKey];

  return v6;
}

- (id)_propertiesToFetch
{
  v4[0] = kPodcastTitle;
  v4[1] = kPodcastFeedUrl;
  v4[2] = kPodcastUuid;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_allShowsPredicate
{
  v2 = +[MTPodcast predicateForWatchLibraryShows];
  v3 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastTitle];
  v4 = [v2 AND:v3];
  v5 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v6 = [v4 AND:v5];

  return v6;
}

- (id)_addedShowsPredicate
{
  v2 = [(MTBridgeShowSelectionViewController *)self _allShowsPredicate];
  v3 = kPodcastFeedUrl;
  v4 = +[NMSMediaPinningManager sharedManager];
  v5 = [v4 podcastsSelectedShowFeedURLs];
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", v3, v5];
  v7 = [v2 AND:v6];

  return v7;
}

- (id)_otherShowsPredicate
{
  v2 = [(MTBridgeShowSelectionViewController *)self _allShowsPredicate];
  v3 = kPodcastFeedUrl;
  v4 = +[NMSMediaPinningManager sharedManager];
  v5 = [v4 podcastsSelectedShowFeedURLs];
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", v3, v5];
  v7 = [v6 NOT];
  v8 = [v2 AND:v7];

  return v8;
}

- (void)_updatePredicates
{
  v3 = [(MTBridgeShowSelectionViewController *)self _addedShowsPredicate];
  v4 = [(NSFetchedResultsController *)self->_addedShowsFRC fetchRequest];
  [v4 setPredicate:v3];

  v6 = [(MTBridgeShowSelectionViewController *)self _otherShowsPredicate];
  v5 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchRequest];
  [v5 setPredicate:v6];
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = [(MTBridgeShowSelectionViewController *)self delegate];
  [v4 viewControllerDidSelectDone:self];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(MTBridgeShowSelectionViewController *)self numberOfGroups]== &dword_0 + 1)
  {
    v6 = [(MTBridgeShowSelectionViewController *)self specifierAtIndexPath:v5];

    v7 = [(MTBridgeShowSelectionViewController *)self getGroupSpecifierForSpecifier:v6];

    v8 = [v7 identifier];
    LODWORD(v6) = [v8 isEqualToString:@"AddedShowsGroup"];

    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v10 = [v5 section];

    if (v10)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v25 = a3;
  v8 = a5;
  v9 = [(MTBridgeShowSelectionViewController *)self specifierAtIndexPath:v8];
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3];
  v11 = v10;
  if (a4 == 2)
  {
LABEL_4:
    v12 = [v9 propertyForKey:NMBUISpecifierCellConfigurationKey];
    v13 = [v12 modelObject];

    v14 = +[NMSMediaPinningManager sharedManager];
    [v14 setPodcastsDownloadSettings:v11 forShowFeedURL:v13];

    [(MTBridgeShowSelectionViewController *)self _updatePredicates];
    v15 = OBJC_IVAR___PSListController__specifiers;
    v16 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

    v17 = [(MTBridgeShowSelectionViewController *)self specifiers];
    [(MTBridgeShowSelectionViewController *)self createGroupIndices];
    v18 = [v25 numberOfSections];
    v19 = [v25 dataSource];
    v20 = [v19 numberOfSectionsInTableView:v25];

    if (v20 == v18)
    {
      v21 = *&self->PSEditableListController_opaque[v15];
      v22 = [v9 identifier];
      v23 = [v21 indexOfSpecifierWithID:v22];

      v24 = [(MTBridgeShowSelectionViewController *)self indexPathForIndex:v23];
      [v25 moveRowAtIndexPath:v8 toIndexPath:v24];
    }

    else
    {
      [v25 reloadData];
    }

    goto LABEL_8;
  }

  if (a4 == 1)
  {
    [v10 setNumberOfEpisodes:0];
    goto LABEL_4;
  }

LABEL_8:
}

- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3
{
  [(MTBridgeShowSelectionViewController *)self _updatePredicates];

  [(MTBridgeShowSelectionViewController *)self reloadSpecifiers];
}

- (MTBridgeShowSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end