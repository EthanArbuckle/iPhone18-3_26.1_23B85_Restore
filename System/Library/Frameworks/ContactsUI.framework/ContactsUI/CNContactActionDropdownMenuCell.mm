@interface CNContactActionDropdownMenuCell
- (CNContactActionDropdownMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIContextMenuInteraction)contextMenuInteraction;
- (void)prepareForReuse;
- (void)setMenuProvider:(id)provider;
@end

@implementation CNContactActionDropdownMenuCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactActionDropdownMenuCell;
  [(CNContactCell *)&v4 prepareForReuse];
  [(CNContactActionDropdownMenuCell *)self setMenuProvider:0];
  button = [(CNContactActionDropdownMenuCell *)self button];
  [button setHidden:1];
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  button = [(CNContactActionDropdownMenuCell *)self button];
  contextMenuInteraction = [button contextMenuInteraction];

  return contextMenuInteraction;
}

- (void)setMenuProvider:(id)provider
{
  if (self->_menuProvider != provider)
  {
    v5 = _Block_copy(provider);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v5;

    menuProvider = [(CNContactActionDropdownMenuCell *)self menuProvider];
    button = [(CNContactActionDropdownMenuCell *)self button];
    [button _setMenuProvider:menuProvider];

    button2 = [(CNContactActionDropdownMenuCell *)self button];
    [button2 setHidden:provider == 0];
  }
}

- (CNContactActionDropdownMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34[4] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CNContactActionDropdownMenuCell;
  v4 = [(CNLabeledCell *)&v33 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(CNContactActionDropdownMenuButton);
    [(CNContactActionDropdownMenuCell *)v4 setButton:v5];

    button = [(CNContactActionDropdownMenuCell *)v4 button];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];

    button2 = [(CNContactActionDropdownMenuCell *)v4 button];
    [button2 setShowsMenuAsPrimaryAction:1];

    menuProvider = [(CNContactActionDropdownMenuCell *)v4 menuProvider];
    button3 = [(CNContactActionDropdownMenuCell *)v4 button];
    [button3 _setMenuProvider:menuProvider];

    menuProvider2 = [(CNContactActionDropdownMenuCell *)v4 menuProvider];
    button4 = [(CNContactActionDropdownMenuCell *)v4 button];
    [button4 setHidden:menuProvider2 == 0];

    button5 = [(CNContactActionDropdownMenuCell *)v4 button];
    [(CNContactActionDropdownMenuCell *)v4 addSubview:button5];

    v25 = MEMORY[0x1E696ACD8];
    button6 = [(CNContactActionDropdownMenuCell *)v4 button];
    leftAnchor = [button6 leftAnchor];
    leftAnchor2 = [(CNContactActionDropdownMenuCell *)v4 leftAnchor];
    v29 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v34[0] = v29;
    button7 = [(CNContactActionDropdownMenuCell *)v4 button];
    rightAnchor = [button7 rightAnchor];
    rightAnchor2 = [(CNContactActionDropdownMenuCell *)v4 rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v34[1] = v24;
    button8 = [(CNContactActionDropdownMenuCell *)v4 button];
    topAnchor = [button8 topAnchor];
    topAnchor2 = [(CNContactActionDropdownMenuCell *)v4 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[2] = v16;
    button9 = [(CNContactActionDropdownMenuCell *)v4 button];
    bottomAnchor = [button9 bottomAnchor];
    bottomAnchor2 = [(CNContactActionDropdownMenuCell *)v4 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v25 activateConstraints:v21];

    v22 = v4;
  }

  return v4;
}

@end