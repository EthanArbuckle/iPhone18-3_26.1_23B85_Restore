@interface SFPrivacyReportWebsiteDetailViewController
- (SFPrivacyReportWebsiteDetailViewController)initWithWebsite:(id)website;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadSections;
- (void)viewDidLoad;
@end

@implementation SFPrivacyReportWebsiteDetailViewController

- (SFPrivacyReportWebsiteDetailViewController)initWithWebsite:(id)website
{
  websiteCopy = website;
  v10.receiver = self;
  v10.super_class = SFPrivacyReportWebsiteDetailViewController;
  v6 = [(SFPrivacyReportWebsiteDetailViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_website, website);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SFPrivacyReportWebsiteDetailViewController;
  [(SFPrivacyReportWebsiteDetailViewController *)&v6 viewDidLoad];
  domain = [(WBSTrackedFirstParty *)self->_website domain];
  [(SFPrivacyReportWebsiteDetailViewController *)self setTitle:domain];

  tableView = [(SFPrivacyReportWebsiteDetailViewController *)self tableView];
  v5 = *MEMORY[0x1E69DE3D0];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setSectionHeaderHeight:v5];
  [(SFPrivacyReportWebsiteDetailViewController *)self _loadSections];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  trackers = [v4 trackers];
  v6 = [trackers count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"trackerCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"trackerCellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  trackers = [v8 trackers];
  v10 = [pathCopy row];

  v11 = [trackers objectAtIndexedSubscript:v10];

  domain = [v11 domain];
  textLabel = [v7 textLabel];
  [textLabel setText:domain];

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

  ownerName = [v11 ownerName];
  [detailTextLabel setText:ownerName];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  title = [v4 title];

  return title;
}

- (void)_loadSections
{
  array = [MEMORY[0x1E695DF70] array];
  blockedTrackers = [(WBSTrackedFirstParty *)self->_website blockedTrackers];
  v4 = blockedTrackers;
  if (self->_separatesBlockedTrackers && [blockedTrackers count])
  {
    v5 = _WBSLocalizedString();
    v6 = [[SFPrivacyReportWebsiteDetailSection alloc] initWithTitle:v5 trackers:v4];
    [array addObject:v6];
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
    [array addObject:v10];
  }

  v11 = [array copy];
  sections = self->_sections;
  self->_sections = v11;
}

@end