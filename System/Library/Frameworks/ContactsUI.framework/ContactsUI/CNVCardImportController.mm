@interface CNVCardImportController
- (BOOL)enqueueContactsAtURL:(id)l;
- (CNContainer)targetContainer;
- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager;
- (CNVCardImportController)initWithContactStore:(id)store presentationDelegate:(id)delegate targetGroup:(id)group targetContainer:(id)container;
- (CNVCardImportControllerDelegate)delegate;
- (CNVCardImportControllerPresentationDelegate)presentationDelegate;
- (UIViewController)presentedViewController;
- (id)authorizationCheckForSavingReceivedContacts;
- (id)contactsFromURL:(id)l;
- (id)dequeueContacts;
- (void)authorizeAndSaveUnknownPersons;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dismissContactsAndPresentNext;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
- (void)enqueueContacts:(id)contacts;
- (void)presentEnqueueResultsUIForResultContacts:(id)contacts;
- (void)presentImportUIForContacts:(id)contacts;
- (void)processNextContacts;
- (void)saveUnknownPersonsAndMarkSaveWithAuthorizationResult:(int64_t)result;
- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated;
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

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNVCardImportController *)self setEditAuthorizationController:0];
  if (result == 2)
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

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v12[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  if (contactCopy)
  {
    delegate = [(CNVCardImportController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(CNVCardImportController *)self delegate];
      v12[0] = contactCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [delegate2 vCardImportController:self didSaveContacts:v11];
    }
  }

  [(CNVCardImportController *)self dismissContactsAndPresentNext];
}

- (void)saveUnknownPersonsAndMarkSaveWithAuthorizationResult:(int64_t)result
{
  receivedContactsQueue = [(CNVCardImportController *)self receivedContactsQueue];
  peek = [receivedContactsQueue peek];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v6 = [peek _cn_map:&__block_literal_global_38180];
    authorizationCheckForSavingReceivedContacts = [(CNVCardImportController *)self authorizationCheckForSavingReceivedContacts];
    v8 = [authorizationCheckForSavingReceivedContacts shouldBypassRestrictionsGivenAuthorizationResult:result];

    groupsAndContainersSaveManager = [(CNVCardImportController *)self groupsAndContainersSaveManager];
    targetGroup = [(CNVCardImportController *)self targetGroup];
    targetContainer = [(CNVCardImportController *)self targetContainer];
    v12 = [groupsAndContainersSaveManager addContacts:v6 toGroup:targetGroup inContainer:targetContainer moveWasAuthorized:v8];

    if ([v12 saveDidSucceed])
    {
      delegate = [(CNVCardImportController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(CNVCardImportController *)self delegate];
        addedContacts = [v12 addedContacts];
        [delegate2 vCardImportController:self didSaveContacts:addedContacts];
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

- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated
{
  animatedCopy = animated;
  paneCopy = pane;
  v7 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNVCardImportController *)self setEditAuthorizationController:v7];

  editAuthorizationController = [(CNVCardImportController *)self editAuthorizationController];
  [editAuthorizationController setDelegate:self];

  editAuthorizationController2 = [(CNVCardImportController *)self editAuthorizationController];
  [editAuthorizationController2 setSender:paneCopy];

  editAuthorizationController3 = [(CNVCardImportController *)self editAuthorizationController];
  [editAuthorizationController3 setAnimated:animatedCopy];

  presentedViewController = [(CNVCardImportController *)self presentedViewController];
  editAuthorizationController4 = [(CNVCardImportController *)self editAuthorizationController];
  [editAuthorizationController4 setGuardedViewController:presentedViewController];

  editAuthorizationController5 = [(CNVCardImportController *)self editAuthorizationController];
  [editAuthorizationController5 presentAuthorizationUI];
}

- (id)authorizationCheckForSavingReceivedContacts
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  receivedContactsQueue = [(CNVCardImportController *)self receivedContactsQueue];
  peek = [receivedContactsQueue peek];
  firstObject = [peek firstObject];
  targetContainer = [(CNVCardImportController *)self targetContainer];
  v8 = [v3 initWithContact:firstObject parentContainer:targetContainer ignoresParentalRestrictions:0];

  return v8;
}

- (void)authorizeAndSaveUnknownPersons
{
  authorizationCheckForSavingReceivedContacts = [(CNVCardImportController *)self authorizationCheckForSavingReceivedContacts];
  shouldPromptForPasscodeAuthorization = [authorizationCheckForSavingReceivedContacts shouldPromptForPasscodeAuthorization];

  if (shouldPromptForPasscodeAuthorization)
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
  presentedViewController = [(CNVCardImportController *)self presentedViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CNVCardImportController_dismissContactsAndPresentNext__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [presentedViewController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __56__CNVCardImportController_dismissContactsAndPresentNext__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dequeueContacts];
  v3 = *(a1 + 32);

  return [v3 processNextContacts];
}

- (void)presentImportUIForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    firstObject = [contactsCopy firstObject];
    v5 = [CNContactViewController viewControllerForUnknownContact:firstObject];

    contactStore = [(CNVCardImportController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)v5 setContactStore:contactStore];

    [(CNMultipleUnknownContactsViewController *)v5 setDelegate:self];
    targetGroup = [(CNVCardImportController *)self targetGroup];
    [(CNMultipleUnknownContactsViewController *)v5 setParentGroup:targetGroup];

    targetContainer = [(CNVCardImportController *)self targetContainer];
    [(CNMultipleUnknownContactsViewController *)v5 setParentContainer:targetContainer];

    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel_saveUnknownPersons_];
    navigationItem = [(CNMultipleUnknownContactsViewController *)v5 navigationItem];
    [navigationItem setRightBarButtonItem:v9];
  }

  else
  {
    v11 = [CNMultipleUnknownContactsViewController alloc];
    targetGroup2 = [(CNVCardImportController *)self targetGroup];
    targetContainer2 = [(CNVCardImportController *)self targetContainer];
    v5 = [(CNMultipleUnknownContactsViewController *)v11 initWithContacts:contactsCopy targetGroup:targetGroup2 targetContainer:targetContainer2];

    contactStore2 = [(CNVCardImportController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)v5 setContactStore:contactStore2];

    [(CNMultipleUnknownContactsViewController *)v5 setDelegate:self];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelModalUnknownPersons_];
  navigationItem2 = [(CNMultipleUnknownContactsViewController *)v5 navigationItem];
  [navigationItem2 setLeftBarButtonItem:v15];

  v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v17 setModalPresentationStyle:2];
  }

  [(CNVCardImportController *)self setPresentedViewController:v17];
  presentationDelegate = [(CNVCardImportController *)self presentationDelegate];
  [presentationDelegate vCardImportController:self presentViewController:v17 animated:1];
}

- (void)processNextContacts
{
  receivedContactsQueue = [(CNVCardImportController *)self receivedContactsQueue];
  peek = [receivedContactsQueue peek];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    delegate = [(CNVCardImportController *)self delegate];
    if (delegate)
    {
      v5 = delegate;
      delegate2 = [(CNVCardImportController *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        delegate3 = [(CNVCardImportController *)self delegate];
        [delegate3 vCardImportControllerDidCompleteQueue:self];

        receivedContactsQueue2 = [(CNVCardImportController *)self receivedContactsQueue];
        objc_sync_enter(receivedContactsQueue2);
        [(CNVCardImportController *)self setReceivedContactsQueue:0];
        objc_sync_exit(receivedContactsQueue2);
      }
    }
  }

  else
  {
    [(CNVCardImportController *)self presentImportUIForContacts:peek];
  }
}

- (id)dequeueContacts
{
  receivedContactsQueue = [(CNVCardImportController *)self receivedContactsQueue];
  objc_sync_enter(receivedContactsQueue);
  receivedContactsQueue2 = [(CNVCardImportController *)self receivedContactsQueue];
  v5 = [receivedContactsQueue2 count];

  if (v5)
  {
    receivedContactsQueue3 = [(CNVCardImportController *)self receivedContactsQueue];
    dequeue = [receivedContactsQueue3 dequeue];
  }

  else
  {
    dequeue = 0;
  }

  objc_sync_exit(receivedContactsQueue);

  return dequeue;
}

- (void)enqueueContacts:(id)contacts
{
  contactsCopy = contacts;
  receivedContactsQueue = [(CNVCardImportController *)self receivedContactsQueue];
  objc_sync_enter(receivedContactsQueue);
  receivedContactsQueue2 = [(CNVCardImportController *)self receivedContactsQueue];
  [receivedContactsQueue2 enqueue:contactsCopy];

  receivedContactsQueue3 = [(CNVCardImportController *)self receivedContactsQueue];
  v7 = [receivedContactsQueue3 count];

  if (v7 == 1)
  {
    [(CNVCardImportController *)self processNextContacts];
  }

  objc_sync_exit(receivedContactsQueue);
}

- (BOOL)enqueueContactsAtURL:(id)l
{
  v4 = [(CNVCardImportController *)self contactsFromURL:l];
  v5 = (*(*MEMORY[0x1E6996530] + 16))();
  if ((v5 & 1) == 0)
  {
    [(CNVCardImportController *)self enqueueContacts:v4];
  }

  return v5 ^ 1;
}

- (void)presentEnqueueResultsUIForResultContacts:(id)contacts
{
  if (!contacts)
  {
    presentationDelegate = [(CNVCardImportController *)self presentationDelegate];

    if (presentationDelegate)
    {
      v5 = MEMORY[0x1E69DC650];
      v6 = CNContactsUIBundle();
      v7 = [v6 localizedStringForKey:@"Unable to open contact card." value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [v5 alertControllerWithTitle:0 message:v7 preferredStyle:1];

      presentationDelegate2 = [(CNVCardImportController *)self presentationDelegate];
      [presentationDelegate2 vCardImportController:self presentViewController:v9 animated:1];
    }
  }
}

- (id)contactsFromURL:(id)l
{
  lCopy = l;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:0 error:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E695CE30] contactsWithData:v6 error:0];
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (startAccessingSecurityScopedResource)
  {
LABEL_3:
    [lCopy stopAccessingSecurityScopedResource];
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
    firstObject = targetContainer;
  }

  else
  {
    v5 = MEMORY[0x1E695CE48];
    contactStore = [(CNVCardImportController *)self contactStore];
    defaultContainerIdentifier = [contactStore defaultContainerIdentifier];
    v13[0] = defaultContainerIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [v5 predicateForContainersWithIdentifiers:v8];

    contactStore2 = [(CNVCardImportController *)self contactStore];
    v11 = [contactStore2 containersMatchingPredicate:v9 error:0];
    firstObject = [v11 firstObject];
  }

  return firstObject;
}

- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager
{
  groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  if (!groupsAndContainersSaveManager)
  {
    v4 = [CNUIGroupsAndContainersSaveManager alloc];
    contactStore = [(CNVCardImportController *)self contactStore];
    v6 = [(CNUIGroupsAndContainersSaveManager *)v4 initWithContactStore:contactStore];
    v7 = self->_groupsAndContainersSaveManager;
    self->_groupsAndContainersSaveManager = v6;

    groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  }

  v8 = groupsAndContainersSaveManager;

  return v8;
}

- (CNVCardImportController)initWithContactStore:(id)store presentationDelegate:(id)delegate targetGroup:(id)group targetContainer:(id)container
{
  storeCopy = store;
  delegateCopy = delegate;
  groupCopy = group;
  containerCopy = container;
  v21.receiver = self;
  v21.super_class = CNVCardImportController;
  v15 = [(CNVCardImportController *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_presentationDelegate, delegateCopy);
    objc_storeStrong(&v16->_contactStore, store);
    v17 = objc_alloc_init(MEMORY[0x1E69967F0]);
    receivedContactsQueue = v16->_receivedContactsQueue;
    v16->_receivedContactsQueue = v17;

    objc_storeStrong(&v16->_targetGroup, group);
    objc_storeStrong(&v16->_targetContainer, container);
    v19 = v16;
  }

  return v16;
}

@end