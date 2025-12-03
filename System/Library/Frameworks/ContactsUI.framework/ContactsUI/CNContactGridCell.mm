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
- (void)setContact:(id)contact;
- (void)setDelegate:(id)delegate;
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
  actionsView = [(CNContactGridCell *)self actionsView];
  [actionsView maximumWidth];
  v4 = v3;

  return v4;
}

- (void)_updateActionsMask
{
  contact = [(CNContactGridCell *)self contact];
  if (contact)
  {
    contact2 = [(CNContactGridCell *)self contact];
    v5 = [CNMonogrammer monogramTypeForContact:contact2]!= 2;
  }

  else
  {
    v5 = 0;
  }

  actionsClippingView = [(CNContactGridCell *)self actionsClippingView];
  [actionsClippingView setMasksToAvatar:v5];
}

- (id)completionBlockForHidingActions
{
  actionsView = [(CNContactGridCell *)self actionsView];
  [(CNContactGridCell *)self setActionsView:0];
  [actionsView setAlpha:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNContactGridCell_completionBlockForHidingActions__block_invoke;
  v7[3] = &unk_1E74E6A88;
  v8 = actionsView;
  v4 = actionsView;
  v5 = [v7 copy];

  return v5;
}

- (id)animationBlockForPreparingToShowActions
{
  v29[2] = *MEMORY[0x1E69E9840];
  actionsView = [(CNContactGridCell *)self actionsView];

  if (!actionsView)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [CNQuickActionsView alloc];
    v6 = [(CNQuickActionsView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNQuickActionsView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    delegate = [(CNContactGridCell *)self delegate];
    [(CNQuickActionsView *)v6 setDelegate:delegate];

    nameTextAttributes = [(CNContactGridCell *)self nameTextAttributes];
    [(CNQuickActionsView *)v6 setTitleTextAttributes:nameTextAttributes];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      [(CNQuickActionsView *)v6 setInterspace:24.0];
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
      if (CGRectGetHeight(v31) <= 568.0)
      {
        [(CNQuickActionsView *)v6 setInterspace:24.0];
      }

      else
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice2 userInterfaceIdiom])
        {
          [(CNQuickActionsView *)v6 setInterspace:35.0];
        }

        else
        {
          mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen2 _referenceBounds];
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

    actionCategories = [(CNContactGridCell *)self actionCategories];
    [(CNQuickActionsView *)v6 setCategories:actionCategories];

    actionsManager = [(CNContactGridCell *)self actionsManager];
    [(CNQuickActionsView *)v6 setActionsManager:actionsManager];

    contact = [(CNContactGridCell *)self contact];
    [(CNQuickActionsView *)v6 setContact:contact];

    [(CNQuickActionsView *)v6 setSortsWithDuet:1];
    [(CNQuickActionsView *)v6 setAlpha:0.0];
    actionsContainerView = [(CNContactGridCell *)self actionsContainerView];
    [actionsContainerView addSubview:v6];

    [(CNContactGridCell *)self setActionsView:v6];
    v28[0] = @"avatar";
    avatarView = [(CNContactGridCell *)self avatarView];
    v28[1] = @"actionsView";
    v29[0] = avatarView;
    v29[1] = v6;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-0-[actionsView]-0-|" options:0 metrics:0 views:v20];
    [array addObjectsFromArray:v21];

    v22 = MEMORY[0x1E696ACD8];
    avatarView2 = [(CNContactGridCell *)self avatarView];
    v24 = [v22 constraintWithItem:v6 attribute:10 relatedBy:0 toItem:avatarView2 attribute:10 multiplier:1.0 constant:10.0];
    [array addObject:v24];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    avatarView = [(CNContactGridCell *)self avatarView];
    [avatarView setDelegate:obj];

    actionsView = [(CNContactGridCell *)self actionsView];
    [actionsView setDelegate:obj];
  }
}

- (CNContact)contact
{
  avatarView = [(CNContactGridCell *)self avatarView];
  contact = [avatarView contact];

  return contact;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  [(CNContactGridCell *)self _createViewsIfNeeded];
  v4 = contactCopy;
  if (!contactCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  }

  v15 = v4;
  avatarView = [(CNContactGridCell *)self avatarView];
  [avatarView setContact:v15];

  contactFormatter = [(CNContactGridCell *)self contactFormatter];
  v7 = [contactFormatter stringFromContact:v15];

  if (![v7 length])
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];

    v7 = v9;
  }

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  nameTextAttributes = [(CNContactGridCell *)self nameTextAttributes];
  v12 = [v10 initWithString:v7 attributes:nameTextAttributes];
  nameLabel = [(CNContactGridCell *)self nameLabel];
  [nameLabel setAttributedText:v12];

  [(CNContactGridCell *)self _updateActionsMask];
}

- (void)updateConstraints
{
  v50[8] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = CNContactGridCell;
  [(CNContactGridCell *)&v46 updateConstraints];
  array = [MEMORY[0x1E695DF70] array];
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
  avatarView = [(CNContactGridCell *)self avatarView];
  v48[0] = avatarView;
  v47[1] = @"nameLabel";
  nameLabel = [(CNContactGridCell *)self nameLabel];
  v48[1] = nameLabel;
  v47[2] = @"actionsClippingView";
  actionsClippingView = [(CNContactGridCell *)self actionsClippingView];
  v48[2] = actionsClippingView;
  v47[3] = @"actionsContainerView";
  actionsContainerView = [(CNContactGridCell *)self actionsContainerView];
  v48[3] = actionsContainerView;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:4];

  v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-(left)-[avatar(width)]-(>=right)-|" options:0 metrics:v28 views:v33];
  [array addObjectsFromArray:v34];

  v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-0-[nameLabel(labelWidth)]" options:0 metrics:v28 views:v33];
  [array addObjectsFromArray:v35];

  v36 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(top)-[avatar(height)]-(bottom)-[nameLabel]-0-|" options:0 metrics:v28 views:v33];
  [array addObjectsFromArray:v36];

  v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[actionsClippingView]-(right)-|" options:0 metrics:v28 views:v33];
  [array addObjectsFromArray:v37];

  v38 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsClippingView]-0-|" options:0 metrics:0 views:v33];
  [array addObjectsFromArray:v38];

  v39 = MEMORY[0x1E696ACD8];
  actionsClippingView2 = [(CNContactGridCell *)self actionsClippingView];
  avatarView2 = [(CNContactGridCell *)self avatarView];
  v42 = [v39 constraintWithItem:actionsClippingView2 attribute:5 relatedBy:0 toItem:avatarView2 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v42];

  v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[avatar]-<=actionsLeftMargin-[actionsContainerView]->=0-|" options:0 metrics:v28 views:v33];
  [array addObjectsFromArray:v43];

  v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsContainerView]-0-|" options:0 metrics:0 views:v33];
  [array addObjectsFromArray:v44];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)_createViewsIfNeeded
{
  avatarView = [(CNContactGridCell *)self avatarView];

  if (!avatarView)
  {
    v4 = [CNContactGridClippingView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v17 = [(CNContactGridClippingView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    [(CNContactGridClippingView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactGridClippingView *)v17 setClipsToBounds:1];
    contentView = [(CNContactGridCell *)self contentView];
    [contentView addSubview:v17];

    [(CNContactGridCell *)self setActionsClippingView:v17];
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactGridClippingView *)v17 addSubview:v10];
    [(CNContactGridCell *)self setActionsContainerView:v10];
    v11 = [CNAvatarView alloc];
    [(CNContactGridCell *)self bounds];
    v12 = [(CNAvatarView *)v11 initWithFrame:?];
    delegate = [(CNContactGridCell *)self delegate];
    [(CNAvatarView *)v12 setDelegate:delegate];

    [(CNAvatarView *)v12 setAutoUpdateContact:0];
    [(CNAvatarView *)v12 setShowsContactOnTap:[(CNContactGridCell *)self showsContactOnTap]];
    [(CNAvatarView *)v12 setAsynchronousRendering:1];
    [(CNAvatarView *)v12 setForcePressView:v12];
    [(CNAvatarView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CNContactGridCell *)self contentView];
    [contentView2 addSubview:v12];

    [(CNContactGridCell *)self setAvatarView:v12];
    [(CNContactGridClippingView *)v17 setAvatarView:v12];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setTextAlignment:1];
    contentView3 = [(CNContactGridCell *)self contentView];
    [contentView3 addSubview:v15];

    [(CNContactGridCell *)self setNameLabel:v15];
  }
}

+ (double)actionsLeftMargin
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    Height = CGRectGetHeight(v9);

    result = 20.0;
    if (Height > 667.0)
    {
      return result;
    }
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {

    return 16.0;
  }

  else
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 _referenceBounds];
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