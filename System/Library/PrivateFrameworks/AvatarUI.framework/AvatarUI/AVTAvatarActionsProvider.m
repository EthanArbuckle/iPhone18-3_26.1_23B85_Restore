@interface AVTAvatarActionsProvider
+ (id)localizedTitleForActionType:(int64_t)a3;
- (AVTAvatarActionsModelDelegate)delegate;
- (AVTAvatarActionsProvider)initWithAvatarRecord:(id)a3 dataSource:(id)a4 allowCreate:(BOOL)a5;
- (BOOL)canPerformActionType:(int64_t)a3;
- (void)didTapCreateNew;
- (void)didTapDelete:(id)a3;
- (void)didTapDuplicate;
- (void)didTapEdit;
- (void)generateActions;
@end

@implementation AVTAvatarActionsProvider

+ (id)localizedTitleForActionType:(int64_t)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7F3C0E8[a3];
    v4 = AVTAvatarUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F39618F0 table:@"Localized"];
  }

  return v5;
}

- (AVTAvatarActionsProvider)initWithAvatarRecord:(id)a3 dataSource:(id)a4 allowCreate:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AVTAvatarActionsProvider;
  v11 = [(AVTAvatarActionsProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_avatarRecord, a3);
    objc_storeStrong(&v12->_dataSource, a4);
    v12->_allowCreate = a5;
    [(AVTAvatarActionsProvider *)v12 generateActions];
  }

  return v12;
}

- (BOOL)canPerformActionType:(int64_t)a3
{
  v5 = [(AVTAvatarActionsProvider *)self avatarRecord];
  v6 = [v5 isEditable];

  if (v6)
  {
    v7 = [(AVTAvatarActionsProvider *)self dataSource];
    v8 = [v7 internalRecordStore];
    v9 = [v8 canCreateAvatarWithError:0];

    if (a3 != 1)
    {
      if (a3 == 3)
      {
        return [(AVTAvatarActionsProvider *)self allowCreate]& v9;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)generateActions
{
  objc_initWeak(&location, self);
  if ([(AVTAvatarActionsProvider *)self canPerformActionType:3])
  {
    v3 = MEMORY[0x1E69DC628];
    v4 = [objc_opt_class() localizedTitleForActionType:3];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__AVTAvatarActionsProvider_generateActions__block_invoke;
    v22[3] = &unk_1E7F3C0C8;
    objc_copyWeak(&v23, &location);
    v5 = [v3 actionWithTitle:v4 image:0 identifier:@"create" handler:v22];
    [(AVTAvatarActionsProvider *)self setCreateAction:v5];

    objc_destroyWeak(&v23);
  }

  if ([(AVTAvatarActionsProvider *)self canPerformActionType:0])
  {
    v6 = MEMORY[0x1E69DC628];
    v7 = [objc_opt_class() localizedTitleForActionType:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__AVTAvatarActionsProvider_generateActions__block_invoke_2;
    v20[3] = &unk_1E7F3C0C8;
    objc_copyWeak(&v21, &location);
    v8 = [v6 actionWithTitle:v7 image:0 identifier:@"edit" handler:v20];
    [(AVTAvatarActionsProvider *)self setEditAction:v8];

    objc_destroyWeak(&v21);
  }

  if ([(AVTAvatarActionsProvider *)self canPerformActionType:1])
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = [objc_opt_class() localizedTitleForActionType:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__AVTAvatarActionsProvider_generateActions__block_invoke_3;
    v18[3] = &unk_1E7F3C0C8;
    objc_copyWeak(&v19, &location);
    v11 = [v9 actionWithTitle:v10 image:0 identifier:@"duplicate" handler:v18];
    [(AVTAvatarActionsProvider *)self setDuplicateAction:v11];

    objc_destroyWeak(&v19);
  }

  if ([(AVTAvatarActionsProvider *)self canPerformActionType:2])
  {
    v12 = MEMORY[0x1E69DC628];
    v13 = [objc_opt_class() localizedTitleForActionType:2];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__AVTAvatarActionsProvider_generateActions__block_invoke_4;
    v16[3] = &unk_1E7F3C0C8;
    objc_copyWeak(&v17, &location);
    v14 = [v12 actionWithTitle:v13 image:0 identifier:@"delete" handler:v16];
    [(AVTAvatarActionsProvider *)self setDeleteAction:v14];

    v15 = [(AVTAvatarActionsProvider *)self deleteAction];
    [v15 setAttributes:2];

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);
}

void __43__AVTAvatarActionsProvider_generateActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapCreateNew];
}

void __43__AVTAvatarActionsProvider_generateActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapEdit];
}

void __43__AVTAvatarActionsProvider_generateActions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapDuplicate];
}

void __43__AVTAvatarActionsProvider_generateActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapDelete:0];
}

- (void)didTapCreateNew
{
  v3 = [(AVTAvatarActionsProvider *)self delegate];
  [v3 performCreateForActionsModel:self];
}

- (void)didTapEdit
{
  v3 = [(AVTAvatarActionsProvider *)self delegate];
  [v3 performEditForActionsModel:self];
}

- (void)didTapDuplicate
{
  v3 = [(AVTAvatarActionsProvider *)self delegate];
  [v3 performDuplicateForActionsModel:self];
}

- (void)didTapDelete:(id)a3
{
  v4 = [(AVTAvatarActionsProvider *)self delegate];
  [v4 performDeleteForActionsModel:self];
}

- (AVTAvatarActionsModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end