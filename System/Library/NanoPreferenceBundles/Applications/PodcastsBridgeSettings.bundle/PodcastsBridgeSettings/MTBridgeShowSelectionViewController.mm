@interface MTBridgeShowSelectionViewController
- (MTBridgeShowSelectionViewController)init;
- (MTBridgeShowSelectionViewControllerDelegate)delegate;
- (id)_addedShowsPredicate;
- (id)_allShowsPredicate;
- (id)_otherShowsPredicate;
- (id)_propertiesToFetch;
- (id)_specifierForShow:(id)show;
- (id)specifiers;
- (id)title;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_doneButtonPressed:(id)pressed;
- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)notification;
- (void)_updatePredicates;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
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
    _addedShowsPredicate = [(MTBridgeShowSelectionViewController *)v2 _addedShowsPredicate];
    [v4 setPredicate:_addedShowsPredicate];

    _sortDescriptors = [(MTBridgeShowSelectionViewController *)v2 _sortDescriptors];
    [v4 setSortDescriptors:_sortDescriptors];

    _propertiesToFetch = [(MTBridgeShowSelectionViewController *)v2 _propertiesToFetch];
    [v4 setPropertiesToFetch:_propertiesToFetch];

    v8 = [NSFetchedResultsController alloc];
    v9 = +[MTDB sharedInstance];
    mainQueueContext = [v9 mainQueueContext];
    v11 = [v8 initWithFetchRequest:v4 managedObjectContext:mainQueueContext sectionNameKeyPath:0 cacheName:0];
    addedShowsFRC = v2->_addedShowsFRC;
    v2->_addedShowsFRC = v11;

    [(NSFetchedResultsController *)v2->_addedShowsFRC setDelegate:v2];
    v13 = [NSFetchRequest fetchRequestWithEntityName:v3];
    _otherShowsPredicate = [(MTBridgeShowSelectionViewController *)v2 _otherShowsPredicate];
    [v13 setPredicate:_otherShowsPredicate];

    _sortDescriptors2 = [(MTBridgeShowSelectionViewController *)v2 _sortDescriptors];
    [v13 setSortDescriptors:_sortDescriptors2];

    _propertiesToFetch2 = [(MTBridgeShowSelectionViewController *)v2 _propertiesToFetch];
    [v13 setPropertiesToFetch:_propertiesToFetch2];

    v17 = [NSFetchedResultsController alloc];
    v18 = +[MTDB sharedInstance];
    mainQueueContext2 = [v18 mainQueueContext];
    v20 = [v17 initWithFetchRequest:v13 managedObjectContext:mainQueueContext2 sectionNameKeyPath:0 cacheName:0];
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

    fetchedObjects = [(NSFetchedResultsController *)self->_addedShowsFRC fetchedObjects];
    v13 = [fetchedObjects count];

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
    fetchedObjects2 = [(NSFetchedResultsController *)self->_addedShowsFRC fetchedObjects];
    v18 = [fetchedObjects2 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
            objc_enumerationMutation(fetchedObjects2);
          }

          v22 = [(MTBridgeShowSelectionViewController *)self _specifierForShow:*(*(&v51 + 1) + 8 * i)];
          [v7 addObject:v22];
        }

        v19 = [fetchedObjects2 countByEnumeratingWithState:&v51 objects:v57 count:16];
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

    fetchedObjects3 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchedObjects];
    v28 = [fetchedObjects3 count];

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
    fetchedObjects4 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchedObjects];
    v33 = [fetchedObjects4 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
            objc_enumerationMutation(fetchedObjects4);
          }

          v37 = [(MTBridgeShowSelectionViewController *)self _specifierForShow:*(*(&v46 + 1) + 8 * j)];
          [v7 addObject:v37];
        }

        v34 = [fetchedObjects4 countByEnumeratingWithState:&v46 objects:v56 count:16];
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

- (id)_specifierForShow:(id)show
{
  showCopy = show;
  title = [showCopy title];
  v6 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:4 edit:0];

  feedURL = [showCopy feedURL];
  [v6 setIdentifier:feedURL];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v6 setProperty:&__kCFBooleanFalse forKey:NMBUISpecifierShouldShowSwitchKey];
  v8 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
  feedURL2 = [showCopy feedURL];
  [v8 setModelObject:feedURL2];

  title2 = [showCopy title];
  [v8 setTitle:title2];

  [v8 setPlaceholderSystemImageName:@"podcasts"];
  artworkCatalog = [showCopy artworkCatalog];

  [v8 setArtworkCatalog:artworkCatalog];
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
  kPodcastTitle = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastTitle];
  v4 = [v2 AND:kPodcastTitle];
  kPodcastFeedUrl = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastFeedUrl];
  v6 = [v4 AND:kPodcastFeedUrl];

  return v6;
}

- (id)_addedShowsPredicate
{
  _allShowsPredicate = [(MTBridgeShowSelectionViewController *)self _allShowsPredicate];
  v3 = kPodcastFeedUrl;
  v4 = +[NMSMediaPinningManager sharedManager];
  podcastsSelectedShowFeedURLs = [v4 podcastsSelectedShowFeedURLs];
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", v3, podcastsSelectedShowFeedURLs];
  v7 = [_allShowsPredicate AND:v6];

  return v7;
}

- (id)_otherShowsPredicate
{
  _allShowsPredicate = [(MTBridgeShowSelectionViewController *)self _allShowsPredicate];
  v3 = kPodcastFeedUrl;
  v4 = +[NMSMediaPinningManager sharedManager];
  podcastsSelectedShowFeedURLs = [v4 podcastsSelectedShowFeedURLs];
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", v3, podcastsSelectedShowFeedURLs];
  v7 = [v6 NOT];
  v8 = [_allShowsPredicate AND:v7];

  return v8;
}

- (void)_updatePredicates
{
  _addedShowsPredicate = [(MTBridgeShowSelectionViewController *)self _addedShowsPredicate];
  fetchRequest = [(NSFetchedResultsController *)self->_addedShowsFRC fetchRequest];
  [fetchRequest setPredicate:_addedShowsPredicate];

  _otherShowsPredicate = [(MTBridgeShowSelectionViewController *)self _otherShowsPredicate];
  fetchRequest2 = [(NSFetchedResultsController *)self->_otherShowsFRC fetchRequest];
  [fetchRequest2 setPredicate:_otherShowsPredicate];
}

- (void)_doneButtonPressed:(id)pressed
{
  delegate = [(MTBridgeShowSelectionViewController *)self delegate];
  [delegate viewControllerDidSelectDone:self];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(MTBridgeShowSelectionViewController *)self numberOfGroups]== &dword_0 + 1)
  {
    v6 = [(MTBridgeShowSelectionViewController *)self specifierAtIndexPath:pathCopy];

    v7 = [(MTBridgeShowSelectionViewController *)self getGroupSpecifierForSpecifier:v6];

    identifier = [v7 identifier];
    LODWORD(v6) = [identifier isEqualToString:@"AddedShowsGroup"];

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
    section = [pathCopy section];

    if (section)
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(MTBridgeShowSelectionViewController *)self specifierAtIndexPath:pathCopy];
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3];
  v11 = v10;
  if (style == 2)
  {
LABEL_4:
    v12 = [v9 propertyForKey:NMBUISpecifierCellConfigurationKey];
    modelObject = [v12 modelObject];

    v14 = +[NMSMediaPinningManager sharedManager];
    [v14 setPodcastsDownloadSettings:v11 forShowFeedURL:modelObject];

    [(MTBridgeShowSelectionViewController *)self _updatePredicates];
    v15 = OBJC_IVAR___PSListController__specifiers;
    v16 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

    specifiers = [(MTBridgeShowSelectionViewController *)self specifiers];
    [(MTBridgeShowSelectionViewController *)self createGroupIndices];
    numberOfSections = [viewCopy numberOfSections];
    dataSource = [viewCopy dataSource];
    v20 = [dataSource numberOfSectionsInTableView:viewCopy];

    if (v20 == numberOfSections)
    {
      v21 = *&self->PSEditableListController_opaque[v15];
      identifier = [v9 identifier];
      v23 = [v21 indexOfSpecifierWithID:identifier];

      v24 = [(MTBridgeShowSelectionViewController *)self indexPathForIndex:v23];
      [viewCopy moveRowAtIndexPath:pathCopy toIndexPath:v24];
    }

    else
    {
      [viewCopy reloadData];
    }

    goto LABEL_8;
  }

  if (style == 1)
  {
    [v10 setNumberOfEpisodes:0];
    goto LABEL_4;
  }

LABEL_8:
}

- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)notification
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