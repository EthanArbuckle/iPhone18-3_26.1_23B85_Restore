@interface ATXAppInFocusEventSession
- (ATXAppInFocusEventSession)initWithBundleId:(id)id type:(int)type displayType:(int)displayType parentBundleID:(id)d extensionHostID:(id)iD appSessionStartTime:(id)time appSessionEndTime:(id)endTime launchReason:(id)self0;
- (ATXAppInFocusEventSession)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppInFocusEventSession:(id)session;
- (double)appSessionDuration;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppInFocusEventSession

- (ATXAppInFocusEventSession)initWithBundleId:(id)id type:(int)type displayType:(int)displayType parentBundleID:(id)d extensionHostID:(id)iD appSessionStartTime:(id)time appSessionEndTime:(id)endTime launchReason:(id)self0
{
  idCopy = id;
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  endTimeCopy = endTime;
  reasonCopy = reason;
  v36.receiver = self;
  v36.super_class = ATXAppInFocusEventSession;
  v22 = [(ATXAppInFocusEventSession *)&v36 init];
  if (v22)
  {
    v23 = [idCopy copy];
    bundleID = v22->_bundleID;
    v22->_bundleID = v23;

    v22->_type = type;
    v22->_displayType = displayType;
    v25 = [dCopy copy];
    parentBundleID = v22->_parentBundleID;
    v22->_parentBundleID = v25;

    v27 = [iDCopy copy];
    extensionHostID = v22->_extensionHostID;
    v22->_extensionHostID = v27;

    v29 = [timeCopy copy];
    appSessionStartTime = v22->_appSessionStartTime;
    v22->_appSessionStartTime = v29;

    v31 = [endTimeCopy copy];
    appSessionEndTime = v22->_appSessionEndTime;
    v22->_appSessionEndTime = v31;

    v33 = [reasonCopy copy];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppInFocusEventSession *)self isEqualToATXAppInFocusEventSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppInFocusEventSession:(id)session
{
  sessionCopy = session;
  v5 = self->_bundleID;
  v6 = v5;
  if (v5 == sessionCopy[2])
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

  if (self->_type != *(sessionCopy + 2) || self->_displayType != *(sessionCopy + 3))
  {
    goto LABEL_21;
  }

  v8 = self->_parentBundleID;
  v9 = v8;
  if (v8 == sessionCopy[3])
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
  if (v11 == sessionCopy[4])
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
  if (v14 == sessionCopy[5])
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
  if (v17 == sessionCopy[6])
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
  if (v22 == sessionCopy[7])
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
  bundleID = [(ATXAppInFocusEventSession *)self bundleID];
  v4 = [bundleID hash];

  v5 = 31 * (31 * v4 + [(ATXAppInFocusEventSession *)self type]);
  v6 = v5 + [(ATXAppInFocusEventSession *)self displayType];
  parentBundleID = [(ATXAppInFocusEventSession *)self parentBundleID];
  v8 = [parentBundleID hash] - v6 + 32 * v6;

  extensionHostID = [(ATXAppInFocusEventSession *)self extensionHostID];
  v10 = [extensionHostID hash] - v8 + 32 * v8;

  appSessionStartTime = [(ATXAppInFocusEventSession *)self appSessionStartTime];
  v12 = [appSessionStartTime hash] - v10 + 32 * v10;

  appSessionEndTime = [(ATXAppInFocusEventSession *)self appSessionEndTime];
  v14 = [appSessionEndTime hash] - v12 + 32 * v12;

  launchReason = [(ATXAppInFocusEventSession *)self launchReason];
  v16 = [launchReason hash] - v14 + 32 * v14;

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ATXAppInFocusEventSession *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  [coderCopy encodeInt32:-[ATXAppInFocusEventSession type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInt32:-[ATXAppInFocusEventSession displayType](self forKey:{"displayType"), @"displayType"}];
  parentBundleID = [(ATXAppInFocusEventSession *)self parentBundleID];
  [coderCopy encodeObject:parentBundleID forKey:@"parentBundleID"];

  extensionHostID = [(ATXAppInFocusEventSession *)self extensionHostID];
  [coderCopy encodeObject:extensionHostID forKey:@"extensionHostID"];

  appSessionStartTime = [(ATXAppInFocusEventSession *)self appSessionStartTime];
  [coderCopy encodeObject:appSessionStartTime forKey:@"appSessionStartTime"];

  appSessionEndTime = [(ATXAppInFocusEventSession *)self appSessionEndTime];
  [coderCopy encodeObject:appSessionEndTime forKey:@"appSessionEndTime"];

  launchReason = [(ATXAppInFocusEventSession *)self launchReason];
  [coderCopy encodeObject:launchReason forKey:@"launchReason"];
}

- (ATXAppInFocusEventSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ATXAppInFocusEventSession;
  v5 = [(ATXAppInFocusEventSession *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v5->_displayType = [coderCopy decodeInt32ForKey:@"displayType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentBundleID"];
    parentBundleID = v5->_parentBundleID;
    v5->_parentBundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionHostID"];
    extensionHostID = v5->_extensionHostID;
    v5->_extensionHostID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appSessionStartTime"];
    appSessionStartTime = v5->_appSessionStartTime;
    v5->_appSessionStartTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appSessionEndTime"];
    appSessionEndTime = v5->_appSessionEndTime;
    v5->_appSessionEndTime = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v16;

    v18 = v5;
  }

  return v5;
}

@end