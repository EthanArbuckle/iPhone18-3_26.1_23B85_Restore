@interface MFMailboxFilterPickerSwitchCell
- (MFMailboxFilterPickerSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MFMailboxFilterPickerSwitchCellDelegate)delegate;
- (void)_handleSwitchValueChange;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MFMailboxFilterPickerSwitchCell

- (MFMailboxFilterPickerSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MFMailboxFilterPickerSwitchCell;
  v7 = [(MFMailboxFilterPickerCell *)&v11 initWithStyle:a3 reuseIdentifier:v6];
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerSwitchCell;
  [(MFMailboxFilterPickerSwitchCell *)&v7 setSelected:a3 animated:a4];
  v6 = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
  [v6 setOn:v4];
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
  v4 = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
  -[MFMailboxFilterPickerSwitchCell setSelected:](self, "setSelected:", [v4 isOn]);

  v5 = [(MFMailboxFilterPickerSwitchCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MFMailboxFilterPickerSwitchCell *)self selectionSwitch];
    [v5 mailboxFilterPickerSwitchCell:self valueDidChange:{objc_msgSend(v3, "isOn")}];
  }
}

- (MFMailboxFilterPickerSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end