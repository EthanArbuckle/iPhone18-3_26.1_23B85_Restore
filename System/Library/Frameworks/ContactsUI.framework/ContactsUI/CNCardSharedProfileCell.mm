@interface CNCardSharedProfileCell
- (CNCardSharedProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNCardSharedProfileCellActionDelegate)actionDelegate;
- (CNCardSharedProfileCellView)snapView;
- (id)variableConstraints;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setCardGroupItem:(id)a3;
- (void)setLabelTextAttributes:(id)a3;
- (void)setSharedProfileStateOracle:(id)a3;
- (void)updateConstraints;
- (void)updateViewsWithCardGroupItem:(id)a3;
- (void)viewDidSelectDisplayPreference:(int64_t)a3;
- (void)viewDidSelectFallbackAction;
@end

@implementation CNCardSharedProfileCell

- (CNCardSharedProfileCellActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)viewDidSelectFallbackAction
{
  v2 = [(CNCardSharedProfileCell *)self actionDelegate];
  [v2 presentAvatarPosterEditor];
}

- (void)viewDidSelectDisplayPreference:(int64_t)a3
{
  v7 = [(CNPropertyCell *)self delegate];
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 propertyCell:self didUpdateItem:v5 withNewValue:v6];
}

- (void)setSharedProfileStateOracle:(id)a3
{
  v5 = a3;
  if (self->_sharedProfileStateOracle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sharedProfileStateOracle, a3);
    v6 = [(CNCardSharedProfileCell *)self snapView];
    [v6 setSharedProfileStateOracle:v7];

    v5 = v7;
  }
}

- (void)setLabelTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(CNCardSharedProfileCell *)self snapView];
  [v5 setLabelTextAttributes:v4];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNCardSharedProfileCell;
  [(CNContactCell *)&v4 updateConstraints];
  v3 = [(CNCardSharedProfileCell *)self snapView];
  [v3 updateConstraints];
}

- (id)variableConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNCardSharedProfileCell *)self snapView];

  if (v3)
  {
    v28 = [(CNCardSharedProfileCell *)self snapView];
    v26 = [v28 leadingAnchor];
    v27 = [(CNCardSharedProfileCell *)self contentView];
    v25 = [v27 layoutMarginsGuide];
    v24 = [v25 leadingAnchor];
    v23 = [v26 constraintEqualToAnchor:v24];
    v30[0] = v23;
    v22 = [(CNCardSharedProfileCell *)self snapView];
    v20 = [v22 trailingAnchor];
    v21 = [(CNCardSharedProfileCell *)self contentView];
    v19 = [v21 layoutMarginsGuide];
    v18 = [v19 trailingAnchor];
    v17 = [v20 constraintEqualToAnchor:v18];
    v30[1] = v17;
    v16 = [(CNCardSharedProfileCell *)self snapView];
    v15 = [v16 topAnchor];
    v4 = [(CNCardSharedProfileCell *)self contentView];
    v5 = [v4 layoutMarginsGuide];
    v6 = [v5 topAnchor];
    v7 = [v15 constraintEqualToAnchor:v6];
    v30[2] = v7;
    v8 = [(CNCardSharedProfileCell *)self snapView];
    v9 = [v8 bottomAnchor];
    v10 = [(CNCardSharedProfileCell *)self contentView];
    v11 = [v10 layoutMarginsGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v9 constraintEqualToAnchor:v12];
    v30[3] = v13;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  }

  else
  {
    v29 = MEMORY[0x1E695E0F0];
  }

  return v29;
}

- (CNCardSharedProfileCellView)snapView
{
  snapView = self->_snapView;
  if (!snapView)
  {
    v4 = objc_alloc_init(CNCardSharedProfileCellView);
    v5 = self->_snapView;
    self->_snapView = v4;

    [(CNCardSharedProfileCellView *)self->_snapView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(CNCardSharedProfileCell *)self sharedProfileStateOracle];
    [(CNCardSharedProfileCellView *)self->_snapView setSharedProfileStateOracle:v6];

    [(CNCardSharedProfileCellView *)self->_snapView setAllowsEditing:[(CNPropertyCell *)self allowsEditing]];
    snapView = self->_snapView;
  }

  return snapView;
}

- (void)updateViewsWithCardGroupItem:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [(CNCardSharedProfileCell *)self snapView];
  [v6 setContact:v5];

  v7 = [(CNCardSharedProfileCell *)self snapView];
  [v7 setPropertyItem:v4];

  v8 = [(CNCardSharedProfileCell *)self snapView];
  [v8 setDelegate:self];

  v10 = [(CNCardSharedProfileCell *)self contentView];
  v9 = [(CNCardSharedProfileCell *)self snapView];
  [v10 addSubview:v9];
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNCardSharedProfileCell;
  [(CNPropertyCell *)&v11 setCardGroupItem:v4];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(CNCardSharedProfileCell *)self updateViewsWithCardGroupItem:v7];
    v8 = [v7 contact];
    contact = self->_contact;
    self->_contact = v8;
  }

  else
  {
    v10 = [(CNCardSharedProfileCell *)self snapView];
    [v10 removeFromSuperview];

    [(CNCardSharedProfileCell *)self setSnapView:0];
  }
}

- (void)setAllowsEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNCardSharedProfileCell *)self snapView];
  [v5 setAllowsEditing:v3];

  v6.receiver = self;
  v6.super_class = CNCardSharedProfileCell;
  [(CNPropertyCell *)&v6 setAllowsEditing:v3];
}

- (CNCardSharedProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNCardSharedProfileCell;
  v4 = [(CNPropertyCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end