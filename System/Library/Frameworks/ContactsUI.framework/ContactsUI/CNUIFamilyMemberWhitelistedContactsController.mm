@interface CNUIFamilyMemberWhitelistedContactsController
+ (id)contactPickerWithDelegate:(id)delegate familyMember:(id)member parentContainer:(id)container;
- (BOOL)contactManagementEnabled;
- (CNContactViewController)contactViewControllerPresentingItemDetails;
- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation;
- (CNUIFamilyMemberWhitelistedContactsController)init;
- (CNUIFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)member familyMemberContactsPresentation:(id)presentation;
- (CNUIFamilyMemberWhitelistedContactsControllerDelegate)delegate;
- (NSArray)familyMemberContactItems;
- (id)anchorViewForDefaultInteraction;
- (id)generateContactSourceOptionSheet;
- (id)warningMessageForContact:(id)contact;
- (int64_t)fetchStatus;
- (void)addContactsToWhitelist:(id)whitelist;
- (void)addContactsToWhitelistOptionsSheetDidCancel:(id)cancel;
- (void)cancelPresentationOfDetailsOfFamilyMemberContactItem:(id)item;
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:(id)action;
- (void)deleteFamilyMemberContactItem:(id)item;
- (void)downtimePickerController:(id)controller didFinishWithContacts:(id)contacts;
- (void)familyMemberContactItemsDidChange;
- (void)performAddFromFamilyMemberContacts;
- (void)performAddFromMainContacts;
- (void)performAddFromMainContactsForFamilyMember;
- (void)performAddFromMainContactsForThisDevice;
- (void)performAddNewContact;
- (void)performDefaultInteraction;
- (void)performInteraction:(int64_t)interaction;
- (void)presentDetailsOfFamilyMemberContactItem:(id)item;
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

- (void)addContactsToWhitelist:(id)whitelist
{
  whitelistCopy = whitelist;
  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  [dataSource updateWhitelistByAddingContacts:whitelistCopy];
}

- (void)downtimePickerController:(id)controller didFinishWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v6 = *MEMORY[0x1E6996530];
  v7 = *(*MEMORY[0x1E6996530] + 16);
  controllerCopy = controller;
  if ((v7(v6, contactsCopy) & 1) == 0)
  {
    [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:contactsCopy];
  }

  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  navigationController = [controllerCopy navigationController];

  [familyMemberContactsPresentation dismissPresentedViewController:navigationController];
}

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  contactsCopy = contacts;
  pickerCopy = picker;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation dismissPresentedViewController:pickerCopy];

  [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:contactsCopy];
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v6 = objc_opt_respondsToSelector();

  familyMemberContactsPresentation2 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  v8 = familyMemberContactsPresentation2;
  if (v6)
  {
    [familyMemberContactsPresentation2 presentedViewControllerDidCancel:cancelCopy];
  }

  else
  {
    [familyMemberContactsPresentation2 dismissPresentedViewController:cancelCopy];
  }
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  controllerCopy = controller;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  navigationController = [controllerCopy navigationController];

  [familyMemberContactsPresentation dismissPresentedViewController:navigationController];
}

- (void)contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:(id)action
{
  v10[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  navigationController = [actionCopy navigationController];
  [familyMemberContactsPresentation dismissPresentedViewController:navigationController];

  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  contact = [actionCopy contact];

  v10[0] = contact;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [dataSource updateWhitelistByRemovingContacts:v9];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v11[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  controllerCopy = controller;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  navigationController = [controllerCopy navigationController];

  [familyMemberContactsPresentation dismissPresentedViewController:navigationController];
  if (contactCopy && ([MEMORY[0x1E695CE70] isWhitelistedContact:contactCopy] & 1) == 0)
  {
    v11[0] = contactCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(CNUIFamilyMemberWhitelistedContactsController *)self addContactsToWhitelist:v10];
  }
}

- (void)addContactsToWhitelistOptionsSheetDidCancel:(id)cancel
{
  cancelCopy = cancel;
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation dismissPresentedViewController:cancelCopy];
}

- (void)performAddNewContact
{
  v9 = [CNContactViewController viewControllerForNewContact:0];
  [v9 setIgnoresParentalRestrictions:1];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  [v9 setProhibitedPropertyKeys:propertyKeysContainingSenstiveData];

  [v9 setDisplayMode:2];
  familyMemberScopedContactStore = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  [v9 setContactStore:familyMemberScopedContactStore];

  downtimeContaienerFetcher = [(CNUIFamilyMemberWhitelistedContactsController *)self downtimeContaienerFetcher];
  downtimeWhitelistContainer = [downtimeContaienerFetcher downtimeWhitelistContainer];
  [v9 setParentContainer:downtimeWhitelistContainer];

  [v9 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v7];
}

- (void)performAddFromFamilyMemberContacts
{
  familyMemberScopedContactStore = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:familyMember allFamilyMembers:0 contactStore:familyMemberScopedContactStore editingStrategy:v5 showingFamilyMemberContacts:1];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = *MEMORY[0x1E6996530];
  familyMemberContactItems = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactItems];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:(*(v7 + 16))(v7, familyMemberContactItems)];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v9 setModalPresentationStyle:2];
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v9];
}

- (void)performAddFromMainContactsForThisDevice
{
  v3 = objc_opt_class();
  downtimeContaienerFetcher = [(CNUIFamilyMemberWhitelistedContactsController *)self downtimeContaienerFetcher];
  downtimeWhitelistContainer = [downtimeContaienerFetcher downtimeWhitelistContainer];
  v7 = [v3 contactPickerWithDelegate:self familyMember:0 parentContainer:downtimeWhitelistContainer];

  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v7];
}

- (void)performAddFromMainContactsForFamilyMember
{
  v11 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:familyMember allFamilyMembers:0 contactStore:v11 editingStrategy:v5 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = *MEMORY[0x1E6996530];
  familyMemberContactItems = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactItems];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:(*(v7 + 16))(v7, familyMemberContactItems)];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v9 setModalPresentationStyle:2];
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v9];
}

- (void)performAddFromMainContacts
{
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];

  if (familyMember)
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
  delegate = [(CNUIFamilyMemberWhitelistedContactsController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNUIFamilyMemberWhitelistedContactsController *)self delegate];
    view = [delegate2 whitelistedContactsController:self anchorViewForPresentationOfInteraction:0];
  }

  else
  {
    delegate2 = [*MEMORY[0x1E69DDA98] windows];
    firstObject = [delegate2 firstObject];
    rootViewController = [firstObject rootViewController];
    view = [rootViewController view];
  }

  return view;
}

- (id)generateContactSourceOptionSheet
{
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  v4 = [CNUIFamilyMemberControllerShared addContactsToWhitelistOptionsSheetForFamilyMember:familyMember offerChooseFromFamilyMemberContactsOption:[(CNUIFamilyMemberWhitelistedContactsController *)self contactManagementEnabled] delegate:self];

  anchorViewForDefaultInteraction = [(CNUIFamilyMemberWhitelistedContactsController *)self anchorViewForDefaultInteraction];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    sheetPresentationController = [v4 sheetPresentationController];
    [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];

    sheetPresentationController2 = [v4 sheetPresentationController];
    [sheetPresentationController2 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  }

  else
  {
    popoverPresentationController = [v4 popoverPresentationController];
    [popoverPresentationController setSourceView:anchorViewForDefaultInteraction];

    [anchorViewForDefaultInteraction bounds];
    MidX = CGRectGetMidX(v17);
    [anchorViewForDefaultInteraction bounds];
    MinY = CGRectGetMinY(v18);
    popoverPresentationController2 = [v4 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{MidX, MinY, 0.0, 0.0}];

    sheetPresentationController2 = [v4 popoverPresentationController];
    [sheetPresentationController2 setPermittedArrowDirections:2];
  }

  return v4;
}

- (void)performDefaultInteraction
{
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  generateContactSourceOptionSheet = [(CNUIFamilyMemberWhitelistedContactsController *)self generateContactSourceOptionSheet];
  [familyMemberContactsPresentation presentViewController:generateContactSourceOptionSheet];
}

- (void)performInteraction:(int64_t)interaction
{
  if (interaction > 1)
  {
    if (interaction == 2)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromFamilyMemberContacts];
    }

    else if (interaction == 3)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddNewContact];
    }
  }

  else if (interaction)
  {
    if (interaction == 1)
    {
      [(CNUIFamilyMemberWhitelistedContactsController *)self performAddFromMainContacts];
    }
  }

  else
  {
    [(CNUIFamilyMemberWhitelistedContactsController *)self performDefaultInteraction];
  }
}

- (void)deleteFamilyMemberContactItem:(id)item
{
  v12[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v6 = objc_alloc(MEMORY[0x1E6996B10]);
  contactIdentifier = [itemCopy contactIdentifier];

  v8 = [v6 initWithContactIdentifier:contactIdentifier];
  v9 = [dataSource contactRepresentingItem:v8];

  if (v9)
  {
    dataSource2 = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
    v12[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [dataSource2 updateWhitelistByRemovingContacts:v11];
  }
}

- (void)cancelPresentationOfDetailsOfFamilyMemberContactItem:(id)item
{
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  contactViewControllerPresentingItemDetails = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
  navigationController = [contactViewControllerPresentingItemDetails navigationController];
  [familyMemberContactsPresentation dismissPresentedViewController:navigationController];
}

- (id)warningMessageForContact:(id)contact
{
  contactCopy = contact;
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];

  if (familyMember)
  {
    contactCardWarningFormatter = [(CNUIFamilyMemberWhitelistedContactsController *)self contactCardWarningFormatter];
    v7 = [contactCardWarningFormatter stringFromContact:contactCopy];

    v8 = MEMORY[0x1E696AEC0];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING" value:&stru_1F0CE7398 table:@"Localized"];
    familyMember2 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    firstName = [familyMember2 firstName];
    familyMember3 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    firstName2 = [familyMember3 firstName];
    v15 = [v8 stringWithFormat:v10, firstName, v7, firstName2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)presentDetailsOfFamilyMemberContactItem:(id)item
{
  itemCopy = item;
  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v6 = objc_alloc(MEMORY[0x1E6996B10]);
  contactIdentifier = [itemCopy contactIdentifier];

  v8 = [v6 initWithContactIdentifier:contactIdentifier];
  v21 = [dataSource contactRepresentingItem:v8];

  if (v21)
  {
    familyMemberScopedContactStore = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
    v10 = [CNUIFamilyMemberControllerShared contactViewControllerForContact:v21 fromStore:familyMemberScopedContactStore];

    [(CNUIFamilyMemberWhitelistedContactsController *)self setContactViewControllerPresentingItemDetails:v10];
    contactViewControllerPresentingItemDetails = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    [contactViewControllerPresentingItemDetails setDelegate:self];

    v12 = [(CNUIFamilyMemberWhitelistedContactsController *)self warningMessageForContact:v21];
    contactViewControllerPresentingItemDetails2 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    [contactViewControllerPresentingItemDetails2 setWarningMessage:v12];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPresentationOfDetailsOfFamilyMemberContactItem_];
    contactViewControllerPresentingItemDetails3 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    navigationItem = [contactViewControllerPresentingItemDetails3 navigationItem];
    [navigationItem setLeftBarButtonItem:v14];

    v17 = objc_alloc(MEMORY[0x1E69DCCD8]);
    contactViewControllerPresentingItemDetails4 = [(CNUIFamilyMemberWhitelistedContactsController *)self contactViewControllerPresentingItemDetails];
    v19 = [v17 initWithRootViewController:contactViewControllerPresentingItemDetails4];

    familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
    [familyMemberContactsPresentation presentViewController:v19];
  }
}

- (BOOL)contactManagementEnabled
{
  familyMember = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
  if (familyMember)
  {
    v4 = objc_alloc(MEMORY[0x1E6996688]);
    familyMember2 = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMember];
    v6 = [v4 initWithFamilyMember:familyMember2];
  }

  else
  {
    v6 = 0;
  }

  contactManagentConsentCheck = [(CNUIFamilyMemberWhitelistedContactsController *)self contactManagentConsentCheck];
  v8 = [contactManagentConsentCheck contactManagementConsentStateOfDelegateWithInfo:v6];

  return v8 == 3;
}

- (void)familyMemberContactItemsDidChange
{
  familyMemberContactsPresentation = [(CNUIFamilyMemberWhitelistedContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation familyMemberContactsDidChange];
}

- (NSArray)familyMemberContactItems
{
  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  familyMemberContactItems = [dataSource familyMemberContactItems];
  v4 = [familyMemberContactItems _cn_map:&__block_literal_global_53172];

  return v4;
}

- (int64_t)fetchStatus
{
  dataSource = [(CNUIFamilyMemberWhitelistedContactsController *)self dataSource];
  v3 = +[CNUIFamilyMemberControllerShared contactsUIFetchStatusFromContactsUICoreFetchStatus:](CNUIFamilyMemberControllerShared, "contactsUIFetchStatusFromContactsUICoreFetchStatus:", [dataSource fetchStatus]);

  return v3;
}

- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUIFamilyMemberWhitelistedContactsController.m" lineNumber:99 description:@"communication with presentation should only take place on main thread"];
  }

  familyMemberContactsPresentation = self->_familyMemberContactsPresentation;

  return familyMemberContactsPresentation;
}

- (CNUIFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)member familyMemberContactsPresentation:(id)presentation
{
  memberCopy = member;
  presentationCopy = presentation;
  if (!presentationCopy)
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘familyMemberContactsPresentation’ must be nonnull" userInfo:0];
    objc_exception_throw(v30);
  }

  v9 = presentationCopy;
  v31.receiver = self;
  v31.super_class = CNUIFamilyMemberWhitelistedContactsController;
  v10 = [(CNUIFamilyMemberWhitelistedContactsController *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_familyMember, member);
    objc_storeStrong(&v11->_familyMemberContactsPresentation, presentation);
    defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
    schedulerProvider = v11->_schedulerProvider;
    v11->_schedulerProvider = defaultProvider;

    if (v11->_familyMember)
    {
      v14 = [MEMORY[0x1E695CE18] storeForFamilyMember:memberCopy];
      familyMemberScopedContactStore = v11->_familyMemberScopedContactStore;
      v11->_familyMemberScopedContactStore = v14;

      v16 = MEMORY[0x1E6996B20];
      iosOptions = [MEMORY[0x1E6996B40] iosOptions];
      defaultProvider2 = [MEMORY[0x1E6996820] defaultProvider];
      [v16 controllerWithFamilyMember:memberCopy options:iosOptions schedulerProvider:defaultProvider2];
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x1E695CE78]);
      downtimeContaienerFetcher = v11->_downtimeContaienerFetcher;
      v11->_downtimeContaienerFetcher = v20;

      v22 = MEMORY[0x1E6996B30];
      iosOptions = [MEMORY[0x1E6996B40] iosOptions];
      defaultProvider2 = [MEMORY[0x1E6996820] defaultProvider];
      [v22 controllerWithOptions:iosOptions schedulerProvider:defaultProvider2];
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
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)contactPickerWithDelegate:(id)delegate familyMember:(id)member parentContainer:(id)container
{
  containerCopy = container;
  memberCopy = member;
  delegateCopy = delegate;
  v10 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v10 setMode:2];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  [(CNContactPickerViewController *)v10 setProhibitedPropertyKeys:propertyKeysContainingSenstiveData];

  v12 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [(CNContactPickerViewController *)v10 setPredicateForSelectionOfContact:v12];

  [(CNContactPickerViewController *)v10 setDelegate:delegateCopy];
  [(CNContactPickerViewController *)v10 setFamilyMember:memberCopy];

  [(CNContactPickerViewController *)v10 setParentContainer:containerCopy];

  return v10;
}

@end