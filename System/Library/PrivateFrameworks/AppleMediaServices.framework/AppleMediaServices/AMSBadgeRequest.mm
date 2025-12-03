@interface AMSBadgeRequest
- (AMSBadgeRequest)initWithCoder:(id)coder;
- (AMSBadgeRequest)initWithPushPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSBadgeRequest

- (AMSBadgeRequest)initWithPushPayload:(id)payload
{
  payloadCopy = payload;
  v23.receiver = self;
  v23.super_class = AMSBadgeRequest;
  v5 = [(AMSBadgeRequest *)&v23 init];
  if (v5)
  {
    v6 = [payloadCopy aps];
    v7 = [v6 objectForKeyedSubscript:@"actionMetricsEvent"];
    actionMetricsEvent = v5->_actionMetricsEvent;
    v5->_actionMetricsEvent = v7;

    clientIdentifier = [payloadCopy clientIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = clientIdentifier;

    v11 = [payloadCopy aps];
    v12 = [v11 objectForKeyedSubscript:@"badgeId"];
    badgeIdentifier = v5->_badgeIdentifier;
    v5->_badgeIdentifier = v12;

    v14 = [payloadCopy aps];
    v15 = [v14 objectForKeyedSubscript:@"metrics"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    metrics = v5->_metrics;
    v5->_metrics = v16;

    v18 = [payloadCopy aps];
    v19 = [v18 objectForKeyedSubscript:@"enabled"];
    if (objc_opt_respondsToSelector())
    {
      v20 = [payloadCopy aps];
      v21 = [v20 objectForKeyedSubscript:@"enabled"];
      v5->_enabled = [v21 BOOLValue];
    }

    else
    {
      v5->_enabled = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionMetricsEvent = [(AMSBadgeRequest *)self actionMetricsEvent];

  if (actionMetricsEvent)
  {
    actionMetricsEvent2 = [(AMSBadgeRequest *)self actionMetricsEvent];
    [coderCopy encodeObject:actionMetricsEvent2 forKey:@"actionMetricsEvent"];
  }

  badgeIdentifier = [(AMSBadgeRequest *)self badgeIdentifier];

  if (badgeIdentifier)
  {
    badgeIdentifier2 = [(AMSBadgeRequest *)self badgeIdentifier];
    [coderCopy encodeObject:badgeIdentifier2 forKey:@"badgeIdentifier"];
  }

  bundleIdentifier = [(AMSBadgeRequest *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(AMSBadgeRequest *)self bundleIdentifier];
    [coderCopy encodeObject:bundleIdentifier2 forKey:@"bundleIdentifier"];
  }

  metrics = [(AMSBadgeRequest *)self metrics];

  if (metrics)
  {
    metrics2 = [(AMSBadgeRequest *)self metrics];
    [coderCopy encodeObject:metrics2 forKey:@"metrics"];
  }

  [coderCopy encodeBool:-[AMSBadgeRequest enabled](self forKey:{"enabled"), @"enabled"}];
}

- (AMSBadgeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AMSBadgeRequest;
  v5 = [(AMSBadgeRequest *)&v17 init];
  if (v5)
  {
    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"actionMetricsEvent"];
    actionMetricsEvent = v5->_actionMetricsEvent;
    v5->_actionMetricsEvent = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeIdentifier"];
    badgeIdentifier = v5->_badgeIdentifier;
    v5->_badgeIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v11;

    ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v14 = [coderCopy decodeObjectOfClasses:ams_JSONClasses2 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v14;

    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return v5;
}

@end