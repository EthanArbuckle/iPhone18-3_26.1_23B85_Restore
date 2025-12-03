@interface ATXAppClipUsageEvent
- (ATXAppClipUsageEvent)initWithLaunchDate:(id)date urlHash:(id)hash clipBundleID:(id)d parentAppBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(int)reason fullURL:(id)l referrerURL:(id)self0 referrerBundleID:(id)self1;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppClipUsageEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXAppClipUsageEvent

- (ATXAppClipUsageEvent)initWithLaunchDate:(id)date urlHash:(id)hash clipBundleID:(id)d parentAppBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(int)reason fullURL:(id)l referrerURL:(id)self0 referrerBundleID:(id)self1
{
  dateCopy = date;
  hashCopy = hash;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  lCopy = l;
  rLCopy = rL;
  referrerBundleIDCopy = referrerBundleID;
  v43.receiver = self;
  v43.super_class = ATXAppClipUsageEvent;
  v25 = [(ATXAppClipUsageEvent *)&v43 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_launchDate, date);
    v27 = [hashCopy copy];
    urlHash = v26->_urlHash;
    v26->_urlHash = v27;

    v29 = [dCopy copy];
    clipBundleID = v26->_clipBundleID;
    v26->_clipBundleID = v29;

    v31 = [iDCopy copy];
    parentAppBundleID = v26->_parentAppBundleID;
    v26->_parentAppBundleID = v31;

    v33 = [bundleIDCopy copy];
    webAppBundleID = v26->_webAppBundleID;
    v26->_webAppBundleID = v33;

    v26->_launchReason = reason;
    v35 = [lCopy copy];
    fullURL = v26->_fullURL;
    v26->_fullURL = v35;

    v37 = [rLCopy copy];
    referrerURL = v26->_referrerURL;
    v26->_referrerURL = v37;

    v39 = [referrerBundleIDCopy copy];
    referrerBundleID = v26->_referrerBundleID;
    v26->_referrerBundleID = v39;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppClipUsageEvent *)self isEqualToATXAppClipUsageEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppClipUsageEvent:(id)event
{
  eventCopy = event;
  v5 = self->_launchDate;
  v6 = v5;
  if (v5 == eventCopy[2])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v8 = self->_urlHash;
  v9 = v8;
  if (v8 == eventCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v11 = self->_clipBundleID;
  v12 = v11;
  if (v11 == eventCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v14 = self->_parentAppBundleID;
  v15 = v14;
  if (v14 == eventCopy[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v17 = self->_webAppBundleID;
  v18 = v17;
  if (v17 == eventCopy[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (self->_launchReason != *(eventCopy + 2))
  {
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v20 = self->_fullURL;
  v21 = v20;
  if (v20 == eventCopy[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v23 = self->_referrerURL;
  v24 = v23;
  if (v23 == eventCopy[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v28 = self->_referrerBundleID;
  v29 = v28;
  if (v28 == eventCopy[9])
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSString *)v28 isEqual:?];
  }

LABEL_29:
  return v26;
}

- (unint64_t)hash
{
  launchDate = [(ATXAppClipUsageEvent *)self launchDate];
  v4 = [launchDate hash];

  urlHash = [(ATXAppClipUsageEvent *)self urlHash];
  v6 = [urlHash hash] - v4 + 32 * v4;

  clipBundleID = [(ATXAppClipUsageEvent *)self clipBundleID];
  v8 = [clipBundleID hash] - v6 + 32 * v6;

  parentAppBundleID = [(ATXAppClipUsageEvent *)self parentAppBundleID];
  v10 = [parentAppBundleID hash] - v8 + 32 * v8;

  webAppBundleID = [(ATXAppClipUsageEvent *)self webAppBundleID];
  v12 = [webAppBundleID hash] - v10 + 32 * v10;

  v13 = 31 * v12 + [(ATXAppClipUsageEvent *)self launchReason];
  fullURL = [(ATXAppClipUsageEvent *)self fullURL];
  v15 = [fullURL hash] - v13 + 32 * v13;

  referrerURL = [(ATXAppClipUsageEvent *)self referrerURL];
  v17 = [referrerURL hash] - v15 + 32 * v15;

  referrerBundleID = [(ATXAppClipUsageEvent *)self referrerBundleID];
  v19 = [referrerBundleID hash] - v17 + 32 * v17;

  return v19;
}

@end