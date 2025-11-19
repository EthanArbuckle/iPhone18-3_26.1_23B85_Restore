@interface CNMeCardSharedProfileCell
- (CNMeCardSharedProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNMeCardSharedProfileCellContentView)meCardSharedProfileContentView;
- (id)variableConstraints;
- (void)performDefaultAction;
- (void)setLabelTextAttributes:(id)a3;
- (void)setMeContact:(id)a3;
- (void)setUpView;
- (void)updateConstraints;
- (void)updateViews;
@end

@implementation CNMeCardSharedProfileCell

- (void)performDefaultAction
{
  objc_opt_class();
  v3 = [(CNContactCell *)self cardGroupItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 sharedProfileSettingsAction];
  [v6 setSharedProfileSettingsActionDelegate:self];

  v7 = [v5 sharedProfileSettingsAction];

  [v7 performActionWithSender:self];
}

- (void)setLabelTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [v5 setLabelTextAttributes:v4];
}

- (id)variableConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];

  if (v3)
  {
    v28 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    v26 = [v28 leadingAnchor];
    v27 = [(CNMeCardSharedProfileCell *)self contentView];
    v25 = [v27 layoutMarginsGuide];
    v24 = [v25 leadingAnchor];
    v23 = [v26 constraintEqualToAnchor:v24];
    v30[0] = v23;
    v22 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    v20 = [v22 trailingAnchor];
    v21 = [(CNMeCardSharedProfileCell *)self contentView];
    v19 = [v21 layoutMarginsGuide];
    v18 = [v19 trailingAnchor];
    v17 = [v20 constraintEqualToAnchor:v18];
    v30[1] = v17;
    v16 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    v15 = [v16 topAnchor];
    v4 = [(CNMeCardSharedProfileCell *)self contentView];
    v5 = [v4 layoutMarginsGuide];
    v6 = [v5 topAnchor];
    v7 = [v15 constraintEqualToAnchor:v6];
    v30[2] = v7;
    v8 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
    v9 = [v8 bottomAnchor];
    v10 = [(CNMeCardSharedProfileCell *)self contentView];
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

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharedProfileCell;
  [(CNContactCell *)&v4 updateConstraints];
  v3 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [v3 updateConstraints];
}

- (void)setMeContact:(id)a3
{
  v4 = a3;
  v5 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [v5 setMeContact:v4];
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
  v2 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [v2 updateView];
}

- (void)setUpView
{
  v3 = [(CNMeCardSharedProfileCell *)self contentView];
  v4 = [(CNMeCardSharedProfileCell *)self meCardSharedProfileContentView];
  [v3 addSubview:v4];

  [(CNMeCardSharedProfileCell *)self setAccessoryType:1];
  v5 = +[CNUIColorRepository contactCardDisclosureAccessoryTintColor];
  [(CNMeCardSharedProfileCell *)self _setAccessoryTintColor:v5];
}

- (CNMeCardSharedProfileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNMeCardSharedProfileCell;
  v4 = [(CNLabeledCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNMeCardSharedProfileCell *)v4 setUpView];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_nicknameStoreDidChange name:*MEMORY[0x1E695CBE8] object:0];

    v7 = v5;
  }

  return v5;
}

@end