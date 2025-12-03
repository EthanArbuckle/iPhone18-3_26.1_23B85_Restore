@interface SFPrivacyReportWebsiteTableViewCell
- (SFPrivacyReportWebsiteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setWebsite:(id)website;
@end

@implementation SFPrivacyReportWebsiteTableViewCell

- (SFPrivacyReportWebsiteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v4 = [(SFPrivacyReportTrackingTableViewCell *)self initWithDetailLabel:0 reuseIdentifier:identifier];
  if (v4)
  {
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    [(SFPrivacyReportWebsiteTableViewCell *)v4 setTintColor:systemGreenColor];

    v6 = v4;
  }

  return v4;
}

- (void)setWebsite:(id)website
{
  websiteCopy = website;
  if (self->_website != websiteCopy)
  {
    v9 = websiteCopy;
    objc_storeStrong(&self->_website, website);
    domain = [(WBSTrackedFirstParty *)v9 domain];
    domainLabel = [(SFPrivacyReportTrackingTableViewCell *)self domainLabel];
    [domainLabel setText:domain];

    trackers = [(WBSTrackedFirstParty *)v9 trackers];
    -[SFPrivacyReportTrackingTableViewCell setCount:](self, "setCount:", [trackers count]);

    websiteCopy = v9;
  }
}

@end