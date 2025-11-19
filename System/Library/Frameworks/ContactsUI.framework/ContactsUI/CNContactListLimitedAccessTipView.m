@interface CNContactListLimitedAccessTipView
- (CNContactListLimitedAccessTipView)initWithAppName:(id)a3 isLimited:(BOOL)a4;
- (CNContactListLimitedAccessTipViewDelegate)delegate;
- (void)didTapDismiss;
@end

@implementation CNContactListLimitedAccessTipView

- (CNContactListLimitedAccessTipViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapDismiss
{
  v3 = [(CNContactListLimitedAccessTipView *)self delegate];
  [v3 limitedAccessTipViewDidTapDismiss:self];
}

- (CNContactListLimitedAccessTipView)initWithAppName:(id)a3 isLimited:(BOOL)a4
{
  v4 = a4;
  v110[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v107.receiver = self;
  v107.super_class = CNContactListLimitedAccessTipView;
  v7 = [(CNContactListLimitedAccessTipView *)&v107 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(CNContactListLimitedAccessTipView *)v7 layer];
    v9 = v102 = v8;
    [v9 setCornerRadius:12.0];

    [(CNContactListLimitedAccessTipView *)v102 setClipsToBounds:1];
    v10 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(CNContactListLimitedAccessTipView *)v102 setBackgroundColor:v10];

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v12 = CNContactsUIBundle();
    v13 = v12;
    if (v4)
    {
      v14 = @"LIMITED_TIP";
    }

    else
    {
      v14 = @"PRIVATE_TIP";
    }

    if (v4)
    {
      v15 = @"LIMITED_TIP_HINT";
    }

    else
    {
      v15 = @"PRIVATE_TIP_HINT";
    }

    v16 = [v12 localizedStringForKey:v14 value:&stru_1F0CE7398 table:@"Localized"];
    [v11 setText:v16];

    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v11 setFont:v17];

    [v11 setNumberOfLines:0];
    [v11 setAdjustsFontForContentSizeCategory:1];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v19 = MEMORY[0x1E696AEC0];
    v20 = CNContactsUIBundle();
    v21 = [v20 localizedStringForKey:v15 value:&stru_1F0CE7398 table:@"Localized"];
    v22 = [v19 stringWithFormat:v21, v6];
    [v18 setText:v22];

    v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78]];
    v100 = [v23 fontDescriptorWithSymbolicTraits:0x8000];

    v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v100 size:0.0];
    [v18 setFont:v24];

    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:v25];

    [v18 setNumberOfLines:0];
    v99 = v18;
    [v18 setAdjustsFontForContentSizeCategory:1];
    v26 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v26 setAxis:1];
    [v26 setAlignment:0];
    v97 = v11;
    v110[0] = v11;
    v110[1] = v18;
    v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:2];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __63__CNContactListLimitedAccessTipView_initWithAppName_isLimited___block_invoke;
    v105[3] = &unk_1E74E5980;
    v106 = v26;
    v27 = v26;
    [v98 _cn_each:v105];
    [v27 setSpacing:8.0];
    v28 = v27;
    v92 = v27;
    [v27 setCustomSpacing:v11 afterView:5.0];
    v96 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.MobileAddressBook"];
    v29 = objc_alloc(MEMORY[0x1E69A8A30]);
    v30 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v30 scale];
    v95 = [v29 initWithSize:30.0 scale:{30.0, v31}];

    v94 = [v96 prepareImageForDescriptor:v95];
    v32 = MEMORY[0x1E69DCAB8];
    v33 = [v94 CGImage];
    [v94 scale];
    v93 = [v32 imageWithCGImage:v33 scale:0 orientation:?];
    v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v93];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v35) = 1144750080;
    [v34 setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [v34 setContentCompressionResistancePriority:0 forAxis:v36];
    [v34 setContentMode:1];
    v37 = [MEMORY[0x1E69DC888] blackColor];
    v38 = [v37 CGColor];
    v39 = [v34 layer];
    [v39 setShadowColor:v38];

    v40 = [v34 layer];
    LODWORD(v41) = 1041865114;
    [v40 setShadowOpacity:v41];

    v42 = *MEMORY[0x1E695F060];
    v43 = *(MEMORY[0x1E695F060] + 8);
    v44 = [v34 layer];
    [v44 setShadowOffset:{v42, v43}];

    v45 = [v34 layer];
    [v45 setShadowRadius:1.0];

    v46 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v46 setAxis:0];
    [v46 setAlignment:1];
    [v46 setSpacing:11.0];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v109[0] = v34;
    v109[1] = v28;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __63__CNContactListLimitedAccessTipView_initWithAppName_isLimited___block_invoke_2;
    v103[3] = &unk_1E74E5980;
    v104 = v46;
    v48 = v46;
    [v47 _cn_each:v103];

    v49 = MEMORY[0x1E69DCAD8];
    v50 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v91 = [v49 configurationWithHierarchicalColor:v50];

    v51 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v51 setContentInsets:{2.0, 2.0, 2.0, 2.0}];
    v52 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB980] weight:15.0];
    v53 = [v52 configurationByApplyingConfiguration:v91];
    [v51 setPreferredSymbolConfigurationForImage:v53];

    v90 = v51;
    [v51 setButtonSize:1];
    v54 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [v51 setImage:v54];

    v55 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v51 primaryAction:0];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v56) = 1148846080;
    [v55 setContentHuggingPriority:0 forAxis:v56];
    LODWORD(v57) = 1148846080;
    [v55 setContentCompressionResistancePriority:0 forAxis:v57];
    [v55 setPreferredBehavioralStyle:1];
    [v55 addTarget:v102 action:sel_didTapDismiss forControlEvents:64];
    [(CNContactListLimitedAccessTipView *)v102 addSubview:v48];
    [(CNContactListLimitedAccessTipView *)v102 addSubview:v55];
    v101 = [MEMORY[0x1E695DF70] array];
    v88 = [v48 leadingAnchor];
    v89 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    v87 = [v89 leadingAnchor];
    v86 = [v88 constraintEqualToAnchor:v87 constant:4.0];
    v108[0] = v86;
    v84 = [v48 trailingAnchor];
    v85 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    v82 = [v85 trailingAnchor];
    v81 = [v84 constraintEqualToAnchor:v82 constant:-4.0];
    v108[1] = v81;
    v78 = [v48 topAnchor];
    v79 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    v77 = [v79 topAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:4.0];
    v108[2] = v76;
    v80 = v48;
    v74 = [v48 bottomAnchor];
    v75 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    v73 = [v75 bottomAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:-4.0];
    v108[3] = v72;
    v83 = v34;
    v71 = [v34 widthAnchor];
    v70 = [v34 heightAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v108[4] = v69;
    v58 = [v55 trailingAnchor];
    v59 = [v48 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    v108[5] = v60;
    v61 = [v55 topAnchor];
    v62 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    v63 = [v62 topAnchor];
    [v61 constraintEqualToAnchor:v63];
    v65 = v64 = v6;
    v108[6] = v65;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:7];
    [v101 addObjectsFromArray:v66];

    v6 = v64;
    v8 = v102;

    [MEMORY[0x1E696ACD8] activateConstraints:v101];
    v67 = v102;
  }

  return v8;
}

@end