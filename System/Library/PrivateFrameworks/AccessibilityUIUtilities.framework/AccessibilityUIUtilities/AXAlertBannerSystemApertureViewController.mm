@interface AXAlertBannerSystemApertureViewController
- (AXAlertBannerSystemApertureViewController)initWithAlertBannerContent:(id)content;
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
- (void)_activeConstraints:(id)constraints withTransitionCoordinator:(id)coordinator;
- (void)_setupActionButton;
- (void)_setupLeadingIcon;
- (void)_setupMinimialIcon;
- (void)_setupStackView;
- (void)_setupSubtitleLabel;
- (void)_setupTitleLabel;
- (void)_setupViews;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation AXAlertBannerSystemApertureViewController

- (AXAlertBannerSystemApertureViewController)initWithAlertBannerContent:(id)content
{
  contentCopy = content;
  v8.receiver = self;
  v8.super_class = AXAlertBannerSystemApertureViewController;
  v5 = [(AXAlertBannerSystemApertureViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXAlertBannerSystemApertureViewController *)v5 setAlertBannerContent:contentCopy];
    [(AXAlertBannerSystemApertureViewController *)v6 _setupViews];
  }

  return v6;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    self->_activeLayoutMode = mode;
    [(AXAlertBannerSystemApertureViewController *)self setNeedsLayout:1];
    systemApertureElementContext = [(AXAlertBannerSystemApertureViewController *)self systemApertureElementContext];
    requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
    [requestAlertingAssertion setAutomaticallyInvalidatable:0];
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
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  if ([alertBannerContent isSystemApertureExpandable])
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
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  actionBlock = [alertBannerContent actionBlock];
  if (actionBlock)
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
    leadingIcon = 0;
  }

  else
  {
    leadingIcon = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  }

  return leadingIcon;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    subtitleLabel = 0;
  }

  else
  {
    subtitleLabel = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  }

  return subtitleLabel;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if ([(AXAlertBannerSystemApertureViewController *)self _shouldExpandBanner])
  {
    minimalIcon = 0;
  }

  else
  {
    minimalIcon = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
  }

  return minimalIcon;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ([(AXAlertBannerSystemApertureViewController *)self needsLayout])
  {
    [(AXAlertBannerSystemApertureViewController *)self setNeedsLayout:0];
    activeLayoutMode = [(AXAlertBannerSystemApertureViewController *)self activeLayoutMode];
    view = [(AXAlertBannerSystemApertureViewController *)self view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    leadingIcon = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
    [leadingIcon setTranslatesAutoresizingMaskIntoConstraints:0];

    leadingIcon2 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
    [leadingIcon2 setIsAccessibilityElement:0];

    stackView = [(AXAlertBannerSystemApertureViewController *)self stackView];
    [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

    actionButton = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [actionButton setTranslatesAutoresizingMaskIntoConstraints:0];

    minimalIcon = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
    v11 = minimalIcon;
    if (activeLayoutMode == 2)
    {
      [minimalIcon setHidden:0];
    }

    else
    {
      [minimalIcon setHidden:1];

      if (activeLayoutMode == 4)
      {
        stackView2 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        titleLabel = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
        [stackView2 removeArrangedSubview:titleLabel];

        stackView3 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        subtitleLabel = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [stackView3 removeArrangedSubview:subtitleLabel];

        stackView4 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        titleLabel2 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
        [stackView4 addArrangedSubview:titleLabel2];

        stackView5 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        subtitleLabel2 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [stackView5 addArrangedSubview:subtitleLabel2];

        view2 = [(AXAlertBannerSystemApertureViewController *)self view];
        leadingIcon3 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
        [view2 addSubview:leadingIcon3];

        view3 = [(AXAlertBannerSystemApertureViewController *)self view];
        stackView6 = [(AXAlertBannerSystemApertureViewController *)self stackView];
        [view3 addSubview:stackView6];

        view4 = [(AXAlertBannerSystemApertureViewController *)self view];
        actionButton2 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
        [view4 addSubview:actionButton2];

        _customLayoutConstraints = [(AXAlertBannerSystemApertureViewController *)self _customLayoutConstraints];
      }

      else
      {
        if (activeLayoutMode != 3)
        {
          goto LABEL_10;
        }

        view5 = [(AXAlertBannerSystemApertureViewController *)self view];
        leadingIcon4 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
        [view5 addSubview:leadingIcon4];

        view6 = [(AXAlertBannerSystemApertureViewController *)self view];
        subtitleLabel3 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
        [view6 addSubview:subtitleLabel3];

        _customLayoutConstraints = [(AXAlertBannerSystemApertureViewController *)self _defaultLayoutConstraints];
      }

      v11 = _customLayoutConstraints;
      [(AXAlertBannerSystemApertureViewController *)self _activeConstraints:_customLayoutConstraints withTransitionCoordinator:coordinatorCopy];
    }
  }

LABEL_10:
}

- (void)_activeConstraints:(id)constraints withTransitionCoordinator:(id)coordinator
{
  constraintsCopy = constraints;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__AXAlertBannerSystemApertureViewController__activeConstraints_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E812E628;
  v8[4] = self;
  v9 = constraintsCopy;
  v7 = constraintsCopy;
  [coordinator animateAlongsideTransition:v8 completion:0];
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
  subtitleLabel = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  LODWORD(v4) = 1144750080;
  [subtitleLabel setContentHuggingPriority:0 forAxis:v4];

  leadingIcon = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  centerYAnchor = [leadingIcon centerYAnchor];
  view = [(AXAlertBannerSystemApertureViewController *)self view];
  centerYAnchor2 = [view centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v27[0] = v22;
  leadingIcon2 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  leadingAnchor = [leadingIcon2 leadingAnchor];
  view2 = [(AXAlertBannerSystemApertureViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v27[1] = v17;
  subtitleLabel2 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  trailingAnchor = [subtitleLabel2 trailingAnchor];
  view3 = [(AXAlertBannerSystemApertureViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v9 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-4.0];
  v27[2] = v9;
  subtitleLabel3 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  centerYAnchor3 = [subtitleLabel3 centerYAnchor];
  view4 = [(AXAlertBannerSystemApertureViewController *)self view];
  centerYAnchor4 = [view4 centerYAnchor];
  v14 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v27[3] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

  return v16;
}

- (id)_customLayoutConstraints
{
  v74[16] = *MEMORY[0x1E69E9840];
  view = [(AXAlertBannerSystemApertureViewController *)self view];
  sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];

  view2 = [(AXAlertBannerSystemApertureViewController *)self view];
  heightAnchor = [view2 heightAnchor];
  v71 = [heightAnchor constraintGreaterThanOrEqualToConstant:100.0];
  v74[0] = v71;
  view3 = [(AXAlertBannerSystemApertureViewController *)self view];
  topAnchor = [view3 topAnchor];
  v45 = sBUISA_systemApertureObstructedAreaLayoutGuide;
  topAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide topAnchor];
  v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v74[1] = v67;
  leadingIcon = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  centerYAnchor = [leadingIcon centerYAnchor];
  view4 = [(AXAlertBannerSystemApertureViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v74[2] = v62;
  leadingIcon2 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  centerXAnchor = [leadingIcon2 centerXAnchor];
  view5 = [(AXAlertBannerSystemApertureViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  v57 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:32.0];
  v74[3] = v57;
  leadingIcon3 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  widthAnchor = [leadingIcon3 widthAnchor];
  v54 = [widthAnchor constraintEqualToConstant:32.0];
  v74[4] = v54;
  leadingIcon4 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  heightAnchor2 = [leadingIcon4 heightAnchor];
  v51 = [heightAnchor2 constraintEqualToConstant:32.0];
  v74[5] = v51;
  actionButton = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  centerYAnchor3 = [actionButton centerYAnchor];
  view6 = [(AXAlertBannerSystemApertureViewController *)self view];
  centerYAnchor4 = [view6 centerYAnchor];
  v46 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v74[6] = v46;
  actionButton2 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  centerXAnchor2 = [actionButton2 centerXAnchor];
  view7 = [(AXAlertBannerSystemApertureViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  v40 = [centerXAnchor2 constraintEqualToAnchor:trailingAnchor constant:-32.0];
  v74[7] = v40;
  actionButton3 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  widthAnchor2 = [actionButton3 widthAnchor];
  v37 = [widthAnchor2 constraintEqualToConstant:32.0];
  v74[8] = v37;
  actionButton4 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  heightAnchor3 = [actionButton4 heightAnchor];
  v34 = [heightAnchor3 constraintEqualToConstant:32.0];
  v74[9] = v34;
  stackView = [(AXAlertBannerSystemApertureViewController *)self stackView];
  leadingAnchor2 = [stackView leadingAnchor];
  leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
  v30 = [leadingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor3];
  v74[10] = v30;
  stackView2 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  trailingAnchor2 = [stackView2 trailingAnchor];
  trailingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide trailingAnchor];
  v26 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3];
  v74[11] = v26;
  stackView3 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  topAnchor3 = [stackView3 topAnchor];
  bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v74[12] = v22;
  stackView4 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  leadingAnchor4 = [stackView4 leadingAnchor];
  leadingIcon5 = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  centerXAnchor3 = [leadingIcon5 centerXAnchor];
  v17 = [leadingAnchor4 constraintEqualToAnchor:centerXAnchor3 constant:32.0];
  v74[13] = v17;
  stackView5 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  trailingAnchor4 = [stackView5 trailingAnchor];
  actionButton5 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  centerXAnchor4 = [actionButton5 centerXAnchor];
  v9 = [trailingAnchor4 constraintEqualToAnchor:centerXAnchor4 constant:-32.0];
  v74[14] = v9;
  view8 = [(AXAlertBannerSystemApertureViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  stackView6 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  bottomAnchor3 = [stackView6 bottomAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
  v74[15] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:16];

  return v16;
}

- (BOOL)_shouldExpandBanner
{
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  actionBlock = [alertBannerContent actionBlock];
  if (actionBlock)
  {
    shouldExpandSystemApertureAlertByDefault = 1;
  }

  else
  {
    alertBannerContent2 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
    shouldExpandSystemApertureAlertByDefault = [alertBannerContent2 shouldExpandSystemApertureAlertByDefault];
  }

  return shouldExpandSystemApertureAlertByDefault;
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
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  iconImage = [alertBannerContent iconImage];
  v6 = [(AXAlertBannerSystemApertureImageView *)v3 initWithImage:iconImage];
  [(AXAlertBannerSystemApertureViewController *)self setLeadingIcon:v6];

  leadingIcon = [(AXAlertBannerSystemApertureViewController *)self leadingIcon];
  alertBannerContent2 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  title = [alertBannerContent2 title];
  [leadingIcon setAccessibilityLabel:title];
}

- (void)_setupMinimialIcon
{
  v3 = [AXAlertBannerSystemApertureImageView alloc];
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  iconImage = [alertBannerContent iconImage];
  v6 = [(AXAlertBannerSystemApertureImageView *)v3 initWithImage:iconImage];
  [(AXAlertBannerSystemApertureViewController *)self setMinimalIcon:v6];

  minimalIcon = [(AXAlertBannerSystemApertureViewController *)self minimalIcon];
  v7 = MEMORY[0x1E695DEC8];
  alertBannerContent2 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  title = [alertBannerContent2 title];
  alertBannerContent3 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  subtitle = [alertBannerContent3 subtitle];
  v12 = [v7 axArrayByIgnoringNilElementsWithCount:{2, title, subtitle}];
  v13 = [v12 componentsJoinedByString:{@", "}];
  [minimalIcon setAccessibilityLabel:v13];
}

- (void)_setupTitleLabel
{
  v3 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setTitleLabel:v3];

  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  title = [alertBannerContent title];
  titleLabel = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [titleLabel setText:title];

  titleLabel2 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  v9 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:1];
  [titleLabel3 setFont:v9];

  titleLabel4 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [titleLabel4 setTextAlignment:1];
}

- (void)_setupSubtitleLabel
{
  v3 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setSubtitleLabel:v3];

  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  subtitle = [alertBannerContent subtitle];
  subtitleLabel = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  subtitleLabel2 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
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
  [subtitleLabel2 setFont:v10];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  subtitleLabel3 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [subtitleLabel3 setTextColor:secondaryLabelColor];

  subtitleLabel4 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [subtitleLabel4 setTextAlignment:1];
}

- (void)_setupStackView
{
  v5 = objc_opt_new();
  [(AXAlertBannerSystemApertureViewController *)self setStackView:v5];

  stackView = [(AXAlertBannerSystemApertureViewController *)self stackView];
  titleLabel = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  [stackView addArrangedSubview:titleLabel];

  stackView2 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  subtitleLabel = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
  [stackView2 addArrangedSubview:subtitleLabel];

  stackView3 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  [stackView3 setAxis:1];

  titleLabel2 = [(AXAlertBannerSystemApertureViewController *)self titleLabel];
  text = [titleLabel2 text];
  v12 = [text length];
  if (v12)
  {
    subtitleLabel2 = [(AXAlertBannerSystemApertureViewController *)self subtitleLabel];
    text2 = [subtitleLabel2 text];
    v13 = [text2 length] != 0;
  }

  else
  {
    v13 = 0;
  }

  stackView4 = [(AXAlertBannerSystemApertureViewController *)self stackView];
  [stackView4 setDistribution:v13];

  if (v12)
  {
  }
}

- (void)_setupActionButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(AXAlertBannerSystemApertureViewController *)self setActionButton:v3];

  actionButton = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  [actionButton addTarget:self action:sel__actionButtonTapped forControlEvents:64];

  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  systemApertureActionButtonConfiguration = [alertBannerContent systemApertureActionButtonConfiguration];

  actionButton2 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
  if (systemApertureActionButtonConfiguration)
  {
    alertBannerContent2 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
    systemApertureActionButtonConfiguration2 = [alertBannerContent2 systemApertureActionButtonConfiguration];
    [actionButton2 setConfiguration:systemApertureActionButtonConfiguration2];
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [actionButton2 setImage:v10 forState:0];

    actionButton3 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [actionButton3 _setCornerRadius:16.0];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v13 = [systemBlueColor colorWithAlphaComponent:0.4];
    actionButton4 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [actionButton4 setBackgroundColor:v13];

    actionButton2 = AXUILocalizedStringForKey(@"ALERT_BANNER_CANCEL_BUTTON_LABEL");
    alertBannerContent2 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [alertBannerContent2 setAccessibilityLabel:actionButton2];
  }

  alertBannerContent3 = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  actionBlock = [alertBannerContent3 actionBlock];

  if (!actionBlock)
  {
    actionButton5 = [(AXAlertBannerSystemApertureViewController *)self actionButton];
    [actionButton5 setHidden:1];
  }
}

- (void)_actionButtonTapped
{
  alertBannerContent = [(AXAlertBannerSystemApertureViewController *)self alertBannerContent];
  actionBlock = [alertBannerContent actionBlock];
  actionBlock[2]();
}

@end