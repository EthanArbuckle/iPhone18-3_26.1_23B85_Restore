@interface CNStaticIdentityCell
- (BOOL)isValueTextValid;
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)a3;
- (void)setValueTextAttributes:(id)a3;
- (void)updateConstraints;
@end

@implementation CNStaticIdentityCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CNStaticIdentityCell;
  [(CNContactCell *)&v3 updateConstraints];
  -[UILabel setNumberOfLines:](self->_labelLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
  -[UILabel setNumberOfLines:](self->_valueLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNStaticIdentityCell;
  v5 = [(CNContactCell *)&v12 cardGroupItem];

  if (v5 != v4)
  {
    v11.receiver = self;
    v11.super_class = CNStaticIdentityCell;
    [(CNContactCell *)&v11 setCardGroupItem:v4];
    v6 = [v4 identity];
    if (v6)
    {
      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"CARD_ACTION_SHOW_STATIC_IDENTITY" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
      v9 = [(CNStaticIdentityCell *)self labelLabel];
      [v9 setText:v8];

      v10 = [(CNStaticIdentityCell *)self valueLabel];
      [v10 setText:v6];
    }
  }
}

- (void)performDefaultAction
{
  v4 = [(CNStaticIdentityCell *)self delegate];
  v3 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:0];
}

- (BOOL)isValueTextValid
{
  v2 = [(CNStaticIdentityCell *)self valueLabel];
  v3 = [v2 text];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E6996BC8] isValidStaticKeyString:v3];
  }

  return v4;
}

- (void)setValueTextAttributes:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:0];
  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedSystemFontOfSize:? weight:?];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if ([(CNStaticIdentityCell *)self isValueTextValid])
  {
    +[CNUIColorRepository contactCardStaticIdentityValidTextColor];
  }

  else
  {
    +[CNUIColorRepository contactCardStaticIdentityInvalidTextColor];
  }
  v8 = ;
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v9.receiver = self;
  v9.super_class = CNStaticIdentityCell;
  [(CNLabeledCell *)&v9 setValueTextAttributes:v4];
}

- (id)valueView
{
  valueLabel = self->_valueLabel;
  if (!valueLabel)
  {
    v4 = [(CNLabeledCell *)self standardValueView];
    v5 = self->_valueLabel;
    self->_valueLabel = v4;

    [(CNLabeledCell *)self setValueViewNeedsHuggingContent:0];
    valueLabel = self->_valueLabel;
  }

  return valueLabel;
}

- (id)labelView
{
  labelLabel = self->_labelLabel;
  if (!labelLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_labelLabel;
    self->_labelLabel = v4;

    labelLabel = self->_labelLabel;
  }

  return labelLabel;
}

@end