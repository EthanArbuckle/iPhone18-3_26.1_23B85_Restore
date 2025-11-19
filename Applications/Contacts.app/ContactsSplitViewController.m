@interface ContactsSplitViewController
+ (id)newContactStoreDataSourceForSplitViewController;
+ (id)prewarmContactStoreDataSourceBlock;
+ (id)prewarmedContactStoreDataSource;
+ (id)resourcesPrewarmingQueue;
+ (void)disableCompatiblityWorkaround;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)contactNavigationController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 dismissingPresentedController:(BOOL)a6 shouldHideContactListIfNeeded:(BOOL)a7;
- (BOOL)groupsPanelIsHidden;
- (BOOL)isShowingGroups;
- (BOOL)isShowingListView;
- (CNContact)displayedContact;
- (CNContact)unsavedContact;
- (CNContactListCollectionView)contactsList;
- (CNContactStore)store;
- (CNContactViewController)presentedContactViewController;
- (ContactsSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ContactsSplitViewController)initWithStyle:(int64_t)a3;
- (id)_multitaskingDragExclusionRects;
- (id)navigationControllerForPPT;
- (id)navigationControllerForPotentiallyWrappedViewController:(id)a3;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)_cancelOutstandingSearch;
- (void)addContact:(id)a3;
- (void)beginSearch:(id)a3;
- (void)contactNavigationController:(id)a3 didDeleteContact:(id)a4;
- (void)createNewContact;
- (void)dealloc;
- (void)deleteContact:(id)a3;
- (void)deselectContactAndSelectNext:(BOOL)a3;
- (void)removeContactViewController;
- (void)resetContactViewController;
- (void)saveEditingViewControllersAndDismissViewController:(id)a3;
- (void)searchForString:(id)a3;
- (void)selectNextContact:(id)a3;
- (void)selectPreviousContact:(id)a3;
- (void)setRestoredContact:(id)a3;
- (void)setup;
- (void)setupColumns;
- (void)setupContainerController;
- (void)setupGroupsNavigationController;
- (void)setupKeyCommands;
- (void)setupNavigationController;
- (void)setupPrimaryColumnViewController;
- (void)setupSplitViewControllerProperties;
- (void)showDetailTargetDidChange:(id)a3;
- (void)showEditingCardForContact:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)toggleEditContact:(id)a3;
- (void)toggleGroupsPanel;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateModeOnSplitViewControllerForDisplayMode:(int64_t)a3;
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
  v4[4] = a1;
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
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:19];

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
    v4 = [v3 featureFlags];
    v5 = [v4 isFeatureEnabled:29];

    if (v5)
    {
      v6 = objc_alloc_init(CNContactViewSharedNavigationBar);
      sharedNavigationBar = self->_sharedNavigationBar;
      self->_sharedNavigationBar = v6;

      v8 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar addContactButton];
      [v8 setTarget:self];

      v9 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar addContactButton];
      [v9 setAction:"addContact:"];
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
  v13 = [objc_opt_class() prewarmedContactStoreDataSource];
  v3 = +[CNEnvironment currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v13)
  {
    v6 = [CNContactNavigationController alloc];
    v7 = [v13 contactFormatter];
    v8 = +[CNUIContactsEnvironment currentEnvironment];
    v9 = [v6 initWithDataSource:v13 contactFormatter:v7 applyGroupFilterFromPreferences:0 environment:v8 allowsLargeTitles:v5 ^ 1 allowsSearch:1];
    contactNavigationController = self->_contactNavigationController;
    self->_contactNavigationController = v9;
  }

  else
  {
    v13 = [objc_opt_class() newContactStoreDataSourceForSplitViewController];
    v11 = [[CNContactNavigationController alloc] initWithDataSource:v13 allowsLargeTitles:v5 ^ 1];
    v7 = self->_contactNavigationController;
    self->_contactNavigationController = v11;
  }

  [(CNContactNavigationController *)self->_contactNavigationController setAllowsCardEditing:1];
  [(CNContactNavigationController *)self->_contactNavigationController setAllowsCardDeletion:1];
  [(CNContactNavigationController *)self->_contactNavigationController setAllowsContactBlocking:1];
  v12 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  [v12 setShouldDisplayMeContactBanner:1];

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
    v5 = [a1 resourcesPrewarmingQueue];
    dispatch_async_and_wait(v5, &stru_1000205E0);

    v6 = [objc_opt_class() prewarmContactStoreDataSourceSnapshotBlock];
    v7 = [a1 resourcesPrewarmingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001FA0;
    block[3] = &unk_100020608;
    v13 = v6;
    v8 = v6;
    dispatch_async(v7, block);

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
  v3 = [(ContactsSplitViewController *)self contactNavigationController];
  v4 = [v3 shouldShowAccountsAndGroups];

  if (v4)
  {
    v5 = [UINavigationController alloc];
    v6 = [(ContactsSplitViewController *)self contactNavigationController];
    v7 = [v6 accountsAndGroupsViewController];
    v8 = [v5 initWithRootViewController:v7];
    groupsNavigationController = self->_groupsNavigationController;
    self->_groupsNavigationController = v8;

    v10 = [(UINavigationController *)self->_groupsNavigationController navigationBar];
    [v10 setPrefersLargeTitles:1];
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
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:29])
  {
    v5 = +[CNUIContactsEnvironment currentEnvironment];
    v6 = [v5 runningInContactsAppOniPad];

    if (v6)
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
  v3 = [(ContactsSplitViewController *)self contactNavigationController];
  v4 = [v3 shouldShowAccountsAndGroups];
  groupsNavigationController = 0;
  if (v4)
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
  v2 = [(ContactsSplitViewController *)self dataSource];
  v3 = [v2 store];

  return v3;
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
  v3 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  if ([v3 isViewLoaded])
  {
    v4 = [(ContactsSplitViewController *)self contactsList];
    v5 = [v4 window];
    v6 = v5 != 0;
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
    v4 = [(ContactsSplitViewController *)self presentedContactViewController];

    if (!v4)
    {

      v3 = 0;
    }
  }

  return v3;
}

- (CNContactViewController)presentedContactViewController
{
  v3 = +[CNEnvironment currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:29])
  {
    v5 = +[CNUIContactsEnvironment currentEnvironment];
    v6 = [v5 runningInContactsAppOniPad];

    if (v6)
    {
      objc_opt_class();
      v7 = [(ContactsSplitViewController *)self potentiallyPresentedDetailViewController];
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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
  v7 = [(ContactsSplitViewController *)self potentiallyPresentedDetailViewController];
  v10 = [v7 childViewControllers];
  v11 = [v10 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v9 = v12;

LABEL_12:
  v13 = [(CNContactViewController *)v9 view];
  v14 = [v13 window];
  if (v14)
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

- (ContactsSplitViewController)initWithStyle:(int64_t)a3
{
  [objc_opt_class() disableCompatiblityWorkaround];
  v9.receiver = self;
  v9.super_class = ContactsSplitViewController;
  v5 = [(ContactsSplitViewController *)&v9 initWithStyle:a3];
  v6 = v5;
  if (v5)
  {
    [(ContactsSplitViewController *)v5 setup];
    v7 = v6;
  }

  return v6;
}

- (ContactsSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() disableCompatiblityWorkaround];
  v11.receiver = self;
  v11.super_class = ContactsSplitViewController;
  v8 = [(ContactsSplitViewController *)&v11 initWithNibName:v7 bundle:v6];

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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ContactsSplitViewController *)self contactNavigationController];
  LOBYTE(a3) = [v7 canPerformAction:a3 withSender:v6];

  return a3;
}

- (void)showDetailTargetDidChange:(id)a3
{
  if (([(ContactsSplitViewController *)self isCollapsed]& 1) == 0)
  {
    v7 = self->_displayedContact;
    if (v7)
    {
      v4 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
      [v4 selectContact:v7 animated:1 scrollPosition:0];
    }

    else
    {
      v4 = [(ContactsSplitViewController *)self contactContainer];
      v5 = [v4 popToRootViewControllerAnimated:0];
      v6 = [(ContactsSplitViewController *)self detailViewController];

      if (v6 != v4)
      {
        [(ContactsSplitViewController *)self setViewController:v4 forColumn:2];
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
    v3 = [v10 navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }

  else
  {
    v5 = [(ContactsSplitViewController *)self contactContainer];
    v6 = [v5 popToRootViewControllerAnimated:0];

    v7 = [(ContactsSplitViewController *)self detailViewController];
    v8 = [(ContactsSplitViewController *)self contactContainer];

    if (v7 != v8)
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

- (void)showEditingCardForContact:(id)a3
{
  [(CNContactNavigationController *)self->_contactNavigationController showCardForContact:a3 resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:1 animated:0];
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
  v3 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  v4 = [v3 isSearching];

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
    [v5 cancelSearch:0];
  }
}

- (CNContactListCollectionView)contactsList
{
  v2 = [(CNContactNavigationController *)self->_contactNavigationController contactListViewController];
  v3 = [v2 collectionView];

  return v3;
}

- (CNContact)unsavedContact
{
  v3 = [(ContactsSplitViewController *)self presentedContactViewController];

  if (v3)
  {
    v4 = [(ContactsSplitViewController *)self presentedContactViewController];
    v5 = [v4 contentViewController];
    [v5 saveModelChangesToContact];

    v6 = [v4 contact];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isShowingGroups
{
  v3 = [(ContactsSplitViewController *)self contactNavigationController];
  v4 = [v3 accountsAndGroupsViewController];
  if ([v4 isViewLoaded])
  {
    v5 = [(ContactsSplitViewController *)self contactNavigationController];
    v6 = [v5 accountsAndGroupsViewController];
    v7 = [v6 view];
    v8 = [v7 window];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setRestoredContact:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_restoredContact, a3);
  restoredContact = self->_restoredContact;
  if (restoredContact)
  {
    goto LABEL_7;
  }

  if (([(ContactsSplitViewController *)self _isCollapsed]& 1) == 0)
  {
    v6 = [(ContactsSplitViewController *)self contactNavigationController];
    v7 = [v6 dataSource];
    v8 = [v7 contacts];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
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

- (void)updateModeOnSplitViewControllerForDisplayMode:(int64_t)a3
{
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 featureFlags];
  if ([v6 isFeatureEnabled:29])
  {
    v7 = +[CNUIContactsEnvironment currentEnvironment];
    v8 = [v7 runningInContactsAppOniPad];

    if (v8)
    {
      if (a3 <= 5 && ((1 << a3) & 0x2C) != 0)
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
    v11 = [v10 featureFlags];
    v12 = [v11 isFeatureEnabled:29];

    if ((v12 & 1) == 0)
    {
      [(ContactsSplitViewController *)self setPresentsWithGesture:0];
    }

    v13 = [(ContactsSplitViewController *)self contactNavigationController];
    [v13 setHideGroupsButton:0];

    if ([(ContactsSplitViewController *)self isShowingListView])
    {
      v23 = [(ContactsSplitViewController *)self contactNavigationController];
      v14 = [v23 contactListViewController];
      [v14 deselectAllSelectedIndexPathsAnimated:0];
    }
  }

  else
  {
    v15 = [(ContactsSplitViewController *)self contactNavigationController];
    [v15 setHideGroupsButton:1];

    v16 = +[CNEnvironment currentEnvironment];
    v17 = [v16 featureFlags];
    v18 = [v17 isFeatureEnabled:29];

    if ((v18 & 1) == 0)
    {
      if (a3 == 2 && (-[ContactsSplitViewController contactNavigationController](self, "contactNavigationController"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 shouldShowAccountsAndGroups], v19, !v20))
      {
        v21 = self;
        v22 = 0;
      }

      else
      {
        v21 = self;
        v22 = 1;
      }

      [(ContactsSplitViewController *)v21 setPresentsWithGesture:v22];
    }
  }
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  [(ContactsSplitViewController *)self updateModeOnSplitViewControllerForDisplayMode:a4];
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007640;
  block[3] = &unk_1000204D0;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  -[ContactsSplitViewController updateModeOnSplitViewControllerForDisplayMode:](self, "updateModeOnSplitViewControllerForDisplayMode:", [a3 displayMode]);
  v5 = [(ContactsSplitViewController *)self displayedContact];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v6 = [(ContactsSplitViewController *)self presentedContactViewController];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 == 1;
  }

  if (v7)
  {
    a4 = 3;
  }

  if (a4 == 3)
  {
    v8 = [(ContactsSplitViewController *)self contactNavigationController];
    v9 = [v8 contactListViewController];
    v10 = [(ContactsSplitViewController *)self selectedIndexPath];
    v11 = [v9 isValidIndexPath:v10];

    if ((v11 & 1) == 0)
    {
      [(ContactsSplitViewController *)self setSelectedIndexPath:0];
    }

    v12 = [(ContactsSplitViewController *)self selectedIndexPath];

    v13 = [(ContactsSplitViewController *)self contactsList];
    if (v12)
    {
      v14 = [(ContactsSplitViewController *)self selectedIndexPath];
      [v13 selectItemAtIndexPath:v14 animated:1 scrollPosition:2];
    }

    else
    {
      v14 = [(ContactsSplitViewController *)self contactsList];
      v15 = [v14 indexPathsForSelectedItems];
      v16 = [v15 firstObject];
      [v13 deselectItemAtIndexPath:v16 animated:1];
    }
  }

  v17 = [(ContactsSplitViewController *)self presentedContactViewController];

  if (!v17)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000785C;
    v19[3] = &unk_1000204D0;
    v19[4] = self;
    [(ContactsSplitViewController *)self _allowingMutationsInDelegateCallback:v19];
  }

  return a4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v9 traitCollectionDidChange:v4];
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 featureFlags];
  if (([v6 isFeatureEnabled:29] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [v7 runningInContactsAppOniPad];

  if (v8)
  {
    [v4 horizontalSizeClass];
    v5 = [(ContactsSplitViewController *)self traitCollection];
    [v5 horizontalSizeClass];
LABEL_5:
  }
}

- (void)saveEditingViewControllersAndDismissViewController:(id)a3
{
  v6 = a3;
  v3 = [v6 childViewControllers];
  v4 = [v3 _cn_flatMap:&stru_100020648];
  v5 = [v4 _cn_filter:&stru_100020688];
  [v5 _cn_each:&stru_1000206C8];

  [v6 dismissViewControllerAnimated:0 completion:0];
}

- (BOOL)contactNavigationController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 dismissingPresentedController:(BOOL)a6 shouldHideContactListIfNeeded:(BOOL)a7
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [(ContactsSplitViewController *)self presentedContactViewController];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 isEditing];
    v14 = v12 == v10;
    if (v12 != v10 && v13)
    {
      v15 = [v12 contentViewController];
      [v15 saveChanges];

      v16 = [v12 contentViewController];
      [v16 setEditing:0 animated:0];

      v14 = 0;
    }
  }

  else
  {
    v14 = v10 == 0;
  }

  v17 = [v10 contact];
  v18 = [(ContactsSplitViewController *)self contactNavigationController];
  v19 = [v18 contactListViewController];

  v20 = [v19 shouldDisplayListHeaderView];
  v21 = [(ContactsSplitViewController *)self dataSource];
  v22 = [v21 indexPathForContact:v17];
  v23 = v22;
  if (v20)
  {

    v24 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v23 item], objc_msgSend(v23, "section") + 1);
  }

  else
  {
    v24 = v22;
    v23 = v21;
  }

  [(ContactsSplitViewController *)self setSelectedIndexPath:v24];

  if (!v14)
  {
    [(ContactsSplitViewController *)self removeContactViewController];
    [(ContactsSplitViewController *)self showContactDetailViewController:v10 sender:v9 animated:v26 dismissingPresentedController:v27];
  }

  [(ContactsSplitViewController *)self setDisplayedContact:v17];
  if ([(ContactsSplitViewController *)self contactViewIsCovered]&& v28)
  {
    [(ContactsSplitViewController *)self hideColumn:1];
  }

  return 1;
}

- (BOOL)groupsPanelIsHidden
{
  v3 = [(ContactsSplitViewController *)self displayMode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(ContactsSplitViewController *)self displayMode]== 2 || [(ContactsSplitViewController *)self displayMode]== 3;
  }

  return v3;
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

- (void)contactNavigationController:(id)a3 didDeleteContact:(id)a4
{
  v8 = a4;
  v5 = [(ContactsSplitViewController *)self displayedContact];
  if (v5 == v8)
  {

    goto LABEL_5;
  }

  v6 = [(ContactsSplitViewController *)self displayedContact];
  v7 = [v8 isEqual:v6];

  if (v7)
  {
LABEL_5:
    [(ContactsSplitViewController *)self setDisplayedContact:0];
  }

  [(ContactsSplitViewController *)self deselectContactAndSelectNext:1];
}

- (void)deselectContactAndSelectNext:(BOOL)a3
{
  v3 = a3;
  if ([(ContactsSplitViewController *)self isCollapsed])
  {
    [(ContactsSplitViewController *)self removeContactViewController];
    [(ContactsSplitViewController *)self setSelectedIndexPath:0];
  }

  else if (v3)
  {
    v5 = [(ContactsSplitViewController *)self selectedIndexPath];
    v6 = [(ContactsSplitViewController *)self contactsList];
    v7 = [v6 globalIndexForItemAtIndexPath:v5];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v5 section] + 1);
    [(ContactsSplitViewController *)self setSelectedIndexPath:v8];

    v9 = [(ContactsSplitViewController *)self contactsList];
    v10 = [(ContactsSplitViewController *)self selectedIndexPath];
    v7 = [v9 globalIndexForItemAtIndexPath:v10];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    if ([v5 row] < 1)
    {
      goto LABEL_8;
    }

    v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v5 row] - 1, objc_msgSend(v5, "section"));
    [(ContactsSplitViewController *)self setSelectedIndexPath:v11];

    v12 = [(ContactsSplitViewController *)self contactsList];
    v13 = [(ContactsSplitViewController *)self selectedIndexPath];
    v7 = [v12 globalIndexForItemAtIndexPath:v13];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      [(ContactsSplitViewController *)self setSelectedIndexPath:0];
      [(ContactsSplitViewController *)self removeContactViewController];
    }

    else
    {
LABEL_10:
      v16 = [(ContactsSplitViewController *)self dataSource];
      v17 = [v16 contacts];
      v18 = [v17 objectAtIndexedSubscript:v7];
      [(ContactsSplitViewController *)self showCardForContact:v18 fallbackToFirstContact:1];
    }
  }

  else
  {
    [(ContactsSplitViewController *)self setDisplayedContact:0];
    v14 = [(ContactsSplitViewController *)self contactNavigationController];
    v15 = [v14 contactListViewController];
    [v15 deselectAllSelectedIndexPathsAnimated:1];

    [(ContactsSplitViewController *)self setSelectedIndexPath:0];
    [(ContactsSplitViewController *)self removeContactViewController];
  }

  if (([(ContactsSplitViewController *)self isCollapsed]& 1) == 0)
  {

    [(ContactsSplitViewController *)self showColumn:1];
  }
}

- (void)searchForString:(id)a3
{
  v4 = a3;
  [(ContactsSplitViewController *)self showContactList];
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 searchForString:v4];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = ContactsSplitViewController;
  [(ContactsSplitViewController *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(ContactsSplitViewController *)self view];
  [v5 endEditing:1];
}

- (void)beginSearch:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 beginSearch:v4];
}

- (void)addContact:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 addContact:v4];
}

- (void)deleteContact:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 deleteContact:v4];
}

- (void)selectNextContact:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 selectNextContact:v4];
}

- (void)selectPreviousContact:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 selectPreviousContact:v4];
}

- (void)toggleEditContact:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSplitViewController *)self contactNavigationController];
  [v5 toggleEditContact:v4];
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

    v4 = self;
    v5 = 1;
  }

  else
  {
    v4 = self;
    v5 = 2;
  }

  v3 = [(ContactsSplitViewController *)v4 viewControllerForColumn:v5];
LABEL_6:
  v6 = v3;
  v7 = [(ContactsSplitViewController *)self navigationControllerForPotentiallyWrappedViewController:v3];

  return v7;
}

- (id)navigationControllerForPotentiallyWrappedViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 navigationController];
  }

  v5 = v4;

  return v5;
}

- (id)_multitaskingDragExclusionRects
{
  v3 = [(ContactsSplitViewController *)self contactNavigationController];
  v4 = [v3 accountsAndGroupsViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(ContactsSplitViewController *)self groupsPanelIsHidden];

    if ((v6 & 1) == 0)
    {
      v7 = [(ContactsSplitViewController *)self contactNavigationController];
      v8 = [v7 accountsAndGroupsViewController];
      v9 = [v8 multitaskingDragExclusionRects];
      v10 = [v9 firstObject];
      [v10 CGRectValue];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [(ContactsSplitViewController *)self view];
      v20 = [(ContactsSplitViewController *)self contactNavigationController];
      v21 = [v20 accountsAndGroupsViewController];
      v22 = [v21 view];
      [v19 convertRect:v22 fromView:{v12, v14, v16, v18}];
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