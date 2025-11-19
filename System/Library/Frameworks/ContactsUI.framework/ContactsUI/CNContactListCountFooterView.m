@interface CNContactListCountFooterView
- (CNContactListCountFooterView)initWithFrame:(CGRect)a3;
- (CNContactListCountViewDelegate)delegate;
- (id)countStringForLocalizedStringKey:(id)a3 count:(int64_t)a4;
- (id)countViewConfiguration;
- (id)primaryText;
- (id)secondaryText;
- (void)didSelectViewAllDuplicates;
- (void)setContactCount:(int64_t)a3;
- (void)setDuplicateCount:(int64_t)a3;
- (void)setSelectedCount:(int64_t)a3;
@end

@implementation CNContactListCountFooterView

- (CNContactListCountViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSelectViewAllDuplicates
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained && [(CNContactListCountFooterView *)self shouldDisplayDuplicateCount])
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    [v4 didSelectViewAllDuplicates];
  }
}

- (void)setSelectedCount:(int64_t)a3
{
  if (self->_selectedCount != a3)
  {
    self->_selectedCount = a3;
    v5 = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:v5];
  }
}

- (void)setDuplicateCount:(int64_t)a3
{
  if (self->_duplicateCount != a3)
  {
    self->_duplicateCount = a3;
    v5 = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:v5];
  }
}

- (void)setContactCount:(int64_t)a3
{
  if (self->_contactCount != a3)
  {
    self->_contactCount = a3;
    v5 = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:v5];
  }
}

- (id)countStringForLocalizedStringKey:(id)a3 count:(int64_t)a4
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CNContactListCountFooterView_countStringForLocalizedStringKey_count___block_invoke;
  aBlock[3] = &unk_1E74E59A8;
  v13 = v5;
  v14 = a4;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v7[2]();
  v10 = [v8 localizedStringWithFormat:v9, a4];

  return v10;
}

id __71__CNContactListCountFooterView_countStringForLocalizedStringKey_count___block_invoke(uint64_t a1)
{
  v2 = [CNNumberFormatting localizedStringWithInteger:*(a1 + 40)];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:*(a1 + 32) value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [v3 localizedStringWithFormat:v5, *(a1 + 40), v2];

  return v6;
}

- (id)secondaryText
{
  if ([(CNContactListCountFooterView *)self shouldDisplayDuplicateCount])
  {
    v3 = [(CNContactListCountFooterView *)self countStringForLocalizedStringKey:@"DUPLICATES_COUNT" count:[(CNContactListCountFooterView *)self duplicateCount]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)primaryText
{
  if ([(CNContactListCountFooterView *)self shouldDisplayContactCount])
  {
    v3 = [(CNContactListCountFooterView *)self contactCount];
    v4 = @"CONTACTS_COUNT";
LABEL_5:
    v5 = [(CNContactListCountFooterView *)self countStringForLocalizedStringKey:v4 count:v3];
    goto LABEL_7;
  }

  if ([(CNContactListCountFooterView *)self shouldDisplaySelectedCount])
  {
    v3 = [(CNContactListCountFooterView *)self selectedCount];
    v4 = @"SELECTED_CONTACTS_COUNT";
    goto LABEL_5;
  }

  v5 = &stru_1F0CE7398;
LABEL_7:

  return v5;
}

- (id)countViewConfiguration
{
  v3 = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
  v4 = [(CNContactListCountFooterView *)self primaryText];
  [v3 setText:v4];

  v5 = +[CNUIFontRepository contactListContactCountFont];
  v6 = [v3 textProperties];
  [v6 setFont:v5];

  v7 = +[CNUIColorRepository contactListContactCountTextColor];
  v8 = [v3 textProperties];
  [v8 setColor:v7];

  v9 = [v3 textProperties];
  [v9 setAlignment:1];

  v10 = [(CNContactListCountFooterView *)self secondaryText];
  [v3 setSecondaryText:v10];

  v11 = +[CNUIFontRepository contactListDuplicateCountFont];
  v12 = [v3 secondaryTextProperties];
  [v12 setFont:v11];

  v13 = +[CNUIColorRepository contactListDuplicateCountTextColor];
  v14 = [v3 secondaryTextProperties];
  [v14 setColor:v13];

  v15 = [v3 secondaryTextProperties];
  [v15 setAlignment:1];

  [v3 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins:15.0];

  return v3;
}

- (CNContactListCountFooterView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNContactListCountFooterView;
  v3 = [(CNContactListCountFooterView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_didSelectViewAllDuplicates];
    [(CNContactListCountFooterView *)v3 addGestureRecognizer:v4];
    v3->_contactCount = 0;
    v3->_duplicateCount = 0;
    v3->_selectedCount = -1;
    v5 = v3;
  }

  return v3;
}

@end