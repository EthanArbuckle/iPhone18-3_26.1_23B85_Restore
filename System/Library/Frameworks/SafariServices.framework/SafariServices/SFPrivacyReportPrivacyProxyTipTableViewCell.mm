@interface SFPrivacyReportPrivacyProxyTipTableViewCell
- (SFPrivacyReportPrivacyProxyTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SFPrivacyReportPrivacyProxyTipTableViewCellDelegate)delegate;
- (void)_createContentViews;
- (void)_dismiss:(id)a3;
- (void)_notifyDelegateOfStateChange;
- (void)_setPrivacyProxyStateToTrackers:(id)a3;
- (void)_setPrivacyProxyStateToTrackersAndWebsites:(id)a3;
- (void)_turnOnCrossSiteTrackingProtectionIfNeeded;
- (void)prepareForReuse;
- (void)setUsesInsetStyle:(BOOL)a3;
@end

@implementation SFPrivacyReportPrivacyProxyTipTableViewCell

- (SFPrivacyReportPrivacyProxyTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SFPrivacyReportPrivacyProxyTipTableViewCell;
  v4 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportPrivacyProxyTipTableViewCell *)v4 setBackgroundView:0];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(SFPrivacyReportPrivacyProxyTipTableViewCell *)v5 setBackgroundColor:v6];

    [(SFPrivacyReportPrivacyProxyTipTableViewCell *)v5 _createContentViews];
    v7 = v5;
  }

  return v5;
}

- (void)prepareForReuse
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SFPrivacyReportPrivacyProxyTipTableViewCell;
  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)&v13 prepareForReuse];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _createContentViews];
}

- (void)setUsesInsetStyle:(BOOL)a3
{
  self->_usesInsetStyle = a3;
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 13.0;
  }

  [(NSLayoutConstraint *)self->_insetLeading setConstant:v4];
  insetTrailing = self->_insetTrailing;

  [(NSLayoutConstraint *)insetTrailing setConstant:-v4];
}

- (void)_createContentViews
{
  v114 = [MEMORY[0x1E69C9808] sharedManager];
  v2 = [v114 isUserAccountInSubscriberTierForPrivacyProxy];
  v107 = [v114 state];
  v110 = v2;
  if (v107)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = 0x1E69DD000uLL;
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v7 = [v6 layer];
  [v7 setCornerCurve:*MEMORY[0x1E69796E8]];
  v108 = v7;
  [v7 setCornerRadius:8.0];
  [v6 setClipsToBounds:1];
  v8 = 0x1E69DC000uLL;
  v9 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [v6 setBackgroundColor:v9];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setSpacing:4.0];
  [v10 setAxis:1];
  [v10 setAlignment:0];
  [v10 setDistribution:0];
  [v6 addSubview:v10];
  v11 = [v10 topAnchor];
  v12 = [v6 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:11.0];
  [v4 addObject:v13];

  v14 = [v10 bottomAnchor];
  v15 = [v6 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-11.0];
  [v4 addObject:v16];

  v17 = [v10 trailingAnchor];
  v18 = [v6 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-13.0];
  [v4 addObject:v19];

  v113 = v10;
  if (v3)
  {
    v20 = MEMORY[0x1E69DCAB8];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v23 = [v20 imageNamed:@"PrivateProxyIcon" inBundle:v21 withConfiguration:v22];

    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v23];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [MEMORY[0x1E69DC888] labelColor];
    [v24 setTintColor:v25];

    [v6 addSubview:v24];
    v26 = [v24 widthAnchor];
    v27 = [v26 constraintEqualToConstant:35.0];
    [v4 addObject:v27];

    v28 = [v24 heightAnchor];
    v29 = [v28 constraintEqualToConstant:35.0];
    [v4 addObject:v29];

    v30 = [v24 topAnchor];
    v31 = [v6 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:11.0];
    [v4 addObject:v32];

    v33 = [v24 leadingAnchor];
    v34 = [v6 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:13.0];
    [v4 addObject:v35];

    v36 = [v24 trailingAnchor];
    v37 = [v10 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-13.0];
    [v4 addObject:v38];

    if (v107 == 1)
    {
      v39 = v110;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      v8 = 0x1E69DC000;
      v5 = 0x1E69DD000;
      goto LABEL_13;
    }

    v43 = MEMORY[0x1E69DC738];
    v44 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v40 = [v43 systemButtonWithImage:v44 target:self action:sel__dismiss_];

    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v40 setTintColor:v45];

    [v6 addSubview:v40];
    v46 = [v40 topAnchor];
    v47 = [v6 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:13.0];
    [v4 addObject:v48];

    v49 = [v40 trailingAnchor];
    v50 = [v6 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-13.0];
    [v4 addObject:v51];

    v52 = [v40 widthAnchor];
    v53 = [v52 constraintEqualToConstant:13.0];
    [v4 addObject:v53];

    v41 = [v40 heightAnchor];
    v42 = [v41 constraintEqualToConstant:13.0];
    v8 = 0x1E69DC000uLL;
    v5 = 0x1E69DD000uLL;
  }

  else
  {
    v40 = [v10 leadingAnchor];
    v41 = [v6 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:13.0];
  }

  [v4 addObject:v42];

LABEL_13:
  v54 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  v55 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v54 setFont:v55];

  v112 = v54;
  [v54 setNumberOfLines:0];
  v56 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = *MEMORY[0x1E69DDD80];
  v58 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v56 setFont:v58];

  v59 = [*(v8 + 2184) secondaryLabelColor];
  [v56 setTextColor:v59];

  [v56 setNumberOfLines:0];
  v60 = objc_alloc_init(*(v5 + 592));
  v61 = [*(v8 + 2184) quaternaryLabelColor];
  [v60 setBackgroundColor:v61];

  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [v60 heightAnchor];
  [v62 constraintEqualToConstant:1.0];
  v64 = v63 = v8;
  [v4 addObject:v64];

  v65 = [v60 leadingAnchor];
  v66 = [v56 leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v4 addObject:v67];

  v68 = [v60 topAnchor];
  v69 = v56;
  v70 = [v56 bottomAnchor];
  v71 = [v68 constraintEqualToAnchor:v70 constant:4.0];
  [v4 addObject:v71];

  v111 = v60;
  v72 = [v60 trailingAnchor];
  v73 = [v6 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  [v4 addObject:v74];

  v75 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
  v76 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v57];
  [v75 setFont:v76];

  [v75 setNumberOfLines:0];
  v77 = [*(v63 + 2184) linkColor];
  [v75 setTextColor:v77];

  [v75 setUserInteractionEnabled:1];
  v106 = v4;
  if (v110)
  {
    v78 = _WBSLocalizedString();
    v79 = v112;
    [v112 setText:v78];

    v82 = v113;
    v83 = _WBSLocalizedString();
    [v69 setText:v83];

    v84 = &selRef__setPrivacyProxyStateToTrackersAndWebsites_;
  }

  else
  {
    v82 = v113;
    v80 = _WBSLocalizedString();
    v79 = v112;
    [v112 setText:v80];

    v81 = _WBSLocalizedString();
    [v69 setText:v81];

    if (v107)
    {
      v84 = &selRef__openICloudPrivateRelaySettingsToLearnMore_;
    }

    else
    {
      v84 = &selRef__setPrivacyProxyStateToTrackers_;
    }
  }

  v85 = _WBSLocalizedString();
  [v75 setText:v85];

  v86 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:*v84];
  [v75 addGestureRecognizer:v86];

  [v82 addArrangedSubview:v79];
  [v82 addArrangedSubview:v69];
  [v82 addArrangedSubview:v75];
  [v82 setCustomSpacing:v69 afterView:14.0];
  [v6 addSubview:v111];
  v87 = [v6 leadingAnchor];
  v88 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  v89 = [v88 leadingAnchor];
  v90 = [v87 constraintEqualToAnchor:v89];
  insetLeading = self->_insetLeading;
  self->_insetLeading = v90;

  v92 = [v6 trailingAnchor];
  v93 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  v94 = [v93 trailingAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];
  insetTrailing = self->_insetTrailing;
  self->_insetTrailing = v95;

  v97 = [v6 topAnchor];
  v98 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  v99 = [v98 topAnchor];
  v100 = [v97 constraintEqualToAnchor:v99];
  [v106 addObject:v100];

  v101 = [v6 bottomAnchor];
  v102 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  v103 = [v102 bottomAnchor];
  v104 = [v101 constraintEqualToAnchor:v103];
  [v106 addObject:v104];

  [v106 addObject:self->_insetLeading];
  [v106 addObject:self->_insetTrailing];
  v105 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  [v105 addSubview:v6];

  [MEMORY[0x1E696ACD8] activateConstraints:v106];
}

- (void)_notifyDelegateOfStateChange
{
  v3 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 cellPrivacyProxyStateChanged:self];
  }
}

- (void)_turnOnCrossSiteTrackingProtectionIfNeeded
{
  v2 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v3 = [v2 webui_trackerProtectionEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    [v4 setValue:&unk_1F5024128 forSetting:*MEMORY[0x1E69ADF30]];

    v5 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    [v5 webui_applySafariCookieAcceptPolicy];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *MEMORY[0x1E69E30E0];

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 0);
  }
}

- (void)_setPrivacyProxyStateToTrackersAndWebsites:(id)a3
{
  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _turnOnCrossSiteTrackingProtectionIfNeeded];
  v4 = [MEMORY[0x1E69C9808] sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackersAndWebsites___block_invoke;
  v5[3] = &unk_1E8490BC0;
  v5[4] = self;
  [v4 setPrivacyProxyState:2 completionHandler:v5];
}

uint64_t __90__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackersAndWebsites___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _notifyDelegateOfStateChange];
  }

  return result;
}

- (void)_setPrivacyProxyStateToTrackers:(id)a3
{
  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _turnOnCrossSiteTrackingProtectionIfNeeded];
  v4 = [MEMORY[0x1E69C9808] sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackers___block_invoke;
  v5[3] = &unk_1E8490BC0;
  v5[4] = self;
  [v4 setPrivacyProxyState:1 completionHandler:v5];
}

uint64_t __79__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackers___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _notifyDelegateOfStateChange];
  }

  return result;
}

- (void)_dismiss:(id)a3
{
  v4 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 cellPrivacyProxyUpsellDismissed:self];
  }
}

- (SFPrivacyReportPrivacyProxyTipTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end