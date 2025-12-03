@interface MFMailboxFilterPickerSwitchCell
- (MFMailboxFilterPickerSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MFMailboxFilterPickerSwitchCellDelegate)delegate;
- (void)_handleSwitchValueChange;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation MFMailboxFilterPickerSwitchCell

- (MFMailboxFilterPickerSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MFMailboxFilterPickerSwitchCell;
  v7 = [(MFMailboxFilterPickerCell *)&v11 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc_init(UISwitch);
    selectionSwitch = v7->_selectionSwitch;
    v7->_selectionSwitch = v8;

    [(UISwitch *)v7->_selectionSwitch addTarget:v7 action:"_handleSwitchValueChange" forControlEvents:4096];
    [(MFMailboxFilterPickerSwitchCell *)v7 setAccessoryView:v7->_selectionSwitch];
  }

  return v7;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerSwitchCell;
  [(MFMailboxFilterPickerSwitchCell *)&v7 setSelected:selected animated:animated];
  selectionSwitch = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
  [selectionSwitch setOn:selectedCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MFMailboxFilterPickerSwitchCell;
  [(MFMailboxFilterPickerSwitchCell *)&v3 prepareForReuse];
  [(MFMailboxFilterPickerSwitchCell *)self setDelegate:0];
}

- (void)_handleSwitchValueChange
{
  selectionSwitch = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
  -[MFMailboxFilterPickerSwitchCell setSelected:](self, "setSelected:", [selectionSwitch isOn]);

  delegate = [(MFMailboxFilterPickerSwitchCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selectionSwitch2 = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
    [delegate mailboxFilterPickerSwitchCell:self valueDidChange:{objc_msgSend(selectionSwitch2, "isOn")}];
  }
}

- (MFMailboxFilterPickerSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end