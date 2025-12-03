@interface CarShareTripKeyboardSearchController
- (CarKeyboardModeController)keyboardMode;
- (CarShareTripKeyboardSearchController)initWithContactSearchResults:(id)results dataSource:(id)source searchHandler:(id)handler;
- (NSArray)focusOrderSubItems;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_attemptToStartShareWithContact:(id)contact;
- (void)_cancelCapabilitiesForUpdatedMatches:(id)matches previousMatches:(id)previousMatches;
- (void)_cancelDismiss;
- (void)_commitPendingShares;
- (void)_commitShareForCellAtIndexPath:(id)path;
- (void)_dismissAfterDelay;
- (void)_toggleSharingForContactAtIndexPath:(id)path;
- (void)_updateSearchResults:(id)results;
- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles;
- (void)carShareTripContactCellDidFinishRingAnimation:(id)animation;
- (void)handleCancelButtonPressed;
- (void)handleSearchButtonPressedWithText:(id)text;
- (void)sharedTripService:(id)service didUpdateSharingIdentity:(id)identity;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarShareTripKeyboardSearchController

- (CarKeyboardModeController)keyboardMode
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardMode);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarShareTripKeyboardSearchController *)self isViewLoaded])
  {
    _car_visibleCells = [(CarTableView *)self->_tableView _car_visibleCells];
  }

  else
  {
    _car_visibleCells = &__NSArray0__struct;
  }

  return _car_visibleCells;
}

- (void)sharedTripService:(id)service didUpdateSharingIdentity:(id)identity
{
  identityCopy = identity;
  objc_storeStrong(&self->_sharingIdentity, identity);
  if (([identityCopy hasValidAccount] & 1) == 0)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    keyboardMode = [(CarShareTripKeyboardSearchController *)self keyboardMode];
    [v6 popFromContext:keyboardMode];
  }
}

- (void)_attemptToStartShareWithContact:(id)contact
{
  contactCopy = contact;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100D2F038;
  v19[3] = &unk_101661340;
  objc_copyWeak(&v21, &location);
  v5 = contactCopy;
  v20 = v5;
  v6 = objc_retainBlock(v19);
  keyboardMode = [(CarShareTripKeyboardSearchController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];

  v9 = self->_sharingIdentity;
  v10 = +[MSPSharedTripService sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D2F108;
  v14[3] = &unk_101651B00;
  objc_copyWeak(&v18, &location);
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  v12 = chromeViewController;
  v16 = v12;
  v13 = v6;
  v17 = v13;
  [v10 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  self->_userInteracted = 1;
  viewCopy = view;
  [(CarShareTripKeyboardSearchController *)self _cancelDismiss];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v7 = [pathCopy row];
  if (v7 < [(NSOrderedSet *)self->_matches count])
  {
    v8 = [(NSOrderedSet *)self->_matches objectAtIndexedSubscript:v7];
    cellsByContactStringValue = self->_cellsByContactStringValue;
    stringValue = [v8 stringValue];
    v11 = [(NSMutableDictionary *)cellsByContactStringValue objectForKey:stringValue];

    sharingState = [v11 sharingState];
    if (sharingState == 1)
    {
      [v11 setSharingState:-[SharedTripSuggestionsDataSource sharingStateForContact:](self->_dataSource animated:{"sharingStateForContact:", v8), 0}];
    }

    else
    {
      if (!sharingState)
      {
        [(CarShareTripKeyboardSearchController *)self _attemptToStartShareWithContact:v8];
LABEL_8:

        goto LABEL_9;
      }

      [(CarShareTripKeyboardSearchController *)self _toggleSharingForContactAtIndexPath:pathCopy];
    }

    keyboardMode = [(CarShareTripKeyboardSearchController *)self keyboardMode];
    chromeViewController = [keyboardMode chromeViewController];
    [chromeViewController captureUserAction:9026];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  contextCopy = context;
  [(CarShareTripKeyboardSearchController *)self _cancelDismiss];
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];

  v12 = [viewCopy numberOfRowsInSection:{objc_msgSend(nextFocusedIndexPath, "section")}];
  if ([nextFocusedIndexPath row] == v12 - 1)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100D2F948;
    v13[3] = &unk_101661B18;
    v14 = viewCopy;
    [coordinatorCopy addCoordinatedAnimations:0 completion:v13];
  }
}

- (void)_commitShareForCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = pathCopy;
    v5 = -[NSOrderedSet objectAtIndexedSubscript:](self->_matches, "objectAtIndexedSubscript:", [pathCopy row]);
    if (![(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v5])
    {
      [(CarShareTripKeyboardSearchController *)self _toggleSharingForContactAtIndexPath:v6];
    }

    pathCopy = v6;
  }
}

- (void)carShareTripContactCellDidFinishRingAnimation:(id)animation
{
  v4 = [(CarTableView *)self->_tableView indexPathForCell:animation];
  [(CarShareTripKeyboardSearchController *)self _commitShareForCellAtIndexPath:v4];
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  contactValue = [cell contactValue];
  if (contactValue)
  {
    v7 = contactValue;
    v6 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v6 cancelCapabilityLevelRequestForContact:v7];

    contactValue = v7;
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  contactValue = [cell contactValue];
  if (contactValue)
  {
    v6 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v8 = contactValue;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v6 requestCapabilityLevelsForContacts:v7];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = -[NSOrderedSet objectAtIndexedSubscript:](self->_matches, "objectAtIndexedSubscript:", [path row]);
  cellsByContactStringValue = self->_cellsByContactStringValue;
  stringValue = [v5 stringValue];
  v8 = [(NSMutableDictionary *)cellsByContactStringValue objectForKey:stringValue];

  if (v8)
  {
    v9 = [(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v5];
    v10 = v8;
    v11 = 1;
  }

  else
  {
    stringValue2 = [v5 stringValue];
    v13 = [stringValue2 length];

    v8 = [(CarShareTripContactCell *)[CarShareTripContactSearchResultCell alloc] initWithStyle:0 reuseIdentifier:0];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = self->_cellsByContactStringValue;
    stringValue3 = [v5 stringValue];
    [(NSMutableDictionary *)v14 setObject:v8 forKey:stringValue3];

    [(CarShareTripContactCell *)v8 setDelegate:self];
    [(CarShareTripContactSearchResultCell *)v8 configureWithMSPSharedTripContact:v5];
    v9 = [(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v5];
    v10 = v8;
    v11 = 0;
  }

  [(CarShareTripContactCell *)v10 setSharingState:v9 animated:v11];
LABEL_6:
  v16 = +[MSPSharedTripService sharedInstance];
  v20 = 0;
  v17 = [v16 capabilityTypeForContact:v5 serviceName:&v20 isActiveReceiver:0];
  v18 = v20;

  [(CarShareTripContactCell *)v8 setCapabilityType:v17 serviceName:v18];

  return v8;
}

- (void)_commitPendingShares
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_cellsByContactStringValue objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 sharingState] == 1)
        {
          [v8 setDelegate:0];
          v9 = [(CarTableView *)self->_tableView indexPathForCell:v8];
          [(CarShareTripKeyboardSearchController *)self _commitShareForCellAtIndexPath:v9];
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_cancelDismiss
{
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    [(NSTimer *)dismissTimer invalidate];
    v4 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }
}

- (void)_dismissAfterDelay
{
  [(CarShareTripKeyboardSearchController *)self _cancelDismiss];
  dismissHandler = [(CarShareTripKeyboardSearchController *)self dismissHandler];

  if (dismissHandler)
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D3003C;
    v6[3] = &unk_101661BC8;
    objc_copyWeak(&v7, &location);
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:7.0];
    dismissTimer = self->_dismissTimer;
    self->_dismissTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_toggleSharingForContactAtIndexPath:(id)path
{
  v4 = -[NSOrderedSet objectAtIndexedSubscript:](self->_matches, "objectAtIndexedSubscript:", [path row]);
  if (v4)
  {
    v5 = v4;
    [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:v4];
    [(CarShareTripKeyboardSearchController *)self _dismissAfterDelay];
    v4 = v5;
  }
}

- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles
{
  handlesCopy = handles;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v6 = self->_matches;
  v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        stringValue = [v11 stringValue];
        if ([handlesCopy containsObject:stringValue])
        {
          cellsByContactStringValue = selfCopy->_cellsByContactStringValue;
          stringValue2 = [v11 stringValue];
          v15 = [(NSMutableDictionary *)cellsByContactStringValue objectForKey:stringValue2];

          v16 = +[MSPSharedTripService sharedInstance];
          v20 = 0;
          v17 = [v16 capabilityTypeForContact:v11 serviceName:&v20 isActiveReceiver:0];
          v18 = v20;

          [v15 setCapabilityType:v17 serviceName:v18];
        }
      }

      v8 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)_cancelCapabilitiesForUpdatedMatches:(id)matches previousMatches:(id)previousMatches
{
  matchesCopy = matches;
  previousMatchesCopy = previousMatches;
  if ([previousMatchesCopy count])
  {
    v6 = [NSMutableSet setWithArray:previousMatchesCopy];
    if ([matchesCopy count])
    {
      v7 = [NSSet setWithArray:matchesCopy];
      [v6 minusSet:v7];
    }

    if ([v6 count])
    {
      v8 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      allObjects = [v6 allObjects];
      [v8 cancelCapabilityLevelRequestForContacts:allObjects];
    }
  }
}

- (void)_updateSearchResults:(id)results
{
  resultsCopy = results;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = resultsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Searching for '%{private}@'", &v9, 0xCu);
  }

  [(CarTableView *)self->_tableView scrollRectToVisible:0 animated:0.0, 0.0, 1.0, 1.0];
  if ([resultsCopy length])
  {
    v6 = [MSPSharedTripContact _maps_contactsMatchingQuery:resultsCopy];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [NSOrderedSet orderedSetWithArray:v6];
  matches = self->_matches;
  self->_matches = v7;

  [(CarTableView *)self->_tableView reloadData];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isActive])
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];

    [(MapsThrottler *)self->_inputThrottler setValue:text];
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      inputThrottler = self->_inputThrottler;
      v9 = 138478083;
      v10 = text;
      v11 = 2112;
      v12 = inputThrottler;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Updating input to '%{private}@' (throttler: %@)", &v9, 0x16u);
    }
  }
}

- (void)handleCancelButtonPressed
{
  keyboardMode = [(CarShareTripKeyboardSearchController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  [chromeViewController captureUserAction:2003];
}

- (void)handleSearchButtonPressedWithText:(id)text
{
  textCopy = text;
  keyboardMode = [(CarShareTripKeyboardSearchController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  [chromeViewController captureUserAction:2014];

  searchHandler = self->_searchHandler;
  if (searchHandler)
  {
    v7 = objc_retainBlock(searchHandler);
    array = [(NSOrderedSet *)self->_matches array];
    v7[2](v7, textCopy, array);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CarShareTripKeyboardSearchController;
  [(CarShareTripKeyboardSearchController *)&v4 viewWillDisappear:disappear];
  [(CarShareTripKeyboardSearchController *)self _commitPendingShares];
  [(CarShareTripKeyboardSearchController *)self _cancelDismiss];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CarShareTripKeyboardSearchController;
  [(CarShareTripKeyboardSearchController *)&v8 viewWillAppear:appear];
  objc_initWeak(&location, self);
  v4 = +[MSPSharedTripService sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D308D8;
  v5[3] = &unk_10165CF80;
  objc_copyWeak(&v6, &location);
  [v4 refreshSharingIdentityWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = CarShareTripKeyboardSearchController;
  [(CarShareTripKeyboardSearchController *)&v15 viewDidLoad];
  v3 = [CarTableView alloc];
  view = [(CarShareTripKeyboardSearchController *)self view];
  [view bounds];
  v5 = [(CarTableView *)v3 initWithFrame:0 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(CarTableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarTableView *)self->_tableView setDelegate:self];
  [(CarTableView *)self->_tableView setDataSource:self];
  v7 = +[UIColor clearColor];
  [(CarTableView *)self->_tableView setBackgroundColor:v7];

  [(CarTableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
  [(CarTableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ContactCell"];
  view2 = [(CarShareTripKeyboardSearchController *)self view];
  [view2 addSubview:self->_tableView];

  v9 = self->_tableView;
  view3 = [(CarShareTripKeyboardSearchController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  LODWORD(v12) = 1148846080;
  v13 = [(CarTableView *)v9 _maps_constraintsEqualToEdgesOfLayoutGuide:safeAreaLayoutGuide priority:v12];
  allConstraints = [v13 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (CarShareTripKeyboardSearchController)initWithContactSearchResults:(id)results dataSource:(id)source searchHandler:(id)handler
{
  resultsCopy = results;
  sourceCopy = source;
  handlerCopy = handler;
  v38.receiver = self;
  v38.super_class = CarShareTripKeyboardSearchController;
  v11 = [(CarShareTripKeyboardSearchController *)&v38 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, source);
    v13 = [handlerCopy copy];
    searchHandler = v12->_searchHandler;
    v12->_searchHandler = v13;

    v15 = [NSOrderedSet orderedSetWithArray:resultsCopy];
    matches = v12->_matches;
    v12->_matches = v15;

    v17 = [NSSet alloc];
    v18 = +[MSPSharedTripService sharedInstance];
    receivers = [v18 receivers];
    v20 = sub_100021DB0(receivers, &stru_101651A88);
    v21 = [v17 initWithArray:v20];
    alreadySharingHandles = v12->_alreadySharingHandles;
    v12->_alreadySharingHandles = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    cellsByContactStringValue = v12->_cellsByContactStringValue;
    v12->_cellsByContactStringValue = v23;

    objc_initWeak(&location, v12);
    v25 = [MapsThrottler alloc];
    v26 = &_dispatch_main_q;
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100D30D9C;
    v35 = &unk_101651AB0;
    objc_copyWeak(&v36, &location);
    v27 = [(MapsThrottler *)v25 initWithInitialValue:0 throttlingInterval:&_dispatch_main_q queue:&v32 updateHandler:1.0];
    inputThrottler = v12->_inputThrottler;
    v12->_inputThrottler = v27;

    v29 = [MSPSharedTripService sharedInstance:v32];
    [v29 addSendingObserver:v12];

    v30 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v30 registerObserver:v12];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v12;
}

@end