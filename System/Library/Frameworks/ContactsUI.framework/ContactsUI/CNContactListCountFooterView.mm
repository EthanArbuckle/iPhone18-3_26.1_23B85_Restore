@interface CNContactListCountFooterView
- (CNContactListCountFooterView)initWithFrame:(CGRect)frame;
- (CNContactListCountViewDelegate)delegate;
- (id)countStringForLocalizedStringKey:(id)key count:(int64_t)count;
- (id)countViewConfiguration;
- (id)primaryText;
- (id)secondaryText;
- (void)didSelectViewAllDuplicates;
- (void)setContactCount:(int64_t)count;
- (void)setDuplicateCount:(int64_t)count;
- (void)setSelectedCount:(int64_t)count;
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

- (void)setSelectedCount:(int64_t)count
{
  if (self->_selectedCount != count)
  {
    self->_selectedCount = count;
    countViewConfiguration = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:countViewConfiguration];
  }
}

- (void)setDuplicateCount:(int64_t)count
{
  if (self->_duplicateCount != count)
  {
    self->_duplicateCount = count;
    countViewConfiguration = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:countViewConfiguration];
  }
}

- (void)setContactCount:(int64_t)count
{
  if (self->_contactCount != count)
  {
    self->_contactCount = count;
    countViewConfiguration = [(CNContactListCountFooterView *)self countViewConfiguration];
    [(CNContactListCountFooterView *)self setContentConfiguration:countViewConfiguration];
  }
}

- (id)countStringForLocalizedStringKey:(id)key count:(int64_t)count
{
  keyCopy = key;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CNContactListCountFooterView_countStringForLocalizedStringKey_count___block_invoke;
  aBlock[3] = &unk_1E74E59A8;
  v13 = keyCopy;
  countCopy = count;
  v6 = keyCopy;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v7[2]();
  v10 = [v8 localizedStringWithFormat:v9, count];

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
    contactCount = [(CNContactListCountFooterView *)self contactCount];
    v4 = @"CONTACTS_COUNT";
LABEL_5:
    v5 = [(CNContactListCountFooterView *)self countStringForLocalizedStringKey:v4 count:contactCount];
    goto LABEL_7;
  }

  if ([(CNContactListCountFooterView *)self shouldDisplaySelectedCount])
  {
    contactCount = [(CNContactListCountFooterView *)self selectedCount];
    v4 = @"SELECTED_CONTACTS_COUNT";
    goto LABEL_5;
  }

  v5 = &stru_1F0CE7398;
LABEL_7:

  return v5;
}

- (id)countViewConfiguration
{
  plainFooterConfiguration = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
  primaryText = [(CNContactListCountFooterView *)self primaryText];
  [plainFooterConfiguration setText:primaryText];

  v5 = +[CNUIFontRepository contactListContactCountFont];
  textProperties = [plainFooterConfiguration textProperties];
  [textProperties setFont:v5];

  v7 = +[CNUIColorRepository contactListContactCountTextColor];
  textProperties2 = [plainFooterConfiguration textProperties];
  [textProperties2 setColor:v7];

  textProperties3 = [plainFooterConfiguration textProperties];
  [textProperties3 setAlignment:1];

  secondaryText = [(CNContactListCountFooterView *)self secondaryText];
  [plainFooterConfiguration setSecondaryText:secondaryText];

  v11 = +[CNUIFontRepository contactListDuplicateCountFont];
  secondaryTextProperties = [plainFooterConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v11];

  v13 = +[CNUIColorRepository contactListDuplicateCountTextColor];
  secondaryTextProperties2 = [plainFooterConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setColor:v13];

  secondaryTextProperties3 = [plainFooterConfiguration secondaryTextProperties];
  [secondaryTextProperties3 setAlignment:1];

  [plainFooterConfiguration directionalLayoutMargins];
  [plainFooterConfiguration setDirectionalLayoutMargins:15.0];

  return plainFooterConfiguration;
}

- (CNContactListCountFooterView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNContactListCountFooterView;
  v3 = [(CNContactListCountFooterView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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