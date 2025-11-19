@interface CNContactListDuplicatesBannerCell
- (CNContactListDuplicatesBannerCell)initWithFrame:(CGRect)a3;
- (CNContactListDuplicatesBannerCellDelegate)delegate;
- (void)duplicatesBannerViewDidTapDismiss:(id)a3;
- (void)duplicatesBannerViewDidTapViewDuplicates:(id)a3;
- (void)removeBannerView;
- (void)updateText:(id)a3;
- (void)updateWithCount:(int64_t)a3;
- (void)updateWithDuplicatesFoundBannerWithCount:(int64_t)a3;
- (void)updateWithState:(unint64_t)a3;
@end

@implementation CNContactListDuplicatesBannerCell

- (CNContactListDuplicatesBannerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)duplicatesBannerViewDidTapViewDuplicates:(id)a3
{
  v4 = [(CNContactListDuplicatesBannerCell *)self delegate];
  [v4 duplicatesBannerCellDidTapViewDuplicates:self];
}

- (void)duplicatesBannerViewDidTapDismiss:(id)a3
{
  v4 = [(CNContactListDuplicatesBannerCell *)self delegate];
  [v4 duplicatesBannerCellDidTapDismiss:self];
}

- (void)updateText:(id)a3
{
  v4 = a3;
  [(CNContactListDuplicatesBannerCell *)self removeBannerView];
  v7 = [(CNContactListDuplicatesBannerCell *)self defaultContentConfiguration];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized"];

  [v7 setText:v6];
  [(CNContactListDuplicatesBannerCell *)self setContentConfiguration:v7];
}

- (void)updateWithCount:(int64_t)a3
{
  self->_duplicatesCount = a3;
  if (a3 <= 0)
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
  v2 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
  [v2 removeFromSuperview];
}

- (void)updateWithDuplicatesFoundBannerWithCount:(int64_t)a3
{
  v43[4] = *MEMORY[0x1E69E9840];
  [(CNContactListDuplicatesBannerCell *)self setContentConfiguration:0];
  [(CNContactListDuplicatesBannerCell *)self setAccessories:MEMORY[0x1E695E0F0]];
  v5 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];

  if (v5)
  {
    v6 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [v6 setDuplicatesCount:a3];
  }

  else
  {
    v7 = [[CNContactListDuplicatesBannerView alloc] initWithDuplicatesCount:a3];
    [(CNContactListDuplicatesBannerCell *)self setDuplicatesBannerView:v7];

    v8 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [v6 setDelegate:self];
  }

  v9 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
  v10 = [v9 superview];

  if (!v10)
  {
    v11 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v12 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    [v11 addSubview:v12];

    v13 = [(CNContactListDuplicatesBannerCell *)self contactListStyleApplier];
    v14 = [v13 usesInsetPlatterStyle];
    v15 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 trailingAnchor];
    }

    else
    {
      v18 = [v15 layoutMarginsGuide];
      v17 = [v18 trailingAnchor];
    }

    v29 = v17;

    v33 = MEMORY[0x1E696ACD8];
    v42 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    v40 = [v42 leadingAnchor];
    v41 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v39 = [v41 layoutMarginsGuide];
    v38 = [v39 leadingAnchor];
    v37 = [v40 constraintEqualToAnchor:v38];
    v43[0] = v37;
    v36 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    v35 = [v36 trailingAnchor];
    v34 = [v35 constraintEqualToAnchor:v17];
    v43[1] = v34;
    v32 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    v30 = [v32 topAnchor];
    v31 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v19 = [v31 layoutMarginsGuide];
    v20 = [v19 topAnchor];
    v21 = [v30 constraintEqualToAnchor:v20];
    v43[2] = v21;
    v22 = [(CNContactListDuplicatesBannerCell *)self duplicatesBannerView];
    v23 = [v22 bottomAnchor];
    v24 = [(CNContactListDuplicatesBannerCell *)self contentView];
    v25 = [v24 layoutMarginsGuide];
    v26 = [v25 bottomAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    v43[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [v33 activateConstraints:v28];
  }
}

- (void)updateWithState:(unint64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 == 2)
    {
      [(CNContactListDuplicatesBannerCell *)self updateText:@"DUPLICATES_RESOLVED"];
      v4 = objc_alloc_init(MEMORY[0x1E69DC788]);
      v7 = [MEMORY[0x1E69DC888] systemGreenColor];
      [v4 setTintColor:v7];

      v9 = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      [(CNContactListDuplicatesBannerCell *)self setAccessories:v5];
      goto LABEL_6;
    }

    if (a3 == 1)
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

- (CNContactListDuplicatesBannerCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNContactListDuplicatesBannerCell;
  v3 = [(CNContactListDuplicatesBannerCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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