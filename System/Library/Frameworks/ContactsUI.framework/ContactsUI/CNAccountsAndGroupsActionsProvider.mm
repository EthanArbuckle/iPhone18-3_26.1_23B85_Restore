@interface CNAccountsAndGroupsActionsProvider
- (BOOL)addGroupToStoreForGroupItem:(id)item withName:(id)name;
- (BOOL)authorizedDeleteGroupForItem:(id)item completionHandler:(id)handler;
- (BOOL)authorizedEditGroupNameForCell:(id)cell;
- (BOOL)deleteGroupActionForItem:(id)item sourceView:(id)view completionHandler:(id)handler;
- (BOOL)editGroupNameActionForItem:(id)item cell:(id)cell;
- (BOOL)emailGroupForItem:(id)item;
- (BOOL)exportGroupForItem:(id)item sourceView:(id)view;
- (BOOL)isAuthorizedToEditItem:(id)item;
- (BOOL)messageGroupForItem:(id)item;
- (CNAccountsAndGroupsActionsProvider)initWithDataSource:(id)source saveManager:(id)manager;
- (CNAccountsAndGroupsActionsProviderDelegate)delegate;
- (id)actionsForItem:(id)item cell:(id)cell;
- (id)contextMenuConfigurationForItem:(id)item cell:(id)cell atIndexPath:(id)path;
- (id)leadingActionsForItem:(id)item cell:(id)cell;
- (id)trailingActionsForItem:(id)item cell:(id)cell isCollectionViewEditing:(BOOL)editing;
- (void)authorizedCreateGroupActionForContainerItem:(id)item;
- (void)createGroupActionForContainerItem:(id)item isCollectionViewEditing:(BOOL)editing;
- (void)deleteGroupForItem:(id)item completionHandler:(id)handler;
- (void)updateItem:(id)item withNewName:(id)name;
@end

@implementation CNAccountsAndGroupsActionsProvider

- (CNAccountsAndGroupsActionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isAuthorizedToEditItem:(id)item
{
  itemCopy = item;
  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v6 = [dataSource containerIdentifierForItem:itemCopy];

  groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
  LOBYTE(itemCopy) = [groupsAndContainersSaveManager isAuthorizedToEditContainerWithIdentifier:v6];

  return itemCopy;
}

- (BOOL)addGroupToStoreForGroupItem:(id)item withName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  array = [MEMORY[0x1E695DF70] array];
  [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:array];

  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v10 = [dataSource containerIdentifierForItem:itemCopy];

  if (v10)
  {
    if ([itemCopy type] == 2)
    {
      groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      v12 = [groupsAndContainersSaveManager accountForContainerIdentifier:v10];

      v13 = [objc_alloc(MEMORY[0x1E695CF20]) initWithName:nameCopy type:2];
      identifier3 = objc_alloc_init(MEMORY[0x1E695CF88]);
      [identifier3 setIgnoresGuardianRestrictions:1];
      issuedSaveRequestIdentifiers = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      saveRequestIdentifier = [identifier3 saveRequestIdentifier];
      [issuedSaveRequestIdentifiers addObject:saveRequestIdentifier];

      dataSource2 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      store = [dataSource2 store];
      identifier = [v12 identifier];
      v20 = [v13 addContainerInStore:store toAccountWithIdentifier:identifier saveRequest:identifier3];

      if (!v20)
      {
        v22 = 0;
        goto LABEL_10;
      }

      identifier2 = [v13 identifier];
      [itemCopy setIdentifier:identifier2];

      [itemCopy setContainerIdentifier:0];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695CF28]);
      [v12 setName:nameCopy];
      v13 = objc_alloc_init(MEMORY[0x1E695CF88]);
      [v13 setIgnoresGuardianRestrictions:1];
      issuedSaveRequestIdentifiers2 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      saveRequestIdentifier2 = [v13 saveRequestIdentifier];
      [issuedSaveRequestIdentifiers2 addObject:saveRequestIdentifier2];

      dataSource3 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      store2 = [dataSource3 store];
      LODWORD(saveRequestIdentifier2) = [v12 addGroupInStore:store2 toContainerWithIdentifier:v10 saveRequest:v13];

      if (!saveRequestIdentifier2)
      {
        v22 = 0;
        goto LABEL_12;
      }

      identifier3 = [v12 identifier];
      [itemCopy setIdentifier:identifier3];
    }

    v22 = 1;
LABEL_10:

LABEL_12:
    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (void)authorizedCreateGroupActionForContainerItem:(id)item
{
  itemCopy = item;
  groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
  identifier = [itemCopy identifier];
  v6 = [groupsAndContainersSaveManager accountForContainerIdentifier:identifier];

  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  if (v6)
  {
    identifier2 = [v6 identifier];
    [(CNAccountsAndGroupsItem *)delegate expandSectionForAccountWithIdentifier:identifier2];

    if ([itemCopy type] == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 4;
    }

    delegate = [[CNAccountsAndGroupsItem alloc] initWithType:v9 nameProvider:0];
    [(CNAccountsAndGroupsItem *)delegate setIdentifier:@"groupPlaceholderIdentifier"];
    identifier3 = [itemCopy identifier];
    [(CNAccountsAndGroupsItem *)delegate setContainerIdentifier:identifier3];

    [(CNAccountsAndGroupsItem *)delegate setIndentationLevel:1];
    delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    identifier4 = [v6 identifier];
    [delegate2 reloadCollectionViewAddingPlaceholderItem:delegate inSectionWithIdentifier:identifier4];
  }

  else
  {
    delegate2 = CNContactsUIBundle();
    identifier4 = [delegate2 localizedStringForKey:@"CREATE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNAccountsAndGroupsItem *)delegate presentErrorAlertWithMessage:identifier4 animated:1];
  }
}

- (void)createGroupActionForContainerItem:(id)item isCollectionViewEditing:(BOOL)editing
{
  itemCopy = item;
  if (editing || (-[CNAccountsAndGroupsActionsProvider groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v6 = objc_claimAutoreleasedReturnValue(), [itemCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isAuthorizedToEditContainerWithIdentifier:", v7), v7, v6, (v8 & 1) != 0))
  {
    [(CNAccountsAndGroupsActionsProvider *)self authorizedCreateGroupActionForContainerItem:itemCopy];
  }

  else
  {
    v9 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v9 setType:3];
    [(CNAccountsAndGroupsAuthorizationContext *)v9 setContainerItem:itemCopy];
    delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [delegate showEditAuthorizationPaneWithAuthorizationContext:v9 animated:1];
  }
}

- (void)updateItem:(id)item withNewName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  identifier = [itemCopy identifier];
  v8 = [identifier isEqualToString:@"groupPlaceholderIdentifier"];

  name = [itemCopy name];
  if (([name isEqualToString:nameCopy] & 1) == 0)
  {
    v10 = (*(*MEMORY[0x1E6996570] + 16))();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    array = [MEMORY[0x1E695DF70] array];
    [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:array];

    if (v8)
    {
      if (![(CNAccountsAndGroupsActionsProvider *)self addGroupToStoreForGroupItem:itemCopy withName:nameCopy])
      {
        delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
        [delegate reloadCollectionViewDeletingItem:itemCopy];

LABEL_16:
        delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
        delegate3 = CNContactsUIBundle();
        v30 = [delegate3 localizedStringForKey:@"UPDATE_GROUP_NAME_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
        [delegate2 presentErrorAlertWithMessage:v30 animated:1];

        goto LABEL_17;
      }
    }

    else if ([itemCopy type] == 4)
    {
      dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v15 = [dataSource groupIdentifierForGroupItem:itemCopy];

      groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      dataSource2 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      store = [dataSource2 store];
      issuedSaveRequestIdentifiers = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v20 = [groupsAndContainersSaveManager updateGroupWithIdentifier:v15 inStore:store withNewName:nameCopy ignoresGuardianRestrictions:1 issuedRequestIdentifiers:issuedSaveRequestIdentifiers];

      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ([itemCopy type] != 2)
      {
        goto LABEL_16;
      }

      dataSource3 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v22 = [dataSource3 containerIdentifierForItem:itemCopy];

      groupsAndContainersSaveManager2 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      dataSource4 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      store2 = [dataSource4 store];
      issuedSaveRequestIdentifiers2 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v27 = [groupsAndContainersSaveManager2 updateContainerWithIdentifier:v22 inStore:store2 withNewName:nameCopy ignoresGuardianRestrictions:1 issuedRequestIdentifiers:issuedSaveRequestIdentifiers2];

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    [itemCopy setName:nameCopy];
    dataSource5 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    delegate2 = [dataSource5 sectionIdentifierForItem:itemCopy];

    if (!delegate2)
    {
      goto LABEL_18;
    }

    delegate3 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [delegate3 reloadCollectionViewForSectionWithIdentifier:delegate2 settingFilterForEditingItem:0 allowsReloadWhenEditing:0];
LABEL_17:

    goto LABEL_18;
  }

LABEL_7:
  if (!v8)
  {
    goto LABEL_19;
  }

  delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [delegate2 reloadCollectionViewDeletingItem:itemCopy];
LABEL_18:

LABEL_19:
}

- (BOOL)authorizedEditGroupNameForCell:(id)cell
{
  cellCopy = cell;
  item = [cellCopy item];
  identifier = [item identifier];
  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  [dataSource setCurrentlyEditingGroupIdentifier:identifier];

  [cellCopy beginEditingName];
  return 1;
}

- (BOOL)editGroupNameActionForItem:(id)item cell:(id)cell
{
  cellCopy = cell;
  if ([(CNAccountsAndGroupsActionsProvider *)self isAuthorizedToEditItem:item])
  {
    v7 = [(CNAccountsAndGroupsActionsProvider *)self authorizedEditGroupNameForCell:cellCopy];
  }

  else
  {
    v8 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    v7 = 1;
    [(CNAccountsAndGroupsAuthorizationContext *)v8 setType:1];
    [(CNAccountsAndGroupsAuthorizationContext *)v8 setCell:cellCopy];
    delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [delegate showEditAuthorizationPaneWithAuthorizationContext:v8 animated:1];
  }

  return v7;
}

- (BOOL)authorizedDeleteGroupForItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:array];

  identifier = [itemCopy identifier];
  v10 = [identifier isEqualToString:@"groupPlaceholderIdentifier"];

  if (v10)
  {
    goto LABEL_7;
  }

  if ([itemCopy type] == 2)
  {
    groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
    identifier2 = [itemCopy identifier];
    dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    store = [dataSource store];
    issuedSaveRequestIdentifiers = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
    v16 = [groupsAndContainersSaveManager deleteContainerWithIdentifier:identifier2 inStore:store ignoresGuardianRestrictions:1 issuedRequestIdentifiers:issuedSaveRequestIdentifiers];
  }

  else
  {
    if ([itemCopy type] != 4)
    {
      goto LABEL_8;
    }

    groupsAndContainersSaveManager = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
    identifier2 = [itemCopy identifier];
    dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    store = [dataSource store];
    issuedSaveRequestIdentifiers = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
    v16 = [groupsAndContainersSaveManager deleteGroupWithIdentifier:identifier2 inStore:store ignoresGuardianRestrictions:1 issuedRequestIdentifiers:issuedSaveRequestIdentifiers];
  }

  v17 = v16;

  if (v17)
  {
LABEL_7:
    dataSource2 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    [dataSource2 setCurrentlyEditingGroupIdentifier:0];

    delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [delegate reloadCollectionViewDeletingItem:itemCopy];
    v20 = 1;
    goto LABEL_9;
  }

LABEL_8:
  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"DELETE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
  [delegate presentErrorAlertWithMessage:v22 animated:1];

  v20 = 0;
LABEL_9:

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v20);
  }

  return v20;
}

- (void)deleteGroupForItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if ([(CNAccountsAndGroupsActionsProvider *)self isAuthorizedToEditItem:itemCopy])
  {
    [(CNAccountsAndGroupsActionsProvider *)self authorizedDeleteGroupForItem:itemCopy completionHandler:handlerCopy];
  }

  else
  {
    v7 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setType:2];
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setItem:itemCopy];
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setActionCompletionHandler:handlerCopy];
    delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [delegate showEditAuthorizationPaneWithAuthorizationContext:v7 animated:1];
  }
}

- (BOOL)deleteGroupActionForItem:(id)item sourceView:(id)view completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v10 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"DELETE_GROUP_CONFIRMATION_ALERT_TITLE-%@" value:&stru_1F0CE7398 table:@"Localized"];
  name = [itemCopy name];
  v41 = [v10 localizedStringWithFormat:v13, name];

  v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v41 message:0 preferredStyle:1];
  v16 = MEMORY[0x1E69DC648];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"DELETE_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __92__CNAccountsAndGroupsActionsProvider_deleteGroupActionForItem_sourceView_completionHandler___block_invoke;
  v44[3] = &unk_1E74E4A88;
  v44[4] = self;
  v45 = itemCopy;
  v19 = handlerCopy;
  v46 = v19;
  v20 = itemCopy;
  v21 = [v16 actionWithTitle:v18 style:2 handler:v44];

  [v15 addAction:v21];
  v22 = MEMORY[0x1E69DC648];
  v23 = CNContactsUIBundle();
  v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __92__CNAccountsAndGroupsActionsProvider_deleteGroupActionForItem_sourceView_completionHandler___block_invoke_2;
  v42[3] = &unk_1E74E5C98;
  v43 = v19;
  v25 = v19;
  v26 = [v22 actionWithTitle:v24 style:1 handler:v42];

  [v15 addAction:v26];
  popoverPresentationController = [v15 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  popoverPresentationController2 = [v15 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v29, v31, v33, v35}];

  popoverPresentationController3 = [v15 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];

  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [delegate presentController:v15 animated:1];

  return 1;
}

uint64_t __92__CNAccountsAndGroupsActionsProvider_deleteGroupActionForItem_sourceView_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (BOOL)exportGroupForItem:(id)item sourceView:(id)view
{
  v18[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  itemCopy = item;
  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [delegate resignAllFirstRespondersSavingCurrentlyEditing:0];

  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v10 = +[CNContactListShareContactsAction descriptorForRequiredKeys];
  v18[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v12 = [dataSource allContactsForItem:itemCopy keysToFetch:v11];

  v13 = objc_alloc_init(CNContactListShareContactsActionContext);
  name = [itemCopy name];

  [(CNContactListShareContactsActionContext *)v13 setGroupName:name];
  v15 = [[CNContactListShareContactsAction alloc] initWithContacts:v12 sourceView:viewCopy context:v13];

  delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [(CNContactListShareContactsAction *)v15 setDelegate:delegate2];

  [(CNContactListShareContactsAction *)v15 performAction];
  return 1;
}

- (BOOL)messageGroupForItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [delegate resignAllFirstRespondersSavingCurrentlyEditing:0];

  v6 = objc_alloc_init(MEMORY[0x1E695CF10]);
  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  descriptorForRequiredKeys = [MEMORY[0x1E695CF10] descriptorForRequiredKeys];
  v20[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [dataSource allContactsForItem:itemCopy keysToFetch:v9];

  v11 = [v6 messageUrlForContacts:v10];
  if (v11)
  {
    delegate2 = +[CNUIContactsEnvironment currentEnvironment];
    applicationWorkspace = [delegate2 applicationWorkspace];
    v18 = *MEMORY[0x1E6963550];
    v19 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [applicationWorkspace openSensitiveURLInBackground:v11 withOptions:v14];
  }

  else
  {
    delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    applicationWorkspace = CNContactsUIBundle();
    v14 = [applicationWorkspace localizedStringForKey:@"MESSAGE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"MESSAGE_GROUP_FAILURE_HINT" value:&stru_1F0CE7398 table:@"Localized"];
    [delegate2 presentErrorAlertWithTitle:v14 message:v16 animated:1];
  }

  return v11 != 0;
}

- (BOOL)emailGroupForItem:(id)item
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  delegate = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [delegate resignAllFirstRespondersSavingCurrentlyEditing:0];

  v6 = objc_alloc_init(MEMORY[0x1E695CEF0]);
  dataSource = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  descriptorForRequiredKeys = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
  v18[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [dataSource allContactsForItem:itemCopy keysToFetch:v9];

  v11 = [v6 mailUrlForContacts:v10 needsEmailAddresses:0];
  if (v11)
  {
    delegate2 = +[CNUIContactsEnvironment currentEnvironment];
    applicationWorkspace = [delegate2 applicationWorkspace];
    v16 = *MEMORY[0x1E6963550];
    v17 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [applicationWorkspace openSensitiveURLInBackground:v11 withOptions:v14];
  }

  else
  {
    delegate2 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    applicationWorkspace = CNContactsUIBundle();
    v14 = [applicationWorkspace localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [delegate2 presentErrorAlertWithMessage:v14 animated:1];
  }

  return v11 != 0;
}

- (id)actionsForItem:(id)item cell:(id)cell
{
  itemCopy = item;
  cellCopy = cell;
  if ([itemCopy canEmail])
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"EMAIL_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke;
    v54[3] = &unk_1E74E7808;
    v54[4] = self;
    v55 = itemCopy;
    v12 = [v8 actionWithTitle:v10 image:v11 identifier:0 handler:v54];

    v13 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v12];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  if ([itemCopy canMessage])
  {
    v14 = MEMORY[0x1E69DC628];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"MESSAGE_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke_2;
    v52[3] = &unk_1E74E7808;
    v52[4] = self;
    v53 = itemCopy;
    v18 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v52];

    v19 = [v13 arrayByAddingObject:v18];

    v13 = v19;
  }

  if ([itemCopy canExport])
  {
    v20 = MEMORY[0x1E69DC628];
    v21 = CNContactsUIBundle();
    v22 = [v21 localizedStringForKey:@"EXPORT_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up.on.square"];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke_3;
    v49[3] = &unk_1E74E7830;
    v49[4] = self;
    v50 = itemCopy;
    v51 = cellCopy;
    v24 = [v20 actionWithTitle:v22 image:v23 identifier:0 handler:v49];

    v25 = [v13 arrayByAddingObject:v24];

    v13 = v25;
  }

  if ([itemCopy canRename])
  {
    v26 = MEMORY[0x1E69DC628];
    v27 = CNContactsUIBundle();
    v28 = [v27 localizedStringForKey:@"RENAME_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke_4;
    v46[3] = &unk_1E74E7830;
    v46[4] = self;
    v47 = itemCopy;
    v48 = cellCopy;
    v30 = [v26 actionWithTitle:v28 image:v29 identifier:0 handler:v46];

    v31 = [v13 arrayByAddingObject:v30];

    v13 = v31;
  }

  if ([itemCopy canDelete])
  {
    v32 = MEMORY[0x1E69DC628];
    v33 = CNContactsUIBundle();
    v34 = [v33 localizedStringForKey:@"DELETE_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke_5;
    v42 = &unk_1E74E7830;
    selfCopy = self;
    v44 = itemCopy;
    v45 = cellCopy;
    v36 = [v32 actionWithTitle:v34 image:v35 identifier:0 handler:&v39];

    [v36 setAttributes:{2, v39, v40, v41, v42, selfCopy}];
    v37 = [v13 arrayByAddingObject:v36];

    v13 = v37;
  }

  return v13;
}

- (id)contextMenuConfigurationForItem:(id)item cell:(id)cell atIndexPath:(id)path
{
  itemCopy = item;
  cellCopy = cell;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CNAccountsAndGroupsActionsProvider_contextMenuConfigurationForItem_cell_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E74E4A60;
  aBlock[4] = self;
  v17 = itemCopy;
  v18 = cellCopy;
  v10 = cellCopy;
  v11 = itemCopy;
  pathCopy = path;
  v13 = _Block_copy(aBlock);
  v14 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:pathCopy previewProvider:0 actionProvider:v13];

  return v14;
}

id __87__CNAccountsAndGroupsActionsProvider_contextMenuConfigurationForItem_cell_atIndexPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionsForItem:*(a1 + 40) cell:*(a1 + 48)];
  v2 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v1];

  return v2;
}

- (id)trailingActionsForItem:(id)item cell:(id)cell isCollectionViewEditing:(BOOL)editing
{
  itemCopy = item;
  cellCopy = cell;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([itemCopy canDelete])
  {
    v11 = MEMORY[0x1E69DC8E8];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke;
    v25[3] = &unk_1E74E4A10;
    editingCopy = editing;
    v25[4] = self;
    v26 = itemCopy;
    v12 = [v11 contextualActionWithStyle:1 title:0 handler:v25];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash.fill"];
    [v12 setImage:v13];

    [v10 addObject:v12];
  }

  if (!editing && [itemCopy canRename])
  {
    v14 = MEMORY[0x1E69DC8E8];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke_2;
    v21 = &unk_1E74E4A38;
    selfCopy = self;
    v23 = itemCopy;
    v24 = cellCopy;
    v15 = [v14 contextualActionWithStyle:0 title:0 handler:&v18];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"pencil", v18, v19, v20, v21, selfCopy}];
    [v15 setImage:v16];

    [v10 addObject:v15];
  }

  return v10;
}

uint64_t __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v7 == 1)
  {
    return [v8 authorizedDeleteGroupForItem:v9 completionHandler:a4];
  }

  else
  {
    return [v8 deleteGroupActionForItem:v9 sourceView:a3 completionHandler:a4];
  }
}

void __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a4, 1);
  v5 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke_3;
  block[3] = &unk_1E74E6EE8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 48);
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (id)leadingActionsForItem:(id)item cell:(id)cell
{
  itemCopy = item;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([itemCopy canEmail])
  {
    v7 = MEMORY[0x1E69DC8E8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke;
    v22[3] = &unk_1E74E7858;
    v22[4] = self;
    v23 = itemCopy;
    v8 = [v7 contextualActionWithStyle:0 title:0 handler:v22];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope.fill"];
    [v8 setImage:v9];

    v10 = +[CNUIColorRepository groupsMailActionColor];
    [v8 setBackgroundColor:v10];

    [v6 addObject:v8];
  }

  if ([itemCopy canMessage])
  {
    v11 = MEMORY[0x1E69DC8E8];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke_2;
    v19 = &unk_1E74E7858;
    selfCopy = self;
    v21 = itemCopy;
    v12 = [v11 contextualActionWithStyle:0 title:0 handler:&v16];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"message.fill", v16, v17, v18, v19, selfCopy}];
    [v12 setImage:v13];

    v14 = +[CNUIColorRepository groupsTextActionColor];
    [v12 setBackgroundColor:v14];

    [v6 addObject:v12];
  }

  return v6;
}

void __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  v6[2](v6, [v4 emailGroupForItem:v5]);
}

void __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  v6[2](v6, [v4 messageGroupForItem:v5]);
}

- (CNAccountsAndGroupsActionsProvider)initWithDataSource:(id)source saveManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNAccountsAndGroupsActionsProvider;
  v9 = [(CNAccountsAndGroupsActionsProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_groupsAndContainersSaveManager, manager);
    v11 = v10;
  }

  return v10;
}

@end