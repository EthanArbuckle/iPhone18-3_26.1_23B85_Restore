@interface SFPrivacyReportTrackerTableViewCell
- (SFPrivacyReportTrackerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setTracker:(id)tracker;
@end

@implementation SFPrivacyReportTrackerTableViewCell

- (SFPrivacyReportTrackerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v4 = [(SFPrivacyReportTrackingTableViewCell *)self initWithDetailLabel:1 reuseIdentifier:identifier];
  if (v4)
  {
    systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
    [(SFPrivacyReportTrackerTableViewCell *)v4 setTintColor:systemTealColor];

    v6 = v4;
  }

  return v4;
}

- (void)setTracker:(id)tracker
{
  trackerCopy = tracker;
  if (self->_tracker != trackerCopy)
  {
    v11 = trackerCopy;
    objc_storeStrong(&self->_tracker, tracker);
    domain = [(WBSKnownTrackingThirdParty *)v11 domain];
    domainLabel = [(SFPrivacyReportTrackingTableViewCell *)self domainLabel];
    [domainLabel setText:domain];

    ownerName = [(WBSKnownTrackingThirdParty *)v11 ownerName];
    domainDetailLabel = [(SFPrivacyReportTrackingTableViewCell *)self domainDetailLabel];
    [domainDetailLabel setText:ownerName];

    firstParties = [(WBSKnownTrackingThirdParty *)v11 firstParties];
    -[SFPrivacyReportTrackingTableViewCell setCount:](self, "setCount:", [firstParties count]);

    trackerCopy = v11;
  }
}

@end