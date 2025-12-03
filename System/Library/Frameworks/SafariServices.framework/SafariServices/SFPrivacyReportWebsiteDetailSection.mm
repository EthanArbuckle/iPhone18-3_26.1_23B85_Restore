@interface SFPrivacyReportWebsiteDetailSection
- (SFPrivacyReportWebsiteDetailSection)initWithTitle:(id)title trackers:(id)trackers;
@end

@implementation SFPrivacyReportWebsiteDetailSection

- (SFPrivacyReportWebsiteDetailSection)initWithTitle:(id)title trackers:(id)trackers
{
  titleCopy = title;
  trackersCopy = trackers;
  v15.receiver = self;
  v15.super_class = SFPrivacyReportWebsiteDetailSection;
  v8 = [(SFPrivacyReportWebsiteDetailSection *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [trackersCopy copy];
    trackers = v8->_trackers;
    v8->_trackers = v11;

    v13 = v8;
  }

  return v8;
}

@end