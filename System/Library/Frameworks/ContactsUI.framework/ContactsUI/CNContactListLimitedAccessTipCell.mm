@interface CNContactListLimitedAccessTipCell
- (CNContactListLimitedAccessTipCell)initWithFrame:(CGRect)frame;
- (CNContactListLimitedAccessTipCellDelegate)delegate;
- (void)limitedAccessTipViewDidTapDismiss:(id)dismiss;
- (void)updateWithAppName:(id)name isLimited:(BOOL)limited;
@end

@implementation CNContactListLimitedAccessTipCell

- (CNContactListLimitedAccessTipCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)limitedAccessTipViewDidTapDismiss:(id)dismiss
{
  delegate = [(CNContactListLimitedAccessTipCell *)self delegate];
  [delegate limitedAccessTipCellDidTapDismiss:self];
}

- (void)updateWithAppName:(id)name isLimited:(BOOL)limited
{
  limitedCopy = limited;
  v44[4] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [(CNContactListLimitedAccessTipCell *)self setContentConfiguration:0];
  [(CNContactListLimitedAccessTipCell *)self setAccessories:MEMORY[0x1E695E0F0]];
  limitedAccessTipView = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];

  if (!limitedAccessTipView)
  {
    v8 = [[CNContactListLimitedAccessTipView alloc] initWithAppName:nameCopy isLimited:limitedCopy];
    [(CNContactListLimitedAccessTipCell *)self setLimitedAccessTipView:v8];

    limitedAccessTipView2 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [limitedAccessTipView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    limitedAccessTipView3 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [limitedAccessTipView3 setDelegate:self];
  }

  limitedAccessTipView4 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
  superview = [limitedAccessTipView4 superview];

  if (!superview)
  {
    v43 = nameCopy;
    contentView = [(CNContactListLimitedAccessTipCell *)self contentView];
    limitedAccessTipView5 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    [contentView addSubview:limitedAccessTipView5];

    contactListStyleApplier = [(CNContactListLimitedAccessTipCell *)self contactListStyleApplier];
    usesInsetPlatterStyle = [contactListStyleApplier usesInsetPlatterStyle];
    contentView2 = [(CNContactListLimitedAccessTipCell *)self contentView];
    v18 = contentView2;
    if (usesInsetPlatterStyle)
    {
      trailingAnchor = [contentView2 trailingAnchor];
    }

    else
    {
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      trailingAnchor = [layoutMarginsGuide trailingAnchor];
    }

    v31 = trailingAnchor;

    v34 = MEMORY[0x1E696ACD8];
    limitedAccessTipView6 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    leadingAnchor = [limitedAccessTipView6 leadingAnchor];
    contentView3 = [(CNContactListLimitedAccessTipCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:7.0];
    v44[0] = v37;
    limitedAccessTipView7 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    trailingAnchor2 = [limitedAccessTipView7 trailingAnchor];
    v33 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor constant:-7.0];
    v44[1] = v33;
    limitedAccessTipView8 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    topAnchor = [limitedAccessTipView8 topAnchor];
    contentView4 = [(CNContactListLimitedAccessTipCell *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[2] = v24;
    limitedAccessTipView9 = [(CNContactListLimitedAccessTipCell *)self limitedAccessTipView];
    bottomAnchor = [limitedAccessTipView9 bottomAnchor];
    contentView5 = [(CNContactListLimitedAccessTipCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v44[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    [v34 activateConstraints:v30];

    nameCopy = v43;
  }
}

- (CNContactListLimitedAccessTipCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNContactListLimitedAccessTipCell;
  v3 = [(CNContactListLimitedAccessTipCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end