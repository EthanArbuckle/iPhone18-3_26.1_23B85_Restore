@interface SFPrivacyReportWebsiteDetailViewController
- (SFPrivacyReportWebsiteDetailViewController)initWithWebsite:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadSections;
- (void)viewDidLoad;
@end

@implementation SFPrivacyReportWebsiteDetailViewController

- (SFPrivacyReportWebsiteDetailViewController)initWithWebsite:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFPrivacyReportWebsiteDetailViewController;
  v6 = [(SFPrivacyReportWebsiteDetailViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_website, a3);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SFPrivacyReportWebsiteDetailViewController;
  [(SFPrivacyReportWebsiteDetailViewController *)&v6 viewDidLoad];
  v3 = [(WBSTrackedFirstParty *)self->_website domain];
  [(SFPrivacyReportWebsiteDetailViewController *)self setTitle:v3];

  v4 = [(SFPrivacyReportWebsiteDetailViewController *)self tableView];
  v5 = *MEMORY[0x1E69DE3D0];
  [v4 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v4 setSectionHeaderHeight:v5];
  [(SFPrivacyReportWebsiteDetailViewController *)self _loadSections];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 trackers];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"trackerCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"trackerCellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [v6 section]);
  v9 = [v8 trackers];
  v10 = [v6 row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  v12 = [v11 domain];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  v14 = [v7 detailTextLabel];
  [v14 setNumberOfLines:0];
  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v14 setTextColor:v15];

  v16 = [v11 ownerName];
  [v14 setText:v16];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 title];

  return v5;
}

- (void)_loadSections
{
  v13 = [MEMORY[0x1E695DF70] array];
  v3 = [(WBSTrackedFirstParty *)self->_website blockedTrackers];
  v4 = v3;
  if (self->_separatesBlockedTrackers && [v3 count])
  {
    v5 = _WBSLocalizedString();
    v6 = [[SFPrivacyReportWebsiteDetailSection alloc] initWithTitle:v5 trackers:v4];
    [v13 addObject:v6];
  }

  website = self->_website;
  if (self->_separatesBlockedTrackers)
  {
    [(WBSTrackedFirstParty *)website preventedTrackers];
  }

  else
  {
    [(WBSTrackedFirstParty *)website trackers];
  }
  v8 = ;
  if ([v8 count])
  {
    v9 = _WBSLocalizedString();
    v10 = [[SFPrivacyReportWebsiteDetailSection alloc] initWithTitle:v9 trackers:v8];
    [v13 addObject:v10];
  }

  v11 = [v13 copy];
  sections = self->_sections;
  self->_sections = v11;
}

@end