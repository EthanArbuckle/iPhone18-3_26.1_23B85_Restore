@interface AAAFollowUpAnalyticsInfo
- (AAAFollowUpAnalyticsInfo)initWithCoder:(id)coder;
- (id)cfuReasonAnalyticsEvent;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAAFollowUpAnalyticsInfo

- (void)encodeWithCoder:(id)coder
{
  eventName = self->_eventName;
  coderCopy = coder;
  [coderCopy encodeObject:eventName forKey:@"_eventName"];
  [coderCopy encodeObject:self->_cfuType forKey:@"_cfuType"];
  [coderCopy encodeObject:self->_flowID forKey:@"_flowID"];
  [coderCopy encodeObject:self->_proxiedBundleID forKey:@"_proxiedBundleID"];
  [coderCopy encodeObject:self->_deviceSessionID forKey:@"_deviceSessionID"];
  [coderCopy encodeObject:self->_client forKey:@"_client"];
  [coderCopy encodeObject:self->_hasProxiedDevice forKey:@"_hasProxiedDevice"];
  [coderCopy encodeObject:self->_postedReasonError forKey:@"_postedReasonError"];
  [coderCopy encodeObject:self->_didSucceed forKey:@"_didSucceed"];
}

- (AAAFollowUpAnalyticsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAAFollowUpAnalyticsInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cfuType"];
    cfuType = v5->_cfuType;
    v5->_cfuType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_flowID"];
    flowID = v5->_flowID;
    v5->_flowID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedBundleID"];
    proxiedBundleID = v5->_proxiedBundleID;
    v5->_proxiedBundleID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceSessionID"];
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_client"];
    client = v5->_client;
    v5->_client = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hasProxiedDevice"];
    hasProxiedDevice = v5->_hasProxiedDevice;
    v5->_hasProxiedDevice = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postedReasonError"];
    postedReasonError = v5->_postedReasonError;
    v5->_postedReasonError = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_didSucceed"];
    didSucceed = v5->_didSucceed;
    v5->_didSucceed = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAAFollowUpAnalyticsInfo);
  objc_storeStrong(&v4->_eventName, self->_eventName);
  objc_storeStrong(&v4->_cfuType, self->_cfuType);
  objc_storeStrong(&v4->_flowID, self->_flowID);
  objc_storeStrong(&v4->_proxiedBundleID, self->_proxiedBundleID);
  objc_storeStrong(&v4->_deviceSessionID, self->_deviceSessionID);
  objc_storeStrong(&v4->_client, self->_client);
  objc_storeStrong(&v4->_hasProxiedDevice, self->_hasProxiedDevice);
  objc_storeStrong(&v4->_postedReasonError, self->_postedReasonError);
  objc_storeStrong(&v4->_didSucceed, self->_didSucceed);
  return v4;
}

- (id)cfuReasonAnalyticsEvent
{
  v3 = [[AAFAnalyticsEvent alloc] initWithEventName:@"com.apple.aaa.followUpPosted" eventCategory:&unk_1F4848988 initData:0];
  v4 = v3;
  if (self->_postedReasonError)
  {
    [(AAFAnalyticsEvent *)v3 populateUnderlyingErrorsStartingWithRootError:?];
  }

  cfuType = self->_cfuType;
  if (cfuType)
  {
    [(AAFAnalyticsEvent *)v4 setObject:cfuType forKeyedSubscript:@"cfuType"];
  }

  flowID = self->_flowID;
  if (flowID)
  {
    [(AAFAnalyticsEvent *)v4 setObject:flowID forKeyedSubscript:@"flowID"];
  }

  proxiedBundleID = self->_proxiedBundleID;
  if (proxiedBundleID)
  {
    [(AAFAnalyticsEvent *)v4 setObject:proxiedBundleID forKeyedSubscript:@"proxiedBundleId"];
  }

  deviceSessionID = self->_deviceSessionID;
  if (deviceSessionID)
  {
    [(AAFAnalyticsEvent *)v4 setObject:deviceSessionID forKeyedSubscript:@"deviceSessionID"];
  }

  didSucceed = self->_didSucceed;
  if (didSucceed)
  {
    [(AAFAnalyticsEvent *)v4 setObject:didSucceed forKeyedSubscript:@"didSucceed"];
  }

  hasProxiedDevice = self->_hasProxiedDevice;
  if (hasProxiedDevice)
  {
    [(AAFAnalyticsEvent *)v4 setObject:hasProxiedDevice forKeyedSubscript:@"hasProxiedDevice"];
  }

  return v4;
}

@end