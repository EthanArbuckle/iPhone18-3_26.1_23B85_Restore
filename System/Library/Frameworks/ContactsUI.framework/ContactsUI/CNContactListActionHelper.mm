@interface CNContactListActionHelper
+ (id)descriptorForRequiredKeysForMultiSelectAction:(BOOL)a3;
+ (id)log;
- (BOOL)canRemoveFromGroup;
- (BOOL)canShowContactActionsForContacts:(id)a3;
- (BOOL)canShowDeleteAction;
- (BOOL)canShowSetAsMyCardActionForContacts:(id)a3;
- (CNContactListActionHelper)initWithContactStore:(id)a3 environment:(id)a4 contactFormatter:(id)a5 undoManager:(id)a6;
- (CNContactListActionHelperDelegate)delegate;
- (id)actionsForContacts:(id)a3 dataSourceFilter:(id)a4 sourceView:(id)a5;
- (id)contactActionsMenuForContact:(id)a3;
- (id)presentingViewControllerForActions;
- (id)searchMenuActionProviderForContacts:(id)a3;
- (id)trailingSwipeActionsForContact:(id)a3 dataSourceFilter:(id)a4;
- (void)action:(id)a3 presentViewController:(id)a4;
- (void)actionDidFinish:(id)a3;
- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)copyContacts:(id)a3;
- (void)deleteContacts:(id)a3;
- (void)deleteContacts:(id)a3 dataSourceFilter:(id)a4;
- (void)mergeContacts:(id)a3;
- (void)removeContactsFromGroup:(id)a3 withConfirmation:(BOOL)a4;
- (void)shareContacts:(id)a3 sourceView:(id)a4;
- (void)updateMeContact:(id)a3;
- (void)willDismissMenu;
- (void)willDisplayMenuWithContextMenuInteraction:(id)a3;
@end

@implementation CNContactListActionHelper

- (CNContactListActionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNContactListActionHelper *)self actionMenuHelper];

  if (v6)
  {
    v7 = [(CNContactListActionHelper *)self actionMenuHelper];
    v8 = [(CNContactListActionHelper *)self delegate];
    v9 = [v8 contextMenuInteraction];
    [v7 updateWithMenuItems:v5 contextMenuInteraction:v9];

LABEL_5:
    goto LABEL_6;
  }

  v10 = [(CNContactListActionHelper *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v7 = [(CNContactListActionHelper *)self contactActionsMenuFromItems:v5];
    v12 = [(CNContactListActionHelper *)self delegate];
    v14[0] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v12 listActionHelper:self didUpdateWithMenu:v13];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)presentingViewControllerForActions
{
  v2 = [(CNContactListActionHelper *)self delegate];
  v3 = [v2 presentingViewControllerForActions];

  return v3;
}

- (void)actionDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListActionHelper *)self delegate];
  [v5 actionDidFinish:v4];
}

- (void)action:(id)a3 presentViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactListActionHelper *)self delegate];
  [v8 action:v7 presentViewController:v6];
}

- (BOOL)canShowContactActionsForContacts:(id)a3
{
  v4 = a3;
  if ([(CNContactListActionHelper *)self includesContactOrbActions])
  {
    v5 = [v4 count] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contactActionsMenuForContact:(id)a3
{
  v4 = a3;
  v5 = [[CNContactOrbActionsController alloc] initWithContact:v4];

  [(CNContactListActionHelper *)self setContactActionsController:v5];
  v6 = [(CNContactListActionHelper *)self contactActionsController];

  if (v6)
  {
    v7 = [(CNContactListActionHelper *)self contactActionsController];
    [v7 setDelegate:self];

    v8 = [(CNContactListActionHelper *)self contactActionsController];
    v6 = [v8 currentAvailableMenuItems];
  }

  v9 = [(CNContactListActionHelper *)self contactActionsMenuFromItems:v6];

  return v9;
}

- (void)copyContacts:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CNContactListActionHelper_copyContacts___block_invoke;
  v5[3] = &unk_1E74E78A8;
  v5[4] = self;
  v3 = [a3 _cn_map:v5];
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v4 setItemProviders:v3];
}

id __42__CNContactListActionHelper_copyContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionConfiguration];
  v5 = [v4 contactStore];
  v6 = [CNUIDraggingContacts itemProviderForContact:v3 withContactStore:v5];

  v7 = [CNUIVCardUtilities fileNameForContact:v3];

  [v6 setSuggestedName:v7];

  return v6;
}

- (BOOL)canShowSetAsMyCardActionForContacts:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v6 = [v5 isMeContact:v4] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)updateMeContact:(id)a3
{
  v4 = a3;
  v5 = [CNContactListSetMyCardAction alloc];
  v6 = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListSetMyCardAction *)v5 initWithContact:v4 configuration:v6];

  [(CNContactListAction *)v8 setDelegate:self];
  v7 = [(CNContactListActionHelper *)self actionExecutor];
  [v7 executeUndoableAction:v8];
}

- (void)mergeContacts:(id)a3
{
  v4 = a3;
  v5 = [CNContactListMergeAction alloc];
  v6 = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListAction *)v5 initWithContacts:v4 configuration:v6];

  [(CNContactListAction *)v8 setDelegate:self];
  v7 = [(CNContactListActionHelper *)self actionExecutor];
  [v7 executeUndoableAction:v8];
}

- (void)deleteContacts:(id)a3 dataSourceFilter:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(CNContactListActionHelper *)self actionConfiguration];
  [v7 setContactStoreFilter:v6];

  [(CNContactListActionHelper *)self deleteContacts:v8];
}

- (void)deleteContacts:(id)a3
{
  v4 = a3;
  v5 = [CNContactListDeleteContactsAction alloc];
  v6 = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListDeleteContactsAction *)v5 initWithContacts:v4 configuration:v6];

  [(CNContactListAction *)v8 setDelegate:self];
  v7 = [(CNContactListActionHelper *)self actionExecutor];
  [v7 executeUndoableAction:v8];
}

- (BOOL)canShowDeleteAction
{
  v2 = self;
  v3 = [(CNContactListActionHelper *)self contacts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNContactListActionHelper_canShowDeleteAction__block_invoke;
  v5[3] = &unk_1E74E7880;
  v5[4] = v2;
  LOBYTE(v2) = [v3 _cn_any:v5];

  return v2 ^ 1;
}

uint64_t __48__CNContactListActionHelper_canShowDeleteAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionConfiguration];
  v5 = [v4 contactViewCache];
  v6 = [v5 policyForContact:v3];

  v7 = [v6 isReadonly];
  return v7;
}

- (void)shareContacts:(id)a3 sourceView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[CNContactListShareContactsAction alloc] initWithContacts:v7 sourceView:v6];

  [(CNContactListShareContactsAction *)v9 setDelegate:self];
  v8 = [(CNContactListActionHelper *)self actionExecutor];
  [v8 executeAction:v9];
}

- (BOOL)canRemoveFromGroup
{
  if (![(CNContactListActionHelper *)self includesEditingActions])
  {
    return 0;
  }

  v3 = [(CNContactListActionHelper *)self actionConfiguration];
  v4 = [v3 contactStoreFilter];

  v5 = [v4 groupIdentifiers];
  if ([v5 count] == 1)
  {
    v6 = [v4 containerIdentifiers];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeContactsFromGroup:(id)a3 withConfirmation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [CNContactListRemoveContactsFromGroupAction alloc];
  v8 = [(CNContactListActionHelper *)self actionConfiguration];
  v10 = [(CNContactListRemoveContactsFromGroupAction *)v7 initWithContacts:v6 configuration:v8 withConfirmation:v4];

  [(CNContactListAction *)v10 setDelegate:self];
  v9 = [(CNContactListActionHelper *)self actionExecutor];
  [v9 executeUndoableAction:v10];
}

- (id)trailingSwipeActionsForContact:(id)a3 dataSourceFilter:(id)a4
{
  v6 = a3;
  if (v6 && (v7 = a4, -[CNContactListActionHelper actionConfiguration](self, "actionConfiguration"), v8 = objc_claimAutoreleasedReturnValue(), [v8 setContactStoreFilter:v7], v7, v8, -[CNContactListActionHelper canRemoveFromGroup](self, "canRemoveFromGroup")))
  {
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"LIST_SWIPE_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];

    v11 = MEMORY[0x1E69DC8E8];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__CNContactListActionHelper_trailingSwipeActionsForContact_dataSourceFilter___block_invoke;
    v18 = &unk_1E74E7858;
    v19 = self;
    v20 = v6;
    v12 = [v11 contextualActionWithStyle:1 title:v10 handler:&v15];
    v13 = [MEMORY[0x1E695E0F0] arrayByAddingObject:{v12, v15, v16, v17, v18, v19}];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __77__CNContactListActionHelper_trailingSwipeActionsForContact_dataSourceFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v8 count:1];
  [v4 removeContactsFromGroup:v7 withConfirmation:{0, v8, v9}];

  v6[2](v6, 1);
}

- (id)actionsForContacts:(id)a3 dataSourceFilter:(id)a4 sourceView:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v70 = a5;
  v9 = a4;
  [(CNContactListActionHelper *)self setContacts:v8];
  v10 = [(CNContactListActionHelper *)self actionConfiguration];
  [v10 setContactStoreFilter:v9];

  if ([(CNContactListActionHelper *)self canShowContactActionsForContacts:v8])
  {
    objc_opt_class();
    v11 = [v8 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [(CNContactListActionHelper *)self contactActionsMenuForContact:v13];
      v15 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v14];
    }

    else
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v68 = [v8 firstObject];
        *buf = 138412290;
        v89 = v68;
        _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Attempted to orb non-contact: %@", buf, 0xCu);
      }

      v15 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"LIST_MENU_ACTION_COPY_CARD" value:&stru_1F0CE7398 table:@"Localized"];

  v19 = MEMORY[0x1E69DC628];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke;
  v85[3] = &unk_1E74E7808;
  v85[4] = self;
  v21 = v8;
  v86 = v21;
  v72 = v18;
  v22 = [v19 actionWithTitle:v18 image:v20 identifier:0 handler:v85];

  v23 = CNContactsUIBundle();
  v24 = [v23 localizedStringForKey:@"LIST_MENU_ACTION_SHARE_CARD" value:&stru_1F0CE7398 table:@"Localized"];

  v25 = MEMORY[0x1E69DC628];
  v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_2;
  v82[3] = &unk_1E74E7830;
  v82[4] = self;
  v27 = v21;
  v83 = v27;
  v28 = v70;
  v84 = v28;
  v71 = v24;
  v29 = [v25 actionWithTitle:v24 image:v26 identifier:0 handler:v82];

  v30 = MEMORY[0x1E69DCC60];
  v87[0] = v22;
  v87[1] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
  v32 = [v30 menuWithTitle:&stru_1F0CE7398 image:0 identifier:0 options:1 children:v31];

  v33 = [v15 arrayByAddingObject:v32];

  if ([(CNContactListActionHelper *)self includesEditingActions])
  {
    if ([(CNContactListActionHelper *)self canShowMergeActionForContacts:v27])
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = CNContactsUIBundle();
      v36 = [v35 localizedStringForKey:@"LIST_ACTION_MERGE_CARDS_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      v37 = [v34 localizedStringWithFormat:v36, objc_msgSend(v27, "count")];

      v38 = MEMORY[0x1E69DC628];
      v39 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.triangle.merge"];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_3;
      v80[3] = &unk_1E74E7808;
      v80[4] = self;
      v81 = v27;
      v40 = [v38 actionWithTitle:v37 image:v39 identifier:0 handler:v80];

      v41 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v40];
    }

    else
    {
      v41 = MEMORY[0x1E695E0F0];
    }

    v69 = v22;
    if ([(CNContactListActionHelper *)self canShowSetAsMyCardActionForContacts:v27])
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = CNContactsUIBundle();
      v44 = [v43 localizedStringForKey:@"LIST_MENU_ACTION_MY_CARD" value:&stru_1F0CE7398 table:@"Localized"];
      v45 = [v42 localizedStringWithFormat:v44, objc_msgSend(v27, "count")];

      v46 = MEMORY[0x1E69DC628];
      v47 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_4;
      v77[3] = &unk_1E74E7808;
      v78 = v27;
      v79 = self;
      v48 = [v46 actionWithTitle:v45 image:v47 identifier:0 handler:v77];

      v49 = [v41 arrayByAddingObject:v48];

      v41 = v49;
    }

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v50 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 image:0 identifier:0 options:1 children:v41];
      v51 = [v33 arrayByAddingObject:v50];

      v33 = v51;
    }

    if ([(CNContactListActionHelper *)self canRemoveFromGroup])
    {
      v52 = CNContactsUIBundle();
      v53 = [v52 localizedStringForKey:@"LIST_ACTION_ALERT_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];

      v54 = MEMORY[0x1E69DC628];
      v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_5;
      v75[3] = &unk_1E74E7808;
      v75[4] = self;
      v76 = v27;
      v56 = [v54 actionWithTitle:v53 image:v55 identifier:0 handler:v75];

      [v56 setAttributes:2];
      v57 = [v33 arrayByAddingObject:v56];

      v33 = v57;
    }

    v22 = v69;
    if ([(CNContactListActionHelper *)self canShowDeleteAction])
    {
      if ([v27 count] < 2)
      {
        v59 = CNContactsUIBundle();
        v61 = [v59 localizedStringForKey:@"CARD_ACTION_DELETE_CARD" value:&stru_1F0CE7398 table:@"Localized"];
      }

      else
      {
        v58 = MEMORY[0x1E696AEC0];
        v59 = CNContactsUIBundle();
        v60 = [v59 localizedStringForKey:@"CARD_ACTION_DELETE_CARD_MULTIPLE" value:&stru_1F0CE7398 table:@"Localized"];
        v61 = [v58 localizedStringWithFormat:v60, objc_msgSend(v27, "count")];
      }

      v62 = MEMORY[0x1E69DC628];
      v63 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_6;
      v73[3] = &unk_1E74E7808;
      v73[4] = self;
      v74 = v27;
      v64 = [v62 actionWithTitle:v61 image:v63 identifier:0 handler:v73];

      [v64 setAttributes:2];
      v65 = [v33 arrayByAddingObject:v64];

      v33 = v65;
      v22 = v69;
    }
  }

  else
  {
    v41 = MEMORY[0x1E695E0F0];
  }

  v66 = v33;

  return v33;
}

void __76__CNContactListActionHelper_actionsForContacts_dataSourceFilter_sourceView___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  [*(a1 + 40) updateMeContact:v2];
}

- (void)willDisplayMenuWithContextMenuInteraction:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListActionHelper *)self actionMenuHelper];
  [v5 willDisplayMenuWithContextMenuInteraction:v4];
}

- (void)willDismissMenu
{
  v2 = [(CNContactListActionHelper *)self actionMenuHelper];
  [v2 willDismissMenu];
}

- (id)searchMenuActionProviderForContacts:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 firstObject];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if (!self->_actionMenuHelper)
    {
      v8 = objc_alloc_init(CNActionMenuHelper);
      actionMenuHelper = self->_actionMenuHelper;
      self->_actionMenuHelper = v8;
    }

    v10 = [[CNContactOrbActionsController alloc] initWithContact:v7];
    [(CNContactListActionHelper *)self setContactActionsController:v10];

    v11 = [(CNContactListActionHelper *)self contactActionsController];

    if (v11)
    {
      v12 = [(CNContactListActionHelper *)self contactActionsController];
      [v12 setDelegate:self];

      v13 = [(CNContactListActionHelper *)self contactActionsController];
      v14 = [v13 currentAvailableMenuItems];

      if ([v14 count])
      {
        v15 = [(CNContactListActionHelper *)self actionMenuHelper];
        v16 = [(CNContactListActionHelper *)self delegate];
        v17 = [v16 contextMenuInteraction];
        [v15 updateWithMenuItems:v14 contextMenuInteraction:v17];
      }
    }

    v18 = [(CNContactListActionHelper *)self actionMenuHelper];
    v19 = [v18 configurationActionProviderWithActionBlock:&__block_literal_global_56_66769];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CNContactListActionHelper)initWithContactStore:(id)a3 environment:(id)a4 contactFormatter:(id)a5 undoManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CNContactListActionHelper;
  v14 = [(CNContactListActionHelper *)&v22 init];
  if (v14)
  {
    v15 = [[CNContactListActionExecutor alloc] initWithUndoManager:v13];
    actionExecutor = v14->_actionExecutor;
    v14->_actionExecutor = v15;

    v17 = objc_alloc_init(CNContactListActionConfiguration);
    actionConfiguration = v14->_actionConfiguration;
    v14->_actionConfiguration = v17;

    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactStore:v10];
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setEnvironment:v11];
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactFormatter:v12];
    v19 = objc_alloc_init(CNContactViewCache);
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactViewCache:v19];

    v20 = v14;
  }

  return v14;
}

+ (id)descriptorForRequiredKeysForMultiSelectAction:(BOOL)a3
{
  v3 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD58];
  v5 = +[CNContactListDeleteContactsAction descriptorForRequiredKeys];
  v6 = +[CNContactListShareContactsAction descriptorForRequiredKeys];
  v17[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListActionHelper descriptorForRequiredKeysForMultiSelectAction:]"];
  v9 = [v4 descriptorWithKeyDescriptors:v7 description:v8];
  v18[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  if (v3)
  {
    v11 = +[CNContactListMergeAction descriptorForRequiredKeys];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  v13 = MEMORY[0x1E695CD58];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListActionHelper descriptorForRequiredKeysForMultiSelectAction:]"];
  v15 = [v13 descriptorWithKeyDescriptors:v10 description:v14];

  return v15;
}

+ (id)log
{
  if (log_cn_once_token_8 != -1)
  {
    dispatch_once(&log_cn_once_token_8, &__block_literal_global_42_66779);
  }

  v3 = log_cn_once_object_8;

  return v3;
}

uint64_t __32__CNContactListActionHelper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactListActionHelper");
  v1 = log_cn_once_object_8;
  log_cn_once_object_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end