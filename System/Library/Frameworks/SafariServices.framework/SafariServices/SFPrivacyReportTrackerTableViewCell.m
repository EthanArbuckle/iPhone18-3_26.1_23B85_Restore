@interface SFPrivacyReportTrackerTableViewCell
- (SFPrivacyReportTrackerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setTracker:(id)a3;
@end

@implementation SFPrivacyReportTrackerTableViewCell

- (SFPrivacyReportTrackerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v4 = [(SFPrivacyReportTrackingTableViewCell *)self initWithDetailLabel:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemTealColor];
    [(SFPrivacyReportTrackerTableViewCell *)v4 setTintColor:v5];

    v6 = v4;
  }

  return v4;
}

- (void)setTracker:(id)a3
{
  v5 = a3;
  if (self->_tracker != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_tracker, a3);
    v6 = [(WBSKnownTrackingThirdParty *)v11 domain];
    v7 = [(SFPrivacyReportTrackingTableViewCell *)self domainLabel];
    [v7 setText:v6];

    v8 = [(WBSKnownTrackingThirdParty *)v11 ownerName];
    v9 = [(SFPrivacyReportTrackingTableViewCell *)self domainDetailLabel];
    [v9 setText:v8];

    v10 = [(WBSKnownTrackingThirdParty *)v11 firstParties];
    -[SFPrivacyReportTrackingTableViewCell setCount:](self, "setCount:", [v10 count]);

    v5 = v11;
  }
}

@end