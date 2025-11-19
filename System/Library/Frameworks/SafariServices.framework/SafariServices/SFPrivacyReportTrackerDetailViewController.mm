@interface SFPrivacyReportTrackerDetailViewController
- (SFPrivacyReportTrackerDetailViewController)initWithTracker:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateHeaderSize;
- (void)_updateHeaderSizeForTraitChanges;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation SFPrivacyReportTrackerDetailViewController

- (SFPrivacyReportTrackerDetailViewController)initWithTracker:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SFPrivacyReportTrackerDetailViewController;
  v6 = [(SFPrivacyReportTrackerDetailViewController *)&v12 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, a3);
    v8 = [MEMORY[0x1E69DD1B8] safari_traitsAffectingTextAppearance];
    v9 = [(SFPrivacyReportTrackerDetailViewController *)v7 registerForTraitChanges:v8 withTarget:v7 action:sel__updateHeaderSizeForTraitChanges];

    v10 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = SFPrivacyReportTrackerDetailViewController;
  [(SFPrivacyReportTrackerDetailViewController *)&v37 viewDidLoad];
  v3 = [(WBSKnownTrackingThirdParty *)self->_tracker domain];
  [(SFPrivacyReportTrackerDetailViewController *)self setTitle:v3];

  v4 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  v5 = *MEMORY[0x1E69DE3D0];
  [v4 setRowHeight:*MEMORY[0x1E69DE3D0]];
  v36 = v4;
  [v4 setSectionHeaderHeight:v5];
  [v4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"websiteListSectionHeaderView"];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v6 setFont:v7];

  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:v8];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setNumberOfLines:0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = _WBSLocalizedString();
  v11 = [(WBSKnownTrackingThirdParty *)self->_tracker domain];
  v12 = [(WBSKnownTrackingThirdParty *)self->_tracker ownerName];
  v13 = [v9 stringWithFormat:v10, v11, v12];
  [v6 setText:v13];

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 320.0, 200.0}];
  header = self->_header;
  self->_header = v14;

  [(UIView *)self->_header setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_header addSubview:v6];
  v16 = self->_header;
  v17 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [v17 setTableHeaderView:v16];

  v18 = [(UIView *)self->_header layoutMarginsGuide];
  v29 = MEMORY[0x1E696ACD8];
  v35 = [v6 leadingAnchor];
  v33 = v18;
  v34 = [v18 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v38[0] = v32;
  v31 = [v6 topAnchor];
  v30 = [(UIView *)self->_header topAnchor];
  v19 = [v31 constraintEqualToSystemSpacingBelowAnchor:v30 multiplier:4.0];
  v38[1] = v19;
  v20 = [v6 trailingAnchor];
  v21 = [v18 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v38[2] = v22;
  v23 = [v6 bottomAnchor];
  v24 = [(UIView *)self->_header bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v38[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v29 activateConstraints:v26];

  v27 = _WBSLocalizedString();
  tableViewHeaderText = self->_tableViewHeaderText;
  self->_tableViewHeaderText = v27;
}

- (void)_updateHeaderSize
{
  [(UIView *)self->_header frame];
  v4 = v3;
  v6 = v5;
  header = self->_header;
  v8 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [v8 frame];
  Width = CGRectGetWidth(v19);
  LODWORD(v10) = 1148846080;
  LODWORD(v11) = 1112014848;
  [(UIView *)header systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;

  [(UIView *)self->_header setFrame:v4, v6, v13, v15];
  v16 = self->_header;
  v17 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [v17 setTableHeaderView:v16];
}

- (void)_updateHeaderSizeForTraitChanges
{
  v3 = dispatch_time(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFPrivacyReportTrackerDetailViewController__updateHeaderSizeForTraitChanges__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = SFPrivacyReportTrackerDetailViewController;
  [(SFPrivacyReportTrackerDetailViewController *)&v3 viewLayoutMarginsDidChange];
  [(SFPrivacyReportTrackerDetailViewController *)self _updateHeaderSize];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WBSKnownTrackingThirdParty *)self->_tracker firstParties:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"websiteCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"websiteCellIdentifier"];
  }

  v8 = [(WBSKnownTrackingThirdParty *)self->_tracker firstParties];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v10 domain];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  return v7;
}

@end