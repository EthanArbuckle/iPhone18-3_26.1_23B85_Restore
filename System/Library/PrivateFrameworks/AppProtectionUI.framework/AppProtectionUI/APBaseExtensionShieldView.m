@interface APBaseExtensionShieldView
- (APBaseExtensionShieldView)initWithLocalizedApplicationName:(id)a3 iconImage:(id)a4 unlockButtonHidden:(BOOL)a5 apExtension:(id)a6 apViewSubject:(id)a7;
- (APBaseExtensionShieldViewDelegate)delegate;
- (id)imageForIcon:(id)a3;
- (void)unlockTapped:(id)a3;
@end

@implementation APBaseExtensionShieldView

- (APBaseExtensionShieldView)initWithLocalizedApplicationName:(id)a3 iconImage:(id)a4 unlockButtonHidden:(BOOL)a5 apExtension:(id)a6 apViewSubject:(id)a7
{
  v9 = a5;
  v100[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
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

    v95 = v13;
    v96 = v12;
    v94 = v14;
    if (v14 && [v14 isFirstParty])
    {
      v20 = [APSymbolBadgedAppIconView alloc];
      +[APSymbolBadgedAppIconView metricsForExtensionShield];
      v21 = [(APSymbolBadgedAppIconView *)v20 initWithApplicationIconImage:v13 symbolType:v19 metrics:v97];
      iconView = v16->_iconView;
      v16->_iconView = v21;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E69A8A00]);
      v24 = v23;
      if (v15)
      {
        v25 = [v15 effectiveContainer];
        v26 = [v24 initWithBundleIdentifier:v25];

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
    v39 = [MEMORY[0x1E69DCA40] defaultMetrics];
    v40 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB958]];
    v41 = [v39 scaledFontForFont:v40];
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
    if (v15)
    {
      v51 = [v15 effectiveContainerLocalizedName];
      v52 = [v49 stringWithFormat:v50, v51];
      [(UIButton *)v48 setAccessibilityHint:v52];
    }

    else
    {
      v51 = [v49 stringWithFormat:v50, v96];
      [(UIButton *)v48 setAccessibilityHint:v51];
    }

    [(UIButton *)v16->_unlockButton setHidden:v9];
    [(UIButton *)v16->_unlockButton setAccessibilityIdentifier:@"APBaseExtensionShieldUnlockButton"];
    v99 = *MEMORY[0x1E69DB648];
    v53 = [MEMORY[0x1E69DCA40] defaultMetrics];
    v54 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0 weight:*MEMORY[0x1E69DB978]];
    v55 = [v53 scaledFontForFont:v54];
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
    v90 = [(UIView *)v16->_iconView centerXAnchor];
    v89 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v98[0] = v88;
    v87 = [(UIView *)v16->_iconView centerYAnchor];
    v86 = [(APBaseExtensionShieldView *)v16 centerYAnchor];
    v85 = [v87 constraintEqualToAnchor:v86 constant:-56.0];
    v98[1] = v85;
    v84 = [(UILabel *)v16->_label centerXAnchor];
    v83 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v98[2] = v82;
    v81 = [(UILabel *)v16->_label centerYAnchor];
    v80 = [(APBaseExtensionShieldView *)v16 centerYAnchor];
    v79 = [v81 constraintEqualToAnchor:v80 constant:10.0];
    v98[3] = v79;
    v78 = [(UILabel *)v16->_label widthAnchor];
    v77 = [(APBaseExtensionShieldView *)v16 widthAnchor];
    v76 = [v78 constraintLessThanOrEqualToAnchor:v77];
    v98[4] = v76;
    v74 = [(UILabel *)v16->_label heightAnchor];
    v61 = [(APBaseExtensionShieldView *)v16 heightAnchor];
    v62 = [v74 constraintLessThanOrEqualToAnchor:v61];
    v98[5] = v62;
    v63 = [(UIButton *)v16->_unlockButton centerXAnchor];
    v64 = [(APBaseExtensionShieldView *)v16 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    v98[6] = v65;
    v66 = [(UIButton *)v16->_unlockButton firstBaselineAnchor];
    v67 = [(UILabel *)v16->_label lastBaselineAnchor];
    v68 = [v66 constraintEqualToSystemSpacingBelowAnchor:v67 multiplier:2.0];
    v98[7] = v68;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:8];

    [MEMORY[0x1E696ACD8] activateConstraints:v75];
    v69 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_4];
    [(APBaseExtensionShieldView *)v16 setBackgroundColor:v69];

    v70 = v16->_label;
    v71 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_33];
    [(UILabel *)v70 setTextColor:v71];

    v13 = v95;
    v12 = v96;
    v14 = v94;
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

- (void)unlockTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shieldViewUnlockButtonPressed:self];
}

- (id)imageForIcon:(id)a3
{
  v3 = MEMORY[0x1E69A8A30];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = [v5 initWithSize:64.0 scale:{64.0, v7}];

  [v8 setDrawBorder:1];
  v9 = [v4 prepareImageForDescriptor:v8];

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [v9 CGImage];
  [v9 scale];
  v12 = [v10 imageWithCGImage:v11 scale:0 orientation:?];

  return v12;
}

- (APBaseExtensionShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end