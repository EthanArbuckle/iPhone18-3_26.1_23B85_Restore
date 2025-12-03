@interface SFPrivacyReportTrackerDetailViewController
- (SFPrivacyReportTrackerDetailViewController)initWithTracker:(id)tracker;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateHeaderSize;
- (void)_updateHeaderSizeForTraitChanges;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation SFPrivacyReportTrackerDetailViewController

- (SFPrivacyReportTrackerDetailViewController)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v12.receiver = self;
  v12.super_class = SFPrivacyReportTrackerDetailViewController;
  v6 = [(SFPrivacyReportTrackerDetailViewController *)&v12 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
    safari_traitsAffectingTextAppearance = [MEMORY[0x1E69DD1B8] safari_traitsAffectingTextAppearance];
    v9 = [(SFPrivacyReportTrackerDetailViewController *)v7 registerForTraitChanges:safari_traitsAffectingTextAppearance withTarget:v7 action:sel__updateHeaderSizeForTraitChanges];

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
  domain = [(WBSKnownTrackingThirdParty *)self->_tracker domain];
  [(SFPrivacyReportTrackerDetailViewController *)self setTitle:domain];

  tableView = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  v5 = *MEMORY[0x1E69DE3D0];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v36 = tableView;
  [tableView setSectionHeaderHeight:v5];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"websiteListSectionHeaderView"];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v6 setFont:v7];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:secondaryLabelColor];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setNumberOfLines:0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = _WBSLocalizedString();
  domain2 = [(WBSKnownTrackingThirdParty *)self->_tracker domain];
  ownerName = [(WBSKnownTrackingThirdParty *)self->_tracker ownerName];
  v13 = [v9 stringWithFormat:v10, domain2, ownerName];
  [v6 setText:v13];

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 320.0, 200.0}];
  header = self->_header;
  self->_header = v14;

  [(UIView *)self->_header setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_header addSubview:v6];
  v16 = self->_header;
  tableView2 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [tableView2 setTableHeaderView:v16];

  layoutMarginsGuide = [(UIView *)self->_header layoutMarginsGuide];
  v29 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v6 leadingAnchor];
  v33 = layoutMarginsGuide;
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v32;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [(UIView *)self->_header topAnchor];
  v19 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:4.0];
  v38[1] = v19;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[2] = v22;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_header bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  tableView = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v19);
  LODWORD(v10) = 1148846080;
  LODWORD(v11) = 1112014848;
  [(UIView *)header systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;

  [(UIView *)self->_header setFrame:v4, v6, v13, v15];
  v16 = self->_header;
  tableView2 = [(SFPrivacyReportTrackerDetailViewController *)self tableView];
  [tableView2 setTableHeaderView:v16];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WBSKnownTrackingThirdParty *)self->_tracker firstParties:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"websiteCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"websiteCellIdentifier"];
  }

  firstParties = [(WBSKnownTrackingThirdParty *)self->_tracker firstParties];
  v9 = [pathCopy row];

  v10 = [firstParties objectAtIndexedSubscript:v9];

  domain = [v10 domain];
  textLabel = [v7 textLabel];
  [textLabel setText:domain];

  return v7;
}

@end