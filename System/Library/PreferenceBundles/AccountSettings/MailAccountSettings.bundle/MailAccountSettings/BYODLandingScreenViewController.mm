@interface BYODLandingScreenViewController
+ (id)log;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BYODLandingScreenViewController)initWithDomainList:(id)list acAccount:(id)account;
- (BYODLandingScreenViewController)initWithDomainListAndTargetDomain:(id)domain acAccount:(id)account targetDomain:(id)targetDomain domainState:(id)state;
- (id)_addNewDomainSpecifier;
- (id)_domainSpecifiers;
- (id)_showMatterhornSubsctiptionState;
- (id)specifiers;
- (id)valueForSpecifier:(id)specifier;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_domainSpecifierWasTapped:(id)tapped;
- (void)_editButtonTapped:(id)tapped;
- (void)_fetchFamilyDetails:(id)details;
- (void)_listDomain;
- (void)_openSubscribeLearnMore:(id)more;
- (void)_refreshByodState:(id)state;
- (void)_removeDomain:(id)domain selectedSpecifier:(id)specifier;
- (void)_showAddNewDomain:(id)domain;
- (void)_showBuyNewDomain:(id)domain;
- (void)_triggerManualDomainSetupFlow:(id)flow showRedBadge:(BOOL)badge;
- (void)_triggerMatterhornSubscription:(id)subscription;
- (void)dealloc;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BYODLandingScreenViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4FC10;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6580 != -1)
  {
    dispatch_once(&qword_D6580, block);
  }

  v2 = qword_D6578;

  return v2;
}

- (BYODLandingScreenViewController)initWithDomainList:(id)list acAccount:(id)account
{
  listCopy = list;
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = BYODLandingScreenViewController;
  v9 = [(BYODLandingScreenViewController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggedInUserAccount, account);
    objc_storeStrong(&v10->_domainList, list);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:v10 name:@"BYOD_REFRESH_NOTIFICATION" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v10 selector:"_refreshByodState:" name:@"BYOD_REFRESH_NOTIFICATION" object:0];

    v10->_isEditing = 0;
    v13 = objc_alloc_init(FAFetchFamilyCircleRequest);
    familyRequest = v10->_familyRequest;
    v10->_familyRequest = v13;

    [(FAFetchFamilyCircleRequest *)v10->_familyRequest setCachePolicy:1];
  }

  return v10;
}

- (BYODLandingScreenViewController)initWithDomainListAndTargetDomain:(id)domain acAccount:(id)account targetDomain:(id)targetDomain domainState:(id)state
{
  targetDomainCopy = targetDomain;
  stateCopy = state;
  v13 = [(BYODLandingScreenViewController *)self initWithDomainList:domain acAccount:account];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_targetDomain, targetDomain);
    objc_storeStrong(&v14->_domainState, state);
  }

  return v14;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = BYODLandingScreenViewController;
  [(BYODLandingScreenViewController *)&v12 viewDidLoad];
  navigationItem = [(BYODLandingScreenViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_LANDING_SCREEN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [navigationItem setTitle:v5];

  navigationItem2 = [(BYODLandingScreenViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:0];

  if (self->_targetDomain)
  {
    v7 = +[BYODLandingScreenViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      targetDomain = self->_targetDomain;
      *buf = 138412290;
      v14 = targetDomain;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Loading target domain: %@", buf, 0xCu);
    }

    v9 = [(BYODLandingScreenViewController *)self specifierForID:self->_targetDomain];
    if (v9)
    {
      [(BYODLandingScreenViewController *)self _domainSpecifierWasTapped:v9];
    }

    else
    {
      v10 = +[BYODLandingScreenViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_targetDomain;
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Specifier not found for ID:%@.", buf, 0xCu);
      }
    }
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_LANDING_SPECIFIER_TITLE"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_LANDING_SCREEN_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  if ([(BYODListDomain *)self->_domainList iCloudPlusSubscriptionExpired])
  {
    _showMatterhornSubsctiptionState = [(BYODLandingScreenViewController *)self _showMatterhornSubsctiptionState];
    [v3 addObjectsFromArray:_showMatterhornSubsctiptionState];
  }

  domains = [(BYODListDomain *)self->_domainList domains];
  v9 = [domains count];

  if (v9)
  {
    _domainSpecifiers = [(BYODLandingScreenViewController *)self _domainSpecifiers];
    [v3 addObjectsFromArray:_domainSpecifiers];
  }

  else
  {
    table = [(BYODLandingScreenViewController *)self table];
    isEditing = [table isEditing];

    if (!isEditing)
    {
      goto LABEL_8;
    }

    self->_isEditing = 0;
    _domainSpecifiers = [(BYODLandingScreenViewController *)self table];
    [_domainSpecifiers setEditing:self->_isEditing animated:1];
  }

LABEL_8:
  domains2 = [(BYODListDomain *)self->_domainList domains];
  v14 = [domains2 count];
  maxDomainsAllowed = [(BYODListDomain *)self->_domainList maxDomainsAllowed];

  if (v14 < maxDomainsAllowed)
  {
    _addNewDomainSpecifier = [(BYODLandingScreenViewController *)self _addNewDomainSpecifier];
    [v3 addObjectsFromArray:_addNewDomainSpecifier];
  }

  v17 = OBJC_IVAR___PSListController__specifiers;
  v18 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v19 = v3;

  v20 = *&self->PSListController_opaque[v17];
  v21 = v20;

  return v20;
}

- (id)_domainSpecifiers
{
  v45 = objc_alloc_init(NSMutableArray);
  v2 = [PSSpecifier groupSpecifierWithID:@"BYOD_LANDING_SPECIFIER_DOMAIN_LIST_GROUP"];
  domainListGroupSpecifer = self->_domainListGroupSpecifer;
  self->_domainListGroupSpecifer = v2;

  v4 = self->_domainListGroupSpecifer;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(PSSpecifier *)v4 setProperty:v6 forKey:PSHeaderCellClassGroupKey];

  v7 = self->_domainListGroupSpecifer;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_LANDING_SCREEN_DOMAIN_LIST_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(PSSpecifier *)v7 setProperty:v9 forKey:@"headerTitle"];

  if (self->_isEditing)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [(PSSpecifier *)self->_domainListGroupSpecifer setProperty:v10 forKey:@"tableEditing"];
  [(PSSpecifier *)self->_domainListGroupSpecifer setTarget:?];
  [(PSSpecifier *)self->_domainListGroupSpecifer setButtonAction:"_editButtonTapped:"];
  [v45 addObject:self->_domainListGroupSpecifer];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(BYODListDomain *)self->_domainList domains];
  v11 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v11)
  {
    v43 = PSCellClassKey;
    v44 = *v48;
    v42 = PSTitleKey;
    v41 = PSTableCellSubtitleTextKey;
    v39 = PSBadgeNumberKey;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        name = [v13 name];
        v15 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:2 edit:0];

        [v15 setProperty:&__kCFBooleanTrue forKey:@"isRowEditable"];
        [v15 setControllerLoadAction:"_domainSpecifierWasTapped:"];
        [v15 setProperty:objc_opt_class() forKey:v43];
        name2 = [v13 name];
        [v15 setProperty:name2 forKey:v42];

        name3 = [v13 name];
        [v15 setIdentifier:name3];

        status = [v13 status];
        v19 = [status isEqualToString:@"IN_PROGRESS"];

        if (!v19)
        {
          if (![v13 isShared])
          {
            if ([v13 isDomainModeSet])
            {
              v25 = [NSBundle bundleForClass:objc_opt_class()];
              status2 = [v25 localizedStringForKey:@"BYOD_DOMAIN_NEXT_STEP_CREATE_CUSTOM_EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];

              [v15 setProperty:status2 forKey:v41];
            }

            else
            {
              if ([v13 isDomainModeSet])
              {
                goto LABEL_31;
              }

              status2 = [v13 status];
              if ([status2 isEqualToString:@"COMPLETE"])
              {
                isDomainPurchased = [v13 isDomainPurchased];

                if (!isDomainPurchased)
                {
                  goto LABEL_31;
                }

                v29 = [NSBundle bundleForClass:objc_opt_class()];
                status2 = [v29 localizedStringForKey:@"BYOD_DOMAIN_NEXT_STEP_SELECT_DOMAIN_SHARING_OPTIONS" value:&stru_B9FC8 table:@"AccountPreferences"];

                [v15 setProperty:status2 forKey:v41];
              }
            }

            goto LABEL_30;
          }

          if ([v13 isOwner])
          {
            v22 = [NSBundle bundleForClass:objc_opt_class()];
            v23 = [v22 localizedStringForKey:@"BYOD_DOMAIN_SHARED_BY_ME" value:&stru_B9FC8 table:@"AccountPreferences"];
            goto LABEL_21;
          }

          invitationStatus = [v13 invitationStatus];
          v27 = [invitationStatus isEqualToString:@"INVITED"];

          if (v27)
          {
            v22 = [NSBundle bundleForClass:objc_opt_class()];
            v23 = [v22 localizedStringForKey:@"BYOD_MEMBER_PENDING_INVITE_DOMAIN_SUBTEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
LABEL_21:
            status2 = v23;
          }

          else
          {
            v22 = [NSBundle bundleForClass:objc_opt_class()];
            v35 = [v22 localizedStringForKey:@"BYOD_DOMAIN_SHARED_BY_OWNER" value:&stru_B9FC8 table:@"AccountPreferences"];
            owner = [v13 owner];
            firstName = [owner firstName];
            status2 = [NSString stringWithFormat:v35, firstName];
          }

          [v15 setProperty:status2 forKey:v41];
          goto LABEL_30;
        }

        if ([v13 isDomainPurchased])
        {
          v20 = [NSBundle bundleForClass:objc_opt_class()];
          status2 = [v20 localizedStringForKey:@"BYOD_DOMAIN_VERIFICATION_IN_PROGRESS" value:&stru_B9FC8 table:@"AccountPreferences"];

          [v15 setCellType:-1];
          [v15 setControllerLoadAction:0];
          [v15 setProperty:status2 forKey:v41];
        }

        else
        {
          verificationStatus = [v13 verificationStatus];
          if ([verificationStatus isEqualToString:@"NOT_STARTED"])
          {
          }

          else
          {
            verificationStatus2 = [v13 verificationStatus];
            v31 = [verificationStatus2 isEqualToString:@"IN_PROGRESS"];

            if (!v31)
            {
              goto LABEL_31;
            }
          }

          v32 = [NSNumberFormatter localizedStringFromNumber:&off_C05C0 numberStyle:0];
          [v15 setProperty:v32 forKey:v39];

          status2 = [NSBundle bundleForClass:objc_opt_class()];
          v33 = [status2 localizedStringForKey:@"BYOD_DOMAIN_NEXT_STEP_VERIFY_EMAIL%1$ld" value:&stru_B9FC8 table:@"AccountPreferences"];
          v34 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v33, [v13 pendingVerifyEmailCount]);
          [v15 setProperty:v34 forKey:v41];
        }

LABEL_30:

LABEL_31:
        [v45 addObject:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v11);
  }

  return v45;
}

- (id)_showMatterhornSubsctiptionState
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];

  v5 = [PSSpecifier preferenceSpecifierNamed:&stru_B9FC8 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_MATTERHORN_UNSUBSCRIBE_INFO" value:&stru_B9FC8 table:@"AccountPreferences"];
  iCloudPlusSubscriptionEndTimestamp = [(BYODListDomain *)self->_domainList iCloudPlusSubscriptionEndTimestamp];
  v9 = [NSString stringWithFormat:v7, iCloudPlusSubscriptionEndTimestamp];

  [v5 setProperty:v9 forKey:PSTableCellSubtitleTextKey];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 addObject:v5];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BYOD_MATTERHORN_SUBSCRIBE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:"_triggerMatterhornSubscription:"];
  [v3 addObject:v12];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BYOD_MATTERHORN_SUBSCRIBE_LEARN_MORE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v15 setButtonAction:"_openSubscribeLearnMore:"];
  [v3 addObject:v15];

  return v3;
}

- (void)_domainSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  [tappedCopy byod_startSpinner];
  v5 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v8 = [tappedCopy propertyForKey:@"label"];
  v9 = [(BYODGetDomainRequest *)v5 initWithAccount:loggedInUserAccount accountStore:accountStore domain:v8];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5121C;
  v11[3] = &unk_B9570;
  objc_copyWeak(&v13, &location);
  v10 = tappedCopy;
  v12 = v10;
  [(BYODGetDomainRequest *)v9 performRequestWithCallback:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_fetchFamilyDetails:(id)details
{
  detailsCopy = details;
  familyRequest = self->_familyRequest;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_52434;
  v7[3] = &unk_B9610;
  v7[4] = self;
  v8 = detailsCopy;
  v6 = detailsCopy;
  [(FAFetchFamilyCircleRequest *)familyRequest startRequestWithCompletionHandler:v7];
}

- (void)_triggerManualDomainSetupFlow:(id)flow showRedBadge:(BOOL)badge
{
  badgeCopy = badge;
  flowCopy = flow;
  v7 = [BYODDomainManualSetupViewController alloc];
  name = [flowCopy name];
  loggedInUserAccount = [(BYODLandingScreenViewController *)self loggedInUserAccount];
  v10 = [(BYODDomainManualSetupViewController *)v7 initWithDomainName:name acAccount:loggedInUserAccount showRedBadge:badgeCopy];

  selfCopy = self;
  v11 = v10;
  v15 = v11;
  v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v12 performBlock:&v13];
}

- (id)_addNewDomainSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_LANDING_SPECIFIER_ADD_NEW_DOMAIN_GROUP"];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_LANDING_SCREEN_ADD_DOMAIN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:4 edit:0];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_LANDING_SCREEN_ADD_DOMAIN_SUBTITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v7 setProperty:v9 forKey:PSTableCellSubtitleTextKey];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v7 setIdentifier:@"BYOD_LANDING_SCREEN_ADD_DOMAIN_SUBTITLE_ID"];
  [v3 addObject:v7];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BYOD_LANDING_SCREEN_ADD_DOMAIN_OWNED_BUTTON_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:"_showAddNewDomain:"];
  [v12 setIdentifier:@"BYOD_ADD_NEW_DOMAIN_BUTTON_SPECIFIER"];
  [v3 addObject:v12];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"BYOD_LANDING_SCREEN_ADD_DOMAIN_BUY_BUTTON_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v15 setButtonAction:"_showBuyNewDomain:"];
  [v15 setIdentifier:@"BYOD_BUY_NEW_DOMAIN_BUTTON_SPECIFIER"];
  [v3 addObject:v15];

  return v3;
}

- (void)_showBuyNewDomain:(id)domain
{
  v4 = [[BYODSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v4;

  [(BYODSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v6 = [BYODDomainPurchaseEligibilityRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v9 = [(BYODDomainPurchaseEligibilityRequest *)v6 initWithAccount:loggedInUserAccount accountStore:accountStore];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_52E10;
  v10[3] = &unk_B91A0;
  objc_copyWeak(&v11, &location);
  [(BYODDomainPurchaseEligibilityRequest *)v9 performRequestWithCallback:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_showAddNewDomain:(id)domain
{
  v6 = [[BYODChooseYouOrFamilyViewController alloc] initWithACAccount:self->_loggedInUserAccount domainPurchase:0 domainName:0];
  v4 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v4 setModalInPresentation:1];
  parentViewController = [(BYODLandingScreenViewController *)self parentViewController];
  [parentViewController presentViewController:v4 animated:1 completion:0];
}

- (id)valueForSpecifier:(id)specifier
{
  v3 = [specifier objectForKeyedSubscript:PSValueKey];

  return v3;
}

- (void)_refreshByodState:(id)state
{
  v4 = [BYODListDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v7 = [(BYODListDomainRequest *)v4 initWithAccount:loggedInUserAccount accountStore:accountStore];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_532FC;
  v8[3] = &unk_B9638;
  objc_copyWeak(&v9, &location);
  [(BYODListDomainRequest *)v7 performRequestWithCallback:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BYODLandingScreenViewController;
  [(BYODLandingScreenViewController *)&v4 dealloc];
}

- (void)_editButtonTapped:(id)tapped
{
  self->_isEditing ^= 1u;
  table = [(BYODLandingScreenViewController *)self table];
  [table setEditing:self->_isEditing animated:1];

  v5 = [(PSSpecifier *)self->_domainListGroupSpecifer propertyForKey:@"headerView"];
  [v5 toggleDoneButton:self->_isEditing];
}

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

  [(BYODLandingScreenViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(BYODLandingScreenViewController *)self specifierAtIndexPath:path];
  v8 = [v7 propertyForKey:@"isRowEditable"];
  LODWORD(self) = [v8 BOOLValue];

  v9 = [viewCopy isEditing] & self;
  return v9;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(BYODLandingScreenViewController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"isRowEditable"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (style == 1)
  {
    v8 = [(BYODLandingScreenViewController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:PSTitleKey];
    v10 = [(BYODListDomain *)self->_domainList domainFromDomainName:v9];
    v11 = v10;
    if (v10)
    {
      if ([v10 isOwner])
      {
        status = [v11 status];
        v13 = [status isEqualToString:@"COMPLETE"];

        if (v13)
        {
          v14 = [[BYODStopUsingDomainViewController alloc] initWithAccount:self->_loggedInUserAccount domain:v11];
          v15 = [[UINavigationController alloc] initWithRootViewController:v14];
          v16 = +[NSNotificationCenter defaultCenter];
          [v16 removeObserver:self name:@"STOP_DOMAIN_NOTIFICATION" object:0];

          v17 = +[NSNotificationCenter defaultCenter];
          [v17 addObserver:self selector:"_refreshByodState:" name:@"STOP_DOMAIN_NOTIFICATION" object:0];

          [(BYODLandingScreenViewController *)self presentViewController:v15 animated:1 completion:0];
        }

        else
        {
          [(BYODLandingScreenViewController *)self _removeDomain:v11 selectedSpecifier:v8];
        }
      }

      else
      {
        v34 = v9;
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
        name = [v11 name];
        v21 = [NSString stringWithFormat:v19, name];

        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
        name2 = [v11 name];
        v25 = [NSString stringWithFormat:v23, name2];

        v33 = v25;
        v26 = [UIAlertController alertControllerWithTitle:v21 message:v25 preferredStyle:1];
        v27 = [NSBundle bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        v29 = [UIAlertAction actionWithTitle:v28 style:1 handler:0];

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_53D18;
        v35[3] = &unk_B8F00;
        v35[4] = self;
        v36 = v11;
        v37 = v8;
        v32 = [UIAlertAction actionWithTitle:v31 style:2 handler:v35];

        [v26 addAction:v29];
        [v26 addAction:v32];
        [v26 setPreferredAction:v32];
        [(BYODLandingScreenViewController *)self presentViewController:v26 animated:1 completion:0];

        v9 = v34;
      }
    }
  }
}

- (void)_removeDomain:(id)domain selectedSpecifier:(id)specifier
{
  domainCopy = domain;
  specifierCopy = specifier;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v7 localizedStringForKey:@"BYOD_REMOVE_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_REMOVE_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  name = [domainCopy name];
  v11 = [NSString stringWithFormat:v9, name];

  v12 = [UIAlertController alertControllerWithTitle:v22 message:v11 preferredStyle:1];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:0];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BYOD_REMOVE_DOMAIN_BUTTON_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_543B0;
  v23[3] = &unk_B8F00;
  v18 = specifierCopy;
  v24 = v18;
  selfCopy = self;
  v19 = domainCopy;
  v26 = v19;
  v20 = [UIAlertAction actionWithTitle:v17 style:2 handler:v23];

  [v12 addAction:v15];
  [v12 addAction:v20];
  [v12 setPreferredAction:v20];
  [(BYODLandingScreenViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_triggerMatterhornSubscription:(id)subscription
{
  v4 = objc_alloc_init(MatterhornUpsellManager);
  upsellManager = self->_upsellManager;
  self->_upsellManager = v4;

  objc_initWeak(&location, self);
  upsellManager = [(BYODLandingScreenViewController *)self upsellManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_54828;
  v7[3] = &unk_B9660;
  objc_copyWeak(&v8, &location);
  [upsellManager matterhornUpsell:@"settingsCustomDomain" forFeatureId:@"mail.custom-domains.transfer" withCompletion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_listDomain
{
  objc_initWeak(&location, self);
  v3 = [BYODListDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v6 = [(BYODListDomainRequest *)v3 initWithAccount:loggedInUserAccount accountStore:accountStore];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_54A54;
  v7[3] = &unk_B9638;
  objc_copyWeak(&v8, &location);
  [(BYODListDomainRequest *)v6 performRequestWithCallback:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (void)_openSubscribeLearnMore:(id)more
{
  v6 = +[UIApplication sharedApplication];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_MATTERHORN_SUBSCRIBE_LEARN_MORE_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [NSURL URLWithString:v4];
  [v6 openURL:v5 withCompletionHandler:0];
}

@end