@interface CNContactListMergeAction
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)executeAction;
- (BOOL)mergeWillRequireLinkingForContacts:(id)contacts;
- (void)performAction;
- (void)performUndoAction;
- (void)showMergeFailureAlert;
@end

@implementation CNContactListMergeAction

+ (id)descriptorForRequiredKeys
{
  v2 = MEMORY[0x1E695CD58];
  v3 = +[_TtC10ContactsUI33ContactListMergeUnifyActionHelper descriptorForRequiredKeys];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListMergeAction descriptorForRequiredKeys]"];
  v5 = [v2 descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

+ (id)log
{
  if (log_cn_once_token_6_36144 != -1)
  {
    dispatch_once(&log_cn_once_token_6_36144, &__block_literal_global_36145);
  }

  v3 = log_cn_once_object_6_36146;

  return v3;
}

uint64_t __31__CNContactListMergeAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIContactListMergeAction");
  v1 = log_cn_once_object_6_36146;
  log_cn_once_object_6_36146 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)showMergeFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"MERGE_CARDS_SHEET_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v3 alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v9 = [v6 actionWithTitle:v8 style:0 handler:0];
  [v11 addAction:v9];

  delegate = [(CNContactListAction *)self delegate];
  [delegate action:self presentViewController:v11];
}

- (void)performUndoAction
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v4 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  [v4 setIgnoresGuardianRestrictions:1];
  mergeUnifyActionHelper = [(CNContactListMergeAction *)self mergeUnifyActionHelper];
  v6 = [mergeUnifyActionHelper applyUndoTo:v3 and:v4];

  if (v6)
  {
    configuration = [(CNContactListAction *)self configuration];
    contactStore = [configuration contactStore];
    v17 = 0;
    v9 = [contactStore executeSaveRequest:v3 error:&v17];
    v10 = v17;

    v11 = 0;
    if (v9 && (-[CNContactListAction configuration](self, "configuration"), v12 = objc_claimAutoreleasedReturnValue(), [v12 contactStore], v13 = objc_claimAutoreleasedReturnValue(), v16 = 0, v14 = objc_msgSend(v13, "executeSaveRequest:error:", v4, &v16), v11 = v16, v13, v12, (v14 & 1) != 0))
    {
      delegate = [(CNContactListAction *)self delegate];
      [delegate actionDidFinish:self];
    }

    else
    {
      delegate = [objc_opt_class() log];
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_error_impl(&dword_199A75000, delegate, OS_LOG_TYPE_ERROR, "Failed to undo merge contacts action: %@ | %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Failed to undo merge contacts action: no merge result to undo", buf, 2u);
    }
  }
}

- (BOOL)mergeWillRequireLinkingForContacts:(id)contacts
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CNContactListMergeAction_mergeWillRequireLinkingForContacts___block_invoke;
  v7[3] = &unk_1E74E4648;
  v7[4] = self;
  v3 = [contacts _cn_groupBy:v7];
  allKeys = [v3 allKeys];
  v5 = [allKeys count] > 1;

  return v5;
}

__CFString *__63__CNContactListMergeAction_mergeWillRequireLinkingForContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 configuration];
  v5 = [v4 contactViewCache];
  v6 = [v5 containerForContact:v3];

  v7 = [v6 identifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F0CE7398;
  }

  v10 = v9;

  return v9;
}

- (BOOL)executeAction
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  mergeUnifyActionHelper = [(CNContactListMergeAction *)self mergeUnifyActionHelper];

  if (!mergeUnifyActionHelper)
  {
    v5 = [_TtC10ContactsUI33ContactListMergeUnifyActionHelper alloc];
    configuration = [(CNContactListAction *)self configuration];
    contactStore = [configuration contactStore];
    v8 = [(ContactListMergeUnifyActionHelper *)v5 initWithContactStore:contactStore];
    [(CNContactListMergeAction *)self setMergeUnifyActionHelper:v8];
  }

  groupsAndContainersSaveManager = [(CNContactListMergeAction *)self groupsAndContainersSaveManager];

  if (!groupsAndContainersSaveManager)
  {
    v10 = [CNUIGroupsAndContainersSaveManager alloc];
    configuration2 = [(CNContactListAction *)self configuration];
    contactStore2 = [configuration2 contactStore];
    configuration3 = [(CNContactListAction *)self configuration];
    contactViewCache = [configuration3 contactViewCache];
    v15 = [(CNUIGroupsAndContainersSaveManager *)v10 initWithContactStore:contactStore2 contactViewCache:contactViewCache];
    [(CNContactListMergeAction *)self setGroupsAndContainersSaveManager:v15];
  }

  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  contacts = [(CNContactListAction *)self contacts];
  v41 = [v16 initWithCapacity:{objc_msgSend(contacts, "count")}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  contacts2 = [(CNContactListAction *)self contacts];
  v19 = [contacts2 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    v22 = *MEMORY[0x1E6996530];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(contacts2);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        groupsAndContainersSaveManager2 = [(CNContactListMergeAction *)self groupsAndContainersSaveManager];
        v26 = [groupsAndContainersSaveManager2 parentGroupsForContact:v24];

        if (((*(v22 + 16))(v22, v26) & 1) == 0)
        {
          identifier = [v24 identifier];
          [v41 setObject:v26 forKeyedSubscript:identifier];
        }
      }

      v20 = [contacts2 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v20);
  }

  mergeUnifyActionHelper2 = [(CNContactListMergeAction *)self mergeUnifyActionHelper];
  contacts3 = [(CNContactListAction *)self contacts];
  contacts4 = [(CNContactListAction *)self contacts];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __41__CNContactListMergeAction_executeAction__block_invoke;
  v43[3] = &unk_1E74E78A8;
  v43[4] = self;
  v31 = [contacts4 _cn_map:v43];
  [mergeUnifyActionHelper2 mergeContacts:contacts3 withContainerIdentifiers:v31 withContactIDToParentGroupsDict:v41];

  mergeUnifyActionHelper3 = [(CNContactListMergeAction *)self mergeUnifyActionHelper];
  LOBYTE(contacts3) = [mergeUnifyActionHelper3 applyMergeResultToSaveRequest:v40];

  if ((contacts3 & 1) == 0)
  {
    v37 = [objc_opt_class() log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v37, OS_LOG_TYPE_ERROR, "Failed to merge contacts action: no merge result", buf, 2u);
    }

    goto LABEL_21;
  }

  v33 = 1;
  [v40 setIgnoresGuardianRestrictions:1];
  configuration4 = [(CNContactListAction *)self configuration];
  contactStore3 = [configuration4 contactStore];
  v42 = 0;
  v36 = [contactStore3 executeSaveRequest:v40 error:&v42];
  v37 = v42;

  if ((v36 & 1) == 0)
  {
    v38 = [objc_opt_class() log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v37;
      _os_log_error_impl(&dword_199A75000, v38, OS_LOG_TYPE_ERROR, "Failed to merge contacts: %@", buf, 0xCu);
    }

LABEL_21:
    v33 = 0;
  }

  return v33;
}

__CFString *__41__CNContactListMergeAction_executeAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 configuration];
  v5 = [v4 contactViewCache];
  v6 = [v5 containerForContact:v3];

  v7 = [v6 identifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F0CE7398;
  }

  v10 = v9;

  return v9;
}

- (void)performAction
{
  contacts = [(CNContactListAction *)self contacts];
  v4 = [(CNContactListMergeAction *)self mergeWillRequireLinkingForContacts:contacts];

  v5 = MEMORY[0x1E696AEC0];
  v6 = CNContactsUIBundle();
  v7 = v6;
  if (v4)
  {
    v8 = @"LIST_ACTION_MERGE_LINK_CARDS_MESSAGE";
  }

  else
  {
    v8 = @"LIST_ACTION_MERGE_CARDS_MESSAGE";
  }

  if (v4)
  {
    v9 = @"LIST_ACTION_MERGE_LINK_CARDS_TITLE";
  }

  else
  {
    v9 = @"LIST_ACTION_MERGE_CARDS_TITLE";
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_1F0CE7398 table:@"Localized"];
  contacts2 = [(CNContactListAction *)self contacts];
  v12 = [contacts2 count];

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v5 localizedStringWithFormat:v10, v13];

  v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:0 preferredStyle:1];
  v16 = MEMORY[0x1E696AEC0];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];
  contacts3 = [(CNContactListAction *)self contacts];
  v20 = [contacts3 count];

  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v16 localizedStringWithFormat:v18, v21];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __41__CNContactListMergeAction_performAction__block_invoke;
  v29[3] = &unk_1E74E6C28;
  v29[4] = self;
  v23 = [MEMORY[0x1E69DC648] actionWithTitle:v22 style:0 handler:v29];
  [v15 addAction:v23];

  v24 = MEMORY[0x1E69DC648];
  v25 = CNContactsUIBundle();
  v26 = [v25 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v27 = [v24 actionWithTitle:v26 style:1 handler:&__block_literal_global_28];
  [v15 addAction:v27];

  delegate = [(CNContactListAction *)self delegate];
  [delegate action:self presentViewController:v15];
}

void __41__CNContactListMergeAction_performAction__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) executeAction] & 1) == 0)
  {
    [*(a1 + 32) showMergeFailureAlert];
  }

  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

@end