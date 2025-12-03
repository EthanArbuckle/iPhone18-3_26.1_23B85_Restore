@interface ASAccessoryCompanionAppView
- (ASAccessoryCompanionAppView)initWithBundleID:(id)d;
- (void)_viewButtonTapped:(id)tapped;
- (void)updateConstraints;
@end

@implementation ASAccessoryCompanionAppView

- (ASAccessoryCompanionAppView)initWithBundleID:(id)d
{
  v46[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v44.receiver = self;
  v44.super_class = ASAccessoryCompanionAppView;
  v6 = [(ASAccessoryCompanionAppView *)&v44 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v8 = [[ASAccessoryCompanionAppInfo alloc] initWithBundleID:dCopy];
    appInfo = v7->_appInfo;
    v7->_appInfo = v8;

    v10 = objc_alloc(MEMORY[0x277D755E8]);
    icon = [(ASAccessoryCompanionAppInfo *)v7->_appInfo icon];
    v12 = [v10 initWithImage:icon];
    iconView = v7->_iconView;
    v7->_iconView = v12;

    [(UIImageView *)v7->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(UIImageView *)v7->_iconView setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UIImageView *)v7->_iconView setContentHuggingPriority:0 forAxis:v15];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_iconView];
    v16 = [MEMORY[0x277D75220] buttonWithType:1];
    viewButton = v7->_viewButton;
    v7->_viewButton = v16;

    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    v43 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"OPEN" value:&stru_28499D698 table:0];
    v45 = *MEMORY[0x277D740A8];
    v46[0] = v43;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v23 = [v19 initWithString:v21 attributes:v22];
    [plainButtonConfiguration setAttributedTitle:v23];

    [plainButtonConfiguration setContentInsets:{5.0, 15.0, 5.0, 15.0}];
    [plainButtonConfiguration setCornerStyle:4];
    clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
    quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
    [clearConfiguration setBackgroundColor:quaternarySystemFillColor];

    [plainButtonConfiguration setBackground:clearConfiguration];
    [(UIButton *)v7->_viewButton setConfiguration:plainButtonConfiguration];
    [(UIButton *)v7->_viewButton addTarget:v7 action:sel__viewButtonTapped_ forControlEvents:64];
    [(UIButton *)v7->_viewButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_viewButton];
    v26 = objc_opt_new();
    nameLabel = v7->_nameLabel;
    v7->_nameLabel = v26;

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v7->_nameLabel setTextColor:labelColor];

    name = [(ASAccessoryCompanionAppInfo *)v7->_appInfo name];
    [(UILabel *)v7->_nameLabel setText:name];

    [(UILabel *)v7->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_nameLabel];
    v30 = objc_opt_new();
    publisherLabel = v7->_publisherLabel;
    v7->_publisherLabel = v30;

    v32 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7->_publisherLabel setFont:v32];

    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v7->_publisherLabel setTextColor:tertiaryLabelColor];

    publisherName = [(ASAccessoryCompanionAppInfo *)v7->_appInfo publisherName];
    [(UILabel *)v7->_publisherLabel setText:publisherName];

    [(UILabel *)v7->_publisherLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_publisherLabel];
    v35 = objc_opt_new();
    installedLabel = v7->_installedLabel;
    v7->_installedLabel = v35;

    v37 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7->_installedLabel setFont:v37];

    tertiaryLabelColor2 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v7->_installedLabel setTextColor:tertiaryLabelColor2];

    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"Installed" value:&stru_28499D698 table:0];
    [(UILabel *)v7->_installedLabel setText:v40];

    [(UILabel *)v7->_installedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_installedLabel];
    [(ASAccessoryCompanionAppView *)v7 setNeedsUpdateConstraints];
  }

  v41 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)updateConstraints
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  widthAnchor = [(UIImageView *)self->_iconView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:60.0];
  [(NSArray *)v3 addObject:v5];

  heightAnchor = [(UIImageView *)self->_iconView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:60.0];
  [(NSArray *)v3 addObject:v7];

  leadingAnchor = [(UIImageView *)self->_iconView leadingAnchor];
  leadingAnchor2 = [(ASAccessoryCompanionAppView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  [(NSArray *)v3 addObject:v10];

  centerYAnchor = [(UIImageView *)self->_iconView centerYAnchor];
  centerYAnchor2 = [(ASAccessoryCompanionAppView *)self centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v3 addObject:v13];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  publisherLabel = self->_publisherLabel;
  v54[0] = self->_nameLabel;
  v54[1] = publisherLabel;
  v54[2] = self->_installedLabel;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v15 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        LODWORD(v16) = 1132003328;
        [v20 setContentHuggingPriority:0 forAxis:v16];
        leadingAnchor3 = [v20 leadingAnchor];
        trailingAnchor = [(UIImageView *)self->_iconView trailingAnchor];
        v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
        [(NSArray *)v3 addObject:v23];

        trailingAnchor2 = [v20 trailingAnchor];
        leadingAnchor4 = [(UIButton *)self->_viewButton leadingAnchor];
        v26 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-15.0];
        [(NSArray *)v3 addObject:v26];
      }

      v17 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v17);
  }

  trailingAnchor3 = [(UIButton *)self->_viewButton trailingAnchor];
  trailingAnchor4 = [(ASAccessoryCompanionAppView *)self trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
  [(NSArray *)v3 addObject:v29];

  centerYAnchor3 = [(UIButton *)self->_viewButton centerYAnchor];
  centerYAnchor4 = [(ASAccessoryCompanionAppView *)self centerYAnchor];
  v32 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [(NSArray *)v3 addObject:v32];

  firstBaselineAnchor = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  topAnchor = [(ASAccessoryCompanionAppView *)self topAnchor];
  v35 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:35.0];
  [(NSArray *)v3 addObject:v35];

  firstBaselineAnchor2 = [(UILabel *)self->_publisherLabel firstBaselineAnchor];
  firstBaselineAnchor3 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  v38 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:15.0];
  [(NSArray *)v3 addObject:v38];

  firstBaselineAnchor4 = [(UILabel *)self->_installedLabel firstBaselineAnchor];
  firstBaselineAnchor5 = [(UILabel *)self->_publisherLabel firstBaselineAnchor];
  v41 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:15.0];
  [(NSArray *)v3 addObject:v41];

  firstBaselineAnchor6 = [(UILabel *)self->_installedLabel firstBaselineAnchor];
  bottomAnchor = [(ASAccessoryCompanionAppView *)self bottomAnchor];
  v44 = [firstBaselineAnchor6 constraintEqualToAnchor:bottomAnchor constant:-25.0];
  [(NSArray *)v3 addObject:v44];

  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_currentConstraints];
  currentConstraints = self->_currentConstraints;
  self->_currentConstraints = v3;
  v46 = v3;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_currentConstraints];
  v49.receiver = self;
  v49.super_class = ASAccessoryCompanionAppView;
  [(ASAccessoryCompanionAppView *)&v49 updateConstraints];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_viewButtonTapped:(id)tapped
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openApplicationWithBundleID:self->_bundleID];
}

@end