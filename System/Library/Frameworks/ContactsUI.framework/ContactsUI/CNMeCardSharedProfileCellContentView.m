@interface CNMeCardSharedProfileCellContentView
+ (id)log;
- (CNMeCardSharedProfileCellContentView)init;
- (id)displayStringForSharingAudience;
- (void)setAvatarHidden:(BOOL)a3;
- (void)setLabelTextAttributes:(id)a3;
- (void)setMeContact:(id)a3;
- (void)setUpAvatarView;
- (void)setUpLabels;
- (void)setupConstraints;
- (void)setupViews;
- (void)updateAvatarViewContact;
- (void)updateConstraints;
- (void)updateView;
@end

@implementation CNMeCardSharedProfileCellContentView

- (void)setLabelTextAttributes:(id)a3
{
  v10 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v10)
  {
    v4 = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
    v5 = [v4 font];

    if (v5 != v10)
    {
      v6 = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
      [v6 setFont:v10];
    }

    v7 = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
    v8 = [v7 font];

    if (v8 != v10)
    {
      v9 = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
      [v9 setFont:v10];
    }
  }
}

- (void)updateView
{
  v3 = [(CNMeCardSharedProfileCellContentView *)self displayStringForSharingAudience];
  v4 = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
  [v4 setText:v3];

  [(CNMeCardSharedProfileCellContentView *)self updateAvatarViewContact];
}

- (void)setupConstraints
{
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  }

  v3 = objc_opt_new();
  v4 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  v5 = [v4 centerYAnchor];
  v6 = [(CNMeCardSharedProfileCellContentView *)self centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [(NSArray *)v3 addObject:v7];

  v8 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  v9 = [v8 topAnchor];
  v10 = [(CNMeCardSharedProfileCellContentView *)self topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];
  [(NSArray *)v3 addObject:v11];

  v12 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  v13 = [v12 bottomAnchor];
  v14 = [(CNMeCardSharedProfileCellContentView *)self bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
  [(NSArray *)v3 addObject:v15];

  v16 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  v17 = [v16 trailingAnchor];
  v18 = [(CNMeCardSharedProfileCellContentView *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [(NSArray *)v3 addObject:v19];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v20 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
    v21 = [v20 leadingAnchor];
    v22 = [(CNMeCardSharedProfileCellContentView *)self leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(NSArray *)v3 addObject:v23];
  }

  else
  {
    v24 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v25 = [v24 centerYAnchor];
    v26 = [(CNMeCardSharedProfileCellContentView *)self centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [(NSArray *)v3 addObject:v27];

    v28 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v29 = [v28 leadingAnchor];
    v30 = [(CNMeCardSharedProfileCellContentView *)self leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [(NSArray *)v3 addObject:v31];

    v32 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v33 = [v32 heightAnchor];
    v34 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v35 = [v34 widthAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [(NSArray *)v3 addObject:v36];

    v37 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v38 = [v37 heightAnchor];
    v39 = [v38 constraintEqualToConstant:40.0];
    [(NSArray *)v3 addObject:v39];

    v20 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
    v21 = [v20 leadingAnchor];
    v22 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    v23 = [v22 trailingAnchor];
    v40 = [v21 constraintEqualToSystemSpacingAfterAnchor:v23 multiplier:1.0];
    [(NSArray *)v3 addObject:v40];
  }

  constraints = self->_constraints;
  self->_constraints = v3;
  v42 = v3;

  [MEMORY[0x1E696ACD8] activateConstraints:v42];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CNMeCardSharedProfileCellContentView;
  [(CNMeCardSharedProfileCellContentView *)&v3 updateConstraints];
  -[CNMeCardSharedProfileCellContentView setAvatarHidden:](self, "setAvatarHidden:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory]);
}

- (void)setAvatarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
  v6 = [v5 isHidden];

  if (v6 != v3)
  {
    v7 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    [v7 setHidden:v3];

    [(CNMeCardSharedProfileCellContentView *)self setupConstraints];
  }
}

- (void)setMeContact:(id)a3
{
  v5 = a3;
  if (self->_meContact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_meContact, a3);
    [(CNMeCardSharedProfileCellContentView *)self updateView];
    v5 = v6;
  }
}

- (void)updateAvatarViewContact
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 nicknameProvider];
  v5 = [v4 isNicknameSharingEnabled];

  if (v5)
  {
    objc_initWeak(location, self);
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CNMeCardSharedProfileCellContentView_updateAvatarViewContact__block_invoke;
    v12[3] = &unk_1E74E3590;
    objc_copyWeak(&v13, location);
    [v7 fetchPersonalNicknameAsContactWithCompletion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "Sharing is disabled, using Me contact for shared profile row", location, 2u);
    }

    v9 = [(CNMeCardSharedProfileCellContentView *)self meContact];

    if (v9)
    {
      v10 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
      v11 = [(CNMeCardSharedProfileCellContentView *)self meContact];
      [v10 setContact:v11];
    }
  }
}

void __63__CNMeCardSharedProfileCellContentView_updateAvatarViewContact__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = v3;
LABEL_7:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__CNMeCardSharedProfileCellContentView_updateAvatarViewContact__block_invoke_20;
    v9[3] = &unk_1E74E77C0;
    v9[4] = WeakRetained;
    v10 = v5;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v9);

    goto LABEL_8;
  }

  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "No personal nickname contact found, using Me contact for shared profile row", buf, 2u);
  }

  v7 = [WeakRetained meContact];

  if (v7)
  {
    v5 = [WeakRetained meContact];
    goto LABEL_7;
  }

LABEL_8:
}

void __63__CNMeCardSharedProfileCellContentView_updateAvatarViewContact__block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarView];
  [v2 setContact:*(a1 + 40)];
}

- (id)displayStringForSharingAudience
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 nicknameProvider];
  v4 = [v3 isNicknameSharingEnabled];

  if (v4)
  {
    objc_opt_class();
    v5 = [MEMORY[0x1E69966E8] currentEnvironment];
    v6 = [v5 nicknameProvider];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 sharingAudienceDisplayString];
  }

  else
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_DISABLED" value:&stru_1F0CE7398 table:@"Localized"];
  }

  v10 = v9;

  return v10;
}

- (void)setUpLabels
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 setFont:v5];

  [v3 setNumberOfLines:0];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_CONTACT_CARD_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [v3 setText:v7];

  [(CNMeCardSharedProfileCellContentView *)self addSubview:v3];
  [(CNMeCardSharedProfileCellContentView *)self setTitleLabel:v3];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:v4];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  v10 = [(CNMeCardSharedProfileCellContentView *)self displayStringForSharingAudience];
  [v8 setText:v10];

  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:v11];

  [(CNMeCardSharedProfileCellContentView *)self addSubview:v8];
  [(CNMeCardSharedProfileCellContentView *)self setValueLabel:v8];
  v12 = objc_alloc(MEMORY[0x1E69DCF90]);
  v13 = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
  v17[0] = v13;
  v14 = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v16 = [v12 initWithArrangedSubviews:v15];

  [v16 setAxis:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNMeCardSharedProfileCellContentView *)self addSubview:v16];
  [(CNMeCardSharedProfileCellContentView *)self setLabelStackView:v16];
}

- (void)setUpAvatarView
{
  v3 = objc_alloc_init(CNAvatarView);
  [(CNAvatarView *)v3 setShouldFetchSharedMeContactPhoto:1];
  [(CNAvatarView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNMeCardSharedProfileCellContentView *)self addSubview:v3];
  [(CNMeCardSharedProfileCellContentView *)self setAvatarView:v3];
}

- (void)setupViews
{
  [(CNMeCardSharedProfileCellContentView *)self setUpAvatarView];

  [(CNMeCardSharedProfileCellContentView *)self setUpLabels];
}

- (CNMeCardSharedProfileCellContentView)init
{
  v6.receiver = self;
  v6.super_class = CNMeCardSharedProfileCellContentView;
  v2 = [(CNMeCardSharedProfileCellContentView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CNMeCardSharedProfileCellContentView *)v2 setupViews];
    [(CNMeCardSharedProfileCellContentView *)v3 setupConstraints];
    v4 = v3;
  }

  return v3;
}

+ (id)log
{
  if (log_cn_once_token_1_25761 != -1)
  {
    dispatch_once(&log_cn_once_token_1_25761, &__block_literal_global_25762);
  }

  v3 = log_cn_once_object_1_25763;

  return v3;
}

uint64_t __43__CNMeCardSharedProfileCellContentView_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNMeCardSharedProfileCellContentView");
  v1 = log_cn_once_object_1_25763;
  log_cn_once_object_1_25763 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end