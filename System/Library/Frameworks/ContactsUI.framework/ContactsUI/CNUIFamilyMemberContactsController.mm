@interface CNUIFamilyMemberContactsController
+ (BOOL)isViewController:(id)controller presentedByContactPicker:(id)picker;
- (CNContactPickerViewController)contactPickerViewController;
- (CNUIFamilyMemberContactsController)init;
- (CNUIFamilyMemberContactsController)initWithFamilyMember:(id)member familyMemberContactsPresentation:(id)presentation;
- (CNUIFamilyMemberContactsControllerDelegate)delegate;
- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation;
- (id)anchorViewForAddContactsInteraction;
- (int64_t)countOfFamilyMemberContacts;
- (int64_t)fetchStatus;
- (void)addContactsOptionsSheetViewControllerDidSelectAddFromLocalContacts:(id)contacts;
- (void)addContactsOptionsSheetViewControllerDidSelectAddNewContact:(id)contact;
- (void)cancelPresentationOfViewController:(id)controller;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dismissPresentedViewController:(id)controller;
- (void)downtimePickerController:(id)controller didFinishWithContacts:(id)contacts;
- (void)familyMemberContactItemsDidChange;
- (void)performAddContactsInteraction;
- (void)performAddFromMainContactsInteraction;
- (void)performDefaultInteraction;
- (void)performDisplayContactsInteraction;
- (void)performInteraction:(int64_t)interaction;
- (void)pickerDidSelectAddNewContact:(id)contact;
- (void)presentViewController:(id)controller;
@end

@implementation CNUIFamilyMemberContactsController

- (CNContactPickerViewController)contactPickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactPickerViewController);

  return WeakRetained;
}

- (CNUIFamilyMemberContactsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)downtimePickerController:(id)controller didFinishWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v6 = *MEMORY[0x1E6996530];
  v7 = *(*MEMORY[0x1E6996530] + 16);
  controllerCopy = controller;
  if (v7(v6, contactsCopy))
  {
    [(CNUIFamilyMemberContactsController *)self cancelPresentationOfViewController:controllerCopy];
  }

  else
  {
    [(CNUIFamilyMemberContactsController *)self dismissPresentedViewController:controllerCopy];

    controllerCopy = [(CNUIFamilyMemberContactsController *)self dataSource];
    [controllerCopy updateListByAddingContacts:contactsCopy];
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [(CNUIFamilyMemberContactsController *)self setContactPickerViewController:0];
  [(CNUIFamilyMemberContactsController *)self cancelPresentationOfViewController:cancelCopy];
}

- (void)pickerDidSelectAddNewContact:(id)contact
{
  contactCopy = contact;
  familyMember = [(CNUIFamilyMemberContactsController *)self familyMember];
  v9 = [CNUIFamilyMemberControllerShared addContactsOptionsSheetForFamilyMember:familyMember delegate:self];

  addContactBarButtonItem = [contactCopy addContactBarButtonItem];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:addContactBarButtonItem];

  popoverPresentationController2 = [v9 popoverPresentationController];
  [popoverPresentationController2 setCanOverlapSourceViewRect:1];

  [contactCopy presentViewController:v9 animated:1 completion:0];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  navigationController = [controller navigationController];
  [(CNUIFamilyMemberContactsController *)self dismissPresentedViewController:navigationController];
}

- (void)cancelPresentationOfViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_class();
  contactPickerViewController = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
  LODWORD(v4) = [v4 isViewController:controllerCopy presentedByContactPicker:contactPickerViewController];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    contactPickerViewController2 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [contactPickerViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    familyMemberContactsPresentation = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    v8 = objc_opt_respondsToSelector();

    familyMemberContactsPresentation2 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    contactPickerViewController2 = familyMemberContactsPresentation2;
    if (v8)
    {
      [familyMemberContactsPresentation2 presentedViewControllerDidCancel:controllerCopy];
    }

    else
    {
      [familyMemberContactsPresentation2 dismissPresentedViewController:controllerCopy];
    }
  }

LABEL_8:
}

- (void)dismissPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_class();
  contactPickerViewController = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
  LODWORD(v4) = [v4 isViewController:controllerCopy presentedByContactPicker:contactPickerViewController];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    contactPickerViewController2 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [contactPickerViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    contactPickerViewController2 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    [contactPickerViewController2 dismissPresentedViewController:controllerCopy];
  }

LABEL_6:
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  contactPickerViewController = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];

  if (contactPickerViewController)
  {
    contactPickerViewController2 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [contactPickerViewController2 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    contactPickerViewController2 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    [contactPickerViewController2 presentViewController:controllerCopy];
  }
}

- (void)addContactsOptionsSheetViewControllerDidSelectAddNewContact:(id)contact
{
  v7 = [CNContactViewController viewControllerForNewContact:0];
  [v7 setIgnoresParentalRestrictions:1];
  familyMemberScopedContactStore = [(CNUIFamilyMemberContactsController *)self familyMemberScopedContactStore];
  [v7 setContactStore:familyMemberScopedContactStore];

  [v7 setDisplayMode:2];
  [v7 setDelegate:self];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  [v7 setProhibitedPropertyKeys:propertyKeysContainingSenstiveData];

  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v6 setModalPresentationStyle:2];
  [(CNUIFamilyMemberContactsController *)self presentViewController:v6];
}

- (void)addContactsOptionsSheetViewControllerDidSelectAddFromLocalContacts:(id)contacts
{
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  familyMember = [(CNUIFamilyMemberContactsController *)self familyMember];
  v6 = +[CNUIFamilyMemberContactsEditingStrategy managedContactsStrategy];
  v7 = [(CNUIFamilyMemberDowntimeContactPickerController *)v4 initWithChildFamilyMember:familyMember allFamilyMembers:0 contactStore:v9 editingStrategy:v6 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v7 setShouldPreselectFamilyMemberContacts:[(CNUIFamilyMemberContactsController *)self countOfFamilyMemberContacts]== 0];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:2];
  [(CNUIFamilyMemberContactsController *)self presentViewController:v8];
}

- (id)anchorViewForAddContactsInteraction
{
  delegate = [(CNUIFamilyMemberContactsController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNUIFamilyMemberContactsController *)self delegate];
    view = [delegate2 contactsController:self anchorViewForPresentationOfInteraction:1];
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

- (void)performAddContactsInteraction
{
  familyMember = [(CNUIFamilyMemberContactsController *)self familyMember];
  v11 = [CNUIFamilyMemberControllerShared addContactsOptionsSheetForFamilyMember:familyMember delegate:self];

  anchorViewForAddContactsInteraction = [(CNUIFamilyMemberContactsController *)self anchorViewForAddContactsInteraction];
  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setSourceView:anchorViewForAddContactsInteraction];

  [anchorViewForAddContactsInteraction bounds];
  MidX = CGRectGetMidX(v13);
  [anchorViewForAddContactsInteraction bounds];
  MinY = CGRectGetMinY(v14);
  popoverPresentationController2 = [v11 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{MidX, MinY, 0.0, 0.0}];

  popoverPresentationController3 = [v11 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:2];

  familyMemberContactsPresentation = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v11];
}

- (void)performAddFromMainContactsInteraction
{
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  familyMember = [(CNUIFamilyMemberContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy managedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:familyMember allFamilyMembers:0 contactStore:v9 editingStrategy:v5 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:[(CNUIFamilyMemberContactsController *)self countOfFamilyMemberContacts]== 0];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:2];
  familyMemberContactsPresentation = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v7];
}

- (void)performDisplayContactsInteraction
{
  v6 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v6 setDelegate:self];
  [(CNContactPickerViewController *)v6 setMode:2];
  [(CNContactPickerViewController *)v6 setAllowsEditing:1];
  [(CNContactPickerViewController *)v6 setAllowsDeletion:1];
  [(CNContactPickerViewController *)v6 setAllowsCancel:0];
  [(CNContactPickerViewController *)v6 setAllowsDone:1];
  [(CNContactPickerViewController *)v6 setIgnoresParentalRestrictions:1];
  familyMember = [(CNUIFamilyMemberContactsController *)self familyMember];
  [(CNContactPickerViewController *)v6 setFamilyMember:familyMember];

  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  [(CNContactPickerViewController *)v6 setProhibitedPropertyKeys:propertyKeysContainingSenstiveData];

  [(CNUIFamilyMemberContactsController *)self setContactPickerViewController:v6];
  familyMemberContactsPresentation = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation presentViewController:v6];
}

- (void)performDefaultInteraction
{
  if ([(CNUIFamilyMemberContactsController *)self fetchStatus]== 2 && [(CNUIFamilyMemberContactsController *)self countOfFamilyMemberContacts]>= 1)
  {

    [(CNUIFamilyMemberContactsController *)self performDisplayContactsInteraction];
  }

  else
  {

    [(CNUIFamilyMemberContactsController *)self performAddContactsInteraction];
  }
}

- (void)performInteraction:(int64_t)interaction
{
  if (interaction > 1)
  {
    if (interaction == 2)
    {
      [(CNUIFamilyMemberContactsController *)self performAddFromMainContactsInteraction];
    }

    else if (interaction == 3)
    {
      [(CNUIFamilyMemberContactsController *)self performDisplayContactsInteraction];
    }
  }

  else if (interaction)
  {
    if (interaction == 1)
    {
      [(CNUIFamilyMemberContactsController *)self performAddContactsInteraction];
    }
  }

  else
  {
    [(CNUIFamilyMemberContactsController *)self performDefaultInteraction];
  }
}

- (void)familyMemberContactItemsDidChange
{
  familyMemberContactsPresentation = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [familyMemberContactsPresentation familyMemberContactsDidChange];
}

- (int64_t)countOfFamilyMemberContacts
{
  dataSource = [(CNUIFamilyMemberContactsController *)self dataSource];
  countOfFamilyMemberContacts = [dataSource countOfFamilyMemberContacts];
  integerValue = [countOfFamilyMemberContacts integerValue];

  return integerValue;
}

- (int64_t)fetchStatus
{
  dataSource = [(CNUIFamilyMemberContactsController *)self dataSource];
  v3 = +[CNUIFamilyMemberControllerShared contactsUIFetchStatusFromContactsUICoreFetchStatus:](CNUIFamilyMemberControllerShared, "contactsUIFetchStatusFromContactsUICoreFetchStatus:", [dataSource fetchStatus]);

  return v3;
}

- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUIFamilyMemberContactsController.m" lineNumber:70 description:@"communication with presentation should only take place on main thread"];
  }

  familyMemberContactsPresentation = self->_familyMemberContactsPresentation;

  return familyMemberContactsPresentation;
}

- (CNUIFamilyMemberContactsController)initWithFamilyMember:(id)member familyMemberContactsPresentation:(id)presentation
{
  memberCopy = member;
  presentationCopy = presentation;
  if (!memberCopy)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"parameter ‘familyMember’ must be nonnull";
    goto LABEL_8;
  }

  v9 = presentationCopy;
  if (!presentationCopy)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"parameter ‘familyMemberContactsPresentation’ must be nonnull";
LABEL_8:
    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

  v24.receiver = self;
  v24.super_class = CNUIFamilyMemberContactsController;
  v10 = [(CNUIFamilyMemberContactsController *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_familyMember, member);
    objc_storeStrong(&v11->_familyMemberContactsPresentation, presentation);
    v12 = [MEMORY[0x1E695CE18] storeForFamilyMember:memberCopy];
    familyMemberScopedContactStore = v11->_familyMemberScopedContactStore;
    v11->_familyMemberScopedContactStore = v12;

    defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
    schedulerProvider = v11->_schedulerProvider;
    v11->_schedulerProvider = defaultProvider;

    v16 = [objc_alloc(MEMORY[0x1E6996B18]) initWithFamilyMember:memberCopy schedulerProvider:v11->_schedulerProvider];
    dataSource = v11->_dataSource;
    v11->_dataSource = v16;

    [(CNUICoreFamilyMemberContactsDataSource *)v11->_dataSource setObserver:v11];
    v18 = v11;
  }

  return v11;
}

- (CNUIFamilyMemberContactsController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (BOOL)isViewController:(id)controller presentedByContactPicker:(id)picker
{
  if (picker)
  {
    v4 = controller == picker;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

@end