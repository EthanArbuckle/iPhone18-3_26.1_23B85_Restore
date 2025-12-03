@interface HOLocationListViewController
+ (id)viewControllerForPresentingLocationEditorForHome:(id)home delegate:(id)delegate customizationBlock:(id)block;
- (BOOL)showAddLocationButton;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (HOLocationListViewController)init;
- (HOLocationListViewController)initWithCoder:(id)coder;
- (HOLocationListViewController)initWithDelegate:(id)delegate;
- (HOLocationListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HOLocationListViewController)initWithStyle:(int64_t)style;
- (HOLocationListViewControllerDelegate)delegate;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)section;
- (id)_indexPathForPendingInvitation:(id)invitation;
- (id)_pendingInvitationIdentifiers;
- (id)closeBarButtonItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_indexOfSectionWithIdentifier:(id)identifier;
- (void)addLocationViewController:(id)controller didFinishWithHome:(id)home;
- (void)doneButtonPressed:(id)pressed;
- (void)editButtonPressed:(id)pressed;
- (void)editLocationViewControllerWouldPresentAddController:(id)controller;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations;
- (void)homeManagerDidFinishUnknownChange:(id)change;
- (void)invitationCell:(id)cell didRespondToInvitationWithResponse:(unint64_t)response;
- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change;
- (void)invitationViewControllerDidDecideLaterInvitation:(id)invitation error:(id)error;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateLocationSensingAvailability;
- (void)viewDidLoad;
@end

@implementation HOLocationListViewController

+ (id)viewControllerForPresentingLocationEditorForHome:(id)home delegate:(id)delegate customizationBlock:(id)block
{
  homeCopy = home;
  blockCopy = block;
  delegateCopy = delegate;
  v10 = [[HOLocationListViewController alloc] initWithDelegate:delegateCopy];

  [(HOLocationListViewController *)v10 loadViewIfNeeded];
  v11 = [[UINavigationController alloc] initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  if (homeCopy)
  {
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v12 homeManager];
    homes = [homeManager homes];
    v15 = [homes count];

    v16 = [[HFHomeBuilder alloc] initWithExistingObject:homeCopy inHome:homeCopy];
    v17 = [HUEditLocationViewController alloc];
    if (v15 >= 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v10;
    }

    v19 = [v17 initWithHomeBuilder:v16 presentationDelegate:v10 addLocationDelegate:v18];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100038AA8;
    v22[3] = &unk_1000C3D68;
    v23 = v11;
    v20 = v19;
    v24 = v20;
    [UIViewController _performWithoutDeferringTransitions:v22];

    if (!blockCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = 0;
  if (blockCopy)
  {
LABEL_6:
    blockCopy[2](blockCopy, v20);
  }

LABEL_7:

  return v11;
}

- (HOLocationListViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = HOLocationListViewController;
  v5 = [(HOLocationListViewController *)&v28 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    [v7 addHomeManagerObserver:v6];
    [v7 addHomeObserver:v6];
    homeManager = [v7 homeManager];
    homes = [homeManager homes];

    if (!homes)
    {
      v10 = objc_opt_class();
      NSLog(@"Creating %@ before the HMHomeManager has any homes!", v10);
    }

    homeManager2 = [v7 homeManager];
    hf_orderedHomes = [homeManager2 hf_orderedHomes];
    v13 = [hf_orderedHomes mutableCopy];
    homes = v6->_homes;
    v6->_homes = v13;

    v15 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager3 = [v15 homeManager];
    incomingHomeInvitations = [homeManager3 incomingHomeInvitations];
    v18 = [incomingHomeInvitations na_filter:&stru_1000C3D88];
    v19 = [v18 mutableCopy];
    pendingInvitations = v6->_pendingInvitations;
    v6->_pendingInvitations = v19;

    v21 = objc_opt_new();
    invitationResponseControllersByHomeUUID = v6->_invitationResponseControllersByHomeUUID;
    v6->_invitationResponseControllersByHomeUUID = v21;

    v23 = objc_opt_new();
    homesAwaitingPendingInvitations = v6->_homesAwaitingPendingInvitations;
    v6->_homesAwaitingPendingInvitations = v23;

    v25 = [[HUInvitationHelper alloc] initWithMode:0];
    invitationHelper = v6->_invitationHelper;
    v6->_invitationHelper = v25;

    [(HOLocationListViewController *)v6 updateLocationSensingAvailability];
  }

  return v6;
}

- (HOLocationListViewController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("init");
  [v4 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:123 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController init]", v5}];

  return 0;
}

- (HOLocationListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  v7 = NSStringFromSelector("init");
  [v6 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:128 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOLocationListViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:133 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController initWithCoder:]", v6}];

  return 0;
}

- (HOLocationListViewController)initWithStyle:(int64_t)style
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:138 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController initWithStyle:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HOLocationListViewController;
  [(HOLocationListViewController *)&v19 viewDidLoad];
  tableView = [(HOLocationListViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(HOLocationListViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  tableView3 = [(HOLocationListViewController *)self tableView];
  [tableView3 _setSectionContentInsetFollowsLayoutMargins:1];

  tableView4 = [(HOLocationListViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"HOLocationTableViewCellReuseIdentifier"];

  tableView5 = [(HOLocationListViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUButtonCellReuseIdentifier"];

  tableView6 = [(HOLocationListViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUSwitchCellReuseIdentifier"];

  tableView7 = [(HOLocationListViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUIncomingInvitationTableViewCellReuseIdentifier"];

  tableView8 = [(HOLocationListViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [tableView8 registerClass:v11 forHeaderFooterViewReuseIdentifier:v13];

  closeBarButtonItem = [(HOLocationListViewController *)self closeBarButtonItem];
  navigationItem = [(HOLocationListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:closeBarButtonItem];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonPressed:"];
  navigationItem2 = [(HOLocationListViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v16];

  v18 = sub_1000391E8(@"HOLocationListTitle");
  [(HOLocationListViewController *)self setTitle:v18];
}

- (void)doneButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-doneButtonPressed]", v6, 2u);
  }

  delegate = [(HOLocationListViewController *)self delegate];
  [delegate locationListViewControllerDidFinish:self];
}

- (id)closeBarButtonItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"doneButtonPressed:"];

  return v2;
}

- (void)editButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-editButtonPressed]", v21, 2u);
  }

  tableView = [(HOLocationListViewController *)self tableView];
  isEditing = [tableView isEditing];

  tableView2 = [(HOLocationListViewController *)self tableView];
  v8 = tableView2;
  if (isEditing)
  {
    [tableView2 setEditing:0];

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonPressed:"];
    navigationItem = [(HOLocationListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v9];

    closeBarButtonItem = [(HOLocationListViewController *)self closeBarButtonItem];
    navigationItem2 = [(HOLocationListViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:closeBarButtonItem];
  }

  else
  {
    [tableView2 setEditing:1];

    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"editButtonPressed:"];
    navigationItem3 = [(HOLocationListViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:v13];

    closeBarButtonItem = [(HOLocationListViewController *)self navigationItem];
    [closeBarButtonItem setRightBarButtonItem:0];
  }

  if ([(HOLocationListViewController *)self showAddLocationButton])
  {
    v15 = [(HOLocationListViewController *)self _indexOfSectionWithIdentifier:@"HOLocationListLocationsSectionIdentifier"];
    tableView3 = [(HOLocationListViewController *)self tableView];
    v17 = [tableView3 numberOfRowsInSection:v15] - 1;

    tableView4 = [(HOLocationListViewController *)self tableView];
    v19 = [NSIndexPath indexPathForRow:v17 inSection:v15];
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [tableView4 reloadRowsAtIndexPaths:v20 withRowAnimation:5];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  _currentSectionIdentifiers = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  v4 = [_currentSectionIdentifiers count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(HOLocationListViewController *)self _identifierForSection:section];
  _pendingInvitationIdentifiers = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if ([v5 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    homes = [(HOLocationListViewController *)self homes];
    v8 = [homes count];
    v9 = v8 + [(HOLocationListViewController *)self showAddLocationButton];
  }

  else if ([v5 isEqualToString:@"HOLocationListHomeSensingSectionIdentifier"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [_pendingInvitationIdentifiers containsObject:v5];
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  _pendingInvitationIdentifiers = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if (![v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    if ([v8 isEqualToString:@"HOLocationListHomeSensingSectionIdentifier"])
    {
      tableView = [viewCopy dequeueReusableCellWithIdentifier:@"HUSwitchCellReuseIdentifier" forIndexPath:pathCopy];
      v23 = sub_1000391E8(@"HOLocationListHomeSensingTitle");
      textLabel = [tableView textLabel];
      [textLabel setText:v23];

      v25 = +[HFHomeKitDispatcher sharedDispatcher];
      [tableView setOn:{objc_msgSend(v25, "selectedHomeFollowsLocation")}];

      [tableView setDelegate:self];
    }

    else
    {
      if (![_pendingInvitationIdentifiers containsObject:v8])
      {
        goto LABEL_19;
      }

      tableView = [viewCopy dequeueReusableCellWithIdentifier:@"HUIncomingInvitationTableViewCellReuseIdentifier" forIndexPath:pathCopy];
      if ([(HOLocationListViewController *)self locationSensingAvailable])
      {
        v28 = @"HOLocationListHomeSensingSectionIdentifier";
      }

      else
      {
        v28 = @"HOLocationListLocationsSectionIdentifier";
      }

      v29 = ~[(HOLocationListViewController *)self _indexOfSectionWithIdentifier:v28];
      v30 = [pathCopy section] + v29;
      pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
      v32 = [pendingInvitations count];

      if (v30 < v32)
      {
        pendingInvitations2 = [(HOLocationListViewController *)self pendingInvitations];
        v34 = [pendingInvitations2 objectAtIndex:v30];

        [tableView setInvitation:v34];
        [tableView setDelegate:self];
        [tableView setSelectionStyle:0];
        invitationResponseControllersByHomeUUID = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
        homeUUID = [v34 homeUUID];
        v37 = [invitationResponseControllersByHomeUUID objectForKeyedSubscript:homeUUID];

        if (v37)
        {
          v38 = -[HOLocationListViewController _showSpinnerForInvitationWithResponseControllerState:](self, "_showSpinnerForInvitationWithResponseControllerState:", [v37 state]);
        }

        else
        {
          v38 = [v34 invitationState] == 5;
        }

        [tableView setShowSpinner:v38];
      }
    }

    v22 = tableView;
LABEL_11:

    goto LABEL_20;
  }

  v10 = [pathCopy row];
  homes = [(HOLocationListViewController *)self homes];
  v12 = [homes count];

  if (v10 < v12)
  {
    v40 = _pendingInvitationIdentifiers;
    tableView = [viewCopy dequeueReusableCellWithIdentifier:@"HOLocationTableViewCellReuseIdentifier" forIndexPath:pathCopy];
    homes2 = [(HOLocationListViewController *)self homes];
    v15 = [homes2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [tableView setAccessoryType:1];
    name = [v15 name];
    [tableView setTitleText:name];

    if ([v15 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
    {
      [tableView setDisabled:1];
      [tableView setAccessoryType:0];
    }

    uniqueIdentifier = [v15 uniqueIdentifier];
    v18 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v18 homeManager];
    currentHome = [homeManager currentHome];
    uniqueIdentifier2 = [currentHome uniqueIdentifier];
    [tableView setShowLocationIcon:{objc_msgSend(uniqueIdentifier, "isEqual:", uniqueIdentifier2)}];

    [tableView setShowsReorderControl:1];
    v22 = tableView;
    _pendingInvitationIdentifiers = v40;
    goto LABEL_11;
  }

  if ([(HOLocationListViewController *)self showAddLocationButton])
  {
    v22 = [viewCopy dequeueReusableCellWithIdentifier:@"HUButtonCellReuseIdentifier" forIndexPath:pathCopy];
    v26 = sub_1000391E8(@"HOLocationListAddButtonTitle");
    textLabel2 = [v22 textLabel];
    [textLabel2 setText:v26];

    tableView = [(HOLocationListViewController *)self tableView];
    [v22 setDisabled:{objc_msgSend(tableView, "isEditing")}];

    goto LABEL_11;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if ([v6 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v7 = [pathCopy row];
    homes = [(HOLocationListViewController *)self homes];
    v9 = v7 < [homes count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if ([v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v9 = [pathCopy row];
    if (v9 != [indexPathCopy row])
    {
      homes = [(HOLocationListViewController *)self homes];
      v11 = [homes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      homes2 = [(HOLocationListViewController *)self homes];
      [homes2 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];

      homes3 = [(HOLocationListViewController *)self homes];
      [homes3 insertObject:v11 atIndex:{objc_msgSend(indexPathCopy, "row")}];

      v14 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager = [v14 homeManager];
      homes4 = [(HOLocationListViewController *)self homes];
      v17 = [homeManager hf_setOrderedHomes:homes4];
    }
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if (![v6 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    goto LABEL_5;
  }

  v7 = [pathCopy row];
  homes = [(HOLocationListViewController *)self homes];
  v9 = [homes count];

  if (v7 >= v9)
  {
    goto LABEL_5;
  }

  homes2 = [(HOLocationListViewController *)self homes];
  v11 = [homes2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  LOBYTE(homes2) = [v11 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];
  if (homes2)
  {
    v12 = 0;
  }

  else
  {
LABEL_5:
    v12 = pathCopy;
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-didSelectRowAtIndexPath] indexPath = %@", &v25, 0xCu);
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v9 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if ([v9 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v10 = [pathCopy row];
    homes = [(HOLocationListViewController *)self homes];
    v12 = [homes count];

    if (v10 < v12)
    {
      v13 = [HFHomeBuilder alloc];
      homes2 = [(HOLocationListViewController *)self homes];
      v15 = [homes2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v16 = [v13 initWithExistingObject:0 inHome:v15];

      v17 = [[HUEditLocationViewController alloc] initWithHomeBuilder:v16 presentationDelegate:self addLocationDelegate:0];
      navigationController = [(HOLocationListViewController *)self navigationController];
      v19 = [navigationController hu_pushPreloadableViewController:v17 animated:1];

LABEL_8:
      goto LABEL_9;
    }

    v20 = [pathCopy row];
    homes3 = [(HOLocationListViewController *)self homes];
    v22 = [homes3 count];

    if (v20 == v22)
    {
      v23 = [UINavigationController alloc];
      v24 = [[HOAddLocationViewController alloc] initWithName:0 delegate:self];
      v16 = [v23 initWithRootViewController:v24];

      [v16 setModalPresentationStyle:2];
      [(HOLocationListViewController *)self presentViewController:v16 animated:1 completion:0];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v10 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if (![v10 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    goto LABEL_4;
  }

  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    v12 = [indexPathCopy row];
    homes = [(HOLocationListViewController *)self homes];
    v14 = [homes count];

    if (v12 < v14)
    {
LABEL_4:
      v15 = indexPathCopy;
      goto LABEL_5;
    }

    homes2 = [(HOLocationListViewController *)self homes];
    v15 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [homes2 count] - 1, objc_msgSend(pathCopy, "section"));
  }

  else
  {
    section2 = [indexPathCopy section];
    section3 = [pathCopy section];
    if (section2 <= section3)
    {
      v19 = 0;
    }

    else
    {
      homes3 = [(HOLocationListViewController *)self homes];
      v19 = [homes3 count] - 1;
    }

    v15 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v19, [pathCopy section]);
    if (section2 > section3)
    {
    }
  }

LABEL_5:

  return v15;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = +[UIListContentConfiguration groupedHeaderConfiguration];
  v8 = [(HOLocationListViewController *)self _identifierForSection:section];
  _pendingInvitationIdentifiers = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if ([v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v10 = @"HOLocationListLocationsSection";
  }

  else
  {
    if ([_pendingInvitationIdentifiers indexOfObject:v8])
    {
      v11 = v7;
      v7 = 0;
      goto LABEL_7;
    }

    v10 = @"HOLocationListInvitationsSection";
  }

  v11 = sub_1000391E8(v10);
  [v7 setText:v11];
LABEL_7:

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v13];

  [v14 setContentConfiguration:v7];

  return v14;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = +[UIListContentConfiguration groupedFooterConfiguration];
  v8 = [(HOLocationListViewController *)self _identifierForSection:section];
  _pendingInvitationIdentifiers = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  v10 = [_pendingInvitationIdentifiers indexOfObject:v8];
  if (v10 == [_pendingInvitationIdentifiers count] - 1)
  {
    v11 = @"HOLocationListInvitationsSectionFooter";
LABEL_5:
    v12 = sub_1000391E8(v11);
    [v7 setText:v12];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"HOLocationListHomeSensingSectionIdentifier"])
  {
    v11 = @"HOLocationListHomeSensingSectionFooter";
    goto LABEL_5;
  }

  v12 = v7;
  v7 = 0;
LABEL_7:

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v14];

  [v15 setContentConfiguration:v7];

  return v15;
}

- (void)homeManagerDidFinishUnknownChange:(id)change
{
  hf_orderedHomes = [change hf_orderedHomes];
  v5 = [hf_orderedHomes mutableCopy];
  [(HOLocationListViewController *)self setHomes:v5];

  tableView = [(HOLocationListViewController *)self tableView];
  [tableView reloadData];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    *buf = 138412546;
    v20 = homeCopy;
    v21 = 2114;
    v22 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didAddHome] home = %@ (%{public}@)", buf, 0x16u);
  }

  pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003AAB0;
  v17[3] = &unk_1000C3DB0;
  v9 = homeCopy;
  v18 = v9;
  v10 = [pendingInvitations na_firstObjectPassingTest:v17];

  if (v10 && ([v10 invitationState] == 2 || objc_msgSend(v10, "invitationState") == 5))
  {
    homesAwaitingPendingInvitations = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
    uuid = [v9 uuid];
    [homesAwaitingPendingInvitations setObject:v9 forKey:uuid];
  }

  else
  {
    homes = [(HOLocationListViewController *)self homes];
    [homes addObject:v9];

    homesAwaitingPendingInvitations = +[HFHomeKitDispatcher sharedDispatcher];
    uuid = [homesAwaitingPendingInvitations homeManager];
    homes2 = [(HOLocationListViewController *)self homes];
    v15 = [uuid hf_setOrderedHomes:homes2];
  }

  tableView = [(HOLocationListViewController *)self tableView];
  [tableView reloadData];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    *buf = 138412546;
    v20 = homeCopy;
    v21 = 2114;
    v22 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didRemoveHome] home = %@ (%{public}@)", buf, 0x16u);
  }

  homes = [(HOLocationListViewController *)self homes];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10003ACE0;
  v17 = &unk_1000C3DD8;
  v18 = homeCopy;
  v9 = homeCopy;
  v10 = [homes indexOfObjectPassingTest:&v14];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    uniqueIdentifier2 = [v9 uniqueIdentifier];
    uUIDString = [uniqueIdentifier2 UUIDString];
    NSLog(@"Received didRemoveHome: event for unknown home: %@", uUIDString, v14, v15, v16, v17, v18);
  }

  else
  {
    homes2 = [(HOLocationListViewController *)self homes];
    [homes2 removeObjectAtIndex:v10];

    uniqueIdentifier2 = [(HOLocationListViewController *)self tableView];
    [uniqueIdentifier2 reloadData];
  }
}

- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = invitationsCopy;
    v64 = 2048;
    v65 = [invitationsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didUpdateStateForIncomingInvitations] incomingInvitations = %@ (count: %lu)", buf, 0x16u);
  }

  tableView = [(HOLocationListViewController *)self tableView];
  [tableView beginUpdates];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = invitationsCopy;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      v11 = 0;
      v52 = v9;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        if ([v12 invitationState] == 3)
        {
          homesAwaitingPendingInvitations = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
          homeUUID = [v12 homeUUID];
          v15 = [homesAwaitingPendingInvitations objectForKey:homeUUID];

          if (v15)
          {
            homes = [(HOLocationListViewController *)self homes];
            homesAwaitingPendingInvitations2 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
            homeUUID2 = [v12 homeUUID];
            v19 = [homesAwaitingPendingInvitations2 objectForKey:homeUUID2];
            [homes addObject:v19];

            v20 = +[HFHomeKitDispatcher sharedDispatcher];
            homeManager = [v20 homeManager];
            homes2 = [(HOLocationListViewController *)self homes];
            v23 = [homeManager hf_setOrderedHomes:homes2];

            homesAwaitingPendingInvitations3 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
            homeUUID3 = [v12 homeUUID];
            [homesAwaitingPendingInvitations3 removeObjectForKey:homeUUID3];

            tableView2 = [(HOLocationListViewController *)self tableView];
            homes3 = [(HOLocationListViewController *)self homes];
            v28 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [homes3 count] - 1, -[HOLocationListViewController _indexOfSectionWithIdentifier:](self, "_indexOfSectionWithIdentifier:", @"HOLocationListLocationsSectionIdentifier"));
            v60 = v28;
            v29 = [NSArray arrayWithObjects:&v60 count:1];
            [tableView2 insertRowsAtIndexPaths:v29 withRowAnimation:0];
          }
        }

        if ([v12 invitationState] != 2 && objc_msgSend(v12, "invitationState") != 5)
        {
          pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
          v46 = [pendingInvitations indexOfObject:v12];

          if (v46 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_21;
          }

          tableView7 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:v12];
          pendingInvitations2 = [(HOLocationListViewController *)self pendingInvitations];
          [pendingInvitations2 removeObjectAtIndex:v46];

          tableView3 = [(HOLocationListViewController *)self tableView];
          v59 = tableView7;
          v49 = [NSArray arrayWithObjects:&v59 count:1];
          [tableView3 deleteRowsAtIndexPaths:v49 withRowAnimation:0];

          tableView4 = [(HOLocationListViewController *)self tableView];
          v50 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [tableView7 section]);
          [tableView4 deleteSections:v50 withRowAnimation:0];

          goto LABEL_20;
        }

        pendingInvitations3 = [(HOLocationListViewController *)self pendingInvitations];
        v31 = [pendingInvitations3 indexOfObject:v12];

        if ([(HOLocationListViewController *)self locationSensingAvailable])
        {
          v32 = @"HOLocationListHomeSensingSectionIdentifier";
        }

        else
        {
          v32 = @"HOLocationListLocationsSectionIdentifier";
        }

        v33 = [(HOLocationListViewController *)self _indexOfSectionWithIdentifier:v32];
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = v33 + 1;
          pendingInvitations4 = [(HOLocationListViewController *)self pendingInvitations];
          v36 = [pendingInvitations4 count];

          pendingInvitations5 = [(HOLocationListViewController *)self pendingInvitations];
          [pendingInvitations5 addObject:v12];

          tableView5 = [(HOLocationListViewController *)self tableView];
          v39 = [NSIndexSet indexSetWithIndex:&v36[v34]];
          [tableView5 insertSections:v39 withRowAnimation:0];

          tableView6 = [(HOLocationListViewController *)self tableView];
          v41 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:v12];
          v58 = v41;
          v42 = [NSArray arrayWithObjects:&v58 count:1];
          [tableView6 insertRowsAtIndexPaths:v42 withRowAnimation:0];

          tableView7 = [(HOLocationListViewController *)self tableView];
          v9 = v52;
          tableView4 = [NSIndexSet indexSetWithIndexesInRange:v34, v36];
          [tableView7 _reloadSectionHeaderFooters:tableView4 withRowAnimation:0];
LABEL_20:
        }

LABEL_21:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v9);
  }

  tableView8 = [(HOLocationListViewController *)self tableView];
  [tableView8 endUpdates];
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  homes = [(HOLocationListViewController *)self homes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003B4B4;
  v11[3] = &unk_1000C3DD8;
  v6 = nameCopy;
  v12 = v6;
  v7 = [homes indexOfObjectPassingTest:v11];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(HOLocationListViewController *)self tableView];
    v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (void)editLocationViewControllerWouldPresentAddController:(id)controller
{
  v4 = [UINavigationController alloc];
  v5 = [[HOAddLocationViewController alloc] initWithName:0 delegate:self];
  v6 = [v4 initWithRootViewController:v5];

  [v6 setModalPresentationStyle:2];
  [(HOLocationListViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)addLocationViewController:(id)controller didFinishWithHome:(id)home
{
  controllerCopy = controller;
  homeCopy = home;
  if (homeCopy)
  {
    navigationController = [(HOLocationListViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    v9 = [topViewController isEqual:self];

    if ((v9 & 1) == 0)
    {
      v10 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:homeCopy];
      v11 = [[HUEditLocationViewController alloc] initWithHomeBuilder:v10 presentationDelegate:self addLocationDelegate:0];
      navigationController2 = [(HOLocationListViewController *)self navigationController];
      v13 = [navigationController2 popToRootViewControllerAnimated:0];

      navigationController3 = [(HOLocationListViewController *)self navigationController];
      v15 = [navigationController3 hu_pushPreloadableViewController:v11 animated:0];
    }
  }

  [(HOLocationListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)invitationCell:(id)cell didRespondToInvitationWithResponse:(unint64_t)response
{
  cellCopy = cell;
  invitation = [cellCopy invitation];
  invitationResponseControllersByHomeUUID = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
  homeUUID = [invitation homeUUID];
  v10 = [invitationResponseControllersByHomeUUID objectForKeyedSubscript:homeUUID];

  if (v10)
  {
    homeUUID2 = [invitation homeUUID];
    NSLog(@"Already have a response controller for invitation %@!", homeUUID2);
  }

  else if (response == 4)
  {
    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [invitation hf_prettyDescription];
      uniqueIdentifier = [invitation uniqueIdentifier];
      *buf = 138412546;
      v75 = hf_prettyDescription;
      v76 = 2114;
      v77 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Confirming report junk for invitation %@ (uniqueIdentifier: %{public}@)", buf, 0x16u);
    }

    v30 = HULocalizedString();
    v31 = [UIAlertController alertControllerWithTitle:v30 message:0 preferredStyle:0];

    objc_initWeak(buf, self);
    v32 = HULocalizedString();
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10003C69C;
    v65[3] = &unk_1000C3E68;
    objc_copyWeak(v67, buf);
    v66 = invitation;
    v67[1] = 4;
    v33 = [UIAlertAction actionWithTitle:v32 style:2 handler:v65];

    v34 = HULocalizedString();
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10003C7E8;
    v63[3] = &unk_1000C2318;
    v35 = v31;
    v64 = v35;
    v36 = [UIAlertAction actionWithTitle:v34 style:1 handler:v63];

    [v35 addAction:v33];
    [v35 addAction:v36];
    popoverPresentationController = [v35 popoverPresentationController];
    [popoverPresentationController setSourceView:cellCopy];
    [(HOLocationListViewController *)self presentViewController:v35 animated:1 completion:&stru_1000C3EA8];

    objc_destroyWeak(v67);
    objc_destroyWeak(buf);
  }

  else if (response == 1)
  {
    invitationHelper = [cellCopy invitationHelper];
    if ([invitationHelper isUnknownContact])
    {
      v60 = +[HUInvitationHelper dateFormatter];
      v13 = [v60 copy];
      [v13 setDateStyle:1];
      [v13 setTimeStyle:0];
      [v13 setDoesRelativeDateFormatting:1];
      v53 = v13;
      v14 = [v13 copy];
      [v14 setDateStyle:0];
      v54 = v14;
      [v14 setTimeStyle:1];
      startDate = [invitation startDate];
      v59 = +[NSCalendar autoupdatingCurrentCalendar];
      v61 = +[NSDate date];
      v15 = [v59 startOfDayForDate:v61];
      v58 = [NSDate hf_dateByAddingDays:-1 toDate:v15];

      v57 = [[NSDateInterval alloc] initWithStartDate:v58 endDate:v61];
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription2 = [invitation hf_prettyDescription];
        uniqueIdentifier2 = [invitation uniqueIdentifier];
        inviterContact = [invitationHelper inviterContact];
        *buf = 138412802;
        v75 = hf_prettyDescription2;
        v76 = 2114;
        v77 = uniqueIdentifier2;
        v78 = 2112;
        v79 = inviterContact;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Confirming invitation %@ (uniqueIdentifier: %{public}@) from unknown contact %@", buf, 0x20u);
      }

      v20 = sub_1000391E8(@"HOLocationListInvitationAlertTitle");
      homeName = [invitation homeName];
      v56 = [NSString stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, homeName];

      if ([v57 containsDate:startDate])
      {
        v22 = sub_1000391E8(@"HOLocationListInvitationAlertBody_RelativeDate");
        v23 = [v53 stringFromDate:startDate];
        inviterContact3 = [v54 stringFromDate:startDate];
        inviterContact2 = [invitationHelper inviterContact];
        givenName = [inviterContact2 givenName];
        v55 = [NSString stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@ %@" error:0, v23, inviterContact3, givenName];
      }

      else
      {
        v22 = sub_1000391E8(@"HOLocationListInvitationAlertBody_OtherDate");
        v23 = [v60 stringFromDate:startDate];
        inviterContact3 = [invitationHelper inviterContact];
        inviterContact2 = [inviterContact3 givenName];
        v55 = [NSString stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:0, v23, inviterContact2];
      }

      v44 = [UIAlertController alertControllerWithTitle:v56 message:v55 preferredStyle:1];
      objc_initWeak(buf, self);
      v45 = sub_1000391E8(@"HOLocationListInvitationAlertAccept");
      invitation2 = [invitationHelper invitation];
      isInviteeRestrictedGuest = [invitation2 isInviteeRestrictedGuest];

      if (isInviteeRestrictedGuest)
      {
        v48 = sub_1000391E8(@"HOWelcomeView_Button_Continue");

        v45 = v48;
      }

      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_10003C208;
      v70[3] = &unk_1000C3E00;
      objc_copyWeak(v73, buf);
      v71 = invitationHelper;
      v72 = invitation;
      v73[1] = 1;
      v49 = [UIAlertAction actionWithTitle:v45 style:0 handler:v70];
      [v49 setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.Alert.AcceptOrContinueButton"];
      v50 = sub_1000391E8(@"HOLocationListInvitationAlertCancel");
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10003C540;
      v68[3] = &unk_1000C2318;
      v51 = v44;
      v69 = v51;
      v52 = [UIAlertAction actionWithTitle:v50 style:1 handler:v68];

      [v52 setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.Alert.CancelButton"];
      [v51 addAction:v52];
      [v51 addAction:v49];
      [(HOLocationListViewController *)self presentViewController:v51 animated:1 completion:&stru_1000C3E40];

      objc_destroyWeak(v73);
      objc_destroyWeak(buf);
    }

    else
    {
      v41 = [[HOOnboardingIncomingInvitationViewController alloc] initWithIncomingInvitation:invitation invitationHelper:invitationHelper incomingInvitationDelegate:self];
      [(HOOnboardingIncomingInvitationViewController *)v41 setDelegate:self];
      v42 = [[UINavigationController alloc] initWithRootViewController:v41];
      v43 = [(HOLocationListViewController *)self hu_presentPreloadableViewController:v42 animated:1];
    }
  }

  else
  {
    v38 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:self invitation:invitation];
    invitationResponseControllersByHomeUUID2 = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
    homeUUID3 = [invitation homeUUID];
    [invitationResponseControllersByHomeUUID2 setObject:v38 forKeyedSubscript:homeUUID3];

    [v38 respondToInvitationWithResponse:response];
  }
}

- (void)invitationViewControllerDidDecideLaterInvitation:(id)invitation error:(id)error
{
  invitationCopy = invitation;
  errorCopy = error;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[HOLocationListViewController invitationViewControllerDidDecideLaterInvitation:error:]";
    v16 = 2112;
    v17 = invitationCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Deciding later for invitation | viewController %@ | error %@", buf, 0x20u);
  }

  v9 = [(HOLocationListViewController *)self hu_dismissViewControllerAnimated:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003CB40;
  v12[3] = &unk_1000C3ED0;
  v13 = errorCopy;
  v10 = errorCopy;
  v11 = [v9 addCompletionBlock:v12];
}

- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change
{
  controllerCopy = controller;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [controllerCopy state];
    v8 = HUStringFromIncomingInvitationResponseControllerState();
    invitation = [controllerCopy invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    invitation2 = [controllerCopy invitation];
    uniqueIdentifier = [invitation2 uniqueIdentifier];
    v26 = 138543874;
    v27 = v8;
    v28 = 2112;
    v29 = hf_prettyDescription;
    v30 = 2114;
    v31 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationResponseController:stateDidChange] invitation state is %{public}@ for invitation %@ (uniqueIdentifier: %{public}@)", &v26, 0x20u);
  }

  pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
  invitation3 = [controllerCopy invitation];
  v15 = [pendingInvitations indexOfObject:invitation3];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    invitation4 = [controllerCopy invitation];
    v17 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:invitation4];

    v18 = objc_opt_class();
    tableView = [(HOLocationListViewController *)self tableView];
    v20 = [tableView cellForRowAtIndexPath:v17];
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      if (!v22)
      {
        sub_100081088(v20, v18);
      }
    }

    else
    {
      v22 = 0;
    }

    [v22 setShowSpinner:{-[HOLocationListViewController _showSpinnerForInvitationWithResponseControllerState:](self, "_showSpinnerForInvitationWithResponseControllerState:", change)}];
    if (change == 2)
    {
      invitationResponseControllersByHomeUUID = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
      invitation5 = [controllerCopy invitation];
      homeUUID = [invitation5 homeUUID];
      [invitationResponseControllersByHomeUUID removeObjectForKey:homeUUID];
    }
  }
}

- (id)_currentSectionIdentifiers
{
  v3 = [NSMutableArray arrayWithObject:@"HOLocationListLocationsSectionIdentifier"];
  if ([(HOLocationListViewController *)self locationSensingAvailable])
  {
    [v3 addObject:@"HOLocationListHomeSensingSectionIdentifier"];
  }

  pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
  v5 = [pendingInvitations count];

  if (v5)
  {
    pendingInvitations2 = [(HOLocationListViewController *)self pendingInvitations];
    v7 = [pendingInvitations2 na_map:&stru_1000C3EF0];
    [v3 na_safeAddObjectsFromArray:v7];
  }

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  _currentSectionIdentifiers = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  if ([_currentSectionIdentifiers count] <= section)
  {
    NSLog(@"Received identifier request for section (%ld), but only have (%ld) sections", section, [_currentSectionIdentifiers count]);
  }

  if ([_currentSectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_currentSectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (unint64_t)_indexOfSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _currentSectionIdentifiers = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D100;
  v9[3] = &unk_1000C3F18;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [_currentSectionIdentifiers indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_pendingInvitationIdentifiers
{
  pendingInvitations = [(HOLocationListViewController *)self pendingInvitations];
  v3 = [pendingInvitations na_map:&stru_1000C3F38];

  return v3;
}

- (id)_indexPathForPendingInvitation:(id)invitation
{
  identifier = [invitation identifier];
  uUIDString = [identifier UUIDString];
  v6 = [NSIndexPath indexPathForRow:0 inSection:[(HOLocationListViewController *)self _indexOfSectionWithIdentifier:uUIDString]];

  return v6;
}

- (BOOL)showAddLocationButton
{
  if ((+[HFUtilities isRunningInStoreDemoMode]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return +[HFUtilities isAMac]^ 1;
  }
}

- (void)updateLocationSensingAvailability
{
  objc_initWeak(&location, self);
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  locationSensingAvailableFuture = [v2 locationSensingAvailableFuture];
  v4 = +[NAScheduler mainThreadScheduler];
  v5 = [locationSensingAvailableFuture reschedule:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D3AC;
  v7[3] = &unk_1000C3F60;
  objc_copyWeak(&v8, &location);
  v6 = [v5 addCompletionBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (HOLocationListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end