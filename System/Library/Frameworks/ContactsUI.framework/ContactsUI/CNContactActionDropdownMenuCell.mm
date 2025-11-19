@interface CNContactActionDropdownMenuCell
- (CNContactActionDropdownMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIContextMenuInteraction)contextMenuInteraction;
- (void)prepareForReuse;
- (void)setMenuProvider:(id)a3;
@end

@implementation CNContactActionDropdownMenuCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactActionDropdownMenuCell;
  [(CNContactCell *)&v4 prepareForReuse];
  [(CNContactActionDropdownMenuCell *)self setMenuProvider:0];
  v3 = [(CNContactActionDropdownMenuCell *)self button];
  [v3 setHidden:1];
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  v2 = [(CNContactActionDropdownMenuCell *)self button];
  v3 = [v2 contextMenuInteraction];

  return v3;
}

- (void)setMenuProvider:(id)a3
{
  if (self->_menuProvider != a3)
  {
    v5 = _Block_copy(a3);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v5;

    v7 = [(CNContactActionDropdownMenuCell *)self menuProvider];
    v8 = [(CNContactActionDropdownMenuCell *)self button];
    [v8 _setMenuProvider:v7];

    v9 = [(CNContactActionDropdownMenuCell *)self button];
    [v9 setHidden:a3 == 0];
  }
}

- (CNContactActionDropdownMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34[4] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CNContactActionDropdownMenuCell;
  v4 = [(CNLabeledCell *)&v33 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(CNContactActionDropdownMenuButton);
    [(CNContactActionDropdownMenuCell *)v4 setButton:v5];

    v6 = [(CNContactActionDropdownMenuCell *)v4 button];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(CNContactActionDropdownMenuCell *)v4 button];
    [v7 setShowsMenuAsPrimaryAction:1];

    v8 = [(CNContactActionDropdownMenuCell *)v4 menuProvider];
    v9 = [(CNContactActionDropdownMenuCell *)v4 button];
    [v9 _setMenuProvider:v8];

    v10 = [(CNContactActionDropdownMenuCell *)v4 menuProvider];
    v11 = [(CNContactActionDropdownMenuCell *)v4 button];
    [v11 setHidden:v10 == 0];

    v12 = [(CNContactActionDropdownMenuCell *)v4 button];
    [(CNContactActionDropdownMenuCell *)v4 addSubview:v12];

    v25 = MEMORY[0x1E696ACD8];
    v32 = [(CNContactActionDropdownMenuCell *)v4 button];
    v31 = [v32 leftAnchor];
    v30 = [(CNContactActionDropdownMenuCell *)v4 leftAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [(CNContactActionDropdownMenuCell *)v4 button];
    v27 = [v28 rightAnchor];
    v26 = [(CNContactActionDropdownMenuCell *)v4 rightAnchor];
    v24 = [v27 constraintEqualToAnchor:v26];
    v34[1] = v24;
    v13 = [(CNContactActionDropdownMenuCell *)v4 button];
    v14 = [v13 topAnchor];
    v15 = [(CNContactActionDropdownMenuCell *)v4 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v34[2] = v16;
    v17 = [(CNContactActionDropdownMenuCell *)v4 button];
    v18 = [v17 bottomAnchor];
    v19 = [(CNContactActionDropdownMenuCell *)v4 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v34[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v25 activateConstraints:v21];

    v22 = v4;
  }

  return v4;
}

@end