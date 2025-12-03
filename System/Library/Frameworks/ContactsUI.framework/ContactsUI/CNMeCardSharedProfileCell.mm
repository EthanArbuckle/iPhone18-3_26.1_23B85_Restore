@interface CNMeCardSharedProfileCell
- (CNMeCardSharedProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNMeCardSharedProfileCellContentView)meCardSharedProfileContentView;
- (id)variableConstraints;
- (void)performDefaultAction;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setMeContact:(id)contact;
- (void)setUpView;
- (void)updateConstraints;
- (void)updateViews;
@end

@implementation CNMeCardSharedProfileCell

- (void)performDefaultAction
{
  objc_opt_class();
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = cardGroupItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  sharedProfileSettingsAction = [v5 sharedProfileSettingsAction];
  [sharedProfileSettingsAction setSharedProfileSettingsActionDelegate:self];

  sharedProfileSettingsAction2 = [v5 sharedProfileSettingsAction];

  [sharedProfileSettingsAction2 performActionWithSender:self];
}

- (void)setLabelTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [meCardSharedProfileContentView setLabelTextAttributes:attributesCopy];
}

- (id)variableConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];

  if (meCardSharedProfileContentView)
  {
    meCardSharedProfileContentView2 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    leadingAnchor = [meCardSharedProfileContentView2 leadingAnchor];
    contentView = [(CNMeCardSharedProfileCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v23;
    meCardSharedProfileContentView3 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    trailingAnchor = [meCardSharedProfileContentView3 trailingAnchor];
    contentView2 = [(CNMeCardSharedProfileCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v17;
    meCardSharedProfileContentView4 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    topAnchor = [meCardSharedProfileContentView4 topAnchor];
    contentView3 = [(CNMeCardSharedProfileCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[2] = v7;
    meCardSharedProfileContentView5 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    bottomAnchor = [meCardSharedProfileContentView5 bottomAnchor];
    contentView4 = [(CNMeCardSharedProfileCell *)self contentView];
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

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharedProfileCell;
  [(CNContactCell *)&v4 updateConstraints];
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [meCardSharedProfileContentView updateConstraints];
}

- (void)setMeContact:(id)contact
{
  contactCopy = contact;
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [meCardSharedProfileContentView setMeContact:contactCopy];
}

- (CNMeCardSharedProfileCellContentView)meCardSharedProfileContentView
{
  meCardSharedProfileContentView = self->_meCardSharedProfileContentView;
  if (!meCardSharedProfileContentView)
  {
    v4 = objc_alloc_init(CNMeCardSharedProfileCellContentView);
    v5 = self->_meCardSharedProfileContentView;
    self->_meCardSharedProfileContentView = v4;

    [(CNMeCardSharedProfileCellContentView *)self->_meCardSharedProfileContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    meCardSharedProfileContentView = self->_meCardSharedProfileContentView;
  }

  return meCardSharedProfileContentView;
}

- (void)updateViews
{
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [meCardSharedProfileContentView updateView];
}

- (void)setUpView
{
  contentView = [(CNMeCardSharedProfileCell *)self contentView];
  meCardSharedProfileContentView = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [contentView addSubview:meCardSharedProfileContentView];

  [(CNMeCardSharedProfileCell *)self setAccessoryType:1];
  v5 = +[CNUIColorRepository contactCardDisclosureAccessoryTintColor];
  [(CNMeCardSharedProfileCell *)self _setAccessoryTintColor:v5];
}

- (CNMeCardSharedProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNMeCardSharedProfileCell;
  v4 = [(CNLabeledCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNMeCardSharedProfileCell *)v4 setUpView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_nicknameStoreDidChange name:*MEMORY[0x1E695CBE8] object:0];

    v7 = v5;
  }

  return v5;
}

@end