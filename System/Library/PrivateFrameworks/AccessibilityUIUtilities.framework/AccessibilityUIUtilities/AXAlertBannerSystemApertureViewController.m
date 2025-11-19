@interface AXAlertBannerSystemApertureViewController
- (AXAlertBannerSystemApertureViewController)initWithAlertBannerContent:(id)a3;
- (BOOL)_shouldExpandBanner;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (id)_customLayoutConstraints;
- (id)_defaultLayoutConstraints;
- (int64_t)contentRole;
- (int64_t)maximumLayoutMode;
- (int64_t)preferredLayoutMode;
- (void)_actionButtonTapped;
- (void)_activeConstraints:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_setupActionButton;
- (void)_setupLeadingIcon;
- (void)_setupMinimialIcon;
- (void)_setupStackView;
- (void)_setupSubtitleLabel;
- (void)_setupTitleLabel;
- (void)_setupViews;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation AXAlertBannerSystemApertureViewController

- (AXAlertBannerSystemApertureViewController)initWithAlertBannerContent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXAlertBannerSystemApertureViewController;
  v5 = [(AXAlertBannerSystemApertureViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXAlertBannerSystemApertureViewController *)v5 setAlertBannerContent:v4];
    [(AXAlertBannerSystemApertureViewController *)v6 _setupViews];
  }

  return v6;
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  if (self->_activeLayoutMode != a3)
  {
    self->_activeLayoutMode = a3;
    [(AXAlertBannerSystemApertureViewController *)self setNeedsLayout:1];
    v6 = [(AXAlertBannerSystemApertureViewController *)self systemApertureElementContext];
    v5 = [v6 requestAlertingAssertion];
    [v5 setAutomaticallyInvalidatable:0];
  }
}

- (int64_t)preferredLayoutMode
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (int64_t)maximumLayoutMode
{
  v3 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  if ([v3 isSystemApertureExpandable])
  {
    v4 = 4;
  }

  else if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (int64_t)contentRole
{
  v2 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v3 = [v2 actionBlock];
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
  }

  return v3;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v31 = a3;
  if ([(AXAlertBannerSystemApertureViewController *)self needsLayout])
  {
    [(AXAlertBannerSystemApertureViewController *)self setNeedsLayout:0];
    v4 = [(AXAlertBannerSystemApertureViewController *)self activeLayoutMode];
    v5 = [(AXAlertBannerSystemApertureViewController *)self view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
    [v7 setIsAccessibilityElement:0];

    v8 = [(AXAlertBannerSystemApertureViewController *)self stackView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
    v11 = v10;
    if (v4 == 2)
    {
      [v10 setHidden:0];
    }

    else
    {
      [v10 setHidden:1];

      if (v4 == 4)
      {
        v17 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        v18 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
        [v17 removeArrangedSubview:v18];

        v19 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        v20 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [v19 removeArrangedSubview:v20];

        v21 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        v22 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
        [v21 addArrangedSubview:v22];

        v23 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        v24 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [v23 addArrangedSubview:v24];

        v25 = [(AXAlertBannerSystemApertureViewController *)self view];
        v26 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
        [v25 addSubview:v26];

        v27 = [(AXAlertBannerSystemApertureViewController *)self view];
        v28 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        [v27 addSubview:v28];

        v29 = [(AXAlertBannerSystemApertureViewController *)self view];
        v30 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
        [v29 addSubview:v30];

        v16 = [(AXAlertBannerSystemApertureViewController *)self _customLayoutConstraints];
      }

      else
      {
        if (v4 != 3)
        {
          goto LABEL_10;
        }

        v12 = [(AXAlertBannerSystemApertureViewController *)self view];
        v13 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
        [v12 addSubview:v13];

        v14 = [(AXAlertBannerSystemApertureViewController *)self view];
        v15 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [v14 addSubview:v15];

        v16 = [(AXAlertBannerSystemApertureViewController *)self _defaultLayoutConstraints];
      }

      v11 = v16;
      [(AXAlertBannerSystemApertureViewController *)self _activeConstraints:v16 withTransitionCoordinator:v31];
    }
  }

LABEL_10:
}

- (void)_activeConstraints:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__AXAlertBannerSystemApertureViewController__activeConstraints_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E812E628;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 animateAlongsideTransition:v8 completion:0];
}

uint64_t __90__AXAlertBannerSystemApertureViewController__activeConstraints_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1048))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 1048), *(a1 + 40));
  v3 = MEMORY[0x1E696ACD8];
  v4 = *(a1 + 40);

  return [v3 activateConstraints:v4];
}

- (id)_defaultLayoutConstraints
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  LODWORD(v4) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v4];

  v26 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v24 = [v26 centerYAnchor];
  v25 = [(AXAlertBannerSystemApertureViewController *)self view];
  v23 = [v25 centerYAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v19 = [v21 leadingAnchor];
  v20 = [(AXAlertBannerSystemApertureViewController *)self view];
  v18 = [v20 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:8.0];
  v27[1] = v17;
  v5 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  v6 = [v5 trailingAnchor];
  v7 = [(AXAlertBannerSystemApertureViewController *)self view];
  v8 = [v7 trailingAnchor];
  v9 = [v6 constraintLessThanOrEqualToAnchor:v8 constant:-4.0];
  v27[2] = v9;
  v10 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  v11 = [v10 centerYAnchor];
  v12 = [(AXAlertBannerSystemApertureViewController *)self view];
  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[3] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

  return v16;
}

- (id)_customLayoutConstraints
{
  v74[16] = *MEMORY[0x1E69E9840];
  v3 = [(AXAlertBannerSystemApertureViewController *)self view];
  v4 = [v3 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v73 = [(AXAlertBannerSystemApertureViewController *)self view];
  v72 = [v73 heightAnchor];
  v71 = [v72 constraintGreaterThanOrEqualToConstant:100.0];
  v74[0] = v71;
  v70 = [(AXAlertBannerSystemApertureViewController *)self view];
  v69 = [v70 topAnchor];
  v45 = v4;
  v68 = [v4 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v74[1] = v67;
  v66 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v64 = [v66 centerYAnchor];
  v65 = [(AXAlertBannerSystemApertureViewController *)self view];
  v63 = [v65 centerYAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v74[2] = v62;
  v61 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v59 = [v61 centerXAnchor];
  v60 = [(AXAlertBannerSystemApertureViewController *)self view];
  v58 = [v60 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:32.0];
  v74[3] = v57;
  v56 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v55 = [v56 widthAnchor];
  v54 = [v55 constraintEqualToConstant:32.0];
  v74[4] = v54;
  v53 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v52 = [v53 heightAnchor];
  v51 = [v52 constraintEqualToConstant:32.0];
  v74[5] = v51;
  v50 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  v48 = [v50 centerYAnchor];
  v49 = [(AXAlertBannerSystemApertureViewController *)self view];
  v47 = [v49 centerYAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v74[6] = v46;
  v44 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  v42 = [v44 centerXAnchor];
  v43 = [(AXAlertBannerSystemApertureViewController *)self view];
  v41 = [v43 trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:-32.0];
  v74[7] = v40;
  v39 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  v38 = [v39 widthAnchor];
  v37 = [v38 constraintEqualToConstant:32.0];
  v74[8] = v37;
  v36 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  v35 = [v36 heightAnchor];
  v34 = [v35 constraintEqualToConstant:32.0];
  v74[9] = v34;
  v33 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v32 = [v33 leadingAnchor];
  v31 = [v4 leadingAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31];
  v74[10] = v30;
  v29 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v28 = [v29 trailingAnchor];
  v27 = [v4 trailingAnchor];
  v26 = [v28 constraintGreaterThanOrEqualToAnchor:v27];
  v74[11] = v26;
  v25 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v24 = [v25 topAnchor];
  v23 = [v4 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v74[12] = v22;
  v21 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v19 = [v21 leadingAnchor];
  v20 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v18 = [v20 centerXAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:32.0];
  v74[13] = v17;
  v5 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v6 = [v5 trailingAnchor];
  v7 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:-32.0];
  v74[14] = v9;
  v10 = [(AXAlertBannerSystemApertureViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:10.0];
  v74[15] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:16];

  return v16;
}

- (BOOL)_shouldExpandBanner
{
  v3 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v4 = [v3 actionBlock];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
    v5 = [v6 shouldExpandSystemApertureAlertByDefault];
  }

  return v5;
}

- (void)_setupViews
{
  [(AXAlertBannerSystemApertureViewController *)self _setupLeadingIcon];
  [(AXAlertBannerSystemApertureViewController *)self _setupMinimialIcon];
  [(AXAlertBannerSystemApertureViewController *)self _setupTitleLabel];
  [(AXAlertBannerSystemApertureViewController *)self _setupSubtitleLabel];
  [(AXAlertBannerSystemApertureViewController *)self _setupActionButton];

  [(AXAlertBannerSystemApertureViewController *)self _setupStackView];
}

- (void)_setupLeadingIcon
{
  v3 = [AXAlertBannerSystemApertureImageView alloc];
  v4 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v5 = [v4 iconImage];
  v6 = [(AXAlertBannerSystemApertureImageView *)v3 initWithImage:v5];
  [(AXAlertBannerSystemApertureViewController *)self setLeadingIcon:v6];

  v9 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  v7 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v8 = [v7 title];
  [v9 setAccessibilityLabel:v8];
}

- (void)_setupMinimialIcon
{
  v3 = [AXAlertBannerSystemApertureImageView alloc];
  v4 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v5 = [v4 iconImage];
  v6 = [(AXAlertBannerSystemApertureImageView *)v3 initWithImage:v5];
  [(AXAlertBannerSystemApertureViewController *)self setMinimalIcon:v6];

  v14 = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
  v7 = MEMORY[0x1E695DEC8];
  v8 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v9 = [v8 title];
  v10 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v11 = [v10 subtitle];
  v12 = [v7 axArrayByIgnoringNilElementsWithCount:{2, v9, v11}];
  v13 = [v12 componentsJoinedByString:{@", "}];
  [v14 setAccessibilityLabel:v13];
}

- (void)_setupTitleLabel
{
  v3 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setTitleLabel:v3];

  v4 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v5 = [v4 title];
  v6 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [v6 setText:v5];

  v7 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [v7 setNumberOfLines:0];

  v8 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  v9 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:1];
  [v8 setFont:v9];

  v10 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [v10 setTextAlignment:1];
}

- (void)_setupSubtitleLabel
{
  v3 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setSubtitleLabel:v3];

  v4 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v5 = [v4 subtitle];
  v6 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [v6 setText:v5];

  v7 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  v8 = MEMORY[0x1E69DB878];
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  v10 = [v8 sbui_systemAperturePreferredFontForTextStyle:v9];
  [v7 setFont:v10];

  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [v12 setTextColor:v11];

  v13 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [v13 setTextAlignment:1];
}

- (void)_setupStackView
{
  v5 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setStackView:v5];

  v6 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v7 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [v6 addArrangedSubview:v7];

  v8 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  v9 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [v8 addArrangedSubview:v9];

  v10 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  [v10 setAxis:1];

  v15 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  v11 = [v15 text];
  v12 = [v11 length];
  if (v12)
  {
    v2 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
    v3 = [v2 text];
    v13 = [v3 length] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  [v14 setDistribution:v13];

  if (v12)
  {
  }
}

- (void)_setupActionButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(AXAlertBannerSystemApertureViewController *)self setActionButton:v3];

  v4 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  [v4 addTarget:self action:sel__actionButtonTapped forControlEvents:64];

  v5 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v6 = [v5 systemApertureActionButtonConfiguration];

  v7 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  if (v6)
  {
    v8 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
    v9 = [v8 systemApertureActionButtonConfiguration];
    [v7 setConfiguration:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [v7 setImage:v10 forState:0];

    v11 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [v11 _setCornerRadius:16.0];

    v12 = [MEMORY[0x1E69DC888] systemBlueColor];
    v13 = [v12 colorWithAlphaComponent:0.4];
    v14 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [v14 setBackgroundColor:v13];

    v7 = AXUILocalizedStringForKey(@"ALERT_BANNER_CANCEL_BUTTON_LABEL");
    v8 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [v8 setAccessibilityLabel:v7];
  }

  v15 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v16 = [v15 actionBlock];

  if (!v16)
  {
    v17 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [v17 setHidden:1];
  }
}

- (void)_actionButtonTapped
{
  v3 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  v2 = [v3 actionBlock];
  v2[2]();
}

@end