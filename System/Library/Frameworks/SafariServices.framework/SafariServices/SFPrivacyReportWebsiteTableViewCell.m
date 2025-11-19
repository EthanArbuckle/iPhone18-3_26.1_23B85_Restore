@interface SFPrivacyReportWebsiteTableViewCell
- (SFPrivacyReportWebsiteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setWebsite:(id)a3;
@end

@implementation SFPrivacyReportWebsiteTableViewCell

- (SFPrivacyReportWebsiteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v4 = [(SFPrivacyReportTrackingTableViewCell *)self initWithDetailLabel:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemGreenColor];
    [(SFPrivacyReportWebsiteTableViewCell *)v4 setTintColor:v5];

    v6 = v4;
  }

  return v4;
}

- (void)setWebsite:(id)a3
{
  v5 = a3;
  if (self->_website != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_website, a3);
    v6 = [(WBSTrackedFirstParty *)v9 domain];
    v7 = [(SFPrivacyReportTrackingTableViewCell *)self domainLabel];
    [v7 setText:v6];

    v8 = [(WBSTrackedFirstParty *)v9 trackers];
    -[SFPrivacyReportTrackingTableViewCell setCount:](self, "setCount:", [v8 count]);

    v5 = v9;
  }
}

@end