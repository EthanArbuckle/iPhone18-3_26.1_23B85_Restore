@interface ASDClipCardMetricsEvent
- (ASDClipCardMetricsEvent)initWithClipBundleID:(id)a3;
- (ASDClipCardMetricsEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setReferralSource:(id)a3;
@end

@implementation ASDClipCardMetricsEvent

- (ASDClipCardMetricsEvent)initWithClipBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDClipCardMetricsEvent;
  v6 = [(ASDClipCardMetricsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (void)setReferralSource:(id)a3
{
  objc_storeStrong(&self->_referralSource, a3);
  v7 = a3;
  v5 = [v7 copy];
  referralSourceBundleID = self->_referralSourceBundleID;
  self->_referralSourceBundleID = v5;
}

- (ASDClipCardMetricsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASDClipCardMetricsEvent;
  v5 = [(ASDClipCardMetricsEvent *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_referralSourceBundleID"];
    referralSourceBundleID = v5->_referralSourceBundleID;
    v5->_referralSourceBundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_referrerType"];
    referrerType = v5->_referrerType;
    v5->_referrerType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v14;

    v5->_thirdPartyWithNoAppReferrer = [v4 decodeBoolForKey:@"_thirdPartyWithNoAppReferrer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_itemID forKey:@"_itemID"];
  [v5 encodeObject:self->_referralSourceBundleID forKey:@"_referralSourceBundleID"];
  [v5 encodeObject:self->_referrerType forKey:@"_referrerType"];
  [v5 encodeObject:self->_sourceURL forKey:@"_sourceURL"];
  [v5 encodeBool:self->_thirdPartyWithNoAppReferrer forKey:@"_thirdPartyWithNoAppReferrer"];
}

@end