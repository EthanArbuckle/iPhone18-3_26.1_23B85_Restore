@interface CNMeCardSharedProfileCellContentView
+ (id)log;
- (CNMeCardSharedProfileCellContentView)init;
- (id)displayStringForSharingAudience;
- (void)setAvatarHidden:(BOOL)hidden;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setMeContact:(id)contact;
- (void)setUpAvatarView;
- (void)setUpLabels;
- (void)setupConstraints;
- (void)setupViews;
- (void)updateAvatarViewContact;
- (void)updateConstraints;
- (void)updateView;
@end

@implementation CNMeCardSharedProfileCellContentView

- (void)setLabelTextAttributes:(id)attributes
{
  v10 = [attributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v10)
  {
    titleLabel = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
    font = [titleLabel font];

    if (font != v10)
    {
      titleLabel2 = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
      [titleLabel2 setFont:v10];
    }

    valueLabel = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
    font2 = [valueLabel font];

    if (font2 != v10)
    {
      valueLabel2 = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
      [valueLabel2 setFont:v10];
    }
  }
}

- (void)updateView
{
  displayStringForSharingAudience = [(CNMeCardSharedProfileCellContentView *)self displayStringForSharingAudience];
  valueLabel = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
  [valueLabel setText:displayStringForSharingAudience];

  [(CNMeCardSharedProfileCellContentView *)self updateAvatarViewContact];
}

- (void)setupConstraints
{
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  }

  v3 = objc_opt_new();
  labelStackView = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  centerYAnchor = [labelStackView centerYAnchor];
  centerYAnchor2 = [(CNMeCardSharedProfileCellContentView *)self centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v3 addObject:v7];

  labelStackView2 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  topAnchor = [labelStackView2 topAnchor];
  topAnchor2 = [(CNMeCardSharedProfileCellContentView *)self topAnchor];
  v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [(NSArray *)v3 addObject:v11];

  labelStackView3 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  bottomAnchor = [labelStackView3 bottomAnchor];
  bottomAnchor2 = [(CNMeCardSharedProfileCellContentView *)self bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  [(NSArray *)v3 addObject:v15];

  labelStackView4 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
  trailingAnchor = [labelStackView4 trailingAnchor];
  trailingAnchor2 = [(CNMeCardSharedProfileCellContentView *)self trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(NSArray *)v3 addObject:v19];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    labelStackView5 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
    leadingAnchor = [labelStackView5 leadingAnchor];
    leadingAnchor2 = [(CNMeCardSharedProfileCellContentView *)self leadingAnchor];
    trailingAnchor3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSArray *)v3 addObject:trailingAnchor3];
  }

  else
  {
    avatarView = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    centerYAnchor3 = [avatarView centerYAnchor];
    centerYAnchor4 = [(CNMeCardSharedProfileCellContentView *)self centerYAnchor];
    v27 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [(NSArray *)v3 addObject:v27];

    avatarView2 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    leadingAnchor3 = [avatarView2 leadingAnchor];
    leadingAnchor4 = [(CNMeCardSharedProfileCellContentView *)self leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [(NSArray *)v3 addObject:v31];

    avatarView3 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    heightAnchor = [avatarView3 heightAnchor];
    avatarView4 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    widthAnchor = [avatarView4 widthAnchor];
    v36 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    [(NSArray *)v3 addObject:v36];

    avatarView5 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    heightAnchor2 = [avatarView5 heightAnchor];
    v39 = [heightAnchor2 constraintEqualToConstant:40.0];
    [(NSArray *)v3 addObject:v39];

    labelStackView5 = [(CNMeCardSharedProfileCellContentView *)self labelStackView];
    leadingAnchor = [labelStackView5 leadingAnchor];
    leadingAnchor2 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    trailingAnchor3 = [leadingAnchor2 trailingAnchor];
    v40 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
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

- (void)setAvatarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  avatarView = [(CNMeCardSharedProfileCellContentView *)self avatarView];
  isHidden = [avatarView isHidden];

  if (isHidden != hiddenCopy)
  {
    avatarView2 = [(CNMeCardSharedProfileCellContentView *)self avatarView];
    [avatarView2 setHidden:hiddenCopy];

    [(CNMeCardSharedProfileCellContentView *)self setupConstraints];
  }
}

- (void)setMeContact:(id)contact
{
  contactCopy = contact;
  if (self->_meContact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_meContact, contact);
    [(CNMeCardSharedProfileCellContentView *)self updateView];
    contactCopy = v6;
  }
}

- (void)updateAvatarViewContact
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];

  if (isNicknameSharingEnabled)
  {
    objc_initWeak(location, self);
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider2 = [currentEnvironment2 nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CNMeCardSharedProfileCellContentView_updateAvatarViewContact__block_invoke;
    v12[3] = &unk_1E74E3590;
    objc_copyWeak(&v13, location);
    [nicknameProvider2 fetchPersonalNicknameAsContactWithCompletion:v12];

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

    meContact = [(CNMeCardSharedProfileCellContentView *)self meContact];

    if (meContact)
    {
      avatarView = [(CNMeCardSharedProfileCellContentView *)self avatarView];
      meContact2 = [(CNMeCardSharedProfileCellContentView *)self meContact];
      [avatarView setContact:meContact2];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];

  if (isNicknameSharingEnabled)
  {
    objc_opt_class();
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider2 = [currentEnvironment2 nicknameProvider];
    if (objc_opt_isKindOfClass())
    {
      v7 = nicknameProvider2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    sharingAudienceDisplayString = [v8 sharingAudienceDisplayString];
  }

  else
  {
    v8 = CNContactsUIBundle();
    sharingAudienceDisplayString = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_DISABLED" value:&stru_1F0CE7398 table:@"Localized"];
  }

  v10 = sharingAudienceDisplayString;

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
  displayStringForSharingAudience = [(CNMeCardSharedProfileCellContentView *)self displayStringForSharingAudience];
  [v8 setText:displayStringForSharingAudience];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:secondaryLabelColor];

  [(CNMeCardSharedProfileCellContentView *)self addSubview:v8];
  [(CNMeCardSharedProfileCellContentView *)self setValueLabel:v8];
  v12 = objc_alloc(MEMORY[0x1E69DCF90]);
  titleLabel = [(CNMeCardSharedProfileCellContentView *)self titleLabel];
  v17[0] = titleLabel;
  valueLabel = [(CNMeCardSharedProfileCellContentView *)self valueLabel];
  v17[1] = valueLabel;
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