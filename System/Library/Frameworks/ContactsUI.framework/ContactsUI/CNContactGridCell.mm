@interface CNContactGridCell
+ (double)actionsLeftMargin;
- (CGSize)avatarSize;
- (CNAvatarViewDelegate)delegate;
- (CNContact)contact;
- (UIEdgeInsets)avatarMargins;
- (double)maximumActionsWidth;
- (id)animationBlockForPreparingToShowActions;
- (id)completionBlockForHidingActions;
- (void)_createViewsIfNeeded;
- (void)_updateActionsMask;
- (void)setContact:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateConstraints;
@end

@implementation CNContactGridCell

- (UIEdgeInsets)avatarMargins
{
  top = self->_avatarMargins.top;
  left = self->_avatarMargins.left;
  bottom = self->_avatarMargins.bottom;
  right = self->_avatarMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)avatarSize
{
  width = self->_avatarSize.width;
  height = self->_avatarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNAvatarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)maximumActionsWidth
{
  v2 = [(CNContactGridCell *)self actionsView];
  [v2 maximumWidth];
  v4 = v3;

  return v4;
}

- (void)_updateActionsMask
{
  v3 = [(CNContactGridCell *)self contact];
  if (v3)
  {
    v4 = [(CNContactGridCell *)self contact];
    v5 = [CNMonogrammer monogramTypeForContact:v4]!= 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CNContactGridCell *)self actionsClippingView];
  [v6 setMasksToAvatar:v5];
}

- (id)completionBlockForHidingActions
{
  v3 = [(CNContactGridCell *)self actionsView];
  [(CNContactGridCell *)self setActionsView:0];
  [v3 setAlpha:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNContactGridCell_completionBlockForHidingActions__block_invoke;
  v7[3] = &unk_1E74E6A88;
  v8 = v3;
  v4 = v3;
  v5 = [v7 copy];

  return v5;
}

- (id)animationBlockForPreparingToShowActions
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactGridCell *)self actionsView];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [CNQuickActionsView alloc];
    v6 = [(CNQuickActionsView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNQuickActionsView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(CNContactGridCell *)self delegate];
    [(CNQuickActionsView *)v6 setDelegate:v7];

    v8 = [(CNContactGridCell *)self nameTextAttributes];
    [(CNQuickActionsView *)v6 setTitleTextAttributes:v8];

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v9 userInterfaceIdiom])
    {
      [(CNQuickActionsView *)v6 setInterspace:24.0];
    }

    else
    {
      v10 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v10 _referenceBounds];
      if (CGRectGetHeight(v31) <= 568.0)
      {
        [(CNQuickActionsView *)v6 setInterspace:24.0];
      }

      else
      {
        v11 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v11 userInterfaceIdiom])
        {
          [(CNQuickActionsView *)v6 setInterspace:35.0];
        }

        else
        {
          v12 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v12 _referenceBounds];
          v13 = CGRectGetHeight(v32) <= 667.0;
          v14 = 35.0;
          if (!v13)
          {
            v14 = 24.0;
          }

          [(CNQuickActionsView *)v6 setInterspace:v14];
        }
      }
    }

    v15 = [(CNContactGridCell *)self actionCategories];
    [(CNQuickActionsView *)v6 setCategories:v15];

    v16 = [(CNContactGridCell *)self actionsManager];
    [(CNQuickActionsView *)v6 setActionsManager:v16];

    v17 = [(CNContactGridCell *)self contact];
    [(CNQuickActionsView *)v6 setContact:v17];

    [(CNQuickActionsView *)v6 setSortsWithDuet:1];
    [(CNQuickActionsView *)v6 setAlpha:0.0];
    v18 = [(CNContactGridCell *)self actionsContainerView];
    [v18 addSubview:v6];

    [(CNContactGridCell *)self setActionsView:v6];
    v28[0] = @"avatar";
    v19 = [(CNContactGridCell *)self avatarView];
    v28[1] = @"actionsView";
    v29[0] = v19;
    v29[1] = v6;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-0-[actionsView]-0-|" options:0 metrics:0 views:v20];
    [v4 addObjectsFromArray:v21];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(CNContactGridCell *)self avatarView];
    v24 = [v22 constraintWithItem:v6 attribute:10 relatedBy:0 toItem:v23 attribute:10 multiplier:1.0 constant:10.0];
    [v4 addObject:v24];

    [MEMORY[0x1E696ACD8] activateConstraints:v4];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__CNContactGridCell_animationBlockForPreparingToShowActions__block_invoke;
  v27[3] = &unk_1E74E6A88;
  v27[4] = self;
  v25 = [v27 copy];

  return v25;
}

void __60__CNContactGridCell_animationBlockForPreparingToShowActions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionsView];
  [v1 setAlpha:1.0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = [(CNContactGridCell *)self avatarView];
    [v5 setDelegate:obj];

    v6 = [(CNContactGridCell *)self actionsView];
    [v6 setDelegate:obj];
  }
}

- (CNContact)contact
{
  v2 = [(CNContactGridCell *)self avatarView];
  v3 = [v2 contact];

  return v3;
}

- (void)setContact:(id)a3
{
  v14 = a3;
  [(CNContactGridCell *)self _createViewsIfNeeded];
  v4 = v14;
  if (!v14)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  }

  v15 = v4;
  v5 = [(CNContactGridCell *)self avatarView];
  [v5 setContact:v15];

  v6 = [(CNContactGridCell *)self contactFormatter];
  v7 = [v6 stringFromContact:v15];

  if (![v7 length])
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];

    v7 = v9;
  }

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [(CNContactGridCell *)self nameTextAttributes];
  v12 = [v10 initWithString:v7 attributes:v11];
  v13 = [(CNContactGridCell *)self nameLabel];
  [v13 setAttributedText:v12];

  [(CNContactGridCell *)self _updateActionsMask];
}

- (void)updateConstraints
{
  v50[8] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = CNContactGridCell;
  [(CNContactGridCell *)&v46 updateConstraints];
  v3 = [MEMORY[0x1E695DF70] array];
  v49[0] = @"top";
  v4 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarMargins];
  v45 = [v4 numberWithDouble:?];
  v50[0] = v45;
  v49[1] = @"left";
  v5 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarMargins];
  v7 = [v5 numberWithDouble:v6];
  v50[1] = v7;
  v49[2] = @"bottom";
  v8 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarMargins];
  v10 = [v8 numberWithDouble:v9];
  v50[2] = v10;
  v49[3] = @"right";
  v11 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarMargins];
  v13 = [v11 numberWithDouble:v12];
  v50[3] = v13;
  v49[4] = @"width";
  v14 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarSize];
  v15 = [v14 numberWithDouble:?];
  v50[4] = v15;
  v49[5] = @"height";
  v16 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarSize];
  v18 = [v16 numberWithDouble:v17];
  v50[5] = v18;
  v49[6] = @"labelWidth";
  v19 = MEMORY[0x1E696AD98];
  [(CNContactGridCell *)self avatarSize];
  v21 = v20;
  [(CNContactGridCell *)self avatarMargins];
  v23 = v21 + v22;
  [(CNContactGridCell *)self avatarMargins];
  v25 = [v19 numberWithDouble:v23 + v24];
  v50[6] = v25;
  v49[7] = @"actionsLeftMargin";
  v26 = MEMORY[0x1E696AD98];
  +[CNContactGridCell actionsLeftMargin];
  v27 = [v26 numberWithDouble:?];
  v50[7] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:8];

  v47[0] = @"avatar";
  v29 = [(CNContactGridCell *)self avatarView];
  v48[0] = v29;
  v47[1] = @"nameLabel";
  v30 = [(CNContactGridCell *)self nameLabel];
  v48[1] = v30;
  v47[2] = @"actionsClippingView";
  v31 = [(CNContactGridCell *)self actionsClippingView];
  v48[2] = v31;
  v47[3] = @"actionsContainerView";
  v32 = [(CNContactGridCell *)self actionsContainerView];
  v48[3] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:4];

  v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-(left)-[avatar(width)]-(>=right)-|" options:0 metrics:v28 views:v33];
  [v3 addObjectsFromArray:v34];

  v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-0-[nameLabel(labelWidth)]" options:0 metrics:v28 views:v33];
  [v3 addObjectsFromArray:v35];

  v36 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(top)-[avatar(height)]-(bottom)-[nameLabel]-0-|" options:0 metrics:v28 views:v33];
  [v3 addObjectsFromArray:v36];

  v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[actionsClippingView]-(right)-|" options:0 metrics:v28 views:v33];
  [v3 addObjectsFromArray:v37];

  v38 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsClippingView]-0-|" options:0 metrics:0 views:v33];
  [v3 addObjectsFromArray:v38];

  v39 = MEMORY[0x1E696ACD8];
  v40 = [(CNContactGridCell *)self actionsClippingView];
  v41 = [(CNContactGridCell *)self avatarView];
  v42 = [v39 constraintWithItem:v40 attribute:5 relatedBy:0 toItem:v41 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v42];

  v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[avatar]-<=actionsLeftMargin-[actionsContainerView]->=0-|" options:0 metrics:v28 views:v33];
  [v3 addObjectsFromArray:v43];

  v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsContainerView]-0-|" options:0 metrics:0 views:v33];
  [v3 addObjectsFromArray:v44];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)_createViewsIfNeeded
{
  v3 = [(CNContactGridCell *)self avatarView];

  if (!v3)
  {
    v4 = [CNContactGridClippingView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v17 = [(CNContactGridClippingView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    [(CNContactGridClippingView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactGridClippingView *)v17 setClipsToBounds:1];
    v9 = [(CNContactGridCell *)self contentView];
    [v9 addSubview:v17];

    [(CNContactGridCell *)self setActionsClippingView:v17];
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactGridClippingView *)v17 addSubview:v10];
    [(CNContactGridCell *)self setActionsContainerView:v10];
    v11 = [CNAvatarView alloc];
    [(CNContactGridCell *)self bounds];
    v12 = [(CNAvatarView *)v11 initWithFrame:?];
    v13 = [(CNContactGridCell *)self delegate];
    [(CNAvatarView *)v12 setDelegate:v13];

    [(CNAvatarView *)v12 setAutoUpdateContact:0];
    [(CNAvatarView *)v12 setShowsContactOnTap:[(CNContactGridCell *)self showsContactOnTap]];
    [(CNAvatarView *)v12 setAsynchronousRendering:1];
    [(CNAvatarView *)v12 setForcePressView:v12];
    [(CNAvatarView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(CNContactGridCell *)self contentView];
    [v14 addSubview:v12];

    [(CNContactGridCell *)self setAvatarView:v12];
    [(CNContactGridClippingView *)v17 setAvatarView:v12];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setTextAlignment:1];
    v16 = [(CNContactGridCell *)self contentView];
    [v16 addSubview:v15];

    [(CNContactGridCell *)self setNameLabel:v15];
  }
}

+ (double)actionsLeftMargin
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 userInterfaceIdiom])
  {
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
    Height = CGRectGetHeight(v9);

    result = 20.0;
    if (Height > 667.0)
    {
      return result;
    }
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v6 userInterfaceIdiom])
  {

    return 16.0;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 _referenceBounds];
    v8 = CGRectGetHeight(v10);

    result = 16.0;
    if (v8 > 568.0)
    {
      return 27.0;
    }
  }

  return result;
}

@end