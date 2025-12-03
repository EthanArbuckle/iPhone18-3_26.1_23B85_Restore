@interface AVTAvatarInlineActionsController
+ (id)buttonForAction:(id)action;
- (AVTAvatarActionsControllerDelegate)delegate;
- (AVTAvatarInlineActionsController)initWithDataSource:(id)source avtViewProvider:(id)provider environment:(id)environment;
- (NSArray)inlineActionButtons;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)confirmShouldDeleteRecord:(id)record sender:(id)sender resultBlock:(id)block;
- (void)performCreateForActionsModel:(id)model;
- (void)performDeleteForActionsModel:(id)model;
- (void)performDuplicateForActionsModel:(id)model;
- (void)performEdit;
- (void)presentEditor:(id)editor forCreating:(BOOL)creating;
- (void)setButtonsDisabled:(BOOL)disabled;
- (void)updateWithActionsModel:(id)model;
@end

@implementation AVTAvatarInlineActionsController

+ (id)buttonForAction:(id)action
{
  actionCopy = action;
  if (([actionCopy attributes] & 2) != 0)
  {
    [AVTAvatarActionButton destructiveButtonWithAction:actionCopy];
  }

  else
  {
    [AVTAvatarActionButton defaultButtonWithAction:actionCopy];
  }
  v4 = ;

  return v4;
}

- (AVTAvatarInlineActionsController)initWithDataSource:(id)source avtViewProvider:(id)provider environment:(id)environment
{
  sourceCopy = source;
  providerCopy = provider;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTAvatarInlineActionsController;
  v12 = [(AVTAvatarInlineActionsController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v13->_avtViewSessionProvider, provider);
  }

  return v13;
}

- (void)updateWithActionsModel:(id)model
{
  [(AVTAvatarInlineActionsController *)self setActionsModel:model];
  actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
  [actionsModel setDelegate:self];

  inlineActionButtons = self->_inlineActionButtons;
  self->_inlineActionButtons = 0;
}

- (NSArray)inlineActionButtons
{
  inlineActionButtons = self->_inlineActionButtons;
  if (inlineActionButtons)
  {
    v3 = inlineActionButtons;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
    createAction = [actionsModel createAction];

    if (createAction)
    {
      v8 = objc_opt_class();
      actionsModel2 = [(AVTAvatarInlineActionsController *)self actionsModel];
      createAction2 = [actionsModel2 createAction];
      v11 = [v8 buttonForAction:createAction2];
      [(NSArray *)v5 addObject:v11];
    }

    actionsModel3 = [(AVTAvatarInlineActionsController *)self actionsModel];
    editAction = [actionsModel3 editAction];

    if (editAction)
    {
      v14 = objc_opt_class();
      actionsModel4 = [(AVTAvatarInlineActionsController *)self actionsModel];
      editAction2 = [actionsModel4 editAction];
      v17 = [v14 buttonForAction:editAction2];
      [(NSArray *)v5 addObject:v17];
    }

    actionsModel5 = [(AVTAvatarInlineActionsController *)self actionsModel];
    duplicateAction = [actionsModel5 duplicateAction];

    if (duplicateAction)
    {
      v20 = objc_opt_class();
      actionsModel6 = [(AVTAvatarInlineActionsController *)self actionsModel];
      duplicateAction2 = [actionsModel6 duplicateAction];
      v23 = [v20 buttonForAction:duplicateAction2];
      [(NSArray *)v5 addObject:v23];
    }

    actionsModel7 = [(AVTAvatarInlineActionsController *)self actionsModel];
    deleteAction = [actionsModel7 deleteAction];

    if (deleteAction)
    {
      v26 = objc_opt_class();
      actionsModel8 = [(AVTAvatarInlineActionsController *)self actionsModel];
      deleteAction2 = [actionsModel8 deleteAction];
      v29 = [v26 buttonForAction:deleteAction2];
      [(NSArray *)v5 addObject:v29];
    }

    v30 = self->_inlineActionButtons;
    self->_inlineActionButtons = v5;
    v31 = v5;

    v3 = self->_inlineActionButtons;
  }

  return v3;
}

- (void)setButtonsDisabled:(BOOL)disabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_buttonsDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_buttonsDisabled = disabled;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    inlineActionButtons = [(AVTAvatarInlineActionsController *)self inlineActionButtons];
    v5 = [inlineActionButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(inlineActionButtons);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:!disabledCopy];
        }

        while (v6 != v8);
        v6 = [inlineActionButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)performCreateForActionsModel:(id)model
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  dataSource = [(AVTAvatarInlineActionsController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];

  avtViewSessionProvider = [(AVTAvatarInlineActionsController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:internalRecordStore avtViewSessionProvider:avtViewSessionProvider];

  [v6 setShouldHideUserInfoView:{-[AVTAvatarInlineActionsController shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
  [(AVTAvatarInlineActionsController *)self presentEditor:v6 forCreating:1];
}

- (void)performEdit
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  dataSource = [(AVTAvatarInlineActionsController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];

  actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];
  avtViewSessionProvider = [(AVTAvatarInlineActionsController *)self avtViewSessionProvider];
  v7 = [AVTAvatarEditorViewController viewControllerForEditingAvatar:avatarRecord avtViewSessionProvider:avtViewSessionProvider store:internalRecordStore];

  [v7 setShouldHideUserInfoView:{-[AVTAvatarInlineActionsController shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
  [(AVTAvatarInlineActionsController *)self presentEditor:v7 forCreating:0];
}

- (void)performDuplicateForActionsModel:(id)model
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  environment = [(AVTAvatarInlineActionsController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];
  [usageTrackingSession didDuplicateAvatar:avatarRecord];

  dataSource = [(AVTAvatarInlineActionsController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];
  actionsModel2 = [(AVTAvatarInlineActionsController *)self actionsModel];
  avatarRecord2 = [actionsModel2 avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke;
  v12[3] = &unk_1E7F3AD88;
  v12[4] = self;
  [internalRecordStore duplicateAvatar:avatarRecord2 completionBlock:v12];
}

void __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke_2;
    v7[3] = &unk_1E7F3AD60;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke_3;
  v7[3] = &unk_1E7F3AD60;
  v5 = v3;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v2 actionsController:v4 didDuplicateToRecord:v5 completionBlock:v7];
}

void __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke_3(uint64_t a1)
{
  v2 = [AVTAvatarActionsProvider alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dataSource];
  v5 = [*(a1 + 40) actionsModel];
  v7 = -[AVTAvatarActionsProvider initWithAvatarRecord:dataSource:allowCreate:](v2, "initWithAvatarRecord:dataSource:allowCreate:", v3, v4, [v5 allowCreate]);

  [*(a1 + 40) updateWithActionsModel:v7];
  v6 = [*(a1 + 40) delegate];
  [v6 actionsControllerDidUpdateActions:*(a1 + 40)];

  [*(a1 + 40) setButtonsDisabled:0];
  if ((AVTUIDisableEditAfterDuplicate_once() & 1) == 0)
  {
    [*(a1 + 40) performEdit];
  }
}

- (void)performDeleteForActionsModel:(id)model
{
  actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];

  inlineActionButtons = [(AVTAvatarInlineActionsController *)self inlineActionButtons];
  lastObject = [inlineActionButtons lastObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke;
  v9[3] = &unk_1E7F3AA58;
  v9[4] = self;
  v10 = avatarRecord;
  v8 = avatarRecord;
  [(AVTAvatarInlineActionsController *)self confirmShouldDeleteRecord:v8 sender:lastObject resultBlock:v9];
}

void __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setButtonsDisabled:1];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) dataSource];
    v5 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:v3 withDataSource:v4];

    v6 = [*(a1 + 32) environment];
    v7 = [v6 usageTrackingSession];
    [v7 didDeleteAvatar:*(a1 + 40)];

    v8 = [*(a1 + 32) dataSource];
    v9 = [v8 internalRecordStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_2;
    v12[3] = &unk_1E7F3ADD8;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v10;
    v14 = v5;
    v11 = v5;
    [v9 deleteAvatar:v13 completionHandler:v12];
  }
}

void __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_3;
    block[3] = &unk_1E7F3ADB0;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_4;
  v8[3] = &unk_1E7F3AD60;
  v6 = v5;
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v2 actionsController:v3 didDeleteRecord:v4 withRecordUpdate:v6 completionBlock:v8];
}

void __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [AVTAvatarActionsProvider alloc];
    v3 = [*(a1 + 32) avatarRecord];
    v4 = [*(a1 + 40) dataSource];
    v5 = [*(a1 + 40) actionsModel];
    v7 = -[AVTAvatarActionsProvider initWithAvatarRecord:dataSource:allowCreate:](v2, "initWithAvatarRecord:dataSource:allowCreate:", v3, v4, [v5 allowCreate]);

    [*(a1 + 40) updateWithActionsModel:v7];
    v6 = [*(a1 + 40) delegate];
    [v6 actionsControllerDidUpdateActions:*(a1 + 40)];

    [*(a1 + 40) setButtonsDisabled:0];
  }

  else
  {
    v7 = [*(a1 + 40) delegate];
    [(AVTAvatarActionsProvider *)v7 actionsControllerDidFinish:*(a1 + 40)];
  }
}

- (void)confirmShouldDeleteRecord:(id)record sender:(id)sender resultBlock:(id)block
{
  senderCopy = sender;
  blockCopy = block;
  if (AVTUIDisableDeleteConfirmation_once())
  {
    blockCopy[2](blockCopy, 1);
  }

  else
  {
    v9 = AVTAvatarUIBundle();
    v10 = [v9 localizedStringForKey:@"DELETE_MEMOJI_ALERT_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
    v11 = [AVTAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = AVTAvatarUIBundle();
    v14 = [v13 localizedStringForKey:@"DELETE_MEMOJI_ALERT_CONFIRM" value:&stru_1F39618F0 table:@"Localized"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __81__AVTAvatarInlineActionsController_confirmShouldDeleteRecord_sender_resultBlock___block_invoke;
    v28[3] = &unk_1E7F3AE00;
    v15 = blockCopy;
    v29 = v15;
    v16 = [v12 actionWithTitle:v14 style:2 handler:v28];
    [v11 addAction:v16];

    v17 = MEMORY[0x1E69DC648];
    v18 = AVTAvatarUIBundle();
    v19 = [v18 localizedStringForKey:@"DELETE_MEMOJI_ALERT_CANCEL" value:&stru_1F39618F0 table:@"Localized"];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __81__AVTAvatarInlineActionsController_confirmShouldDeleteRecord_sender_resultBlock___block_invoke_2;
    v26 = &unk_1E7F3AE00;
    v27 = v15;
    v20 = [v17 actionWithTitle:v19 style:1 handler:&v23];
    [v11 addAction:{v20, v23, v24, v25, v26}];

    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceView:senderCopy];

    delegate = [(AVTAvatarInlineActionsController *)self delegate];
    [delegate actionsController:self presentAlertController:v11];
  }
}

- (void)presentEditor:(id)editor forCreating:(BOOL)creating
{
  creatingCopy = creating;
  editorCopy = editor;
  [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:creatingCopy];
  [editorCopy setDelegate:self];
  delegate = [(AVTAvatarInlineActionsController *)self delegate];
  [delegate presentEditorViewController:editorCopy forActionsController:self isCreate:creatingCopy];
}

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  recordCopy = record;
  if ([(AVTAvatarInlineActionsController *)self isCreatingAvatar])
  {
    [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:0];
    delegate = [(AVTAvatarInlineActionsController *)self delegate];
    [(AVTAvatarActionsProvider *)delegate actionsController:self didAddRecord:recordCopy];
  }

  else
  {
    v7 = [AVTAvatarActionsProvider alloc];
    dataSource = [(AVTAvatarInlineActionsController *)self dataSource];
    actionsModel = [(AVTAvatarInlineActionsController *)self actionsModel];
    delegate = -[AVTAvatarActionsProvider initWithAvatarRecord:dataSource:allowCreate:](v7, "initWithAvatarRecord:dataSource:allowCreate:", recordCopy, dataSource, [actionsModel allowCreate]);

    [(AVTAvatarInlineActionsController *)self updateWithActionsModel:delegate];
    recordCopy = [(AVTAvatarInlineActionsController *)self delegate];
    avatarRecord = [(AVTAvatarActionsProvider *)delegate avatarRecord];
    [recordCopy actionsController:self didEditRecord:avatarRecord];
  }

  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:0];
  delegate2 = [(AVTAvatarInlineActionsController *)self delegate];
  [delegate2 actionsControllerDidFinish:self];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  isCreatingAvatar = [(AVTAvatarInlineActionsController *)self isCreatingAvatar];
  [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:0];
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:0];
  [cancelCopy setDisableAvatarSnapshotting:1];
  delegate = [(AVTAvatarInlineActionsController *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AVTAvatarInlineActionsController_avatarEditorViewControllerDidCancel___block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  [delegate dismissEditorViewController:cancelCopy forActionsController:self wasCreate:isCreatingAvatar didEdit:0 animated:1 completion:v7];
}

uint64_t __72__AVTAvatarInlineActionsController_avatarEditorViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 actionsModel];
  v5 = [v4 avatarRecord];
  [v2 actionsController:v3 didCancelEditingRecord:v5];

  v6 = *(a1 + 32);

  return [v6 setEditorViewController:0];
}

- (AVTAvatarActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end