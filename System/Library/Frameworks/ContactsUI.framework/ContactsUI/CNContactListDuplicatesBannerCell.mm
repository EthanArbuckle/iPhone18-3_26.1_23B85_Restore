@interface CNContactListDuplicatesBannerCell
- (CNContactListDuplicatesBannerCell)initWithFrame:(CGRect)frame;
- (CNContactListDuplicatesBannerCellDelegate)delegate;
- (void)duplicatesBannerViewDidTapDismiss:(id)dismiss;
- (void)duplicatesBannerViewDidTapViewDuplicates:(id)duplicates;
- (void)removeBannerView;
- (void)updateText:(id)text;
- (void)updateWithCount:(int64_t)count;
- (void)updateWithDuplicatesFoundBannerWithCount:(int64_t)count;
- (void)updateWithState:(unint64_t)state;
@end

@implementation CNContactListDuplicatesBannerCell

- (CNContactListDuplicatesBannerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)duplicatesBannerViewDidTapViewDuplicates:(id)duplicates
{
  delegate = [(CNContactListDuplicatesBannerCell *)self delegate];
  [delegate duplicatesBannerCellDidTapViewDuplicates:self];
}

- (void)duplicatesBannerViewDidTapDismiss:(id)dismiss
{
  delegate = [(CNContactListDuplicatesBannerCell *)self delegate];
  [delegate duplicatesBannerCellDidTapDismiss:self];
}

- (void)updateText:(id)text
{
  textCopy = text;
  [(CNContactListDuplicatesBannerCell *)self removeBannerView];
  defaultContentConfiguration = [(CNContactListDuplicatesBannerCell *)self defaultContentConfiguration];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:textCopy value:&stru_1F0CE7398 table:@"Localized"];

  [defaultContentConfiguration setText:v6];
  [(CNContactListDuplicatesBannerCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)updateWithCount:(int64_t)count
{
  self->_duplicatesCount = count;
  if (count <= 0)
  {
    [(CNContactListDuplicatesBannerCell *)self updateWithState:2];
  }

  else
  {
    self->_state = 0;
    [(CNContactListDuplicatesBannerCell *)self updateWithDuplicatesFoundBannerWithCount:self->_duplicatesCount];
  }
}

- (void)removeBannerView
{
  duplicatesBannerView = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
  [duplicatesBannerView removeFromSuperview];
}

- (void)updateWithDuplicatesFoundBannerWithCount:(int64_t)count
{
  v43[4] = *MEMORY[0x1E69E9840];
  [(CNContactListDuplicatesBannerCell *)self setContentConfiguration:0];
  [(CNContactListDuplicatesBannerCell *)self setAccessories:MEMORY[0x1E695E0F0]];
  duplicatesBannerView = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];

  if (duplicatesBannerView)
  {
    duplicatesBannerView2 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [duplicatesBannerView2 setDuplicatesCount:count];
  }

  else
  {
    v7 = [[CNContactListDuplicatesBannerView alloc] initWithDuplicatesCount:count];
    [(CNContactListDuplicatesBannerCell *)self setDuplicatesBannerView:v7];

    duplicatesBannerView3 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [duplicatesBannerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    duplicatesBannerView2 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [duplicatesBannerView2 setDelegate:self];
  }

  duplicatesBannerView4 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
  superview = [duplicatesBannerView4 superview];

  if (!superview)
  {
    contentView = [(CNContactListDuplicatesBannerCell *)self contentView];
    duplicatesBannerView5 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [contentView addSubview:duplicatesBannerView5];

    contactListStyleApplier = [(CNContactListDuplicatesBannerCell *)self contactListStyleApplier];
    usesInsetPlatterStyle = [contactListStyleApplier usesInsetPlatterStyle];
    contentView2 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v16 = contentView2;
    if (usesInsetPlatterStyle)
    {
      trailingAnchor = [contentView2 trailingAnchor];
    }

    else
    {
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      trailingAnchor = [layoutMarginsGuide trailingAnchor];
    }

    v29 = trailingAnchor;

    v33 = MEMORY[0x1E696ACD8];
    duplicatesBannerView6 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    leadingAnchor = [duplicatesBannerView6 leadingAnchor];
    contentView3 = [(CNContactListDuplicatesBannerCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v37;
    duplicatesBannerView7 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    trailingAnchor2 = [duplicatesBannerView7 trailingAnchor];
    v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];
    v43[1] = v34;
    duplicatesBannerView8 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    topAnchor = [duplicatesBannerView8 topAnchor];
    contentView4 = [(CNContactListDuplicatesBannerCell *)self contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[2] = v21;
    duplicatesBannerView9 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    bottomAnchor = [duplicatesBannerView9 bottomAnchor];
    contentView5 = [(CNContactListDuplicatesBannerCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [v33 activateConstraints:v28];
  }
}

- (void)updateWithState:(unint64_t)state
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
    if (state == 2)
    {
      [(CNContactListDuplicatesBannerCell *)self updateText:@"DUPLICATES_RESOLVED"];
      v4 = objc_alloc_init(MEMORY[0x1E69DC788]);
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      [v4 setTintColor:systemGreenColor];

      v9 = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      [(CNContactListDuplicatesBannerCell *)self setAccessories:v5];
      goto LABEL_6;
    }

    if (state == 1)
    {
      [(CNContactListDuplicatesBannerCell *)self updateText:@"DUPLICATES_MERGING"];
      v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v5 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v4 placement:1];
      [v4 startAnimating];
      v10[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [(CNContactListDuplicatesBannerCell *)self setAccessories:v6];

LABEL_6:
      return;
    }

    duplicatesCount = self->_duplicatesCount;

    [(CNContactListDuplicatesBannerCell *)self updateWithDuplicatesFoundBannerWithCount:duplicatesCount];
  }
}

- (CNContactListDuplicatesBannerCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNContactListDuplicatesBannerCell;
  v3 = [(CNContactListDuplicatesBannerCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_state = 0;
    v3->_duplicatesCount = 0;
    v5 = v3;
  }

  return v4;
}

@end