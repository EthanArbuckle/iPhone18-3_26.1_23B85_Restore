@interface HOLocationListViewController
+ (id)viewControllerForPresentingLocationEditorForHome:(id)a3 delegate:(id)a4 customizationBlock:(id)a5;
- (BOOL)showAddLocationButton;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (HOLocationListViewController)init;
- (HOLocationListViewController)initWithCoder:(id)a3;
- (HOLocationListViewController)initWithDelegate:(id)a3;
- (HOLocationListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HOLocationListViewController)initWithStyle:(int64_t)a3;
- (HOLocationListViewControllerDelegate)delegate;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_indexPathForPendingInvitation:(id)a3;
- (id)_pendingInvitationIdentifiers;
- (id)closeBarButtonItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_indexOfSectionWithIdentifier:(id)a3;
- (void)addLocationViewController:(id)a3 didFinishWithHome:(id)a4;
- (void)doneButtonPressed:(id)a3;
- (void)editButtonPressed:(id)a3;
- (void)editLocationViewControllerWouldPresentAddController:(id)a3;
- (void)homeDidUpdateName:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4;
- (void)homeManagerDidFinishUnknownChange:(id)a3;
- (void)invitationCell:(id)a3 didRespondToInvitationWithResponse:(unint64_t)a4;
- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4;
- (void)invitationViewControllerDidDecideLaterInvitation:(id)a3 error:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateLocationSensingAvailability;
- (void)viewDidLoad;
@end

@implementation HOLocationListViewController

+ (id)viewControllerForPresentingLocationEditorForHome:(id)a3 delegate:(id)a4 customizationBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[HOLocationListViewController alloc] initWithDelegate:v9];

  [(HOLocationListViewController *)v10 loadViewIfNeeded];
  v11 = [[UINavigationController alloc] initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  if (v7)
  {
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    v13 = [v12 homeManager];
    v14 = [v13 homes];
    v15 = [v14 count];

    v16 = [[HFHomeBuilder alloc] initWithExistingObject:v7 inHome:v7];
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

    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = 0;
  if (v8)
  {
LABEL_6:
    v8[2](v8, v20);
  }

LABEL_7:

  return v11;
}

- (HOLocationListViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HOLocationListViewController;
  v5 = [(HOLocationListViewController *)&v28 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    [v7 addHomeManagerObserver:v6];
    [v7 addHomeObserver:v6];
    v8 = [v7 homeManager];
    v9 = [v8 homes];

    if (!v9)
    {
      v10 = objc_opt_class();
      NSLog(@"Creating %@ before the HMHomeManager has any homes!", v10);
    }

    v11 = [v7 homeManager];
    v12 = [v11 hf_orderedHomes];
    v13 = [v12 mutableCopy];
    homes = v6->_homes;
    v6->_homes = v13;

    v15 = +[HFHomeKitDispatcher sharedDispatcher];
    v16 = [v15 homeManager];
    v17 = [v16 incomingHomeInvitations];
    v18 = [v17 na_filter:&stru_1000C3D88];
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

- (HOLocationListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("init");
  [v6 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:128 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOLocationListViewController)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOLocationListViewController.m" lineNumber:133 description:{@"%s is unavailable; use %@ instead", "-[HOLocationListViewController initWithCoder:]", v6}];

  return 0;
}

- (HOLocationListViewController)initWithStyle:(int64_t)a3
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
  v3 = [(HOLocationListViewController *)self tableView];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  v4 = [(HOLocationListViewController *)self tableView];
  [v4 setEstimatedRowHeight:44.0];

  v5 = [(HOLocationListViewController *)self tableView];
  [v5 _setSectionContentInsetFollowsLayoutMargins:1];

  v6 = [(HOLocationListViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HOLocationTableViewCellReuseIdentifier"];

  v7 = [(HOLocationListViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUButtonCellReuseIdentifier"];

  v8 = [(HOLocationListViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUSwitchCellReuseIdentifier"];

  v9 = [(HOLocationListViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUIncomingInvitationTableViewCellReuseIdentifier"];

  v10 = [(HOLocationListViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v10 registerClass:v11 forHeaderFooterViewReuseIdentifier:v13];

  v14 = [(HOLocationListViewController *)self closeBarButtonItem];
  v15 = [(HOLocationListViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonPressed:"];
  v17 = [(HOLocationListViewController *)self navigationItem];
  [v17 setLeftBarButtonItem:v16];

  v18 = sub_1000391E8(@"HOLocationListTitle");
  [(HOLocationListViewController *)self setTitle:v18];
}

- (void)doneButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-doneButtonPressed]", v6, 2u);
  }

  v5 = [(HOLocationListViewController *)self delegate];
  [v5 locationListViewControllerDidFinish:self];
}

- (id)closeBarButtonItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"doneButtonPressed:"];

  return v2;
}

- (void)editButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-editButtonPressed]", v21, 2u);
  }

  v5 = [(HOLocationListViewController *)self tableView];
  v6 = [v5 isEditing];

  v7 = [(HOLocationListViewController *)self tableView];
  v8 = v7;
  if (v6)
  {
    [v7 setEditing:0];

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonPressed:"];
    v10 = [(HOLocationListViewController *)self navigationItem];
    [v10 setLeftBarButtonItem:v9];

    v11 = [(HOLocationListViewController *)self closeBarButtonItem];
    v12 = [(HOLocationListViewController *)self navigationItem];
    [v12 setRightBarButtonItem:v11];
  }

  else
  {
    [v7 setEditing:1];

    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"editButtonPressed:"];
    v14 = [(HOLocationListViewController *)self navigationItem];
    [v14 setLeftBarButtonItem:v13];

    v11 = [(HOLocationListViewController *)self navigationItem];
    [v11 setRightBarButtonItem:0];
  }

  if ([(HOLocationListViewController *)self showAddLocationButton])
  {
    v15 = [(HOLocationListViewController *)self _indexOfSectionWithIdentifier:@"HOLocationListLocationsSectionIdentifier"];
    v16 = [(HOLocationListViewController *)self tableView];
    v17 = [v16 numberOfRowsInSection:v15] - 1;

    v18 = [(HOLocationListViewController *)self tableView];
    v19 = [NSIndexPath indexPathForRow:v17 inSection:v15];
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [v18 reloadRowsAtIndexPaths:v20 withRowAnimation:5];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HOLocationListViewController *)self _identifierForSection:a4];
  v6 = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if ([v5 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v7 = [(HOLocationListViewController *)self homes];
    v8 = [v7 count];
    v9 = v8 + [(HOLocationListViewController *)self showAddLocationButton];
  }

  else if ([v5 isEqualToString:@"HOLocationListHomeSensingSectionIdentifier"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 containsObject:v5];
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v7 section]);
  v9 = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if (![v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    if ([v8 isEqualToString:@"HOLocationListHomeSensingSectionIdentifier"])
    {
      v13 = [v6 dequeueReusableCellWithIdentifier:@"HUSwitchCellReuseIdentifier" forIndexPath:v7];
      v23 = sub_1000391E8(@"HOLocationListHomeSensingTitle");
      v24 = [v13 textLabel];
      [v24 setText:v23];

      v25 = +[HFHomeKitDispatcher sharedDispatcher];
      [v13 setOn:{objc_msgSend(v25, "selectedHomeFollowsLocation")}];

      [v13 setDelegate:self];
    }

    else
    {
      if (![v9 containsObject:v8])
      {
        goto LABEL_19;
      }

      v13 = [v6 dequeueReusableCellWithIdentifier:@"HUIncomingInvitationTableViewCellReuseIdentifier" forIndexPath:v7];
      if ([(HOLocationListViewController *)self locationSensingAvailable])
      {
        v28 = @"HOLocationListHomeSensingSectionIdentifier";
      }

      else
      {
        v28 = @"HOLocationListLocationsSectionIdentifier";
      }

      v29 = ~[(HOLocationListViewController *)self _indexOfSectionWithIdentifier:v28];
      v30 = [v7 section] + v29;
      v31 = [(HOLocationListViewController *)self pendingInvitations];
      v32 = [v31 count];

      if (v30 < v32)
      {
        v33 = [(HOLocationListViewController *)self pendingInvitations];
        v34 = [v33 objectAtIndex:v30];

        [v13 setInvitation:v34];
        [v13 setDelegate:self];
        [v13 setSelectionStyle:0];
        v35 = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
        v36 = [v34 homeUUID];
        v37 = [v35 objectForKeyedSubscript:v36];

        if (v37)
        {
          v38 = -[HOLocationListViewController _showSpinnerForInvitationWithResponseControllerState:](self, "_showSpinnerForInvitationWithResponseControllerState:", [v37 state]);
        }

        else
        {
          v38 = [v34 invitationState] == 5;
        }

        [v13 setShowSpinner:v38];
      }
    }

    v22 = v13;
LABEL_11:

    goto LABEL_20;
  }

  v10 = [v7 row];
  v11 = [(HOLocationListViewController *)self homes];
  v12 = [v11 count];

  if (v10 < v12)
  {
    v40 = v9;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HOLocationTableViewCellReuseIdentifier" forIndexPath:v7];
    v14 = [(HOLocationListViewController *)self homes];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    [v13 setAccessoryType:1];
    v16 = [v15 name];
    [v13 setTitleText:v16];

    if ([v15 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
    {
      [v13 setDisabled:1];
      [v13 setAccessoryType:0];
    }

    v17 = [v15 uniqueIdentifier];
    v18 = +[HFHomeKitDispatcher sharedDispatcher];
    v19 = [v18 homeManager];
    v20 = [v19 currentHome];
    v21 = [v20 uniqueIdentifier];
    [v13 setShowLocationIcon:{objc_msgSend(v17, "isEqual:", v21)}];

    [v13 setShowsReorderControl:1];
    v22 = v13;
    v9 = v40;
    goto LABEL_11;
  }

  if ([(HOLocationListViewController *)self showAddLocationButton])
  {
    v22 = [v6 dequeueReusableCellWithIdentifier:@"HUButtonCellReuseIdentifier" forIndexPath:v7];
    v26 = sub_1000391E8(@"HOLocationListAddButtonTitle");
    v27 = [v22 textLabel];
    [v27 setText:v26];

    v13 = [(HOLocationListViewController *)self tableView];
    [v22 setDisabled:{objc_msgSend(v13, "isEditing")}];

    goto LABEL_11;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v5 section]);
  if ([v6 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v7 = [v5 row];
    v8 = [(HOLocationListViewController *)self homes];
    v9 = v7 < [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v18 section]);
  if ([v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v9 = [v18 row];
    if (v9 != [v7 row])
    {
      v10 = [(HOLocationListViewController *)self homes];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v18, "row")}];

      v12 = [(HOLocationListViewController *)self homes];
      [v12 removeObjectAtIndex:{objc_msgSend(v18, "row")}];

      v13 = [(HOLocationListViewController *)self homes];
      [v13 insertObject:v11 atIndex:{objc_msgSend(v7, "row")}];

      v14 = +[HFHomeKitDispatcher sharedDispatcher];
      v15 = [v14 homeManager];
      v16 = [(HOLocationListViewController *)self homes];
      v17 = [v15 hf_setOrderedHomes:v16];
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v5 section]);
  if (![v6 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    goto LABEL_5;
  }

  v7 = [v5 row];
  v8 = [(HOLocationListViewController *)self homes];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    goto LABEL_5;
  }

  v10 = [(HOLocationListViewController *)self homes];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  LOBYTE(v10) = [v11 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];
  if (v10)
  {
    v12 = 0;
  }

  else
  {
LABEL_5:
    v12 = v5;
  }

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-didSelectRowAtIndexPath] indexPath = %@", &v25, 0xCu);
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v9 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v6 section]);
  if ([v9 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v10 = [v6 row];
    v11 = [(HOLocationListViewController *)self homes];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [HFHomeBuilder alloc];
      v14 = [(HOLocationListViewController *)self homes];
      v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v16 = [v13 initWithExistingObject:0 inHome:v15];

      v17 = [[HUEditLocationViewController alloc] initWithHomeBuilder:v16 presentationDelegate:self addLocationDelegate:0];
      v18 = [(HOLocationListViewController *)self navigationController];
      v19 = [v18 hu_pushPreloadableViewController:v17 animated:1];

LABEL_8:
      goto LABEL_9;
    }

    v20 = [v6 row];
    v21 = [(HOLocationListViewController *)self homes];
    v22 = [v21 count];

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

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = -[HOLocationListViewController _identifierForSection:](self, "_identifierForSection:", [v8 section]);
  if (![v10 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    goto LABEL_4;
  }

  v11 = [v8 section];
  if (v11 == [v9 section])
  {
    v12 = [v9 row];
    v13 = [(HOLocationListViewController *)self homes];
    v14 = [v13 count];

    if (v12 < v14)
    {
LABEL_4:
      v15 = v9;
      goto LABEL_5;
    }

    v20 = [(HOLocationListViewController *)self homes];
    v15 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v20 count] - 1, objc_msgSend(v8, "section"));
  }

  else
  {
    v17 = [v9 section];
    v18 = [v8 section];
    if (v17 <= v18)
    {
      v19 = 0;
    }

    else
    {
      v5 = [(HOLocationListViewController *)self homes];
      v19 = [v5 count] - 1;
    }

    v15 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v19, [v8 section]);
    if (v17 > v18)
    {
    }
  }

LABEL_5:

  return v15;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = +[UIListContentConfiguration groupedHeaderConfiguration];
  v8 = [(HOLocationListViewController *)self _identifierForSection:a4];
  v9 = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  if ([v8 isEqualToString:@"HOLocationListLocationsSectionIdentifier"])
  {
    v10 = @"HOLocationListLocationsSection";
  }

  else
  {
    if ([v9 indexOfObject:v8])
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
  v14 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v13];

  [v14 setContentConfiguration:v7];

  return v14;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = +[UIListContentConfiguration groupedFooterConfiguration];
  v8 = [(HOLocationListViewController *)self _identifierForSection:a4];
  v9 = [(HOLocationListViewController *)self _pendingInvitationIdentifiers];
  v10 = [v9 indexOfObject:v8];
  if (v10 == [v9 count] - 1)
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
  v15 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v14];

  [v15 setContentConfiguration:v7];

  return v15;
}

- (void)homeManagerDidFinishUnknownChange:(id)a3
{
  v4 = [a3 hf_orderedHomes];
  v5 = [v4 mutableCopy];
  [(HOLocationListViewController *)self setHomes:v5];

  v6 = [(HOLocationListViewController *)self tableView];
  [v6 reloadData];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uniqueIdentifier];
    *buf = 138412546;
    v20 = v5;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didAddHome] home = %@ (%{public}@)", buf, 0x16u);
  }

  v8 = [(HOLocationListViewController *)self pendingInvitations];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003AAB0;
  v17[3] = &unk_1000C3DB0;
  v9 = v5;
  v18 = v9;
  v10 = [v8 na_firstObjectPassingTest:v17];

  if (v10 && ([v10 invitationState] == 2 || objc_msgSend(v10, "invitationState") == 5))
  {
    v11 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
    v12 = [v9 uuid];
    [v11 setObject:v9 forKey:v12];
  }

  else
  {
    v13 = [(HOLocationListViewController *)self homes];
    [v13 addObject:v9];

    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = [v11 homeManager];
    v14 = [(HOLocationListViewController *)self homes];
    v15 = [v12 hf_setOrderedHomes:v14];
  }

  v16 = [(HOLocationListViewController *)self tableView];
  [v16 reloadData];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uniqueIdentifier];
    *buf = 138412546;
    v20 = v5;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didRemoveHome] home = %@ (%{public}@)", buf, 0x16u);
  }

  v8 = [(HOLocationListViewController *)self homes];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10003ACE0;
  v17 = &unk_1000C3DD8;
  v18 = v5;
  v9 = v5;
  v10 = [v8 indexOfObjectPassingTest:&v14];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 uniqueIdentifier];
    v12 = [v11 UUIDString];
    NSLog(@"Received didRemoveHome: event for unknown home: %@", v12, v14, v15, v16, v17, v18);
  }

  else
  {
    v13 = [(HOLocationListViewController *)self homes];
    [v13 removeObjectAtIndex:v10];

    v11 = [(HOLocationListViewController *)self tableView];
    [v11 reloadData];
  }
}

- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v5;
    v64 = 2048;
    v65 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-homeManager:didUpdateStateForIncomingInvitations] incomingInvitations = %@ (count: %lu)", buf, 0x16u);
  }

  v7 = [(HOLocationListViewController *)self tableView];
  [v7 beginUpdates];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
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
          v13 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
          v14 = [v12 homeUUID];
          v15 = [v13 objectForKey:v14];

          if (v15)
          {
            v16 = [(HOLocationListViewController *)self homes];
            v17 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
            v18 = [v12 homeUUID];
            v19 = [v17 objectForKey:v18];
            [v16 addObject:v19];

            v20 = +[HFHomeKitDispatcher sharedDispatcher];
            v21 = [v20 homeManager];
            v22 = [(HOLocationListViewController *)self homes];
            v23 = [v21 hf_setOrderedHomes:v22];

            v24 = [(HOLocationListViewController *)self homesAwaitingPendingInvitations];
            v25 = [v12 homeUUID];
            [v24 removeObjectForKey:v25];

            v26 = [(HOLocationListViewController *)self tableView];
            v27 = [(HOLocationListViewController *)self homes];
            v28 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v27 count] - 1, -[HOLocationListViewController _indexOfSectionWithIdentifier:](self, "_indexOfSectionWithIdentifier:", @"HOLocationListLocationsSectionIdentifier"));
            v60 = v28;
            v29 = [NSArray arrayWithObjects:&v60 count:1];
            [v26 insertRowsAtIndexPaths:v29 withRowAnimation:0];
          }
        }

        if ([v12 invitationState] != 2 && objc_msgSend(v12, "invitationState") != 5)
        {
          v45 = [(HOLocationListViewController *)self pendingInvitations];
          v46 = [v45 indexOfObject:v12];

          if (v46 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_21;
          }

          v43 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:v12];
          v47 = [(HOLocationListViewController *)self pendingInvitations];
          [v47 removeObjectAtIndex:v46];

          v48 = [(HOLocationListViewController *)self tableView];
          v59 = v43;
          v49 = [NSArray arrayWithObjects:&v59 count:1];
          [v48 deleteRowsAtIndexPaths:v49 withRowAnimation:0];

          v44 = [(HOLocationListViewController *)self tableView];
          v50 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v43 section]);
          [v44 deleteSections:v50 withRowAnimation:0];

          goto LABEL_20;
        }

        v30 = [(HOLocationListViewController *)self pendingInvitations];
        v31 = [v30 indexOfObject:v12];

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
          v35 = [(HOLocationListViewController *)self pendingInvitations];
          v36 = [v35 count];

          v37 = [(HOLocationListViewController *)self pendingInvitations];
          [v37 addObject:v12];

          v38 = [(HOLocationListViewController *)self tableView];
          v39 = [NSIndexSet indexSetWithIndex:&v36[v34]];
          [v38 insertSections:v39 withRowAnimation:0];

          v40 = [(HOLocationListViewController *)self tableView];
          v41 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:v12];
          v58 = v41;
          v42 = [NSArray arrayWithObjects:&v58 count:1];
          [v40 insertRowsAtIndexPaths:v42 withRowAnimation:0];

          v43 = [(HOLocationListViewController *)self tableView];
          v9 = v52;
          v44 = [NSIndexSet indexSetWithIndexesInRange:v34, v36];
          [v43 _reloadSectionHeaderFooters:v44 withRowAnimation:0];
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

  v51 = [(HOLocationListViewController *)self tableView];
  [v51 endUpdates];
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = [(HOLocationListViewController *)self homes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003B4B4;
  v11[3] = &unk_1000C3DD8;
  v6 = v4;
  v12 = v6;
  v7 = [v5 indexOfObjectPassingTest:v11];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(HOLocationListViewController *)self tableView];
    v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v8 reloadRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (void)editLocationViewControllerWouldPresentAddController:(id)a3
{
  v4 = [UINavigationController alloc];
  v5 = [[HOAddLocationViewController alloc] initWithName:0 delegate:self];
  v6 = [v4 initWithRootViewController:v5];

  [v6 setModalPresentationStyle:2];
  [(HOLocationListViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)addLocationViewController:(id)a3 didFinishWithHome:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(HOLocationListViewController *)self navigationController];
    v8 = [v7 topViewController];
    v9 = [v8 isEqual:self];

    if ((v9 & 1) == 0)
    {
      v10 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:v6];
      v11 = [[HUEditLocationViewController alloc] initWithHomeBuilder:v10 presentationDelegate:self addLocationDelegate:0];
      v12 = [(HOLocationListViewController *)self navigationController];
      v13 = [v12 popToRootViewControllerAnimated:0];

      v14 = [(HOLocationListViewController *)self navigationController];
      v15 = [v14 hu_pushPreloadableViewController:v11 animated:0];
    }
  }

  [(HOLocationListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)invitationCell:(id)a3 didRespondToInvitationWithResponse:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 invitation];
  v8 = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
  v9 = [v7 homeUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v7 homeUUID];
    NSLog(@"Already have a response controller for invitation %@!", v11);
  }

  else if (a4 == 4)
  {
    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 hf_prettyDescription];
      v29 = [v7 uniqueIdentifier];
      *buf = 138412546;
      v75 = v28;
      v76 = 2114;
      v77 = v29;
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
    v66 = v7;
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
    v37 = [v35 popoverPresentationController];
    [v37 setSourceView:v6];
    [(HOLocationListViewController *)self presentViewController:v35 animated:1 completion:&stru_1000C3EA8];

    objc_destroyWeak(v67);
    objc_destroyWeak(buf);
  }

  else if (a4 == 1)
  {
    v12 = [v6 invitationHelper];
    if ([v12 isUnknownContact])
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
      v62 = [v7 startDate];
      v59 = +[NSCalendar autoupdatingCurrentCalendar];
      v61 = +[NSDate date];
      v15 = [v59 startOfDayForDate:v61];
      v58 = [NSDate hf_dateByAddingDays:-1 toDate:v15];

      v57 = [[NSDateInterval alloc] initWithStartDate:v58 endDate:v61];
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v7 hf_prettyDescription];
        v18 = [v7 uniqueIdentifier];
        v19 = [v12 inviterContact];
        *buf = 138412802;
        v75 = v17;
        v76 = 2114;
        v77 = v18;
        v78 = 2112;
        v79 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Confirming invitation %@ (uniqueIdentifier: %{public}@) from unknown contact %@", buf, 0x20u);
      }

      v20 = sub_1000391E8(@"HOLocationListInvitationAlertTitle");
      v21 = [v7 homeName];
      v56 = [NSString stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, v21];

      if ([v57 containsDate:v62])
      {
        v22 = sub_1000391E8(@"HOLocationListInvitationAlertBody_RelativeDate");
        v23 = [v53 stringFromDate:v62];
        v24 = [v54 stringFromDate:v62];
        v25 = [v12 inviterContact];
        v26 = [v25 givenName];
        v55 = [NSString stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@ %@" error:0, v23, v24, v26];
      }

      else
      {
        v22 = sub_1000391E8(@"HOLocationListInvitationAlertBody_OtherDate");
        v23 = [v60 stringFromDate:v62];
        v24 = [v12 inviterContact];
        v25 = [v24 givenName];
        v55 = [NSString stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:0, v23, v25];
      }

      v44 = [UIAlertController alertControllerWithTitle:v56 message:v55 preferredStyle:1];
      objc_initWeak(buf, self);
      v45 = sub_1000391E8(@"HOLocationListInvitationAlertAccept");
      v46 = [v12 invitation];
      v47 = [v46 isInviteeRestrictedGuest];

      if (v47)
      {
        v48 = sub_1000391E8(@"HOWelcomeView_Button_Continue");

        v45 = v48;
      }

      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_10003C208;
      v70[3] = &unk_1000C3E00;
      objc_copyWeak(v73, buf);
      v71 = v12;
      v72 = v7;
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
      v41 = [[HOOnboardingIncomingInvitationViewController alloc] initWithIncomingInvitation:v7 invitationHelper:v12 incomingInvitationDelegate:self];
      [(HOOnboardingIncomingInvitationViewController *)v41 setDelegate:self];
      v42 = [[UINavigationController alloc] initWithRootViewController:v41];
      v43 = [(HOLocationListViewController *)self hu_presentPreloadableViewController:v42 animated:1];
    }
  }

  else
  {
    v38 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:self invitation:v7];
    v39 = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
    v40 = [v7 homeUUID];
    [v39 setObject:v38 forKeyedSubscript:v40];

    [v38 respondToInvitationWithResponse:a4];
  }
}

- (void)invitationViewControllerDidDecideLaterInvitation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[HOLocationListViewController invitationViewControllerDidDecideLaterInvitation:error:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Deciding later for invitation | viewController %@ | error %@", buf, 0x20u);
  }

  v9 = [(HOLocationListViewController *)self hu_dismissViewControllerAnimated:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003CB40;
  v12[3] = &unk_1000C3ED0;
  v13 = v7;
  v10 = v7;
  v11 = [v9 addCompletionBlock:v12];
}

- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4
{
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [v6 state];
    v8 = HUStringFromIncomingInvitationResponseControllerState();
    v9 = [v6 invitation];
    v10 = [v9 hf_prettyDescription];
    v11 = [v6 invitation];
    v12 = [v11 uniqueIdentifier];
    v26 = 138543874;
    v27 = v8;
    v28 = 2112;
    v29 = v10;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationResponseController:stateDidChange] invitation state is %{public}@ for invitation %@ (uniqueIdentifier: %{public}@)", &v26, 0x20u);
  }

  v13 = [(HOLocationListViewController *)self pendingInvitations];
  v14 = [v6 invitation];
  v15 = [v13 indexOfObject:v14];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v6 invitation];
    v17 = [(HOLocationListViewController *)self _indexPathForPendingInvitation:v16];

    v18 = objc_opt_class();
    v19 = [(HOLocationListViewController *)self tableView];
    v20 = [v19 cellForRowAtIndexPath:v17];
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

    [v22 setShowSpinner:{-[HOLocationListViewController _showSpinnerForInvitationWithResponseControllerState:](self, "_showSpinnerForInvitationWithResponseControllerState:", a4)}];
    if (a4 == 2)
    {
      v23 = [(HOLocationListViewController *)self invitationResponseControllersByHomeUUID];
      v24 = [v6 invitation];
      v25 = [v24 homeUUID];
      [v23 removeObjectForKey:v25];
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

  v4 = [(HOLocationListViewController *)self pendingInvitations];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(HOLocationListViewController *)self pendingInvitations];
    v7 = [v6 na_map:&stru_1000C3EF0];
    [v3 na_safeAddObjectsFromArray:v7];
  }

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(@"Received identifier request for section (%ld), but only have (%ld) sections", a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (unint64_t)_indexOfSectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOLocationListViewController *)self _currentSectionIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D100;
  v9[3] = &unk_1000C3F18;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_pendingInvitationIdentifiers
{
  v2 = [(HOLocationListViewController *)self pendingInvitations];
  v3 = [v2 na_map:&stru_1000C3F38];

  return v3;
}

- (id)_indexPathForPendingInvitation:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];
  v6 = [NSIndexPath indexPathForRow:0 inSection:[(HOLocationListViewController *)self _indexOfSectionWithIdentifier:v5]];

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
  v3 = [v2 locationSensingAvailableFuture];
  v4 = +[NAScheduler mainThreadScheduler];
  v5 = [v3 reschedule:v4];
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