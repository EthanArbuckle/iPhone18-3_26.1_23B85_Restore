@interface CNUIFamilyMemberWhitelistedContactsController
+ (id)contactPickerWithDelegate:(id)a3 familyMember:(id)a4 parentContainer:(id)a5;
- (BOOL)contactManagementEnabled;
- (CNContactViewController)contactViewControllerPresentingItemDetails;
- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation;
- (CNUIFamilyMemberWhitelistedContactsController)init;
- (CNUIFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)a3 familyMemberContactsPresentation:(id)a4;
- (CNUIFamilyMemberWhitelistedContactsControllerDelegate)delegate;
- (NSArray)familyMemberContactItems;
- (id)anchorViewForDefaultInteraction;
- (id)generateContactSourceOptionSheet;
- (id)warningMessageForContact:(id)a3;
- (int64_t)fetchStatus;
- (void)addContactsToWhitelist:(id)a3;
- (void)addContactsToWhitelistOptionsSheetDidCancel:(id)a3;
- (void)cancelPresentationOfDetailsOfFamilyMemberContactItem:(id)a3;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:(id)a3;
- (void)deleteFamilyMemberContactItem:(id)a3;
- (void)downtimePickerController:(id)a3 didFinishWithContacts:(id)a4;
- (void)familyMemberContactItemsDidChange;
- (void)performAddFromFamilyMemberContacts;
- (void)performAddFromMainContacts;
- (void)performAddFromMainContactsForFamilyMember;
- (void)performAddFromMainContactsForThisDevice;
- (void)performAddNewContact;
- (void)performDefaultInteraction;
- (void)performInteraction:(int64_t)a3;
- (void)presentDetailsOfFamilyMemberContactItem:(id)a3;
@end

@implementation CNUIFamilyMemberWhitelistedContactsController

- (CNContactViewController)contactViewControllerPresentingItemDetails
{
  WeakRetained = objc_loadWeakRetained(&self->_contactViewControllerPresentingItemDetails);

  return WeakRetained;
}

- (CNUIFamilyMemberWhitelistedContactsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addContactsToWhitelist:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  [v5 updateWhitelistByAddingContacts:v4];
}

- (void)downtimePickerController:(id)a3 didFinishWithContacts:(id)a4
{
  v11 = a4;
  v6 = *MEMORY[0x1E6996530];
  v7 = *(*MEMORY[0x1E6996530] + 16);
  v8 = a3;
  if ((v7(v6, v11) & 1) == 0)
  {
    [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:v11];
  }

  v9 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v10 = [v8 navigationController];

  [v9 dismissPresentedViewController:v10];
}

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v7 dismissPresentedViewController:v6];

  [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:v8];
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v6 = objc_opt_respondsToSelector();

  v7 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v8 = v7;
  if (v6)
  {
    [v7 presentedViewControllerDidCancel:v4];
  }

  else
  {
    [v7 dismissPresentedViewController:v4];
  }
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v5 = a3;
  v7 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v6 = [v5 navigationController];

  [v7 dismissPresentedViewController:v6];
}

- (void)contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v6 = [v4 navigationController];
  [v5 dismissPresentedViewController:v6];

  v7 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v8 = [v4 contact];

  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v7 updateWhitelistByRemovingContacts:v9];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v9 = [v7 navigationController];

  [v8 dismissPresentedViewController:v9];
  if (v6 && ([MEMORY[0x1E695CE70] isWhitelistedContact:v6] & 1) == 0)
  {
    v11[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:v10];
  }
}

- (void)addContactsToWhitelistOptionsSheetDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v5 dismissPresentedViewController:v4];
}

- (void)performAddNewContact
{
  v9 = [CNContactViewController viewControllerForNewContact:0];
  [v9 setIgnoresParentalRestrictions:1];
  v3 = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  [v9 setProhibitedPropertyKeys:v3];

  [v9 setDisplayMode:2];
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  [v9 setContactStore:v4];

  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self downtimeContaienerFetcher];
  v6 = [v5 downtimeWhitelistContainer];
  [v9 setParentContainer:v6];

  [v9 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  v8 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v8 presentViewController:v7];
}

- (void)performAddFromFamilyMemberContacts
{
  v11 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:v4 allFamilyMembers:0 contactStore:v11 editingStrategy:v5 showingFamilyMemberContacts:1];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = *MEMORY[0x1E6996530];
  v8 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactItems];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:(*(v7 + 16))(v7, v8)];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v9 setModalPresentationStyle:2];
  v10 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v10 presentViewController:v9];
}

- (void)performAddFromMainContactsForThisDevice
{
  v3 = objc_opt_class();
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self downtimeContaienerFetcher];
  v5 = [v4 downtimeWhitelistContainer];
  v7 = [v3 contactPickerWithDelegate:self familyMember:0 parentContainer:v5];

  v6 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v6 presentViewController:v7];
}

- (void)performAddFromMainContactsForFamilyMember
{
  v11 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:v4 allFamilyMembers:0 contactStore:v11 editingStrategy:v5 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = *MEMORY[0x1E6996530];
  v8 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactItems];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:(*(v7 + 16))(v7, v8)];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v9 setModalPresentationStyle:2];
  v10 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v10 presentViewController:v9];
}

- (void)performAddFromMainContacts
{
  v3 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];

  if (v3)
  {

    [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromMainContactsForFamilyMember];
  }

  else
  {

    [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromMainContactsForThisDevice];
  }
}

- (id)anchorViewForDefaultInteraction
{
  v3 = [(CNUIFamilyMemberWhitelistedContactsController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self delegate];
    v6 = [v5 whitelistedContactsController:self anchorViewForPresentationOfInteraction:0];
  }

  else
  {
    v5 = [*MEMORY[0x1E69DDA98] windows];
    v7 = [v5 firstObject];
    v8 = [v7 rootViewController];
    v6 = [v8 view];
  }

  return v6;
}

- (id)generateContactSourceOptionSheet
{
  v3 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v4 = [CNUIFamilyMemberControllerShared addContactsToWhitelistOptionsSheetForFamilyMember:v3 offerChooseFromFamilyMemberContactsOption:[(CNUIFamilyMemberWhitelistedContactsController *)self contactManagementEnabled] delegate:self];

  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self anchorViewForDefaultInteraction];
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    v9 = [v4 sheetPresentationController];
    [v9 setPrefersEdgeAttachedInCompactHeight:1];

    v10 = [v4 sheetPresentationController];
    [v10 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  }

  else
  {
    v11 = [v4 popoverPresentationController];
    [v11 setSourceView:v5];

    [v5 bounds];
    MidX = CGRectGetMidX(v17);
    [v5 bounds];
    MinY = CGRectGetMinY(v18);
    v14 = [v4 popoverPresentationController];
    [v14 setSourceRect:{MidX, MinY, 0.0, 0.0}];

    v10 = [v4 popoverPresentationController];
    [v10 setPermittedArrowDirections:2];
  }

  return v4;
}

- (void)performDefaultInteraction
{
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v3 = [(CNUIFamilyMemberWhitelistedContactsController *)self generateContactSourceOptionSheet];
  [v4 presentViewController:v3];
}

- (void)performInteraction:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromFamilyMemberContacts];
    }

    else if (a3 == 3)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddNewContact];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromMainContacts];
    }
  }

  else
  {
    [(CNUIFamilyMemberWhitelistedContactsController *)self performDefaultInteraction];
  }
}

- (void)deleteFamilyMemberContactItem:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v6 = objc_alloc(MEMORY[0x1E6996B10]);
  v7 = [v4 contactIdentifier];

  v8 = [v6 initWithContactIdentifier:v7];
  v9 = [v5 contactRepresentingItem:v8];

  if (v9)
  {
    v10 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
    v12[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v10 updateWhitelistByRemovingContacts:v11];
  }
}

- (void)cancelPresentationOfDetailsOfFamilyMemberContactItem:(id)a3
{
  v6 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v4 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
  v5 = [v4 navigationController];
  [v6 dismissPresentedViewController:v5];
}

- (id)warningMessageForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];

  if (v5)
  {
    v6 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactCardWarningFormatter];
    v7 = [v6 stringFromContact:v4];

    v8 = MEMORY[0x1E696AEC0];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    v12 = [v11 firstName];
    v13 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    v14 = [v13 firstName];
    v15 = [v8 stringWithFormat:v10, v12, v7, v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)presentDetailsOfFamilyMemberContactItem:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v6 = objc_alloc(MEMORY[0x1E6996B10]);
  v7 = [v4 contactIdentifier];

  v8 = [v6 initWithContactIdentifier:v7];
  v21 = [v5 contactRepresentingItem:v8];

  if (v21)
  {
    v9 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
    v10 = [CNUIFamilyMemberControllerShared contactViewControllerForContact:v21 fromStore:v9];

    [(CNUIFamilyMemberWhitelistedContactsController *)self setContactViewControllerPresentingItemDetails:v10];
    v11 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    [v11 setDelegate:self];

    v12 = [(CNUIFamilyMemberWhitelistedContactsController *)self warningMessageForContact:v21];
    v13 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    [v13 setWarningMessage:v12];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPresentationOfDetailsOfFamilyMemberContactItem_];
    v15 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    v16 = [v15 navigationItem];
    [v16 setLeftBarButtonItem:v14];

    v17 = objc_alloc(MEMORY[0x1E69DCCD8]);
    v18 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    v19 = [v17 initWithRootViewController:v18];

    v20 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
    [v20 presentViewController:v19];
  }
}

- (BOOL)contactManagementEnabled
{
  v3 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6996688]);
    v5 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    v6 = [v4 initWithFamilyMember:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactManagentConsentCheck];
  v8 = [v7 contactManagementConsentStateOfDelegateWithInfo:v6];

  return v8 == 3;
}

- (void)familyMemberContactItemsDidChange
{
  v2 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [v2 familyMemberContactsDidChange];
}

- (NSArray)familyMemberContactItems
{
  v2 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v3 = [v2 familyMemberContactItems];
  v4 = [v3 _cn_map:&__block_literal_global_53172];

  return v4;
}

- (int64_t)fetchStatus
{
  v2 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v3 = +[CNUIFamilyMemberControllerShared contactsUIFetchStatusFromContactsUICoreFetchStatus:](CNUIFamilyMemberControllerShared, "contactsUIFetchStatusFromContactsUICoreFetchStatus:", [v2 fetchStatus]);

  return v3;
}

- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CNUIFamilyMemberWhitelistedContactsController.m" lineNumber:99 description:@"communication with presentation should only take place on main thread"];
  }

  familyMemberContactsPresentation = self->_familyMemberContactsPresentation;

  return familyMemberContactsPresentation;
}

- (CNUIFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)a3 familyMemberContactsPresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘familyMemberContactsPresentation’ must be nonnull" userInfo:0];
    objc_exception_throw(v30);
  }

  v9 = v8;
  v31.receiver = self;
  v31.super_class = CNUIFamilyMemberWhitelistedContactsController;
  v10 = [(CNUIFamilyMemberWhitelistedContactsController *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_familyMember, a3);
    objc_storeStrong(&v11->_familyMemberContactsPresentation, a4);
    v12 = [MEMORY[0x1E6996820] defaultProvider];
    schedulerProvider = v11->_schedulerProvider;
    v11->_schedulerProvider = v12;

    if (v11->_familyMember)
    {
      v14 = [MEMORY[0x1E695CE18] storeForFamilyMember:v7];
      familyMemberScopedContactStore = v11->_familyMemberScopedContactStore;
      v11->_familyMemberScopedContactStore = v14;

      v16 = MEMORY[0x1E6996B20];
      v17 = [MEMORY[0x1E6996B40] iosOptions];
      v18 = [MEMORY[0x1E6996820] defaultProvider];
      [v16 controllerWithFamilyMember:v7 options:v17 schedulerProvider:v18];
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x1E695CE78]);
      downtimeContaienerFetcher = v11->_downtimeContaienerFetcher;
      v11->_downtimeContaienerFetcher = v20;

      v22 = MEMORY[0x1E6996B30];
      v17 = [MEMORY[0x1E6996B40] iosOptions];
      v18 = [MEMORY[0x1E6996820] defaultProvider];
      [v22 controllerWithOptions:v17 schedulerProvider:v18];
    }
    v19 = ;
    dataSource = v11->_dataSource;
    v11->_dataSource = v19;

    [(CNUICoreFamilyMemberWhitelistedContactsDataSource *)v11->_dataSource setObserver:v11];
    v24 = objc_alloc_init(MEMORY[0x1E6996B00]);
    contactManagentConsentCheck = v11->_contactManagentConsentCheck;
    v11->_contactManagentConsentCheck = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactCardWarningFormatter = v11->_contactCardWarningFormatter;
    v11->_contactCardWarningFormatter = v26;

    [(CNContactFormatter *)v11->_contactCardWarningFormatter setIgnoresNickname:1];
    [(CNContactFormatter *)v11->_contactCardWarningFormatter setIgnoresOrganization:1];
    [(CNContactFormatter *)v11->_contactCardWarningFormatter setStyle:1000];
    v28 = v11;
  }

  return v11;
}

- (CNUIFamilyMemberWhitelistedContactsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)contactPickerWithDelegate:(id)a3 familyMember:(id)a4 parentContainer:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v10 setMode:2];
  v11 = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  [(CNContactPickerViewController *)v10 setProhibitedPropertyKeys:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [(CNContactPickerViewController *)v10 setPredicateForSelectionOfContact:v12];

  [(CNContactPickerViewController *)v10 setDelegate:v9];
  [(CNContactPickerViewController *)v10 setFamilyMember:v8];

  [(CNContactPickerViewController *)v10 setParentContainer:v7];

  return v10;
}

@end