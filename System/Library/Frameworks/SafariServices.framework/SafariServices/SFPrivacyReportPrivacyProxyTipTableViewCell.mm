@interface SFPrivacyReportPrivacyProxyTipTableViewCell
- (SFPrivacyReportPrivacyProxyTipTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SFPrivacyReportPrivacyProxyTipTableViewCellDelegate)delegate;
- (void)_createContentViews;
- (void)_dismiss:(id)_dismiss;
- (void)_notifyDelegateOfStateChange;
- (void)_setPrivacyProxyStateToTrackers:(id)trackers;
- (void)_setPrivacyProxyStateToTrackersAndWebsites:(id)websites;
- (void)_turnOnCrossSiteTrackingProtectionIfNeeded;
- (void)prepareForReuse;
- (void)setUsesInsetStyle:(BOOL)style;
@end

@implementation SFPrivacyReportPrivacyProxyTipTableViewCell

- (SFPrivacyReportPrivacyProxyTipTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SFPrivacyReportPrivacyProxyTipTableViewCell;
  v4 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportPrivacyProxyTipTableViewCell *)v4 setBackgroundView:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFPrivacyReportPrivacyProxyTipTableViewCell *)v5 setBackgroundColor:clearColor];

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
  contentView = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _createContentViews];
}

- (void)setUsesInsetStyle:(BOOL)style
{
  self->_usesInsetStyle = style;
  if (style)
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
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  isUserAccountInSubscriberTierForPrivacyProxy = [mEMORY[0x1E69C9808] isUserAccountInSubscriberTierForPrivacyProxy];
  state = [mEMORY[0x1E69C9808] state];
  v110 = isUserAccountInSubscriberTierForPrivacyProxy;
  if (state)
  {
    v3 = 1;
  }

  else
  {
    v3 = isUserAccountInSubscriberTierForPrivacyProxy;
  }

  array = [MEMORY[0x1E695DF70] array];
  v5 = 0x1E69DD000uLL;
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer = [v6 layer];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  v108 = layer;
  [layer setCornerRadius:8.0];
  [v6 setClipsToBounds:1];
  v8 = 0x1E69DC000uLL;
  tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [v6 setBackgroundColor:tableCellGroupedBackgroundColor];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setSpacing:4.0];
  [v10 setAxis:1];
  [v10 setAlignment:0];
  [v10 setDistribution:0];
  [v6 addSubview:v10];
  topAnchor = [v10 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];
  [array addObject:v13];

  bottomAnchor = [v10 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-11.0];
  [array addObject:v16];

  trailingAnchor = [v10 trailingAnchor];
  trailingAnchor2 = [v6 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-13.0];
  [array addObject:v19];

  v113 = v10;
  if (v3)
  {
    v20 = MEMORY[0x1E69DCAB8];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v23 = [v20 imageNamed:@"PrivateProxyIcon" inBundle:v21 withConfiguration:v22];

    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v23];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v24 setTintColor:labelColor];

    [v6 addSubview:v24];
    widthAnchor = [v24 widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:35.0];
    [array addObject:v27];

    heightAnchor = [v24 heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:35.0];
    [array addObject:v29];

    topAnchor3 = [v24 topAnchor];
    topAnchor4 = [v6 topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:11.0];
    [array addObject:v32];

    leadingAnchor = [v24 leadingAnchor];
    leadingAnchor2 = [v6 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
    [array addObject:v35];

    trailingAnchor3 = [v24 trailingAnchor];
    leadingAnchor3 = [v10 leadingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-13.0];
    [array addObject:v38];

    if (state == 1)
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
    leadingAnchor4 = [v43 systemButtonWithImage:v44 target:self action:sel__dismiss_];

    [leadingAnchor4 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [leadingAnchor4 setTintColor:secondaryLabelColor];

    [v6 addSubview:leadingAnchor4];
    topAnchor5 = [leadingAnchor4 topAnchor];
    topAnchor6 = [v6 topAnchor];
    v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:13.0];
    [array addObject:v48];

    trailingAnchor4 = [leadingAnchor4 trailingAnchor];
    trailingAnchor5 = [v6 trailingAnchor];
    v51 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-13.0];
    [array addObject:v51];

    widthAnchor2 = [leadingAnchor4 widthAnchor];
    v53 = [widthAnchor2 constraintEqualToConstant:13.0];
    [array addObject:v53];

    heightAnchor2 = [leadingAnchor4 heightAnchor];
    v42 = [heightAnchor2 constraintEqualToConstant:13.0];
    v8 = 0x1E69DC000uLL;
    v5 = 0x1E69DD000uLL;
  }

  else
  {
    leadingAnchor4 = [v10 leadingAnchor];
    heightAnchor2 = [v6 leadingAnchor];
    v42 = [leadingAnchor4 constraintEqualToAnchor:heightAnchor2 constant:13.0];
  }

  [array addObject:v42];

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

  secondaryLabelColor2 = [*(v8 + 2184) secondaryLabelColor];
  [v56 setTextColor:secondaryLabelColor2];

  [v56 setNumberOfLines:0];
  v60 = objc_alloc_init(*(v5 + 592));
  quaternaryLabelColor = [*(v8 + 2184) quaternaryLabelColor];
  [v60 setBackgroundColor:quaternaryLabelColor];

  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor3 = [v60 heightAnchor];
  [heightAnchor3 constraintEqualToConstant:1.0];
  v64 = v63 = v8;
  [array addObject:v64];

  leadingAnchor5 = [v60 leadingAnchor];
  leadingAnchor6 = [v56 leadingAnchor];
  v67 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v67];

  topAnchor7 = [v60 topAnchor];
  v69 = v56;
  bottomAnchor3 = [v56 bottomAnchor];
  v71 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
  [array addObject:v71];

  v111 = v60;
  trailingAnchor6 = [v60 trailingAnchor];
  trailingAnchor7 = [v6 trailingAnchor];
  v74 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  [array addObject:v74];

  v75 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
  v76 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v57];
  [v75 setFont:v76];

  [v75 setNumberOfLines:0];
  linkColor = [*(v63 + 2184) linkColor];
  [v75 setTextColor:linkColor];

  [v75 setUserInteractionEnabled:1];
  v106 = array;
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

    if (state)
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
  leadingAnchor7 = [v6 leadingAnchor];
  contentView = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  leadingAnchor8 = [contentView leadingAnchor];
  v90 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  insetLeading = self->_insetLeading;
  self->_insetLeading = v90;

  trailingAnchor8 = [v6 trailingAnchor];
  contentView2 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  trailingAnchor9 = [contentView2 trailingAnchor];
  v95 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  insetTrailing = self->_insetTrailing;
  self->_insetTrailing = v95;

  topAnchor8 = [v6 topAnchor];
  contentView3 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  topAnchor9 = [contentView3 topAnchor];
  v100 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  [v106 addObject:v100];

  bottomAnchor4 = [v6 bottomAnchor];
  contentView4 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  bottomAnchor5 = [contentView4 bottomAnchor];
  v104 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v106 addObject:v104];

  [v106 addObject:self->_insetLeading];
  [v106 addObject:self->_insetTrailing];
  contentView5 = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self contentView];
  [contentView5 addSubview:v6];

  [MEMORY[0x1E696ACD8] activateConstraints:v106];
}

- (void)_notifyDelegateOfStateChange
{
  delegate = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate cellPrivacyProxyStateChanged:self];
  }
}

- (void)_turnOnCrossSiteTrackingProtectionIfNeeded
{
  mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  webui_trackerProtectionEnabled = [mEMORY[0x1E695AC00] webui_trackerProtectionEnabled];

  if ((webui_trackerProtectionEnabled & 1) == 0)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    [mEMORY[0x1E69ADFB8] setValue:&unk_1F5024128 forSetting:*MEMORY[0x1E69ADF30]];

    mEMORY[0x1E695AC00]2 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    [mEMORY[0x1E695AC00]2 webui_applySafariCookieAcceptPolicy];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *MEMORY[0x1E69E30E0];

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 0);
  }
}

- (void)_setPrivacyProxyStateToTrackersAndWebsites:(id)websites
{
  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _turnOnCrossSiteTrackingProtectionIfNeeded];
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackersAndWebsites___block_invoke;
  v5[3] = &unk_1E8490BC0;
  v5[4] = self;
  [mEMORY[0x1E69C9808] setPrivacyProxyState:2 completionHandler:v5];
}

uint64_t __90__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackersAndWebsites___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _notifyDelegateOfStateChange];
  }

  return result;
}

- (void)_setPrivacyProxyStateToTrackers:(id)trackers
{
  [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self _turnOnCrossSiteTrackingProtectionIfNeeded];
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackers___block_invoke;
  v5[3] = &unk_1E8490BC0;
  v5[4] = self;
  [mEMORY[0x1E69C9808] setPrivacyProxyState:1 completionHandler:v5];
}

uint64_t __79__SFPrivacyReportPrivacyProxyTipTableViewCell__setPrivacyProxyStateToTrackers___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _notifyDelegateOfStateChange];
  }

  return result;
}

- (void)_dismiss:(id)_dismiss
{
  delegate = [(SFPrivacyReportPrivacyProxyTipTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate cellPrivacyProxyUpsellDismissed:self];
  }
}

- (SFPrivacyReportPrivacyProxyTipTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end