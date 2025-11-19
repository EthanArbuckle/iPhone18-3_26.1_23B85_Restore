@interface CNPhotoPickerActionsModel
+ (id)buttonForActionType:(int64_t)a3 titleOverride:(id)a4 withActionBlock:(id)a5;
+ (id)localizedTitleForActionType:(int64_t)a3;
- (BOOL)canPerformActionType:(int64_t)a3;
- (CNPhotoPickerActionsDelegate)delegate;
- (CNPhotoPickerActionsModel)initWithProviderItem:(id)a3 assignActionTitleOverride:(id)a4 canDelete:(BOOL)a5 atIndexPath:(id)a6;
- (id)generateInlineActionButtons;
- (void)didTapAssignToContact;
- (void)didTapDelete;
- (void)didTapDuplicate;
- (void)didTapEdit;
- (void)setButtonsDisabled:(BOOL)a3;
- (void)updateProviderItem:(id)a3;
@end

@implementation CNPhotoPickerActionsModel

- (CNPhotoPickerActionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDelete
{
  v6 = [(CNPhotoPickerActionsModel *)self delegate];
  v3 = [(CNPhotoPickerActionsModel *)self providerItem];
  v4 = [(CNPhotoPickerActionsModel *)self indexPath];
  v5 = [(CNPhotoPickerActionsModel *)self deleteButton];
  [v6 actionsModel:self didDelete:v3 atIndexPath:v4 withSourceView:v5];
}

- (void)didTapDuplicate
{
  [(CNPhotoPickerActionsModel *)self setButtonsDisabled:1];
  v3 = [(CNPhotoPickerActionsModel *)self delegate];
  v4 = [(CNPhotoPickerActionsModel *)self providerItem];
  v5 = [(CNPhotoPickerActionsModel *)self indexPath];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNPhotoPickerActionsModel_didTapDuplicate__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v3 actionsModel:self didDuplicate:v4 atIndexPath:v5 completionBlock:v6];
}

- (void)didTapEdit
{
  v5 = [(CNPhotoPickerActionsModel *)self delegate];
  v3 = [(CNPhotoPickerActionsModel *)self providerItem];
  v4 = [(CNPhotoPickerActionsModel *)self indexPath];
  [v5 actionsModel:self didEdit:v3 atIndexPath:v4];
}

- (void)didTapAssignToContact
{
  v5 = [(CNPhotoPickerActionsModel *)self delegate];
  v3 = [(CNPhotoPickerActionsModel *)self providerItem];
  v4 = [(CNPhotoPickerActionsModel *)self indexPath];
  [v5 actionsModel:self didAssignToContact:v3 atIndexPath:v4];
}

- (void)updateProviderItem:(id)a3
{
  [(CNPhotoPickerActionsModel *)self setProviderItem:a3];
  v4 = [(CNPhotoPickerActionsModel *)self generateInlineActionButtons];
  [(CNPhotoPickerActionsModel *)self setCurrentInlineActionButtons:v4];
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
    v4 = [(CNPhotoPickerActionsModel *)self inlineActionButtons];
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

- (id)generateInlineActionButtons
{
  v3 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  if ([(CNPhotoPickerActionsModel *)self canPerformActionType:0])
  {
    v4 = objc_opt_class();
    v5 = [(CNPhotoPickerActionsModel *)self assignActionTitleOverride];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke;
    v22[3] = &unk_1E74E6C98;
    objc_copyWeak(&v23, &location);
    v6 = [v4 buttonForActionType:0 titleOverride:v5 withActionBlock:v22];

    [v6 setEnabled:{-[CNPhotoPickerActionsModel buttonsDisabled](self, "buttonsDisabled") ^ 1}];
    [v3 addObject:v6];

    objc_destroyWeak(&v23);
  }

  if ([(CNPhotoPickerActionsModel *)self canPerformActionType:1])
  {
    v7 = objc_opt_class();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_2;
    v20[3] = &unk_1E74E6C98;
    objc_copyWeak(&v21, &location);
    v8 = [v7 buttonForActionType:1 withActionBlock:v20];
    [v8 setEnabled:{-[CNPhotoPickerActionsModel buttonsDisabled](self, "buttonsDisabled") ^ 1}];
    [v3 addObject:v8];

    objc_destroyWeak(&v21);
  }

  if ([(CNPhotoPickerActionsModel *)self canPerformActionType:2])
  {
    v9 = objc_opt_class();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_3;
    v18[3] = &unk_1E74E6C98;
    objc_copyWeak(&v19, &location);
    v10 = [v9 buttonForActionType:2 withActionBlock:v18];
    [v10 setEnabled:{-[CNPhotoPickerActionsModel buttonsDisabled](self, "buttonsDisabled") ^ 1}];
    [v3 addObject:v10];

    objc_destroyWeak(&v19);
  }

  if ([(CNPhotoPickerActionsModel *)self canPerformActionType:3])
  {
    v11 = objc_opt_class();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_4;
    v16[3] = &unk_1E74E6C98;
    objc_copyWeak(&v17, &location);
    v12 = [v11 buttonForActionType:3 withActionBlock:v16];
    [(CNPhotoPickerActionsModel *)self setDeleteButton:v12];

    LODWORD(v12) = [(CNPhotoPickerActionsModel *)self buttonsDisabled];
    v13 = [(CNPhotoPickerActionsModel *)self deleteButton];
    [v13 setEnabled:v12 ^ 1];

    v14 = [(CNPhotoPickerActionsModel *)self deleteButton];
    [v3 addObject:v14];

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);

  return v3;
}

void __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapAssignToContact];
}

void __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapEdit];
}

void __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapDuplicate];
}

void __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapDelete];
}

- (BOOL)canPerformActionType:(int64_t)a3
{
  if (a3 == 3)
  {

    return [(CNPhotoPickerActionsModel *)self canDelete];
  }

  else
  {
    if (a3 != 2 && a3 != 1)
    {
      return 1;
    }

    v4 = [(CNPhotoPickerActionsModel *)self providerItem];
    if ([v4 allowsVariants])
    {
      v5 = [(CNPhotoPickerActionsModel *)self providerItem];
      v6 = [v5 allowsEditing];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }
}

- (CNPhotoPickerActionsModel)initWithProviderItem:(id)a3 assignActionTitleOverride:(id)a4 canDelete:(BOOL)a5 atIndexPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = CNPhotoPickerActionsModel;
  v14 = [(CNPhotoPickerActionsModel *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerItem, a3);
    objc_storeStrong(&v15->_indexPath, a6);
    v15->_canDelete = a5;
    objc_storeStrong(&v15->_assignActionTitleOverride, a4);
    v16 = [(CNPhotoPickerActionsModel *)v15 generateInlineActionButtons];
    currentInlineActionButtons = v15->_currentInlineActionButtons;
    v15->_currentInlineActionButtons = v16;

    v18 = v15;
  }

  return v15;
}

+ (id)buttonForActionType:(int64_t)a3 titleOverride:(id)a4 withActionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [a1 localizedTitleForActionType:a3];
  }

  v11 = v10;
  if ([a1 actionIsDestructive:a3])
  {
    [CNPhotoPickerActionButton destructiveButtonWithTitle:v11 actionBlock:v9];
  }

  else
  {
    [CNPhotoPickerActionButton defaultButtonWithTitle:v11 actionBlock:v9];
  }
  v12 = ;

  return v12;
}

+ (id)localizedTitleForActionType:(int64_t)a3
{
  if (a3 <= 3)
  {
    v4 = off_1E74E2048[a3];
    v5 = CNContactsUIBundle();
    v3 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v3;
}

@end