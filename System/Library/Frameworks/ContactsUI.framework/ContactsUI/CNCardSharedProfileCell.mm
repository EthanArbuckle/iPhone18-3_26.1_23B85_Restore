@interface CNCardSharedProfileCell
- (CNCardSharedProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNCardSharedProfileCellActionDelegate)actionDelegate;
- (CNCardSharedProfileCellView)snapView;
- (id)variableConstraints;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setCardGroupItem:(id)item;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setSharedProfileStateOracle:(id)oracle;
- (void)updateConstraints;
- (void)updateViewsWithCardGroupItem:(id)item;
- (void)viewDidSelectDisplayPreference:(int64_t)preference;
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
  actionDelegate = [(CNCardSharedProfileCell *)self actionDelegate];
  [actionDelegate presentAvatarPosterEditor];
}

- (void)viewDidSelectDisplayPreference:(int64_t)preference
{
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:preference];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewValue:v6];
}

- (void)setSharedProfileStateOracle:(id)oracle
{
  oracleCopy = oracle;
  if (self->_sharedProfileStateOracle != oracleCopy)
  {
    v7 = oracleCopy;
    objc_storeStrong(&self->_sharedProfileStateOracle, oracle);
    snapView = [(CNCardSharedProfileCell *)self snapView];
    [snapView setSharedProfileStateOracle:v7];

    oracleCopy = v7;
  }
}

- (void)setLabelTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  snapView = [(CNCardSharedProfileCell *)self snapView];
  [snapView setLabelTextAttributes:attributesCopy];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNCardSharedProfileCell;
  [(CNContactCell *)&v4 updateConstraints];
  snapView = [(CNCardSharedProfileCell *)self snapView];
  [snapView updateConstraints];
}

- (id)variableConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  snapView = [(CNCardSharedProfileCell *)self snapView];

  if (snapView)
  {
    snapView2 = [(CNCardSharedProfileCell *)self snapView];
    leadingAnchor = [snapView2 leadingAnchor];
    contentView = [(CNCardSharedProfileCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v23;
    snapView3 = [(CNCardSharedProfileCell *)self snapView];
    trailingAnchor = [snapView3 trailingAnchor];
    contentView2 = [(CNCardSharedProfileCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v17;
    snapView4 = [(CNCardSharedProfileCell *)self snapView];
    topAnchor = [snapView4 topAnchor];
    contentView3 = [(CNCardSharedProfileCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[2] = v7;
    snapView5 = [(CNCardSharedProfileCell *)self snapView];
    bottomAnchor = [snapView5 bottomAnchor];
    contentView4 = [(CNCardSharedProfileCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    sharedProfileStateOracle = [(CNCardSharedProfileCell *)self sharedProfileStateOracle];
    [(CNCardSharedProfileCellView *)self->_snapView setSharedProfileStateOracle:sharedProfileStateOracle];

    [(CNCardSharedProfileCellView *)self->_snapView setAllowsEditing:[(CNPropertyCell *)self allowsEditing]];
    snapView = self->_snapView;
  }

  return snapView;
}

- (void)updateViewsWithCardGroupItem:(id)item
{
  itemCopy = item;
  contact = [itemCopy contact];
  snapView = [(CNCardSharedProfileCell *)self snapView];
  [snapView setContact:contact];

  snapView2 = [(CNCardSharedProfileCell *)self snapView];
  [snapView2 setPropertyItem:itemCopy];

  snapView3 = [(CNCardSharedProfileCell *)self snapView];
  [snapView3 setDelegate:self];

  contentView = [(CNCardSharedProfileCell *)self contentView];
  snapView4 = [(CNCardSharedProfileCell *)self snapView];
  [contentView addSubview:snapView4];
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CNCardSharedProfileCell;
  [(CNPropertyCell *)&v11 setCardGroupItem:itemCopy];
  objc_opt_class();
  v5 = itemCopy;
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
    contact = [v7 contact];
    contact = self->_contact;
    self->_contact = contact;
  }

  else
  {
    snapView = [(CNCardSharedProfileCell *)self snapView];
    [snapView removeFromSuperview];

    [(CNCardSharedProfileCell *)self setSnapView:0];
  }
}

- (void)setAllowsEditing:(BOOL)editing
{
  editingCopy = editing;
  snapView = [(CNCardSharedProfileCell *)self snapView];
  [snapView setAllowsEditing:editingCopy];

  v6.receiver = self;
  v6.super_class = CNCardSharedProfileCell;
  [(CNPropertyCell *)&v6 setAllowsEditing:editingCopy];
}

- (CNCardSharedProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNCardSharedProfileCell;
  v4 = [(CNPropertyCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end