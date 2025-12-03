@interface AVTAvatarActionsMenuController
- (AVTAvatarActionsControllerDelegate)delegate;
- (AVTAvatarActionsMenuController)initWithDataSource:(id)source avtViewProvider:(id)provider environment:(id)environment;
- (UIMenu)actionsMenu;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)confirmShouldDeleteRecord:(id)record resultBlock:(id)block;
- (void)performCreateForActionsModel:(id)model;
- (void)performDeleteForActionsModel:(id)model;
- (void)performDuplicateForActionsModel:(id)model;
- (void)performEditForActionsModel:(id)model;
- (void)presentEditor:(id)editor forCreating:(BOOL)creating;
- (void)updateWithActionsModel:(id)model;
@end

@implementation AVTAvatarActionsMenuController

- (AVTAvatarActionsMenuController)initWithDataSource:(id)source avtViewProvider:(id)provider environment:(id)environment
{
  sourceCopy = source;
  providerCopy = provider;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTAvatarActionsMenuController;
  v12 = [(AVTAvatarActionsMenuController *)&v15 init];
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
  [(AVTAvatarActionsMenuController *)self setActionsModel:model];
  actionsModel = [(AVTAvatarActionsMenuController *)self actionsModel];
  [actionsModel setDelegate:self];

  actionsMenu = self->_actionsMenu;
  self->_actionsMenu = 0;
}

- (UIMenu)actionsMenu
{
  v30[1] = *MEMORY[0x1E69E9840];
  actionsMenu = self->_actionsMenu;
  if (actionsMenu)
  {
    v3 = actionsMenu;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    actionsModel = [(AVTAvatarActionsMenuController *)self actionsModel];
    editAction = [actionsModel editAction];

    if (editAction)
    {
      actionsModel2 = [(AVTAvatarActionsMenuController *)self actionsModel];
      editAction2 = [actionsModel2 editAction];
      [v5 addObject:editAction2];
    }

    actionsModel3 = [(AVTAvatarActionsMenuController *)self actionsModel];
    duplicateAction = [actionsModel3 duplicateAction];

    if (duplicateAction)
    {
      actionsModel4 = [(AVTAvatarActionsMenuController *)self actionsModel];
      duplicateAction2 = [actionsModel4 duplicateAction];
      [v5 addObject:duplicateAction2];
    }

    actionsModel5 = [(AVTAvatarActionsMenuController *)self actionsModel];
    deleteAction = [actionsModel5 deleteAction];

    if (deleteAction)
    {
      actionsModel6 = [(AVTAvatarActionsMenuController *)self actionsModel];
      deleteAction2 = [actionsModel6 deleteAction];
      [v5 addObject:deleteAction2];
    }

    v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F39618F0 image:0 identifier:0 options:1 children:v5];
    v19 = [MEMORY[0x1E695DF70] arrayWithObject:v18];
    actionsModel7 = [(AVTAvatarActionsMenuController *)self actionsModel];
    createAction = [actionsModel7 createAction];

    if (createAction)
    {
      v22 = MEMORY[0x1E69DCC60];
      actionsModel8 = [(AVTAvatarActionsMenuController *)self actionsModel];
      createAction2 = [actionsModel8 createAction];
      v30[0] = createAction2;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v26 = [v22 menuWithTitle:&stru_1F39618F0 image:0 identifier:0 options:1 children:v25];

      [v19 addObject:v26];
    }

    v27 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F39618F0 children:v19];
    v28 = self->_actionsMenu;
    self->_actionsMenu = v27;

    v3 = self->_actionsMenu;
  }

  return v3;
}

- (void)performCreateForActionsModel:(id)model
{
  dataSource = [(AVTAvatarActionsMenuController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];

  avtViewSessionProvider = [(AVTAvatarActionsMenuController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:internalRecordStore avtViewSessionProvider:avtViewSessionProvider];

  [(AVTAvatarActionsMenuController *)self presentEditor:v6 forCreating:1];
}

- (void)performEditForActionsModel:(id)model
{
  dataSource = [(AVTAvatarActionsMenuController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];

  actionsModel = [(AVTAvatarActionsMenuController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];
  avtViewSessionProvider = [(AVTAvatarActionsMenuController *)self avtViewSessionProvider];
  v8 = [AVTAvatarEditorViewController viewControllerForEditingAvatar:avatarRecord avtViewSessionProvider:avtViewSessionProvider store:internalRecordStore];

  [(AVTAvatarActionsMenuController *)self presentEditor:v8 forCreating:0];
}

- (void)presentEditor:(id)editor forCreating:(BOOL)creating
{
  creatingCopy = creating;
  editorCopy = editor;
  [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:creatingCopy];
  [(AVTAvatarActionsMenuController *)self setEditorViewController:editorCopy];
  [editorCopy setDelegate:self];
  delegate = [(AVTAvatarActionsMenuController *)self delegate];
  [delegate presentEditorViewController:editorCopy forActionsController:self isCreate:creatingCopy];
}

- (void)performDuplicateForActionsModel:(id)model
{
  environment = [(AVTAvatarActionsMenuController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  actionsModel = [(AVTAvatarActionsMenuController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];
  [usageTrackingSession didDuplicateAvatar:avatarRecord];

  dataSource = [(AVTAvatarActionsMenuController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];
  actionsModel2 = [(AVTAvatarActionsMenuController *)self actionsModel];
  avatarRecord2 = [actionsModel2 avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AVTAvatarActionsMenuController_performDuplicateForActionsModel___block_invoke;
  v12[3] = &unk_1E7F3AD88;
  v12[4] = self;
  [internalRecordStore duplicateAvatar:avatarRecord2 completionBlock:v12];
}

void __66__AVTAvatarActionsMenuController_performDuplicateForActionsModel___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__AVTAvatarActionsMenuController_performDuplicateForActionsModel___block_invoke_2;
    v7[3] = &unk_1E7F3AD60;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __66__AVTAvatarActionsMenuController_performDuplicateForActionsModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionsController:*(a1 + 32) didDuplicateToRecord:*(a1 + 40) completionBlock:0];
}

- (void)performDeleteForActionsModel:(id)model
{
  actionsModel = [(AVTAvatarActionsMenuController *)self actionsModel];
  avatarRecord = [actionsModel avatarRecord];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke;
  v7[3] = &unk_1E7F3AA58;
  v7[4] = self;
  v8 = avatarRecord;
  v6 = avatarRecord;
  [(AVTAvatarActionsMenuController *)self confirmShouldDeleteRecord:v6 resultBlock:v7];
}

void __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) environment];
    v4 = [v3 usageTrackingSession];
    [v4 didDeleteAvatar:*(a1 + 40)];

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) dataSource];
    v7 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:v5 withDataSource:v6];

    v8 = [*(a1 + 32) dataSource];
    v9 = [v8 internalRecordStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke_2;
    v12[3] = &unk_1E7F3ADD8;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v10;
    v14 = v7;
    v11 = v7;
    [v9 deleteAvatar:v13 completionHandler:v12];
  }
}

void __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke_3;
    block[3] = &unk_1E7F3ADB0;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionsController:*(a1 + 32) didDeleteRecord:*(a1 + 40) withRecordUpdate:*(a1 + 48) completionBlock:0];
}

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  recordCopy = record;
  controllerCopy = controller;
  isCreatingAvatar = [(AVTAvatarActionsMenuController *)self isCreatingAvatar];
  if ([(AVTAvatarActionsMenuController *)self isCreatingAvatar])
  {
    [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:0];
    delegate = [(AVTAvatarActionsMenuController *)self delegate];
    [delegate actionsController:self didAddRecord:recordCopy];
  }

  else
  {
    delegate = [(AVTAvatarActionsMenuController *)self delegate];
    [delegate actionsController:self didEditRecord:recordCopy];
  }

  delegate2 = [(AVTAvatarActionsMenuController *)self delegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AVTAvatarActionsMenuController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke;
  v11[3] = &unk_1E7F3A9B8;
  v11[4] = self;
  [delegate2 dismissEditorViewController:controllerCopy forActionsController:self wasCreate:isCreatingAvatar didEdit:1 animated:1 completion:v11];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  isCreatingAvatar = [(AVTAvatarActionsMenuController *)self isCreatingAvatar];
  [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:0];
  [cancelCopy setDisableAvatarSnapshotting:1];
  delegate = [(AVTAvatarActionsMenuController *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVTAvatarActionsMenuController_avatarEditorViewControllerDidCancel___block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  [delegate dismissEditorViewController:cancelCopy forActionsController:self wasCreate:isCreatingAvatar didEdit:0 animated:1 completion:v7];
}

uint64_t __70__AVTAvatarActionsMenuController_avatarEditorViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 actionsModel];
  v5 = [v4 avatarRecord];
  [v2 actionsController:v3 didCancelEditingRecord:v5];

  v6 = *(a1 + 32);

  return [v6 setEditorViewController:0];
}

- (void)confirmShouldDeleteRecord:(id)record resultBlock:(id)block
{
  blockCopy = block;
  if (AVTUIDisableDeleteConfirmation_once())
  {
    blockCopy[2](blockCopy, 1);
  }

  else
  {
    v6 = AVTAvatarUIBundle();
    v7 = [v6 localizedStringForKey:@"DELETE_MEMOJI_ALERT_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
    v8 = [AVTAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = AVTAvatarUIBundle();
    v11 = [v10 localizedStringForKey:@"DELETE_MEMOJI_ALERT_CANCEL" value:&stru_1F39618F0 table:@"Localized"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__AVTAvatarActionsMenuController_confirmShouldDeleteRecord_resultBlock___block_invoke;
    v24[3] = &unk_1E7F3AE00;
    v12 = blockCopy;
    v25 = v12;
    v13 = [v9 actionWithTitle:v11 style:1 handler:v24];
    [v8 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = AVTAvatarUIBundle();
    v16 = [v15 localizedStringForKey:@"DELETE_MEMOJI_ALERT_CONFIRM" value:&stru_1F39618F0 table:@"Localized"];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __72__AVTAvatarActionsMenuController_confirmShouldDeleteRecord_resultBlock___block_invoke_2;
    v22 = &unk_1E7F3AE00;
    v23 = v12;
    v17 = [v14 actionWithTitle:v16 style:2 handler:&v19];
    [v8 addAction:{v17, v19, v20, v21, v22}];

    delegate = [(AVTAvatarActionsMenuController *)self delegate];
    [delegate actionsController:self presentAlertController:v8];
  }
}

- (AVTAvatarActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end