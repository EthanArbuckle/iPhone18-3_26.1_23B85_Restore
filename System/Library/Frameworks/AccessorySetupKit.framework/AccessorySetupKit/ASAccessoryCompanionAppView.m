@interface ASAccessoryCompanionAppView
- (ASAccessoryCompanionAppView)initWithBundleID:(id)a3;
- (void)_viewButtonTapped:(id)a3;
- (void)updateConstraints;
@end

@implementation ASAccessoryCompanionAppView

- (ASAccessoryCompanionAppView)initWithBundleID:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v44.receiver = self;
  v44.super_class = ASAccessoryCompanionAppView;
  v6 = [(ASAccessoryCompanionAppView *)&v44 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v8 = [[ASAccessoryCompanionAppInfo alloc] initWithBundleID:v5];
    appInfo = v7->_appInfo;
    v7->_appInfo = v8;

    v10 = objc_alloc(MEMORY[0x277D755E8]);
    v11 = [(ASAccessoryCompanionAppInfo *)v7->_appInfo icon];
    v12 = [v10 initWithImage:v11];
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

    v18 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v43 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"OPEN" value:&stru_28499D698 table:0];
    v45 = *MEMORY[0x277D740A8];
    v46[0] = v43;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v23 = [v19 initWithString:v21 attributes:v22];
    [v18 setAttributedTitle:v23];

    [v18 setContentInsets:{5.0, 15.0, 5.0, 15.0}];
    [v18 setCornerStyle:4];
    v24 = [MEMORY[0x277D751C0] clearConfiguration];
    v25 = [MEMORY[0x277D75348] quaternarySystemFillColor];
    [v24 setBackgroundColor:v25];

    [v18 setBackground:v24];
    [(UIButton *)v7->_viewButton setConfiguration:v18];
    [(UIButton *)v7->_viewButton addTarget:v7 action:sel__viewButtonTapped_ forControlEvents:64];
    [(UIButton *)v7->_viewButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_viewButton];
    v26 = objc_opt_new();
    nameLabel = v7->_nameLabel;
    v7->_nameLabel = v26;

    v28 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v7->_nameLabel setTextColor:v28];

    v29 = [(ASAccessoryCompanionAppInfo *)v7->_appInfo name];
    [(UILabel *)v7->_nameLabel setText:v29];

    [(UILabel *)v7->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_nameLabel];
    v30 = objc_opt_new();
    publisherLabel = v7->_publisherLabel;
    v7->_publisherLabel = v30;

    v32 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7->_publisherLabel setFont:v32];

    v33 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v7->_publisherLabel setTextColor:v33];

    v34 = [(ASAccessoryCompanionAppInfo *)v7->_appInfo publisherName];
    [(UILabel *)v7->_publisherLabel setText:v34];

    [(UILabel *)v7->_publisherLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASAccessoryCompanionAppView *)v7 addSubview:v7->_publisherLabel];
    v35 = objc_opt_new();
    installedLabel = v7->_installedLabel;
    v7->_installedLabel = v35;

    v37 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7->_installedLabel setFont:v37];

    v38 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UILabel *)v7->_installedLabel setTextColor:v38];

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
  v4 = [(UIImageView *)self->_iconView widthAnchor];
  v5 = [v4 constraintEqualToConstant:60.0];
  [(NSArray *)v3 addObject:v5];

  v6 = [(UIImageView *)self->_iconView heightAnchor];
  v7 = [v6 constraintEqualToConstant:60.0];
  [(NSArray *)v3 addObject:v7];

  v8 = [(UIImageView *)self->_iconView leadingAnchor];
  v9 = [(ASAccessoryCompanionAppView *)self leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:15.0];
  [(NSArray *)v3 addObject:v10];

  v11 = [(UIImageView *)self->_iconView centerYAnchor];
  v12 = [(ASAccessoryCompanionAppView *)self centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
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
        v21 = [v20 leadingAnchor];
        v22 = [(UIImageView *)self->_iconView trailingAnchor];
        v23 = [v21 constraintEqualToAnchor:v22 constant:15.0];
        [(NSArray *)v3 addObject:v23];

        v24 = [v20 trailingAnchor];
        v25 = [(UIButton *)self->_viewButton leadingAnchor];
        v26 = [v24 constraintEqualToAnchor:v25 constant:-15.0];
        [(NSArray *)v3 addObject:v26];
      }

      v17 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v17);
  }

  v27 = [(UIButton *)self->_viewButton trailingAnchor];
  v28 = [(ASAccessoryCompanionAppView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-15.0];
  [(NSArray *)v3 addObject:v29];

  v30 = [(UIButton *)self->_viewButton centerYAnchor];
  v31 = [(ASAccessoryCompanionAppView *)self centerYAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [(NSArray *)v3 addObject:v32];

  v33 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  v34 = [(ASAccessoryCompanionAppView *)self topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:35.0];
  [(NSArray *)v3 addObject:v35];

  v36 = [(UILabel *)self->_publisherLabel firstBaselineAnchor];
  v37 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:15.0];
  [(NSArray *)v3 addObject:v38];

  v39 = [(UILabel *)self->_installedLabel firstBaselineAnchor];
  v40 = [(UILabel *)self->_publisherLabel firstBaselineAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:15.0];
  [(NSArray *)v3 addObject:v41];

  v42 = [(UILabel *)self->_installedLabel firstBaselineAnchor];
  v43 = [(ASAccessoryCompanionAppView *)self bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-25.0];
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

- (void)_viewButtonTapped:(id)a3
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openApplicationWithBundleID:self->_bundleID];
}

@end