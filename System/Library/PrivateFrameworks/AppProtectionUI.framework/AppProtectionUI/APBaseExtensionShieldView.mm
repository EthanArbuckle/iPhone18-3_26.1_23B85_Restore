@interface APBaseExtensionShieldView
- (APBaseExtensionShieldView)initWithLocalizedApplicationName:(id)name iconImage:(id)image unlockButtonHidden:(BOOL)hidden apExtension:(id)extension apViewSubject:(id)subject;
- (APBaseExtensionShieldViewDelegate)delegate;
- (id)imageForIcon:(id)icon;
- (void)unlockTapped:(id)tapped;
@end

@implementation APBaseExtensionShieldView

- (APBaseExtensionShieldView)initWithLocalizedApplicationName:(id)name iconImage:(id)image unlockButtonHidden:(BOOL)hidden apExtension:(id)extension apViewSubject:(id)subject
{
  hiddenCopy = hidden;
  v100[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  imageCopy = image;
  extensionCopy = extension;
  subjectCopy = subject;
  v16 = [(APBaseExtensionShieldView *)self init];
  if (v16)
  {
    v17 = APGetPreferredAuthenticationMechanism();
    v18 = @"com.apple.appprotection.badge.touchid";
    if (v17 == 3)
    {
      v18 = @"com.apple.appprotection.badge.passcode";
    }

    if (v17 == 1)
    {
      v19 = @"com.apple.appprotection.badge.faceid";
    }

    else
    {
      v19 = v18;
    }

    v95 = imageCopy;
    v96 = nameCopy;
    v94 = extensionCopy;
    if (extensionCopy && [extensionCopy isFirstParty])
    {
      v20 = [APSymbolBadgedAppIconView alloc];
      +[APSymbolBadgedAppIconView metricsForExtensionShield];
      v21 = [(APSymbolBadgedAppIconView *)v20 initWithApplicationIconImage:imageCopy symbolType:v19 metrics:v97];
      iconView = v16->_iconView;
      v16->_iconView = v21;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E69A8A00]);
      v24 = v23;
      if (subjectCopy)
      {
        effectiveContainer = [subjectCopy effectiveContainer];
        v26 = [v24 initWithBundleIdentifier:effectiveContainer];

        v27 = [APSymbolBadgedAppIconView alloc];
        v28 = [(APBaseExtensionShieldView *)v16 imageForIcon:v26];
        +[APSymbolBadgedAppIconView metricsForExtensionShield];
        v29 = [(APSymbolBadgedAppIconView *)v27 initWithApplicationIconImage:v28 symbolType:v19 metrics:v97];
        v30 = v16->_iconView;
        v16->_iconView = v29;
      }

      else
      {
        v31 = [v23 initWithType:v19];
        v32 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v33 = [(APBaseExtensionShieldView *)v16 imageForIcon:v31];
        v34 = [v32 initWithImage:v33];
        v35 = v16->_iconView;
        v16->_iconView = v34;
      }
    }

    [(UIView *)v16->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(APBaseExtensionShieldView *)v16 addSubview:v16->_iconView];
    v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v16->_label;
    v16->_label = v36;

    v38 = v16->_label;
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    v40 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB958]];
    v41 = [defaultMetrics scaledFontForFont:v40];
    [(UILabel *)v38 setFont:v41];

    v42 = MEMORY[0x1E696AEC0];
    v43 = APGetPreferredAuthenticationMechanismLocKey();
    v44 = [v42 stringWithFormat:@"BASE_EXTENSION_SHIELD_VIEW_LABEL_%@", v43];
    v45 = APUILocStr(v44);

    v93 = v45;
    [(UILabel *)v16->_label setText:v45];
    [(UILabel *)v16->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(APBaseExtensionShieldView *)v16 addSubview:v16->_label];
    v46 = [MEMORY[0x1E69DC738] buttonWithType:1];
    unlockButton = v16->_unlockButton;
    v16->_unlockButton = v46;

    [(UIButton *)v16->_unlockButton addTarget:v16 action:sel_unlockTapped_ forControlEvents:0x2000];
    [(UIButton *)v16->_unlockButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = v16->_unlockButton;
    v49 = MEMORY[0x1E696AEC0];
    v50 = APUILocStr(@"EXTENSION_SHIELD_RETRY_BUTTON_AX_HINT_FMT");
    if (subjectCopy)
    {
      effectiveContainerLocalizedName = [subjectCopy effectiveContainerLocalizedName];
      v52 = [v49 stringWithFormat:v50, effectiveContainerLocalizedName];
      [(UIButton *)v48 setAccessibilityHint:v52];
    }

    else
    {
      effectiveContainerLocalizedName = [v49 stringWithFormat:v50, v96];
      [(UIButton *)v48 setAccessibilityHint:effectiveContainerLocalizedName];
    }

    [(UIButton *)v16->_unlockButton setHidden:hiddenCopy];
    [(UIButton *)v16->_unlockButton setAccessibilityIdentifier:@"APBaseExtensionShieldUnlockButton"];
    v99 = *MEMORY[0x1E69DB648];
    defaultMetrics2 = [MEMORY[0x1E69DCA40] defaultMetrics];
    v54 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0 weight:*MEMORY[0x1E69DB978]];
    v55 = [defaultMetrics2 scaledFontForFont:v54];
    v100[0] = v55;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:&v99 count:1];

    v56 = MEMORY[0x1E696AEC0];
    v57 = APGetPreferredAuthenticationMechanismLocKey();
    v58 = [v56 stringWithFormat:@"BASE_EXTENSION_SHIELD_VIEW_UNLOCK_BUTTON_%@", v57];
    v91 = APUILocStr(v58);

    v59 = v16->_unlockButton;
    v60 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v91 attributes:v92];
    [(UIButton *)v59 setAttributedTitle:v60 forState:0];

    [(APBaseExtensionShieldView *)v16 addSubview:v16->_unlockButton];
    centerXAnchor = [(UIView *)v16->_iconView centerXAnchor];
    centerXAnchor2 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v88 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v98[0] = v88;
    centerYAnchor = [(UIView *)v16->_iconView centerYAnchor];
    centerYAnchor2 = [(APBaseExtensionShieldView *)v16 centerYAnchor];
    v85 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-56.0];
    v98[1] = v85;
    centerXAnchor3 = [(UILabel *)v16->_label centerXAnchor];
    centerXAnchor4 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v82 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v98[2] = v82;
    centerYAnchor3 = [(UILabel *)v16->_label centerYAnchor];
    centerYAnchor4 = [(APBaseExtensionShieldView *)v16 centerYAnchor];
    v79 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:10.0];
    v98[3] = v79;
    widthAnchor = [(UILabel *)v16->_label widthAnchor];
    widthAnchor2 = [(APBaseExtensionShieldView *)v16 widthAnchor];
    v76 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v98[4] = v76;
    heightAnchor = [(UILabel *)v16->_label heightAnchor];
    heightAnchor2 = [(APBaseExtensionShieldView *)v16 heightAnchor];
    v62 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v98[5] = v62;
    centerXAnchor5 = [(UIButton *)v16->_unlockButton centerXAnchor];
    centerXAnchor6 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v65 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v98[6] = v65;
    firstBaselineAnchor = [(UIButton *)v16->_unlockButton firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v16->_label lastBaselineAnchor];
    v68 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:2.0];
    v98[7] = v68;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:8];

    [MEMORY[0x1E696ACD8] activateConstraints:v75];
    v69 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_4];
    [(APBaseExtensionShieldView *)v16 setBackgroundColor:v69];

    v70 = v16->_label;
    v71 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_33];
    [(UILabel *)v70 setTextColor:v71];

    imageCopy = v95;
    nameCopy = v96;
    extensionCopy = v94;
  }

  v72 = *MEMORY[0x1E69E9840];
  return v16;
}

id __117__APBaseExtensionShieldView_initWithLocalizedApplicationName_iconImage_unlockButtonHidden_apExtension_apViewSubject___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

id __117__APBaseExtensionShieldView_initWithLocalizedApplicationName_iconImage_unlockButtonHidden_apExtension_apViewSubject___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v2 = ;

  return v2;
}

- (void)unlockTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shieldViewUnlockButtonPressed:self];
}

- (id)imageForIcon:(id)icon
{
  v3 = MEMORY[0x1E69A8A30];
  iconCopy = icon;
  v5 = [v3 alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = [v5 initWithSize:64.0 scale:{64.0, v7}];

  [v8 setDrawBorder:1];
  v9 = [iconCopy prepareImageForDescriptor:v8];

  v10 = MEMORY[0x1E69DCAB8];
  cGImage = [v9 CGImage];
  [v9 scale];
  v12 = [v10 imageWithCGImage:cGImage scale:0 orientation:?];

  return v12;
}

- (APBaseExtensionShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end