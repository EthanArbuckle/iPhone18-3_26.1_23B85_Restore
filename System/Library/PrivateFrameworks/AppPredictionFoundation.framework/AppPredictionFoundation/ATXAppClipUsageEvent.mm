@interface ATXAppClipUsageEvent
- (ATXAppClipUsageEvent)initWithLaunchDate:(id)a3 urlHash:(id)a4 clipBundleID:(id)a5 parentAppBundleID:(id)a6 webAppBundleID:(id)a7 launchReason:(int)a8 fullURL:(id)a9 referrerURL:(id)a10 referrerBundleID:(id)a11;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppClipUsageEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXAppClipUsageEvent

- (ATXAppClipUsageEvent)initWithLaunchDate:(id)a3 urlHash:(id)a4 clipBundleID:(id)a5 parentAppBundleID:(id)a6 webAppBundleID:(id)a7 launchReason:(int)a8 fullURL:(id)a9 referrerURL:(id)a10 referrerBundleID:(id)a11
{
  v42 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v43.receiver = self;
  v43.super_class = ATXAppClipUsageEvent;
  v25 = [(ATXAppClipUsageEvent *)&v43 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_launchDate, a3);
    v27 = [v18 copy];
    urlHash = v26->_urlHash;
    v26->_urlHash = v27;

    v29 = [v19 copy];
    clipBundleID = v26->_clipBundleID;
    v26->_clipBundleID = v29;

    v31 = [v20 copy];
    parentAppBundleID = v26->_parentAppBundleID;
    v26->_parentAppBundleID = v31;

    v33 = [v21 copy];
    webAppBundleID = v26->_webAppBundleID;
    v26->_webAppBundleID = v33;

    v26->_launchReason = a8;
    v35 = [v22 copy];
    fullURL = v26->_fullURL;
    v26->_fullURL = v35;

    v37 = [v23 copy];
    referrerURL = v26->_referrerURL;
    v26->_referrerURL = v37;

    v39 = [v24 copy];
    referrerBundleID = v26->_referrerBundleID;
    v26->_referrerBundleID = v39;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppClipUsageEvent *)self isEqualToATXAppClipUsageEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppClipUsageEvent:(id)a3
{
  v4 = a3;
  v5 = self->_launchDate;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
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
  if (v17 == v4[6])
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

  if (self->_launchReason != *(v4 + 2))
  {
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v20 = self->_fullURL;
  v21 = v20;
  if (v20 == v4[7])
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
  if (v23 == v4[8])
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
  if (v28 == v4[9])
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
  v3 = [(ATXAppClipUsageEvent *)self launchDate];
  v4 = [v3 hash];

  v5 = [(ATXAppClipUsageEvent *)self urlHash];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXAppClipUsageEvent *)self clipBundleID];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXAppClipUsageEvent *)self parentAppBundleID];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(ATXAppClipUsageEvent *)self webAppBundleID];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = 31 * v12 + [(ATXAppClipUsageEvent *)self launchReason];
  v14 = [(ATXAppClipUsageEvent *)self fullURL];
  v15 = [v14 hash] - v13 + 32 * v13;

  v16 = [(ATXAppClipUsageEvent *)self referrerURL];
  v17 = [v16 hash] - v15 + 32 * v15;

  v18 = [(ATXAppClipUsageEvent *)self referrerBundleID];
  v19 = [v18 hash] - v17 + 32 * v17;

  return v19;
}

@end