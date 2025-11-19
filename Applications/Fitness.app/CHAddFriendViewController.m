@interface CHAddFriendViewController
- (BOOL)_contact:(id)a3 hasEmailDestination:(id)a4;
- (BOOL)_contact:(id)a3 hasPhoneNumberDestination:(id)a4;
- (BOOL)_destinationMatchesCurrentAccountDestination:(id)a3;
- (CHAddFriendViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4;
- (CHAddFriendViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createPeoplePicker;
- (id)_destinationAddressesForCurrentAccount;
- (id)_noSuggestionString;
- (id)_preferredServiceIdentifierForDestination:(id)a3 inReachableDestinationsByService:(id)a4;
- (id)_recipientFromDestination:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_guessedKindForString:(id)a3;
- (void)_addContact:(id)a3;
- (void)_addSuggestedContact:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_checkReachableForContact:(id)a3 withDestination:(id)a4;
- (void)_dismissAndNotifyDelegate;
- (void)_doneButtonTapped:(id)a3;
- (void)_fontSizeDidChange;
- (void)_mergeRecipient:(id)a3;
- (void)_populateSuggestedContactsWithReachability;
- (void)_queryAllServicesForDestinations:(id)a3 reachableUpdateHandler:(id)a4 completionHandler:(id)a5;
- (void)_refilterShownContacts;
- (void)_searchForRecipientWithText:(id)a3;
- (void)_sendInviteToRecipientsByService:(id)a3 completion:(id)a4;
- (void)_setShowSuggestions:(BOOL)a3;
- (void)_textFieldShouldBecomeFirstResponder;
- (void)_textFieldShouldResignFirstResponder;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)setShownContacts:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CHAddFriendViewController

- (CHAddFriendViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CHAddFriendViewController;
  v9 = [(CHAddFriendViewController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_friendListManager, a3);
    objc_storeStrong(&v10->_friendManager, a4);
    v11 = [(ASFriendListSectionManager *)v10->_friendListManager allDestinationsForActiveOrPendingFriends];
    v12 = [v11 allObjects];
    currentFriendDestinations = v10->_currentFriendDestinations;
    v10->_currentFriendDestinations = v12;

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
  v3 = [(CHAddFriendViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(CHAddFriendViewController *)self navigationItem];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SHARE_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
  [v5 setTitle:v7];

  v70 = objc_alloc_init(CNComposeRecipientTextView);
  [(CHAddFriendViewController *)self setRecipientView:v70];
  [(CNComposeRecipientTextView *)self->_recipientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNComposeRecipientTextView *)self->_recipientView setEditable:1];
  [(CNComposeRecipientTextView *)self->_recipientView setAddresses:&__NSArray0__struct];
  [(CNComposeRecipientTextView *)self->_recipientView setDelegate:self];
  v8 = [(CNComposeRecipientTextView *)self->_recipientView addButton];
  [v8 setHidden:0];

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
  v14 = [(CHAddFriendViewController *)self _destinationAddressesForCurrentAccount];
  currentAccountAddresses = self->_currentAccountAddresses;
  self->_currentAccountAddresses = v14;

  v16 = [(CHAddFriendViewController *)self _createPeoplePicker];
  peoplePicker = self->_peoplePicker;
  self->_peoplePicker = v16;

  v18 = [UITableView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  [(CHAddFriendViewController *)self setTableView:v22];

  v23 = [(CHAddFriendViewController *)self tableView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(CHAddFriendViewController *)self tableView];
  [v24 setDelegate:self];

  v25 = [(CHAddFriendViewController *)self tableView];
  [v25 setDataSource:self];

  v26 = [(CHAddFriendViewController *)self tableView];
  [v26 setKeyboardDismissMode:1];

  v27 = [(CHAddFriendViewController *)self tableView];
  [v27 setSectionHeaderTopPadding:0.0];

  v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v29 = [(CHAddFriendViewController *)self tableView];
  [v29 setTableFooterView:v28];

  v30 = [(CHAddFriendViewController *)self tableView];
  [v30 setSeparatorStyle:0];

  v31 = [(CHAddFriendViewController *)self tableView];
  v32 = [v31 separatorColor];
  separatorColor = self->_separatorColor;
  self->_separatorColor = v32;

  v34 = [(CHAddFriendViewController *)self tableView];
  v35 = +[UIColor clearColor];
  [v34 setSeparatorColor:v35];

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
  v46 = [(CHAddFriendViewController *)self view];
  v47 = [(CHAddFriendViewController *)self recipientView];
  [v46 addSubview:v47];

  v48 = [(CHAddFriendViewController *)self view];
  v49 = [(CHAddFriendViewController *)self tableView];
  [v48 addSubview:v49];

  v50 = objc_opt_new();
  v51 = _NSDictionaryOfVariableBindings(@"_recipientView, _tableView", self->_recipientView, self->_tableView, 0);
  v52 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_recipientView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v52];

  v53 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v53];

  v54 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_recipientView][_tableView]|" options:0 metrics:0 views:v51];
  [v50 addObjectsFromArray:v54];

  v55 = [(CNComposeRecipientTextView *)self->_recipientView topAnchor];
  v56 = [(CHAddFriendViewController *)self view];
  v57 = [v56 safeAreaLayoutGuide];
  v58 = [v57 topAnchor];
  v59 = [v55 constraintEqualToAnchor:v58];
  [v50 addObject:v59];

  v60 = [(CNComposeRecipientTextView *)self->_recipientView heightAnchor];
  +[CNComposeRecipientTextView preferredHeight];
  v61 = [v60 constraintEqualToConstant:?];
  [(CHAddFriendViewController *)self setComposeInputLineHeight:v61];

  v62 = [(CHAddFriendViewController *)self composeInputLineHeight];
  LODWORD(v63) = 1148829696;
  [v62 setPriority:v63];

  v64 = [(CHAddFriendViewController *)self composeInputLineHeight];
  [v50 addObject:v64];

  v65 = [(CNComposeRecipientTextView *)self->_recipientView heightAnchor];
  v66 = [(CHAddFriendViewController *)self view];
  v67 = [v66 heightAnchor];
  v68 = [v65 constraintLessThanOrEqualToAnchor:v67 multiplier:0.3];
  [v50 addObject:v68];

  [NSLayoutConstraint activateConstraints:v50];
  v69 = +[NSNotificationCenter defaultCenter];
  [v69 addObserver:self selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_fontSizeDidChange
{
  +[CNComposeRecipientTextView preferredHeight];
  v4 = v3;
  v5 = [(CHAddFriendViewController *)self composeInputLineHeight];
  [v5 setConstant:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v19 viewWillAppear:a3];
  v4 = [UIBarButtonItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SHARING_INVITE_SEND" value:&stru_1008680E8 table:@"Localizable"];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:"_doneButtonTapped:"];
  v8 = [(CHAddFriendViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [(CHAddFriendViewController *)self recipientView];
  v10 = [v9 recipients];
  v11 = [v10 count] != 0;

  v12 = [(CHAddFriendViewController *)self navigationItem];
  v13 = [v12 rightBarButtonItem];
  [v13 setEnabled:v11];

  v14 = [UIBarButtonItem alloc];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
  v17 = [v14 initWithTitle:v16 style:0 target:self action:"_cancelButtonTapped:"];
  v18 = [(CHAddFriendViewController *)self navigationItem];
  [v18 setLeftBarButtonItem:v17];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v4 viewDidAppear:a3];
  [(CNComposeRecipientTextView *)self->_recipientView reflow];
  [(CHAddFriendViewController *)self _textFieldShouldBecomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(CHAddFriendViewController *)self recipientView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(CHAddFriendViewController *)self parentViewController];
  v9 = [v8 navigationBar];
  [v9 frame];
  v11 = v10;

  v12 = +[UIApplication sharedApplication];
  v13 = [v12 windows];
  v14 = [v13 firstObject];
  v15 = [v14 windowScene];
  v16 = [v15 statusBarManager];
  [v16 statusBarFrame];
  v18 = v17;

  v19 = v11 + v18;
  v20 = [(CHAddFriendViewController *)self view];
  [v20 bounds];
  Width = CGRectGetWidth(v33);

  v22 = [(CHAddFriendViewController *)self recipientView];
  [v22 setFrame:{v5, v19, Width, v7}];

  v23 = [(CHAddFriendViewController *)self tableView];
  [v23 frame];
  v25 = v24;
  v27 = v26;

  v34.origin.x = v5;
  v34.origin.y = v19;
  v34.size.width = Width;
  v34.size.height = v7;
  MaxY = CGRectGetMaxY(v34);
  v29 = [(CHAddFriendViewController *)self view];
  [v29 bounds];
  v30 = CGRectGetWidth(v35);

  v31 = [(CHAddFriendViewController *)self tableView];
  [v31 setFrame:{v25, MaxY, v30, v27}];

  v32.receiver = self;
  v32.super_class = CHAddFriendViewController;
  [(CHAddFriendViewController *)&v32 viewWillLayoutSubviews];
}

- (void)_sendInviteToRecipientsByService:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v20 = self;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  v23 = v27;
  v24 = v25;
  [v6 enumerateKeysAndObjectsUsingBlock:v18];
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C3738;
    block[3] = &unk_10083AFA8;
    v15 = v7;
    v16 = v27;
    v17 = v25;
    dispatch_group_notify(v11, &_dispatch_main_q, block);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

- (void)_doneButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CHAddFriendViewController *)self recipientView];
  v6 = [v5 finishEnteringRecipient];

  v7 = [(CHAddFriendViewController *)self recipientView];
  v8 = [v7 recipients];
  v9 = [v8 count];

  [(CHAddFriendViewController *)self _dismissKeyboard:self];
  if (&v9[v6] <= [(ASFriendListSectionManager *)self->_friendListManager numberOfNewFriendsAllowed])
  {
    v10 = [(CHAddFriendViewController *)self recipientView];
    v11 = [v10 recipients];
    v12 = [v11 count];

    if (v12)
    {
      v13 = objc_alloc_init(NSMutableSet);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = [(CHAddFriendViewController *)self recipientView];
      v15 = [v14 recipients];

      v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v15);
            }

            v19 = [*(*(&v36 + 1) + 8 * v18) address];
            [v13 addObject:v19];

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v16);
      }

      v20 = [(CHAddFriendViewController *)self navigationItem];
      v21 = [v20 rightBarButtonItem];
      [v21 setEnabled:0];

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
        v24 = [v22 allObjects];
        v25 = sub_1000C3414();
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000C3BA0;
        v32[3] = &unk_10083A948;
        v32[4] = self;
        v33 = v13;
        [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator sendInvitationToDestinations:v24 callerID:v25 completion:v32];
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
  v4 = self;
  if ([(NSArray *)self->_searchResults count]>= 0x1A)
  {
    v5 = [(NSArray *)self->_searchResults subarrayWithRange:0, 25];
    v6 = [v5 mutableCopy];
    v4 = self;
    searchResults = self->_searchResults;
    self->_searchResults = v6;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4->_searchResults;
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

        v9 = [*(*(&v50 + 1) + 8 * i) contact];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v10 = [v9 emailAddresses];
        v11 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v11)
        {
          v12 = *v47;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [*(*(&v46 + 1) + 8 * j) value];
              [v2 setObject:v9 forKeyedSubscript:v14];
            }

            v11 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v11);
        }

        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v42 = 0u;
        v15 = [v9 phoneNumbers];
        v16 = [v15 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v16)
        {
          v17 = *v43;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = [*(*(&v42 + 1) + 8 * k) value];
              v20 = [v19 stringValue];
              [v3 setObject:v9 forKeyedSubscript:v20];
            }

            v16 = [v15 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v16);
        }
      }

      v32 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v32);
  }

  v21 = [v2 allKeys];
  v22 = [v3 allKeys];
  v23 = [v21 arrayByAddingObjectsFromArray:v22];
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
      v28 = [v24 allObjects];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000C4D60;
      v38[3] = &unk_10083B070;
      v39 = v2;
      v40 = v3;
      v41 = self;
      [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator fetchReachableDestinationsFor:v28 completion:v38];
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

- (void)_cancelButtonTapped:(id)a3
{
  [(CHAddFriendViewController *)self _dismissKeyboard:self];

  [(CHAddFriendViewController *)self _dismissAndNotifyDelegate];
}

- (void)_addContact:(id)a3
{
  v4 = [(CHAddFriendViewController *)self recipientView];
  [(CHAddFriendViewController *)self composeRecipientViewRequestAddRecipient:v4];
}

- (void)_textFieldShouldBecomeFirstResponder
{
  v3 = [(CHAddFriendViewController *)self recipientView];
  v2 = [v3 textView];
  [v2 becomeFirstResponder];
}

- (void)_textFieldShouldResignFirstResponder
{
  v3 = [(CHAddFriendViewController *)self recipientView];
  v2 = [v3 textView];
  [v2 resignFirstResponder];
}

- (id)_recipientFromDestination:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CHAddFriendViewController *)self recipientView];
  v6 = [v5 recipients];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 address];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (unint64_t)_guessedKindForString:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"@"] & 1) != 0 || (objc_msgSend(v3, "containsString:", @"mailto:"))
  {
    v4 = 0;
  }

  else if (([v3 containsString:@"tel:"] & 1) != 0 || (+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v3, "rangeOfCharacterFromSet:", v6), v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
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
  v3 = [(CHAddFriendViewController *)self parentViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [(CHAddFriendViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CHAddFriendViewController *)self delegate];
    [v6 addFriendViewControllerDidDismiss:self];
  }
}

- (void)_searchForRecipientWithText:(id)a3
{
  v10 = a3;
  [(CHAddFriendViewController *)self _resetSearchResults];
  if (!self->_currentSearchTaskID || self->_finishedPopulatingSuggestions && ([(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?], v4 = self->_currentSearchTaskID, self->_currentSearchTaskID = 0, v4, !self->_currentSearchTaskID))
  {
    v5 = [(CNComposeRecipientTextView *)self->_recipientView uncommentedAddresses];
    v6 = [v5 arrayByAddingObjectsFromArray:self->_currentAccountAddresses];

    if (self->_currentFriendDestinations && !self->_finishedPopulatingSuggestions)
    {
      v7 = [v6 arrayByAddingObjectsFromArray:?];

      v6 = v7;
    }

    [(CNAutocompleteFetchContext *)self->_context setOtherAddressesAlreadyChosen:v6];
    v8 = [(CNAutocompleteSearchManager *)self->_searchManager searchForText:v10 withAutocompleteFetchContext:self->_context consumer:self];
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
              v15 = [v14 username];

              if (v15)
              {
                v16 = [v14 username];
                [v2 addObject:v16];
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

  v18 = [v2 allObjects];

  return v18;
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

- (id)_preferredServiceIdentifierForDestination:(id)a3 inReachableDestinationsByService:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = kASiCloudServiceIdentifier;
  v8 = [v6 objectForKeyedSubscript:kASiCloudServiceIdentifier];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) != 0 || (v7 = kASiMessageServiceIdentifier, [v6 objectForKeyedSubscript:kASiMessageServiceIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v5), v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_queryAllServicesForDestinations:(id)a3 reachableUpdateHandler:(id)a4 completionHandler:(id)a5
{
  v18 = a3;
  v8 = a4;
  v16 = a5;
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
        v27 = v8;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000C63AC;
        v23[3] = &unk_10083B138;
        v24 = v9;
        [v15 queryDestinations:v18 updateHandler:v25 completionHandler:v23];
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  if (v16)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C63B4;
    block[3] = &unk_10083B188;
    v20 = v10;
    v21 = self;
    v22 = v16;
    dispatch_group_notify(v9, &_dispatch_main_q, block);
  }
}

- (void)_checkReachableForContact:(id)a3 withDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHAddFriendViewController *)self recipientView];
  v9 = [v8 atomViewForRecipient:v7];

  v10 = +[UIColor darkGrayColor];
  [v9 setBackgroundColor:v10];

  v11 = +[UIColor grayColor];
  [v9 setTintColor:v11];

  v12 = +[UIApplication sharedApplication];
  v13 = [v12 windows];
  v14 = [v13 firstObject];
  v15 = [v14 tintColor];

  v16 = [NSSet setWithObject:v6];
  if (ASManateeContainerEnabled())
  {
    invitationDestinationCoordinator = self->_invitationDestinationCoordinator;
    v18 = [v16 allObjects];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000C6868;
    v28[3] = &unk_10083B070;
    v19 = &v29;
    v20 = &v30;
    v29 = v6;
    v30 = v9;
    v31 = v15;
    v21 = v15;
    v22 = v9;
    [(CHInvitationDestinationCoordinator *)invitationDestinationCoordinator fetchReachableDestinationsFor:v18 completion:v28];
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
    v27 = v15;
    v23 = v15;
    v24 = v9;
    [(CHAddFriendViewController *)self _queryAllServicesForDestinations:v16 reachableUpdateHandler:v25 completionHandler:0];
  }
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  v5 = [(CHAddFriendViewController *)self composeInputLineHeight:a3];
  [v5 setConstant:height];
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  [(CNComposeRecipientTextView *)self->_recipientView clearText];
  v4 = [(CHAddFriendViewController *)self parentViewController];
  [v4 presentViewController:self->_peoplePicker animated:1 completion:0];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v7 = a4;
  if ([v7 length])
  {
    if (self->_showSuggestions)
    {
      [(CHAddFriendViewController *)self _setShowSuggestions:0];
    }

    [(CHAddFriendViewController *)self _searchForRecipientWithText:v7];
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

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v18 recipients];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CHAddFriendViewController *)self navigationItem];
    v10 = [v9 rightBarButtonItem];
    [v10 setEnabled:1];
  }

  v11 = [v18 recipients];
  v12 = [v11 count];
  v13 = [(ASFriendListSectionManager *)self->_friendListManager numberOfNewFriendsAllowed];

  if (v12 <= v13)
  {
    v17 = [v6 address];
    [(CHAddFriendViewController *)self _checkReachableForContact:v6 withDestination:v17];

    [(CHAddFriendViewController *)self _refilterShownContacts];
  }

  else
  {
    v14 = sub_10010833C();
    v15 = [(CHAddFriendViewController *)self recipientView];
    [v15 removeRecipient:v6];

    v16 = [(CHAddFriendViewController *)self parentViewController];
    [v16 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v5 = [a3 recipients];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [(CHAddFriendViewController *)self navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setEnabled:0];
  }

  [(CHAddFriendViewController *)self _refilterShownContacts];
}

- (void)_mergeRecipient:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self;
  v5 = [(CHAddFriendViewController *)self recipientView];
  v6 = [v5 recipients];

  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = 0;
  obj = v6;
  v23 = *v25;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v25 != v23)
    {
      objc_enumerationMutation(obj);
    }

    if (v11 = *(*(&v24 + 1) + 8 * v10), [v4 address], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "address"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "contact"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "contact"), v15 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v11, "isEqual:", v4)) || (objc_msgSend(v13, "isEqualToString:", v12) & 1) != 0 || v15 && (-[CHAddFriendViewController _contact:hasEmailDestination:](v21, "_contact:hasEmailDestination:", v15, v12) || -[CHAddFriendViewController _contact:hasPhoneNumberDestination:](v21, "_contact:hasPhoneNumberDestination:", v15, v12)) || v14 && (-[CHAddFriendViewController _contact:hasEmailDestination:](v21, "_contact:hasEmailDestination:", v14, v13) || -[CHAddFriendViewController _contact:hasPhoneNumberDestination:](v21, "_contact:hasPhoneNumberDestination:", v14, v13)))
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

  v19 = [v4 contact];

  if (v19)
  {
    v6 = [(CHAddFriendViewController *)v21 recipientView];
    [v6 removeRecipient:v9];
LABEL_24:

LABEL_25:
    v20 = [(CHAddFriendViewController *)v21 recipientView];
    [v20 addRecipient:v4];
  }
}

- (BOOL)_contact:(id)a3 hasEmailDestination:(id)a4
{
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 emailAddresses];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) value];
        v11 = [v10 isEqualToString:v5];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_contact:(id)a3 hasPhoneNumberDestination:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[CNPhoneNumber alloc] initWithStringValue:v6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v5 phoneNumbers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) value];
        v13 = [v7 isLikePhoneNumber:v12];

        if (v13)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v11 = a4;
  v5 = [v11 destinationStripped];
  if ([v5 length] && ((objc_msgSend(v11, "isPhoneNumber") & 1) != 0 || objc_msgSend(v11, "isEmail")))
  {
    v6 = [[CNComposeRecipient alloc] initWithContact:0 address:v5 kind:{-[CHAddFriendViewController _guessedKindForString:](self, "_guessedKindForString:", v5)}];
    [(CHAddFriendViewController *)self _mergeRecipient:v6];
    v7 = [(CHAddFriendViewController *)self recipientView];
    [v7 clearText];

    v8 = [(CHAddFriendViewController *)self recipientView];
    v9 = [v8 delegate];
    v10 = [(CHAddFriendViewController *)self recipientView];
    [v9 composeRecipientView:v10 textDidChange:&stru_1008680E8];
  }
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v16 = a4;
  v6 = a3;
  v7 = [v16 key];
  v8 = [v7 isEqualToString:CNContactEmailAddressesKey];

  v9 = [v16 value];
  v10 = v9;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v9 stringValue];

    v11 = 1;
    v10 = v12;
  }

  [v6 dismissViewControllerAnimated:1 completion:0];

  v13 = [CNComposeRecipient alloc];
  v14 = [v16 contact];
  v15 = [v13 initWithContact:v14 address:v10 kind:v11];

  [(CHAddFriendViewController *)self _mergeRecipient:v15];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v15 = a4;
  v6 = a3;
  v7 = [v15 emailAddresses];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v15 emailAddresses];
    v10 = [v9 firstObject];
    v11 = [v10 value];
    v12 = 0;
  }

  else
  {
    v9 = [v15 phoneNumbers];
    v10 = [v9 firstObject];
    v13 = [v10 value];
    v11 = [v13 stringValue];

    v12 = 1;
  }

  [v6 dismissViewControllerAnimated:1 completion:0];
  v14 = [[CNComposeRecipient alloc] initWithContact:v15 address:v11 kind:v12];
  [(CHAddFriendViewController *)self _mergeRecipient:v14];
}

- (void)_addSuggestedContact:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v11 = v6;
  [(NSMutableArray *)reachableSuggestedContacts enumerateObjectsUsingBlock:&v7];
  if ((v14[3] & 1) == 0)
  {
    [(NSMutableArray *)self->_reachableSuggestedContacts addObject:v6, v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_setShowSuggestions:(BOOL)a3
{
  self->_showSuggestions = a3;
  if (a3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = [(CHAddFriendViewController *)self tableView];
    [v5 setTableFooterView:v4];

    v6 = [(CHAddFriendViewController *)self tableView];
    [v6 setSeparatorStyle:0];

    v7 = [(CHAddFriendViewController *)self tableView];
    v8 = +[UIColor clearColor];
    [v7 setSeparatorColor:v8];

    reachableSuggestedContacts = self->_reachableSuggestedContacts;
  }

  else
  {
    v10 = [(CHAddFriendViewController *)self tableView];
    [v10 setTableFooterView:0];

    v11 = [(CHAddFriendViewController *)self tableView];
    [v11 setSeparatorStyle:1];

    v12 = [(CHAddFriendViewController *)self tableView];
    [v12 setSeparatorColor:self->_separatorColor];

    reachableSuggestedContacts = &__NSArray0__struct;
  }

  [(CHAddFriendViewController *)self setShownContacts:reachableSuggestedContacts];
}

- (void)setShownContacts:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_shownContacts isEqualToArray:?])
  {
    v4 = [v6 copy];
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

  v7 = [(CHAddFriendViewController *)self tableView];
  [v7 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_showSuggestions)
  {
    result = [(NSArray *)self->_unselectedShownContacts count:a3];
    if (result <= 1)
    {
      return 1;
    }
  }

  else
  {
    searchResults = self->_searchResults;

    return [(NSArray *)searchResults count:a3];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_showSuggestions)
  {
    if ([(NSArray *)self->_unselectedShownContacts count])
    {
      v8 = [v6 dequeueReusableCellWithIdentifier:@"SuggestedContactCellReuseIdentifier"];
      if (!v8)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"SuggestedContactCellReuseIdentifier"];
        v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v9 setBackgroundColor:self->_separatorColor];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        v10 = [(CHRecipientTableViewCell *)v8 contentView];
        [v10 addSubview:v9];

        v49 = @"inset";
        [v6 separatorInset];
        v48 = [NSNumber numberWithDouble:v11];
        v50 = v48;
        v12 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        _NSDictionaryOfVariableBindings(@"separatorView", v9, 0);
        v13 = v47 = v7;
        +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(inset)-[separatorView]|", 0, v12, v13);
        v15 = v14 = v6;
        [NSLayoutConstraint activateConstraints:v15];

        v6 = v14;
        v7 = v47;

        v16 = _NSDictionaryOfVariableBindings(@"separatorView", v9, 0);
        v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[separatorView]|" options:0 metrics:0 views:v16];
        [NSLayoutConstraint activateConstraints:v17];

        v18 = [v9 heightAnchor];
        v19 = [v18 constraintEqualToConstant:0.5];
        [v19 setActive:1];
      }

      v20 = -[NSArray objectAtIndexedSubscript:](self->_unselectedShownContacts, "objectAtIndexedSubscript:", [v7 row]);
      v21 = [v20 contact];
      v22 = [CNContactFormatter stringFromContact:v21 style:0];
      v23 = [(CHRecipientTableViewCell *)v8 textLabel];
      [v23 setText:v22];

      v24 = [v20 reachableEmailAddress];

      if (v24)
      {
        v25 = [v20 reachableEmailAddress];
        v26 = [(CHRecipientTableViewCell *)v8 detailTextLabel];
        [v26 setText:v25];
      }

      else
      {
        v25 = [v20 reachablePhoneNumber];
        v26 = sub_1000C2C20(v25);
        v35 = [(CHRecipientTableViewCell *)v8 detailTextLabel];
        [v35 setText:v26];
      }

      if (self->_showSuggestions)
      {
        monogrammer = self->_monogrammer;
        v37 = [v20 contact];
        v38 = [(CNMonogrammer *)monogrammer monogramForContact:v37];
        v39 = [(CHRecipientTableViewCell *)v8 imageView];
        [v39 setImage:v38];
      }

      else
      {
        v37 = [(CHRecipientTableViewCell *)v8 imageView];
        [v37 setImage:0];
      }

      v40 = +[ARUIMetricColors keyColors];
      v41 = [v40 nonGradientTextColor];
      v42 = [(CHRecipientTableViewCell *)v8 textLabel];
      [v42 setTextColor:v41];

      v43 = [(CHRecipientTableViewCell *)v8 textLabel];
      v44 = [v43 textColor];
      v45 = [(CHRecipientTableViewCell *)v8 detailTextLabel];
      [v45 setTextColor:v44];

      [(CHRecipientTableViewCell *)v8 setSelectionStyle:3];
    }

    else if (self->_showSuggestions)
    {
      v8 = [v6 dequeueReusableCellWithIdentifier:@"NoSuggestedContactsCellReuseIdentifier"];
      if (!v8)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"NoSuggestedContactsCellReuseIdentifier"];
      }

      v28 = [(CHAddFriendViewController *)self _noSuggestionString];
      v29 = [(CHRecipientTableViewCell *)v8 textLabel];
      [v29 setAttributedText:v28];

      v30 = [(CHRecipientTableViewCell *)v8 textLabel];
      [v30 setNumberOfLines:0];

      v31 = [(CHRecipientTableViewCell *)v8 textLabel];
      [v31 setTextAlignment:1];

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
      v27 = -[NSArray objectAtIndex:](self->_searchResults, "objectAtIndex:", [v7 row]);
    }

    else
    {
      v27 = 0;
    }

    v32 = +[CHRecipientTableViewCell identifier];
    v8 = [v6 dequeueReusableCellWithIdentifier:v32];

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
    v18 = [v7 nonGradientTextColor];
    [v8 addAttribute:NSForegroundColorAttributeName value:v18 range:{v15, v17}];
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (!self->_showSuggestions)
  {
    v7 = [(NSArray *)self->_searchResults count];
    if (v7 > [v6 row])
    {
      v8 = -[NSArray objectAtIndexedSubscript:](self->_searchResults, "objectAtIndexedSubscript:", [v6 row]);
      v9 = [(CHAddFriendViewController *)self recipientView];
      [v9 clearText];

      v10 = [(CHAddFriendViewController *)self recipientView];
      [v10 addRecipient:v8];

      [(CHAddFriendViewController *)self _setShowSuggestions:1];
      [v19 reloadData];
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = [(NSArray *)self->_unselectedShownContacts count];
  if (v11 > [v6 row])
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_unselectedShownContacts, "objectAtIndexedSubscript:", [v6 row]);
    v12 = [v8 reachableEmailAddress];

    if (v12)
    {
      v13 = [v8 reachableEmailAddress];
      v14 = 0;
    }

    else
    {
      v13 = [v8 reachablePhoneNumber];
      v14 = 1;
    }

    v16 = [CNComposeRecipient alloc];
    v17 = [v8 contact];
    v18 = [v16 initWithContact:v17 address:v13 kind:v14];

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
  [v19 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (self->_showSuggestions)
  {
    v5 = a3;
    v6 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v11 = [v5 backgroundColor];
    [v10 setBackgroundColor:v11];

    v12 = objc_opt_new();
    v13 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v13 setBackgroundColor:self->_separatorColor];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v13];
    v38 = @"inset";
    [v5 separatorInset];
    v15 = v14;

    v16 = [NSNumber numberWithDouble:v15];
    v39 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = _NSDictionaryOfVariableBindings(@"separatorView", v13, 0);
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(inset)-[separatorView]|", 0, v17, v18);
    [v12 addObjectsFromArray:v19];

    v20 = [v13 heightAnchor];
    v21 = [v20 constraintEqualToConstant:0.5];
    [v12 addObject:v21];

    v22 = [v13 bottomAnchor];
    v23 = [v10 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
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

    v31 = [v25 leadingAnchor];
    v32 = [v13 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v12 addObject:v33];

    v34 = [v25 trailingAnchor];
    v35 = [v10 trailingAnchor];
    v36 = [v34 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v35 multiplier:1.0];
    [v12 addObject:v36];

    [NSLayoutConstraint activateConstraints:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = UITableViewAutomaticDimension;
  if (!self->_showSuggestions)
  {
    return 0.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
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

- (BOOL)_destinationMatchesCurrentAccountDestination:(id)a3
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