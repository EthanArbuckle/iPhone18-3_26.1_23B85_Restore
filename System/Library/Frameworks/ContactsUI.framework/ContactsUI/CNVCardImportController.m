@interface CNVCardImportController
- (BOOL)enqueueContactsAtURL:(id)a3;
- (CNContainer)targetContainer;
- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager;
- (CNVCardImportController)initWithContactStore:(id)a3 presentationDelegate:(id)a4 targetGroup:(id)a5 targetContainer:(id)a6;
- (CNVCardImportControllerDelegate)delegate;
- (CNVCardImportControllerPresentationDelegate)presentationDelegate;
- (UIViewController)presentedViewController;
- (id)authorizationCheckForSavingReceivedContacts;
- (id)contactsFromURL:(id)a3;
- (id)dequeueContacts;
- (void)authorizeAndSaveUnknownPersons;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dismissContactsAndPresentNext;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
- (void)enqueueContacts:(id)a3;
- (void)presentEnqueueResultsUIForResultContacts:(id)a3;
- (void)presentImportUIForContacts:(id)a3;
- (void)processNextContacts;
- (void)saveUnknownPersonsAndMarkSaveWithAuthorizationResult:(int64_t)a3;
- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4;
@end

@implementation CNVCardImportController

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (CNVCardImportControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNVCardImportControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNVCardImportController *)self setEditAuthorizationController:0];
  if (a4 == 2)
  {

    [(CNVCardImportController *)self saveUnknownPersonsAndMarkSaveWithAuthorizationResult:2];
  }

  else
  {
    v6 = CNUILogContactList();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "vCard not imported, user is not authorized to edit contacts", v7, 2u);
    }

    [(CNVCardImportController *)self dismissContactsAndPresentNext];
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(CNVCardImportController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CNVCardImportController *)self delegate];
      v12[0] = v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v10 vCardImportController:self didSaveContacts:v11];
    }
  }

  [(CNVCardImportController *)self dismissContactsAndPresentNext];
}

- (void)saveUnknownPersonsAndMarkSaveWithAuthorizationResult:(int64_t)a3
{
  v5 = [(CNVCardImportController *)self receivedContactsQueue];
  v17 = [v5 peek];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v6 = [v17 _cn_map:&__block_literal_global_38180];
    v7 = [(CNVCardImportController *)self authorizationCheckForSavingReceivedContacts];
    v8 = [v7 shouldBypassRestrictionsGivenAuthorizationResult:a3];

    v9 = [(CNVCardImportController *)self groupsAndContainersSaveManager];
    v10 = [(CNVCardImportController *)self targetGroup];
    v11 = [(CNVCardImportController *)self targetContainer];
    v12 = [v9 addContacts:v6 toGroup:v10 inContainer:v11 moveWasAuthorized:v8];

    if ([v12 saveDidSucceed])
    {
      v13 = [(CNVCardImportController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [(CNVCardImportController *)self delegate];
        v16 = [v12 addedContacts];
        [v15 vCardImportController:self didSaveContacts:v16];
      }
    }
  }

  [(CNVCardImportController *)self dismissContactsAndPresentNext];
}

id __80__CNVCardImportController_saveUnknownPersonsAndMarkSaveWithAuthorizationResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNVCardImportController *)self setEditAuthorizationController:v7];

  v8 = [(CNVCardImportController *)self editAuthorizationController];
  [v8 setDelegate:self];

  v9 = [(CNVCardImportController *)self editAuthorizationController];
  [v9 setSender:v6];

  v10 = [(CNVCardImportController *)self editAuthorizationController];
  [v10 setAnimated:v4];

  v11 = [(CNVCardImportController *)self presentedViewController];
  v12 = [(CNVCardImportController *)self editAuthorizationController];
  [v12 setGuardedViewController:v11];

  v13 = [(CNVCardImportController *)self editAuthorizationController];
  [v13 presentAuthorizationUI];
}

- (id)authorizationCheckForSavingReceivedContacts
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  v4 = [(CNVCardImportController *)self receivedContactsQueue];
  v5 = [v4 peek];
  v6 = [v5 firstObject];
  v7 = [(CNVCardImportController *)self targetContainer];
  v8 = [v3 initWithContact:v6 parentContainer:v7 ignoresParentalRestrictions:0];

  return v8;
}

- (void)authorizeAndSaveUnknownPersons
{
  v3 = [(CNVCardImportController *)self authorizationCheckForSavingReceivedContacts];
  v4 = [v3 shouldPromptForPasscodeAuthorization];

  if (v4)
  {

    [(CNVCardImportController *)self showEditAuthorizationPane:0 animated:1];
  }

  else
  {

    [(CNVCardImportController *)self saveUnknownPersonsAndMarkSaveWithAuthorizationResult:0];
  }
}

- (void)dismissContactsAndPresentNext
{
  v3 = [(CNVCardImportController *)self presentedViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CNVCardImportController_dismissContactsAndPresentNext__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __56__CNVCardImportController_dismissContactsAndPresentNext__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dequeueContacts];
  v3 = *(a1 + 32);

  return [v3 processNextContacts];
}

- (void)presentImportUIForContacts:(id)a3
{
  v21 = a3;
  if ([v21 count] == 1)
  {
    v4 = [v21 firstObject];
    v5 = [CNContactViewController viewControllerForUnknownContact:v4];

    v6 = [(CNVCardImportController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)v5 setContactStore:v6];

    [(CNMultipleUnknownContactsViewController *)v5 setDelegate:self];
    v7 = [(CNVCardImportController *)self targetGroup];
    [(CNMultipleUnknownContactsViewController *)v5 setParentGroup:v7];

    v8 = [(CNVCardImportController *)self targetContainer];
    [(CNMultipleUnknownContactsViewController *)v5 setParentContainer:v8];

    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel_saveUnknownPersons_];
    v10 = [(CNMultipleUnknownContactsViewController *)v5 navigationItem];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v11 = [CNMultipleUnknownContactsViewController alloc];
    v12 = [(CNVCardImportController *)self targetGroup];
    v13 = [(CNVCardImportController *)self targetContainer];
    v5 = [(CNMultipleUnknownContactsViewController *)v11 initWithContacts:v21 targetGroup:v12 targetContainer:v13];

    v14 = [(CNVCardImportController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)v5 setContactStore:v14];

    [(CNMultipleUnknownContactsViewController *)v5 setDelegate:self];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelModalUnknownPersons_];
  v16 = [(CNMultipleUnknownContactsViewController *)v5 navigationItem];
  [v16 setLeftBarButtonItem:v15];

  v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v17 setModalPresentationStyle:2];
  }

  [(CNVCardImportController *)self setPresentedViewController:v17];
  v20 = [(CNVCardImportController *)self presentationDelegate];
  [v20 vCardImportController:self presentViewController:v17 animated:1];
}

- (void)processNextContacts
{
  v3 = [(CNVCardImportController *)self receivedContactsQueue];
  v10 = [v3 peek];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v4 = [(CNVCardImportController *)self delegate];
    if (v4)
    {
      v5 = v4;
      v6 = [(CNVCardImportController *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(CNVCardImportController *)self delegate];
        [v8 vCardImportControllerDidCompleteQueue:self];

        v9 = [(CNVCardImportController *)self receivedContactsQueue];
        objc_sync_enter(v9);
        [(CNVCardImportController *)self setReceivedContactsQueue:0];
        objc_sync_exit(v9);
      }
    }
  }

  else
  {
    [(CNVCardImportController *)self presentImportUIForContacts:v10];
  }
}

- (id)dequeueContacts
{
  v3 = [(CNVCardImportController *)self receivedContactsQueue];
  objc_sync_enter(v3);
  v4 = [(CNVCardImportController *)self receivedContactsQueue];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CNVCardImportController *)self receivedContactsQueue];
    v7 = [v6 dequeue];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)enqueueContacts:(id)a3
{
  v8 = a3;
  v4 = [(CNVCardImportController *)self receivedContactsQueue];
  objc_sync_enter(v4);
  v5 = [(CNVCardImportController *)self receivedContactsQueue];
  [v5 enqueue:v8];

  v6 = [(CNVCardImportController *)self receivedContactsQueue];
  v7 = [v6 count];

  if (v7 == 1)
  {
    [(CNVCardImportController *)self processNextContacts];
  }

  objc_sync_exit(v4);
}

- (BOOL)enqueueContactsAtURL:(id)a3
{
  v4 = [(CNVCardImportController *)self contactsFromURL:a3];
  v5 = (*(*MEMORY[0x1E6996530] + 16))();
  if ((v5 & 1) == 0)
  {
    [(CNVCardImportController *)self enqueueContacts:v4];
  }

  return v5 ^ 1;
}

- (void)presentEnqueueResultsUIForResultContacts:(id)a3
{
  if (!a3)
  {
    v4 = [(CNVCardImportController *)self presentationDelegate];

    if (v4)
    {
      v5 = MEMORY[0x1E69DC650];
      v6 = CNContactsUIBundle();
      v7 = [v6 localizedStringForKey:@"Unable to open contact card." value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [v5 alertControllerWithTitle:0 message:v7 preferredStyle:1];

      v8 = [(CNVCardImportController *)self presentationDelegate];
      [v8 vCardImportController:self presentViewController:v9 animated:1];
    }
  }
}

- (id)contactsFromURL:(id)a3
{
  v4 = a3;
  v5 = [v4 startAccessingSecurityScopedResource];
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E695CE30] contactsWithData:v6 error:0];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (v5)
  {
LABEL_3:
    [v4 stopAccessingSecurityScopedResource];
  }

LABEL_4:
  [(CNVCardImportController *)self presentEnqueueResultsUIForResultContacts:v7];

  return v7;
}

- (CNContainer)targetContainer
{
  v13[1] = *MEMORY[0x1E69E9840];
  targetContainer = self->_targetContainer;
  if (targetContainer)
  {
    v3 = targetContainer;
  }

  else
  {
    v5 = MEMORY[0x1E695CE48];
    v6 = [(CNVCardImportController *)self contactStore];
    v7 = [v6 defaultContainerIdentifier];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [v5 predicateForContainersWithIdentifiers:v8];

    v10 = [(CNVCardImportController *)self contactStore];
    v11 = [v10 containersMatchingPredicate:v9 error:0];
    v3 = [v11 firstObject];
  }

  return v3;
}

- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager
{
  groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  if (!groupsAndContainersSaveManager)
  {
    v4 = [CNUIGroupsAndContainersSaveManager alloc];
    v5 = [(CNVCardImportController *)self contactStore];
    v6 = [(CNUIGroupsAndContainersSaveManager *)v4 initWithContactStore:v5];
    v7 = self->_groupsAndContainersSaveManager;
    self->_groupsAndContainersSaveManager = v6;

    groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  }

  v8 = groupsAndContainersSaveManager;

  return v8;
}

- (CNVCardImportController)initWithContactStore:(id)a3 presentationDelegate:(id)a4 targetGroup:(id)a5 targetContainer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = CNVCardImportController;
  v15 = [(CNVCardImportController *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_presentationDelegate, v12);
    objc_storeStrong(&v16->_contactStore, a3);
    v17 = objc_alloc_init(MEMORY[0x1E69967F0]);
    receivedContactsQueue = v16->_receivedContactsQueue;
    v16->_receivedContactsQueue = v17;

    objc_storeStrong(&v16->_targetGroup, a5);
    objc_storeStrong(&v16->_targetContainer, a6);
    v19 = v16;
  }

  return v16;
}

@end