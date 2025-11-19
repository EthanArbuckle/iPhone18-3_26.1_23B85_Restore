@interface AVTAvatarActionsMenuController
- (AVTAvatarActionsControllerDelegate)delegate;
- (AVTAvatarActionsMenuController)initWithDataSource:(id)a3 avtViewProvider:(id)a4 environment:(id)a5;
- (UIMenu)actionsMenu;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)confirmShouldDeleteRecord:(id)a3 resultBlock:(id)a4;
- (void)performCreateForActionsModel:(id)a3;
- (void)performDeleteForActionsModel:(id)a3;
- (void)performDuplicateForActionsModel:(id)a3;
- (void)performEditForActionsModel:(id)a3;
- (void)presentEditor:(id)a3 forCreating:(BOOL)a4;
- (void)updateWithActionsModel:(id)a3;
@end

@implementation AVTAvatarActionsMenuController

- (AVTAvatarActionsMenuController)initWithDataSource:(id)a3 avtViewProvider:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarActionsMenuController;
  v12 = [(AVTAvatarActionsMenuController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, a3);
    objc_storeStrong(&v13->_environment, a5);
    objc_storeStrong(&v13->_avtViewSessionProvider, a4);
  }

  return v13;
}

- (void)updateWithActionsModel:(id)a3
{
  [(AVTAvatarActionsMenuController *)self setActionsModel:a3];
  v4 = [(AVTAvatarActionsMenuController *)self actionsModel];
  [v4 setDelegate:self];

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
    v6 = [(AVTAvatarActionsMenuController *)self actionsModel];
    v7 = [v6 editAction];

    if (v7)
    {
      v8 = [(AVTAvatarActionsMenuController *)self actionsModel];
      v9 = [v8 editAction];
      [v5 addObject:v9];
    }

    v10 = [(AVTAvatarActionsMenuController *)self actionsModel];
    v11 = [v10 duplicateAction];

    if (v11)
    {
      v12 = [(AVTAvatarActionsMenuController *)self actionsModel];
      v13 = [v12 duplicateAction];
      [v5 addObject:v13];
    }

    v14 = [(AVTAvatarActionsMenuController *)self actionsModel];
    v15 = [v14 deleteAction];

    if (v15)
    {
      v16 = [(AVTAvatarActionsMenuController *)self actionsModel];
      v17 = [v16 deleteAction];
      [v5 addObject:v17];
    }

    v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F39618F0 image:0 identifier:0 options:1 children:v5];
    v19 = [MEMORY[0x1E695DF70] arrayWithObject:v18];
    v20 = [(AVTAvatarActionsMenuController *)self actionsModel];
    v21 = [v20 createAction];

    if (v21)
    {
      v22 = MEMORY[0x1E69DCC60];
      v23 = [(AVTAvatarActionsMenuController *)self actionsModel];
      v24 = [v23 createAction];
      v30[0] = v24;
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

- (void)performCreateForActionsModel:(id)a3
{
  v4 = [(AVTAvatarActionsMenuController *)self dataSource];
  v7 = [v4 internalRecordStore];

  v5 = [(AVTAvatarActionsMenuController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v7 avtViewSessionProvider:v5];

  [(AVTAvatarActionsMenuController *)self presentEditor:v6 forCreating:1];
}

- (void)performEditForActionsModel:(id)a3
{
  v4 = [(AVTAvatarActionsMenuController *)self dataSource];
  v9 = [v4 internalRecordStore];

  v5 = [(AVTAvatarActionsMenuController *)self actionsModel];
  v6 = [v5 avatarRecord];
  v7 = [(AVTAvatarActionsMenuController *)self avtViewSessionProvider];
  v8 = [AVTAvatarEditorViewController viewControllerForEditingAvatar:v6 avtViewSessionProvider:v7 store:v9];

  [(AVTAvatarActionsMenuController *)self presentEditor:v8 forCreating:0];
}

- (void)presentEditor:(id)a3 forCreating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:v4];
  [(AVTAvatarActionsMenuController *)self setEditorViewController:v6];
  [v6 setDelegate:self];
  v7 = [(AVTAvatarActionsMenuController *)self delegate];
  [v7 presentEditorViewController:v6 forActionsController:self isCreate:v4];
}

- (void)performDuplicateForActionsModel:(id)a3
{
  v4 = [(AVTAvatarActionsMenuController *)self environment];
  v5 = [v4 usageTrackingSession];
  v6 = [(AVTAvatarActionsMenuController *)self actionsModel];
  v7 = [v6 avatarRecord];
  [v5 didDuplicateAvatar:v7];

  v8 = [(AVTAvatarActionsMenuController *)self dataSource];
  v9 = [v8 internalRecordStore];
  v10 = [(AVTAvatarActionsMenuController *)self actionsModel];
  v11 = [v10 avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AVTAvatarActionsMenuController_performDuplicateForActionsModel___block_invoke;
  v12[3] = &unk_1E7F3AD88;
  v12[4] = self;
  [v9 duplicateAvatar:v11 completionBlock:v12];
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

- (void)performDeleteForActionsModel:(id)a3
{
  v4 = [(AVTAvatarActionsMenuController *)self actionsModel];
  v5 = [v4 avatarRecord];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AVTAvatarActionsMenuController_performDeleteForActionsModel___block_invoke;
  v7[3] = &unk_1E7F3AA58;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarActionsMenuController *)self isCreatingAvatar];
  if ([(AVTAvatarActionsMenuController *)self isCreatingAvatar])
  {
    [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:0];
    v9 = [(AVTAvatarActionsMenuController *)self delegate];
    [v9 actionsController:self didAddRecord:v6];
  }

  else
  {
    v9 = [(AVTAvatarActionsMenuController *)self delegate];
    [v9 actionsController:self didEditRecord:v6];
  }

  v10 = [(AVTAvatarActionsMenuController *)self delegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AVTAvatarActionsMenuController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke;
  v11[3] = &unk_1E7F3A9B8;
  v11[4] = self;
  [v10 dismissEditorViewController:v7 forActionsController:self wasCreate:v8 didEdit:1 animated:1 completion:v11];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarActionsMenuController *)self isCreatingAvatar];
  [(AVTAvatarActionsMenuController *)self setIsCreatingAvatar:0];
  [v4 setDisableAvatarSnapshotting:1];
  v6 = [(AVTAvatarActionsMenuController *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVTAvatarActionsMenuController_avatarEditorViewControllerDidCancel___block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  [v6 dismissEditorViewController:v4 forActionsController:self wasCreate:v5 didEdit:0 animated:1 completion:v7];
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

- (void)confirmShouldDeleteRecord:(id)a3 resultBlock:(id)a4
{
  v5 = a4;
  if (AVTUIDisableDeleteConfirmation_once())
  {
    v5[2](v5, 1);
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
    v12 = v5;
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

    v18 = [(AVTAvatarActionsMenuController *)self delegate];
    [v18 actionsController:self presentAlertController:v8];
  }
}

- (AVTAvatarActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end