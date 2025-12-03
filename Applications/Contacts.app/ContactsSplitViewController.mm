@interface ContactsSplitViewController
+ (id)newContactStoreDataSourceForSplitViewController;
+ (id)prewarmContactStoreDataSourceBlock;
+ (id)prewarmedContactStoreDataSource;
+ (id)resourcesPrewarmingQueue;
+ (void)disableCompatiblityWorkaround;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)contactNavigationController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated dismissingPresentedController:(BOOL)presentedController shouldHideContactListIfNeeded:(BOOL)needed;
- (BOOL)groupsPanelIsHidden;
- (BOOL)isShowingGroups;
- (BOOL)isShowingListView;
- (CNContact)displayedContact;
- (CNContact)unsavedContact;
- (CNContactListCollectionView)contactsList;
- (CNContactStore)store;
- (CNContactViewController)presentedContactViewController;
- (ContactsSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ContactsSplitViewController)initWithStyle:(int64_t)style;
- (id)_multitaskingDragExclusionRects;
- (id)navigationControllerForPPT;
- (id)navigationControllerForPotentiallyWrappedViewController:(id)controller;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)_cancelOutstandingSearch;
- (void)addContact:(id)contact;
- (void)beginSearch:(id)search;
- (void)contactNavigationController:(id)controller didDeleteContact:(id)contact;
- (void)createNewContact;
- (void)dealloc;
- (void)deleteContact:(id)contact;
- (void)deselectContactAndSelectNext:(BOOL)next;
- (void)removeContactViewController;
- (void)resetContactViewController;
- (void)saveEditingViewControllersAndDismissViewController:(id)controller;
- (void)searchForString:(id)string;
- (void)selectNextContact:(id)contact;
- (void)selectPreviousContact:(id)contact;
- (void)setRestoredContact:(id)contact;
- (void)setup;
- (void)setupColumns;
- (void)setupContainerController;
- (void)setupGroupsNavigationController;
- (void)setupKeyCommands;
- (void)setupNavigationController;
- (void)setupPrimaryColumnViewController;
- (void)setupSplitViewControllerProperties;
- (void)showDetailTargetDidChange:(id)change;
- (void)showEditingCardForContact:(id)contact;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)toggleEditContact:(id)contact;
- (void)toggleGroupsPanel;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateModeOnSplitViewControllerForDisplayMode:(int64_t)mode;
- (void)viewDidLoad;
@end

@implementation ContactsSplitViewController

+ (id)prewarmContactStoreDataSourceBlock
{
  byte_1000292B8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001734;
  v4[3] = &unk_1000205A0;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)resourcesPrewarmingQueue
{
  v2 = qword_1000292B0;
  if (!qword_1000292B0)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.Contacts.ResourcesPrewarming", v3);
    v5 = qword_1000292B0;
    qword_1000292B0 = v4;

    v2 = qword_1000292B0;
  }

  return v2;
}

+ (id)newContactStoreDataSourceForSplitViewController
{
  v2 = objc_alloc_init(CNContactStoreConfiguration);
  if (+[CNContact suggestionsEnabled])
  {
    [v2 setIncludeLocalContacts:1];
    [v2 setIncludeSuggestedContacts:1];
    [v2 setIncludeDonatedContacts:1];
  }

  v3 = +[CNEnvironment currentEnvironment];
  featureFlags = [v3 featureFlags];
  v5 = [featureFlags isFeatureEnabled:19];

  if (v5)
  {
    [v2 setIncludeAcceptedIntroductions:1];
  }

  [v2 setUseInProcessMapperExclusively:1];
  v6 = [[CNContactStore alloc] initWithConfiguration:v2];
  v7 = [[CNContactStoreDataSource alloc] initWithStore:v6];

  return v7;
}

+ (void)disableCompatiblityWorkaround
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 registerDefaults:&off_100021048];
}

- (void)setup
{
  if (![(ContactsSplitViewController *)self isSetupFinished])
  {
    v3 = +[CNEnvironment currentEnvironment];
    featureFlags = [v3 featureFlags];
    v5 = [featureFlags isFeatureEnabled:29];

    if (v5)
    {
      v6 = objc_alloc_init(CNContactViewSharedNavigationBar);
      sharedNavigationBar = self->_sharedNavigationBar;
      self->_sharedNavigationBar = v6;

      addContactButton = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar addContactButton];
      [addContactButton setTarget:self];

      addContactButton2 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar addContactButton];
      [addContactButton2 setAction:"addContact:"];
    }

    [(ContactsSplitViewController *)self setupNavigationController];
    [(ContactsSplitViewController *)self setupContainerController];
    [(ContactsSplitViewController *)self setupGroupsNavigationController];
    [(ContactsSplitViewController *)self setupKeyCommands];
    [(ContactsSplitViewController *)self setupSplitViewControllerProperties];
    [(ContactsSplitViewController *)self setupColumns];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"showDetailTargetDidChange:" name:UIViewControllerShowDetailTargetDidChangeNotification object:self];

    [(ContactsSplitViewController *)self setIsSetupFinished:1];
  }
}

- (void)setupNavigationController
{
  prewarmedContactStoreDataSource = [objc_opt_class() prewarmedContactStoreDataSource];
  v3 = +[CNEnvironment currentEnvironment];
  featureFlags = [v3 featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (prewarmedContactStoreDataSource)
  {
    v6 = [CNContactNavigationController alloc];
    contactFormatter = [prewarmedContactStoreDataSource contactFormatter];
    v8 = +[CNUIContactsEnvironment currentEnvironment];
    v9 = [v6 initWithDataSource:prewarmedContactStoreDataSource contactFormatter:contactFormatter applyGroupFilterFromPreferences:0 environment:v8 allowsLargeTitles:v5 ^ 1 allowsSearch:1];
    contactNavigationController = self->_contactNavigationController;
    self->_contactNavigationController = v9;
  }

  else
  {
    prewarmedContactStoreDataSource = [objc_opt_class() newContactStoreDataSourceForSplitViewController];
    v11 = [[CNContactNavigationController alloc] initWithDataSource:prewarmedContactStoreDataSource allowsLargeTitles:v5 ^ 1];
    contactFormatter = self->_contactNavigationController;
    self->_contactNavigationController = v11;
  }

  [(CNContactNavigationController *)self->_contactNavigationController setAllowsCardEditing:1];
  [(CNContactNavigationController *)self->_contactNavigationController setAllowsCardDeletion:1];
  [(CNContactNavigationController *)self->_contactNavigationController setAllowsContactBlocking:1];
  contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  [contactListViewController setShouldDisplayMeContactBanner:1];

  [(CNContactNavigationController *)self->_contactNavigationController setDelegate:self];
  [(CNContactNavigationController *)self->_contactNavigationController setSharedNavigationBar:self->_sharedNavigationBar];
}

+ (id)prewarmedContactStoreDataSource
{
  if (byte_1000292B8 == 1)
  {
    v14 = v2;
    v15 = v3;
    kdebug_trace();
    resourcesPrewarmingQueue = [self resourcesPrewarmingQueue];
    dispatch_async_and_wait(resourcesPrewarmingQueue, &stru_1000205E0);

    prewarmContactStoreDataSourceSnapshotBlock = [objc_opt_class() prewarmContactStoreDataSourceSnapshotBlock];
    resourcesPrewarmingQueue2 = [self resourcesPrewarmingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001FA0;
    block[3] = &unk_100020608;
    v13 = prewarmContactStoreDataSourceSnapshotBlock;
    v8 = prewarmContactStoreDataSourceSnapshotBlock;
    dispatch_async(resourcesPrewarmingQueue2, block);

    kdebug_trace();
    v9 = qword_1000292B0;
    qword_1000292B0 = 0;

    v3 = v15;
  }

  v10 = qword_1000292A8;

  return v10;
}

- (void)setupContainerController
{
  v3 = [ContactsCardNavigationController alloc];
  v6 = objc_alloc_init(ContactsCardEmptyStateViewController);
  v4 = [(ContactsCardNavigationController *)v3 initWithRootViewController:v6];
  contactContainer = self->_contactContainer;
  self->_contactContainer = v4;
}

- (void)setupGroupsNavigationController
{
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  shouldShowAccountsAndGroups = [contactNavigationController shouldShowAccountsAndGroups];

  if (shouldShowAccountsAndGroups)
  {
    v5 = [UINavigationController alloc];
    contactNavigationController2 = [(ContactsSplitViewController *)self contactNavigationController];
    accountsAndGroupsViewController = [contactNavigationController2 accountsAndGroupsViewController];
    v8 = [v5 initWithRootViewController:accountsAndGroupsViewController];
    groupsNavigationController = self->_groupsNavigationController;
    self->_groupsNavigationController = v8;

    navigationBar = [(UINavigationController *)self->_groupsNavigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];
  }
}

- (void)setupKeyCommands
{
  v3 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"selectNextContact:"];
  [(ContactsSplitViewController *)self addKeyCommand:v3];

  v4 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"selectPreviousContact:"];
  [(ContactsSplitViewController *)self addKeyCommand:v4];
}

- (void)setupSplitViewControllerProperties
{
  [(ContactsSplitViewController *)self setDelegate:self];
  [(ContactsSplitViewController *)self setRestorationIdentifier:@"ContactsSplitViewController"];
  [(ContactsSplitViewController *)self setPreferredDisplayMode:0];
  [(ContactsSplitViewController *)self setPreferredPrimaryColumnWidth:270.0];

  [(ContactsSplitViewController *)self setPreferredSplitBehavior:1];
}

- (void)setupColumns
{
  [(ContactsSplitViewController *)self setupPrimaryColumnViewController];
  [(ContactsSplitViewController *)self setViewController:self->_contactNavigationController forColumn:1];
  [(ContactsSplitViewController *)self setViewController:self->_contactContainer forColumn:2];
  v3 = +[CNEnvironment currentEnvironment];
  featureFlags = [v3 featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    v5 = +[CNUIContactsEnvironment currentEnvironment];
    runningInContactsAppOniPad = [v5 runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {

      [(ContactsSplitViewController *)self setPreferredSupplementaryColumnWidthFraction:0.5];
      return;
    }
  }

  else
  {
  }

  [(ContactsSplitViewController *)self setPreferredSupplementaryColumnWidth:375.0];
}

- (void)setupPrimaryColumnViewController
{
  v7 = [(ContactsSplitViewController *)self viewControllerForColumn:0];
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  shouldShowAccountsAndGroups = [contactNavigationController shouldShowAccountsAndGroups];
  groupsNavigationController = 0;
  if (shouldShowAccountsAndGroups)
  {
    groupsNavigationController = self->_groupsNavigationController;
  }

  v6 = groupsNavigationController;

  if (v7 != v6)
  {
    [(ContactsSplitViewController *)self setViewController:v6 forColumn:0];
  }
}

- (CNContactStore)store
{
  dataSource = [(ContactsSplitViewController *)self dataSource];
  store = [dataSource store];

  return store;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v4 viewDidLoad];
  v3 = +[CNContactMenuBarManager sharedInstance];
  [v3 setNavigationViewControllerAndBuildMenu:self->_contactNavigationController];
}

- (BOOL)isShowingListView
{
  contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  if ([contactListViewController isViewLoaded])
  {
    contactsList = [(ContactsSplitViewController *)self contactsList];
    window = [contactsList window];
    v6 = window != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CNContact)displayedContact
{
  v3 = self->_displayedContact;
  if ([(ContactsSplitViewController *)self _isCollapsed])
  {
    presentedContactViewController = [(ContactsSplitViewController *)self presentedContactViewController];

    if (!presentedContactViewController)
    {

      v3 = 0;
    }
  }

  return v3;
}

- (CNContactViewController)presentedContactViewController
{
  v3 = +[CNEnvironment currentEnvironment];
  featureFlags = [v3 featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    v5 = +[CNUIContactsEnvironment currentEnvironment];
    runningInContactsAppOniPad = [v5 runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      objc_opt_class();
      potentiallyPresentedDetailViewController = [(ContactsSplitViewController *)self potentiallyPresentedDetailViewController];
      if (objc_opt_isKindOfClass())
      {
        v8 = potentiallyPresentedDetailViewController;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      goto LABEL_12;
    }
  }

  else
  {
  }

  objc_opt_class();
  potentiallyPresentedDetailViewController = [(ContactsSplitViewController *)self potentiallyPresentedDetailViewController];
  childViewControllers = [potentiallyPresentedDetailViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  if (objc_opt_isKindOfClass())
  {
    v12 = firstObject;
  }

  else
  {
    v12 = 0;
  }

  v9 = v12;

LABEL_12:
  view = [(CNContactViewController *)v9 view];
  window = [view window];
  if (window)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (ContactsSplitViewController)initWithStyle:(int64_t)style
{
  [objc_opt_class() disableCompatiblityWorkaround];
  v9.receiver = self;
  v9.super_class = ContactsSplitViewController;
  v5 = [(ContactsSplitViewController *)&v9 initWithStyle:style];
  v6 = v5;
  if (v5)
  {
    [(ContactsSplitViewController *)v5 setup];
    v7 = v6;
  }

  return v6;
}

- (ContactsSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  [objc_opt_class() disableCompatiblityWorkaround];
  v11.receiver = self;
  v11.super_class = ContactsSplitViewController;
  v8 = [(ContactsSplitViewController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];

  if (v8)
  {
    [(ContactsSplitViewController *)v8 setup];
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIViewControllerShowDetailTargetDidChangeNotification object:self];

  v4.receiver = self;
  v4.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v4 dealloc];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  LOBYTE(action) = [contactNavigationController canPerformAction:action withSender:senderCopy];

  return action;
}

- (void)showDetailTargetDidChange:(id)change
{
  if (([(ContactsSplitViewController *)self isCollapsed]& 1) == 0)
  {
    v7 = self->_displayedContact;
    if (v7)
    {
      contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
      [contactListViewController selectContact:v7 animated:1 scrollPosition:0];
    }

    else
    {
      contactListViewController = [(ContactsSplitViewController *)self contactContainer];
      v5 = [contactListViewController popToRootViewControllerAnimated:0];
      detailViewController = [(ContactsSplitViewController *)self detailViewController];

      if (detailViewController != contactListViewController)
      {
        [(ContactsSplitViewController *)self setViewController:contactListViewController forColumn:2];
      }
    }
  }
}

- (void)removeContactViewController
{
  [(ContactsSplitViewController *)self setDisplayedContact:0];
  if ([(ContactsSplitViewController *)self isCollapsed])
  {
    v10 = [(ContactsSplitViewController *)self viewControllerForColumn:2];
    navigationController = [v10 navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    contactContainer = [(ContactsSplitViewController *)self contactContainer];
    v6 = [contactContainer popToRootViewControllerAnimated:0];

    detailViewController = [(ContactsSplitViewController *)self detailViewController];
    contactContainer2 = [(ContactsSplitViewController *)self contactContainer];

    if (detailViewController != contactContainer2)
    {
      contactContainer = self->_contactContainer;

      [(ContactsSplitViewController *)self setViewController:contactContainer forColumn:2];
    }
  }
}

- (void)resetContactViewController
{
  [(ContactsSplitViewController *)self setDisplayedContact:0];
  contactContainer = self->_contactContainer;

  [(ContactsSplitViewController *)self setViewController:contactContainer forColumn:2];
}

- (void)showEditingCardForContact:(id)contact
{
  [(CNContactNavigationController *)self->_contactNavigationController showCardForContact:contact resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:1 animated:0];
  contactNavigationController = self->_contactNavigationController;

  [(CNContactNavigationController *)contactNavigationController startEditingPresentedContact];
}

- (void)createNewContact
{
  if (([(CNContactNavigationController *)self->_contactNavigationController isDisplayingAddNewContactViewController]& 1) == 0)
  {
    if ([(ContactsSplitViewController *)self isShowingGroups])
    {
      [(ContactsSplitViewController *)self showContactList];
    }

    contactNavigationController = self->_contactNavigationController;

    [(CNContactNavigationController *)contactNavigationController addContact:0 animated:0];
  }
}

- (void)_cancelOutstandingSearch
{
  contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  isSearching = [contactListViewController isSearching];

  if (isSearching)
  {
    contactListViewController2 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
    [contactListViewController2 cancelSearch:0];
  }
}

- (CNContactListCollectionView)contactsList
{
  contactListViewController = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  collectionView = [contactListViewController collectionView];

  return collectionView;
}

- (CNContact)unsavedContact
{
  presentedContactViewController = [(ContactsSplitViewController *)self presentedContactViewController];

  if (presentedContactViewController)
  {
    presentedContactViewController2 = [(ContactsSplitViewController *)self presentedContactViewController];
    contentViewController = [presentedContactViewController2 contentViewController];
    [contentViewController saveModelChangesToContact];

    contact = [presentedContactViewController2 contact];
  }

  else
  {
    contact = 0;
  }

  return contact;
}

- (BOOL)isShowingGroups
{
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  accountsAndGroupsViewController = [contactNavigationController accountsAndGroupsViewController];
  if ([accountsAndGroupsViewController isViewLoaded])
  {
    contactNavigationController2 = [(ContactsSplitViewController *)self contactNavigationController];
    accountsAndGroupsViewController2 = [contactNavigationController2 accountsAndGroupsViewController];
    view = [accountsAndGroupsViewController2 view];
    window = [view window];
    v9 = window != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setRestoredContact:(id)contact
{
  contactCopy = contact;
  objc_storeStrong(&self->_restoredContact, contact);
  restoredContact = self->_restoredContact;
  if (restoredContact)
  {
    goto LABEL_7;
  }

  if (([(ContactsSplitViewController *)self _isCollapsed]& 1) == 0)
  {
    contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
    dataSource = [contactNavigationController dataSource];
    contacts = [dataSource contacts];

    if ([contacts count])
    {
      v9 = [contacts objectAtIndexedSubscript:0];
      v10 = self->_restoredContact;
      self->_restoredContact = v9;
    }
  }

  restoredContact = self->_restoredContact;
  if (restoredContact)
  {
LABEL_7:
    [(ContactsSplitViewController *)self showCardForContact:restoredContact fallbackToFirstContact:0];
    v11 = self->_restoredContact;
  }

  else
  {
    v11 = 0;
  }

  self->_restoredContact = 0;
}

- (void)updateModeOnSplitViewControllerForDisplayMode:(int64_t)mode
{
  v5 = +[CNEnvironment currentEnvironment];
  featureFlags = [v5 featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    v7 = +[CNUIContactsEnvironment currentEnvironment];
    runningInContactsAppOniPad = [v7 runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      if (mode <= 5 && ((1 << mode) & 0x2C) != 0)
      {
        v9 = 0.5;
      }

      else
      {
        v9 = UISplitViewControllerAutomaticDimension;
      }

      [(ContactsSplitViewController *)self setPreferredSupplementaryColumnWidthFraction:v9];
    }
  }

  else
  {
  }

  if ([(ContactsSplitViewController *)self _isCollapsed])
  {
    v10 = +[CNEnvironment currentEnvironment];
    featureFlags2 = [v10 featureFlags];
    v12 = [featureFlags2 isFeatureEnabled:29];

    if ((v12 & 1) == 0)
    {
      [(ContactsSplitViewController *)self setPresentsWithGesture:0];
    }

    contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
    [contactNavigationController setHideGroupsButton:0];

    if ([(ContactsSplitViewController *)self isShowingListView])
    {
      contactNavigationController2 = [(ContactsSplitViewController *)self contactNavigationController];
      contactListViewController = [contactNavigationController2 contactListViewController];
      [contactListViewController deselectAllSelectedIndexPathsAnimated:0];
    }
  }

  else
  {
    contactNavigationController3 = [(ContactsSplitViewController *)self contactNavigationController];
    [contactNavigationController3 setHideGroupsButton:1];

    v16 = +[CNEnvironment currentEnvironment];
    featureFlags3 = [v16 featureFlags];
    v18 = [featureFlags3 isFeatureEnabled:29];

    if ((v18 & 1) == 0)
    {
      if (mode == 2 && (-[ContactsSplitViewController contactNavigationController](self, "contactNavigationController"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 shouldShowAccountsAndGroups], v19, !v20))
      {
        selfCopy2 = self;
        v22 = 0;
      }

      else
      {
        selfCopy2 = self;
        v22 = 1;
      }

      [(ContactsSplitViewController *)selfCopy2 setPresentsWithGesture:v22];
    }
  }
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  [(ContactsSplitViewController *)self updateModeOnSplitViewControllerForDisplayMode:mode];
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007640;
  block[3] = &unk_1000204D0;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  -[ContactsSplitViewController updateModeOnSplitViewControllerForDisplayMode:](self, "updateModeOnSplitViewControllerForDisplayMode:", [controller displayMode]);
  displayedContact = [(ContactsSplitViewController *)self displayedContact];

  if (displayedContact)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  presentedContactViewController = [(ContactsSplitViewController *)self presentedContactViewController];

  if (presentedContactViewController)
  {
    v7 = 0;
  }

  else
  {
    v7 = mode == 1;
  }

  if (v7)
  {
    mode = 3;
  }

  if (mode == 3)
  {
    contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
    contactListViewController = [contactNavigationController contactListViewController];
    selectedIndexPath = [(ContactsSplitViewController *)self selectedIndexPath];
    v11 = [contactListViewController isValidIndexPath:selectedIndexPath];

    if ((v11 & 1) == 0)
    {
      [(ContactsSplitViewController *)self setSelectedIndexPath:0];
    }

    selectedIndexPath2 = [(ContactsSplitViewController *)self selectedIndexPath];

    contactsList = [(ContactsSplitViewController *)self contactsList];
    if (selectedIndexPath2)
    {
      selectedIndexPath3 = [(ContactsSplitViewController *)self selectedIndexPath];
      [contactsList selectItemAtIndexPath:selectedIndexPath3 animated:1 scrollPosition:2];
    }

    else
    {
      selectedIndexPath3 = [(ContactsSplitViewController *)self contactsList];
      indexPathsForSelectedItems = [selectedIndexPath3 indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems firstObject];
      [contactsList deselectItemAtIndexPath:firstObject animated:1];
    }
  }

  presentedContactViewController2 = [(ContactsSplitViewController *)self presentedContactViewController];

  if (!presentedContactViewController2)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000785C;
    v19[3] = &unk_1000204D0;
    v19[4] = self;
    [(ContactsSplitViewController *)self _allowingMutationsInDelegateCallback:v19];
  }

  return mode;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = +[CNEnvironment currentEnvironment];
  featureFlags = [traitCollection featureFlags];
  if (([featureFlags isFeatureEnabled:29] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = +[CNUIContactsEnvironment currentEnvironment];
  runningInContactsAppOniPad = [v7 runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    [changeCopy horizontalSizeClass];
    traitCollection = [(ContactsSplitViewController *)self traitCollection];
    [traitCollection horizontalSizeClass];
LABEL_5:
  }
}

- (void)saveEditingViewControllersAndDismissViewController:(id)controller
{
  controllerCopy = controller;
  childViewControllers = [controllerCopy childViewControllers];
  v4 = [childViewControllers _cn_flatMap:&stru_100020648];
  v5 = [v4 _cn_filter:&stru_100020688];
  [v5 _cn_each:&stru_1000206C8];

  [controllerCopy dismissViewControllerAnimated:0 completion:0];
}

- (BOOL)contactNavigationController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated dismissingPresentedController:(BOOL)presentedController shouldHideContactListIfNeeded:(BOOL)needed
{
  presentedControllerCopy = presentedController;
  neededCopy = needed;
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  presentedContactViewController = [(ContactsSplitViewController *)self presentedContactViewController];
  v12 = presentedContactViewController;
  if (presentedContactViewController)
  {
    isEditing = [presentedContactViewController isEditing];
    v14 = v12 == viewControllerCopy;
    if (v12 != viewControllerCopy && isEditing)
    {
      contentViewController = [v12 contentViewController];
      [contentViewController saveChanges];

      contentViewController2 = [v12 contentViewController];
      [contentViewController2 setEditing:0 animated:0];

      v14 = 0;
    }
  }

  else
  {
    v14 = viewControllerCopy == 0;
  }

  contact = [viewControllerCopy contact];
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];

  shouldDisplayListHeaderView = [contactListViewController shouldDisplayListHeaderView];
  dataSource = [(ContactsSplitViewController *)self dataSource];
  v22 = [dataSource indexPathForContact:contact];
  v23 = v22;
  if (shouldDisplayListHeaderView)
  {

    v24 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v23 item], objc_msgSend(v23, "section") + 1);
  }

  else
  {
    v24 = v22;
    v23 = dataSource;
  }

  [(ContactsSplitViewController *)self setSelectedIndexPath:v24];

  if (!v14)
  {
    [(ContactsSplitViewController *)self removeContactViewController];
    [(ContactsSplitViewController *)self showContactDetailViewController:viewControllerCopy sender:controllerCopy animated:animatedCopy dismissingPresentedController:presentedControllerCopy];
  }

  [(ContactsSplitViewController *)self setDisplayedContact:contact];
  if ([(ContactsSplitViewController *)self contactViewIsCovered]&& neededCopy)
  {
    [(ContactsSplitViewController *)self hideColumn:1];
  }

  return 1;
}

- (BOOL)groupsPanelIsHidden
{
  displayMode = [(ContactsSplitViewController *)self displayMode];
  if (displayMode != 1)
  {
    LOBYTE(displayMode) = [(ContactsSplitViewController *)self displayMode]== 2 || [(ContactsSplitViewController *)self displayMode]== 3;
  }

  return displayMode;
}

- (void)toggleGroupsPanel
{
  if (([(ContactsSplitViewController *)self isCollapsed]& 1) == 0)
  {
    if ([(ContactsSplitViewController *)self groupsPanelIsHidden])
    {

      [(ContactsSplitViewController *)self showColumn:0];
    }

    else
    {

      [(ContactsSplitViewController *)self hideColumn:0];
    }
  }
}

- (void)contactNavigationController:(id)controller didDeleteContact:(id)contact
{
  contactCopy = contact;
  displayedContact = [(ContactsSplitViewController *)self displayedContact];
  if (displayedContact == contactCopy)
  {

    goto LABEL_5;
  }

  displayedContact2 = [(ContactsSplitViewController *)self displayedContact];
  v7 = [contactCopy isEqual:displayedContact2];

  if (v7)
  {
LABEL_5:
    [(ContactsSplitViewController *)self setDisplayedContact:0];
  }

  [(ContactsSplitViewController *)self deselectContactAndSelectNext:1];
}

- (void)deselectContactAndSelectNext:(BOOL)next
{
  nextCopy = next;
  if ([(ContactsSplitViewController *)self isCollapsed])
  {
    [(ContactsSplitViewController *)self removeContactViewController];
    [(ContactsSplitViewController *)self setSelectedIndexPath:0];
  }

  else if (nextCopy)
  {
    selectedIndexPath = [(ContactsSplitViewController *)self selectedIndexPath];
    contactsList = [(ContactsSplitViewController *)self contactsList];
    v7 = [contactsList globalIndexForItemAtIndexPath:selectedIndexPath];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [selectedIndexPath section] + 1);
    [(ContactsSplitViewController *)self setSelectedIndexPath:v8];

    contactsList2 = [(ContactsSplitViewController *)self contactsList];
    selectedIndexPath2 = [(ContactsSplitViewController *)self selectedIndexPath];
    v7 = [contactsList2 globalIndexForItemAtIndexPath:selectedIndexPath2];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    if ([selectedIndexPath row] < 1)
    {
      goto LABEL_8;
    }

    v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [selectedIndexPath row] - 1, objc_msgSend(selectedIndexPath, "section"));
    [(ContactsSplitViewController *)self setSelectedIndexPath:v11];

    contactsList3 = [(ContactsSplitViewController *)self contactsList];
    selectedIndexPath3 = [(ContactsSplitViewController *)self selectedIndexPath];
    v7 = [contactsList3 globalIndexForItemAtIndexPath:selectedIndexPath3];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      [(ContactsSplitViewController *)self setSelectedIndexPath:0];
      [(ContactsSplitViewController *)self removeContactViewController];
    }

    else
    {
LABEL_10:
      dataSource = [(ContactsSplitViewController *)self dataSource];
      contacts = [dataSource contacts];
      v18 = [contacts objectAtIndexedSubscript:v7];
      [(ContactsSplitViewController *)self showCardForContact:v18 fallbackToFirstContact:1];
    }
  }

  else
  {
    [(ContactsSplitViewController *)self setDisplayedContact:0];
    contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
    contactListViewController = [contactNavigationController contactListViewController];
    [contactListViewController deselectAllSelectedIndexPathsAnimated:1];

    [(ContactsSplitViewController *)self setSelectedIndexPath:0];
    [(ContactsSplitViewController *)self removeContactViewController];
  }

  if (([(ContactsSplitViewController *)self isCollapsed]& 1) == 0)
  {

    [(ContactsSplitViewController *)self showColumn:1];
  }
}

- (void)searchForString:(id)string
{
  stringCopy = string;
  [(ContactsSplitViewController *)self showContactList];
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController searchForString:stringCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v6 touchesBegan:began withEvent:event];
  view = [(ContactsSplitViewController *)self view];
  [view endEditing:1];
}

- (void)beginSearch:(id)search
{
  searchCopy = search;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController beginSearch:searchCopy];
}

- (void)addContact:(id)contact
{
  contactCopy = contact;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController addContact:contactCopy];
}

- (void)deleteContact:(id)contact
{
  contactCopy = contact;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController deleteContact:contactCopy];
}

- (void)selectNextContact:(id)contact
{
  contactCopy = contact;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController selectNextContact:contactCopy];
}

- (void)selectPreviousContact:(id)contact
{
  contactCopy = contact;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController selectPreviousContact:contactCopy];
}

- (void)toggleEditContact:(id)contact
{
  contactCopy = contact;
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  [contactNavigationController toggleEditContact:contactCopy];
}

- (id)navigationControllerForPPT
{
  if ([(ContactsSplitViewController *)self _isCollapsed])
  {
    v3 = [(ContactsSplitViewController *)self viewControllerForColumn:0];
    if (v3)
    {
      goto LABEL_6;
    }

    selfCopy2 = self;
    v5 = 1;
  }

  else
  {
    selfCopy2 = self;
    v5 = 2;
  }

  v3 = [(ContactsSplitViewController *)selfCopy2 viewControllerForColumn:v5];
LABEL_6:
  v6 = v3;
  v7 = [(ContactsSplitViewController *)self navigationControllerForPotentiallyWrappedViewController:v3];

  return v7;
}

- (id)navigationControllerForPotentiallyWrappedViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = controllerCopy;
  }

  else
  {
    navigationController = [controllerCopy navigationController];
  }

  v5 = navigationController;

  return v5;
}

- (id)_multitaskingDragExclusionRects
{
  contactNavigationController = [(ContactsSplitViewController *)self contactNavigationController];
  accountsAndGroupsViewController = [contactNavigationController accountsAndGroupsViewController];
  if (accountsAndGroupsViewController)
  {
    v5 = accountsAndGroupsViewController;
    groupsPanelIsHidden = [(ContactsSplitViewController *)self groupsPanelIsHidden];

    if ((groupsPanelIsHidden & 1) == 0)
    {
      contactNavigationController2 = [(ContactsSplitViewController *)self contactNavigationController];
      accountsAndGroupsViewController2 = [contactNavigationController2 accountsAndGroupsViewController];
      multitaskingDragExclusionRects = [accountsAndGroupsViewController2 multitaskingDragExclusionRects];
      firstObject = [multitaskingDragExclusionRects firstObject];
      [firstObject CGRectValue];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      view = [(ContactsSplitViewController *)self view];
      contactNavigationController3 = [(ContactsSplitViewController *)self contactNavigationController];
      accountsAndGroupsViewController3 = [contactNavigationController3 accountsAndGroupsViewController];
      view2 = [accountsAndGroupsViewController3 view];
      [view convertRect:view2 fromView:{v12, v14, v16, v18}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v34[0] = v24;
      v34[1] = v26;
      v34[2] = v28;
      v34[3] = v30;
      v31 = [NSValue valueWithBytes:v34 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v35 = v31;
      v32 = [NSArray arrayWithObjects:&v35 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = &__NSArray0__struct;
LABEL_6:

  return v32;
}

@end