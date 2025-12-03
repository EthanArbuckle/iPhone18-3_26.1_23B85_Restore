@interface CHAddFriendViewController
- (BOOL)_contact:(id)_contact hasEmailDestination:(id)destination;
- (BOOL)_contact:(id)_contact hasPhoneNumberDestination:(id)destination;
- (BOOL)_destinationMatchesCurrentAccountDestination:(id)destination;
- (CHAddFriendViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager;
- (CHAddFriendViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_createPeoplePicker;
- (id)_destinationAddressesForCurrentAccount;
- (id)_noSuggestionString;
- (id)_preferredServiceIdentifierForDestination:(id)destination inReachableDestinationsByService:(id)service;
- (id)_recipientFromDestination:(id)destination;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_guessedKindForString:(id)string;
- (void)_addContact:(id)contact;
- (void)_addSuggestedContact:(id)contact;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_checkReachableForContact:(id)contact withDestination:(id)destination;
- (void)_dismissAndNotifyDelegate;
- (void)_doneButtonTapped:(id)tapped;
- (void)_fontSizeDidChange;
- (void)_mergeRecipient:(id)recipient;
- (void)_populateSuggestedContactsWithReachability;
- (void)_queryAllServicesForDestinations:(id)destinations reachableUpdateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_refilterShownContacts;
- (void)_searchForRecipientWithText:(id)text;
- (void)_sendInviteToRecipientsByService:(id)service completion:(id)completion;
- (void)_setShowSuggestions:(BOOL)suggestions;
- (void)_textFieldShouldBecomeFirstResponder;
- (void)_textFieldShouldResignFirstResponder;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)setShownContacts:(id)contacts;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CHAddFriendViewController

- (CHAddFriendViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager
{
  managerCopy = manager;
  friendManagerCopy = friendManager;
  v22.receiver = self;
  v22.super_class = CHAddFriendViewController;
  v9 = [(CHAddFriendViewController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_friendListManager, manager);
    objc_storeStrong(&v10->_friendManager, friendManager);
    allDestinationsForActiveOrPendingFriends = [(ASFriendListSectionManager *)v10->_friendListManager allDestinationsForActiveOrPendingFriends];
    allObjects = [allDestinationsForActiveOrPendingFriends allObjects];
    currentFriendDestinations = v10->_currentFriendDestinations;
    v10->_currentFriendDestinations = allObjects;

    v14 = [ASReachabilityManager sharedInstanceForServiceIdentifier:kASiCloudServiceIdentifier];
    v15 = [ASReachabilityManager sharedInstanceForServiceIdentifier:kASiMessageServiceIdentifier];
    v23[0] = v14;
    v23[1] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:2];
    reachabilityManagers = v10->_reachabilityManagers;
    v10->_reachabilityManagers = v16;

    v18 = objc_alloc_init(CHInvitationDestinationCoordinator);
    invitationDestinationCoordinator = v10->_invitationDestinationCoordinator;
    v10->_invitationDestinationCoordinator = v18;

    v20 = +[IMDaemonController sharedInstance];
    [v20 addListenerID:@"com.apple.Fitness.listener" capabilities:kFZListenerCapAccounts];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[IMDaemonController sharedInstance];
  [v3 removeListenerID:@"com.apple.Fitness.listener"];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v72 viewDidLoad];
  view = [(CHAddFriendViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];

  navigationItem = [(CHAddFriendViewController *)self navigationItem];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
  [navigationItem setTitle:v7];

  v70 = objc_alloc_init(CNComposeRecipientTextView);
  [(CHAddFriendViewController *)self setRecipientView:v70];
  [(CNComposeRecipientTextView *)self->_recipientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNComposeRecipientTextView *)self->_recipientView setEditable:1];
  [(CNComposeRecipientTextView *)self->_recipientView setAddresses:&__NSArray0__struct];
  [(CNComposeRecipientTextView *)self->_recipientView setDelegate:self];
  addButton = [(CNComposeRecipientTextView *)self->_recipientView addButton];
  [addButton setHidden:0];

  [(CNComposeRecipientTextView *)self->_recipientView setSeparatorHidden:0];
  recipientView = self->_recipientView;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SHARE_INVITE_TO" value:&stru_1008680E8 table:@"Localizable"];
  [(CNComposeRecipientTextView *)recipientView setLabel:v11];

  v12 = [[CNAutocompleteSearchManager alloc] initWithAutocompleteSearchType:1];
  searchManager = self->_searchManager;
  self->_searchManager = v12;

  [(CNAutocompleteSearchManager *)self->_searchManager setSearchTypes:17];
  [(CNAutocompleteSearchManager *)self->_searchManager setImplicitGroupCreationThreshold:2];
  [(CNAutocompleteSearchManager *)self->_searchManager setIncludeUpcomingEventMembers:1];
  _destinationAddressesForCurrentAccount = [(CHAddFriendViewController *)self _destinationAddressesForCurrentAccount];
  currentAccountAddresses = self->_currentAccountAddresses;
  self->_currentAccountAddresses = _destinationAddressesForCurrentAccount;

  _createPeoplePicker = [(CHAddFriendViewController *)self _createPeoplePicker];
  peoplePicker = self->_peoplePicker;
  self->_peoplePicker = _createPeoplePicker;

  v18 = [UITableView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  [(CHAddFriendViewController *)self setTableView:v22];

  tableView = [(CHAddFriendViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(CHAddFriendViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(CHAddFriendViewController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(CHAddFriendViewController *)self tableView];
  [tableView4 setKeyboardDismissMode:1];

  tableView5 = [(CHAddFriendViewController *)self tableView];
  [tableView5 setSectionHeaderTopPadding:0.0];

  v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tableView6 = [(CHAddFriendViewController *)self tableView];
  [tableView6 setTableFooterView:v28];

  tableView7 = [(CHAddFriendViewController *)self tableView];
  [tableView7 setSeparatorStyle:0];

  tableView8 = [(CHAddFriendViewController *)self tableView];
  separatorColor = [tableView8 separatorColor];
  separatorColor = self->_separatorColor;
  self->_separatorColor = separatorColor;

  tableView9 = [(CHAddFriendViewController *)self tableView];
  v35 = +[UIColor clearColor];
  [tableView9 setSeparatorColor:v35];

  v36 = [[CNMonogrammer alloc] initWithStyle:0 diameter:32.0];
  monogrammer = self->_monogrammer;
  self->_monogrammer = v36;

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000C2A74;
  v71[3] = &unk_10083AF08;
  v71[4] = self;
  v38 = [NSPredicate predicateWithBlock:v71];
  recipientArrayFilterPredicate = self->_recipientArrayFilterPredicate;
  self->_recipientArrayFilterPredicate = v38;

  v40 = objc_alloc_init(NSMutableArray);
  pendingSearchResults = self->_pendingSearchResults;
  self->_pendingSearchResults = v40;

  v42 = objc_alloc_init(CNAutocompleteFetchContext);
  context = self->_context;
  self->_context = v42;

  v44 = self->_context;
  v73[0] = CRRecentsDomainMail;
  v73[1] = CRRecentsDomainMessages;
  v45 = [NSArray arrayWithObjects:v73 count:2];
  [(CNAutocompleteFetchContext *)v44 setBundleIdentifiers:v45];

  [(CNAutocompleteFetchContext *)self->_context setPredictsBasedOnOutgoingInteraction:1];
  self->_finishedPopulatingSuggestions = 0;
  [(CHAddFriendViewController *)self _searchForRecipientWithText:@"*"];
  view2 = [(CHAddFriendViewController *)self view];
  recipientView = [(CHAddFriendViewController *)self recipientView];
  [view2 addSubview:recipientView];

  view3 = [(CHAddFriendViewController *)self view];
  tableView10 = [(CHAddFriendViewController *)self tableView];
  [view3 addSubview:tableView10];

  v50 = objc_opt_new();
  v51 = _NSDictionaryOfVariableBindings(@"_recipientView, _tableView", self->_recipientView, self->_tableView, 0);
  v52 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_recipientView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v52];

  v53 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v53];

  v54 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_recipientView][_tableView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v54];

  topAnchor = [(CNComposeRecipientTextView *)self->_recipientView topAnchor];
  view4 = [(CHAddFriendViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v50 addObject:v59];

  heightAnchor = [(CNComposeRecipientTextView *)self->_recipientView heightAnchor];
  +[CNComposeRecipientTextView preferredHeight];
  v61 = [heightAnchor constraintEqualToConstant:?];
  [(CHAddFriendViewController *)self setComposeInputLineHeight:v61];

  composeInputLineHeight = [(CHAddFriendViewController *)self composeInputLineHeight];
  LODWORD(v63) = 1148829696;
  [composeInputLineHeight setPriority:v63];

  composeInputLineHeight2 = [(CHAddFriendViewController *)self composeInputLineHeight];
  [v50 addObject:composeInputLineHeight2];

  heightAnchor2 = [(CNComposeRecipientTextView *)self->_recipientView heightAnchor];
  view5 = [(CHAddFriendViewController *)self view];
  heightAnchor3 = [view5 heightAnchor];
  v68 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 multiplier:0.3];
  [v50 addObject:v68];

  [NSLayoutConstraint activateConstraints:v50];
  v69 = +[NSNotificationCenter defaultCenter];
  [v69 addObserver:self selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_fontSizeDidChange
{
  +[CNComposeRecipientTextView preferredHeight];
  v4 = v3;
  composeInputLineHeight = [(CHAddFriendViewController *)self composeInputLineHeight];
  [composeInputLineHeight setConstant:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v19 viewWillAppear:appear];
  v4 = [UIBarButtonItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SHARING_INVITE_SEND" value:&stru_1008680E8 table:@"Localizable"];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:"_doneButtonTapped:"];
  navigationItem = [(CHAddFriendViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  recipientView = [(CHAddFriendViewController *)self recipientView];
  recipients = [recipientView recipients];
  v11 = [recipients count] != 0;

  navigationItem2 = [(CHAddFriendViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:v11];

  v14 = [UIBarButtonItem alloc];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v17 = [v14 initWithTitle:v16 style:0 target:self action:"_cancelButtonTapped:"];
  navigationItem3 = [(CHAddFriendViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v17];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v4 viewDidAppear:appear];
  [(CNComposeRecipientTextView *)self->_recipientView reflow];
  [(CHAddFriendViewController *)self _textFieldShouldBecomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  recipientView = [(CHAddFriendViewController *)self recipientView];
  [recipientView frame];
  v5 = v4;
  v7 = v6;

  parentViewController = [(CHAddFriendViewController *)self parentViewController];
  navigationBar = [parentViewController navigationBar];
  [navigationBar frame];
  v11 = v10;

  v12 = +[UIApplication sharedApplication];
  windows = [v12 windows];
  firstObject = [windows firstObject];
  windowScene = [firstObject windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v18 = v17;

  v19 = v11 + v18;
  view = [(CHAddFriendViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v33);

  recipientView2 = [(CHAddFriendViewController *)self recipientView];
  [recipientView2 setFrame:{v5, v19, Width, v7}];

  tableView = [(CHAddFriendViewController *)self tableView];
  [tableView frame];
  v25 = v24;
  v27 = v26;

  v34.origin.x = v5;
  v34.origin.y = v19;
  v34.size.width = Width;
  v34.size.height = v7;
  MaxY = CGRectGetMaxY(v34);
  view2 = [(CHAddFriendViewController *)self view];
  [view2 bounds];
  v30 = CGRectGetWidth(v35);

  tableView2 = [(CHAddFriendViewController *)self tableView];
  [tableView2 setFrame:{v25, MaxY, v30, v27}];

  v32.receiver = self;
  v32.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v32 viewWillLayoutSubviews];
}

- (void)_sendInviteToRecipientsByService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 1;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_1000C33FC;
  v25[4] = sub_1000C340C;
  v26 = 0;
  v8 = dispatch_group_create();
  v9 = HKCreateSerialDispatchQueue();
  v10 = sub_1000C3414();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C3480;
  v18[3] = &unk_10083AF80;
  v11 = v8;
  v19 = v11;
  selfCopy = self;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  v23 = v27;
  v24 = v25;
  [serviceCopy enumerateKeysAndObjectsUsingBlock:v18];
  if (completionCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C3738;
    block[3] = &unk_10083AFA8;
    v15 = completionCopy;
    v16 = v27;
    v17 = v25;
    dispatch_group_notify(v11, &_dispatch_main_q, block);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

- (void)_doneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  recipientView = [(CHAddFriendViewController *)self recipientView];
  finishEnteringRecipient = [recipientView finishEnteringRecipient];

  recipientView2 = [(CHAddFriendViewController *)self recipientView];
  recipients = [recipientView2 recipients];
  v9 = [recipients count];

  [(CHAddFriendViewController *)self _dismissKeyboard:self];
  if (&v9[finishEnteringRecipient] <= [(ASFriendListSectionManager *)self->_friendListManager numberOfNewFriendsAllowed])
  {
    recipientView3 = [(CHAddFriendViewController *)self recipientView];
    recipients2 = [recipientView3 recipients];
    v12 = [recipients2 count];

    if (v12)
    {
      v13 = objc_alloc_init(NSMutableSet);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      recipientView4 = [(CHAddFriendViewController *)self recipientView];
      recipients3 = [recipientView4 recipients];

      v16 = [recipients3 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        v17 = *v37;
        do
        {
          v18 = 0;
          do
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(recipients3);
            }

            address = [*(*(&v36 + 1) + 8 * v18) address];
            [v13 addObject:address];

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [recipients3 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v16);
      }

      navigationItem = [(CHAddFriendViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:0];

      objc_initWeak(&location, self);
      if (ASManateeContainerEnabled())
      {
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000C3B7C;
        v34[3] = &unk_10083AFD0;
        v34[4] = self;
        v22 = [v13 hk_filter:v34];
        invitationDestinationCoordinator = self->_invitationDestinationCoordinator;
        allObjects = [v22 allObjects];
        v25 = sub_1000C3414();
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000C3BA0;
        v32[3] = &unk_10083A948;
        v32[4] = self;
        v33 = v13;
        [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator sendInvitationToDestinations:allObjects callerID:v25 completion:v32];
      }

      else
      {
        v26 = objc_alloc_init(NSMutableDictionary);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000C3FFC;
        v28[3] = &unk_10083B048;
        objc_copyWeak(&v31, &location);
        v27 = v26;
        v29 = v27;
        v30 = v13;
        [(CHAddFriendViewController *)self _queryAllServicesForDestinations:v30 reachableUpdateHandler:0 completionHandler:v28];

        objc_destroyWeak(&v31);
      }

      objc_destroyWeak(&location);
    }

    else
    {
      [(CHAddFriendViewController *)self _dismissAndNotifyDelegate];
    }
  }
}

- (void)_populateSuggestedContactsWithReachability
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  selfCopy2 = self;
  if ([(NSArray *)self->_searchResults count]>= 0x1A)
  {
    v5 = [(NSArray *)self->_searchResults subarrayWithRange:0, 25];
    v6 = [v5 mutableCopy];
    selfCopy2 = self;
    searchResults = self->_searchResults;
    self->_searchResults = v6;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = selfCopy2->_searchResults;
  v32 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v32)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        contact = [*(*(&v50 + 1) + 8 * i) contact];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        emailAddresses = [contact emailAddresses];
        v11 = [emailAddresses countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v11)
        {
          v12 = *v47;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(emailAddresses);
              }

              value = [*(*(&v46 + 1) + 8 * j) value];
              [v2 setObject:contact forKeyedSubscript:value];
            }

            v11 = [emailAddresses countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v11);
        }

        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v42 = 0u;
        phoneNumbers = [contact phoneNumbers];
        v16 = [phoneNumbers countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v16)
        {
          v17 = *v43;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              value2 = [*(*(&v42 + 1) + 8 * k) value];
              stringValue = [value2 stringValue];
              [v3 setObject:contact forKeyedSubscript:stringValue];
            }

            v16 = [phoneNumbers countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v16);
        }
      }

      v32 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v32);
  }

  allKeys = [v2 allKeys];
  allKeys2 = [v3 allKeys];
  v23 = [allKeys arrayByAddingObjectsFromArray:allKeys2];
  v24 = [NSSet setWithArray:v23];

  v25 = +[NSMutableArray array];
  reachableSuggestedContacts = self->_reachableSuggestedContacts;
  self->_reachableSuggestedContacts = v25;

  [(CHAddFriendViewController *)self _setShowSuggestions:1];
  self->_finishedPopulatingSuggestions = 1;
  [(CNAutocompleteSearchManager *)self->_searchManager setSearchTypes:19];
  if ([v24 count])
  {
    if (ASManateeContainerEnabled())
    {
      invitationDestinationCoordinator = self->_invitationDestinationCoordinator;
      allObjects = [v24 allObjects];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000C4D60;
      v38[3] = &unk_10083B070;
      v39 = v2;
      v40 = v3;
      selfCopy3 = self;
      [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator fetchReachableDestinationsFor:allObjects completion:v38];
    }

    else
    {
      objc_initWeak(&location, self);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000C5014;
      v33[3] = &unk_10083B098;
      objc_copyWeak(&v36, &location);
      v34 = v2;
      v35 = v3;
      [(CHAddFriendViewController *)self _queryAllServicesForDestinations:v24 reachableUpdateHandler:v33 completionHandler:0];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  [(CHAddFriendViewController *)self _dismissKeyboard:self];

  [(CHAddFriendViewController *)self _dismissAndNotifyDelegate];
}

- (void)_addContact:(id)contact
{
  recipientView = [(CHAddFriendViewController *)self recipientView];
  [(CHAddFriendViewController *)self composeRecipientViewRequestAddRecipient:recipientView];
}

- (void)_textFieldShouldBecomeFirstResponder
{
  recipientView = [(CHAddFriendViewController *)self recipientView];
  textView = [recipientView textView];
  [textView becomeFirstResponder];
}

- (void)_textFieldShouldResignFirstResponder
{
  recipientView = [(CHAddFriendViewController *)self recipientView];
  textView = [recipientView textView];
  [textView resignFirstResponder];
}

- (id)_recipientFromDestination:(id)destination
{
  destinationCopy = destination;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recipientView = [(CHAddFriendViewController *)self recipientView];
  recipients = [recipientView recipients];

  v7 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(recipients);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        address = [v10 address];
        v12 = [destinationCopy isEqualToString:address];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (unint64_t)_guessedKindForString:(id)string
{
  stringCopy = string;
  if ([stringCopy containsString:@"@"] & 1) != 0 || (objc_msgSend(stringCopy, "containsString:", @"mailto:"))
  {
    v4 = 0;
  }

  else if (([stringCopy containsString:@"tel:"] & 1) != 0 || (+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", v6), v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (id)_createPeoplePicker
{
  v3 = objc_alloc_init(CNContactPickerViewController);
  [v3 setDelegate:self];
  [v3 setHidesPromptInLandscape:1];
  [v3 setAllowsEditing:1];
  [v3 setAllowsCancel:1];
  v20[0] = CNContactEmailAddressesKey;
  v20[1] = CNContactPhoneNumbersKey;
  v4 = [NSArray arrayWithObjects:v20 count:2];
  [v3 setDisplayedPropertyKeys:v4];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NSPredicate predicateWithFormat:@"%K.@count > 0", *(*(&v15 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [NSPredicate predicateWithValue:0];
  [v3 setPredicateForSelectionOfContact:v12];

  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];
  [v3 setPredicateForEnablingContact:v13];

  [v3 setModalPresentationStyle:3];
  [v3 _setAllowsAutorotation:0];

  return v3;
}

- (void)_dismissAndNotifyDelegate
{
  parentViewController = [(CHAddFriendViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];

  delegate = [(CHAddFriendViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CHAddFriendViewController *)self delegate];
    [delegate2 addFriendViewControllerDidDismiss:self];
  }
}

- (void)_searchForRecipientWithText:(id)text
{
  textCopy = text;
  [(CHAddFriendViewController *)self _resetSearchResults];
  if (!self->_currentSearchTaskID || self->_finishedPopulatingSuggestions && ([(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?], v4 = self->_currentSearchTaskID, self->_currentSearchTaskID = 0, v4, !self->_currentSearchTaskID))
  {
    uncommentedAddresses = [(CNComposeRecipientTextView *)self->_recipientView uncommentedAddresses];
    v6 = [uncommentedAddresses arrayByAddingObjectsFromArray:self->_currentAccountAddresses];

    if (self->_currentFriendDestinations && !self->_finishedPopulatingSuggestions)
    {
      v7 = [v6 arrayByAddingObjectsFromArray:?];

      v6 = v7;
    }

    [(CNAutocompleteFetchContext *)self->_context setOtherAddressesAlreadyChosen:v6];
    v8 = [(CNAutocompleteSearchManager *)self->_searchManager searchForText:textCopy withAutocompleteFetchContext:self->_context consumer:self];
    currentSearchTaskID = self->_currentSearchTaskID;
    self->_currentSearchTaskID = v8;
  }
}

- (id)_destinationAddressesForCurrentAccount
{
  v2 = [[NSMutableSet alloc] initWithCapacity:2];
  v3 = objc_alloc_init(ACAccountStore);
  v4 = [v3 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCloudKit];
  v23 = v3;
  [v3 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIdentityServices];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v31 = 0u;
  v21 = v4;
  v33[0] = v4;
  v33[1] = v20;
  obj = [NSArray arrayWithObjects:v33 count:2];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v23 accountsWithAccountType:*(*(&v28 + 1) + 8 * i)];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              username = [v14 username];

              if (username)
              {
                username2 = [v14 username];
                [v2 addObject:username2];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v17 = sub_1000C3414();
  if (v17)
  {
    [v2 addObject:v17];
  }

  allObjects = [v2 allObjects];

  return allObjects;
}

- (void)finishedSearchingForAutocompleteResults
{
  v3 = [(NSMutableArray *)self->_pendingSearchResults copy];
  searchResults = self->_searchResults;
  self->_searchResults = v3;

  if (!self->_finishedPopulatingSuggestions)
  {
    [(CHAddFriendViewController *)self _populateSuggestedContactsWithReachability];
  }

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (id)_preferredServiceIdentifierForDestination:(id)destination inReachableDestinationsByService:(id)service
{
  destinationCopy = destination;
  serviceCopy = service;
  v7 = kASiCloudServiceIdentifier;
  v8 = [serviceCopy objectForKeyedSubscript:kASiCloudServiceIdentifier];
  v9 = [v8 containsObject:destinationCopy];

  if ((v9 & 1) != 0 || (v7 = kASiMessageServiceIdentifier, [serviceCopy objectForKeyedSubscript:kASiMessageServiceIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", destinationCopy), v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_queryAllServicesForDestinations:(id)destinations reachableUpdateHandler:(id)handler completionHandler:(id)completionHandler
{
  destinationsCopy = destinations;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v9 = dispatch_group_create();
  v10 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_reachabilityManagers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        dispatch_group_enter(v9);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000C5FD8;
        v25[3] = &unk_10083B110;
        v25[4] = v15;
        v26 = v10;
        v27 = handlerCopy;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000C63AC;
        v23[3] = &unk_10083B138;
        v24 = v9;
        [v15 queryDestinations:destinationsCopy updateHandler:v25 completionHandler:v23];
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  if (completionHandlerCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C63B4;
    block[3] = &unk_10083B188;
    v20 = v10;
    selfCopy = self;
    v22 = completionHandlerCopy;
    dispatch_group_notify(v9, &_dispatch_main_q, block);
  }
}

- (void)_checkReachableForContact:(id)contact withDestination:(id)destination
{
  destinationCopy = destination;
  contactCopy = contact;
  recipientView = [(CHAddFriendViewController *)self recipientView];
  v9 = [recipientView atomViewForRecipient:contactCopy];

  v10 = +[UIColor darkGrayColor];
  [v9 setBackgroundColor:v10];

  v11 = +[UIColor grayColor];
  [v9 setTintColor:v11];

  v12 = +[UIApplication sharedApplication];
  windows = [v12 windows];
  firstObject = [windows firstObject];
  tintColor = [firstObject tintColor];

  v16 = [NSSet setWithObject:destinationCopy];
  if (ASManateeContainerEnabled())
  {
    invitationDestinationCoordinator = self->_invitationDestinationCoordinator;
    allObjects = [v16 allObjects];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000C6868;
    v28[3] = &unk_10083B070;
    v19 = &v29;
    v20 = &v30;
    v29 = destinationCopy;
    v30 = v9;
    v31 = tintColor;
    v21 = tintColor;
    v22 = v9;
    [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator fetchReachableDestinationsFor:allObjects completion:v28];
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000C6994;
    v25[3] = &unk_10083B1B0;
    v19 = &v26;
    v20 = &v27;
    v26 = v9;
    v27 = tintColor;
    v23 = tintColor;
    v24 = v9;
    [(CHAddFriendViewController *)self _queryAllServicesForDestinations:v16 reachableUpdateHandler:v25 completionHandler:0];
  }
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  v5 = [(CHAddFriendViewController *)self composeInputLineHeight:view];
  [v5 setConstant:height];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  [(CNComposeRecipientTextView *)self->_recipientView clearText];
  parentViewController = [(CHAddFriendViewController *)self parentViewController];
  [parentViewController presentViewController:self->_peoplePicker animated:1 completion:0];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy length])
  {
    if (self->_showSuggestions)
    {
      [(CHAddFriendViewController *)self _setShowSuggestions:0];
    }

    [(CHAddFriendViewController *)self _searchForRecipientWithText:changeCopy];
  }

  else
  {
    [(CHAddFriendViewController *)self _setShowSuggestions:1];
    [(CHAddFriendViewController *)self _resetSearchResults];
    v5 = [(NSMutableArray *)self->_pendingSearchResults copy];
    searchResults = self->_searchResults;
    self->_searchResults = v5;

    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  recipientCopy = recipient;
  recipients = [viewCopy recipients];
  v8 = [recipients count];

  if (v8)
  {
    navigationItem = [(CHAddFriendViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];
  }

  recipients2 = [viewCopy recipients];
  v12 = [recipients2 count];
  numberOfNewFriendsAllowed = [(ASFriendListSectionManager *)self->_friendListManager numberOfNewFriendsAllowed];

  if (v12 <= numberOfNewFriendsAllowed)
  {
    address = [recipientCopy address];
    [(CHAddFriendViewController *)self _checkReachableForContact:recipientCopy withDestination:address];

    [(CHAddFriendViewController *)self _refilterShownContacts];
  }

  else
  {
    v14 = sub_10010833C();
    recipientView = [(CHAddFriendViewController *)self recipientView];
    [recipientView removeRecipient:recipientCopy];

    parentViewController = [(CHAddFriendViewController *)self parentViewController];
    [parentViewController presentViewController:v14 animated:1 completion:0];
  }
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  recipients = [view recipients];
  v6 = [recipients count];

  if (!v6)
  {
    navigationItem = [(CHAddFriendViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];
  }

  [(CHAddFriendViewController *)self _refilterShownContacts];
}

- (void)_mergeRecipient:(id)recipient
{
  recipientCopy = recipient;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  recipientView = [(CHAddFriendViewController *)self recipientView];
  recipients = [recipientView recipients];

  v7 = [recipients countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = 0;
  obj = recipients;
  v23 = *v25;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v25 != v23)
    {
      objc_enumerationMutation(obj);
    }

    if (v11 = *(*(&v24 + 1) + 8 * v10), [recipientCopy address], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "address"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recipientCopy, "contact"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "contact"), v15 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v11, "isEqual:", recipientCopy)) || (objc_msgSend(v13, "isEqualToString:", v12) & 1) != 0 || v15 && (-[CHAddFriendViewController _contact:hasEmailDestination:](selfCopy, "_contact:hasEmailDestination:", v15, v12) || -[CHAddFriendViewController _contact:hasPhoneNumberDestination:](selfCopy, "_contact:hasPhoneNumberDestination:", v15, v12)) || v14 && (-[CHAddFriendViewController _contact:hasEmailDestination:](selfCopy, "_contact:hasEmailDestination:", v14, v13) || -[CHAddFriendViewController _contact:hasPhoneNumberDestination:](selfCopy, "_contact:hasPhoneNumberDestination:", v14, v13)))
    {
      v16 = v11;

      v17 = 0;
      v9 = v16;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v18 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v8 = v18;
      if (v18)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  contact = [recipientCopy contact];

  if (contact)
  {
    recipients = [(CHAddFriendViewController *)selfCopy recipientView];
    [recipients removeRecipient:v9];
LABEL_24:

LABEL_25:
    recipientView2 = [(CHAddFriendViewController *)selfCopy recipientView];
    [recipientView2 addRecipient:recipientCopy];
  }
}

- (BOOL)_contact:(id)_contact hasEmailDestination:(id)destination
{
  destinationCopy = destination;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  emailAddresses = [_contact emailAddresses];
  v7 = [emailAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v13 + 1) + 8 * i) value];
        v11 = [value isEqualToString:destinationCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [emailAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)_contact:(id)_contact hasPhoneNumberDestination:(id)destination
{
  _contactCopy = _contact;
  destinationCopy = destination;
  v7 = [[CNPhoneNumber alloc] initWithStringValue:destinationCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  phoneNumbers = [_contactCopy phoneNumbers];
  v9 = [phoneNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v15 + 1) + 8 * i) value];
        v13 = [v7 isLikePhoneNumber:value];

        if (v13)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [phoneNumbers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  addressCopy = address;
  destinationStripped = [addressCopy destinationStripped];
  if ([destinationStripped length] && ((objc_msgSend(addressCopy, "isPhoneNumber") & 1) != 0 || objc_msgSend(addressCopy, "isEmail")))
  {
    v6 = [[CNComposeRecipient alloc] initWithContact:0 address:destinationStripped kind:{-[CHAddFriendViewController _guessedKindForString:](self, "_guessedKindForString:", destinationStripped)}];
    [(CHAddFriendViewController *)self _mergeRecipient:v6];
    recipientView = [(CHAddFriendViewController *)self recipientView];
    [recipientView clearText];

    recipientView2 = [(CHAddFriendViewController *)self recipientView];
    delegate = [recipientView2 delegate];
    recipientView3 = [(CHAddFriendViewController *)self recipientView];
    [delegate composeRecipientView:recipientView3 textDidChange:&stru_1008680E8];
  }
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  pickerCopy = picker;
  v7 = [propertyCopy key];
  v8 = [v7 isEqualToString:CNContactEmailAddressesKey];

  value = [propertyCopy value];
  v10 = value;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    stringValue = [value stringValue];

    v11 = 1;
    v10 = stringValue;
  }

  [pickerCopy dismissViewControllerAnimated:1 completion:0];

  v13 = [CNComposeRecipient alloc];
  contact = [propertyCopy contact];
  v15 = [v13 initWithContact:contact address:v10 kind:v11];

  [(CHAddFriendViewController *)self _mergeRecipient:v15];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerCopy = picker;
  emailAddresses = [contactCopy emailAddresses];
  v8 = [emailAddresses count];

  if (v8)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    firstObject = [emailAddresses2 firstObject];
    value = [firstObject value];
    v12 = 0;
  }

  else
  {
    emailAddresses2 = [contactCopy phoneNumbers];
    firstObject = [emailAddresses2 firstObject];
    value2 = [firstObject value];
    value = [value2 stringValue];

    v12 = 1;
  }

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
  v14 = [[CNComposeRecipient alloc] initWithContact:contactCopy address:value kind:v12];
  [(CHAddFriendViewController *)self _mergeRecipient:v14];
}

- (void)_addSuggestedContact:(id)contact
{
  contactCopy = contact;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  reachableSuggestedContacts = self->_reachableSuggestedContacts;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000C76B4;
  v10 = &unk_10083B1D8;
  v12 = &v13;
  v6 = contactCopy;
  v11 = v6;
  [(NSMutableArray *)reachableSuggestedContacts enumerateObjectsUsingBlock:&v7];
  if ((v14[3] & 1) == 0)
  {
    [(NSMutableArray *)self->_reachableSuggestedContacts addObject:v6, v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_setShowSuggestions:(BOOL)suggestions
{
  self->_showSuggestions = suggestions;
  if (suggestions)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = [(CHAddFriendViewController *)self tableView];
    [tableView setTableFooterView:v4];

    tableView2 = [(CHAddFriendViewController *)self tableView];
    [tableView2 setSeparatorStyle:0];

    tableView3 = [(CHAddFriendViewController *)self tableView];
    v8 = +[UIColor clearColor];
    [tableView3 setSeparatorColor:v8];

    reachableSuggestedContacts = self->_reachableSuggestedContacts;
  }

  else
  {
    tableView4 = [(CHAddFriendViewController *)self tableView];
    [tableView4 setTableFooterView:0];

    tableView5 = [(CHAddFriendViewController *)self tableView];
    [tableView5 setSeparatorStyle:1];

    tableView6 = [(CHAddFriendViewController *)self tableView];
    [tableView6 setSeparatorColor:self->_separatorColor];

    reachableSuggestedContacts = &__NSArray0__struct;
  }

  [(CHAddFriendViewController *)self setShownContacts:reachableSuggestedContacts];
}

- (void)setShownContacts:(id)contacts
{
  contactsCopy = contacts;
  if (![(NSArray *)self->_shownContacts isEqualToArray:?])
  {
    v4 = [contactsCopy copy];
    shownContacts = self->_shownContacts;
    self->_shownContacts = v4;

    [(CHAddFriendViewController *)self _refilterShownContacts];
  }
}

- (void)_refilterShownContacts
{
  v3 = [(NSArray *)self->_shownContacts filteredArrayUsingPredicate:self->_recipientArrayFilterPredicate];
  unselectedShownContacts = self->_unselectedShownContacts;
  self->_unselectedShownContacts = v3;

  v5 = [(NSArray *)self->_unselectedShownContacts sortedArrayUsingComparator:&stru_10083B218];
  v6 = self->_unselectedShownContacts;
  self->_unselectedShownContacts = v5;

  tableView = [(CHAddFriendViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_showSuggestions)
  {
    result = [(NSArray *)self->_unselectedShownContacts count:view];
    if (result <= 1)
    {
      return 1;
    }
  }

  else
  {
    searchResults = self->_searchResults;

    return [(NSArray *)searchResults count:view];
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_showSuggestions)
  {
    if ([(NSArray *)self->_unselectedShownContacts count])
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"SuggestedContactCellReuseIdentifier"];
      if (!v8)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"SuggestedContactCellReuseIdentifier"];
        v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v9 setBackgroundColor:self->_separatorColor];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(CHRecipientTableViewCell *)v8 contentView];
        [contentView addSubview:v9];

        v49 = @"inset";
        [viewCopy separatorInset];
        v48 = [NSNumber numberWithDouble:v11];
        v50 = v48;
        v12 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        _NSDictionaryOfVariableBindings(@"separatorView", v9, 0);
        v13 = v47 = pathCopy;
        +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(inset)-[separatorView]|", 0, v12, v13);
        v15 = v14 = viewCopy;
        [NSLayoutConstraint activateConstraints:v15];

        viewCopy = v14;
        pathCopy = v47;

        v16 = _NSDictionaryOfVariableBindings(@"separatorView", v9, 0);
        v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[separatorView]|" options:0 metrics:0 views:v16];
        [NSLayoutConstraint activateConstraints:v17];

        heightAnchor = [v9 heightAnchor];
        v19 = [heightAnchor constraintEqualToConstant:0.5];
        [v19 setActive:1];
      }

      v20 = -[NSArray objectAtIndexedSubscript:](self->_unselectedShownContacts, "objectAtIndexedSubscript:", [pathCopy row]);
      contact = [v20 contact];
      v22 = [CNContactFormatter stringFromContact:contact style:0];
      textLabel = [(CHRecipientTableViewCell *)v8 textLabel];
      [textLabel setText:v22];

      reachableEmailAddress = [v20 reachableEmailAddress];

      if (reachableEmailAddress)
      {
        reachableEmailAddress2 = [v20 reachableEmailAddress];
        detailTextLabel = [(CHRecipientTableViewCell *)v8 detailTextLabel];
        [detailTextLabel setText:reachableEmailAddress2];
      }

      else
      {
        reachableEmailAddress2 = [v20 reachablePhoneNumber];
        detailTextLabel = sub_1000C2C20(reachableEmailAddress2);
        detailTextLabel2 = [(CHRecipientTableViewCell *)v8 detailTextLabel];
        [detailTextLabel2 setText:detailTextLabel];
      }

      if (self->_showSuggestions)
      {
        monogrammer = self->_monogrammer;
        contact2 = [v20 contact];
        v38 = [(CNMonogrammer *)monogrammer monogramForContact:contact2];
        imageView = [(CHRecipientTableViewCell *)v8 imageView];
        [imageView setImage:v38];
      }

      else
      {
        contact2 = [(CHRecipientTableViewCell *)v8 imageView];
        [contact2 setImage:0];
      }

      v40 = +[ARUIMetricColors keyColors];
      nonGradientTextColor = [v40 nonGradientTextColor];
      textLabel2 = [(CHRecipientTableViewCell *)v8 textLabel];
      [textLabel2 setTextColor:nonGradientTextColor];

      textLabel3 = [(CHRecipientTableViewCell *)v8 textLabel];
      textColor = [textLabel3 textColor];
      detailTextLabel3 = [(CHRecipientTableViewCell *)v8 detailTextLabel];
      [detailTextLabel3 setTextColor:textColor];

      [(CHRecipientTableViewCell *)v8 setSelectionStyle:3];
    }

    else if (self->_showSuggestions)
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"NoSuggestedContactsCellReuseIdentifier"];
      if (!v8)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"NoSuggestedContactsCellReuseIdentifier"];
      }

      _noSuggestionString = [(CHAddFriendViewController *)self _noSuggestionString];
      textLabel4 = [(CHRecipientTableViewCell *)v8 textLabel];
      [textLabel4 setAttributedText:_noSuggestionString];

      textLabel5 = [(CHRecipientTableViewCell *)v8 textLabel];
      [textLabel5 setNumberOfLines:0];

      textLabel6 = [(CHRecipientTableViewCell *)v8 textLabel];
      [textLabel6 setTextAlignment:1];

      [(CHRecipientTableViewCell *)v8 setSelectionStyle:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if ([(NSArray *)self->_searchResults count])
    {
      v27 = -[NSArray objectAtIndex:](self->_searchResults, "objectAtIndex:", [pathCopy row]);
    }

    else
    {
      v27 = 0;
    }

    v32 = +[CHRecipientTableViewCell identifier];
    v8 = [viewCopy dequeueReusableCellWithIdentifier:v32];

    if (!v8)
    {
      v33 = [CHRecipientTableViewCell alloc];
      v34 = +[CHRecipientTableViewCell identifier];
      v8 = [(CHRecipientTableViewCell *)v33 initWithStyle:3 reuseIdentifier:v34];

      [(CHRecipientTableViewCell *)v8 setOpaque:0];
    }

    [(CHRecipientTableViewCell *)v8 setRecipient:v27];
  }

  return v8;
}

- (id)_noSuggestionString
{
  v20 = NSForegroundColorAttributeName;
  v3 = +[UIColor lightTextColor];
  v21 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  if ([(CHAddFriendViewController *)self _isContactsAccessAuthorized])
  {
    v5 = [NSAttributedString alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SHARING_NO_SUGGESTED" value:&stru_1008680E8 table:@"Localizable"];
    v8 = [v5 initWithString:v7 attributes:v4];
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"SHARING_NO_CONTACTS_ACCESS" value:&stru_1008680E8 table:@"Localizable"];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"SHARING_NO_CONTACTS_ACCESS_SETTINGS" value:&stru_1008680E8 table:@"Localizable"];
    v6 = [NSString localizedStringWithFormat:v10, v12];

    v8 = [[NSMutableAttributedString alloc] initWithString:v6 attributes:v4];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"SHARING_NO_CONTACTS_ACCESS_SETTINGS" value:&stru_1008680E8 table:@"Localizable"];
    v15 = [v6 rangeOfString:v14];
    v17 = v16;

    v7 = +[ARUIMetricColors keyColors];
    nonGradientTextColor = [v7 nonGradientTextColor];
    [v8 addAttribute:NSForegroundColorAttributeName value:nonGradientTextColor range:{v15, v17}];
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!self->_showSuggestions)
  {
    v7 = [(NSArray *)self->_searchResults count];
    if (v7 > [pathCopy row])
    {
      v8 = -[NSArray objectAtIndexedSubscript:](self->_searchResults, "objectAtIndexedSubscript:", [pathCopy row]);
      recipientView = [(CHAddFriendViewController *)self recipientView];
      [recipientView clearText];

      recipientView2 = [(CHAddFriendViewController *)self recipientView];
      [recipientView2 addRecipient:v8];

      [(CHAddFriendViewController *)self _setShowSuggestions:1];
      [viewCopy reloadData];
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = [(NSArray *)self->_unselectedShownContacts count];
  if (v11 > [pathCopy row])
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_unselectedShownContacts, "objectAtIndexedSubscript:", [pathCopy row]);
    reachableEmailAddress = [v8 reachableEmailAddress];

    if (reachableEmailAddress)
    {
      reachableEmailAddress2 = [v8 reachableEmailAddress];
      v14 = 0;
    }

    else
    {
      reachableEmailAddress2 = [v8 reachablePhoneNumber];
      v14 = 1;
    }

    v16 = [CNComposeRecipient alloc];
    contact = [v8 contact];
    v18 = [v16 initWithContact:contact address:reachableEmailAddress2 kind:v14];

    [(CHAddFriendViewController *)self _mergeRecipient:v18];
    goto LABEL_12;
  }

  if (self->_showSuggestions && ![(CHAddFriendViewController *)self _isContactsAccessAuthorized])
  {
    v8 = [[NSURL alloc] initWithString:@"prefs:root=Privacy&path=CONTACTS"];
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    [v15 openSensitiveURL:v8 withOptions:&__NSDictionary0__struct];

    goto LABEL_12;
  }

LABEL_13:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (self->_showSuggestions)
  {
    viewCopy = view;
    v6 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    backgroundColor = [viewCopy backgroundColor];
    [v10 setBackgroundColor:backgroundColor];

    v12 = objc_opt_new();
    v13 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v13 setBackgroundColor:self->_separatorColor];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v13];
    v38 = @"inset";
    [viewCopy separatorInset];
    v15 = v14;

    v16 = [NSNumber numberWithDouble:v15];
    v39 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = _NSDictionaryOfVariableBindings(@"separatorView", v13, 0);
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(inset)-[separatorView]|", 0, v17, v18);
    [v12 addObjectsFromArray:v19];

    heightAnchor = [v13 heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:0.5];
    [v12 addObject:v21];

    bottomAnchor = [v13 bottomAnchor];
    bottomAnchor2 = [v10 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v12 addObject:v24];

    v25 = objc_alloc_init(UILabel);
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setNumberOfLines:0];
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"SHARE_SUGGESTED" value:&stru_1008680E8 table:@"Localizable"];
    [v25 setText:v27];

    v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v25 setFont:v28];

    [v10 addSubview:v25];
    v29 = _NSDictionaryOfVariableBindings(@"headerLabel", v25, 0);
    v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[headerLabel]-|", 0, 0, v29);
    [v12 addObjectsFromArray:v30];

    leadingAnchor = [v25 leadingAnchor];
    leadingAnchor2 = [v13 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v12 addObject:v33];

    trailingAnchor = [v25 trailingAnchor];
    trailingAnchor2 = [v10 trailingAnchor];
    v36 = [trailingAnchor constraintLessThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    [v12 addObject:v36];

    [NSLayoutConstraint activateConstraints:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = UITableViewAutomaticDimension;
  if (!self->_showSuggestions)
  {
    return 0.0;
  }

  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_showSuggestions || ![(NSArray *)self->_searchResults count])
  {
    if ([(NSArray *)self->_unselectedShownContacts count])
    {
      v8 = UITableViewAutomaticDimension;
    }

    else
    {
      v8 = 196.0;
    }
  }

  else
  {
    v8 = 56.0;
  }

  return v8;
}

- (BOOL)_destinationMatchesCurrentAccountDestination:(id)destination
{
  v4 = ASContactSanitizedDestination();
  LOBYTE(self) = [(NSArray *)self->_currentAccountAddresses containsObject:v4];

  return self;
}

- (CHAddFriendViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end