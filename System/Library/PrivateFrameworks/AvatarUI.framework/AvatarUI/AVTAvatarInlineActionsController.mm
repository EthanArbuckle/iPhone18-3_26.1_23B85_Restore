@interface AVTAvatarInlineActionsController
+ (id)buttonForAction:(id)a3;
- (AVTAvatarActionsControllerDelegate)delegate;
- (AVTAvatarInlineActionsController)initWithDataSource:(id)a3 avtViewProvider:(id)a4 environment:(id)a5;
- (NSArray)inlineActionButtons;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)confirmShouldDeleteRecord:(id)a3 sender:(id)a4 resultBlock:(id)a5;
- (void)performCreateForActionsModel:(id)a3;
- (void)performDeleteForActionsModel:(id)a3;
- (void)performDuplicateForActionsModel:(id)a3;
- (void)performEdit;
- (void)presentEditor:(id)a3 forCreating:(BOOL)a4;
- (void)setButtonsDisabled:(BOOL)a3;
- (void)updateWithActionsModel:(id)a3;
@end

@implementation AVTAvatarInlineActionsController

+ (id)buttonForAction:(id)a3
{
  v3 = a3;
  if (([v3 attributes] & 2) != 0)
  {
    [AVTAvatarActionButton destructiveButtonWithAction:v3];
  }

  else
  {
    [AVTAvatarActionButton defaultButtonWithAction:v3];
  }
  v4 = ;

  return v4;
}

- (AVTAvatarInlineActionsController)initWithDataSource:(id)a3 avtViewProvider:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarInlineActionsController;
  v12 = [(AVTAvatarInlineActionsController *)&v15 init];
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
  [(AVTAvatarInlineActionsController *)self setActionsModel:a3];
  v4 = [(AVTAvatarInlineActionsController *)self actionsModel];
  [v4 setDelegate:self];

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
    v6 = [(AVTAvatarInlineActionsController *)self actionsModel];
    v7 = [v6 createAction];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [(AVTAvatarInlineActionsController *)self actionsModel];
      v10 = [v9 createAction];
      v11 = [v8 buttonForAction:v10];
      [(NSArray *)v5 addObject:v11];
    }

    v12 = [(AVTAvatarInlineActionsController *)self actionsModel];
    v13 = [v12 editAction];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [(AVTAvatarInlineActionsController *)self actionsModel];
      v16 = [v15 editAction];
      v17 = [v14 buttonForAction:v16];
      [(NSArray *)v5 addObject:v17];
    }

    v18 = [(AVTAvatarInlineActionsController *)self actionsModel];
    v19 = [v18 duplicateAction];

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = [(AVTAvatarInlineActionsController *)self actionsModel];
      v22 = [v21 duplicateAction];
      v23 = [v20 buttonForAction:v22];
      [(NSArray *)v5 addObject:v23];
    }

    v24 = [(AVTAvatarInlineActionsController *)self actionsModel];
    v25 = [v24 deleteAction];

    if (v25)
    {
      v26 = objc_opt_class();
      v27 = [(AVTAvatarInlineActionsController *)self actionsModel];
      v28 = [v27 deleteAction];
      v29 = [v26 buttonForAction:v28];
      [(NSArray *)v5 addObject:v29];
    }

    v30 = self->_inlineActionButtons;
    self->_inlineActionButtons = v5;
    v31 = v5;

    v3 = self->_inlineActionButtons;
  }

  return v3;
}

- (void)setButtonsDisabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_buttonsDisabled != a3)
  {
    v3 = a3;
    self->_buttonsDisabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(AVTAvatarInlineActionsController *)self inlineActionButtons];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:!v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)performCreateForActionsModel:(id)a3
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  v4 = [(AVTAvatarInlineActionsController *)self dataSource];
  v7 = [v4 internalRecordStore];

  v5 = [(AVTAvatarInlineActionsController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v7 avtViewSessionProvider:v5];

  [v6 setShouldHideUserInfoView:{-[AVTAvatarInlineActionsController shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
  [(AVTAvatarInlineActionsController *)self presentEditor:v6 forCreating:1];
}

- (void)performEdit
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  v3 = [(AVTAvatarInlineActionsController *)self dataSource];
  v8 = [v3 internalRecordStore];

  v4 = [(AVTAvatarInlineActionsController *)self actionsModel];
  v5 = [v4 avatarRecord];
  v6 = [(AVTAvatarInlineActionsController *)self avtViewSessionProvider];
  v7 = [AVTAvatarEditorViewController viewControllerForEditingAvatar:v5 avtViewSessionProvider:v6 store:v8];

  [v7 setShouldHideUserInfoView:{-[AVTAvatarInlineActionsController shouldHideUserInfoView](self, "shouldHideUserInfoView")}];
  [(AVTAvatarInlineActionsController *)self presentEditor:v7 forCreating:0];
}

- (void)performDuplicateForActionsModel:(id)a3
{
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:1];
  v4 = [(AVTAvatarInlineActionsController *)self environment];
  v5 = [v4 usageTrackingSession];
  v6 = [(AVTAvatarInlineActionsController *)self actionsModel];
  v7 = [v6 avatarRecord];
  [v5 didDuplicateAvatar:v7];

  v8 = [(AVTAvatarInlineActionsController *)self dataSource];
  v9 = [v8 internalRecordStore];
  v10 = [(AVTAvatarInlineActionsController *)self actionsModel];
  v11 = [v10 avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AVTAvatarInlineActionsController_performDuplicateForActionsModel___block_invoke;
  v12[3] = &unk_1E7F3AD88;
  v12[4] = self;
  [v9 duplicateAvatar:v11 completionBlock:v12];
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

- (void)performDeleteForActionsModel:(id)a3
{
  v4 = [(AVTAvatarInlineActionsController *)self actionsModel];
  v5 = [v4 avatarRecord];

  v6 = [(AVTAvatarInlineActionsController *)self inlineActionButtons];
  v7 = [v6 lastObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AVTAvatarInlineActionsController_performDeleteForActionsModel___block_invoke;
  v9[3] = &unk_1E7F3AA58;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [(AVTAvatarInlineActionsController *)self confirmShouldDeleteRecord:v8 sender:v7 resultBlock:v9];
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

- (void)confirmShouldDeleteRecord:(id)a3 sender:(id)a4 resultBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (AVTUIDisableDeleteConfirmation_once())
  {
    v8[2](v8, 1);
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
    v15 = v8;
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

    v21 = [v11 popoverPresentationController];
    [v21 setSourceView:v7];

    v22 = [(AVTAvatarInlineActionsController *)self delegate];
    [v22 actionsController:self presentAlertController:v11];
  }
}

- (void)presentEditor:(id)a3 forCreating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:v4];
  [v6 setDelegate:self];
  v7 = [(AVTAvatarInlineActionsController *)self delegate];
  [v7 presentEditorViewController:v6 forActionsController:self isCreate:v4];
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  v5 = a4;
  if ([(AVTAvatarInlineActionsController *)self isCreatingAvatar])
  {
    [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:0];
    v6 = [(AVTAvatarInlineActionsController *)self delegate];
    [(AVTAvatarActionsProvider *)v6 actionsController:self didAddRecord:v5];
  }

  else
  {
    v7 = [AVTAvatarActionsProvider alloc];
    v8 = [(AVTAvatarInlineActionsController *)self dataSource];
    v9 = [(AVTAvatarInlineActionsController *)self actionsModel];
    v6 = -[AVTAvatarActionsProvider initWithAvatarRecord:dataSource:allowCreate:](v7, "initWithAvatarRecord:dataSource:allowCreate:", v5, v8, [v9 allowCreate]);

    [(AVTAvatarInlineActionsController *)self updateWithActionsModel:v6];
    v5 = [(AVTAvatarInlineActionsController *)self delegate];
    v10 = [(AVTAvatarActionsProvider *)v6 avatarRecord];
    [v5 actionsController:self didEditRecord:v10];
  }

  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:0];
  v11 = [(AVTAvatarInlineActionsController *)self delegate];
  [v11 actionsControllerDidFinish:self];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarInlineActionsController *)self isCreatingAvatar];
  [(AVTAvatarInlineActionsController *)self setIsCreatingAvatar:0];
  [(AVTAvatarInlineActionsController *)self setButtonsDisabled:0];
  [v4 setDisableAvatarSnapshotting:1];
  v6 = [(AVTAvatarInlineActionsController *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AVTAvatarInlineActionsController_avatarEditorViewControllerDidCancel___block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  [v6 dismissEditorViewController:v4 forActionsController:self wasCreate:v5 didEdit:0 animated:1 completion:v7];
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