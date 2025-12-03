@interface CNContactListActionHelper
+ (id)descriptorForRequiredKeysForMultiSelectAction:(BOOL)action;
+ (id)log;
- (BOOL)canRemoveFromGroup;
- (BOOL)canShowContactActionsForContacts:(id)contacts;
- (BOOL)canShowDeleteAction;
- (BOOL)canShowSetAsMyCardActionForContacts:(id)contacts;
- (CNContactListActionHelper)initWithContactStore:(id)store environment:(id)environment contactFormatter:(id)formatter undoManager:(id)manager;
- (CNContactListActionHelperDelegate)delegate;
- (id)actionsForContacts:(id)contacts dataSourceFilter:(id)filter sourceView:(id)view;
- (id)contactActionsMenuForContact:(id)contact;
- (id)presentingViewControllerForActions;
- (id)searchMenuActionProviderForContacts:(id)contacts;
- (id)trailingSwipeActionsForContact:(id)contact dataSourceFilter:(id)filter;
- (void)action:(id)action presentViewController:(id)controller;
- (void)actionDidFinish:(id)finish;
- (void)contactOrbActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)copyContacts:(id)contacts;
- (void)deleteContacts:(id)contacts;
- (void)deleteContacts:(id)contacts dataSourceFilter:(id)filter;
- (void)mergeContacts:(id)contacts;
- (void)removeContactsFromGroup:(id)group withConfirmation:(BOOL)confirmation;
- (void)shareContacts:(id)contacts sourceView:(id)view;
- (void)updateMeContact:(id)contact;
- (void)willDismissMenu;
- (void)willDisplayMenuWithContextMenuInteraction:(id)interaction;
@end

@implementation CNContactListActionHelper

- (CNContactListActionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactOrbActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  v14[1] = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  actionMenuHelper = [(CNContactListActionHelper *)self actionMenuHelper];

  if (actionMenuHelper)
  {
    actionMenuHelper2 = [(CNContactListActionHelper *)self actionMenuHelper];
    delegate = [(CNContactListActionHelper *)self delegate];
    contextMenuInteraction = [delegate contextMenuInteraction];
    [actionMenuHelper2 updateWithMenuItems:menuCopy contextMenuInteraction:contextMenuInteraction];

LABEL_5:
    goto LABEL_6;
  }

  delegate2 = [(CNContactListActionHelper *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    actionMenuHelper2 = [(CNContactListActionHelper *)self contactActionsMenuFromItems:menuCopy];
    delegate3 = [(CNContactListActionHelper *)self delegate];
    v14[0] = actionMenuHelper2;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [delegate3 listActionHelper:self didUpdateWithMenu:v13];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)presentingViewControllerForActions
{
  delegate = [(CNContactListActionHelper *)self delegate];
  presentingViewControllerForActions = [delegate presentingViewControllerForActions];

  return presentingViewControllerForActions;
}

- (void)actionDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(CNContactListActionHelper *)self delegate];
  [delegate actionDidFinish:finishCopy];
}

- (void)action:(id)action presentViewController:(id)controller
{
  controllerCopy = controller;
  actionCopy = action;
  delegate = [(CNContactListActionHelper *)self delegate];
  [delegate action:actionCopy presentViewController:controllerCopy];
}

- (BOOL)canShowContactActionsForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([(CNContactListActionHelper *)self includesContactOrbActions])
  {
    v5 = [contactsCopy count] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contactActionsMenuForContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNContactOrbActionsController alloc] initWithContact:contactCopy];

  [(CNContactListActionHelper *)self setContactActionsController:v5];
  contactActionsController = [(CNContactListActionHelper *)self contactActionsController];

  if (contactActionsController)
  {
    contactActionsController2 = [(CNContactListActionHelper *)self contactActionsController];
    [contactActionsController2 setDelegate:self];

    contactActionsController3 = [(CNContactListActionHelper *)self contactActionsController];
    contactActionsController = [contactActionsController3 currentAvailableMenuItems];
  }

  v9 = [(CNContactListActionHelper *)self contactActionsMenuFromItems:contactActionsController];

  return v9;
}

- (void)copyContacts:(id)contacts
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CNContactListActionHelper_copyContacts___block_invoke;
  v5[3] = &unk_1E74E78A8;
  v5[4] = self;
  v3 = [contacts _cn_map:v5];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setItemProviders:v3];
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

- (BOOL)canShowSetAsMyCardActionForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    firstObject = [contactsCopy firstObject];
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v6 = [unifiedMeContactMonitor isMeContact:firstObject] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)updateMeContact:(id)contact
{
  contactCopy = contact;
  v5 = [CNContactListSetMyCardAction alloc];
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListSetMyCardAction *)v5 initWithContact:contactCopy configuration:actionConfiguration];

  [(CNContactListAction *)v8 setDelegate:self];
  actionExecutor = [(CNContactListActionHelper *)self actionExecutor];
  [actionExecutor executeUndoableAction:v8];
}

- (void)mergeContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [CNContactListMergeAction alloc];
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListAction *)v5 initWithContacts:contactsCopy configuration:actionConfiguration];

  [(CNContactListAction *)v8 setDelegate:self];
  actionExecutor = [(CNContactListActionHelper *)self actionExecutor];
  [actionExecutor executeUndoableAction:v8];
}

- (void)deleteContacts:(id)contacts dataSourceFilter:(id)filter
{
  filterCopy = filter;
  contactsCopy = contacts;
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  [actionConfiguration setContactStoreFilter:filterCopy];

  [(CNContactListActionHelper *)self deleteContacts:contactsCopy];
}

- (void)deleteContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [CNContactListDeleteContactsAction alloc];
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  v8 = [(CNContactListDeleteContactsAction *)v5 initWithContacts:contactsCopy configuration:actionConfiguration];

  [(CNContactListAction *)v8 setDelegate:self];
  actionExecutor = [(CNContactListActionHelper *)self actionExecutor];
  [actionExecutor executeUndoableAction:v8];
}

- (BOOL)canShowDeleteAction
{
  selfCopy = self;
  contacts = [(CNContactListActionHelper *)self contacts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNContactListActionHelper_canShowDeleteAction__block_invoke;
  v5[3] = &unk_1E74E7880;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [contacts _cn_any:v5];

  return selfCopy ^ 1;
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

- (void)shareContacts:(id)contacts sourceView:(id)view
{
  viewCopy = view;
  contactsCopy = contacts;
  v9 = [[CNContactListShareContactsAction alloc] initWithContacts:contactsCopy sourceView:viewCopy];

  [(CNContactListShareContactsAction *)v9 setDelegate:self];
  actionExecutor = [(CNContactListActionHelper *)self actionExecutor];
  [actionExecutor executeAction:v9];
}

- (BOOL)canRemoveFromGroup
{
  if (![(CNContactListActionHelper *)self includesEditingActions])
  {
    return 0;
  }

  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  contactStoreFilter = [actionConfiguration contactStoreFilter];

  groupIdentifiers = [contactStoreFilter groupIdentifiers];
  if ([groupIdentifiers count] == 1)
  {
    containerIdentifiers = [contactStoreFilter containerIdentifiers];
    v7 = [containerIdentifiers count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeContactsFromGroup:(id)group withConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  groupCopy = group;
  v7 = [CNContactListRemoveContactsFromGroupAction alloc];
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  v10 = [(CNContactListRemoveContactsFromGroupAction *)v7 initWithContacts:groupCopy configuration:actionConfiguration withConfirmation:confirmationCopy];

  [(CNContactListAction *)v10 setDelegate:self];
  actionExecutor = [(CNContactListActionHelper *)self actionExecutor];
  [actionExecutor executeUndoableAction:v10];
}

- (id)trailingSwipeActionsForContact:(id)contact dataSourceFilter:(id)filter
{
  contactCopy = contact;
  if (contactCopy && (v7 = filter, -[CNContactListActionHelper actionConfiguration](self, "actionConfiguration"), v8 = objc_claimAutoreleasedReturnValue(), [v8 setContactStoreFilter:v7], v7, v8, -[CNContactListActionHelper canRemoveFromGroup](self, "canRemoveFromGroup")))
  {
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"LIST_SWIPE_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];

    v11 = MEMORY[0x1E69DC8E8];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__CNContactListActionHelper_trailingSwipeActionsForContact_dataSourceFilter___block_invoke;
    v18 = &unk_1E74E7858;
    selfCopy = self;
    v20 = contactCopy;
    v12 = [v11 contextualActionWithStyle:1 title:v10 handler:&v15];
    v13 = [MEMORY[0x1E695E0F0] arrayByAddingObject:{v12, v15, v16, v17, v18, selfCopy}];
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

- (id)actionsForContacts:(id)contacts dataSourceFilter:(id)filter sourceView:(id)view
{
  v90 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  viewCopy = view;
  filterCopy = filter;
  [(CNContactListActionHelper *)self setContacts:contactsCopy];
  actionConfiguration = [(CNContactListActionHelper *)self actionConfiguration];
  [actionConfiguration setContactStoreFilter:filterCopy];

  if ([(CNContactListActionHelper *)self canShowContactActionsForContacts:contactsCopy])
  {
    objc_opt_class();
    firstObject = [contactsCopy firstObject];
    if (objc_opt_isKindOfClass())
    {
      v12 = firstObject;
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
        firstObject2 = [contactsCopy firstObject];
        *buf = 138412290;
        v89 = firstObject2;
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
  v21 = contactsCopy;
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
  v28 = viewCopy;
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
      selfCopy = self;
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

- (void)willDisplayMenuWithContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  actionMenuHelper = [(CNContactListActionHelper *)self actionMenuHelper];
  [actionMenuHelper willDisplayMenuWithContextMenuInteraction:interactionCopy];
}

- (void)willDismissMenu
{
  actionMenuHelper = [(CNContactListActionHelper *)self actionMenuHelper];
  [actionMenuHelper willDismissMenu];
}

- (id)searchMenuActionProviderForContacts:(id)contacts
{
  contactsCopy = contacts;
  objc_opt_class();
  firstObject = [contactsCopy firstObject];

  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
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

    contactActionsController = [(CNContactListActionHelper *)self contactActionsController];

    if (contactActionsController)
    {
      contactActionsController2 = [(CNContactListActionHelper *)self contactActionsController];
      [contactActionsController2 setDelegate:self];

      contactActionsController3 = [(CNContactListActionHelper *)self contactActionsController];
      currentAvailableMenuItems = [contactActionsController3 currentAvailableMenuItems];

      if ([currentAvailableMenuItems count])
      {
        actionMenuHelper = [(CNContactListActionHelper *)self actionMenuHelper];
        delegate = [(CNContactListActionHelper *)self delegate];
        contextMenuInteraction = [delegate contextMenuInteraction];
        [actionMenuHelper updateWithMenuItems:currentAvailableMenuItems contextMenuInteraction:contextMenuInteraction];
      }
    }

    actionMenuHelper2 = [(CNContactListActionHelper *)self actionMenuHelper];
    v19 = [actionMenuHelper2 configurationActionProviderWithActionBlock:&__block_literal_global_56_66769];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CNContactListActionHelper)initWithContactStore:(id)store environment:(id)environment contactFormatter:(id)formatter undoManager:(id)manager
{
  storeCopy = store;
  environmentCopy = environment;
  formatterCopy = formatter;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = CNContactListActionHelper;
  v14 = [(CNContactListActionHelper *)&v22 init];
  if (v14)
  {
    v15 = [[CNContactListActionExecutor alloc] initWithUndoManager:managerCopy];
    actionExecutor = v14->_actionExecutor;
    v14->_actionExecutor = v15;

    v17 = objc_alloc_init(CNContactListActionConfiguration);
    actionConfiguration = v14->_actionConfiguration;
    v14->_actionConfiguration = v17;

    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactStore:storeCopy];
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setEnvironment:environmentCopy];
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactFormatter:formatterCopy];
    v19 = objc_alloc_init(CNContactViewCache);
    [(CNContactListActionConfiguration *)v14->_actionConfiguration setContactViewCache:v19];

    v20 = v14;
  }

  return v14;
}

+ (id)descriptorForRequiredKeysForMultiSelectAction:(BOOL)action
{
  actionCopy = action;
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

  if (actionCopy)
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