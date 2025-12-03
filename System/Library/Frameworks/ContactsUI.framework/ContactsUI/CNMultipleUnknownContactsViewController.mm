@interface CNMultipleUnknownContactsViewController
+ (id)contactFormatter;
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (CNContactStore)contactStore;
- (CNContainer)targetContainer;
- (CNMultipleUnknownContactsViewController)initWithContacts:(id)contacts targetGroup:(id)group targetContainer:(id)container;
- (CNMultipleUnknownContactsViewControllerDelegate)delegate;
- (CNUIGroupsAndContainersSaveManager)groupsAndContainersSaveManager;
- (id)_existingMatchForUnknownContact:(id)contact;
- (id)_updatedContact:(id)contact withPropertiesFromContact:(id)fromContact;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addToExistingContacts:(id)contacts;
- (void)_createNewContacts:(id)contacts;
- (void)_didComplete;
- (void)_presentUnknownContact:(id)contact;
- (void)_save:(id)_save;
- (void)_showAddAllToContactsConfirmation;
- (void)addContacts:(id)contacts;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CNMultipleUnknownContactsViewController

- (CNMultipleUnknownContactsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  delegate = [(CNMultipleUnknownContactsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNMultipleUnknownContactsViewController *)self delegate];
    v9 = [delegate2 multipleUnknownContactsViewController:self shouldPerformDefaultActionForContactProperty:propertyCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  if (contact)
  {
    contact = [controller contact];
    identifier = [contact identifier];

    contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__CNMultipleUnknownContactsViewController_contactViewController_didCompleteWithContact___block_invoke;
    v14[3] = &unk_1E74E7880;
    v8 = identifier;
    v15 = v8;
    LODWORD(identifier) = [contacts _cn_any:v14];

    if (identifier)
    {
      createdContactIdentifiers = [(CNMultipleUnknownContactsViewController *)self createdContactIdentifiers];
      [createdContactIdentifiers _cn_addNonNilObject:v8];
    }

    createdContactIdentifiers2 = [(CNMultipleUnknownContactsViewController *)self createdContactIdentifiers];
    v11 = [createdContactIdentifiers2 count];
    contacts2 = [(CNMultipleUnknownContactsViewController *)self contacts];
    v13 = [contacts2 count];

    if (v11 == v13)
    {
      [(CNMultipleUnknownContactsViewController *)self _didComplete];
    }
  }
}

uint64_t __88__CNMultipleUnknownContactsViewController_contactViewController_didCompleteWithContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:pathCopy];
  if ([pathCopy section])
  {
    contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
    v9 = [contacts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    formatter = [(CNMultipleUnknownContactsViewController *)self formatter];
    v11 = [formatter stringFromContact:v9];
    textLabel = [v7 textLabel];
    [textLabel setText:v11];

    textLabel2 = [v7 textLabel];
    [textLabel2 setTextAlignment:4];

    [v7 setAccessoryType:1];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"VCARD_ADD_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    contacts2 = [(CNMultipleUnknownContactsViewController *)self contacts];
    v18 = [v14 localizedStringWithFormat:v16, objc_msgSend(contacts2, "count")];
    textLabel3 = [v7 textLabel];
    [textLabel3 setText:v18];

    textLabel4 = [v7 textLabel];
    [textLabel4 setTextAlignment:1];

    [v7 setAccessoryType:0];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
  v5 = [contacts count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
    indexPathForSelectedRow = [contacts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [(CNMultipleUnknownContactsViewController *)self _presentUnknownContact:indexPathForSelectedRow];
  }

  else
  {
    [(CNMultipleUnknownContactsViewController *)self _showAddAllToContactsConfirmation];
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (id)_updatedContact:(id)contact withPropertiesFromContact:(id)fromContact
{
  fromContactCopy = fromContact;
  v6 = [contact mutableCopy];
  v7 = [v6 addAllPropertiesFromContact:fromContactCopy];

  return v6;
}

- (id)_existingMatchForUnknownContact:(id)contact
{
  v35[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactType = [contactCopy contactType];
  if (contactType == 1)
  {
    organizationName = [contactCopy organizationName];
  }

  else
  {
    organizationName = &stru_1F0CE7398;
  }

  v7 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], organizationName))
  {
    givenName = [contactCopy givenName];

    organizationName = givenName;
  }

  familyName = [contactCopy familyName];
  if (((*(v7 + 16))(v7, familyName) & 1) == 0)
  {
    if ((*(v7 + 16))(v7, organizationName))
    {
      v10 = familyName;
    }

    else
    {
      v10 = [(__CFString *)organizationName stringByAppendingFormat:@" %@", familyName];
    }

    v11 = v10;

    organizationName = v11;
  }

  if ((*(v7 + 16))(v7, organizationName))
  {
    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:organizationName];
    v14 = objc_alloc(MEMORY[0x1E695CD78]);
    descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
    v35[0] = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v17 = [v14 initWithKeysToFetch:v16];

    [v17 setPredicate:v13];
    [v17 setSortOrder:1];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__19313;
    v33 = __Block_byref_object_dispose__19314;
    v34 = 0;
    contactStore = [(CNMultipleUnknownContactsViewController *)self contactStore];
    v27 = contactType;
    v28 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__CNMultipleUnknownContactsViewController__existingMatchForUnknownContact___block_invoke_63;
    v23[3] = &unk_1E74E2DF0;
    v25 = &__block_literal_global_62;
    v24 = contactCopy;
    v26 = &v29;
    v19 = [contactStore enumerateContactsWithFetchRequest:v17 error:&v28 usingBlock:v23];
    v20 = v28;

    if (v19)
    {
      v21 = v30[5];
    }

    else
    {
      v21 = 0;
    }

    v12 = v21;

    _Block_object_dispose(&v29, 8);
  }

  return v12;
}

void __75__CNMultipleUnknownContactsViewController__existingMatchForUnknownContact___block_invoke_63(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = a2;
  if ([v35 contactType] != *(a1 + 56))
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 40);
  v7 = [v35 givenName];
  v8 = [*(a1 + 32) givenName];
  if (((*(v6 + 16))(v6, v7, v8) & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v9 = *(a1 + 40);
  v10 = [v35 middleName];
  v11 = [*(a1 + 32) middleName];
  if (!(*(v9 + 16))(v9, v10, v11))
  {
LABEL_13:

    goto LABEL_14;
  }

  v12 = *(a1 + 40);
  v13 = [v35 familyName];
  v14 = [*(a1 + 32) familyName];
  if (!(*(v12 + 16))(v12, v13, v14))
  {

    goto LABEL_13;
  }

  v34 = v13;
  v15 = *(a1 + 40);
  v16 = [v35 namePrefix];
  v17 = [*(a1 + 32) namePrefix];
  v18 = *(v15 + 16);
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (!v18(v19, v20, v17))
  {

LABEL_12:
    goto LABEL_13;
  }

  v31 = v14;
  v32 = v21;
  v33 = v20;
  v22 = *(a1 + 40);
  v23 = [v35 nameSuffix];
  v24 = [*(a1 + 32) nameSuffix];
  v30 = v23;
  v25 = v23;
  v26 = v24;
  if (!(*(v22 + 16))(v22, v25))
  {

    goto LABEL_12;
  }

  v29 = *(a1 + 40);
  v27 = [v35 organizationName];
  v28 = [*(a1 + 32) organizationName];
  LODWORD(v29) = (*(v29 + 16))(v29, v27, v28);

  if (v29)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }

LABEL_15:
}

BOOL __75__CNMultipleUnknownContactsViewController__existingMatchForUnknownContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 localizedCaseInsensitiveCompare:v5] == 0;
    }
  }

  return v7;
}

- (void)_presentUnknownContact:(id)contact
{
  contactCopy = contact;
  createdContactIdentifiers = [(CNMultipleUnknownContactsViewController *)self createdContactIdentifiers];
  identifier = [contactCopy identifier];
  v7 = [createdContactIdentifiers containsObject:identifier];

  if (v7)
  {
    [CNContactViewController viewControllerForContact:contactCopy];
  }

  else
  {
    [CNContactViewController viewControllerForUnknownContact:contactCopy];
  }
  v12 = ;

  contactStore = [(CNMultipleUnknownContactsViewController *)self contactStore];
  [v12 setContactStore:contactStore];

  [v12 setDelegate:self];
  targetGroup = [(CNMultipleUnknownContactsViewController *)self targetGroup];
  [v12 setParentGroup:targetGroup];

  targetContainer = [(CNMultipleUnknownContactsViewController *)self targetContainer];
  [v12 setParentContainer:targetContainer];

  navigationController = [(CNMultipleUnknownContactsViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
}

- (void)_addToExistingContacts:(id)contacts
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  contactsCopy = contacts;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__CNMultipleUnknownContactsViewController__addToExistingContacts___block_invoke;
  v37[3] = &unk_1E74E2DA8;
  v37[4] = self;
  v9 = array;
  v38 = v9;
  v10 = array2;
  v39 = v10;
  v11 = v8;
  v40 = v11;
  [contactsCopy enumerateObjectsUsingBlock:v37];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    contactStore = [(CNMultipleUnknownContactsViewController *)self contactStore];
    v36 = 0;
    v13 = [contactStore executeSaveRequest:v11 error:&v36];
    v14 = v36;

    if (v13)
    {
      [(CNMultipleUnknownContactsViewController *)self addContacts:v10];
    }

    else
    {
      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        contactStore2 = [(CNMultipleUnknownContactsViewController *)self contactStore];
        *buf = 138412546;
        v42 = contactStore2;
        v43 = 2112;
        v44 = v14;
        _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "Could not save contacts in store %@: %@", buf, 0x16u);
      }
    }
  }

  if ([v9 count])
  {
    v33 = v11;
    v16 = MEMORY[0x1E696AEC0];
    v17 = CNContactsUIBundle();
    v18 = [v17 localizedStringForKey:@"VCARD_UNMERGED_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
    v19 = [v16 localizedStringWithFormat:v18, objc_msgSend(v9, "count")];

    v20 = MEMORY[0x1E696AEC0];
    v21 = CNContactsUIBundle();
    if ([v9 count] == 1)
    {
      v22 = @"VCARD_CREATE_NEW_ONE";
    }

    else
    {
      v22 = @"VCARD_CREATE_NEW_MANY";
    }

    v23 = [v21 localizedStringForKey:v22 value:&stru_1F0CE7398 table:@"Localized"];
    v24 = [v20 localizedStringWithFormat:v23, objc_msgSend(v9, "count")];

    v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:0 preferredStyle:0];
    v26 = MEMORY[0x1E69DC648];
    v27 = CNContactsUIBundle();
    v28 = [v27 localizedStringForKey:@"VCARD_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v29 = [v26 actionWithTitle:v28 style:1 handler:0];
    [v25 addAction:v29];

    v30 = MEMORY[0x1E69DC648];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__CNMultipleUnknownContactsViewController__addToExistingContacts___block_invoke_55;
    v34[3] = &unk_1E74E7308;
    v34[4] = self;
    v35 = v9;
    v31 = [v30 actionWithTitle:v24 style:0 handler:v34];
    [v25 addAction:v31];

    v11 = v33;
    [(CNMultipleUnknownContactsViewController *)self presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    [(CNMultipleUnknownContactsViewController *)self _didComplete];
  }
}

void __66__CNMultipleUnknownContactsViewController__addToExistingContacts___block_invoke(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 _existingMatchForUnknownContact:v4];
  v7 = v5;
  if (v5)
  {
    v6 = [a1[4] _updatedContact:v5 withPropertiesFromContact:v4];

    [a1[6] addObject:v6];
    [a1[7] updateContact:v6];
    v4 = v6;
  }

  else
  {
    [a1[5] addObject:v4];
  }
}

- (void)addContacts:(id)contacts
{
  v34 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = contactsCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        groupsAndContainersSaveManager = [(CNMultipleUnknownContactsViewController *)self groupsAndContainersSaveManager];
        targetContainer = [(CNMultipleUnknownContactsViewController *)self targetContainer];
        v13 = [groupsAndContainersSaveManager isAuthorizedToAddContact:v10 toContainer:targetContainer ignoresParentalRestrictions:0];

        if (v13)
        {
          v14 = v5;
        }

        else
        {
          v14 = v6;
        }

        [v14 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v5) & 1) == 0)
  {
    groupsAndContainersSaveManager2 = [(CNMultipleUnknownContactsViewController *)self groupsAndContainersSaveManager];
    targetGroup = [(CNMultipleUnknownContactsViewController *)self targetGroup];
    targetContainer2 = [(CNMultipleUnknownContactsViewController *)self targetContainer];
    v19 = [groupsAndContainersSaveManager2 addContacts:v5 toGroup:targetGroup inContainer:targetContainer2 moveWasAuthorized:1];

    if ([v19 saveDidSucceed])
    {
      createdContactIdentifiers = [(CNMultipleUnknownContactsViewController *)self createdContactIdentifiers];
      addedContacts = [v19 addedContacts];
      v22 = [addedContacts _cn_map:&__block_literal_global_41_19338];
      [createdContactIdentifiers addObjectsFromArray:v22];
    }
  }

  if (((*(v15 + 16))(v15, v6) & 1) == 0)
  {
    objc_initWeak(&location, self);
    groupsAndContainersSaveManager3 = [(CNMultipleUnknownContactsViewController *)self groupsAndContainersSaveManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__CNMultipleUnknownContactsViewController_addContacts___block_invoke_2;
    v25[3] = &unk_1E74E2D80;
    objc_copyWeak(&v27, &location);
    v26 = v6;
    [groupsAndContainersSaveManager3 authorizeForViewController:self sender:self animated:1 completionBlock:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __55__CNMultipleUnknownContactsViewController_addContacts___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained groupsAndContainersSaveManager];
  v3 = *(a1 + 32);
  v4 = [WeakRetained targetGroup];
  v5 = [WeakRetained targetContainer];
  v6 = [v2 addContacts:v3 toGroup:v4 inContainer:v5 moveWasAuthorized:1];

  if ([v6 saveDidSucceed])
  {
    v7 = [WeakRetained createdContactIdentifiers];
    v8 = [v6 addedContacts];
    v9 = [v8 _cn_map:&__block_literal_global_43_19340];
    [v7 addObjectsFromArray:v9];
  }
}

- (void)_createNewContacts:(id)contacts
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CNMultipleUnknownContactsViewController__createNewContacts___block_invoke;
  v5[3] = &unk_1E74E7880;
  v5[4] = self;
  v4 = [contacts _cn_filter:v5];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNMultipleUnknownContactsViewController *)self addContacts:v4];
  }

  [(CNMultipleUnknownContactsViewController *)self _didComplete];
}

uint64_t __62__CNMultipleUnknownContactsViewController__createNewContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 createdContactIdentifiers];
  v5 = [v3 identifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (void)_didComplete
{
  delegate = [(CNMultipleUnknownContactsViewController *)self delegate];
  [delegate multipleUnknownContactsViewControllerDidComplete:self];
}

- (void)_save:(id)_save
{
  contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
  [(CNMultipleUnknownContactsViewController *)self _createNewContacts:contacts];
}

- (void)_showAddAllToContactsConfirmation
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  contacts = [(CNMultipleUnknownContactsViewController *)self contacts];
  v5 = MEMORY[0x1E69DC648];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"VCARD_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [v5 actionWithTitle:v7 style:1 handler:0];
  [v3 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"VCARD_CREATE" value:&stru_1F0CE7398 table:@"Localized"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__CNMultipleUnknownContactsViewController__showAddAllToContactsConfirmation__block_invoke;
  v23[3] = &unk_1E74E7308;
  v23[4] = self;
  v12 = contacts;
  v24 = v12;
  v13 = [v9 actionWithTitle:v11 style:0 handler:v23];
  [v3 addAction:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"VCARD_ADD_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
  v17 = [v14 localizedStringWithFormat:v16, objc_msgSend(v12, "count")];

  v18 = MEMORY[0x1E69DC648];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__CNMultipleUnknownContactsViewController__showAddAllToContactsConfirmation__block_invoke_2;
  v21[3] = &unk_1E74E7308;
  v21[4] = self;
  v22 = v12;
  v19 = v12;
  v20 = [v18 actionWithTitle:v17 style:0 handler:v21];
  [v3 addAction:v20];

  [(CNMultipleUnknownContactsViewController *)self presentViewController:v3 animated:1 completion:0];
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
    contactStore = [(CNMultipleUnknownContactsViewController *)self contactStore];
    defaultContainerIdentifier = [contactStore defaultContainerIdentifier];
    v13[0] = defaultContainerIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [v5 predicateForContainersWithIdentifiers:v8];

    contactStore2 = [(CNMultipleUnknownContactsViewController *)self contactStore];
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
    contactStore = [(CNMultipleUnknownContactsViewController *)self contactStore];
    v6 = [(CNUIGroupsAndContainersSaveManager *)v4 initWithContactStore:contactStore];
    v7 = self->_groupsAndContainersSaveManager;
    self->_groupsAndContainersSaveManager = v6;

    groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
  }

  v8 = groupsAndContainersSaveManager;

  return v8;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNMultipleUnknownContactsViewController;
  [(CNMultipleUnknownContactsViewController *)&v4 viewDidLoad];
  tableView = [(CNMultipleUnknownContactsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"UITableViewCell"];
}

- (CNMultipleUnknownContactsViewController)initWithContacts:(id)contacts targetGroup:(id)group targetContainer:(id)container
{
  contactsCopy = contacts;
  groupCopy = group;
  containerCopy = container;
  v27.receiver = self;
  v27.super_class = CNMultipleUnknownContactsViewController;
  v11 = [(CNMultipleUnknownContactsViewController *)&v27 initWithStyle:1];
  if (v11)
  {
    v12 = [contactsCopy copy];
    contacts = v11->_contacts;
    v11->_contacts = v12;

    v14 = v11->_contacts;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__CNMultipleUnknownContactsViewController_initWithContacts_targetGroup_targetContainer___block_invoke;
    v25[3] = &unk_1E74E2D58;
    v15 = v11;
    v26 = v15;
    [(NSArray *)v14 enumerateObjectsUsingBlock:v25];
    contactFormatter = [objc_opt_class() contactFormatter];
    formatter = v15->_formatter;
    v15->_formatter = contactFormatter;

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    createdContactIdentifiers = v15->_createdContactIdentifiers;
    v15->_createdContactIdentifiers = v18;

    v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:v15 action:sel__save_];
    navigationItem = [(CNMultipleUnknownContactsViewController *)v15 navigationItem];
    [navigationItem setRightBarButtonItem:v20];

    navigationItem2 = [(CNMultipleUnknownContactsViewController *)v15 navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];

    objc_storeStrong(&v15->_targetGroup, group);
    objc_storeStrong(&v15->_targetContainer, container);
    v23 = v15;
  }

  return v11;
}

void __88__CNMultipleUnknownContactsViewController_initWithContacts_targetGroup_targetContainer___block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [objc_opt_class() descriptorForRequiredKeys];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 assertKeysAreAvailable:v4];
}

+ (id)descriptorForRequiredKeys
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CD58];
  v4 = +[CNContactViewController descriptorForRequiredKeys];
  v11[0] = v4;
  contactFormatter = [self contactFormatter];
  descriptorForRequiredKeys = [contactFormatter descriptorForRequiredKeys];
  v11[1] = descriptorForRequiredKeys;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMultipleUnknownContactsViewController descriptorForRequiredKeys]"];
  v9 = [v3 descriptorWithKeyDescriptors:v7 description:v8];

  return v9;
}

+ (id)contactFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v2 setStyle:0];
  [v2 setFallbackStyle:-1];

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_19362 != -1)
  {
    dispatch_once(&log_cn_once_token_1_19362, &__block_literal_global_19363);
  }

  v3 = log_cn_once_object_1_19364;

  return v3;
}

uint64_t __46__CNMultipleUnknownContactsViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNMultipleUnknownContactsViewController");
  v1 = log_cn_once_object_1_19364;
  log_cn_once_object_1_19364 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end