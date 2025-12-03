@interface CNContactNavigationController
+ (id)keyCommandForNewContact;
+ (id)newContactFormatter;
+ (void)moveViewController:(id)controller toParent:(id)parent;
- (BOOL)accountsAndGroupsViewController:(id)controller shouldEnableItemWithIdentifier:(id)identifier;
- (BOOL)allowsCardDeletion;
- (BOOL)allowsCardEditing;
- (BOOL)canAddContacts;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)contactListViewController:(id)controller canSelectContact:(id)contact;
- (BOOL)contactListViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path;
- (BOOL)contactSuggestionViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (BOOL)hidesSearchableSources;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isAddContactButtonShowing;
- (BOOL)isContactProviderDataSource;
- (BOOL)isDisplayingAddNewContactViewController;
- (BOOL)isPresentedContactViewControllerVisible;
- (BOOL)isSinglePickerOnVisionOS;
- (BOOL)shouldFlipDirectionWhenChangingSelectionWithKey:(id)key;
- (BOOL)shouldShowAccountsAndGroups;
- (BOOL)shouldShowAddToGroupPicker;
- (BOOL)shouldShowGroupsBackButton;
- (BOOL)shouldShowLeftCancelAndRightAddButton;
- (BOOL)shouldShowLeftCancelAndRightDoneButton;
- (BOOL)shouldShowLeftDoneAndRightAddButton;
- (BOOL)shouldShowMailButton;
- (BOOL)shouldShowRightAddAndCancelButton;
- (BOOL)shouldShowRightAddButton;
- (BOOL)shouldShowRightCancelButton;
- (CNAccountsAndGroupsViewController)accountsAndGroupsViewController;
- (CNContactDataSource)dataSource;
- (CNContactNavigationController)initWithDataSource:(id)source allowsLargeTitles:(BOOL)titles;
- (CNContactNavigationController)initWithDataSource:(id)source contactFormatter:(id)formatter applyGroupFilterFromPreferences:(BOOL)preferences environment:(id)environment allowsLargeTitles:(BOOL)titles allowsSearch:(BOOL)search;
- (CNContactNavigationController)initWithDataSource:(id)source withOptions:(id)options;
- (CNContactViewController)presentedContactViewController;
- (UIAlertController)facebookContactsAlertController;
- (UIBarButtonItem)mailButtonItem;
- (id)addContactPresenter;
- (id)allContactIdentifiers;
- (id)currentlyDisplayedContact;
- (id)firstVisibleContact;
- (id)nextResponderForContactListViewController:(id)controller;
- (id)parentGroupForCurrentFilter;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)reuseableContactViewControllerConfiguredForContact:(id)contact mode:(int64_t)mode;
- (id)targetContainerForNewContactWithTargetGroup:(id)group;
- (id)targetGroupForNewContact;
- (id)userActivityRepresentingCurrentlyDisplayedContact;
- (id)userActivityRepresentingGroupsView;
- (void)_cnui_presentViewController:(id)controller animated:(BOOL)animated dismissingPresentedController:(BOOL)presentedController shouldHideContactListIfNeeded:(BOOL)needed;
- (void)_updateUserActivity;
- (void)accountsAndGroupsViewControllerDidCancel:(id)cancel;
- (void)accountsAndGroupsViewControllerDidFinish:(id)finish;
- (void)accountsAndGroupsViewControllerDidGoBack:(id)back;
- (void)accountsAndGroupsViewControllerDidUpdateSelection:(id)selection;
- (void)addContact:(id)contact;
- (void)addContact:(id)contact animated:(BOOL)animated;
- (void)beginSearch:(id)search;
- (void)cancel:(id)cancel;
- (void)cancelSearch:(id)search;
- (void)checkForFacebookContactsWithDelay:(double)delay allowAlert:(BOOL)alert;
- (void)clearServerSearchIfNeeded:(id)needed;
- (void)contactListAddContactButtonTapped:(id)tapped;
- (void)contactListViewController:(id)controller didSelectContact:(id)contact shouldScrollToContact:(BOOL)toContact;
- (void)contactListViewController:(id)controller shouldPresentContact:(id)contact shouldScrollToContact:(BOOL)toContact;
- (void)contactListViewController:(id)controller updatedSelectedContact:(id)contact;
- (void)contactPicker:(id)picker didCompleteWithNewContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactStyleCurrentStyleDidChange:(id)change;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didCompleteWithNewContactFromPickerNewContactRow:(id)row;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)dataSourceChangedForContactListViewController:(id)controller;
- (void)dealloc;
- (void)deleteContact:(id)contact;
- (void)didResetLimitedAccessSelectionTo:(id)to;
- (void)didUpdateLimitedAccessSelection:(id)selection;
- (void)dismissSearchAndSelectContact:(id)contact allowsMultiSelection:(BOOL)selection;
- (void)done:(id)done;
- (void)editLimitedAccess;
- (void)executeAddContact;
- (void)mailContacts:(id)contacts;
- (void)notifyOtherFacebookContactsAlertDidSelectAction;
- (void)observeOtherFacebookContactsAlert;
- (void)otherFacebookContactsAlertDidSelectActionWithNotification:(id)notification;
- (void)popToContactListAndSaveChanges:(BOOL)changes animated:(BOOL)animated;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentAddToGroupPickerWithSourceView:(id)view;
- (void)presentErrorAlertWithTitle:(id)title message:(id)message animated:(BOOL)animated;
- (void)presentGroupsViewController:(id)controller;
- (void)presentGroupsViewControllerAnimated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)refreshMailButtonEnabled;
- (void)resetContactViewController;
- (void)scrollToContact:(id)contact animated:(BOOL)animated;
- (void)searchForString:(id)string makeSearchBarFirstResponder:(BOOL)responder;
- (void)selectNextContact:(id)contact;
- (void)selectPreviousContact:(id)contact;
- (void)setContactListStyleApplier:(id)applier;
- (void)setContactPickerTargetGroupIdentifier:(id)identifier;
- (void)setContactStyle:(id)style;
- (void)setHidesSearchableSources:(BOOL)sources;
- (void)setManagedConfiguration:(id)configuration;
- (void)setUpAccountAndGroupsViewIfNeeded;
- (void)setUpLargeTitles;
- (void)setUpMenuBarWithBuilder:(id)builder;
- (void)showAllContactsListAnimated:(BOOL)animated;
- (void)showCardForContact:(id)contact resetFilter:(BOOL)filter resetSearch:(BOOL)search fallbackToFirstContact:(BOOL)firstContact scrollToContact:(BOOL)toContact animated:(BOOL)animated dismissingPresentedController:(BOOL)controller;
- (void)showCardForContact:(id)contact resetFilter:(BOOL)filter resetSearch:(BOOL)search fallbackToFirstContact:(BOOL)firstContact scrollToContact:(BOOL)toContact animated:(BOOL)animated dismissingPresentedController:(BOOL)controller shouldHideContactListIfNeeded:(BOOL)self0;
- (void)showCardForContactAfterIndexPath:(id)path;
- (void)showCardForContactBeforeIndexPath:(id)path;
- (void)showCardForContactIfPossible:(id)possible;
- (void)showNewDraftContact:(id)contact animated:(BOOL)animated;
- (void)startEditingPresentedContact;
- (void)toggleEditContact:(id)contact;
- (void)toggleGroupsPanel:(id)panel;
- (void)updateLeftNavigationButtonAnimated:(BOOL)animated;
- (void)updateNavigationButtonsAnimated:(BOOL)animated viewWillAppear:(BOOL)appear;
- (void)updateNavigationButtonsInSearchMode:(BOOL)mode animated:(BOOL)animated;
- (void)updateUserActivityState:(id)state;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNContactNavigationController

+ (id)newContactFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v2 setStyle:0];
  [v2 setEmphasizesPrimaryNameComponent:1];
  [v2 setFallbackStyle:-1];
  return v2;
}

- (CNAccountsAndGroupsViewController)accountsAndGroupsViewController
{
  accountsAndGroupsViewController = self->_accountsAndGroupsViewController;
  if (!accountsAndGroupsViewController)
  {
    v4 = objc_opt_new();
    nonServerDataSource = [(CNContactNavigationController *)self nonServerDataSource];
    if (nonServerDataSource)
    {
      [(CNContactNavigationController *)self nonServerDataSource];
    }

    else
    {
      [(CNContactListViewController *)self->_contactListViewController dataSource];
    }
    v6 = ;
    filter = [v6 filter];
    accountsAndGroupsDataSource = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [accountsAndGroupsDataSource setFilter:filter];

    accountsAndGroupsDataSource2 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [accountsAndGroupsDataSource2 reload];

    accountsAndGroupsDataSource3 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [(CNAccountsAndGroupsViewController *)v4 setDataSource:accountsAndGroupsDataSource3];

    [(CNAccountsAndGroupsViewController *)v4 setDelegate:self];
    managedConfiguration = [(CNContactNavigationController *)self managedConfiguration];
    [(CNAccountsAndGroupsViewController *)v4 setManagedConfiguration:managedConfiguration];

    navigationItem = [(CNAccountsAndGroupsViewController *)v4 navigationItem];
    [navigationItem setHidesBackButton:1];

    navigationItem2 = [(CNAccountsAndGroupsViewController *)v4 navigationItem];
    [navigationItem2 setStyle:0];

    v14 = self->_accountsAndGroupsViewController;
    self->_accountsAndGroupsViewController = v4;

    accountsAndGroupsViewController = self->_accountsAndGroupsViewController;
  }

  return accountsAndGroupsViewController;
}

- (CNContactDataSource)dataSource
{
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  dataSource = [contactListViewController dataSource];

  return dataSource;
}

- (BOOL)shouldShowGroupsBackButton
{
  if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
  {
    LOBYTE(shouldShowAccountsAndGroups) = 0;
  }

  else
  {
    shouldShowAccountsAndGroups = [(CNContactNavigationController *)self shouldShowAccountsAndGroups];
    if (shouldShowAccountsAndGroups)
    {
      LOBYTE(shouldShowAccountsAndGroups) = ![(CNContactNavigationController *)self hideGroupsButton];
    }
  }

  return shouldShowAccountsAndGroups;
}

- (BOOL)isSinglePickerOnVisionOS
{
  if ([(CNContactNavigationController *)self hostIdiom]== 6)
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    v4 = [contactListViewController allowsMultiSelection] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowAccountsAndGroups
{
  accountsAndGroupsDataSource = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  v3 = accountsAndGroupsDataSource != 0;

  return v3;
}

- (CNContactViewController)presentedContactViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedContactViewController);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v8 viewDidLoad];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    if (CNUIIsContacts())
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        [(CNContactNavigationController *)self setToolbarHidden:0];
      }
    }
  }

  [(CNContactNavigationController *)self setUpAccountAndGroupsViewIfNeeded];
}

- (void)setUpAccountAndGroupsViewIfNeeded
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactNavigationController *)self shouldShowGroupsBackButton])
  {
    delegate = [(CNContactNavigationController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0 || (-[CNContactNavigationController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 contactNavigationControllerShouldManageGroupsController:self], v5, v6))
    {
      if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
      {
        contactListViewController = [(CNContactNavigationController *)self contactListViewController];
        v11[0] = contactListViewController;
        contactListViewController2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        [(CNContactNavigationController *)self setViewControllers:contactListViewController2];
      }

      else
      {
        contactListViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
        contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
        v10[1] = contactListViewController2;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
        [(CNContactNavigationController *)self setViewControllers:v9];
      }
    }
  }
}

- (void)setUpLargeTitles
{
  allowsLargeTitles = [(CNContactNavigationController *)self allowsLargeTitles];
  navigationController = [(CNContactNavigationController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:allowsLargeTitles];

  allowsLargeTitles2 = [(CNContactNavigationController *)self allowsLargeTitles];
  navigationBar2 = [(CNContactNavigationController *)self navigationBar];
  [navigationBar2 setPrefersLargeTitles:allowsLargeTitles2];
}

- (BOOL)shouldShowLeftCancelAndRightDoneButton
{
  allowsCanceling = [(CNContactNavigationController *)self allowsCanceling];
  if (allowsCanceling)
  {

    LOBYTE(allowsCanceling) = [(CNContactNavigationController *)self allowsDone];
  }

  return allowsCanceling;
}

- (BOOL)shouldShowLeftDoneAndRightAddButton
{
  allowsDone = [(CNContactNavigationController *)self allowsDone];
  if (allowsDone)
  {
    allowsDone = [(CNContactNavigationController *)self shouldShowRightAddButton];
    if (allowsDone)
    {
      LOBYTE(allowsDone) = ![(CNContactNavigationController *)self shouldShowGroupsBackButton];
    }
  }

  return allowsDone;
}

- (BOOL)shouldShowLeftCancelAndRightAddButton
{
  allowsCanceling = [(CNContactNavigationController *)self allowsCanceling];
  if (allowsCanceling)
  {
    allowsCanceling = [(CNContactNavigationController *)self shouldShowRightAddButton];
    if (allowsCanceling)
    {
      LOBYTE(allowsCanceling) = ![(CNContactNavigationController *)self shouldShowGroupsBackButton];
    }
  }

  return allowsCanceling;
}

- (BOOL)shouldShowRightAddAndCancelButton
{
  if (![(CNContactNavigationController *)self allowsCanceling]|| ![(CNContactNavigationController *)self shouldShowRightAddButton])
  {
    return 0;
  }

  return [(CNContactNavigationController *)self shouldShowGroupsBackButton];
}

- (BOOL)shouldShowRightCancelButton
{
  allowsCanceling = [(CNContactNavigationController *)self allowsCanceling];
  if (allowsCanceling)
  {
    LOBYTE(allowsCanceling) = ![(CNContactNavigationController *)self hideGroupsButton]&& [(CNContactNavigationController *)self limitedAccessPickerType]!= 1;
  }

  return allowsCanceling;
}

- (BOOL)shouldShowRightAddButton
{
  presentingViewController = [(CNContactNavigationController *)self presentingViewController];
  if (presentingViewController)
  {
    goto LABEL_6;
  }

  presentingViewController = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [presentingViewController featureFlags];
  if (([featureFlags isFeatureEnabled:29] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v5 = CNUIIsContacts();

  if (v5)
  {
    return 0;
  }

LABEL_7:
  if (![(CNContactNavigationController *)self allowsCardEditing])
  {
    return 0;
  }

  return [(CNContactNavigationController *)self canAddContacts];
}

- (BOOL)shouldShowMailButton
{
  objc_opt_class();
  originalDataSource = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = originalDataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ![(CNContactNavigationController *)self hideMailToGroupButton])
  {
    if ([v5 filterShowsSingleGroup])
    {
      filterShowsSingleExchangeFolder = 1;
    }

    else
    {
      filterShowsSingleExchangeFolder = [v5 filterShowsSingleExchangeFolder];
    }
  }

  else
  {
    filterShowsSingleExchangeFolder = 0;
  }

  return filterShowsSingleExchangeFolder;
}

- (void)refreshMailButtonEnabled
{
  if ([(CNContactNavigationController *)self shouldShowMailButton])
  {
    originalDataSource = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
    contacts = [originalDataSource contacts];
    if ([contacts count])
    {
      originalDataSource2 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
      contacts2 = [originalDataSource2 contacts];
      -[UIBarButtonItem setEnabled:](self->_mailButtonItem, "setEnabled:", [contacts2 count] < 0x65);
    }

    else
    {
      [(UIBarButtonItem *)self->_mailButtonItem setEnabled:0];
    }
  }
}

- (BOOL)allowsCardEditing
{
  if (!self->_allowsCardEditing)
  {
    return 0;
  }

  if ([(CNContactNavigationController *)self isContactProviderDataSource])
  {
    return 0;
  }

  return ![(CNContactNavigationController *)self isAcceptedIntroductionsDataSource];
}

- (BOOL)isContactProviderDataSource
{
  objc_opt_class();
  dataSource = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filteredContainer = [v5 filteredContainer];
    v7 = [filteredContainer type] == 1003;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAcceptedIntroductionsDataSource
{
  objc_opt_class();
  dataSource = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filteredContainer = [v5 filteredContainer];
    v7 = [filteredContainer type] == 1004;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canAddContacts
{
  dataSource = [(CNContactNavigationController *)self dataSource];
  filter = [dataSource filter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource2 = [(CNContactNavigationController *)self dataSource];
    filter2 = [dataSource2 filter];
    v7 = ([filter2 isServerFilter] & 1) == 0 && objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0) == 3;
  }

  else
  {
    v7 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3;
  }

  return v7;
}

- (UIAlertController)facebookContactsAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_facebookContactsAlertController);

  return WeakRetained;
}

- (void)setUpMenuBarWithBuilder:(id)builder
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DE0C0];
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:v3];
  v5 = MEMORY[0x1E69DCBA0];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"ADD_CONTACT_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v35 = [v5 commandWithTitle:v7 image:0 action:sel_addContact_ input:@"n" modifierFlags:0x100000 propertyList:0];

  v8 = MEMORY[0x1E69DCC60];
  v38[0] = v35;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v10 = [v8 menuWithTitle:&stru_1F0CE7398 image:0 identifier:@"ContactsAppMenuBarFileSubMenuIdentifier" options:1 children:v9];
  [builderCopy insertChildMenu:v10 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE150]];

  v11 = MEMORY[0x1E69DCBA0];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"EDIT_CONTACT_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [v11 commandWithTitle:v13 image:0 action:sel_toggleEditContact_ input:@"l" modifierFlags:0x100000 propertyList:0];

  v15 = MEMORY[0x1E69DCC60];
  v37 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v17 = [v15 menuWithTitle:&stru_1F0CE7398 image:0 identifier:@"ContactsAppMenuBarEditSubMenuIdentifier" options:1 children:v16];
  [builderCopy insertChildMenu:v17 atEndOfMenuForIdentifier:*MEMORY[0x1E69DE0F8]];

  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE118]];
  v18 = MEMORY[0x1E69DCBA0];
  v19 = CNContactsUIBundle();
  v20 = [v19 localizedStringForKey:@"GO_TO_NEXT_CARD_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v21 = [v18 commandWithTitle:v20 image:0 action:sel_selectNextContact_ input:@"]" modifierFlags:0x100000 propertyList:0];

  v22 = MEMORY[0x1E69DCBA0];
  v23 = CNContactsUIBundle();
  v24 = [v23 localizedStringForKey:@"GO_TO_PREVIOUS_CARD_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v25 = [v22 commandWithTitle:v24 image:0 action:sel_selectPreviousContact_ input:@"[" modifierFlags:0x100000 propertyList:0];

  v26 = MEMORY[0x1E69DCBA0];
  v27 = CNContactsUIBundle();
  v28 = [v27 localizedStringForKey:@"MERGE_SELECTED_CARDS_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v29 = [v26 commandWithTitle:v28 image:0 action:sel_mergeUnifyContacts_ input:@"l" modifierFlags:1179648 propertyList:0];

  v30 = MEMORY[0x1E69DCC60];
  v31 = CNContactsUIBundle();
  v32 = [v31 localizedStringForKey:@"MENU_BAR_TITLE_CARD" value:&stru_1F0CE7398 table:@"Localized"];
  v36[0] = v21;
  v36[1] = v25;
  v36[2] = v29;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v34 = [v30 menuWithTitle:v32 image:0 identifier:@"ContactsAppMenuBarCardMenuIdentifier" options:1 children:v33];
  [builderCopy insertSiblingMenu:v34 afterMenuForIdentifier:*MEMORY[0x1E69DE230]];
}

- (id)userActivityRepresentingGroupsView
{
  accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
  userActivity = [accountsAndGroupsViewController userActivity];

  return userActivity;
}

- (id)userActivityRepresentingCurrentlyDisplayedContact
{
  presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];
  contentViewController = [presentedContactViewController contentViewController];
  userActivity = [contentViewController userActivity];

  return userActivity;
}

- (void)notifyOtherFacebookContactsAlertDidSelectAction
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 postNotificationName:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0 userInfo:0 deliverImmediately:1];
}

- (void)otherFacebookContactsAlertDidSelectActionWithNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0];

  facebookContactsAlertController = [(CNContactNavigationController *)self facebookContactsAlertController];
  [facebookContactsAlertController dismissViewControllerAnimated:1 completion:0];

  [(CNContactNavigationController *)self setFacebookContactsAlertController:0];
}

- (void)observeOtherFacebookContactsAlert
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_otherFacebookContactsAlertDidSelectActionWithNotification_ name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0 suspensionBehavior:4];
}

- (void)checkForFacebookContactsWithDelay:(double)delay allowAlert:(BOOL)alert
{
  backgroundScheduler = [(CNContactNavigationController *)self backgroundScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke;
  v9[3] = &unk_1E74E4768;
  v9[4] = self;
  alertCopy = alert;
  v8 = [backgroundScheduler afterDelay:v9 performBlock:delay];
}

void __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactStore];
  v3 = [v2 addressBook];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_2;
  v5[3] = &unk_1E74E34F0;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 performAsynchronousWorkWithInvalidatedAddressBook:v5];
}

void __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) observeOtherFacebookContactsAlert];
  v6 = [objc_alloc(MEMORY[0x1E698A110]) initWithAddressBook:a2];
  if ([v6 canMergeFacebookContacts] && (*(a1 + 40) & 1) != 0)
  {
    v7 = [MEMORY[0x1E6996818] mainThreadScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_3;
    v10[3] = &unk_1E74E6650;
    v8 = v6;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = v5;
    [v7 performBlock:v10];
  }

  else
  {
    v5[2](v5);
  }
}

void __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_3(id *a1)
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"KEEP_FACEBOOK_CONTACTS_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  v4 = *MEMORY[0x1E6996568];
  v5 = [a1[4] destinationDescription];
  v6 = (*(v4 + 16))(v4, v5);

  v7 = MEMORY[0x1E696AEC0];
  v8 = CNContactsUIBundle();
  v9 = v8;
  if (v6)
  {
    v10 = [v8 localizedStringForKey:@"KEEP_FACEBOOK_CONTACTS_ON_DEVICE_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [a1[4] facebookContactsCount];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 model];
    v14 = [v7 localizedStringWithFormat:v10, v11, v13];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"KEEP_FACEBOOK_CONTACTS_WITH_ACCOUNT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = [a1[4] facebookContactsCount];
    v12 = [a1[4] destinationDescription];
    v14 = [v7 localizedStringWithFormat:v10, v15, v12];
  }

  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v14 preferredStyle:1];
  v17 = MEMORY[0x1E69DC648];
  v18 = CNContactsUIBundle();
  v19 = [v18 localizedStringForKey:@"DELETE" value:&stru_1F0CE7398 table:@"Localized"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_4;
  v32[3] = &unk_1E74E4A88;
  v27 = *(a1 + 2);
  v20 = v27.i64[0];
  v33 = vextq_s8(v27, v27, 8uLL);
  v34 = a1[6];
  v21 = [v17 actionWithTitle:v19 style:2 handler:v32];
  [v16 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v23 = CNContactsUIBundle();
  v24 = [v23 localizedStringForKey:@"KEEP" value:&stru_1F0CE7398 table:@"Localized"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_6;
  v29[3] = &unk_1E74E4A88;
  v28 = *(a1 + 2);
  v25 = v28.i64[0];
  v30 = vextq_s8(v28, v28, 8uLL);
  v31 = a1[6];
  v26 = [v22 actionWithTitle:v24 style:0 handler:v29];
  [v16 addAction:v26];

  [a1[5] setFacebookContactsAlertController:v16];
  [a1[5] presentViewController:v16 animated:1 completion:0];
}

void __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_4(id *a1)
{
  [a1[4] notifyOtherFacebookContactsAlertDidSelectAction];
  v2 = [a1[4] backgroundScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_5;
  v3[3] = &unk_1E74E6DD0;
  v4 = a1[5];
  v5 = a1[6];
  [v2 performBlock:v3];
}

void __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_6(id *a1)
{
  [a1[4] notifyOtherFacebookContactsAlertDidSelectAction];
  v2 = [a1[4] backgroundScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_7;
  v3[3] = &unk_1E74E6DD0;
  v4 = a1[5];
  v5 = a1[6];
  [v2 performBlock:v3];
}

uint64_t __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) mergeFacebookContacts];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) deleteFacebookContacts];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)toggleEditContact:(id)contact
{
  presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];

  if (presentedContactViewController)
  {
    presentedContactViewController2 = [(CNContactNavigationController *)self presentedContactViewController];
    [presentedContactViewController2 toggleEditing];
  }
}

- (void)toggleGroupsPanel:(id)panel
{
  contactStyle = [(CNContactNavigationController *)self contactStyle];
  if ([contactStyle usesInsetPlatterStyle])
  {
    shouldShowAccountsAndGroups = [(CNContactNavigationController *)self shouldShowAccountsAndGroups];

    if (!shouldShowAccountsAndGroups)
    {
      return;
    }

    delegate = [(CNContactNavigationController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    contactStyle = [(CNContactNavigationController *)self delegate];
    [contactStyle toggleGroupsPanel];
  }
}

- (BOOL)shouldFlipDirectionWhenChangingSelectionWithKey:(id)key
{
  keyCopy = key;
  input = [keyCopy input];
  if ([input isEqualToString:*MEMORY[0x1E69DDF10]])
  {
    v5 = 1;
  }

  else
  {
    input2 = [keyCopy input];
    v5 = [input2 isEqualToString:*MEMORY[0x1E69DDF28]];
  }

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)selectPreviousContact:(id)contact
{
  v4 = [(CNContactNavigationController *)self shouldFlipDirectionWhenChangingSelectionWithKey:contact];
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  visibleListViewController = [contactListViewController visibleListViewController];
  collectionView = [visibleListViewController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  if (v4)
  {
    [(CNContactNavigationController *)self showCardForContactAfterIndexPath:firstObject];
  }

  else
  {
    [(CNContactNavigationController *)self showCardForContactBeforeIndexPath:firstObject];
  }
}

- (void)selectNextContact:(id)contact
{
  v4 = [(CNContactNavigationController *)self shouldFlipDirectionWhenChangingSelectionWithKey:contact];
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  visibleListViewController = [contactListViewController visibleListViewController];
  collectionView = [visibleListViewController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  if (v4)
  {
    [(CNContactNavigationController *)self showCardForContactBeforeIndexPath:firstObject];
  }

  else
  {
    [(CNContactNavigationController *)self showCardForContactAfterIndexPath:firstObject];
  }
}

- (id)targetContainerForNewContactWithTargetGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    groupsAndContainersSaveManager = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    identifier = [groupCopy identifier];
    v7 = [groupsAndContainersSaveManager containerForGroupIdentifier:identifier];
LABEL_3:

    goto LABEL_4;
  }

  nonServerDataSource = [(CNContactNavigationController *)self nonServerDataSource];
  if (nonServerDataSource)
  {
    groupsAndContainersSaveManager = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    dataSource = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v11 = dataSource;
    }

    else
    {
      v11 = 0;
    }

    groupsAndContainersSaveManager = v11;
  }

  if (groupsAndContainersSaveManager)
  {
    filter = [groupsAndContainersSaveManager filter];
    containerIdentifiers = [filter containerIdentifiers];
    identifier = [containerIdentifiers anyObject];

    if (identifier)
    {
      groupsAndContainersSaveManager2 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
      v7 = [groupsAndContainersSaveManager2 containerForContainerIdentifier:identifier];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_3;
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (id)parentGroupForCurrentFilter
{
  nonServerDataSource = [(CNContactNavigationController *)self nonServerDataSource];
  if (nonServerDataSource)
  {
    nonServerDataSource2 = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    dataSource = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v6 = dataSource;
    }

    else
    {
      v6 = 0;
    }

    nonServerDataSource2 = v6;
  }

  if (nonServerDataSource2)
  {
    filteredGroup = [nonServerDataSource2 filteredGroup];
  }

  else
  {
    filteredGroup = 0;
  }

  return filteredGroup;
}

- (id)targetGroupForNewContact
{
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  collectionView = [contactListViewController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count];

  contactPickerTargetGroupIdentifier = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];

  if (!contactPickerTargetGroupIdentifier || v6)
  {
    parentGroupForCurrentFilter = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  }

  else
  {
    groupsAndContainersSaveManager = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    contactPickerTargetGroupIdentifier2 = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];
    parentGroupForCurrentFilter = [groupsAndContainersSaveManager groupForGroupIdentifier:contactPickerTargetGroupIdentifier2];
  }

  return parentGroupForCurrentFilter;
}

- (void)executeAddContact
{
  [(CNContactNavigationController *)self addContact:0 animated:1];
  activityManager = [(CNContactNavigationController *)self activityManager];
  [activityManager publishRequestToCreateContact:0];
}

- (id)allContactIdentifiers
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  nonServerDataSource = [(CNContactNavigationController *)self nonServerDataSource];
  if (nonServerDataSource)
  {
    nonServerDataSource2 = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    dataSource = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v7 = dataSource;
    }

    else
    {
      v7 = 0;
    }

    nonServerDataSource2 = v7;
  }

  if (nonServerDataSource2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [nonServerDataSource2 contacts];
    v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = *v31;
      v24 = *MEMORY[0x1E695C2D8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v35 = v24;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
          v13 = nonServerDataSource2;
          v14 = [nonServerDataSource2 completeContactFromContact:v11 fromMainStoreOnly:0 keysToFetch:v12];

          identifier = [v14 identifier];
          [v3 addObject:identifier];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          linkedContacts = [v14 linkedContacts];
          v17 = [linkedContacts countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v27;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(linkedContacts);
                }

                identifier2 = [*(*(&v26 + 1) + 8 * j) identifier];
                [v3 addObject:identifier2];
              }

              v18 = [linkedContacts countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v18);
          }

          nonServerDataSource2 = v13;
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  v6 = [(CNContactNavigationController *)self delegate:controller];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(CNContactNavigationController *)self delegate];
    [delegate showContactList];
  }
}

- (void)presentAddToGroupPickerWithSourceView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v4 setDelegate:self];
  [(CNContactPickerViewController *)v4 setMode:2];
  groupsAndContainersSaveManager = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
  parentGroupForCurrentFilter = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  managedConfiguration = [(CNContactNavigationController *)self managedConfiguration];
  v8 = [groupsAndContainersSaveManager mdmUnauthorizedContactIdentifiersForTargetGroup:parentGroupForCurrentFilter withManagedConfiguration:managedConfiguration];

  v9 = MEMORY[0x1E696AE18];
  allContactIdentifiers = [(CNContactNavigationController *)self allContactIdentifiers];
  allObjects = [allContactIdentifiers allObjects];
  allObjects2 = [v8 allObjects];
  v13 = [v9 predicateWithFormat:@"!(identifier IN %@) AND !(identifier in %@)", allObjects, allObjects2];
  [(CNContactPickerViewController *)v4 setPredicateForEnablingContact:v13];

  [(CNContactPickerViewController *)v4 setShouldAllowSearchForMultiSelect:1];
  [(CNContactPickerViewController *)v4 setShouldDisplayAddNewContactRow:1];
  [(CNContactPickerViewController *)v4 setOnlyRealContacts:1];
  parentGroupForCurrentFilter2 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  identifier = [parentGroupForCurrentFilter2 identifier];
  [(CNContactPickerViewController *)v4 setTargetGroupIdentifier:identifier];

  v16 = *MEMORY[0x1E6996570];
  parentGroupForCurrentFilter3 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  name = [parentGroupForCurrentFilter3 name];
  LODWORD(v16) = (*(v16 + 16))(v16, name);

  if (v16)
  {
    parentGroupForCurrentFilter4 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
    name2 = [parentGroupForCurrentFilter4 name];

    if ([CNUIStringUtilities composedCharacterCountForString:name2]>= 31)
    {
      v21 = [name2 _cn_truncateAtLength:30 addEllipsisIfTrunctated:1];

      name2 = v21;
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = CNContactsUIBundle();
    v24 = [v23 localizedStringForKey:@"ADD_CONTACTS_TO_GROUP_PROMPT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v25 = [v22 localizedStringWithFormat:v24, name2];
    [(CNContactPickerViewController *)v4 setPrompt:v25];
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v28 = [featureFlags isFeatureEnabled:29];

  if (v28)
  {
    [(CNContactPickerViewController *)v4 setModalPresentationStyle:-2];
  }

  else
  {
    [(CNContactPickerViewController *)v4 setModalPresentationStyle:7];
    if (viewCopy)
    {
      popoverPresentationController = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [popoverPresentationController setSourceView:viewCopy];

      popoverPresentationController2 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [popoverPresentationController2 setDelegate:self];
    }

    else
    {
      addContactBarButtonItem = [(CNContactNavigationController *)self addContactBarButtonItem];
      popoverPresentationController3 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [popoverPresentationController3 setBarButtonItem:addContactBarButtonItem];

      popoverPresentationController2 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [popoverPresentationController2 setPermittedArrowDirections:1];
    }

    v33 = +[CNUIContactsEnvironment currentEnvironment];
    runningInContactsAppOniPad = [v33 runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      view = [(CNContactNavigationController *)self view];
      [view frame];
      [(CNContactPickerViewController *)v4 setPreferredContentSize:v36, 812.0];
    }
  }

  [(CNContactNavigationController *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)shouldShowAddToGroupPicker
{
  objc_opt_class();
  dataSource = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filterShowsSingleGroup = [v5 filterShowsSingleGroup];
  }

  else
  {
    filterShowsSingleGroup = 0;
  }

  return filterShowsSingleGroup;
}

- (void)editLimitedAccess
{
  delegate = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationControllerShouldEditLimitedAccess:self];
  }
}

- (void)addContact:(id)contact
{
  splitViewController = [(CNContactNavigationController *)self splitViewController];

  if (splitViewController)
  {
    splitViewController2 = [(CNContactNavigationController *)self splitViewController];
    view = [splitViewController2 view];
    [view endEditing:1];
  }

  delegate = [(CNContactNavigationController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v10 = [delegate2 contactNavigationControllerShouldAddNewContact:self];

    if (!v10)
    {
      return;
    }

    goto LABEL_10;
  }

  if (![(CNContactNavigationController *)self shouldShowAddToGroupPicker])
  {
LABEL_10:

    [(CNContactNavigationController *)self executeAddContact];
    return;
  }

  [(CNContactNavigationController *)self presentAddToGroupPickerWithSourceView:0];
}

- (void)deleteContact:(id)contact
{
  contactCopy = contact;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController deleteContact:contactCopy];
}

- (void)cancelSearch:(id)search
{
  searchCopy = search;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController cancelSearch:searchCopy];
}

- (void)beginSearch:(id)search
{
  searchCopy = search;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController beginSearch:searchCopy];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  firstResponder = [(CNContactNavigationController *)self firstResponder];
  if (firstResponder == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (isEqual = sel_isEqual(action, sel_selectNextContact_), v9 = sel_isEqual(action, sel_selectPreviousContact_), v10 = 0, !isEqual) && !v9)
  {
    v12.receiver = self;
    v12.super_class = CNContactNavigationController;
    v10 = [(CNContactNavigationController *)&v12 canPerformAction:action withSender:senderCopy];
  }

  return v10;
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v7.receiver = self;
  v7.super_class = CNContactNavigationController;
  v5 = [(CNContactNavigationController *)&v7 popViewControllerAnimated:animatedCopy];

  return v5;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = MEMORY[0x1E6979518];
  controllerCopy = controller;
  [v6 setFrameStallSkipRequest:1];
  v8.receiver = self;
  v8.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
}

- (void)searchForString:(id)string makeSearchBarFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  stringCopy = string;
  [(CNContactNavigationController *)self showAllContactsListAnimated:0];
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController startSearchingForString:stringCopy setSearchBarAsFirstResponder:responderCopy];
}

- (void)showAllContactsListAnimated:(BOOL)animated
{
  animatedCopy = animated;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  if ([contactListViewController isViewLoaded])
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    view = [contactListViewController2 view];
    window = [view window];

    if (window)
    {
      return;
    }
  }

  else
  {
  }

  viewControllers = [(CNContactNavigationController *)self viewControllers];
  contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
  v11 = [viewControllers containsObject:contactListViewController3];

  if (v11)
  {

    [(CNContactNavigationController *)self popToContactListAndSaveChanges:1 animated:animatedCopy];
  }

  else
  {
    accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [accountsAndGroupsViewController selectAllContacts];

    accountsAndGroupsViewController2 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self accountsAndGroupsViewControllerDidFinish:accountsAndGroupsViewController2];
  }
}

- (void)popToContactListAndSaveChanges:(BOOL)changes animated:(BOOL)animated
{
  animatedCopy = animated;
  changesCopy = changes;
  addContactPresenter = [(CNContactNavigationController *)self addContactPresenter];
  presentedViewController = [addContactPresenter presentedViewController];
  if (presentedViewController)
  {
    if (!changesCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    reusableContactViewController = [(CNContactNavigationController *)self reusableContactViewController];
    contentViewController = [reusableContactViewController contentViewController];
    [contentViewController saveChanges];

    if (presentedViewController)
    {
      goto LABEL_4;
    }

LABEL_12:
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    v15 = [(CNContactNavigationController *)self popToViewController:contactListViewController animated:animatedCopy];

    goto LABEL_13;
  }

  presentedViewController = [(CNContactNavigationController *)self presentedViewController];
  if (changesCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!presentedViewController)
  {
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [presentedViewController viewControllers];
    v10 = [viewControllers objectAtIndexedSubscript:0];

    if (changesCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentViewController2 = [v10 contentViewController];
        [contentViewController2 saveChanges];
      }
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__CNContactNavigationController_popToContactListAndSaveChanges_animated___block_invoke;
  v16[3] = &unk_1E74E4768;
  v16[4] = self;
  v17 = animatedCopy;
  [presentedViewController dismissViewControllerAnimated:animatedCopy completion:v16];
LABEL_13:
}

void __73__CNContactNavigationController_popToContactListAndSaveChanges_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 contactListViewController];
  v3 = [v2 popToViewController:v4 animated:*(a1 + 40)];
}

- (BOOL)isDisplayingAddNewContactViewController
{
  addContactPresenter = [(CNContactNavigationController *)self addContactPresenter];
  objc_opt_class();
  presentedViewController = [addContactPresenter presentedViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = presentedViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    objc_opt_class();
    topViewController = [v5 topViewController];
    if (objc_opt_isKindOfClass())
    {
      v7 = topViewController;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [v8 mode] == 3;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v10.receiver = self;
  v10.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  navigationBar = [(CNContactNavigationController *)self navigationBar];
  v7 = width / 3.0;
  [navigationBar _setRequestedMaxBackButtonWidth:v7];

  navigationController = [(CNContactNavigationController *)self navigationController];
  navigationBar2 = [navigationController navigationBar];
  [navigationBar2 _setRequestedMaxBackButtonWidth:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  tipKitContext = [(CNContactNavigationController *)self tipKitContext];
  [contactListViewController setTipKitContext:tipKitContext];

  v14.receiver = self;
  v14.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v14 viewWillAppear:appearCopy];
  [(CNContactNavigationController *)self setUpLargeTitles];
  [(CNContactNavigationController *)self updateNavigationButtonsAnimated:0 viewWillAppear:1];
  navigationBar = [(CNContactNavigationController *)self navigationBar];
  view = [(CNContactNavigationController *)self view];
  [view bounds];
  [navigationBar _setRequestedMaxBackButtonWidth:v9 / 3.0];

  navigationController = [(CNContactNavigationController *)self navigationController];
  navigationBar2 = [navigationController navigationBar];
  view2 = [(CNContactNavigationController *)self view];
  [view2 bounds];
  [navigationBar2 _setRequestedMaxBackButtonWidth:v13 / 3.0];
}

- (BOOL)accountsAndGroupsViewController:(id)controller shouldEnableItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactPickerTargetGroupIdentifier = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];
  v7 = [identifierCopy isEqualToString:contactPickerTargetGroupIdentifier];

  return v7 ^ 1;
}

- (void)accountsAndGroupsViewControllerDidGoBack:(id)back
{
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationControllerDidGoBack:self];
  }
}

- (void)accountsAndGroupsViewControllerDidCancel:(id)cancel
{
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationControllerDidCancel:self];
  }
}

- (void)accountsAndGroupsViewControllerDidUpdateSelection:(id)selection
{
  v39[1] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  dataSource = [selectionCopy dataSource];
  filter = [dataSource filter];

  dataSource2 = [selectionCopy dataSource];

  serverFilter = [dataSource2 serverFilter];

  if (!serverFilter)
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController cancelSearch:0];

    nonServerDataSource = [(CNContactNavigationController *)self nonServerDataSource];

    if (nonServerDataSource)
    {
      nonServerDataSource2 = [(CNContactNavigationController *)self nonServerDataSource];
      dataSource3 = [(CNContactListViewController *)self->_contactListViewController dataSource];
      contactFormatter = [dataSource3 contactFormatter];
      [(CNContactAsyncDataSource *)nonServerDataSource2 setContactFormatter:contactFormatter];

      [(CNContactListViewController *)self->_contactListViewController setDataSource:nonServerDataSource2];
    }

    else
    {
      nonServerDataSource2 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    }

    filter2 = [(CNContactAsyncDataSource *)nonServerDataSource2 filter];
    limitedAccessIdentifiers = [filter2 limitedAccessIdentifiers];
    [filter setLimitedAccessIdentifiers:limitedAccessIdentifiers];

    filter3 = [(CNContactAsyncDataSource *)nonServerDataSource2 filter];
    [filter setLimitedAccessFilterMode:{objc_msgSend(filter3, "limitedAccessFilterMode")}];

    [(CNContactAsyncDataSource *)nonServerDataSource2 setFilter:filter];
    delegate = [(CNContactAsyncDataSource *)nonServerDataSource2 delegate];
    if (!delegate)
    {
      goto LABEL_13;
    }

    v30 = delegate;
    if (([(CNContactListViewController *)self->_contactListViewController isViewLoaded]& 1) != 0)
    {
      view = [(CNContactListViewController *)self->_contactListViewController view];
      window = [view window];

      if (!window)
      {
LABEL_13:
        [(CNContactAsyncDataSource *)nonServerDataSource2 reload];
        [(CNContactListViewController *)self->_contactListViewController setDataSource:nonServerDataSource2];
LABEL_16:
        store = [(CNContactAsyncDataSource *)nonServerDataSource2 store];
        [filter saveToPreferencesWithContactStore:store];

        [(CNContactNavigationController *)self setNonServerDataSource:0];
        goto LABEL_17;
      }
    }

    else
    {
    }

    [(CNContactAsyncDataSource *)nonServerDataSource2 reloadAsynchronously];
    goto LABEL_16;
  }

  nonServerDataSource3 = [(CNContactNavigationController *)self nonServerDataSource];

  if (!nonServerDataSource3)
  {
    dataSource4 = [(CNContactNavigationController *)self dataSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      dataSource5 = [(CNContactNavigationController *)self dataSource];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactNavigationController.m" lineNumber:1581 description:{@"Datasource %@ is not of expected type: CNContactStoreDataSource", dataSource5}];
    }

    dataSource6 = [(CNContactNavigationController *)self dataSource];
    [(CNContactNavigationController *)self setNonServerDataSource:dataSource6];
  }

  v14 = [CNContactAsyncDataSource alloc];
  dataSource7 = [(CNContactNavigationController *)self dataSource];
  store2 = [dataSource7 store];
  nonServerDataSource2 = [(CNContactAsyncDataSource *)v14 initWithStore:store2];

  dataSource8 = [(CNContactListViewController *)self->_contactListViewController dataSource];
  contactFormatter2 = [dataSource8 contactFormatter];
  [(CNContactAsyncDataSource *)nonServerDataSource2 setContactFormatter:contactFormatter2];

  [(CNContactAsyncDataSource *)nonServerDataSource2 setFilter:serverFilter];
  v20 = +[CNContactViewController descriptorForRequiredKeys];
  v39[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  [(CNContactAsyncDataSource *)nonServerDataSource2 setAllKeysToFetchForTransientContacts:v21];

  [(CNContactAsyncDataSource *)nonServerDataSource2 reload];
  [(CNContactListViewController *)self->_contactListViewController setDataSource:nonServerDataSource2];
LABEL_17:

  delegate2 = [(CNContactNavigationController *)self delegate];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    delegate3 = [(CNContactNavigationController *)self delegate];
    [delegate3 contactNavigationControllerClearContactSelection:self];
  }

  [(CNContactListViewController *)self->_contactListViewController setDelegate:self];
  [(CNContactNavigationController *)self updateNavigationButtonsAnimated:0 viewWillAppear:1];
}

- (void)accountsAndGroupsViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 showContactList];
  }

  else
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    if ([contactListViewController isViewLoaded])
    {
      contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
      view = [contactListViewController2 view];
      window = [view window];

      if (window)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
    {
      v11 = [(CNContactNavigationController *)self popViewControllerAnimated:1];
      goto LABEL_11;
    }

    delegate2 = [(CNContactNavigationController *)self contactListViewController];
    [(CNContactNavigationController *)self pushViewController:delegate2 animated:1];
  }

LABEL_11:
  dataSource = [finishCopy dataSource];
  serverFilter = [dataSource serverFilter];

  if (serverFilter)
  {
    contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController3 startSearching];
  }
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  contactCopy = contact;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController reloadContacts];

  contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController2 setDidDeleteContact:1];

  delegate = [(CNContactNavigationController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationController:self didDeleteContact:contactCopy];
  }
}

- (void)contactViewController:(id)controller didCompleteWithNewContactFromPickerNewContactRow:(id)row
{
  rowCopy = row;
  parentViewController = [controller parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];

  if (rowCopy)
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    collectionView = [contactListViewController collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v10 = [indexPathsForSelectedItems count];

    if (v10)
    {
      contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
      [contactListViewController2 selectContact:rowCopy animated:0 scrollPosition:1];
    }

    else
    {
      delegate = [(CNContactNavigationController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_7;
      }

      contactListViewController2 = [(CNContactNavigationController *)self delegate];
      [contactListViewController2 contactNavigationController:self didCompleteWithNewContact:rowCopy];
    }
  }

LABEL_7:
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  shouldDisplayAddNewContactRow = [contactListViewController shouldDisplayAddNewContactRow];

  mode = [controllerCopy mode];
  v10 = mode;
  if (shouldDisplayAddNewContactRow && mode == 3)
  {
    [(CNContactNavigationController *)self contactViewController:controllerCopy didCompleteWithNewContactFromPickerNewContactRow:contactCopy];
  }

  else
  {
    mode2 = [controllerCopy mode];
    if (contactCopy && mode2 == 3)
    {
      contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
      [contactListViewController2 reloadContacts];

      [(CNContactNavigationController *)self showCardForContact:contactCopy resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:0 animated:1];
      contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
      [contactListViewController3 selectContact:contactCopy animated:1 scrollPosition:0];
    }

    if (v10 == 3 || ![(CNContactNavigationController *)self allowsCardEditing])
    {
      parentViewController = [controllerCopy parentViewController];
      [parentViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  delegate = [(CNContactNavigationController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v9 = [delegate2 contactNavigationController:self shouldPerformDefaultActionForContactProperty:propertyCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didResetLimitedAccessSelectionTo:(id)to
{
  toCopy = to;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController didResetLimitedAccessSelectionTo:toCopy];
}

- (void)didUpdateLimitedAccessSelection:(id)selection
{
  selectionCopy = selection;
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationController:self didUpdateLimitedAccessSelection:selectionCopy];

    if ([(CNContactNavigationController *)self limitedAccessPickerType]== 2)
    {
      contactListViewController = [(CNContactNavigationController *)self contactListViewController];
      navigationItem = [contactListViewController navigationItem];
      rightBarButtonItems = [navigationItem rightBarButtonItems];
      v10 = [rightBarButtonItems objectAtIndexedSubscript:0];

      v11 = [selectionCopy count];
      originalDataSource = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
      contacts = [originalDataSource contacts];
      [v10 setEnabled:{v11 != objc_msgSend(contacts, "count")}];
    }
  }
}

- (BOOL)isAddContactButtonShowing
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    v5 = CNUIIsContacts();

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(CNContactNavigationController *)self shouldShowRightAddButton];
}

- (id)nextResponderForContactListViewController:(id)controller
{
  if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
  {
    presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];
    contentViewController = [presentedContactViewController contentViewController];
  }

  else
  {
    contentViewController = 0;
  }

  return contentViewController;
}

- (void)contactPicker:(id)picker didCompleteWithNewContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController reloadContacts];

    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController2 selectContact:contactCopy animated:1 scrollPosition:1];

    [(CNContactNavigationController *)self showCardForContact:contactCopy animated:1];
  }
}

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  v38 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  contactsCopy = contacts;
  if ([contactsCopy count])
  {
    groupsAndContainersSaveManager = [(CNContactNavigationController *)self groupsAndContainersSaveManager];

    if (groupsAndContainersSaveManager)
    {
      parentGroupForCurrentFilter = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
      if (parentGroupForCurrentFilter)
      {
        groupsAndContainersSaveManager2 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
        identifier = [parentGroupForCurrentFilter identifier];
        v26 = [groupsAndContainersSaveManager2 containerForGroupIdentifier:identifier];

        if (v26)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v11 = contactsCopy;
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v12)
          {
            v13 = *v34;
            do
            {
              v14 = 0;
              do
              {
                if (*v34 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v33 + 1) + 8 * v14);
                groupsAndContainersSaveManager3 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
                v17 = [groupsAndContainersSaveManager3 isAuthorizedToAddContact:v15 toContainer:v26 ignoresParentalRestrictions:0];

                if (v17)
                {
                  v18 = v9;
                }

                else
                {
                  v18 = v10;
                }

                [v18 addObject:v15];
                ++v14;
              }

              while (v12 != v14);
              v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v12);
          }

          v19 = *MEMORY[0x1E6996530];
          if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v9) & 1) == 0)
          {
            groupsAndContainersSaveManager4 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
            v21 = [groupsAndContainersSaveManager4 addContacts:v9 toGroup:parentGroupForCurrentFilter inContainer:v26 moveWasAuthorized:1];
          }

          if (((*(v19 + 16))(v19, v10) & 1) == 0)
          {
            objc_initWeak(&location, self);
            groupsAndContainersSaveManager5 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __65__CNContactNavigationController_contactPicker_didSelectContacts___block_invoke;
            v27[3] = &unk_1E74E34C8;
            objc_copyWeak(&v31, &location);
            v28 = v10;
            v29 = parentGroupForCurrentFilter;
            v30 = v26;
            [groupsAndContainersSaveManager5 authorizeForViewController:self sender:self animated:1 completionBlock:v27];

            objc_destroyWeak(&v31);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

void __65__CNContactNavigationController_contactPicker_didSelectContacts___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2 == 2)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained groupsAndContainersSaveManager];
    v6 = [v5 addContacts:*(a1 + 32) toGroup:*(a1 + 40) inContainer:*(a1 + 48) moveWasAuthorized:1];

    WeakRetained = v7;
  }
}

- (void)contactListAddContactButtonTapped:(id)tapped
{
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v7 = [delegate2 contactNavigationControllerShouldAddNewContact:self];

    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  if (![(CNContactNavigationController *)self shouldShowAddToGroupPicker])
  {
LABEL_8:

    [(CNContactNavigationController *)self executeAddContact];
    return;
  }

  [(CNContactNavigationController *)self presentAddToGroupPickerWithSourceView:0];
}

- (void)dataSourceChangedForContactListViewController:(id)controller
{
  if (([controller isHandlingSearch] & 1) == 0)
  {
    [(CNContactNavigationController *)self refreshMailButtonEnabled];
    sharedNavigationBar = [(CNContactNavigationController *)self sharedNavigationBar];

    if (sharedNavigationBar)
    {
      isAcceptedIntroductionsDataSource = [(CNContactNavigationController *)self isAcceptedIntroductionsDataSource];
      sharedNavigationBar2 = [(CNContactNavigationController *)self sharedNavigationBar];
      [sharedNavigationBar2 configureAddButtonVisibility:isAcceptedIntroductionsDataSource];

      sharedNavigationBar3 = [(CNContactNavigationController *)self sharedNavigationBar];
      [sharedNavigationBar3 configureEditButtonVisibility:isAcceptedIntroductionsDataSource];
    }
  }
}

- (void)contactListViewController:(id)controller shouldPresentContact:(id)contact shouldScrollToContact:(BOOL)toContact
{
  toContactCopy = toContact;
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
  contactCopy = contact;

  [(CNContactNavigationController *)self showCardForContact:contactCopy resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:toContactCopy animated:1];
}

- (void)contactListViewController:(id)controller updatedSelectedContact:(id)contact
{
  contactCopy = contact;
  reusableContactViewController = [(CNContactNavigationController *)self reusableContactViewController];
  view = [reusableContactViewController view];
  window = [view window];

  reusableContactViewController2 = [(CNContactNavigationController *)self reusableContactViewController];
  contact = [reusableContactViewController2 contact];
  identifier = [contact identifier];
  identifier2 = [contactCopy identifier];
  v12 = [identifier isEqual:identifier2];

  if (!window || (v12 & 1) == 0)
  {
    LOWORD(v13) = 1;
    [(CNContactNavigationController *)self showCardForContact:contactCopy resetFilter:0 resetSearch:0 fallbackToFirstContact:0 scrollToContact:0 animated:1 dismissingPresentedController:v13 shouldHideContactListIfNeeded:?];
  }
}

- (void)contactListViewController:(id)controller didSelectContact:(id)contact shouldScrollToContact:(BOOL)toContact
{
  contactCopy = contact;
  if (self->_selectedContact == contactCopy)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&self->_selectedContact, contact);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__CNContactNavigationController_contactListViewController_didSelectContact_shouldScrollToContact___block_invoke;
  aBlock[3] = &unk_1E74E34A0;
  aBlock[4] = self;
  v9 = contactCopy;
  v24 = v9;
  toContactCopy = toContact;
  v10 = _Block_copy(aBlock);
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  isSearching = [contactListViewController isSearching];

  if (isSearching)
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    allowsMultiSelection = [contactListViewController2 allowsMultiSelection];

    delegate = [(CNContactNavigationController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if ((allowsMultiSelection & 1) == 0)
      {
        delegate2 = [(CNContactNavigationController *)self delegate];
        v18 = [delegate2 contactNavigationControllerShouldDismissSearchOnSelection:self];

        if ((v18 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!allowsMultiSelection)
    {
      goto LABEL_9;
    }

    contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
    -[CNContactNavigationController dismissSearchAndSelectContact:allowsMultiSelection:](self, "dismissSearchAndSelectContact:allowsMultiSelection:", v9, [contactListViewController3 allowsMultiSelection]);
  }

LABEL_9:
  transitionCoordinator = [(CNContactNavigationController *)self transitionCoordinator];
  if (transitionCoordinator)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__CNContactNavigationController_contactListViewController_didSelectContact_shouldScrollToContact___block_invoke_2;
    v21[3] = &unk_1E74E3478;
    v22 = v10;
    [transitionCoordinator animateAlongsideTransition:0 completion:v21];
  }

  else
  {
    v10[2](v10);
  }

LABEL_13:
}

void __98__CNContactNavigationController_contactListViewController_didSelectContact_shouldScrollToContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegate];
    v6 = [v5 contactNavigationController:*(a1 + 32) shouldShowCardForContact:*(a1 + 40)];

    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = [v4 splitViewController];
  v8 = [v7 isCollapsed];

  if (v8)
  {
    goto LABEL_5;
  }

  v12 = [*(a1 + 32) reusableContactViewController];
  v13 = [v12 view];
  v14 = [v13 window];

  v15 = [*(a1 + 32) splitViewController];
  if ([v15 displayMode] == 3)
  {
    v16 = 1;
  }

  else
  {
    v17 = [*(a1 + 32) splitViewController];
    if ([v17 displayMode] == 5)
    {
      v16 = 1;
    }

    else
    {
      v18 = [*(a1 + 32) splitViewController];
      v16 = [v18 displayMode] == 6;
    }
  }

  v19 = [*(a1 + 32) reusableContactViewController];
  v20 = [v19 contact];
  v21 = [v20 identifier];
  v22 = [*(a1 + 40) identifier];
  v23 = [v21 isEqual:v22];

  if (!v14 || v16 || !v23)
  {
LABEL_5:
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    [v9 showCardForContact:v10 animated:1 scrollToContact:v11];
  }
}

- (BOOL)contactSuggestionViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path
{
  controllerCopy = controller;
  contactCopy = contact;
  pathCopy = path;
  delegate = [(CNContactNavigationController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v14 = [delegate2 contactSuggestionViewController:controllerCopy shouldSelectContact:contactCopy atIndexPath:pathCopy];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)contactListViewController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path
{
  contactCopy = contact;
  pathCopy = path;
  delegate = [(CNContactNavigationController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v12 = [delegate2 contactNavigationController:self shouldSelectContact:contactCopy atIndexPath:pathCopy];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)contactListViewController:(id)controller canSelectContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactNavigationController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    v9 = [delegate2 contactNavigationController:self canSelectContact:contactCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)resetContactViewController
{
  delegate = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];

    if (delegate2 != self)
    {
      delegate3 = [(CNContactNavigationController *)self delegate];
      [delegate3 resetContactViewController];
    }
  }
}

- (void)startEditingPresentedContact
{
  presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];

  if (presentedContactViewController)
  {
    presentedContactViewController2 = [(CNContactNavigationController *)self presentedContactViewController];
    [presentedContactViewController2 setEditing:1 animated:1];
  }
}

- (id)currentlyDisplayedContact
{
  delegate = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    displayedContact = [delegate2 displayedContact];
  }

  else
  {
    displayedContact = 0;
  }

  return displayedContact;
}

- (void)showCardForContactIfPossible:(id)possible
{
  possibleCopy = possible;
  isPresentedContactViewControllerVisible = [(CNContactNavigationController *)self isPresentedContactViewControllerVisible];
  v5 = possibleCopy;
  if (isPresentedContactViewControllerVisible)
  {
    presentedViewController = [(CNContactNavigationController *)self presentedViewController];
    if (presentedViewController)
    {

LABEL_9:
      v5 = possibleCopy;
      goto LABEL_10;
    }

    delegate = [(CNContactNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(CNContactNavigationController *)self delegate];
      v9 = [delegate2 contactNavigationControllerShouldShowContactsOnKeyCommands:self];

      v5 = possibleCopy;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    isPresentedContactViewControllerVisible = [(CNContactNavigationController *)self showCardForContact:possibleCopy resetFilter:0 resetSearch:1 fallbackToFirstContact:1 scrollToContact:1 animated:0];
    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](isPresentedContactViewControllerVisible, v5);
}

- (BOOL)isPresentedContactViewControllerVisible
{
  presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];
  parentViewController = [presentedContactViewController parentViewController];
  v4 = parentViewController != 0;

  return v4;
}

- (void)showCardForContactBeforeIndexPath:(id)path
{
  pathCopy = path;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  visibleListViewController = [contactListViewController visibleListViewController];
  v7 = [visibleListViewController globalIndexForCollectionViewIndexPath:pathCopy];

  if (!pathCopy || v7)
  {
    v8 = !v7 || v7 == 0x7FFFFFFFFFFFFFFFLL;
    v9 = v8 || pathCopy == 0;
    v10 = v9 ? 0 : v7 - 1;
    dataSource = [(CNContactNavigationController *)self dataSource];
    contacts = [dataSource contacts];
    v13 = [contacts count];

    if (v10 < v13)
    {
      dataSource2 = [(CNContactNavigationController *)self dataSource];
      contacts2 = [dataSource2 contacts];
      v15 = [contacts2 objectAtIndexedSubscript:v10];
      [(CNContactNavigationController *)self showCardForContactIfPossible:v15];
    }
  }
}

- (void)showCardForContactAfterIndexPath:(id)path
{
  pathCopy = path;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  visibleListViewController = [contactListViewController visibleListViewController];
  v7 = [visibleListViewController globalIndexForCollectionViewIndexPath:pathCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || pathCopy == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 + 1;
  }

  dataSource = [(CNContactNavigationController *)self dataSource];
  contacts = [dataSource contacts];
  v12 = [contacts count];

  if (v9 < v12)
  {
    dataSource2 = [(CNContactNavigationController *)self dataSource];
    contacts2 = [dataSource2 contacts];
    v14 = [contacts2 objectAtIndexedSubscript:v9];
    [(CNContactNavigationController *)self showCardForContactIfPossible:v14];
  }
}

- (void)_cnui_presentViewController:(id)controller animated:(BOOL)animated dismissingPresentedController:(BOOL)presentedController shouldHideContactListIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  presentedControllerCopy = presentedController;
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  v28 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v28;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [(CNContactNavigationController *)self setPresentedContactViewController:v12];
  delegate = [(CNContactNavigationController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  delegate2 = [(CNContactNavigationController *)self delegate];
  delegate3 = delegate2;
  if (v14)
  {
    v17 = [delegate2 contactNavigationController:self presentViewController:v28 animated:animatedCopy dismissingPresentedController:presentedControllerCopy shouldHideContactListIfNeeded:neededCopy];
  }

  else
  {
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
      {
        presentedViewController = [(CNContactNavigationController *)self presentedViewController];

        if (presentedViewController)
        {
          presentedViewController2 = [(CNContactNavigationController *)self presentedViewController];
          [presentedViewController2 dismissViewControllerAnimated:0 completion:0];
        }

        isViewLoaded = [v28 isViewLoaded];
        v22 = v28;
        if ((isViewLoaded & 1) == 0)
        {
          goto LABEL_23;
        }

        v19 = 1;
      }

      else
      {
        isViewLoaded2 = [v28 isViewLoaded];
        v22 = v28;
        if ((isViewLoaded2 & 1) == 0)
        {
          goto LABEL_22;
        }

        v19 = 0;
      }

      v21 = v22;
      goto LABEL_20;
    }

    delegate3 = [(CNContactNavigationController *)self delegate];
    v17 = [delegate3 contactNavigationController:self presentViewController:v28 animated:animatedCopy];
  }

  v19 = v17;

  isViewLoaded = [v28 isViewLoaded];
  if ((isViewLoaded & 1) == 0)
  {
    v22 = v28;
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_22:
    isViewLoaded = [(CNContactNavigationController *)self pushViewController:v28 animated:animatedCopy];
    v22 = v28;
    goto LABEL_23;
  }

  v21 = v28;
LABEL_20:
  view = [v21 view];
  window = [view window];

  v22 = v28;
  if ((v19 & 1) == 0 && !window)
  {
    goto LABEL_22;
  }

LABEL_23:

  MEMORY[0x1EEE66BB8](isViewLoaded, v22);
}

- (id)reuseableContactViewControllerConfiguredForContact:(id)contact mode:(int64_t)mode
{
  contactCopy = contact;
  reusableContactViewController = [(CNContactNavigationController *)self reusableContactViewController];
  if (reusableContactViewController)
  {
    v8 = reusableContactViewController;
    if ([(CNContactViewController *)reusableContactViewController isEditing])
    {
      contentViewController = [(CNContactViewController *)v8 contentViewController];
      [contentViewController saveChanges];

      contentViewController2 = [(CNContactViewController *)v8 contentViewController];
      [contentViewController2 setEditing:0 animated:0];

      [(CNContactViewController *)v8 setEditing:0 animated:0];
    }

    [(CNContactViewController *)v8 setContact:contactCopy additionalContact:0 mode:mode];
  }

  else
  {
    v8 = [[CNContactViewController alloc] initWithMode:mode];
    [(CNContactViewController *)v8 setContact:contactCopy];
    sharedNavigationBar = [(CNContactNavigationController *)self sharedNavigationBar];
    [(CNContactViewController *)v8 setSharedNavigationBar:sharedNavigationBar];

    [(CNContactNavigationController *)self setReusableContactViewController:v8];
  }

  return v8;
}

- (void)showCardForContact:(id)contact resetFilter:(BOOL)filter resetSearch:(BOOL)search fallbackToFirstContact:(BOOL)firstContact scrollToContact:(BOOL)toContact animated:(BOOL)animated dismissingPresentedController:(BOOL)controller shouldHideContactListIfNeeded:(BOOL)self0
{
  animatedCopy = animated;
  toContactCopy = toContact;
  firstContactCopy = firstContact;
  filterCopy = filter;
  v44[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([(CNContactNavigationController *)self hasPendingShowCard])
  {
    v16 = CNUILogContactList();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Already pending display of card, cannot show another card", buf, 2u);
    }

LABEL_25:
    return;
  }

  [(CNContactNavigationController *)self setHasPendingShowCard:1];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  if (filterCopy)
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    dataSource = [contactListViewController dataSource];
    [dataSource setFilter:0];
    goto LABEL_7;
  }

  if (contactCopy && firstContactCopy)
  {
    dataSource2 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    contactListViewController = [dataSource2 indexPathForContact:contactCopy];

    if (contactListViewController)
    {
      goto LABEL_11;
    }

    dataSource = contactCopy;
    contactCopy = 0;
LABEL_7:

LABEL_11:
  }

  if (!contactCopy && firstContactCopy)
  {
    dataSource3 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    contacts = [dataSource3 contacts];
    contactCopy = [contacts firstObject];

    if (contactCopy)
    {
LABEL_17:
      v25 = +[CNContactViewController descriptorForRequiredKeys];
      v44[0] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      v27 = [contactCopy areKeysAvailable:v26];

      if ((v27 & 1) == 0)
      {
        dataSource4 = [(CNContactNavigationController *)self dataSource];
        v29 = +[CNContactViewController descriptorForRequiredKeys];
        v43 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v31 = [dataSource4 completeContactFromContact:contactCopy fromMainStoreOnly:0 keysToFetch:v30];

        contactCopy = v31;
      }

      if (toContactCopy)
      {
        visibleListViewController = [(CNContactListViewController *)self->_contactListViewController visibleListViewController];
        [visibleListViewController selectContact:contactCopy animated:animatedCopy scrollPosition:0];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke;
      aBlock[3] = &unk_1E74E3450;
      aBlock[4] = self;
      contactCopy = contactCopy;
      v38 = contactCopy;
      v39 = animatedCopy;
      controllerCopy = controller;
      neededCopy = needed;
      v33 = _Block_copy(aBlock);
      transitionCoordinator = [(CNContactNavigationController *)self transitionCoordinator];
      if (transitionCoordinator)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke_3;
        v35[3] = &unk_1E74E3478;
        v36 = v33;
        [transitionCoordinator animateAlongsideTransition:0 completion:v35];
      }

      else
      {
        v33[2](v33);
      }

      goto LABEL_25;
    }

    originalDataSource = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
    contacts2 = [originalDataSource contacts];
    contactCopy = [contacts2 firstObject];
  }

  if (contactCopy)
  {
    goto LABEL_17;
  }

  [(CNContactNavigationController *)self setHasPendingShowCard:0];
}

uint64_t __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) ignoresMapsData] & 1) != 0 || (objc_msgSend(*(a1 + 40), "mapsData"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    if ([*(a1 + 40) isUnknown])
    {
      if ([*(a1 + 40) isSuggestedMe])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0 || ([*(a1 + 32) delegate], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "contactNavigationController:contactViewControllerForContact:preferredMode:", *(a1 + 32), *(a1 + 40), v10), v3 = objc_claimAutoreleasedReturnValue(), v13, !v3))
    {
      v3 = [*(a1 + 32) reuseableContactViewControllerConfiguredForContact:*(a1 + 40) mode:v10];
    }

    if ([MEMORY[0x1E695CD58] quickActionsEnabled])
    {
      [v3 setActions:{objc_msgSend(v3, "actions") | 0x200}];
    }

    [v3 setDelegate:*(a1 + 32)];
    v14 = [*(a1 + 32) contactStore];
    [v3 setContactStore:v14];

    [v3 setShouldShowLinkedContacts:1];
    [v3 setAllowsEditing:{objc_msgSend(*(a1 + 32), "allowsCardEditing")}];
    v15 = [*(*(a1 + 32) + 1472) contactFormatter];
    [v3 setContactFormatter:v15];

    v16 = [*(a1 + 32) dataSource];
    v6 = [v16 preferredForNameMeContactIdentifier];

    v17 = [*(a1 + 40) allLinkedIdentifiers];
    [v3 setShowingMeContact:{objc_msgSend(v17, "containsObject:", v6)}];

    [v3 setContact:*(a1 + 40)];
    if ([*(a1 + 32) allowsCardDeletion])
    {
      [v3 setActions:{objc_msgSend(v3, "actions") | 0x100}];
    }

    if ([*(a1 + 32) allowsContactBlocking])
    {
      [v3 setActions:{objc_msgSend(v3, "actions") | 0x80}];
    }

    if ([*(a1 + 32) allowsContactBlockingAndReporting])
    {
      [v3 setActions:{objc_msgSend(v3, "actions") | 0x800}];
    }

    [*(a1 + 32) _cnui_presentViewController:v3 animated:*(a1 + 48) dismissingPresentedController:*(a1 + 49) shouldHideContactListIfNeeded:*(a1 + 50)];
  }

  else
  {
    v3 = objc_alloc_init(getMUPlaceViewControllerConfigurationClass());
    [v3 setOptions:16];
    [v3 setContactsNavigationController:*(a1 + 32)];
    v4 = [objc_alloc(getMUPlaceViewControllerClass()) initWithConfiguration:v3];
    v5 = [v4 navigationItem];
    [v5 setLargeTitleDisplayMode:2];

    v6 = objc_alloc_init(getMKLocalSearchRequestClass());
    v7 = [*(a1 + 40) mapsData];
    [v6 _setContactsDataString:v7];

    v8 = [objc_alloc(getMKLocalSearchClass()) initWithRequest:v6];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke_2;
    v22 = &unk_1E74E3428;
    v23 = v4;
    v24 = *(a1 + 40);
    v9 = v4;
    [v8 startWithCompletionHandler:&v19];
    [*(a1 + 32) _cnui_presentViewController:v9 animated:*(a1 + 48) dismissingPresentedController:*(a1 + 49) shouldHideContactListIfNeeded:{*(a1 + 50), v19, v20, v21, v22}];
  }

  return [*(a1 + 32) setHasPendingShowCard:0];
}

void __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v10 = v5;
    v6 = [v5 mapItems];
    v7 = [v6 firstObject];

    v5 = v10;
    if (v7)
    {
      v8 = [v10 mapItems];
      v9 = [v8 firstObject];

      [*(a1 + 32) setMapItem:v9 contact:*(a1 + 40)];
      v5 = v10;
    }
  }
}

- (void)showCardForContact:(id)contact resetFilter:(BOOL)filter resetSearch:(BOOL)search fallbackToFirstContact:(BOOL)firstContact scrollToContact:(BOOL)toContact animated:(BOOL)animated dismissingPresentedController:(BOOL)controller
{
  BYTE1(v9) = 1;
  LOBYTE(v9) = controller;
  [(CNContactNavigationController *)self showCardForContact:contact resetFilter:filter resetSearch:search fallbackToFirstContact:firstContact scrollToContact:toContact animated:animated dismissingPresentedController:v9 shouldHideContactListIfNeeded:?];
}

- (void)dismissSearchAndSelectContact:(id)contact allowsMultiSelection:(BOOL)selection
{
  contactCopy = contact;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController cancelSearch:0];

  if (!selection)
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController2 deselectAllSelectedIndexPathsAnimated:0];
  }

  contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
  [contactListViewController3 setCellStateSelected:1 forContact:contactCopy animated:0];

  contactListViewController4 = [(CNContactNavigationController *)self contactListViewController];
  identifier = [contactCopy identifier];

  [contactListViewController4 scrollTopToContactWithIdentifier:identifier animated:1];
}

- (void)showNewDraftContact:(id)contact animated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = [CNContactViewController viewControllerForNewDraftContact:contact];
  contactStore = [(CNContactNavigationController *)self contactStore];
  [v14 setContactStore:contactStore];

  [v14 setDelegate:self];
  prohibitedPropertyKeys = [(CNContactNavigationController *)self prohibitedPropertyKeys];
  [v14 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  targetGroupForNewContact = [(CNContactNavigationController *)self targetGroupForNewContact];
  v9 = [(CNContactNavigationController *)self targetContainerForNewContactWithTargetGroup:targetGroupForNewContact];
  [v14 setParentContainer:v9];
  [v14 setParentGroup:targetGroupForNewContact];
  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  contactStyle = [(CNContactNavigationController *)self contactStyle];
  usesInsetPlatterStyle = [contactStyle usesInsetPlatterStyle];

  if ((usesInsetPlatterStyle & 1) == 0)
  {
    [v10 setModalPresentationStyle:3];
  }

  addContactPresenter = [(CNContactNavigationController *)self addContactPresenter];
  [addContactPresenter presentAddContactViewController:v10 animated:animatedCopy];
}

- (void)addContact:(id)contact animated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = [CNContactViewController viewControllerForNewContact:contact];
  contactStore = [(CNContactNavigationController *)self contactStore];
  [v14 setContactStore:contactStore];

  [v14 setDelegate:self];
  prohibitedPropertyKeys = [(CNContactNavigationController *)self prohibitedPropertyKeys];
  [v14 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  targetGroupForNewContact = [(CNContactNavigationController *)self targetGroupForNewContact];
  v9 = [(CNContactNavigationController *)self targetContainerForNewContactWithTargetGroup:targetGroupForNewContact];
  [v14 setParentContainer:v9];
  [v14 setParentGroup:targetGroupForNewContact];
  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  contactStyle = [(CNContactNavigationController *)self contactStyle];
  usesInsetPlatterStyle = [contactStyle usesInsetPlatterStyle];

  if ((usesInsetPlatterStyle & 1) == 0)
  {
    [v10 setModalPresentationStyle:3];
  }

  addContactPresenter = [(CNContactNavigationController *)self addContactPresenter];
  [addContactPresenter presentAddContactViewController:v10 animated:animatedCopy];
}

- (id)addContactPresenter
{
  parentViewController = [(CNContactNavigationController *)self parentViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [parentViewController conformsToProtocol:&unk_1F0DC2190])
  {
    selfCopy = [(CNContactNavigationController *)self parentViewController];
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (void)cancel:(id)cancel
{
  delegate = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactNavigationController *)self delegate];
    [delegate2 contactNavigationControllerDidCancel:self];
  }
}

- (void)done:(id)done
{
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  isSearching = [contactListViewController isSearching];

  if (isSearching)
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController2 searchForString:0 animated:1 completionBlock:0];
  }

  else
  {
    delegate = [(CNContactNavigationController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    contactListViewController2 = [(CNContactNavigationController *)self delegate];
    [contactListViewController2 contactNavigationControllerDidComplete:self];
  }
}

- (void)presentGroupsViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
  {
    accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self pushViewController:accountsAndGroupsViewController animated:1];
  }

  else
  {
    delegate = [(CNContactNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(CNContactNavigationController *)self delegate];
      v7 = [delegate2 contactNavigationControllerShouldShowGroupsViewController:self];

      if (!v7)
      {
        return;
      }
    }

    else
    {
    }

    delegate3 = [(CNContactNavigationController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v10 = [(CNContactNavigationController *)self popToRootViewControllerAnimated:animatedCopy];
      return;
    }

    accountsAndGroupsViewController = [(CNContactNavigationController *)self delegate];
    [accountsAndGroupsViewController showGroupsAnimated:1];
  }
}

- (void)presentGroupsViewController:(id)controller
{
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  isSearching = [contactListViewController isSearching];

  if (isSearching)
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    [contactListViewController2 cancelSearch:0];
  }

  [(CNContactNavigationController *)self presentGroupsViewControllerAnimated:1];
}

- (void)clearServerSearchIfNeeded:(id)needed
{
  accountsAndGroupsDataSource = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  serverFilter = [accountsAndGroupsDataSource serverFilter];

  if (serverFilter)
  {
    accountsAndGroupsDataSource2 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [accountsAndGroupsDataSource2 removeServerFilter];

    accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self accountsAndGroupsViewControllerDidUpdateSelection:accountsAndGroupsViewController];

    accountsAndGroupsViewController2 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [accountsAndGroupsViewController2 reloadData];
  }
}

- (void)presentErrorAlertWithTitle:(id)title message:(id)message animated:(BOOL)animated
{
  animatedCopy = animated;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:title message:message preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OKAY" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(CNContactNavigationController *)self presentViewController:v11 animated:animatedCopy completion:0];
}

- (void)mailContacts:(id)contacts
{
  v40[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  dataSource = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v5 = dataSource;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactNavigationController *)self presentErrorAlertWithTitle:0 message:v13 animated:1];

    v14 = CNUILogContactList();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v15 = "Data source is not of type CNContactStoreDataSource";
LABEL_17:
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
    goto LABEL_24;
  }

  filteredGroup = [v6 filteredGroup];

  if (filteredGroup)
  {
    v8 = MEMORY[0x1E695CD58];
    filteredGroup2 = [v6 filteredGroup];
    identifier = [filteredGroup2 identifier];
    v11 = [v8 predicateForContactsInGroupWithIdentifier:identifier];
  }

  else
  {
    filteredContainer = [v6 filteredContainer];

    if (!filteredContainer)
    {
LABEL_15:
      v29 = CNContactsUIBundle();
      v30 = [v29 localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
      [(CNContactNavigationController *)self presentErrorAlertWithTitle:0 message:v30 animated:1];

      v14 = CNUILogContactList();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v15 = "Not viewing a single group";
      goto LABEL_17;
    }

    v17 = MEMORY[0x1E695CD58];
    filteredGroup2 = [v6 filteredContainer];
    identifier = [filteredGroup2 identifier];
    v11 = [v17 predicateForContactsInContainerWithIdentifier:identifier];
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_15;
  }

  dataSource2 = [(CNContactNavigationController *)self dataSource];
  store = [dataSource2 store];
  descriptorForRequiredKeys = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
  v40[0] = descriptorForRequiredKeys;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v35 = 0;
  v22 = [store unifiedContactsMatchingPredicate:v14 keysToFetch:v21 error:&v35];
  v23 = v35;

  if (v22)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    v25 = [v24 mailUrlForContacts:v22 needsEmailAddresses:0];
    if (v25)
    {
      v26 = +[CNUIContactsEnvironment currentEnvironment];
      applicationWorkspace = [v26 applicationWorkspace];
      v36 = *MEMORY[0x1E6963550];
      v37 = MEMORY[0x1E695E118];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [applicationWorkspace openSensitiveURLInBackground:v25 withOptions:v28];
    }

    else
    {
      v33 = CNContactsUIBundle();
      v34 = [v33 localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
      [(CNContactNavigationController *)self presentErrorAlertWithTitle:0 message:v34 animated:1];

      v26 = CNUILogContactList();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_INFO, "Failed to create mail URL", buf, 2u);
      }
    }
  }

  else
  {
    v31 = CNContactsUIBundle();
    v32 = [v31 localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactNavigationController *)self presentErrorAlertWithTitle:0 message:v32 animated:1];

    v24 = CNUILogContactList();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v23;
      _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_INFO, "Failed to fetch contacts with keys for mailing, error: %@", buf, 0xCu);
    }
  }

LABEL_24:
}

- (UIBarButtonItem)mailButtonItem
{
  if (!self->_mailButtonItem && ![(CNContactNavigationController *)self hideMailToGroupButton])
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
    v5 = [v3 initWithImage:v4 style:0 target:self action:sel_mailContacts_];
    mailButtonItem = self->_mailButtonItem;
    self->_mailButtonItem = v5;

    [(UIBarButtonItem *)self->_mailButtonItem setAccessibilityIdentifier:@"EmailGroupButton"];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"EMAIL_GROUP_ACCESSIBILITY_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(UIBarButtonItem *)self->_mailButtonItem setAccessibilityLabel:v8];

    dataSource = [(CNContactNavigationController *)self dataSource];
    contacts = [dataSource contacts];
    -[UIBarButtonItem setEnabled:](self->_mailButtonItem, "setEnabled:", [contacts count] != 0);
  }

  v11 = self->_mailButtonItem;

  return v11;
}

- (void)setManagedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(CNManagedConfiguration *)self->_managedConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_managedConfiguration, configuration);
    accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [accountsAndGroupsViewController setManagedConfiguration:configurationCopy];
  }
}

- (void)setContactPickerTargetGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_contactPickerTargetGroupIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_contactPickerTargetGroupIdentifier, identifier);
    groupsAndContainersSaveManager = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    v6 = [groupsAndContainersSaveManager acAccountForGroupIdentifier:identifierCopy];

    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      identifier = [v6 identifier];
      v9 = [v7 setWithObject:identifier];
      accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
      dataSource = [accountsAndGroupsViewController dataSource];
      [dataSource setTargetAccountExternalIdentifiers:v9];
    }
  }
}

- (void)updateNavigationButtonsAnimated:(BOOL)animated viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  animatedCopy = animated;
  visibleViewController = [(CNContactNavigationController *)self visibleViewController];
  viewIfLoaded = [visibleViewController viewIfLoaded];
  window = [viewIfLoaded window];

  if (window || appearCopy)
  {
    isSearching = [(CNContactListViewController *)self->_contactListViewController isSearching];

    [(CNContactNavigationController *)self updateNavigationButtonsInSearchMode:isSearching animated:animatedCopy];
  }
}

- (void)updateLeftNavigationButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG])
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ([(CNContactNavigationController *)self shouldShowGroupsBackButton])
  {
    v5 = 1;
    goto LABEL_10;
  }

  if ([(CNContactNavigationController *)self shouldShowLeftCancelAndRightDoneButton])
  {
    goto LABEL_6;
  }

  if ([(CNContactNavigationController *)self shouldShowLeftDoneAndRightAddButton]|| [(CNContactNavigationController *)self shouldShowLeftDoneAndRightEditButton])
  {
    v5 = 3;
  }

  else
  {
    if ([(CNContactNavigationController *)self shouldShowLeftCancelAndRightAddButton])
    {
LABEL_6:
      v5 = 2;
      goto LABEL_10;
    }

    if ([(CNContactNavigationController *)self shouldShowLeftCloseAndRightGroupsButton])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_10:
  if (self->_leftButtonBehavior == v5)
  {
    return;
  }

  self->_leftButtonBehavior = v5;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  navigationItem = [contactListViewController navigationItem];
  [navigationItem setHidesBackButton:1];

  v8 = 0;
  if (v5 > 2)
  {
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v5 == 3)
    {
      v10 = sel_done_;
      v11 = 0;
    }

    else
    {
      v10 = sel_cancel_;
      v11 = 24;
    }

    goto LABEL_19;
  }

  if (v5 == 1)
  {
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    navigationItem2 = [contactListViewController2 navigationItem];
    [navigationItem2 setHidesBackButton:0];

    v8 = 0;
  }

  else if (v5 == 2)
  {
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = sel_cancel_;
    v11 = 1;
LABEL_19:
    v8 = [v9 initWithBarButtonSystemItem:v11 target:self action:v10];
  }

  v16 = v8;
  contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
  navigationItem3 = [contactListViewController3 navigationItem];
  [navigationItem3 setLeftBarButtonItem:v16 animated:animatedCopy];
}

- (BOOL)allowsCardDeletion
{
  if (self->_allowsCardDeletion)
  {
    return ![(CNContactNavigationController *)self isContactProviderDataSource:v2];
  }

  else
  {
    return 0;
  }
}

- (void)updateNavigationButtonsInSearchMode:(BOOL)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v37[1] = *MEMORY[0x1E69E9840];
  if (mode && [(CNContactNavigationController *)self allowsCanceling])
  {
    if (![(CNContactNavigationController *)self shouldShowLeftCancelAndRightDoneButton]&& [(CNContactNavigationController *)self shouldShowRightCancelButton])
    {
      goto LABEL_5;
    }

    v6 = 1;
  }

  else if ([(CNContactNavigationController *)self shouldShowLeftCloseAndRightGroupsButton])
  {
    v6 = 6;
  }

  else if ([(CNContactNavigationController *)self shouldShowLeftCancelAndRightDoneButton])
  {
    v6 = 3;
  }

  else if ([(CNContactNavigationController *)self shouldShowLeftDoneAndRightAddButton])
  {
    v6 = 5;
  }

  else if ([(CNContactNavigationController *)self shouldShowLeftDoneAndRightEditButton])
  {
    v6 = 9;
  }

  else if ([(CNContactNavigationController *)self shouldShowLeftCancelAndRightAddButton])
  {
    v6 = 4;
  }

  else if ([(CNContactNavigationController *)self shouldShowRightAddAndCancelButton])
  {
    v6 = 8;
  }

  else
  {
    if ([(CNContactNavigationController *)self shouldShowRightCancelButton])
    {
LABEL_5:
      v6 = 2;
      goto LABEL_22;
    }

    shouldShowRightAddButton = [(CNContactNavigationController *)self shouldShowRightAddButton];
    v6 = 7;
    if (!shouldShowRightAddButton)
    {
      v6 = 0;
    }
  }

LABEL_22:
  if (self->_rightButtonBehavior != v6)
  {
    keyCommandForNewContact = 0;
    self->_rightButtonBehavior = v6;
    if (v6 > 5)
    {
      if (v6 > 7)
      {
        if (v6 != 8)
        {
          v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editLimitedAccess];
          v32 = v20;
          rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

          firstObject = [rightBarButtonItems firstObject];
          keyCommandForNewContact = 0;
          goto LABEL_49;
        }

        v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
        v33[0] = v24;
        v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:sel_addContact_];
        v33[1] = v25;
        rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];

        lastObject = [rightBarButtonItems lastObject];
LABEL_45:
        firstObject = lastObject;
        keyCommandForNewContact = [objc_opt_class() keyCommandForNewContact];
        goto LABEL_49;
      }

      if (v6 == 6)
      {
        v21 = objc_alloc(MEMORY[0x1E69DC708]);
        v15 = CNContactsUIBundle();
        v22 = [v15 localizedStringForKey:@"LISTS" value:&stru_1F0CE7398 table:@"Localized"];
        v23 = [v21 initWithTitle:v22 style:0 target:self action:sel_presentGroupsViewController_];
        v37[0] = v23;
        rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];

        goto LABEL_47;
      }
    }

    else if (v6 <= 3)
    {
      if (v6 == 1)
      {
        goto LABEL_30;
      }

      if (v6 == 2)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
        v36 = v15;
        rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        goto LABEL_47;
      }

      firstObject = 0;
      rightBarButtonItems = 0;
      if (v6 == 3)
      {
LABEL_30:
        v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
        v35 = v14;
        rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

        if ([(CNContactNavigationController *)self limitedAccessPickerType]!= 2)
        {
LABEL_48:
          keyCommandForNewContact = 0;
          firstObject = 0;
          goto LABEL_49;
        }

        v15 = [rightBarButtonItems objectAtIndexedSubscript:0];
        [v15 setEnabled:0];
LABEL_47:

        goto LABEL_48;
      }

LABEL_49:
      [(CNContactNavigationController *)self setAddContactBarButtonItem:firstObject];
      addKeyCommand = [(CNContactNavigationController *)self addKeyCommand];

      if (addKeyCommand)
      {
        addKeyCommand2 = [(CNContactNavigationController *)self addKeyCommand];
        [(CNContactNavigationController *)self removeKeyCommand:addKeyCommand2];
      }

      if (keyCommandForNewContact)
      {
        [(CNContactNavigationController *)self addKeyCommand:keyCommandForNewContact];
      }

      [(CNContactNavigationController *)self setAddKeyCommand:keyCommandForNewContact];
      if ([(CNContactNavigationController *)self shouldShowMailButton])
      {
        mailButtonItem = [(CNContactNavigationController *)self mailButtonItem];
        v29 = [rightBarButtonItems arrayByAddingObject:mailButtonItem];

        rightBarButtonItems = v29;
      }

      contactListViewController = [(CNContactNavigationController *)self contactListViewController];
      navigationItem = [contactListViewController navigationItem];
      [navigationItem setRightBarButtonItems:rightBarButtonItems animated:animatedCopy];

      goto LABEL_56;
    }

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:sel_addContact_];
    v34 = v16;
    rightBarButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

    lastObject = [rightBarButtonItems firstObject];
    goto LABEL_45;
  }

  contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
  navigationItem2 = [contactListViewController2 navigationItem];
  rightBarButtonItems = [navigationItem2 rightBarButtonItems];

  if (self->_mailButtonItem)
  {
    v11 = [rightBarButtonItems containsObject:?];
  }

  else
  {
    v11 = 0;
  }

  if (v11 != [(CNContactNavigationController *)self shouldShowMailButton])
  {
    if ([(CNContactNavigationController *)self shouldShowMailButton])
    {
      mailButtonItem2 = [(CNContactNavigationController *)self mailButtonItem];
      keyCommandForNewContact = [rightBarButtonItems arrayByAddingObject:mailButtonItem2];
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__CNContactNavigationController_updateNavigationButtonsInSearchMode_animated___block_invoke;
      v31[3] = &unk_1E74E3400;
      v31[4] = self;
      keyCommandForNewContact = [rightBarButtonItems _cn_filter:v31];
    }

    firstObject = [(CNContactNavigationController *)self contactListViewController];
    contactListViewController = [firstObject navigationItem];
    [contactListViewController setRightBarButtonItems:keyCommandForNewContact];
LABEL_56:
  }

  [(CNContactNavigationController *)self refreshMailButtonEnabled];
  [(CNContactNavigationController *)self updateLeftNavigationButtonAnimated:animatedCopy];
}

BOOL __78__CNContactNavigationController_updateNavigationButtonsInSearchMode_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mailButtonItem];

  return v4 != v3;
}

- (BOOL)hidesSearchableSources
{
  accountsAndGroupsDataSource = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  hidesSearchableSources = [accountsAndGroupsDataSource hidesSearchableSources];

  return hidesSearchableSources;
}

- (void)setHidesSearchableSources:(BOOL)sources
{
  sourcesCopy = sources;
  accountsAndGroupsDataSource = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  [accountsAndGroupsDataSource setHidesSearchableSources:sourcesCopy];
}

- (void)setContactListStyleApplier:(id)applier
{
  objc_storeStrong(&self->_contactListStyleApplier, applier);
  applierCopy = applier;
  [(CNContactListViewController *)self->_contactListViewController setContactListStyleApplier:applierCopy];
}

- (void)setContactStyle:(id)style
{
  objc_storeStrong(&self->_contactStyle, style);
  styleCopy = style;
  v7 = [CNContactListStyleProvider contactListStyleWithContactStyle:styleCopy];
  v6 = [[CNContactListStyleApplier alloc] initWithContactListStyle:v7];
  [(CNContactNavigationController *)self setContactListStyleApplier:v6];

  LODWORD(v6) = [styleCopy shouldPresentInCurrentContext];
  [(CNContactNavigationController *)self _setBuiltinTransitionStyle:v6];
}

- (void)contactStyleCurrentStyleDidChange:(id)change
{
  mainThreadScheduler = self->_mainThreadScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CNContactNavigationController_contactStyleCurrentStyleDidChange___block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [(CNScheduler *)mainThreadScheduler performBlock:v4];
}

void __67__CNContactNavigationController_contactStyleCurrentStyleDidChange___block_invoke(uint64_t a1)
{
  v2 = +[CNContactStyle currentStyle];
  [*(a1 + 32) setContactStyle:v2];
}

- (void)scrollToContact:(id)contact animated:(BOOL)animated
{
  contactCopy = contact;
  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  identifier = [contactCopy identifier];

  [contactListViewController scrollTopToContactWithIdentifier:identifier animated:0];
}

- (id)firstVisibleContact
{
  dataSource = [(CNContactNavigationController *)self dataSource];
  contacts = [dataSource contacts];
  v5 = [contacts count];

  if (v5)
  {
    contactListViewController = [(CNContactNavigationController *)self contactListViewController];
    visibleListViewController = [contactListViewController visibleListViewController];
    collectionView = [visibleListViewController collectionView];

    [collectionView contentOffset];
    v10 = v9;
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    visibleListViewController2 = [contactListViewController2 visibleListViewController];
    [visibleListViewController2 contactListHeaderHeight];
    v14 = v13;

    [collectionView center];
    v16 = v15;
    navigationBar = [(CNContactNavigationController *)self navigationBar];
    [navigationBar frame];
    v19 = v18;

    v20 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v21 = [collectionView layoutAttributesForItemAtIndexPath:v20];

    [v21 frame];
    v23 = v22;
    v25 = v24;
    collectionViewLayout = [collectionView collectionViewLayout];
    v27 = [collectionViewLayout layoutAttributesForElementsInRect:{v16, v10 + v14 + v19, v23, v25}];

    v28 = [v27 _cn_map:&__block_literal_global_24581];
    v29 = 0;
    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v30 = [v28 objectAtIndexedSubscript:0];
      contactListViewController3 = [(CNContactNavigationController *)self contactListViewController];
      v32 = [contactListViewController3 globalIndexForCollectionViewIndexPath:v30];

      if (v32 == 0x7FFFFFFFFFFFFFFFLL || (-[CNContactNavigationController dataSource](self, "dataSource"), v33 = objc_claimAutoreleasedReturnValue(), [v33 contacts], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "count"), v34, v33, v32 >= v35))
      {
        v29 = 0;
      }

      else
      {
        dataSource2 = [(CNContactNavigationController *)self dataSource];
        contacts2 = [dataSource2 contacts];
        v29 = [contacts2 objectAtIndexedSubscript:v32];
      }
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  firstVisibleContact = [(CNContactNavigationController *)self firstVisibleContact];
  if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
  {
    presentedContactViewController = [(CNContactNavigationController *)self presentedContactViewController];
    contentViewController = [presentedContactViewController contentViewController];
    contact = [contentViewController contact];
  }

  else
  {
    contact = 0;
  }

  contactListViewController = [(CNContactNavigationController *)self contactListViewController];
  currentSearchString = [contactListViewController currentSearchString];

  if (firstVisibleContact | contact)
  {
    if (!firstVisibleContact && contact)
    {
      firstVisibleContact = contact;
    }

    goto LABEL_10;
  }

  firstVisibleContact = 0;
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
LABEL_10:
    accountsAndGroupsViewController = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    if ([accountsAndGroupsViewController isViewLoaded])
    {
      accountsAndGroupsViewController2 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
      view = [accountsAndGroupsViewController2 view];
      window = [view window];
      v14 = window != 0;
    }

    else
    {
      v14 = 0;
    }

    activityManager = [(CNContactNavigationController *)self activityManager];
    contactListViewController2 = [(CNContactNavigationController *)self contactListViewController];
    currentSearchString2 = [contactListViewController2 currentSearchString];
    [activityManager updateUserActivityState:stateCopy withContentsOfListTopContact:firstVisibleContact displayedContact:contact searchString:currentSearchString2 isShowingGroups:v14];
  }
}

- (void)_updateUserActivity
{
  v19 = *MEMORY[0x1E69E9840];
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v3 = CNUILogContactList();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v15 = 138412290;
      selfCopy2 = bundleIdentifier;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v15, 0xCu);
    }

    activityManager = [(CNContactNavigationController *)self activityManager];
    makeActivityAdvertisingViewingList = [activityManager makeActivityAdvertisingViewingList];

    userActivity = [(CNContactNavigationController *)self userActivity];
    v9 = userActivity;
    if (makeActivityAdvertisingViewingList)
    {

      if (!v9)
      {
        [(CNContactNavigationController *)self setUserActivity:makeActivityAdvertisingViewingList];
        userActivity2 = [(CNContactNavigationController *)self userActivity];
        [userActivity2 becomeCurrent];

        v11 = CNUILogContactList();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          userActivity3 = [(CNContactNavigationController *)self userActivity];
          v15 = 138412546;
          selfCopy2 = self;
          v17 = 2112;
          v18 = userActivity3;
          _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v15, 0x16u);
        }
      }
    }

    else
    {
      [userActivity resignCurrent];

      v13 = CNUILogContactList();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        userActivity4 = [(CNContactNavigationController *)self userActivity];
        v15 = 138412546;
        selfCopy2 = self;
        v17 = 2112;
        v18 = userActivity4;
        _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v15, 0x16u);
      }

      [(CNContactNavigationController *)self setUserActivity:0];
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v4 dealloc];
}

- (CNContactNavigationController)initWithDataSource:(id)source contactFormatter:(id)formatter applyGroupFilterFromPreferences:(BOOL)preferences environment:(id)environment allowsLargeTitles:(BOOL)titles allowsSearch:(BOOL)search
{
  searchCopy = search;
  titlesCopy = titles;
  preferencesCopy = preferences;
  v57[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  formatterCopy = formatter;
  environmentCopy = environment;
  v56.receiver = self;
  v56.super_class = CNContactNavigationController;
  v17 = [(CNContactNavigationController *)&v56 initWithNibName:0 bundle:0];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      store = [sourceCopy store];
      contactStore = v17->_contactStore;
      v17->_contactStore = store;

      if (preferencesCopy)
      {
        v20 = [CNContactStoreFilter contactStoreFilterFromPreferencesWithContactStore:v17->_contactStore];
        if (v20)
        {
          [sourceCopy setFilter:v20];
        }
      }

      v21 = [[CNAccountsAndGroupsDataSource alloc] initWithStore:v17->_contactStore];
      [(CNContactNavigationController *)v17 setAccountsAndGroupsDataSource:v21];

      v22 = [[CNUIGroupsAndContainersSaveManager alloc] initWithContactStore:v17->_contactStore];
      v23 = &OBJC_IVAR___CNContactNavigationController__groupsAndContainersSaveManager;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [sourceCopy store];
      }

      else
      {
        [environmentCopy inProcessContactStore];
      }
      v22 = ;
      v23 = &OBJC_IVAR___CNContactNavigationController__contactStore;
    }

    v24 = *v23;
    v25 = *(&v17->super.super.super.super.isa + v24);
    *(&v17->super.super.super.super.isa + v24) = v22;

    defaultSchedulerProvider = [environmentCopy defaultSchedulerProvider];
    v27 = [defaultSchedulerProvider backgroundSchedulerWithQualityOfService:2];
    backgroundScheduler = v17->_backgroundScheduler;
    v17->_backgroundScheduler = v27;

    defaultSchedulerProvider2 = [environmentCopy defaultSchedulerProvider];
    mainThreadScheduler = [defaultSchedulerProvider2 mainThreadScheduler];
    mainThreadScheduler = v17->_mainThreadScheduler;
    v17->_mainThreadScheduler = mainThreadScheduler;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v34 = objc_alloc(MEMORY[0x1E6996760]);
    mEMORY[0x1E6996768] = [MEMORY[0x1E6996768] sharedConnection];
    v36 = [v34 initWithBundleIdentifier:bundleIdentifier managedProfileConnection:mEMORY[0x1E6996768]];
    managedConfiguration = v17->_managedConfiguration;
    v17->_managedConfiguration = v36;

    if (!formatterCopy)
    {
      formatterCopy = objc_alloc_init(MEMORY[0x1E695CD80]);
      [formatterCopy setStyle:0];
      [formatterCopy setEmphasizesPrimaryNameComponent:1];
      [formatterCopy setFallbackStyle:-1];
    }

    if (objc_opt_respondsToSelector())
    {
      [sourceCopy setContactFormatter:formatterCopy];
    }

    [(CNContactNavigationController *)v17 setAllowsLargeTitles:titlesCopy];
    v38 = +[CNContactStyle currentStyle];
    [(CNContactNavigationController *)v17 setContactStyle:v38];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel_contactStyleCurrentStyleDidChange_ name:@"CNContactStyleCurrentStyleDidChangeNotification" object:0];

    v40 = [[CNContactListViewController alloc] initWithDataSource:sourceCopy searchable:searchCopy environment:environmentCopy shouldUseLargeTitle:titlesCopy];
    [(CNContactListViewController *)v40 setContactFormatter:formatterCopy];
    [(CNContactListViewController *)v40 setDelegate:v17];
    contactListStyleApplier = [(CNContactNavigationController *)v17 contactListStyleApplier];
    [(CNContactListViewController *)v40 setContactListStyleApplier:contactListStyleApplier];

    navigationItem = [(CNContactListViewController *)v40 navigationItem];
    [navigationItem setHidesBackButton:1];

    navigationItem2 = [(CNContactListViewController *)v40 navigationItem];
    [navigationItem2 setStyle:0];

    if (CNUIIsMobilePhone() || CNUIIsContacts())
    {
      [(CNContactListViewController *)v40 setAllowsMultiSelectContextMenus:1];
    }

    inProcessActivityManager = [environmentCopy inProcessActivityManager];
    activityManager = v17->_activityManager;
    v17->_activityManager = inProcessActivityManager;

    objc_storeStrong(&v17->_contactListViewController, v40);
    v57[0] = v40;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    [(CNContactNavigationController *)v17 setViewControllers:v46];

    v47 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_selectNextContact_];
    [(CNContactNavigationController *)v17 addKeyCommand:v47];

    v48 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_selectPreviousContact_];
    [(CNContactNavigationController *)v17 addKeyCommand:v48];

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v51 = [featureFlags isFeatureEnabled:31];

    if (v51)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __144__CNContactNavigationController_initWithDataSource_contactFormatter_applyGroupFilterFromPreferences_environment_allowsLargeTitles_allowsSearch___block_invoke;
      block[3] = &unk_1E74E6A88;
      v55 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v52 = v17;
  }

  return v17;
}

void __144__CNContactNavigationController_initWithDataSource_contactFormatter_applyGroupFilterFromPreferences_environment_allowsLargeTitles_allowsSearch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedContactViewController];

  if (!v2)
  {
    v3 = +[CNUIDraftSupport loadNewContactDraft];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v3 = [*(a1 + 32) showNewDraftContact:v3 animated:1];
      v4 = v5;
    }

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

- (CNContactNavigationController)initWithDataSource:(id)source withOptions:(id)options
{
  optionsCopy = options;
  v7 = CNContactNavigationControllerOptionAllowsLargeTitles;
  sourceCopy = source;
  v9 = [optionsCopy _cn_objectForKey:v7 ofClass:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v12 = [optionsCopy _cn_objectForKey:CNContactNavigationControllerOptionAllowsSearch ofClass:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    bOOLValue2 = [v12 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  v15 = +[CNUIContactsEnvironment currentEnvironment];
  v16 = [(CNContactNavigationController *)self initWithDataSource:sourceCopy environment:v15 allowsLargeTitles:bOOLValue allowsSearch:bOOLValue2];

  return v16;
}

- (CNContactNavigationController)initWithDataSource:(id)source allowsLargeTitles:(BOOL)titles
{
  titlesCopy = titles;
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = CNContactNavigationControllerOptionAllowsLargeTitles;
  v6 = MEMORY[0x1E696AD98];
  sourceCopy = source;
  v8 = [v6 numberWithBool:titlesCopy];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [(CNContactNavigationController *)self initWithDataSource:sourceCopy withOptions:v9];

  return v10;
}

+ (void)moveViewController:(id)controller toParent:(id)parent
{
  parentCopy = parent;
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:0];
  [controllerCopy removeFromParentViewController];
  [parentCopy addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:parentCopy];
  view = [parentCopy view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  view3 = [parentCopy view];
  topAnchor = [view3 topAnchor];
  view4 = [controllerCopy view];
  topAnchor2 = [view4 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  view5 = [parentCopy view];
  bottomAnchor = [view5 bottomAnchor];
  view6 = [controllerCopy view];
  bottomAnchor2 = [view6 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v18 setActive:1];

  view7 = [parentCopy view];
  leadingAnchor = [view7 leadingAnchor];
  view8 = [controllerCopy view];
  leadingAnchor2 = [view8 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v23 setActive:1];

  view9 = [parentCopy view];
  trailingAnchor = [view9 trailingAnchor];
  view10 = [controllerCopy view];
  trailingAnchor2 = [view10 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v28 setActive:1];

  view11 = [controllerCopy view];
  [view11 setTranslatesAutoresizingMaskIntoConstraints:0];

  title = [controllerCopy title];

  [parentCopy setTitle:title];
}

+ (id)keyCommandForNewContact
{
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"n" modifierFlags:0x100000 action:sel_addContact_];
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"ADD_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
  [v2 setDiscoverabilityTitle:v4];

  return v2;
}

@end