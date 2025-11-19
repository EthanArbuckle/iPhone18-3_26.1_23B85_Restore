@interface CNContactNavigationController
+ (id)keyCommandForNewContact;
+ (id)newContactFormatter;
+ (void)moveViewController:(id)a3 toParent:(id)a4;
- (BOOL)accountsAndGroupsViewController:(id)a3 shouldEnableItemWithIdentifier:(id)a4;
- (BOOL)allowsCardDeletion;
- (BOOL)allowsCardEditing;
- (BOOL)canAddContacts;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)contactListViewController:(id)a3 canSelectContact:(id)a4;
- (BOOL)contactListViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5;
- (BOOL)contactSuggestionViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (BOOL)hidesSearchableSources;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isAddContactButtonShowing;
- (BOOL)isContactProviderDataSource;
- (BOOL)isDisplayingAddNewContactViewController;
- (BOOL)isPresentedContactViewControllerVisible;
- (BOOL)isSinglePickerOnVisionOS;
- (BOOL)shouldFlipDirectionWhenChangingSelectionWithKey:(id)a3;
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
- (CNContactNavigationController)initWithDataSource:(id)a3 allowsLargeTitles:(BOOL)a4;
- (CNContactNavigationController)initWithDataSource:(id)a3 contactFormatter:(id)a4 applyGroupFilterFromPreferences:(BOOL)a5 environment:(id)a6 allowsLargeTitles:(BOOL)a7 allowsSearch:(BOOL)a8;
- (CNContactNavigationController)initWithDataSource:(id)a3 withOptions:(id)a4;
- (CNContactViewController)presentedContactViewController;
- (UIAlertController)facebookContactsAlertController;
- (UIBarButtonItem)mailButtonItem;
- (id)addContactPresenter;
- (id)allContactIdentifiers;
- (id)currentlyDisplayedContact;
- (id)firstVisibleContact;
- (id)nextResponderForContactListViewController:(id)a3;
- (id)parentGroupForCurrentFilter;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)reuseableContactViewControllerConfiguredForContact:(id)a3 mode:(int64_t)a4;
- (id)targetContainerForNewContactWithTargetGroup:(id)a3;
- (id)targetGroupForNewContact;
- (id)userActivityRepresentingCurrentlyDisplayedContact;
- (id)userActivityRepresentingGroupsView;
- (void)_cnui_presentViewController:(id)a3 animated:(BOOL)a4 dismissingPresentedController:(BOOL)a5 shouldHideContactListIfNeeded:(BOOL)a6;
- (void)_updateUserActivity;
- (void)accountsAndGroupsViewControllerDidCancel:(id)a3;
- (void)accountsAndGroupsViewControllerDidFinish:(id)a3;
- (void)accountsAndGroupsViewControllerDidGoBack:(id)a3;
- (void)accountsAndGroupsViewControllerDidUpdateSelection:(id)a3;
- (void)addContact:(id)a3;
- (void)addContact:(id)a3 animated:(BOOL)a4;
- (void)beginSearch:(id)a3;
- (void)cancel:(id)a3;
- (void)cancelSearch:(id)a3;
- (void)checkForFacebookContactsWithDelay:(double)a3 allowAlert:(BOOL)a4;
- (void)clearServerSearchIfNeeded:(id)a3;
- (void)contactListAddContactButtonTapped:(id)a3;
- (void)contactListViewController:(id)a3 didSelectContact:(id)a4 shouldScrollToContact:(BOOL)a5;
- (void)contactListViewController:(id)a3 shouldPresentContact:(id)a4 shouldScrollToContact:(BOOL)a5;
- (void)contactListViewController:(id)a3 updatedSelectedContact:(id)a4;
- (void)contactPicker:(id)a3 didCompleteWithNewContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactStyleCurrentStyleDidChange:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithNewContactFromPickerNewContactRow:(id)a4;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)dataSourceChangedForContactListViewController:(id)a3;
- (void)dealloc;
- (void)deleteContact:(id)a3;
- (void)didResetLimitedAccessSelectionTo:(id)a3;
- (void)didUpdateLimitedAccessSelection:(id)a3;
- (void)dismissSearchAndSelectContact:(id)a3 allowsMultiSelection:(BOOL)a4;
- (void)done:(id)a3;
- (void)editLimitedAccess;
- (void)executeAddContact;
- (void)mailContacts:(id)a3;
- (void)notifyOtherFacebookContactsAlertDidSelectAction;
- (void)observeOtherFacebookContactsAlert;
- (void)otherFacebookContactsAlertDidSelectActionWithNotification:(id)a3;
- (void)popToContactListAndSaveChanges:(BOOL)a3 animated:(BOOL)a4;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentAddToGroupPickerWithSourceView:(id)a3;
- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 animated:(BOOL)a5;
- (void)presentGroupsViewController:(id)a3;
- (void)presentGroupsViewControllerAnimated:(BOOL)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)refreshMailButtonEnabled;
- (void)resetContactViewController;
- (void)scrollToContact:(id)a3 animated:(BOOL)a4;
- (void)searchForString:(id)a3 makeSearchBarFirstResponder:(BOOL)a4;
- (void)selectNextContact:(id)a3;
- (void)selectPreviousContact:(id)a3;
- (void)setContactListStyleApplier:(id)a3;
- (void)setContactPickerTargetGroupIdentifier:(id)a3;
- (void)setContactStyle:(id)a3;
- (void)setHidesSearchableSources:(BOOL)a3;
- (void)setManagedConfiguration:(id)a3;
- (void)setUpAccountAndGroupsViewIfNeeded;
- (void)setUpLargeTitles;
- (void)setUpMenuBarWithBuilder:(id)a3;
- (void)showAllContactsListAnimated:(BOOL)a3;
- (void)showCardForContact:(id)a3 resetFilter:(BOOL)a4 resetSearch:(BOOL)a5 fallbackToFirstContact:(BOOL)a6 scrollToContact:(BOOL)a7 animated:(BOOL)a8 dismissingPresentedController:(BOOL)a9;
- (void)showCardForContact:(id)a3 resetFilter:(BOOL)a4 resetSearch:(BOOL)a5 fallbackToFirstContact:(BOOL)a6 scrollToContact:(BOOL)a7 animated:(BOOL)a8 dismissingPresentedController:(BOOL)a9 shouldHideContactListIfNeeded:(BOOL)a10;
- (void)showCardForContactAfterIndexPath:(id)a3;
- (void)showCardForContactBeforeIndexPath:(id)a3;
- (void)showCardForContactIfPossible:(id)a3;
- (void)showNewDraftContact:(id)a3 animated:(BOOL)a4;
- (void)startEditingPresentedContact;
- (void)toggleEditContact:(id)a3;
- (void)toggleGroupsPanel:(id)a3;
- (void)updateLeftNavigationButtonAnimated:(BOOL)a3;
- (void)updateNavigationButtonsAnimated:(BOOL)a3 viewWillAppear:(BOOL)a4;
- (void)updateNavigationButtonsInSearchMode:(BOOL)a3 animated:(BOOL)a4;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v5 = [(CNContactNavigationController *)self nonServerDataSource];
    if (v5)
    {
      [(CNContactNavigationController *)self nonServerDataSource];
    }

    else
    {
      [(CNContactListViewController *)self->_contactListViewController dataSource];
    }
    v6 = ;
    v7 = [v6 filter];
    v8 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [v8 setFilter:v7];

    v9 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [v9 reload];

    v10 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [(CNAccountsAndGroupsViewController *)v4 setDataSource:v10];

    [(CNAccountsAndGroupsViewController *)v4 setDelegate:self];
    v11 = [(CNContactNavigationController *)self managedConfiguration];
    [(CNAccountsAndGroupsViewController *)v4 setManagedConfiguration:v11];

    v12 = [(CNAccountsAndGroupsViewController *)v4 navigationItem];
    [v12 setHidesBackButton:1];

    v13 = [(CNAccountsAndGroupsViewController *)v4 navigationItem];
    [v13 setStyle:0];

    v14 = self->_accountsAndGroupsViewController;
    self->_accountsAndGroupsViewController = v4;

    accountsAndGroupsViewController = self->_accountsAndGroupsViewController;
  }

  return accountsAndGroupsViewController;
}

- (CNContactDataSource)dataSource
{
  v2 = [(CNContactNavigationController *)self contactListViewController];
  v3 = [v2 dataSource];

  return v3;
}

- (BOOL)shouldShowGroupsBackButton
{
  if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(CNContactNavigationController *)self shouldShowAccountsAndGroups];
    if (v3)
    {
      LOBYTE(v3) = ![(CNContactNavigationController *)self hideGroupsButton];
    }
  }

  return v3;
}

- (BOOL)isSinglePickerOnVisionOS
{
  if ([(CNContactNavigationController *)self hostIdiom]== 6)
  {
    v3 = [(CNContactNavigationController *)self contactListViewController];
    v4 = [v3 allowsMultiSelection] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowAccountsAndGroups
{
  v2 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  v3 = v2 != 0;

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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    if (CNUIIsContacts())
    {
      v6 = [MEMORY[0x1E69DC938] currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (!v7)
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
    v3 = [(CNContactNavigationController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0 || (-[CNContactNavigationController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 contactNavigationControllerShouldManageGroupsController:self], v5, v6))
    {
      if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
      {
        v7 = [(CNContactNavigationController *)self contactListViewController];
        v11[0] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        [(CNContactNavigationController *)self setViewControllers:v8];
      }

      else
      {
        v7 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
        v8 = [(CNContactNavigationController *)self contactListViewController];
        v10[1] = v8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
        [(CNContactNavigationController *)self setViewControllers:v9];
      }
    }
  }
}

- (void)setUpLargeTitles
{
  v3 = [(CNContactNavigationController *)self allowsLargeTitles];
  v4 = [(CNContactNavigationController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setPrefersLargeTitles:v3];

  v6 = [(CNContactNavigationController *)self allowsLargeTitles];
  v7 = [(CNContactNavigationController *)self navigationBar];
  [v7 setPrefersLargeTitles:v6];
}

- (BOOL)shouldShowLeftCancelAndRightDoneButton
{
  v3 = [(CNContactNavigationController *)self allowsCanceling];
  if (v3)
  {

    LOBYTE(v3) = [(CNContactNavigationController *)self allowsDone];
  }

  return v3;
}

- (BOOL)shouldShowLeftDoneAndRightAddButton
{
  v3 = [(CNContactNavigationController *)self allowsDone];
  if (v3)
  {
    v3 = [(CNContactNavigationController *)self shouldShowRightAddButton];
    if (v3)
    {
      LOBYTE(v3) = ![(CNContactNavigationController *)self shouldShowGroupsBackButton];
    }
  }

  return v3;
}

- (BOOL)shouldShowLeftCancelAndRightAddButton
{
  v3 = [(CNContactNavigationController *)self allowsCanceling];
  if (v3)
  {
    v3 = [(CNContactNavigationController *)self shouldShowRightAddButton];
    if (v3)
    {
      LOBYTE(v3) = ![(CNContactNavigationController *)self shouldShowGroupsBackButton];
    }
  }

  return v3;
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
  v3 = [(CNContactNavigationController *)self allowsCanceling];
  if (v3)
  {
    LOBYTE(v3) = ![(CNContactNavigationController *)self hideGroupsButton]&& [(CNContactNavigationController *)self limitedAccessPickerType]!= 1;
  }

  return v3;
}

- (BOOL)shouldShowRightAddButton
{
  v3 = [(CNContactNavigationController *)self presentingViewController];
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if (([v4 isFeatureEnabled:29] & 1) == 0)
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
  v3 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
      v6 = 1;
    }

    else
    {
      v6 = [v5 filterShowsSingleExchangeFolder];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)refreshMailButtonEnabled
{
  if ([(CNContactNavigationController *)self shouldShowMailButton])
  {
    v6 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
    v3 = [v6 contacts];
    if ([v3 count])
    {
      v4 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
      v5 = [v4 contacts];
      -[UIBarButtonItem setEnabled:](self->_mailButtonItem, "setEnabled:", [v5 count] < 0x65);
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
  v3 = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 filteredContainer];
    v7 = [v6 type] == 1003;
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
  v3 = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 filteredContainer];
    v7 = [v6 type] == 1004;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canAddContacts
{
  v3 = [(CNContactNavigationController *)self dataSource];
  v4 = [v3 filter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CNContactNavigationController *)self dataSource];
    v6 = [v5 filter];
    v7 = ([v6 isServerFilter] & 1) == 0 && objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0) == 3;
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

- (void)setUpMenuBarWithBuilder:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DE0C0];
  v4 = a3;
  [v4 removeMenuForIdentifier:v3];
  v5 = MEMORY[0x1E69DCBA0];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"ADD_CONTACT_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v35 = [v5 commandWithTitle:v7 image:0 action:sel_addContact_ input:@"n" modifierFlags:0x100000 propertyList:0];

  v8 = MEMORY[0x1E69DCC60];
  v38[0] = v35;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v10 = [v8 menuWithTitle:&stru_1F0CE7398 image:0 identifier:@"ContactsAppMenuBarFileSubMenuIdentifier" options:1 children:v9];
  [v4 insertChildMenu:v10 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE150]];

  v11 = MEMORY[0x1E69DCBA0];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"EDIT_CONTACT_MENUBAR" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [v11 commandWithTitle:v13 image:0 action:sel_toggleEditContact_ input:@"l" modifierFlags:0x100000 propertyList:0];

  v15 = MEMORY[0x1E69DCC60];
  v37 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v17 = [v15 menuWithTitle:&stru_1F0CE7398 image:0 identifier:@"ContactsAppMenuBarEditSubMenuIdentifier" options:1 children:v16];
  [v4 insertChildMenu:v17 atEndOfMenuForIdentifier:*MEMORY[0x1E69DE0F8]];

  [v4 removeMenuForIdentifier:*MEMORY[0x1E69DE118]];
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
  [v4 insertSiblingMenu:v34 afterMenuForIdentifier:*MEMORY[0x1E69DE230]];
}

- (id)userActivityRepresentingGroupsView
{
  v2 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
  v3 = [v2 userActivity];

  return v3;
}

- (id)userActivityRepresentingCurrentlyDisplayedContact
{
  v2 = [(CNContactNavigationController *)self presentedContactViewController];
  v3 = [v2 contentViewController];
  v4 = [v3 userActivity];

  return v4;
}

- (void)notifyOtherFacebookContactsAlertDidSelectAction
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0];

  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0 userInfo:0 deliverImmediately:1];
}

- (void)otherFacebookContactsAlertDidSelectActionWithNotification:(id)a3
{
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0];

  v5 = [(CNContactNavigationController *)self facebookContactsAlertController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  [(CNContactNavigationController *)self setFacebookContactsAlertController:0];
}

- (void)observeOtherFacebookContactsAlert
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 addObserver:self selector:sel_otherFacebookContactsAlertDidSelectActionWithNotification_ name:@"com.apple.ContactsUI.UserSelectedFacebookAction" object:0 suspensionBehavior:4];
}

- (void)checkForFacebookContactsWithDelay:(double)a3 allowAlert:(BOOL)a4
{
  v7 = [(CNContactNavigationController *)self backgroundScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__CNContactNavigationController_checkForFacebookContactsWithDelay_allowAlert___block_invoke;
  v9[3] = &unk_1E74E4768;
  v9[4] = self;
  v10 = a4;
  v8 = [v7 afterDelay:v9 performBlock:a3];
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

- (void)toggleEditContact:(id)a3
{
  v4 = [(CNContactNavigationController *)self presentedContactViewController];

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self presentedContactViewController];
    [v5 toggleEditing];
  }
}

- (void)toggleGroupsPanel:(id)a3
{
  v7 = [(CNContactNavigationController *)self contactStyle];
  if ([v7 usesInsetPlatterStyle])
  {
    v4 = [(CNContactNavigationController *)self shouldShowAccountsAndGroups];

    if (!v4)
    {
      return;
    }

    v5 = [(CNContactNavigationController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = [(CNContactNavigationController *)self delegate];
    [v7 toggleGroupsPanel];
  }
}

- (BOOL)shouldFlipDirectionWhenChangingSelectionWithKey:(id)a3
{
  v3 = a3;
  v4 = [v3 input];
  if ([v4 isEqualToString:*MEMORY[0x1E69DDF10]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 input];
    v5 = [v6 isEqualToString:*MEMORY[0x1E69DDF28]];
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

- (void)selectPreviousContact:(id)a3
{
  v4 = [(CNContactNavigationController *)self shouldFlipDirectionWhenChangingSelectionWithKey:a3];
  v9 = [(CNContactNavigationController *)self contactListViewController];
  v5 = [v9 visibleListViewController];
  v6 = [v5 collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 firstObject];
  if (v4)
  {
    [(CNContactNavigationController *)self showCardForContactAfterIndexPath:v8];
  }

  else
  {
    [(CNContactNavigationController *)self showCardForContactBeforeIndexPath:v8];
  }
}

- (void)selectNextContact:(id)a3
{
  v4 = [(CNContactNavigationController *)self shouldFlipDirectionWhenChangingSelectionWithKey:a3];
  v9 = [(CNContactNavigationController *)self contactListViewController];
  v5 = [v9 visibleListViewController];
  v6 = [v5 collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 firstObject];
  if (v4)
  {
    [(CNContactNavigationController *)self showCardForContactBeforeIndexPath:v8];
  }

  else
  {
    [(CNContactNavigationController *)self showCardForContactAfterIndexPath:v8];
  }
}

- (id)targetContainerForNewContactWithTargetGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    v6 = [v4 identifier];
    v7 = [v5 containerForGroupIdentifier:v6];
LABEL_3:

    goto LABEL_4;
  }

  v9 = [(CNContactNavigationController *)self nonServerDataSource];
  if (v9)
  {
    v5 = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    v10 = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v5 = v11;
  }

  if (v5)
  {
    v12 = [v5 filter];
    v13 = [v12 containerIdentifiers];
    v6 = [v13 anyObject];

    if (v6)
    {
      v14 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
      v7 = [v14 containerForContainerIdentifier:v6];
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
  v3 = [(CNContactNavigationController *)self nonServerDataSource];
  if (v3)
  {
    v4 = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    v5 = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  if (v4)
  {
    v7 = [v4 filteredGroup];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)targetGroupForNewContact
{
  v3 = [(CNContactNavigationController *)self contactListViewController];
  v4 = [v3 collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 count];

  v7 = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];

  if (!v7 || v6)
  {
    v10 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  }

  else
  {
    v8 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    v9 = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];
    v10 = [v8 groupForGroupIdentifier:v9];
  }

  return v10;
}

- (void)executeAddContact
{
  [(CNContactNavigationController *)self addContact:0 animated:1];
  v3 = [(CNContactNavigationController *)self activityManager];
  [v3 publishRequestToCreateContact:0];
}

- (id)allContactIdentifiers
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(CNContactNavigationController *)self nonServerDataSource];
  if (v4)
  {
    v5 = [(CNContactNavigationController *)self nonServerDataSource];
  }

  else
  {
    objc_opt_class();
    v6 = [(CNContactNavigationController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  if (v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v5 contacts];
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
          v13 = v5;
          v14 = [v5 completeContactFromContact:v11 fromMainStoreOnly:0 keysToFetch:v12];

          v15 = [v14 identifier];
          [v3 addObject:v15];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v16 = [v14 linkedContacts];
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v26 + 1) + 8 * j) identifier];
                [v3 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v18);
          }

          v5 = v13;
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v6 = [(CNContactNavigationController *)self delegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactNavigationController *)self delegate];
    [v8 showContactList];
  }
}

- (void)presentAddToGroupPickerWithSourceView:(id)a3
{
  v37 = a3;
  v4 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v4 setDelegate:self];
  [(CNContactPickerViewController *)v4 setMode:2];
  v5 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
  v6 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  v7 = [(CNContactNavigationController *)self managedConfiguration];
  v8 = [v5 mdmUnauthorizedContactIdentifiersForTargetGroup:v6 withManagedConfiguration:v7];

  v9 = MEMORY[0x1E696AE18];
  v10 = [(CNContactNavigationController *)self allContactIdentifiers];
  v11 = [v10 allObjects];
  v12 = [v8 allObjects];
  v13 = [v9 predicateWithFormat:@"!(identifier IN %@) AND !(identifier in %@)", v11, v12];
  [(CNContactPickerViewController *)v4 setPredicateForEnablingContact:v13];

  [(CNContactPickerViewController *)v4 setShouldAllowSearchForMultiSelect:1];
  [(CNContactPickerViewController *)v4 setShouldDisplayAddNewContactRow:1];
  [(CNContactPickerViewController *)v4 setOnlyRealContacts:1];
  v14 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  v15 = [v14 identifier];
  [(CNContactPickerViewController *)v4 setTargetGroupIdentifier:v15];

  v16 = *MEMORY[0x1E6996570];
  v17 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
  v18 = [v17 name];
  LODWORD(v16) = (*(v16 + 16))(v16, v18);

  if (v16)
  {
    v19 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
    v20 = [v19 name];

    if ([CNUIStringUtilities composedCharacterCountForString:v20]>= 31)
    {
      v21 = [v20 _cn_truncateAtLength:30 addEllipsisIfTrunctated:1];

      v20 = v21;
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = CNContactsUIBundle();
    v24 = [v23 localizedStringForKey:@"ADD_CONTACTS_TO_GROUP_PROMPT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v25 = [v22 localizedStringWithFormat:v24, v20];
    [(CNContactPickerViewController *)v4 setPrompt:v25];
  }

  v26 = [MEMORY[0x1E69966E8] currentEnvironment];
  v27 = [v26 featureFlags];
  v28 = [v27 isFeatureEnabled:29];

  if (v28)
  {
    [(CNContactPickerViewController *)v4 setModalPresentationStyle:-2];
  }

  else
  {
    [(CNContactPickerViewController *)v4 setModalPresentationStyle:7];
    if (v37)
    {
      v29 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [v29 setSourceView:v37];

      v30 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [v30 setDelegate:self];
    }

    else
    {
      v31 = [(CNContactNavigationController *)self addContactBarButtonItem];
      v32 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [v32 setBarButtonItem:v31];

      v30 = [(CNContactPickerViewController *)v4 popoverPresentationController];
      [v30 setPermittedArrowDirections:1];
    }

    v33 = +[CNUIContactsEnvironment currentEnvironment];
    v34 = [v33 runningInContactsAppOniPad];

    if (v34)
    {
      v35 = [(CNContactNavigationController *)self view];
      [v35 frame];
      [(CNContactPickerViewController *)v4 setPreferredContentSize:v36, 812.0];
    }
  }

  [(CNContactNavigationController *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)shouldShowAddToGroupPicker
{
  objc_opt_class();
  v3 = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 filterShowsSingleGroup];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)editLimitedAccess
{
  v3 = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self delegate];
    [v5 contactNavigationControllerShouldEditLimitedAccess:self];
  }
}

- (void)addContact:(id)a3
{
  v4 = [(CNContactNavigationController *)self splitViewController];

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self splitViewController];
    v6 = [v5 view];
    [v6 endEditing:1];
  }

  v7 = [(CNContactNavigationController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactNavigationController *)self delegate];
    v10 = [v9 contactNavigationControllerShouldAddNewContact:self];

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

- (void)deleteContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  [v5 deleteContact:v4];
}

- (void)cancelSearch:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  [v5 cancelSearch:v4];
}

- (void)beginSearch:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  [v5 beginSearch:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CNContactNavigationController *)self firstResponder];
  if (v7 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (isEqual = sel_isEqual(a3, sel_selectNextContact_), v9 = sel_isEqual(a3, sel_selectPreviousContact_), v10 = 0, !isEqual) && !v9)
  {
    v12.receiver = self;
    v12.super_class = CNContactNavigationController;
    v10 = [(CNContactNavigationController *)&v12 canPerformAction:a3 withSender:v6];
  }

  return v10;
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v7.receiver = self;
  v7.super_class = CNContactNavigationController;
  v5 = [(CNContactNavigationController *)&v7 popViewControllerAnimated:v3];

  return v5;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E6979518];
  v7 = a3;
  [v6 setFrameStallSkipRequest:1];
  v8.receiver = self;
  v8.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v8 pushViewController:v7 animated:v4];
}

- (void)searchForString:(id)a3 makeSearchBarFirstResponder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CNContactNavigationController *)self showAllContactsListAnimated:0];
  v7 = [(CNContactNavigationController *)self contactListViewController];
  [v7 startSearchingForString:v6 setSearchBarAsFirstResponder:v4];
}

- (void)showAllContactsListAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  if ([v5 isViewLoaded])
  {
    v6 = [(CNContactNavigationController *)self contactListViewController];
    v7 = [v6 view];
    v8 = [v7 window];

    if (v8)
    {
      return;
    }
  }

  else
  {
  }

  v9 = [(CNContactNavigationController *)self viewControllers];
  v10 = [(CNContactNavigationController *)self contactListViewController];
  v11 = [v9 containsObject:v10];

  if (v11)
  {

    [(CNContactNavigationController *)self popToContactListAndSaveChanges:1 animated:v3];
  }

  else
  {
    v12 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [v12 selectAllContacts];

    v13 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self accountsAndGroupsViewControllerDidFinish:v13];
  }
}

- (void)popToContactListAndSaveChanges:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CNContactNavigationController *)self addContactPresenter];
  v8 = [v7 presentedViewController];
  if (v8)
  {
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = [(CNContactNavigationController *)self reusableContactViewController];
    v13 = [v12 contentViewController];
    [v13 saveChanges];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_12:
    v14 = [(CNContactNavigationController *)self contactListViewController];
    v15 = [(CNContactNavigationController *)self popToViewController:v14 animated:v4];

    goto LABEL_13;
  }

  v8 = [(CNContactNavigationController *)self presentedViewController];
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 viewControllers];
    v10 = [v9 objectAtIndexedSubscript:0];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 contentViewController];
        [v11 saveChanges];
      }
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__CNContactNavigationController_popToContactListAndSaveChanges_animated___block_invoke;
  v16[3] = &unk_1E74E4768;
  v16[4] = self;
  v17 = v4;
  [v8 dismissViewControllerAnimated:v4 completion:v16];
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
  v2 = [(CNContactNavigationController *)self addContactPresenter];
  objc_opt_class();
  v3 = [v2 presentedViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    objc_opt_class();
    v6 = [v5 topViewController];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  width = a3.width;
  v10.receiver = self;
  v10.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v6 = [(CNContactNavigationController *)self navigationBar];
  v7 = width / 3.0;
  [v6 _setRequestedMaxBackButtonWidth:v7];

  v8 = [(CNContactNavigationController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 _setRequestedMaxBackButtonWidth:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  v6 = [(CNContactNavigationController *)self tipKitContext];
  [v5 setTipKitContext:v6];

  v14.receiver = self;
  v14.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v14 viewWillAppear:v3];
  [(CNContactNavigationController *)self setUpLargeTitles];
  [(CNContactNavigationController *)self updateNavigationButtonsAnimated:0 viewWillAppear:1];
  v7 = [(CNContactNavigationController *)self navigationBar];
  v8 = [(CNContactNavigationController *)self view];
  [v8 bounds];
  [v7 _setRequestedMaxBackButtonWidth:v9 / 3.0];

  v10 = [(CNContactNavigationController *)self navigationController];
  v11 = [v10 navigationBar];
  v12 = [(CNContactNavigationController *)self view];
  [v12 bounds];
  [v11 _setRequestedMaxBackButtonWidth:v13 / 3.0];
}

- (BOOL)accountsAndGroupsViewController:(id)a3 shouldEnableItemWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CNContactNavigationController *)self contactPickerTargetGroupIdentifier];
  v7 = [v5 isEqualToString:v6];

  return v7 ^ 1;
}

- (void)accountsAndGroupsViewControllerDidGoBack:(id)a3
{
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    [v6 contactNavigationControllerDidGoBack:self];
  }
}

- (void)accountsAndGroupsViewControllerDidCancel:(id)a3
{
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    [v6 contactNavigationControllerDidCancel:self];
  }
}

- (void)accountsAndGroupsViewControllerDidUpdateSelection:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 dataSource];
  v7 = [v6 filter];

  v8 = [v5 dataSource];

  v9 = [v8 serverFilter];

  if (!v9)
  {
    v22 = [(CNContactNavigationController *)self contactListViewController];
    [v22 cancelSearch:0];

    v23 = [(CNContactNavigationController *)self nonServerDataSource];

    if (v23)
    {
      v17 = [(CNContactNavigationController *)self nonServerDataSource];
      v24 = [(CNContactListViewController *)self->_contactListViewController dataSource];
      v25 = [v24 contactFormatter];
      [(CNContactAsyncDataSource *)v17 setContactFormatter:v25];

      [(CNContactListViewController *)self->_contactListViewController setDataSource:v17];
    }

    else
    {
      v17 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    }

    v26 = [(CNContactAsyncDataSource *)v17 filter];
    v27 = [v26 limitedAccessIdentifiers];
    [v7 setLimitedAccessIdentifiers:v27];

    v28 = [(CNContactAsyncDataSource *)v17 filter];
    [v7 setLimitedAccessFilterMode:{objc_msgSend(v28, "limitedAccessFilterMode")}];

    [(CNContactAsyncDataSource *)v17 setFilter:v7];
    v29 = [(CNContactAsyncDataSource *)v17 delegate];
    if (!v29)
    {
      goto LABEL_13;
    }

    v30 = v29;
    if (([(CNContactListViewController *)self->_contactListViewController isViewLoaded]& 1) != 0)
    {
      v31 = [(CNContactListViewController *)self->_contactListViewController view];
      v32 = [v31 window];

      if (!v32)
      {
LABEL_13:
        [(CNContactAsyncDataSource *)v17 reload];
        [(CNContactListViewController *)self->_contactListViewController setDataSource:v17];
LABEL_16:
        v33 = [(CNContactAsyncDataSource *)v17 store];
        [v7 saveToPreferencesWithContactStore:v33];

        [(CNContactNavigationController *)self setNonServerDataSource:0];
        goto LABEL_17;
      }
    }

    else
    {
    }

    [(CNContactAsyncDataSource *)v17 reloadAsynchronously];
    goto LABEL_16;
  }

  v10 = [(CNContactNavigationController *)self nonServerDataSource];

  if (!v10)
  {
    v11 = [(CNContactNavigationController *)self dataSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [(CNContactNavigationController *)self dataSource];
      [v37 handleFailureInMethod:a2 object:self file:@"CNContactNavigationController.m" lineNumber:1581 description:{@"Datasource %@ is not of expected type: CNContactStoreDataSource", v38}];
    }

    v13 = [(CNContactNavigationController *)self dataSource];
    [(CNContactNavigationController *)self setNonServerDataSource:v13];
  }

  v14 = [CNContactAsyncDataSource alloc];
  v15 = [(CNContactNavigationController *)self dataSource];
  v16 = [v15 store];
  v17 = [(CNContactAsyncDataSource *)v14 initWithStore:v16];

  v18 = [(CNContactListViewController *)self->_contactListViewController dataSource];
  v19 = [v18 contactFormatter];
  [(CNContactAsyncDataSource *)v17 setContactFormatter:v19];

  [(CNContactAsyncDataSource *)v17 setFilter:v9];
  v20 = +[CNContactViewController descriptorForRequiredKeys];
  v39[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  [(CNContactAsyncDataSource *)v17 setAllKeysToFetchForTransientContacts:v21];

  [(CNContactAsyncDataSource *)v17 reload];
  [(CNContactListViewController *)self->_contactListViewController setDataSource:v17];
LABEL_17:

  v34 = [(CNContactNavigationController *)self delegate];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    v36 = [(CNContactNavigationController *)self delegate];
    [v36 contactNavigationControllerClearContactSelection:self];
  }

  [(CNContactListViewController *)self->_contactListViewController setDelegate:self];
  [(CNContactNavigationController *)self updateNavigationButtonsAnimated:0 viewWillAppear:1];
}

- (void)accountsAndGroupsViewControllerDidFinish:(id)a3
{
  v15 = a3;
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    [v6 showContactList];
  }

  else
  {
    v7 = [(CNContactNavigationController *)self contactListViewController];
    if ([v7 isViewLoaded])
    {
      v8 = [(CNContactNavigationController *)self contactListViewController];
      v9 = [v8 view];
      v10 = [v9 window];

      if (v10)
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

    v6 = [(CNContactNavigationController *)self contactListViewController];
    [(CNContactNavigationController *)self pushViewController:v6 animated:1];
  }

LABEL_11:
  v12 = [v15 dataSource];
  v13 = [v12 serverFilter];

  if (v13)
  {
    v14 = [(CNContactNavigationController *)self contactListViewController];
    [v14 startSearching];
  }
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v10 = a4;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  [v5 reloadContacts];

  v6 = [(CNContactNavigationController *)self contactListViewController];
  [v6 setDidDeleteContact:1];

  v7 = [(CNContactNavigationController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactNavigationController *)self delegate];
    [v9 contactNavigationController:self didDeleteContact:v10];
  }
}

- (void)contactViewController:(id)a3 didCompleteWithNewContactFromPickerNewContactRow:(id)a4
{
  v14 = a4;
  v6 = [a3 parentViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];

  if (v14)
  {
    v7 = [(CNContactNavigationController *)self contactListViewController];
    v8 = [v7 collectionView];
    v9 = [v8 indexPathsForSelectedItems];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(CNContactNavigationController *)self contactListViewController];
      [v11 selectContact:v14 animated:0 scrollPosition:1];
    }

    else
    {
      v12 = [(CNContactNavigationController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_7;
      }

      v11 = [(CNContactNavigationController *)self delegate];
      [v11 contactNavigationController:self didCompleteWithNewContact:v14];
    }
  }

LABEL_7:
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(CNContactNavigationController *)self contactListViewController];
  v8 = [v7 shouldDisplayAddNewContactRow];

  v9 = [v15 mode];
  v10 = v9;
  if (v8 && v9 == 3)
  {
    [(CNContactNavigationController *)self contactViewController:v15 didCompleteWithNewContactFromPickerNewContactRow:v6];
  }

  else
  {
    v11 = [v15 mode];
    if (v6 && v11 == 3)
    {
      v12 = [(CNContactNavigationController *)self contactListViewController];
      [v12 reloadContacts];

      [(CNContactNavigationController *)self showCardForContact:v6 resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:0 animated:1];
      v13 = [(CNContactNavigationController *)self contactListViewController];
      [v13 selectContact:v6 animated:1 scrollPosition:0];
    }

    if (v10 == 3 || ![(CNContactNavigationController *)self allowsCardEditing])
    {
      v14 = [v15 parentViewController];
      [v14 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v5 = a4;
  v6 = [(CNContactNavigationController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactNavigationController *)self delegate];
    v9 = [v8 contactNavigationController:self shouldPerformDefaultActionForContactProperty:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)didResetLimitedAccessSelectionTo:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  [v5 didResetLimitedAccessSelectionTo:v4];
}

- (void)didUpdateLimitedAccessSelection:(id)a3
{
  v14 = a3;
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    [v6 contactNavigationController:self didUpdateLimitedAccessSelection:v14];

    if ([(CNContactNavigationController *)self limitedAccessPickerType]== 2)
    {
      v7 = [(CNContactNavigationController *)self contactListViewController];
      v8 = [v7 navigationItem];
      v9 = [v8 rightBarButtonItems];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = [v14 count];
      v12 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
      v13 = [v12 contacts];
      [v10 setEnabled:{v11 != objc_msgSend(v13, "count")}];
    }
  }
}

- (BOOL)isAddContactButtonShowing
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:29])
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

- (id)nextResponderForContactListViewController:(id)a3
{
  if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
  {
    v4 = [(CNContactNavigationController *)self presentedContactViewController];
    v5 = [v4 contentViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contactPicker:(id)a3 didCompleteWithNewContact:(id)a4
{
  if (a4)
  {
    v7 = a4;
    v5 = [(CNContactNavigationController *)self contactListViewController];
    [v5 reloadContacts];

    v6 = [(CNContactNavigationController *)self contactListViewController];
    [v6 selectContact:v7 animated:1 scrollPosition:1];

    [(CNContactNavigationController *)self showCardForContact:v7 animated:1];
  }
}

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v25 = a4;
  if ([v25 count])
  {
    v6 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];

    if (v6)
    {
      v23 = [(CNContactNavigationController *)self parentGroupForCurrentFilter];
      if (v23)
      {
        v7 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
        v8 = [v23 identifier];
        v26 = [v7 containerForGroupIdentifier:v8];

        if (v26)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v11 = v25;
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
                v16 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
                v17 = [v16 isAuthorizedToAddContact:v15 toContainer:v26 ignoresParentalRestrictions:0];

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
            v20 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
            v21 = [v20 addContacts:v9 toGroup:v23 inContainer:v26 moveWasAuthorized:1];
          }

          if (((*(v19 + 16))(v19, v10) & 1) == 0)
          {
            objc_initWeak(&location, self);
            v22 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __65__CNContactNavigationController_contactPicker_didSelectContacts___block_invoke;
            v27[3] = &unk_1E74E34C8;
            objc_copyWeak(&v31, &location);
            v28 = v10;
            v29 = v23;
            v30 = v26;
            [v22 authorizeForViewController:self sender:self animated:1 completionBlock:v27];

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

- (void)contactListAddContactButtonTapped:(id)a3
{
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    v7 = [v6 contactNavigationControllerShouldAddNewContact:self];

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

- (void)dataSourceChangedForContactListViewController:(id)a3
{
  if (([a3 isHandlingSearch] & 1) == 0)
  {
    [(CNContactNavigationController *)self refreshMailButtonEnabled];
    v4 = [(CNContactNavigationController *)self sharedNavigationBar];

    if (v4)
    {
      v5 = [(CNContactNavigationController *)self isAcceptedIntroductionsDataSource];
      v6 = [(CNContactNavigationController *)self sharedNavigationBar];
      [v6 configureAddButtonVisibility:v5];

      v7 = [(CNContactNavigationController *)self sharedNavigationBar];
      [v7 configureEditButtonVisibility:v5];
    }
  }
}

- (void)contactListViewController:(id)a3 shouldPresentContact:(id)a4 shouldScrollToContact:(BOOL)a5
{
  v5 = a5;
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
  v8 = a4;

  [(CNContactNavigationController *)self showCardForContact:v8 resetFilter:0 resetSearch:1 fallbackToFirstContact:0 scrollToContact:v5 animated:1];
}

- (void)contactListViewController:(id)a3 updatedSelectedContact:(id)a4
{
  v14 = a4;
  v5 = [(CNContactNavigationController *)self reusableContactViewController];
  v6 = [v5 view];
  v7 = [v6 window];

  v8 = [(CNContactNavigationController *)self reusableContactViewController];
  v9 = [v8 contact];
  v10 = [v9 identifier];
  v11 = [v14 identifier];
  v12 = [v10 isEqual:v11];

  if (!v7 || (v12 & 1) == 0)
  {
    LOWORD(v13) = 1;
    [(CNContactNavigationController *)self showCardForContact:v14 resetFilter:0 resetSearch:0 fallbackToFirstContact:0 scrollToContact:0 animated:1 dismissingPresentedController:v13 shouldHideContactListIfNeeded:?];
  }
}

- (void)contactListViewController:(id)a3 didSelectContact:(id)a4 shouldScrollToContact:(BOOL)a5
{
  v8 = a4;
  if (self->_selectedContact == v8)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&self->_selectedContact, a4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__CNContactNavigationController_contactListViewController_didSelectContact_shouldScrollToContact___block_invoke;
  aBlock[3] = &unk_1E74E34A0;
  aBlock[4] = self;
  v9 = v8;
  v24 = v9;
  v25 = a5;
  v10 = _Block_copy(aBlock);
  v11 = [(CNContactNavigationController *)self contactListViewController];
  v12 = [v11 isSearching];

  if (v12)
  {
    v13 = [(CNContactNavigationController *)self contactListViewController];
    v14 = [v13 allowsMultiSelection];

    v15 = [(CNContactNavigationController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if ((v14 & 1) == 0)
      {
        v17 = [(CNContactNavigationController *)self delegate];
        v18 = [v17 contactNavigationControllerShouldDismissSearchOnSelection:self];

        if ((v18 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_9;
    }

    v19 = [(CNContactNavigationController *)self contactListViewController];
    -[CNContactNavigationController dismissSearchAndSelectContact:allowsMultiSelection:](self, "dismissSearchAndSelectContact:allowsMultiSelection:", v9, [v19 allowsMultiSelection]);
  }

LABEL_9:
  v20 = [(CNContactNavigationController *)self transitionCoordinator];
  if (v20)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__CNContactNavigationController_contactListViewController_didSelectContact_shouldScrollToContact___block_invoke_2;
    v21[3] = &unk_1E74E3478;
    v22 = v10;
    [v20 animateAlongsideTransition:0 completion:v21];
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

- (BOOL)contactSuggestionViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNContactNavigationController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CNContactNavigationController *)self delegate];
    v14 = [v13 contactSuggestionViewController:v8 shouldSelectContact:v9 atIndexPath:v10];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)contactListViewController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNContactNavigationController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CNContactNavigationController *)self delegate];
    v12 = [v11 contactNavigationController:self shouldSelectContact:v7 atIndexPath:v8];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)contactListViewController:(id)a3 canSelectContact:(id)a4
{
  v5 = a4;
  v6 = [(CNContactNavigationController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactNavigationController *)self delegate];
    v9 = [v8 contactNavigationController:self canSelectContact:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)resetContactViewController
{
  v3 = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self delegate];

    if (v5 != self)
    {
      v6 = [(CNContactNavigationController *)self delegate];
      [v6 resetContactViewController];
    }
  }
}

- (void)startEditingPresentedContact
{
  v3 = [(CNContactNavigationController *)self presentedContactViewController];

  if (v3)
  {
    v4 = [(CNContactNavigationController *)self presentedContactViewController];
    [v4 setEditing:1 animated:1];
  }
}

- (id)currentlyDisplayedContact
{
  v3 = [(CNContactNavigationController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactNavigationController *)self delegate];
    v6 = [v5 displayedContact];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)showCardForContactIfPossible:(id)a3
{
  v10 = a3;
  v4 = [(CNContactNavigationController *)self isPresentedContactViewControllerVisible];
  v5 = v10;
  if (v4)
  {
    v6 = [(CNContactNavigationController *)self presentedViewController];
    if (v6)
    {

LABEL_9:
      v5 = v10;
      goto LABEL_10;
    }

    v7 = [(CNContactNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CNContactNavigationController *)self delegate];
      v9 = [v8 contactNavigationControllerShouldShowContactsOnKeyCommands:self];

      v5 = v10;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v4 = [(CNContactNavigationController *)self showCardForContact:v10 resetFilter:0 resetSearch:1 fallbackToFirstContact:1 scrollToContact:1 animated:0];
    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)isPresentedContactViewControllerVisible
{
  v2 = [(CNContactNavigationController *)self presentedContactViewController];
  v3 = [v2 parentViewController];
  v4 = v3 != 0;

  return v4;
}

- (void)showCardForContactBeforeIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  v6 = [v5 visibleListViewController];
  v7 = [v6 globalIndexForCollectionViewIndexPath:v4];

  if (!v4 || v7)
  {
    v8 = !v7 || v7 == 0x7FFFFFFFFFFFFFFFLL;
    v9 = v8 || v4 == 0;
    v10 = v9 ? 0 : v7 - 1;
    v11 = [(CNContactNavigationController *)self dataSource];
    v12 = [v11 contacts];
    v13 = [v12 count];

    if (v10 < v13)
    {
      v16 = [(CNContactNavigationController *)self dataSource];
      v14 = [v16 contacts];
      v15 = [v14 objectAtIndexedSubscript:v10];
      [(CNContactNavigationController *)self showCardForContactIfPossible:v15];
    }
  }
}

- (void)showCardForContactAfterIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNContactNavigationController *)self contactListViewController];
  v6 = [v5 visibleListViewController];
  v7 = [v6 globalIndexForCollectionViewIndexPath:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = [(CNContactNavigationController *)self dataSource];
  v11 = [v10 contacts];
  v12 = [v11 count];

  if (v9 < v12)
  {
    v15 = [(CNContactNavigationController *)self dataSource];
    v13 = [v15 contacts];
    v14 = [v13 objectAtIndexedSubscript:v9];
    [(CNContactNavigationController *)self showCardForContactIfPossible:v14];
  }
}

- (void)_cnui_presentViewController:(id)a3 animated:(BOOL)a4 dismissingPresentedController:(BOOL)a5 shouldHideContactListIfNeeded:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  objc_opt_class();
  v28 = v10;
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
  v13 = [(CNContactNavigationController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  v15 = [(CNContactNavigationController *)self delegate];
  v16 = v15;
  if (v14)
  {
    v17 = [v15 contactNavigationController:self presentViewController:v28 animated:v8 dismissingPresentedController:v7 shouldHideContactListIfNeeded:v6];
  }

  else
  {
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
      {
        v23 = [(CNContactNavigationController *)self presentedViewController];

        if (v23)
        {
          v24 = [(CNContactNavigationController *)self presentedViewController];
          [v24 dismissViewControllerAnimated:0 completion:0];
        }

        v20 = [v28 isViewLoaded];
        v22 = v28;
        if ((v20 & 1) == 0)
        {
          goto LABEL_23;
        }

        v19 = 1;
      }

      else
      {
        v25 = [v28 isViewLoaded];
        v22 = v28;
        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }

        v19 = 0;
      }

      v21 = v22;
      goto LABEL_20;
    }

    v16 = [(CNContactNavigationController *)self delegate];
    v17 = [v16 contactNavigationController:self presentViewController:v28 animated:v8];
  }

  v19 = v17;

  v20 = [v28 isViewLoaded];
  if ((v20 & 1) == 0)
  {
    v22 = v28;
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_22:
    v20 = [(CNContactNavigationController *)self pushViewController:v28 animated:v8];
    v22 = v28;
    goto LABEL_23;
  }

  v21 = v28;
LABEL_20:
  v26 = [v21 view];
  v27 = [v26 window];

  v22 = v28;
  if ((v19 & 1) == 0 && !v27)
  {
    goto LABEL_22;
  }

LABEL_23:

  MEMORY[0x1EEE66BB8](v20, v22);
}

- (id)reuseableContactViewControllerConfiguredForContact:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactNavigationController *)self reusableContactViewController];
  if (v7)
  {
    v8 = v7;
    if ([(CNContactViewController *)v7 isEditing])
    {
      v9 = [(CNContactViewController *)v8 contentViewController];
      [v9 saveChanges];

      v10 = [(CNContactViewController *)v8 contentViewController];
      [v10 setEditing:0 animated:0];

      [(CNContactViewController *)v8 setEditing:0 animated:0];
    }

    [(CNContactViewController *)v8 setContact:v6 additionalContact:0 mode:a4];
  }

  else
  {
    v8 = [[CNContactViewController alloc] initWithMode:a4];
    [(CNContactViewController *)v8 setContact:v6];
    v11 = [(CNContactNavigationController *)self sharedNavigationBar];
    [(CNContactViewController *)v8 setSharedNavigationBar:v11];

    [(CNContactNavigationController *)self setReusableContactViewController:v8];
  }

  return v8;
}

- (void)showCardForContact:(id)a3 resetFilter:(BOOL)a4 resetSearch:(BOOL)a5 fallbackToFirstContact:(BOOL)a6 scrollToContact:(BOOL)a7 animated:(BOOL)a8 dismissingPresentedController:(BOOL)a9 shouldHideContactListIfNeeded:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v44[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
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

  if (v13)
  {
    v18 = [(CNContactNavigationController *)self contactListViewController];
    v19 = [v18 dataSource];
    [v19 setFilter:0];
    goto LABEL_7;
  }

  if (v15 && v12)
  {
    v20 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    v18 = [v20 indexPathForContact:v15];

    if (v18)
    {
      goto LABEL_11;
    }

    v19 = v15;
    v15 = 0;
LABEL_7:

LABEL_11:
  }

  if (!v15 && v12)
  {
    v21 = [(CNContactListViewController *)self->_contactListViewController dataSource];
    v22 = [v21 contacts];
    v15 = [v22 firstObject];

    if (v15)
    {
LABEL_17:
      v25 = +[CNContactViewController descriptorForRequiredKeys];
      v44[0] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      v27 = [v15 areKeysAvailable:v26];

      if ((v27 & 1) == 0)
      {
        v28 = [(CNContactNavigationController *)self dataSource];
        v29 = +[CNContactViewController descriptorForRequiredKeys];
        v43 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v31 = [v28 completeContactFromContact:v15 fromMainStoreOnly:0 keysToFetch:v30];

        v15 = v31;
      }

      if (v11)
      {
        v32 = [(CNContactListViewController *)self->_contactListViewController visibleListViewController];
        [v32 selectContact:v15 animated:v10 scrollPosition:0];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke;
      aBlock[3] = &unk_1E74E3450;
      aBlock[4] = self;
      v15 = v15;
      v38 = v15;
      v39 = v10;
      v40 = a9;
      v41 = a10;
      v33 = _Block_copy(aBlock);
      v34 = [(CNContactNavigationController *)self transitionCoordinator];
      if (v34)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __184__CNContactNavigationController_showCardForContact_resetFilter_resetSearch_fallbackToFirstContact_scrollToContact_animated_dismissingPresentedController_shouldHideContactListIfNeeded___block_invoke_3;
        v35[3] = &unk_1E74E3478;
        v36 = v33;
        [v34 animateAlongsideTransition:0 completion:v35];
      }

      else
      {
        v33[2](v33);
      }

      goto LABEL_25;
    }

    v23 = [(CNContactListViewController *)self->_contactListViewController originalDataSource];
    v24 = [v23 contacts];
    v15 = [v24 firstObject];
  }

  if (v15)
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

- (void)showCardForContact:(id)a3 resetFilter:(BOOL)a4 resetSearch:(BOOL)a5 fallbackToFirstContact:(BOOL)a6 scrollToContact:(BOOL)a7 animated:(BOOL)a8 dismissingPresentedController:(BOOL)a9
{
  BYTE1(v9) = 1;
  LOBYTE(v9) = a9;
  [(CNContactNavigationController *)self showCardForContact:a3 resetFilter:a4 resetSearch:a5 fallbackToFirstContact:a6 scrollToContact:a7 animated:a8 dismissingPresentedController:v9 shouldHideContactListIfNeeded:?];
}

- (void)dismissSearchAndSelectContact:(id)a3 allowsMultiSelection:(BOOL)a4
{
  v6 = a3;
  v7 = [(CNContactNavigationController *)self contactListViewController];
  [v7 cancelSearch:0];

  if (!a4)
  {
    v8 = [(CNContactNavigationController *)self contactListViewController];
    [v8 deselectAllSelectedIndexPathsAnimated:0];
  }

  v9 = [(CNContactNavigationController *)self contactListViewController];
  [v9 setCellStateSelected:1 forContact:v6 animated:0];

  v11 = [(CNContactNavigationController *)self contactListViewController];
  v10 = [v6 identifier];

  [v11 scrollTopToContactWithIdentifier:v10 animated:1];
}

- (void)showNewDraftContact:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = [CNContactViewController viewControllerForNewDraftContact:a3];
  v6 = [(CNContactNavigationController *)self contactStore];
  [v14 setContactStore:v6];

  [v14 setDelegate:self];
  v7 = [(CNContactNavigationController *)self prohibitedPropertyKeys];
  [v14 setProhibitedPropertyKeys:v7];

  v8 = [(CNContactNavigationController *)self targetGroupForNewContact];
  v9 = [(CNContactNavigationController *)self targetContainerForNewContactWithTargetGroup:v8];
  [v14 setParentContainer:v9];
  [v14 setParentGroup:v8];
  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  v11 = [(CNContactNavigationController *)self contactStyle];
  v12 = [v11 usesInsetPlatterStyle];

  if ((v12 & 1) == 0)
  {
    [v10 setModalPresentationStyle:3];
  }

  v13 = [(CNContactNavigationController *)self addContactPresenter];
  [v13 presentAddContactViewController:v10 animated:v4];
}

- (void)addContact:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = [CNContactViewController viewControllerForNewContact:a3];
  v6 = [(CNContactNavigationController *)self contactStore];
  [v14 setContactStore:v6];

  [v14 setDelegate:self];
  v7 = [(CNContactNavigationController *)self prohibitedPropertyKeys];
  [v14 setProhibitedPropertyKeys:v7];

  v8 = [(CNContactNavigationController *)self targetGroupForNewContact];
  v9 = [(CNContactNavigationController *)self targetContainerForNewContactWithTargetGroup:v8];
  [v14 setParentContainer:v9];
  [v14 setParentGroup:v8];
  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  v11 = [(CNContactNavigationController *)self contactStyle];
  v12 = [v11 usesInsetPlatterStyle];

  if ((v12 & 1) == 0)
  {
    [v10 setModalPresentationStyle:3];
  }

  v13 = [(CNContactNavigationController *)self addContactPresenter];
  [v13 presentAddContactViewController:v10 animated:v4];
}

- (id)addContactPresenter
{
  v3 = [(CNContactNavigationController *)self parentViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 conformsToProtocol:&unk_1F0DC2190])
  {
    v4 = [(CNContactNavigationController *)self parentViewController];
  }

  else
  {
    v4 = self;
  }

  v5 = v4;

  return v5;
}

- (void)cancel:(id)a3
{
  v4 = [(CNContactNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self delegate];
    [v6 contactNavigationControllerDidCancel:self];
  }
}

- (void)done:(id)a3
{
  v4 = [(CNContactNavigationController *)self contactListViewController];
  v5 = [v4 isSearching];

  if (v5)
  {
    v8 = [(CNContactNavigationController *)self contactListViewController];
    [v8 searchForString:0 animated:1 completionBlock:0];
  }

  else
  {
    v6 = [(CNContactNavigationController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(CNContactNavigationController *)self delegate];
    [v8 contactNavigationControllerDidComplete:self];
  }
}

- (void)presentGroupsViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactNavigationController *)self isSinglePickerOnVisionOS])
  {
    v11 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self pushViewController:v11 animated:1];
  }

  else
  {
    v5 = [(CNContactNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(CNContactNavigationController *)self delegate];
      v7 = [v6 contactNavigationControllerShouldShowGroupsViewController:self];

      if (!v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = [(CNContactNavigationController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v10 = [(CNContactNavigationController *)self popToRootViewControllerAnimated:v3];
      return;
    }

    v11 = [(CNContactNavigationController *)self delegate];
    [v11 showGroupsAnimated:1];
  }
}

- (void)presentGroupsViewController:(id)a3
{
  v4 = [(CNContactNavigationController *)self contactListViewController];
  v5 = [v4 isSearching];

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self contactListViewController];
    [v6 cancelSearch:0];
  }

  [(CNContactNavigationController *)self presentGroupsViewControllerAnimated:1];
}

- (void)clearServerSearchIfNeeded:(id)a3
{
  v4 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  v5 = [v4 serverFilter];

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
    [v6 removeServerFilter];

    v7 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [(CNContactNavigationController *)self accountsAndGroupsViewControllerDidUpdateSelection:v7];

    v8 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [v8 reloadData];
  }
}

- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OKAY" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(CNContactNavigationController *)self presentViewController:v11 animated:v5 completion:0];
}

- (void)mailContacts:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v4 = [(CNContactNavigationController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v7 = [v6 filteredGroup];

  if (v7)
  {
    v8 = MEMORY[0x1E695CD58];
    v9 = [v6 filteredGroup];
    v10 = [v9 identifier];
    v11 = [v8 predicateForContactsInGroupWithIdentifier:v10];
  }

  else
  {
    v16 = [v6 filteredContainer];

    if (!v16)
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
    v9 = [v6 filteredContainer];
    v10 = [v9 identifier];
    v11 = [v17 predicateForContactsInContainerWithIdentifier:v10];
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_15;
  }

  v18 = [(CNContactNavigationController *)self dataSource];
  v19 = [v18 store];
  v20 = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
  v40[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v35 = 0;
  v22 = [v19 unifiedContactsMatchingPredicate:v14 keysToFetch:v21 error:&v35];
  v23 = v35;

  if (v22)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695CEF0]);
    v25 = [v24 mailUrlForContacts:v22 needsEmailAddresses:0];
    if (v25)
    {
      v26 = +[CNUIContactsEnvironment currentEnvironment];
      v27 = [v26 applicationWorkspace];
      v36 = *MEMORY[0x1E6963550];
      v37 = MEMORY[0x1E695E118];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [v27 openSensitiveURLInBackground:v25 withOptions:v28];
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

    v9 = [(CNContactNavigationController *)self dataSource];
    v10 = [v9 contacts];
    -[UIBarButtonItem setEnabled:](self->_mailButtonItem, "setEnabled:", [v10 count] != 0);
  }

  v11 = self->_mailButtonItem;

  return v11;
}

- (void)setManagedConfiguration:(id)a3
{
  v6 = a3;
  if (([(CNManagedConfiguration *)self->_managedConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_managedConfiguration, a3);
    v5 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    [v5 setManagedConfiguration:v6];
  }
}

- (void)setContactPickerTargetGroupIdentifier:(id)a3
{
  v12 = a3;
  if (![(NSString *)self->_contactPickerTargetGroupIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_contactPickerTargetGroupIdentifier, a3);
    v5 = [(CNContactNavigationController *)self groupsAndContainersSaveManager];
    v6 = [v5 acAccountForGroupIdentifier:v12];

    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = [v6 identifier];
      v9 = [v7 setWithObject:v8];
      v10 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
      v11 = [v10 dataSource];
      [v11 setTargetAccountExternalIdentifiers:v9];
    }
  }
}

- (void)updateNavigationButtonsAnimated:(BOOL)a3 viewWillAppear:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CNContactNavigationController *)self visibleViewController];
  v8 = [v7 viewIfLoaded];
  v9 = [v8 window];

  if (v9 || v4)
  {
    v10 = [(CNContactListViewController *)self->_contactListViewController isSearching];

    [(CNContactNavigationController *)self updateNavigationButtonsInSearchMode:v10 animated:v5];
  }
}

- (void)updateLeftNavigationButtonAnimated:(BOOL)a3
{
  v3 = a3;
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
  v6 = [(CNContactNavigationController *)self contactListViewController];
  v7 = [v6 navigationItem];
  [v7 setHidesBackButton:1];

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
    v12 = [(CNContactNavigationController *)self contactListViewController];
    v13 = [v12 navigationItem];
    [v13 setHidesBackButton:0];

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
  v14 = [(CNContactNavigationController *)self contactListViewController];
  v15 = [v14 navigationItem];
  [v15 setLeftBarButtonItem:v16 animated:v3];
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

- (void)updateNavigationButtonsInSearchMode:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v37[1] = *MEMORY[0x1E69E9840];
  if (a3 && [(CNContactNavigationController *)self allowsCanceling])
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

    v7 = [(CNContactNavigationController *)self shouldShowRightAddButton];
    v6 = 7;
    if (!v7)
    {
      v6 = 0;
    }
  }

LABEL_22:
  if (self->_rightButtonBehavior != v6)
  {
    v12 = 0;
    self->_rightButtonBehavior = v6;
    if (v6 > 5)
    {
      if (v6 > 7)
      {
        if (v6 != 8)
        {
          v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editLimitedAccess];
          v32 = v20;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

          v13 = [v10 firstObject];
          v12 = 0;
          goto LABEL_49;
        }

        v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
        v33[0] = v24;
        v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:sel_addContact_];
        v33[1] = v25;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];

        v17 = [v10 lastObject];
LABEL_45:
        v13 = v17;
        v12 = [objc_opt_class() keyCommandForNewContact];
        goto LABEL_49;
      }

      if (v6 == 6)
      {
        v21 = objc_alloc(MEMORY[0x1E69DC708]);
        v15 = CNContactsUIBundle();
        v22 = [v15 localizedStringForKey:@"LISTS" value:&stru_1F0CE7398 table:@"Localized"];
        v23 = [v21 initWithTitle:v22 style:0 target:self action:sel_presentGroupsViewController_];
        v37[0] = v23;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];

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
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        goto LABEL_47;
      }

      v13 = 0;
      v10 = 0;
      if (v6 == 3)
      {
LABEL_30:
        v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
        v35 = v14;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

        if ([(CNContactNavigationController *)self limitedAccessPickerType]!= 2)
        {
LABEL_48:
          v12 = 0;
          v13 = 0;
          goto LABEL_49;
        }

        v15 = [v10 objectAtIndexedSubscript:0];
        [v15 setEnabled:0];
LABEL_47:

        goto LABEL_48;
      }

LABEL_49:
      [(CNContactNavigationController *)self setAddContactBarButtonItem:v13];
      v26 = [(CNContactNavigationController *)self addKeyCommand];

      if (v26)
      {
        v27 = [(CNContactNavigationController *)self addKeyCommand];
        [(CNContactNavigationController *)self removeKeyCommand:v27];
      }

      if (v12)
      {
        [(CNContactNavigationController *)self addKeyCommand:v12];
      }

      [(CNContactNavigationController *)self setAddKeyCommand:v12];
      if ([(CNContactNavigationController *)self shouldShowMailButton])
      {
        v28 = [(CNContactNavigationController *)self mailButtonItem];
        v29 = [v10 arrayByAddingObject:v28];

        v10 = v29;
      }

      v19 = [(CNContactNavigationController *)self contactListViewController];
      v30 = [v19 navigationItem];
      [v30 setRightBarButtonItems:v10 animated:v4];

      goto LABEL_56;
    }

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:sel_addContact_];
    v34 = v16;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

    v17 = [v10 firstObject];
    goto LABEL_45;
  }

  v8 = [(CNContactNavigationController *)self contactListViewController];
  v9 = [v8 navigationItem];
  v10 = [v9 rightBarButtonItems];

  if (self->_mailButtonItem)
  {
    v11 = [v10 containsObject:?];
  }

  else
  {
    v11 = 0;
  }

  if (v11 != [(CNContactNavigationController *)self shouldShowMailButton])
  {
    if ([(CNContactNavigationController *)self shouldShowMailButton])
    {
      v18 = [(CNContactNavigationController *)self mailButtonItem];
      v12 = [v10 arrayByAddingObject:v18];
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__CNContactNavigationController_updateNavigationButtonsInSearchMode_animated___block_invoke;
      v31[3] = &unk_1E74E3400;
      v31[4] = self;
      v12 = [v10 _cn_filter:v31];
    }

    v13 = [(CNContactNavigationController *)self contactListViewController];
    v19 = [v13 navigationItem];
    [v19 setRightBarButtonItems:v12];
LABEL_56:
  }

  [(CNContactNavigationController *)self refreshMailButtonEnabled];
  [(CNContactNavigationController *)self updateLeftNavigationButtonAnimated:v4];
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
  v2 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  v3 = [v2 hidesSearchableSources];

  return v3;
}

- (void)setHidesSearchableSources:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactNavigationController *)self accountsAndGroupsDataSource];
  [v4 setHidesSearchableSources:v3];
}

- (void)setContactListStyleApplier:(id)a3
{
  objc_storeStrong(&self->_contactListStyleApplier, a3);
  v5 = a3;
  [(CNContactListViewController *)self->_contactListViewController setContactListStyleApplier:v5];
}

- (void)setContactStyle:(id)a3
{
  objc_storeStrong(&self->_contactStyle, a3);
  v5 = a3;
  v7 = [CNContactListStyleProvider contactListStyleWithContactStyle:v5];
  v6 = [[CNContactListStyleApplier alloc] initWithContactListStyle:v7];
  [(CNContactNavigationController *)self setContactListStyleApplier:v6];

  LODWORD(v6) = [v5 shouldPresentInCurrentContext];
  [(CNContactNavigationController *)self _setBuiltinTransitionStyle:v6];
}

- (void)contactStyleCurrentStyleDidChange:(id)a3
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

- (void)scrollToContact:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(CNContactNavigationController *)self contactListViewController];
  v6 = [v5 identifier];

  [v7 scrollTopToContactWithIdentifier:v6 animated:0];
}

- (id)firstVisibleContact
{
  v3 = [(CNContactNavigationController *)self dataSource];
  v4 = [v3 contacts];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CNContactNavigationController *)self contactListViewController];
    v7 = [v6 visibleListViewController];
    v8 = [v7 collectionView];

    [v8 contentOffset];
    v10 = v9;
    v11 = [(CNContactNavigationController *)self contactListViewController];
    v12 = [v11 visibleListViewController];
    [v12 contactListHeaderHeight];
    v14 = v13;

    [v8 center];
    v16 = v15;
    v17 = [(CNContactNavigationController *)self navigationBar];
    [v17 frame];
    v19 = v18;

    v20 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v21 = [v8 layoutAttributesForItemAtIndexPath:v20];

    [v21 frame];
    v23 = v22;
    v25 = v24;
    v26 = [v8 collectionViewLayout];
    v27 = [v26 layoutAttributesForElementsInRect:{v16, v10 + v14 + v19, v23, v25}];

    v28 = [v27 _cn_map:&__block_literal_global_24581];
    v29 = 0;
    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v30 = [v28 objectAtIndexedSubscript:0];
      v31 = [(CNContactNavigationController *)self contactListViewController];
      v32 = [v31 globalIndexForCollectionViewIndexPath:v30];

      if (v32 == 0x7FFFFFFFFFFFFFFFLL || (-[CNContactNavigationController dataSource](self, "dataSource"), v33 = objc_claimAutoreleasedReturnValue(), [v33 contacts], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "count"), v34, v33, v32 >= v35))
      {
        v29 = 0;
      }

      else
      {
        v36 = [(CNContactNavigationController *)self dataSource];
        v37 = [v36 contacts];
        v29 = [v37 objectAtIndexedSubscript:v32];
      }
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)updateUserActivityState:(id)a3
{
  v18 = a3;
  v4 = [(CNContactNavigationController *)self firstVisibleContact];
  if ([(CNContactNavigationController *)self isPresentedContactViewControllerVisible])
  {
    v5 = [(CNContactNavigationController *)self presentedContactViewController];
    v6 = [v5 contentViewController];
    v7 = [v6 contact];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CNContactNavigationController *)self contactListViewController];
  v9 = [v8 currentSearchString];

  if (v4 | v7)
  {
    if (!v4 && v7)
    {
      v4 = v7;
    }

    goto LABEL_10;
  }

  v4 = 0;
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
LABEL_10:
    v10 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
    if ([v10 isViewLoaded])
    {
      v11 = [(CNContactNavigationController *)self accountsAndGroupsViewController];
      v12 = [v11 view];
      v13 = [v12 window];
      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(CNContactNavigationController *)self activityManager];
    v16 = [(CNContactNavigationController *)self contactListViewController];
    v17 = [v16 currentSearchString];
    [v15 updateUserActivityState:v18 withContentsOfListTopContact:v4 displayedContact:v7 searchString:v17 isShowingGroups:v14];
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
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [v4 bundleIdentifier];
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v15, 0xCu);
    }

    v6 = [(CNContactNavigationController *)self activityManager];
    v7 = [v6 makeActivityAdvertisingViewingList];

    v8 = [(CNContactNavigationController *)self userActivity];
    v9 = v8;
    if (v7)
    {

      if (!v9)
      {
        [(CNContactNavigationController *)self setUserActivity:v7];
        v10 = [(CNContactNavigationController *)self userActivity];
        [v10 becomeCurrent];

        v11 = CNUILogContactList();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(CNContactNavigationController *)self userActivity];
          v15 = 138412546;
          v16 = self;
          v17 = 2112;
          v18 = v12;
          _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v15, 0x16u);
        }
      }
    }

    else
    {
      [v8 resignCurrent];

      v13 = CNUILogContactList();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(CNContactNavigationController *)self userActivity];
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v15, 0x16u);
      }

      [(CNContactNavigationController *)self setUserActivity:0];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactNavigationController;
  [(CNContactNavigationController *)&v4 dealloc];
}

- (CNContactNavigationController)initWithDataSource:(id)a3 contactFormatter:(id)a4 applyGroupFilterFromPreferences:(BOOL)a5 environment:(id)a6 allowsLargeTitles:(BOOL)a7 allowsSearch:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v57[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v56.receiver = self;
  v56.super_class = CNContactNavigationController;
  v17 = [(CNContactNavigationController *)&v56 initWithNibName:0 bundle:0];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v14 store];
      contactStore = v17->_contactStore;
      v17->_contactStore = v18;

      if (v11)
      {
        v20 = [CNContactStoreFilter contactStoreFilterFromPreferencesWithContactStore:v17->_contactStore];
        if (v20)
        {
          [v14 setFilter:v20];
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
        [v14 store];
      }

      else
      {
        [v16 inProcessContactStore];
      }
      v22 = ;
      v23 = &OBJC_IVAR___CNContactNavigationController__contactStore;
    }

    v24 = *v23;
    v25 = *(&v17->super.super.super.super.isa + v24);
    *(&v17->super.super.super.super.isa + v24) = v22;

    v26 = [v16 defaultSchedulerProvider];
    v27 = [v26 backgroundSchedulerWithQualityOfService:2];
    backgroundScheduler = v17->_backgroundScheduler;
    v17->_backgroundScheduler = v27;

    v29 = [v16 defaultSchedulerProvider];
    v30 = [v29 mainThreadScheduler];
    mainThreadScheduler = v17->_mainThreadScheduler;
    v17->_mainThreadScheduler = v30;

    v32 = [MEMORY[0x1E696AAE8] mainBundle];
    v33 = [v32 bundleIdentifier];

    v34 = objc_alloc(MEMORY[0x1E6996760]);
    v35 = [MEMORY[0x1E6996768] sharedConnection];
    v36 = [v34 initWithBundleIdentifier:v33 managedProfileConnection:v35];
    managedConfiguration = v17->_managedConfiguration;
    v17->_managedConfiguration = v36;

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695CD80]);
      [v15 setStyle:0];
      [v15 setEmphasizesPrimaryNameComponent:1];
      [v15 setFallbackStyle:-1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 setContactFormatter:v15];
    }

    [(CNContactNavigationController *)v17 setAllowsLargeTitles:v9];
    v38 = +[CNContactStyle currentStyle];
    [(CNContactNavigationController *)v17 setContactStyle:v38];

    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v17 selector:sel_contactStyleCurrentStyleDidChange_ name:@"CNContactStyleCurrentStyleDidChangeNotification" object:0];

    v40 = [[CNContactListViewController alloc] initWithDataSource:v14 searchable:v8 environment:v16 shouldUseLargeTitle:v9];
    [(CNContactListViewController *)v40 setContactFormatter:v15];
    [(CNContactListViewController *)v40 setDelegate:v17];
    v41 = [(CNContactNavigationController *)v17 contactListStyleApplier];
    [(CNContactListViewController *)v40 setContactListStyleApplier:v41];

    v42 = [(CNContactListViewController *)v40 navigationItem];
    [v42 setHidesBackButton:1];

    v43 = [(CNContactListViewController *)v40 navigationItem];
    [v43 setStyle:0];

    if (CNUIIsMobilePhone() || CNUIIsContacts())
    {
      [(CNContactListViewController *)v40 setAllowsMultiSelectContextMenus:1];
    }

    v44 = [v16 inProcessActivityManager];
    activityManager = v17->_activityManager;
    v17->_activityManager = v44;

    objc_storeStrong(&v17->_contactListViewController, v40);
    v57[0] = v40;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    [(CNContactNavigationController *)v17 setViewControllers:v46];

    v47 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_selectNextContact_];
    [(CNContactNavigationController *)v17 addKeyCommand:v47];

    v48 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_selectPreviousContact_];
    [(CNContactNavigationController *)v17 addKeyCommand:v48];

    v49 = [MEMORY[0x1E69966E8] currentEnvironment];
    v50 = [v49 featureFlags];
    v51 = [v50 isFeatureEnabled:31];

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

- (CNContactNavigationController)initWithDataSource:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = CNContactNavigationControllerOptionAllowsLargeTitles;
  v8 = a3;
  v9 = [v6 _cn_objectForKey:v7 ofClass:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 _cn_objectForKey:CNContactNavigationControllerOptionAllowsSearch ofClass:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 BOOLValue];
  }

  else
  {
    v14 = 1;
  }

  v15 = +[CNUIContactsEnvironment currentEnvironment];
  v16 = [(CNContactNavigationController *)self initWithDataSource:v8 environment:v15 allowsLargeTitles:v11 allowsSearch:v14];

  return v16;
}

- (CNContactNavigationController)initWithDataSource:(id)a3 allowsLargeTitles:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = CNContactNavigationControllerOptionAllowsLargeTitles;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [(CNContactNavigationController *)self initWithDataSource:v7 withOptions:v9];

  return v10;
}

+ (void)moveViewController:(id)a3 toParent:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 willMoveToParentViewController:0];
  [v6 removeFromParentViewController];
  [v5 addChildViewController:v6];
  [v6 didMoveToParentViewController:v5];
  v7 = [v5 view];
  v8 = [v6 view];
  [v7 addSubview:v8];

  v9 = [v5 view];
  v10 = [v9 topAnchor];
  v11 = [v6 view];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v5 view];
  v15 = [v14 bottomAnchor];
  v16 = [v6 view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [v5 view];
  v20 = [v19 leadingAnchor];
  v21 = [v6 view];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v5 view];
  v25 = [v24 trailingAnchor];
  v26 = [v6 view];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [v6 view];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [v6 title];

  [v5 setTitle:v30];
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