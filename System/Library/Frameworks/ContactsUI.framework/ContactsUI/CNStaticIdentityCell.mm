@interface CNStaticIdentityCell
- (BOOL)isValueTextValid;
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)item;
- (void)setValueTextAttributes:(id)attributes;
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

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = CNStaticIdentityCell;
  cardGroupItem = [(CNContactCell *)&v12 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v11.receiver = self;
    v11.super_class = CNStaticIdentityCell;
    [(CNContactCell *)&v11 setCardGroupItem:itemCopy];
    identity = [itemCopy identity];
    if (identity)
    {
      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"CARD_ACTION_SHOW_STATIC_IDENTITY" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
      labelLabel = [(CNStaticIdentityCell *)self labelLabel];
      [labelLabel setText:v8];

      valueLabel = [(CNStaticIdentityCell *)self valueLabel];
      [valueLabel setText:identity];
    }
  }
}

- (void)performDefaultAction
{
  delegate = [(CNStaticIdentityCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

- (BOOL)isValueTextValid
{
  valueLabel = [(CNStaticIdentityCell *)self valueLabel];
  text = [valueLabel text];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E6996BC8] isValidStaticKeyString:text];
  }

  return v4;
}

- (void)setValueTextAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
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
    standardValueView = [(CNLabeledCell *)self standardValueView];
    v5 = self->_valueLabel;
    self->_valueLabel = standardValueView;

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
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_labelLabel;
    self->_labelLabel = standardLabelView;

    labelLabel = self->_labelLabel;
  }

  return labelLabel;
}

@end