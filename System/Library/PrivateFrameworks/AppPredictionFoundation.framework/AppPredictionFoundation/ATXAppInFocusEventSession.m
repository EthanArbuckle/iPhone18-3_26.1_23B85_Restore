@interface ATXAppInFocusEventSession
- (ATXAppInFocusEventSession)initWithBundleId:(id)a3 type:(int)a4 displayType:(int)a5 parentBundleID:(id)a6 extensionHostID:(id)a7 appSessionStartTime:(id)a8 appSessionEndTime:(id)a9 launchReason:(id)a10;
- (ATXAppInFocusEventSession)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppInFocusEventSession:(id)a3;
- (double)appSessionDuration;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppInFocusEventSession

- (ATXAppInFocusEventSession)initWithBundleId:(id)a3 type:(int)a4 displayType:(int)a5 parentBundleID:(id)a6 extensionHostID:(id)a7 appSessionStartTime:(id)a8 appSessionEndTime:(id)a9 launchReason:(id)a10
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = ATXAppInFocusEventSession;
  v22 = [(ATXAppInFocusEventSession *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    bundleID = v22->_bundleID;
    v22->_bundleID = v23;

    v22->_type = a4;
    v22->_displayType = a5;
    v25 = [v17 copy];
    parentBundleID = v22->_parentBundleID;
    v22->_parentBundleID = v25;

    v27 = [v18 copy];
    extensionHostID = v22->_extensionHostID;
    v22->_extensionHostID = v27;

    v29 = [v19 copy];
    appSessionStartTime = v22->_appSessionStartTime;
    v22->_appSessionStartTime = v29;

    v31 = [v20 copy];
    appSessionEndTime = v22->_appSessionEndTime;
    v22->_appSessionEndTime = v31;

    v33 = [v21 copy];
    launchReason = v22->_launchReason;
    v22->_launchReason = v33;
  }

  return v22;
}

- (double)appSessionDuration
{
  if (!self->_appSessionStartTime)
  {
    return 0.0;
  }

  appSessionEndTime = self->_appSessionEndTime;
  if (!appSessionEndTime)
  {
    return 0.0;
  }

  [(NSDate *)appSessionEndTime timeIntervalSinceDate:?];
  return result;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppInFocusEventSession *)self isEqualToATXAppInFocusEventSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppInFocusEventSession:(id)a3
{
  v4 = a3;
  v5 = self->_bundleID;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (self->_type != *(v4 + 2) || self->_displayType != *(v4 + 3))
  {
    goto LABEL_21;
  }

  v8 = self->_parentBundleID;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = self->_extensionHostID;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v14 = self->_appSessionStartTime;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v17 = self->_appSessionEndTime;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }
  }

  v22 = self->_launchReason;
  v23 = v22;
  if (v22 == v4[7])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSString *)v22 isEqual:?];
  }

LABEL_22:
  return v20;
}

- (unint64_t)hash
{
  v3 = [(ATXAppInFocusEventSession *)self bundleID];
  v4 = [v3 hash];

  v5 = 31 * (31 * v4 + [(ATXAppInFocusEventSession *)self type]);
  v6 = v5 + [(ATXAppInFocusEventSession *)self displayType];
  v7 = [(ATXAppInFocusEventSession *)self parentBundleID];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXAppInFocusEventSession *)self extensionHostID];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(ATXAppInFocusEventSession *)self appSessionStartTime];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(ATXAppInFocusEventSession *)self appSessionEndTime];
  v14 = [v13 hash] - v12 + 32 * v12;

  v15 = [(ATXAppInFocusEventSession *)self launchReason];
  v16 = [v15 hash] - v14 + 32 * v14;

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppInFocusEventSession *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  [v4 encodeInt32:-[ATXAppInFocusEventSession type](self forKey:{"type"), @"type"}];
  [v4 encodeInt32:-[ATXAppInFocusEventSession displayType](self forKey:{"displayType"), @"displayType"}];
  v6 = [(ATXAppInFocusEventSession *)self parentBundleID];
  [v4 encodeObject:v6 forKey:@"parentBundleID"];

  v7 = [(ATXAppInFocusEventSession *)self extensionHostID];
  [v4 encodeObject:v7 forKey:@"extensionHostID"];

  v8 = [(ATXAppInFocusEventSession *)self appSessionStartTime];
  [v4 encodeObject:v8 forKey:@"appSessionStartTime"];

  v9 = [(ATXAppInFocusEventSession *)self appSessionEndTime];
  [v4 encodeObject:v9 forKey:@"appSessionEndTime"];

  v10 = [(ATXAppInFocusEventSession *)self launchReason];
  [v4 encodeObject:v10 forKey:@"launchReason"];
}

- (ATXAppInFocusEventSession)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ATXAppInFocusEventSession;
  v5 = [(ATXAppInFocusEventSession *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_type = [v4 decodeInt32ForKey:@"type"];
    v5->_displayType = [v4 decodeInt32ForKey:@"displayType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentBundleID"];
    parentBundleID = v5->_parentBundleID;
    v5->_parentBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionHostID"];
    extensionHostID = v5->_extensionHostID;
    v5->_extensionHostID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appSessionStartTime"];
    appSessionStartTime = v5->_appSessionStartTime;
    v5->_appSessionStartTime = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appSessionEndTime"];
    appSessionEndTime = v5->_appSessionEndTime;
    v5->_appSessionEndTime = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v16;

    v18 = v5;
  }

  return v5;
}

@end