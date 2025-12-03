@interface CNContactListLimitedAccessTipView
- (CNContactListLimitedAccessTipView)initWithAppName:(id)name isLimited:(BOOL)limited;
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
  delegate = [(CNContactListLimitedAccessTipView *)self delegate];
  [delegate limitedAccessTipViewDidTapDismiss:self];
}

- (CNContactListLimitedAccessTipView)initWithAppName:(id)name isLimited:(BOOL)limited
{
  limitedCopy = limited;
  v110[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
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
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(CNContactListLimitedAccessTipView *)v102 setBackgroundColor:quaternarySystemFillColor];

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v12 = CNContactsUIBundle();
    v13 = v12;
    if (limitedCopy)
    {
      v14 = @"LIMITED_TIP";
    }

    else
    {
      v14 = @"PRIVATE_TIP";
    }

    if (limitedCopy)
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
    nameCopy = [v19 stringWithFormat:v21, nameCopy];
    [v18 setText:nameCopy];

    v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78]];
    v100 = [v23 fontDescriptorWithSymbolicTraits:0x8000];

    v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v100 size:0.0];
    [v18 setFont:v24];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:secondaryLabelColor];

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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v95 = [v29 initWithSize:30.0 scale:{30.0, v31}];

    v94 = [v96 prepareImageForDescriptor:v95];
    v32 = MEMORY[0x1E69DCAB8];
    cGImage = [v94 CGImage];
    [v94 scale];
    v93 = [v32 imageWithCGImage:cGImage scale:0 orientation:?];
    v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v93];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v35) = 1144750080;
    [v34 setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [v34 setContentCompressionResistancePriority:0 forAxis:v36];
    [v34 setContentMode:1];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [v34 layer];
    [layer setShadowColor:cGColor];

    layer2 = [v34 layer];
    LODWORD(v41) = 1041865114;
    [layer2 setShadowOpacity:v41];

    v42 = *MEMORY[0x1E695F060];
    v43 = *(MEMORY[0x1E695F060] + 8);
    layer3 = [v34 layer];
    [layer3 setShadowOffset:{v42, v43}];

    layer4 = [v34 layer];
    [layer4 setShadowRadius:1.0];

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
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v91 = [v49 configurationWithHierarchicalColor:tertiaryLabelColor];

    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setContentInsets:{2.0, 2.0, 2.0, 2.0}];
    v52 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB980] weight:15.0];
    v53 = [v52 configurationByApplyingConfiguration:v91];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v53];

    v90 = plainButtonConfiguration;
    [plainButtonConfiguration setButtonSize:1];
    v54 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [plainButtonConfiguration setImage:v54];

    v55 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v56) = 1148846080;
    [v55 setContentHuggingPriority:0 forAxis:v56];
    LODWORD(v57) = 1148846080;
    [v55 setContentCompressionResistancePriority:0 forAxis:v57];
    [v55 setPreferredBehavioralStyle:1];
    [v55 addTarget:v102 action:sel_didTapDismiss forControlEvents:64];
    [(CNContactListLimitedAccessTipView *)v102 addSubview:v48];
    [(CNContactListLimitedAccessTipView *)v102 addSubview:v55];
    array = [MEMORY[0x1E695DF70] array];
    leadingAnchor = [v48 leadingAnchor];
    layoutMarginsGuide = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    v108[0] = v86;
    trailingAnchor = [v48 trailingAnchor];
    layoutMarginsGuide2 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v81 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
    v108[1] = v81;
    topAnchor = [v48 topAnchor];
    layoutMarginsGuide3 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v76 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v108[2] = v76;
    v80 = v48;
    bottomAnchor = [v48 bottomAnchor];
    layoutMarginsGuide4 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v72 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
    v108[3] = v72;
    v83 = v34;
    widthAnchor = [v34 widthAnchor];
    heightAnchor = [v34 heightAnchor];
    v69 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v108[4] = v69;
    trailingAnchor3 = [v55 trailingAnchor];
    trailingAnchor4 = [v48 trailingAnchor];
    v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v108[5] = v60;
    topAnchor3 = [v55 topAnchor];
    layoutMarginsGuide5 = [(CNContactListLimitedAccessTipView *)v102 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide5 topAnchor];
    [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65 = v64 = nameCopy;
    v108[6] = v65;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:7];
    [array addObjectsFromArray:v66];

    nameCopy = v64;
    v8 = v102;

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v67 = v102;
  }

  return v8;
}

@end