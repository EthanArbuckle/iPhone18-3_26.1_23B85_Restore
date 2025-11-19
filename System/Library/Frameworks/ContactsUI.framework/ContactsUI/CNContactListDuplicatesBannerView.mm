@interface CNContactListDuplicatesBannerView
- (CNContactListDuplicatesBannerView)initWithDuplicatesCount:(int64_t)a3;
- (CNContactListDuplicatesBannerViewDelegate)delegate;
- (id)countStringForLocalizedStringKey:(id)a3 count:(int64_t)a4;
- (void)didTapDismiss;
- (void)didTapViewDuplicates;
- (void)setDuplicatesCount:(int64_t)a3;
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
  v3 = [(CNContactListDuplicatesBannerView *)self delegate];
  [v3 duplicatesBannerViewDidTapViewDuplicates:self];
}

- (void)didTapDismiss
{
  v3 = [(CNContactListDuplicatesBannerView *)self delegate];
  [v3 duplicatesBannerViewDidTapDismiss:self];
}

- (id)countStringForLocalizedStringKey:(id)a3 count:(int64_t)a4
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__CNContactListDuplicatesBannerView_countStringForLocalizedStringKey_count___block_invoke;
  aBlock[3] = &unk_1E74E59A8;
  v13 = v5;
  v14 = a4;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x1E696AEC0];
  v9 = v7[2]();
  v10 = [v8 localizedStringWithFormat:v9, a4];

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
  v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(CNContactListDuplicatesBannerView *)self setBackgroundColor:v3];

  v4 = [(CNContactListDuplicatesBannerView *)self layer];
  [v4 setCornerRadius:12.0];

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

  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v9 setTextColor:v14];

  [v9 setNumberOfLines:0];
  v82 = v9;
  [v9 setAdjustsFontForContentSizeCategory:1];
  v15 = objc_alloc(MEMORY[0x1E69DD250]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v17 = [MEMORY[0x1E69DC888] separatorColor];
  [v16 setBackgroundColor:v17];

  v18 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_alloc_init(MEMORY[0x1E69DC738]);
  v20 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"DUPLICATES_FOUND_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  [v20 setTitle:v22];

  v23 = *MEMORY[0x1E69DC5C0];
  v24 = *(MEMORY[0x1E69DC5C0] + 8);
  v25 = *(MEMORY[0x1E69DC5C0] + 16);
  v26 = *(MEMORY[0x1E69DC5C0] + 24);
  v84 = v20;
  [v20 setContentInsets:{*MEMORY[0x1E69DC5C0], v24, v25, v26}];
  [v19 setConfiguration:v20];
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
  v75 = [v31 leadingAnchor];
  v76 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  v74 = [v76 leadingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74 constant:4.0];
  v92[0] = v73;
  v71 = [v31 trailingAnchor];
  v72 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  v70 = [v72 trailingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:-4.0];
  v92[1] = v69;
  v67 = [v31 topAnchor];
  v78 = self;
  v68 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  v66 = [v68 topAnchor];
  v64 = [v67 constraintEqualToAnchor:v66 constant:4.0];
  v92[2] = v64;
  v62 = [v31 bottomAnchor];
  v63 = [(CNContactListDuplicatesBannerView *)self layoutMarginsGuide];
  v61 = [v63 bottomAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:-4.0];
  v92[3] = v60;
  v32 = v18;
  v58 = [v18 heightAnchor];
  v59 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v59 scale];
  v34 = [v58 constraintEqualToConstant:1.0 / v33];
  v92[4] = v34;
  v79 = v18;
  v35 = [v18 leadingAnchor];
  v86 = v31;
  v36 = [v31 layoutMarginsGuide];
  v37 = [v36 leadingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v92[5] = v38;
  v39 = [v32 trailingAnchor];
  v40 = [v31 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v92[6] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:7];
  [v65 activateConstraints:v43];

  v44 = objc_alloc_init(MEMORY[0x1E69DC738]);
  v45 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v46 = MEMORY[0x1E69DCAB8];
  v47 = *MEMORY[0x1E69DDE50];
  v48 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  v49 = [v46 cnui_symbolImageNamed:@"xmark" scale:v47 weight:4 withColor:v48 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];
  [v45 setImage:v49];

  [v45 setContentInsets:{v23, v24, v25, v26}];
  [v44 setConfiguration:v45];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 addTarget:v78 action:sel_didTapDismiss forControlEvents:64];
  [(CNContactListDuplicatesBannerView *)v78 addSubview:v44];
  v77 = MEMORY[0x1E696ACD8];
  v50 = [v44 trailingAnchor];
  v51 = [v86 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v91[0] = v52;
  v53 = [v44 topAnchor];
  v54 = [(CNContactListDuplicatesBannerView *)v78 layoutMarginsGuide];
  v55 = [v54 topAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];
  v91[1] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  [v77 activateConstraints:v57];
}

- (void)setDuplicatesCount:(int64_t)a3
{
  if (self->_duplicatesCount != a3)
  {
    self->_duplicatesCount = a3;
    v6 = [(CNContactListDuplicatesBannerView *)self countStringForLocalizedStringKey:@"DUPLICATES_COUNT" count:a3];
    v5 = [(CNContactListDuplicatesBannerView *)self titleLabel];
    [v5 setText:v6];
  }
}

- (CNContactListDuplicatesBannerView)initWithDuplicatesCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CNContactListDuplicatesBannerView;
  v4 = [(CNContactListDuplicatesBannerView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_duplicatesCount = a3;
    [(CNContactListDuplicatesBannerView *)v4 setupSubviews];
    v6 = v5;
  }

  return v5;
}

@end