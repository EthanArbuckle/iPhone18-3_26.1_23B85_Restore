@interface CNContactListDuplicatesBannerView
- (CNContactListDuplicatesBannerView)initWithDuplicatesCount:(int64_t)count;
- (CNContactListDuplicatesBannerViewDelegate)delegate;
- (id)countStringForLocalizedStringKey:(id)key count:(int64_t)count;
- (void)didTapDismiss;
- (void)didTapViewDuplicates;
- (void)setDuplicatesCount:(int64_t)count;
- (void)setupSubviews;
@end

@implementation CNContactListDuplicatesBannerView

- (CNContactListDuplicatesBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapViewDuplicates
{
  delegate = [(CNContactListDuplicatesBannerView *)self delegate];
  [delegate duplicatesBannerViewDidTapViewDuplicates:self];
}

- (void)didTapDismiss
{
  delegate = [(CNContactListDuplicatesBannerView *)self delegate];
  [delegate duplicatesBannerViewDidTapDismiss:self];
}

- (id)countStringForLocalizedStringKey:(id)key count:(int64_t)count
{
  keyCopy = key;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__CNContactListDuplicatesBannerView_countStringForLocalizedStringKey_count___block_invoke;
  aBlock[3] = &unk_1E74E59A8;
  v13 = keyCopy;
  countCopy = count;
  v6 = keyCopy;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v7[2]();
  v10 = [v8 localizedStringWithFormat:v9, count];

  return v10;
}

id __76__CNContactListDuplicatesBannerView_countStringForLocalizedStringKey_count___block_invoke(uint64_t a1)
{
  v2 = [CNNumberFormatting localizedStringWithInteger:*(a1 + 40)];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:*(a1 + 32) value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [v3 localizedStringWithFormat:v5, *(a1 + 40), v2];

  return v6;
}

- (void)setupSubviews
{
  v94[2] = *MEMORY[0x1E69E9840];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(CNContactListDuplicatesBannerView *)self setBackgroundColor:secondarySystemBackgroundColor];

  layer = [(CNContactListDuplicatesBannerView *)self layer];
  [layer setCornerRadius:12.0];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v6 = [(CNContactListDuplicatesBannerView *)self countStringForLocalizedStringKey:@"DUPLICATES_COUNT" count:self->_duplicatesCount];
  [v5 setText:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v5 setFont:v7];

  [v5 setNumberOfLines:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  v8 = v5;
  v83 = v5;
  [(CNContactListDuplicatesBannerView *)self setTitleLabel:v5];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"DUPLICATES_FOUND_HINT" value:&stru_1F0CE7398 table:@"Localized"];
  [v9 setText:v11];

  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78]];
  v85 = [v12 fontDescriptorWithSymbolicTraits:0x8000];

  v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v85 size:0.0];
  [v9 setFont:v13];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v9 setTextColor:secondaryLabelColor];

  [v9 setNumberOfLines:0];
  v82 = v9;
  [v9 setAdjustsFontForContentSizeCategory:1];
  v15 = objc_alloc(MEMORY[0x1E69DD250]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v16 setBackgroundColor:separatorColor];

  v18 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_alloc_init(MEMORY[0x1E69DC738]);
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"DUPLICATES_FOUND_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  [plainButtonConfiguration setTitle:v22];

  v23 = *MEMORY[0x1E69DC5C0];
  v24 = *(MEMORY[0x1E69DC5C0] + 8);
  v25 = *(MEMORY[0x1E69DC5C0] + 16);
  v26 = *(MEMORY[0x1E69DC5C0] + 24);
  v84 = plainButtonConfiguration;
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], v24, v25, v26}];
  [v19 setConfiguration:plainButtonConfiguration];
  v81 = v19;
  [v19 addTarget:self action:sel_didTapViewDuplicates forControlEvents:64];
  v27 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v27 setAxis:1];
  [v27 setAlignment:0];
  v94[0] = v8;
  v94[1] = v9;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __50__CNContactListDuplicatesBannerView_setupSubviews__block_invoke;
  v89[3] = &unk_1E74E5980;
  v90 = v27;
  v80 = v27;
  [v28 _cn_each:v89];

  v29 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v29 setAxis:1];
  [v29 setAlignment:1];
  [v29 setSpacing:10.0];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v93[0] = v80;
  v93[1] = v18;
  v93[2] = v19;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __50__CNContactListDuplicatesBannerView_setupSubviews__block_invoke_2;
  v87[3] = &unk_1E74E5980;
  v88 = v29;
  v31 = v29;
  [v30 _cn_each:v87];

  [(CNContactListDuplicatesBannerView *)self addSubview:v31];
  v65 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v31 leadingAnchor];
  layoutMarginsGuide = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
  v92[0] = v73;
  trailingAnchor = [v31 trailingAnchor];
  layoutMarginsGuide2 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v69 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  v92[1] = v69;
  topAnchor = [v31 topAnchor];
  selfCopy = self;
  layoutMarginsGuide3 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v92[2] = v64;
  bottomAnchor = [v31 bottomAnchor];
  layoutMarginsGuide4 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v92[3] = v60;
  v32 = v18;
  heightAnchor = [v18 heightAnchor];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v34 = [heightAnchor constraintEqualToConstant:1.0 / v33];
  v92[4] = v34;
  v79 = v18;
  leadingAnchor3 = [v18 leadingAnchor];
  v86 = v31;
  layoutMarginsGuide5 = [v31 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v92[5] = v38;
  trailingAnchor3 = [v32 trailingAnchor];
  layoutMarginsGuide6 = [v31 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
  v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v92[6] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:7];
  [v65 activateConstraints:v43];

  v44 = objc_alloc_init(MEMORY[0x1E69DC738]);
  plainButtonConfiguration2 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v46 = MEMORY[0x1E69DCAB8];
  v47 = *MEMORY[0x1E69DDE50];
  systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  v49 = [v46 cnui_symbolImageNamed:@"xmark" scale:v47 weight:4 withColor:systemMidGrayColor useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];
  [plainButtonConfiguration2 setImage:v49];

  [plainButtonConfiguration2 setContentInsets:{v23, v24, v25, v26}];
  [v44 setConfiguration:plainButtonConfiguration2];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 addTarget:selfCopy action:sel_didTapDismiss forControlEvents:64];
  [(CNContactListDuplicatesBannerView *)selfCopy addSubview:v44];
  v77 = MEMORY[0x1E696ACD8];
  trailingAnchor5 = [v44 trailingAnchor];
  trailingAnchor6 = [v86 trailingAnchor];
  v52 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v91[0] = v52;
  topAnchor3 = [v44 topAnchor];
  layoutMarginsGuide7 = [(CNContactListDuplicatesBannerView *)selfCopy layoutMarginsGuide];
  topAnchor4 = [layoutMarginsGuide7 topAnchor];
  v56 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v91[1] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  [v77 activateConstraints:v57];
}

- (void)setDuplicatesCount:(int64_t)count
{
  if (self->_duplicatesCount != count)
  {
    self->_duplicatesCount = count;
    v6 = [(CNContactListDuplicatesBannerView *)self countStringForLocalizedStringKey:@"DUPLICATES_COUNT" count:count];
    titleLabel = [(CNContactListDuplicatesBannerView *)self titleLabel];
    [titleLabel setText:v6];
  }
}

- (CNContactListDuplicatesBannerView)initWithDuplicatesCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = CNContactListDuplicatesBannerView;
  v4 = [(CNContactListDuplicatesBannerView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_duplicatesCount = count;
    [(CNContactListDuplicatesBannerView *)v4 setupSubviews];
    v6 = v5;
  }

  return v5;
}

@end