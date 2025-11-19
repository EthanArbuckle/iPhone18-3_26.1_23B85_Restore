@interface CNUIFamilyMemberContactsController
+ (BOOL)isViewController:(id)a3 presentedByContactPicker:(id)a4;
- (CNContactPickerViewController)contactPickerViewController;
- (CNUIFamilyMemberContactsController)init;
- (CNUIFamilyMemberContactsController)initWithFamilyMember:(id)a3 familyMemberContactsPresentation:(id)a4;
- (CNUIFamilyMemberContactsControllerDelegate)delegate;
- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation;
- (id)anchorViewForAddContactsInteraction;
- (int64_t)countOfFamilyMemberContacts;
- (int64_t)fetchStatus;
- (void)addContactsOptionsSheetViewControllerDidSelectAddFromLocalContacts:(id)a3;
- (void)addContactsOptionsSheetViewControllerDidSelectAddNewContact:(id)a3;
- (void)cancelPresentationOfViewController:(id)a3;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dismissPresentedViewController:(id)a3;
- (void)downtimePickerController:(id)a3 didFinishWithContacts:(id)a4;
- (void)familyMemberContactItemsDidChange;
- (void)performAddContactsInteraction;
- (void)performAddFromMainContactsInteraction;
- (void)performDefaultInteraction;
- (void)performDisplayContactsInteraction;
- (void)performInteraction:(int64_t)a3;
- (void)pickerDidSelectAddNewContact:(id)a3;
- (void)presentViewController:(id)a3;
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

- (void)downtimePickerController:(id)a3 didFinishWithContacts:(id)a4
{
  v9 = a4;
  v6 = *MEMORY[0x1E6996530];
  v7 = *(*MEMORY[0x1E6996530] + 16);
  v8 = a3;
  if (v7(v6, v9))
  {
    [(CNUIFamilyMemberContactsController *)self cancelPresentationOfViewController:v8];
  }

  else
  {
    [(CNUIFamilyMemberContactsController *)self dismissPresentedViewController:v8];

    v8 = [(CNUIFamilyMemberContactsController *)self dataSource];
    [v8 updateListByAddingContacts:v9];
  }
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  [(CNUIFamilyMemberContactsController *)self setContactPickerViewController:0];
  [(CNUIFamilyMemberContactsController *)self cancelPresentationOfViewController:v4];
}

- (void)pickerDidSelectAddNewContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberContactsController *)self familyMember];
  v9 = [CNUIFamilyMemberControllerShared addContactsOptionsSheetForFamilyMember:v5 delegate:self];

  v6 = [v4 addContactBarButtonItem];
  v7 = [v9 popoverPresentationController];
  [v7 setBarButtonItem:v6];

  v8 = [v9 popoverPresentationController];
  [v8 setCanOverlapSourceViewRect:1];

  [v4 presentViewController:v9 animated:1 completion:0];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = [a3 navigationController];
  [(CNUIFamilyMemberContactsController *)self dismissPresentedViewController:v5];
}

- (void)cancelPresentationOfViewController:(id)a3
{
  v10 = a3;
  v4 = objc_opt_class();
  v5 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
  LODWORD(v4) = [v4 isViewController:v10 presentedByContactPicker:v5];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    v6 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    v8 = objc_opt_respondsToSelector();

    v9 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    v6 = v9;
    if (v8)
    {
      [v9 presentedViewControllerDidCancel:v10];
    }

    else
    {
      [v9 dismissPresentedViewController:v10];
    }
  }

LABEL_8:
}

- (void)dismissPresentedViewController:(id)a3
{
  v7 = a3;
  v4 = objc_opt_class();
  v5 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
  LODWORD(v4) = [v4 isViewController:v7 presentedByContactPicker:v5];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v6 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    [v6 dismissPresentedViewController:v7];
  }

LABEL_6:
}

- (void)presentViewController:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];

  if (v5)
  {
    v6 = [(CNUIFamilyMemberContactsController *)self contactPickerViewController];
    [v6 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v6 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
    [v6 presentViewController:v4];
  }
}

- (void)addContactsOptionsSheetViewControllerDidSelectAddNewContact:(id)a3
{
  v7 = [CNContactViewController viewControllerForNewContact:0];
  [v7 setIgnoresParentalRestrictions:1];
  v4 = [(CNUIFamilyMemberContactsController *)self familyMemberScopedContactStore];
  [v7 setContactStore:v4];

  [v7 setDisplayMode:2];
  [v7 setDelegate:self];
  v5 = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  [v7 setProhibitedPropertyKeys:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v6 setModalPresentationStyle:2];
  [(CNUIFamilyMemberContactsController *)self presentViewController:v6];
}

- (void)addContactsOptionsSheetViewControllerDidSelectAddFromLocalContacts:(id)a3
{
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  v5 = [(CNUIFamilyMemberContactsController *)self familyMember];
  v6 = +[CNUIFamilyMemberContactsEditingStrategy managedContactsStrategy];
  v7 = [(CNUIFamilyMemberDowntimeContactPickerController *)v4 initWithChildFamilyMember:v5 allFamilyMembers:0 contactStore:v9 editingStrategy:v6 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v7 setShouldPreselectFamilyMemberContacts:[(CNUIFamilyMemberContactsController *)self countOfFamilyMemberContacts]== 0];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v7 setDelegate:self];
  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:2];
  [(CNUIFamilyMemberContactsController *)self presentViewController:v8];
}

- (id)anchorViewForAddContactsInteraction
{
  v3 = [(CNUIFamilyMemberContactsController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNUIFamilyMemberContactsController *)self delegate];
    v6 = [v5 contactsController:self anchorViewForPresentationOfInteraction:1];
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

- (void)performAddContactsInteraction
{
  v3 = [(CNUIFamilyMemberContactsController *)self familyMember];
  v11 = [CNUIFamilyMemberControllerShared addContactsOptionsSheetForFamilyMember:v3 delegate:self];

  v4 = [(CNUIFamilyMemberContactsController *)self anchorViewForAddContactsInteraction];
  v5 = [v11 popoverPresentationController];
  [v5 setSourceView:v4];

  [v4 bounds];
  MidX = CGRectGetMidX(v13);
  [v4 bounds];
  MinY = CGRectGetMinY(v14);
  v8 = [v11 popoverPresentationController];
  [v8 setSourceRect:{MidX, MinY, 0.0, 0.0}];

  v9 = [v11 popoverPresentationController];
  [v9 setPermittedArrowDirections:2];

  v10 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [v10 presentViewController:v11];
}

- (void)performAddFromMainContactsInteraction
{
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = [CNUIFamilyMemberDowntimeContactPickerController alloc];
  v4 = [(CNUIFamilyMemberContactsController *)self familyMember];
  v5 = +[CNUIFamilyMemberContactsEditingStrategy managedContactsStrategy];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)v3 initWithChildFamilyMember:v4 allFamilyMembers:0 contactStore:v9 editingStrategy:v5 showingFamilyMemberContacts:0];

  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setShouldPreselectFamilyMemberContacts:[(CNUIFamilyMemberContactsController *)self countOfFamilyMemberContacts]== 0];
  [(CNUIFamilyMemberDowntimeContactPickerController *)v6 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:2];
  v8 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [v8 presentViewController:v7];
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
  v3 = [(CNUIFamilyMemberContactsController *)self familyMember];
  [(CNContactPickerViewController *)v6 setFamilyMember:v3];

  v4 = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  [(CNContactPickerViewController *)v6 setProhibitedPropertyKeys:v4];

  [(CNUIFamilyMemberContactsController *)self setContactPickerViewController:v6];
  v5 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [v5 presentViewController:v6];
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

- (void)performInteraction:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(CNUIFamilyMemberContactsController *)self performAddFromMainContactsInteraction];
    }

    else if (a3 == 3)
    {
      [(CNUIFamilyMemberContactsController *)self performDisplayContactsInteraction];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
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
  v2 = [(CNUIFamilyMemberContactsController *)self familyMemberContactsPresentation];
  [v2 familyMemberContactsDidChange];
}

- (int64_t)countOfFamilyMemberContacts
{
  v2 = [(CNUIFamilyMemberContactsController *)self dataSource];
  v3 = [v2 countOfFamilyMemberContacts];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)fetchStatus
{
  v2 = [(CNUIFamilyMemberContactsController *)self dataSource];
  v3 = +[CNUIFamilyMemberControllerShared contactsUIFetchStatusFromContactsUICoreFetchStatus:](CNUIFamilyMemberControllerShared, "contactsUIFetchStatusFromContactsUICoreFetchStatus:", [v2 fetchStatus]);

  return v3;
}

- (CNUIFamilyMemberContactsPresentation)familyMemberContactsPresentation
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CNUIFamilyMemberContactsController.m" lineNumber:70 description:@"communication with presentation should only take place on main thread"];
  }

  familyMemberContactsPresentation = self->_familyMemberContactsPresentation;

  return familyMemberContactsPresentation;
}

- (CNUIFamilyMemberContactsController)initWithFamilyMember:(id)a3 familyMemberContactsPresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"parameter ‘familyMember’ must be nonnull";
    goto LABEL_8;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_familyMember, a3);
    objc_storeStrong(&v11->_familyMemberContactsPresentation, a4);
    v12 = [MEMORY[0x1E695CE18] storeForFamilyMember:v7];
    familyMemberScopedContactStore = v11->_familyMemberScopedContactStore;
    v11->_familyMemberScopedContactStore = v12;

    v14 = [MEMORY[0x1E6996820] defaultProvider];
    schedulerProvider = v11->_schedulerProvider;
    v11->_schedulerProvider = v14;

    v16 = [objc_alloc(MEMORY[0x1E6996B18]) initWithFamilyMember:v7 schedulerProvider:v11->_schedulerProvider];
    dataSource = v11->_dataSource;
    v11->_dataSource = v16;

    [(CNUICoreFamilyMemberContactsDataSource *)v11->_dataSource setObserver:v11];
    v18 = v11;
  }

  return v11;
}

- (CNUIFamilyMemberContactsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (BOOL)isViewController:(id)a3 presentedByContactPicker:(id)a4
{
  if (a4)
  {
    v4 = a3 == a4;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

@end