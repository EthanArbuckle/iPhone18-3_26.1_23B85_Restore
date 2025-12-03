@interface ASDClipCardMetricsEvent
- (ASDClipCardMetricsEvent)initWithClipBundleID:(id)d;
- (ASDClipCardMetricsEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setReferralSource:(id)source;
@end

@implementation ASDClipCardMetricsEvent

- (ASDClipCardMetricsEvent)initWithClipBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDClipCardMetricsEvent;
  v6 = [(ASDClipCardMetricsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (void)setReferralSource:(id)source
{
  objc_storeStrong(&self->_referralSource, source);
  sourceCopy = source;
  v5 = [sourceCopy copy];
  referralSourceBundleID = self->_referralSourceBundleID;
  self->_referralSourceBundleID = v5;
}

- (ASDClipCardMetricsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ASDClipCardMetricsEvent;
  v5 = [(ASDClipCardMetricsEvent *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_referralSourceBundleID"];
    referralSourceBundleID = v5->_referralSourceBundleID;
    v5->_referralSourceBundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_referrerType"];
    referrerType = v5->_referrerType;
    v5->_referrerType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v14;

    v5->_thirdPartyWithNoAppReferrer = [coderCopy decodeBoolForKey:@"_thirdPartyWithNoAppReferrer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_itemID forKey:@"_itemID"];
  [coderCopy encodeObject:self->_referralSourceBundleID forKey:@"_referralSourceBundleID"];
  [coderCopy encodeObject:self->_referrerType forKey:@"_referrerType"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"_sourceURL"];
  [coderCopy encodeBool:self->_thirdPartyWithNoAppReferrer forKey:@"_thirdPartyWithNoAppReferrer"];
}

@end