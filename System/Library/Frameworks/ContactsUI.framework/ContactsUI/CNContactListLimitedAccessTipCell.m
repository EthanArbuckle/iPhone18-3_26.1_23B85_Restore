@interface CNContactListLimitedAccessTipCell
- (CNContactListLimitedAccessTipCell)initWithFrame:(CGRect)a3;
- (CNContactListLimitedAccessTipCellDelegate)delegate;
- (void)limitedAccessTipViewDidTapDismiss:(id)a3;
- (void)updateWithAppName:(id)a3 isLimited:(BOOL)a4;
@end

@implementation CNContactListLimitedAccessTipCell

- (CNContactListLimitedAccessTipCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)limitedAccessTipViewDidTapDismiss:(id)a3
{
  v4 = [(CNContactListLimitedAccessTipCell *)self delegate];
  [v4 limitedAccessTipCellDidTapDismiss:self];
}

- (void)updateWithAppName:(id)a3 isLimited:(BOOL)a4
{
  v4 = a4;
  v44[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CNContactListLimitedAccessTipCell *)self setContentConfiguration:0];
  [(CNContactListLimitedAccessTipCell *)self setAccessories:MEMORY[0x1E695E0F0]];
  v7 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];

  if (!v7)
  {
    v8 = [[CNContactListLimitedAccessTipView alloc] initWithAppName:v6 isLimited:v4];
    [(CNContactListLimitedAccessTipCell *)self setLimitedAccessTipView:v8];

    v9 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [v10 setDelegate:self];
  }

  v11 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
  v12 = [v11 superview];

  if (!v12)
  {
    v43 = v6;
    v13 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v14 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [v13 addSubview:v14];

    v15 = [(CNContactListLimitedAccessTipCell *)self contactListStyleApplier];
    v16 = [v15 usesInsetPlatterStyle];
    v17 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 trailingAnchor];
    }

    else
    {
      v20 = [v17 layoutMarginsGuide];
      v19 = [v20 trailingAnchor];
    }

    v31 = v19;

    v34 = MEMORY[0x1E696ACD8];
    v42 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    v40 = [v42 leadingAnchor];
    v41 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v39 = [v41 layoutMarginsGuide];
    v38 = [v39 leadingAnchor];
    v37 = [v40 constraintEqualToAnchor:v38 constant:7.0];
    v44[0] = v37;
    v36 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    v35 = [v36 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v19 constant:-7.0];
    v44[1] = v33;
    v32 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    v21 = [v32 topAnchor];
    v22 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v23 = [v22 topAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v44[2] = v24;
    v25 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    v26 = [v25 bottomAnchor];
    v27 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v44[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    [v34 activateConstraints:v30];

    v6 = v43;
  }
}

- (CNContactListLimitedAccessTipCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNContactListLimitedAccessTipCell;
  v3 = [(CNContactListLimitedAccessTipCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end