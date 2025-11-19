@interface CNAccountsAndGroupsActionsProvider
- (BOOL)addGroupToStoreForGroupItem:(id)a3 withName:(id)a4;
- (BOOL)authorizedDeleteGroupForItem:(id)a3 completionHandler:(id)a4;
- (BOOL)authorizedEditGroupNameForCell:(id)a3;
- (BOOL)deleteGroupActionForItem:(id)a3 sourceView:(id)a4 completionHandler:(id)a5;
- (BOOL)editGroupNameActionForItem:(id)a3 cell:(id)a4;
- (BOOL)emailGroupForItem:(id)a3;
- (BOOL)exportGroupForItem:(id)a3 sourceView:(id)a4;
- (BOOL)isAuthorizedToEditItem:(id)a3;
- (BOOL)messageGroupForItem:(id)a3;
- (CNAccountsAndGroupsActionsProvider)initWithDataSource:(id)a3 saveManager:(id)a4;
- (CNAccountsAndGroupsActionsProviderDelegate)delegate;
- (id)actionsForItem:(id)a3 cell:(id)a4;
- (id)contextMenuConfigurationForItem:(id)a3 cell:(id)a4 atIndexPath:(id)a5;
- (id)leadingActionsForItem:(id)a3 cell:(id)a4;
- (id)trailingActionsForItem:(id)a3 cell:(id)a4 isCollectionViewEditing:(BOOL)a5;
- (void)authorizedCreateGroupActionForContainerItem:(id)a3;
- (void)createGroupActionForContainerItem:(id)a3 isCollectionViewEditing:(BOOL)a4;
- (void)deleteGroupForItem:(id)a3 completionHandler:(id)a4;
- (void)updateItem:(id)a3 withNewName:(id)a4;
@end

@implementation CNAccountsAndGroupsActionsProvider

- (CNAccountsAndGroupsActionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isAuthorizedToEditItem:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v6 = [v5 containerIdentifierForItem:v4];

  v7 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
  LOBYTE(v4) = [v7 isAuthorizedToEditContainerWithIdentifier:v6];

  return v4;
}

- (BOOL)addGroupToStoreForGroupItem:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:v8];

  v9 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v10 = [v9 containerIdentifierForItem:v6];

  if (v10)
  {
    if ([v6 type] == 2)
    {
      v11 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      v12 = [v11 accountForContainerIdentifier:v10];

      v13 = [objc_alloc(MEMORY[0x1E695CF20]) initWithName:v7 type:2];
      v14 = objc_alloc_init(MEMORY[0x1E695CF88]);
      [v14 setIgnoresGuardianRestrictions:1];
      v15 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v16 = [v14 saveRequestIdentifier];
      [v15 addObject:v16];

      v17 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v18 = [v17 store];
      v19 = [v12 identifier];
      v20 = [v13 addContainerInStore:v18 toAccountWithIdentifier:v19 saveRequest:v14];

      if (!v20)
      {
        v22 = 0;
        goto LABEL_10;
      }

      v21 = [v13 identifier];
      [v6 setIdentifier:v21];

      [v6 setContainerIdentifier:0];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695CF28]);
      [v12 setName:v7];
      v13 = objc_alloc_init(MEMORY[0x1E695CF88]);
      [v13 setIgnoresGuardianRestrictions:1];
      v23 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v24 = [v13 saveRequestIdentifier];
      [v23 addObject:v24];

      v25 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v26 = [v25 store];
      LODWORD(v24) = [v12 addGroupInStore:v26 toContainerWithIdentifier:v10 saveRequest:v13];

      if (!v24)
      {
        v22 = 0;
        goto LABEL_12;
      }

      v14 = [v12 identifier];
      [v6 setIdentifier:v14];
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

- (void)authorizedCreateGroupActionForContainerItem:(id)a3
{
  v13 = a3;
  v4 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
  v5 = [v13 identifier];
  v6 = [v4 accountForContainerIdentifier:v5];

  v7 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  if (v6)
  {
    v8 = [v6 identifier];
    [(CNAccountsAndGroupsItem *)v7 expandSectionForAccountWithIdentifier:v8];

    if ([v13 type] == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 4;
    }

    v7 = [[CNAccountsAndGroupsItem alloc] initWithType:v9 nameProvider:0];
    [(CNAccountsAndGroupsItem *)v7 setIdentifier:@"groupPlaceholderIdentifier"];
    v10 = [v13 identifier];
    [(CNAccountsAndGroupsItem *)v7 setContainerIdentifier:v10];

    [(CNAccountsAndGroupsItem *)v7 setIndentationLevel:1];
    v11 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    v12 = [v6 identifier];
    [v11 reloadCollectionViewAddingPlaceholderItem:v7 inSectionWithIdentifier:v12];
  }

  else
  {
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"CREATE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNAccountsAndGroupsItem *)v7 presentErrorAlertWithMessage:v12 animated:1];
  }
}

- (void)createGroupActionForContainerItem:(id)a3 isCollectionViewEditing:(BOOL)a4
{
  v11 = a3;
  if (a4 || (-[CNAccountsAndGroupsActionsProvider groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v6 = objc_claimAutoreleasedReturnValue(), [v11 identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isAuthorizedToEditContainerWithIdentifier:", v7), v7, v6, (v8 & 1) != 0))
  {
    [(CNAccountsAndGroupsActionsProvider *)self authorizedCreateGroupActionForContainerItem:v11];
  }

  else
  {
    v9 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v9 setType:3];
    [(CNAccountsAndGroupsAuthorizationContext *)v9 setContainerItem:v11];
    v10 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [v10 showEditAuthorizationPaneWithAuthorizationContext:v9 animated:1];
  }
}

- (void)updateItem:(id)a3 withNewName:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [v31 identifier];
  v8 = [v7 isEqualToString:@"groupPlaceholderIdentifier"];

  v9 = [v31 name];
  if (([v9 isEqualToString:v6] & 1) == 0)
  {
    v10 = (*(*MEMORY[0x1E6996570] + 16))();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = [MEMORY[0x1E695DF70] array];
    [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:v11];

    if (v8)
    {
      if (![(CNAccountsAndGroupsActionsProvider *)self addGroupToStoreForGroupItem:v31 withName:v6])
      {
        v12 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
        [v12 reloadCollectionViewDeletingItem:v31];

LABEL_16:
        v13 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
        v29 = CNContactsUIBundle();
        v30 = [v29 localizedStringForKey:@"UPDATE_GROUP_NAME_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
        [v13 presentErrorAlertWithMessage:v30 animated:1];

        goto LABEL_17;
      }
    }

    else if ([v31 type] == 4)
    {
      v14 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v15 = [v14 groupIdentifierForGroupItem:v31];

      v16 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      v17 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v18 = [v17 store];
      v19 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v20 = [v16 updateGroupWithIdentifier:v15 inStore:v18 withNewName:v6 ignoresGuardianRestrictions:1 issuedRequestIdentifiers:v19];

      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ([v31 type] != 2)
      {
        goto LABEL_16;
      }

      v21 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v22 = [v21 containerIdentifierForItem:v31];

      v23 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
      v24 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
      v25 = [v24 store];
      v26 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
      v27 = [v23 updateContainerWithIdentifier:v22 inStore:v25 withNewName:v6 ignoresGuardianRestrictions:1 issuedRequestIdentifiers:v26];

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    [v31 setName:v6];
    v28 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    v13 = [v28 sectionIdentifierForItem:v31];

    if (!v13)
    {
      goto LABEL_18;
    }

    v29 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [v29 reloadCollectionViewForSectionWithIdentifier:v13 settingFilterForEditingItem:0 allowsReloadWhenEditing:0];
LABEL_17:

    goto LABEL_18;
  }

LABEL_7:
  if (!v8)
  {
    goto LABEL_19;
  }

  v13 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [v13 reloadCollectionViewDeletingItem:v31];
LABEL_18:

LABEL_19:
}

- (BOOL)authorizedEditGroupNameForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 identifier];
  v7 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  [v7 setCurrentlyEditingGroupIdentifier:v6];

  [v4 beginEditingName];
  return 1;
}

- (BOOL)editGroupNameActionForItem:(id)a3 cell:(id)a4
{
  v6 = a4;
  if ([(CNAccountsAndGroupsActionsProvider *)self isAuthorizedToEditItem:a3])
  {
    v7 = [(CNAccountsAndGroupsActionsProvider *)self authorizedEditGroupNameForCell:v6];
  }

  else
  {
    v8 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    v7 = 1;
    [(CNAccountsAndGroupsAuthorizationContext *)v8 setType:1];
    [(CNAccountsAndGroupsAuthorizationContext *)v8 setCell:v6];
    v9 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [v9 showEditAuthorizationPaneWithAuthorizationContext:v8 animated:1];
  }

  return v7;
}

- (BOOL)authorizedDeleteGroupForItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  [(CNAccountsAndGroupsActionsProvider *)self setIssuedSaveRequestIdentifiers:v8];

  v9 = [v6 identifier];
  v10 = [v9 isEqualToString:@"groupPlaceholderIdentifier"];

  if (v10)
  {
    goto LABEL_7;
  }

  if ([v6 type] == 2)
  {
    v11 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
    v12 = [v6 identifier];
    v13 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    v14 = [v13 store];
    v15 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
    v16 = [v11 deleteContainerWithIdentifier:v12 inStore:v14 ignoresGuardianRestrictions:1 issuedRequestIdentifiers:v15];
  }

  else
  {
    if ([v6 type] != 4)
    {
      goto LABEL_8;
    }

    v11 = [(CNAccountsAndGroupsActionsProvider *)self groupsAndContainersSaveManager];
    v12 = [v6 identifier];
    v13 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    v14 = [v13 store];
    v15 = [(CNAccountsAndGroupsActionsProvider *)self issuedSaveRequestIdentifiers];
    v16 = [v11 deleteGroupWithIdentifier:v12 inStore:v14 ignoresGuardianRestrictions:1 issuedRequestIdentifiers:v15];
  }

  v17 = v16;

  if (v17)
  {
LABEL_7:
    v18 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
    [v18 setCurrentlyEditingGroupIdentifier:0];

    v19 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [v19 reloadCollectionViewDeletingItem:v6];
    v20 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v19 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"DELETE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
  [v19 presentErrorAlertWithMessage:v22 animated:1];

  v20 = 0;
LABEL_9:

  if (v7)
  {
    v7[2](v7, v20);
  }

  return v20;
}

- (void)deleteGroupForItem:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(CNAccountsAndGroupsActionsProvider *)self isAuthorizedToEditItem:v9])
  {
    [(CNAccountsAndGroupsActionsProvider *)self authorizedDeleteGroupForItem:v9 completionHandler:v6];
  }

  else
  {
    v7 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setType:2];
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setItem:v9];
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setActionCompletionHandler:v6];
    v8 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    [v8 showEditAuthorizationPaneWithAuthorizationContext:v7 animated:1];
  }
}

- (BOOL)deleteGroupActionForItem:(id)a3 sourceView:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a4;
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"DELETE_GROUP_CONFIRMATION_ALERT_TITLE-%@" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [v8 name];
  v41 = [v10 localizedStringWithFormat:v13, v14];

  v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v41 message:0 preferredStyle:1];
  v16 = MEMORY[0x1E69DC648];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"DELETE_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __92__CNAccountsAndGroupsActionsProvider_deleteGroupActionForItem_sourceView_completionHandler___block_invoke;
  v44[3] = &unk_1E74E4A88;
  v44[4] = self;
  v45 = v8;
  v19 = v9;
  v46 = v19;
  v20 = v8;
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
  v27 = [v15 popoverPresentationController];
  [v27 setSourceView:v11];

  [v11 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [v15 popoverPresentationController];
  [v36 setSourceRect:{v29, v31, v33, v35}];

  v37 = [v15 popoverPresentationController];
  [v37 setPermittedArrowDirections:15];

  v38 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [v38 presentController:v15 animated:1];

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

- (BOOL)exportGroupForItem:(id)a3 sourceView:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [v8 resignAllFirstRespondersSavingCurrentlyEditing:0];

  v9 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v10 = +[CNContactListShareContactsAction descriptorForRequiredKeys];
  v18[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v12 = [v9 allContactsForItem:v7 keysToFetch:v11];

  v13 = objc_alloc_init(CNContactListShareContactsActionContext);
  v14 = [v7 name];

  [(CNContactListShareContactsActionContext *)v13 setGroupName:v14];
  v15 = [[CNContactListShareContactsAction alloc] initWithContacts:v12 sourceView:v6 context:v13];

  v16 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [(CNContactListShareContactsAction *)v15 setDelegate:v16];

  [(CNContactListShareContactsAction *)v15 performAction];
  return 1;
}

- (BOOL)messageGroupForItem:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [v5 resignAllFirstRespondersSavingCurrentlyEditing:0];

  v6 = objc_alloc_init(MEMORY[0x1E695CF10]);
  v7 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v8 = [MEMORY[0x1E695CF10] descriptorForRequiredKeys];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [v7 allContactsForItem:v4 keysToFetch:v9];

  v11 = [v6 messageUrlForContacts:v10];
  if (v11)
  {
    v12 = +[CNUIContactsEnvironment currentEnvironment];
    v13 = [v12 applicationWorkspace];
    v18 = *MEMORY[0x1E6963550];
    v19 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v13 openSensitiveURLInBackground:v11 withOptions:v14];
  }

  else
  {
    v12 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"MESSAGE_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"MESSAGE_GROUP_FAILURE_HINT" value:&stru_1F0CE7398 table:@"Localized"];
    [v12 presentErrorAlertWithTitle:v14 message:v16 animated:1];
  }

  return v11 != 0;
}

- (BOOL)emailGroupForItem:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
  [v5 resignAllFirstRespondersSavingCurrentlyEditing:0];

  v6 = objc_alloc_init(MEMORY[0x1E695CEF0]);
  v7 = [(CNAccountsAndGroupsActionsProvider *)self dataSource];
  v8 = [MEMORY[0x1E695CEF0] descriptorForRequiredKeys];
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [v7 allContactsForItem:v4 keysToFetch:v9];

  v11 = [v6 mailUrlForContacts:v10 needsEmailAddresses:0];
  if (v11)
  {
    v12 = +[CNUIContactsEnvironment currentEnvironment];
    v13 = [v12 applicationWorkspace];
    v16 = *MEMORY[0x1E6963550];
    v17 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v13 openSensitiveURLInBackground:v11 withOptions:v14];
  }

  else
  {
    v12 = [(CNAccountsAndGroupsActionsProvider *)self delegate];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"EMAIL_GROUP_FAILURE" value:&stru_1F0CE7398 table:@"Localized"];
    [v12 presentErrorAlertWithMessage:v14 animated:1];
  }

  return v11 != 0;
}

- (id)actionsForItem:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 canEmail])
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
    v55 = v6;
    v12 = [v8 actionWithTitle:v10 image:v11 identifier:0 handler:v54];

    v13 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v12];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  if ([v6 canMessage])
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
    v53 = v6;
    v18 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v52];

    v19 = [v13 arrayByAddingObject:v18];

    v13 = v19;
  }

  if ([v6 canExport])
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
    v50 = v6;
    v51 = v7;
    v24 = [v20 actionWithTitle:v22 image:v23 identifier:0 handler:v49];

    v25 = [v13 arrayByAddingObject:v24];

    v13 = v25;
  }

  if ([v6 canRename])
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
    v47 = v6;
    v48 = v7;
    v30 = [v26 actionWithTitle:v28 image:v29 identifier:0 handler:v46];

    v31 = [v13 arrayByAddingObject:v30];

    v13 = v31;
  }

  if ([v6 canDelete])
  {
    v32 = MEMORY[0x1E69DC628];
    v33 = CNContactsUIBundle();
    v34 = [v33 localizedStringForKey:@"DELETE_GROUP" value:&stru_1F0CE7398 table:@"Localized"];
    v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __58__CNAccountsAndGroupsActionsProvider_actionsForItem_cell___block_invoke_5;
    v42 = &unk_1E74E7830;
    v43 = self;
    v44 = v6;
    v45 = v7;
    v36 = [v32 actionWithTitle:v34 image:v35 identifier:0 handler:&v39];

    [v36 setAttributes:{2, v39, v40, v41, v42, v43}];
    v37 = [v13 arrayByAddingObject:v36];

    v13 = v37;
  }

  return v13;
}

- (id)contextMenuConfigurationForItem:(id)a3 cell:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CNAccountsAndGroupsActionsProvider_contextMenuConfigurationForItem_cell_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E74E4A60;
  aBlock[4] = self;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = a5;
  v13 = _Block_copy(aBlock);
  v14 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:v12 previewProvider:0 actionProvider:v13];

  return v14;
}

id __87__CNAccountsAndGroupsActionsProvider_contextMenuConfigurationForItem_cell_atIndexPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionsForItem:*(a1 + 40) cell:*(a1 + 48)];
  v2 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v1];

  return v2;
}

- (id)trailingActionsForItem:(id)a3 cell:(id)a4 isCollectionViewEditing:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v8 canDelete])
  {
    v11 = MEMORY[0x1E69DC8E8];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke;
    v25[3] = &unk_1E74E4A10;
    v27 = a5;
    v25[4] = self;
    v26 = v8;
    v12 = [v11 contextualActionWithStyle:1 title:0 handler:v25];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash.fill"];
    [v12 setImage:v13];

    [v10 addObject:v12];
  }

  if (!a5 && [v8 canRename])
  {
    v14 = MEMORY[0x1E69DC8E8];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __90__CNAccountsAndGroupsActionsProvider_trailingActionsForItem_cell_isCollectionViewEditing___block_invoke_2;
    v21 = &unk_1E74E4A38;
    v22 = self;
    v23 = v8;
    v24 = v9;
    v15 = [v14 contextualActionWithStyle:0 title:0 handler:&v18];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"pencil", v18, v19, v20, v21, v22}];
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

- (id)leadingActionsForItem:(id)a3 cell:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 canEmail])
  {
    v7 = MEMORY[0x1E69DC8E8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke;
    v22[3] = &unk_1E74E7858;
    v22[4] = self;
    v23 = v5;
    v8 = [v7 contextualActionWithStyle:0 title:0 handler:v22];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope.fill"];
    [v8 setImage:v9];

    v10 = +[CNUIColorRepository groupsMailActionColor];
    [v8 setBackgroundColor:v10];

    [v6 addObject:v8];
  }

  if ([v5 canMessage])
  {
    v11 = MEMORY[0x1E69DC8E8];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__CNAccountsAndGroupsActionsProvider_leadingActionsForItem_cell___block_invoke_2;
    v19 = &unk_1E74E7858;
    v20 = self;
    v21 = v5;
    v12 = [v11 contextualActionWithStyle:0 title:0 handler:&v16];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"message.fill", v16, v17, v18, v19, v20}];
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

- (CNAccountsAndGroupsActionsProvider)initWithDataSource:(id)a3 saveManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAccountsAndGroupsActionsProvider;
  v9 = [(CNAccountsAndGroupsActionsProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_groupsAndContainersSaveManager, a4);
    v11 = v10;
  }

  return v10;
}

@end