@interface CNPhotoPickerActionsModel
+ (id)buttonForActionType:(int64_t)type titleOverride:(id)override withActionBlock:(id)block;
+ (id)localizedTitleForActionType:(int64_t)type;
- (BOOL)canPerformActionType:(int64_t)type;
- (CNPhotoPickerActionsDelegate)delegate;
- (CNPhotoPickerActionsModel)initWithProviderItem:(id)item assignActionTitleOverride:(id)override canDelete:(BOOL)delete atIndexPath:(id)path;
- (id)generateInlineActionButtons;
- (void)didTapAssignToContact;
- (void)didTapDelete;
- (void)didTapDuplicate;
- (void)didTapEdit;
- (void)setButtonsDisabled:(BOOL)disabled;
- (void)updateProviderItem:(id)item;
@end

@implementation CNPhotoPickerActionsModel

- (CNPhotoPickerActionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDelete
{
  delegate = [(CNPhotoPickerActionsModel *)self delegate];
  providerItem = [(CNPhotoPickerActionsModel *)self providerItem];
  indexPath = [(CNPhotoPickerActionsModel *)self indexPath];
  deleteButton = [(CNPhotoPickerActionsModel *)self deleteButton];
  [delegate actionsModel:self didDelete:providerItem atIndexPath:indexPath withSourceView:deleteButton];
}

- (void)didTapDuplicate
{
  [(CNPhotoPickerActionsModel *)self setButtonsDisabled:1];
  delegate = [(CNPhotoPickerActionsModel *)self delegate];
  providerItem = [(CNPhotoPickerActionsModel *)self providerItem];
  indexPath = [(CNPhotoPickerActionsModel *)self indexPath];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNPhotoPickerActionsModel_didTapDuplicate__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [delegate actionsModel:self didDuplicate:providerItem atIndexPath:indexPath completionBlock:v6];
}

- (void)didTapEdit
{
  delegate = [(CNPhotoPickerActionsModel *)self delegate];
  providerItem = [(CNPhotoPickerActionsModel *)self providerItem];
  indexPath = [(CNPhotoPickerActionsModel *)self indexPath];
  [delegate actionsModel:self didEdit:providerItem atIndexPath:indexPath];
}

- (void)didTapAssignToContact
{
  delegate = [(CNPhotoPickerActionsModel *)self delegate];
  providerItem = [(CNPhotoPickerActionsModel *)self providerItem];
  indexPath = [(CNPhotoPickerActionsModel *)self indexPath];
  [delegate actionsModel:self didAssignToContact:providerItem atIndexPath:indexPath];
}

- (void)updateProviderItem:(id)item
{
  [(CNPhotoPickerActionsModel *)self setProviderItem:item];
  generateInlineActionButtons = [(CNPhotoPickerActionsModel *)self generateInlineActionButtons];
  [(CNPhotoPickerActionsModel *)self setCurrentInlineActionButtons:generateInlineActionButtons];
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
    inlineActionButtons = [(CNPhotoPickerActionsModel *)self inlineActionButtons];
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

- (id)generateInlineActionButtons
{
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  if ([(CNPhotoPickerActionsModel *)self canPerformActionType:0])
  {
    v4 = objc_opt_class();
    assignActionTitleOverride = [(CNPhotoPickerActionsModel *)self assignActionTitleOverride];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__CNPhotoPickerActionsModel_generateInlineActionButtons__block_invoke;
    v22[3] = &unk_1E74E6C98;
    objc_copyWeak(&v23, &location);
    v6 = [v4 buttonForActionType:0 titleOverride:assignActionTitleOverride withActionBlock:v22];

    [v6 setEnabled:{-[CNPhotoPickerActionsModel buttonsDisabled](self, "buttonsDisabled") ^ 1}];
    [array addObject:v6];

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
    [array addObject:v8];

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
    [array addObject:v10];

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
    deleteButton = [(CNPhotoPickerActionsModel *)self deleteButton];
    [deleteButton setEnabled:v12 ^ 1];

    deleteButton2 = [(CNPhotoPickerActionsModel *)self deleteButton];
    [array addObject:deleteButton2];

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);

  return array;
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

- (BOOL)canPerformActionType:(int64_t)type
{
  if (type == 3)
  {

    return [(CNPhotoPickerActionsModel *)self canDelete];
  }

  else
  {
    if (type != 2 && type != 1)
    {
      return 1;
    }

    providerItem = [(CNPhotoPickerActionsModel *)self providerItem];
    if ([providerItem allowsVariants])
    {
      providerItem2 = [(CNPhotoPickerActionsModel *)self providerItem];
      allowsEditing = [providerItem2 allowsEditing];
    }

    else
    {
      allowsEditing = 0;
    }

    return allowsEditing;
  }
}

- (CNPhotoPickerActionsModel)initWithProviderItem:(id)item assignActionTitleOverride:(id)override canDelete:(BOOL)delete atIndexPath:(id)path
{
  itemCopy = item;
  overrideCopy = override;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CNPhotoPickerActionsModel;
  v14 = [(CNPhotoPickerActionsModel *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerItem, item);
    objc_storeStrong(&v15->_indexPath, path);
    v15->_canDelete = delete;
    objc_storeStrong(&v15->_assignActionTitleOverride, override);
    generateInlineActionButtons = [(CNPhotoPickerActionsModel *)v15 generateInlineActionButtons];
    currentInlineActionButtons = v15->_currentInlineActionButtons;
    v15->_currentInlineActionButtons = generateInlineActionButtons;

    v18 = v15;
  }

  return v15;
}

+ (id)buttonForActionType:(int64_t)type titleOverride:(id)override withActionBlock:(id)block
{
  overrideCopy = override;
  blockCopy = block;
  if (overrideCopy)
  {
    v10 = overrideCopy;
  }

  else
  {
    v10 = [self localizedTitleForActionType:type];
  }

  v11 = v10;
  if ([self actionIsDestructive:type])
  {
    [CNPhotoPickerActionButton destructiveButtonWithTitle:v11 actionBlock:blockCopy];
  }

  else
  {
    [CNPhotoPickerActionButton defaultButtonWithTitle:v11 actionBlock:blockCopy];
  }
  v12 = ;

  return v12;
}

+ (id)localizedTitleForActionType:(int64_t)type
{
  if (type <= 3)
  {
    v4 = off_1E74E2048[type];
    v5 = CNContactsUIBundle();
    v3 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v3;
}

@end