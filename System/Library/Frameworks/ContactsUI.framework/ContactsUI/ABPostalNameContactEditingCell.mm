@interface ABPostalNameContactEditingCell
- (ABPostalNameContactEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_cnui_applyContactStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCardGroupItem:(id)item;
- (void)textFieldDidChange:(id)change;
@end

@implementation ABPostalNameContactEditingCell

- (void)_cnui_applyContactStyle
{
  v3.receiver = self;
  v3.super_class = ABPostalNameContactEditingCell;
  [(UITableViewCell *)&v3 _cnui_applyContactStyle];
  [(UITextField *)self->_editingTextField _cnui_applyContactStyle];
}

- (void)textFieldDidChange:(id)change
{
  object = [change object];
  editingTextField = self->_editingTextField;

  if (object == editingTextField)
  {
    cardGroupItem = [(CNContactCell *)self cardGroupItem];
    contact = [cardGroupItem contact];
    setter = [cardGroupItem setter];
    text = [(UITextField *)self->_editingTextField text];
    [contact setter];

    text2 = [(UITextField *)self->_editingTextField text];
    [cardGroupItem setValue:text2];
  }
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = ABPostalNameContactEditingCell;
  [(CNContactCell *)&v10 setCardGroupItem:itemCopy];
  editingTextField = self->_editingTextField;
  v6 = itemCopy;
  value = [v6 value];
  [(UITextField *)editingTextField setText:value];

  v8 = self->_editingTextField;
  placeholder = [v6 placeholder];

  [(UITextField *)v8 setPlaceholder:placeholder];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = ABPostalNameContactEditingCell;
  [(CNContactCell *)&v3 prepareForReuse];
  [(UITextField *)self->_editingTextField setText:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = ABPostalNameContactEditingCell;
  [(ABPostalNameContactEditingCell *)&v14 layoutSubviews];
  contentView = [(ABPostalNameContactEditingCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  LOBYTE(contentView) = [(ABPostalNameContactEditingCell *)self _shouldReverseLayoutDirection];
  [(ABPostalNameContactEditingCell *)self separatorInset];
  if (contentView)
  {
    v12 = v11;
    [(ABPostalNameContactEditingCell *)self separatorInset];
    v7 = v7 - v13 + -32.0;
    v10 = v12;
  }

  [(UITextField *)self->_editingTextField setFrame:v10 + 16.0, v5, v7, v9];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5C0] object:self->_editingTextField];

  v4.receiver = self;
  v4.super_class = ABPostalNameContactEditingCell;
  [(CNContactCell *)&v4 dealloc];
}

- (ABPostalNameContactEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = ABPostalNameContactEditingCell;
  v4 = [(CNContactCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    editingTextField = v4->_editingTextField;
    v4->_editingTextField = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:v4->_editingTextField];

    contentView = [(ABPostalNameContactEditingCell *)v4 contentView];
    [contentView addSubview:v4->_editingTextField];
  }

  return v4;
}

@end