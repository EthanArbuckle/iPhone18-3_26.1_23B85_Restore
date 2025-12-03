@interface ATXAppInFocusEvent
- (ATXAppInFocusEvent)initWithBundleId:(id)id type:(int)type displayType:(int)displayType parentBundleID:(id)d extensionHostID:(id)iD starting:(BOOL)starting absoluteTimestamp:(id)timestamp launchReason:(id)self0;
- (ATXAppInFocusEvent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppInFocusEvent:(id)event;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppInFocusEvent

- (ATXAppInFocusEvent)initWithBundleId:(id)id type:(int)type displayType:(int)displayType parentBundleID:(id)d extensionHostID:(id)iD starting:(BOOL)starting absoluteTimestamp:(id)timestamp launchReason:(id)self0
{
  idCopy = id;
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  reasonCopy = reason;
  v33.receiver = self;
  v33.super_class = ATXAppInFocusEvent;
  v21 = [(ATXAppInFocusEvent *)&v33 init];
  if (v21)
  {
    v22 = [idCopy copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v22;

    v21->_type = type;
    v21->_displayType = displayType;
    v24 = [dCopy copy];
    parentBundleID = v21->_parentBundleID;
    v21->_parentBundleID = v24;

    v26 = [iDCopy copy];
    extensionHostID = v21->_extensionHostID;
    v21->_extensionHostID = v26;

    v21->_starting = starting;
    v28 = [timestampCopy copy];
    absoluteTimestamp = v21->_absoluteTimestamp;
    v21->_absoluteTimestamp = v28;

    v30 = [reasonCopy copy];
    launchReason = v21->_launchReason;
    v21->_launchReason = v30;
  }

  return v21;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppInFocusEvent *)self isEqualToATXAppInFocusEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppInFocusEvent:(id)event
{
  eventCopy = event;
  v5 = self->_bundleID;
  v6 = v5;
  if (v5 == eventCopy[3])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (self->_type != *(eventCopy + 3) || self->_displayType != *(eventCopy + 4))
  {
    goto LABEL_18;
  }

  v8 = self->_parentBundleID;
  v9 = v8;
  if (v8 == eventCopy[4])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v11 = self->_extensionHostID;
  v12 = v11;
  if (v11 == eventCopy[5])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (self->_starting != *(eventCopy + 8))
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v14 = self->_absoluteTimestamp;
  v15 = v14;
  if (v14 == eventCopy[6])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v19 = self->_launchReason;
  v20 = v19;
  if (v19 == eventCopy[7])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSString *)v19 isEqual:?];
  }

LABEL_19:
  return v17;
}

- (unint64_t)hash
{
  bundleID = [(ATXAppInFocusEvent *)self bundleID];
  v4 = [bundleID hash];

  v5 = 31 * (31 * v4 + [(ATXAppInFocusEvent *)self type]);
  v6 = v5 + [(ATXAppInFocusEvent *)self displayType];
  parentBundleID = [(ATXAppInFocusEvent *)self parentBundleID];
  v8 = [parentBundleID hash] - v6 + 32 * v6;

  extensionHostID = [(ATXAppInFocusEvent *)self extensionHostID];
  v10 = [extensionHostID hash] - v8 + 32 * v8;

  v11 = 31 * v10 + [(ATXAppInFocusEvent *)self starting];
  absoluteTimestamp = [(ATXAppInFocusEvent *)self absoluteTimestamp];
  v13 = [absoluteTimestamp hash] - v11 + 32 * v11;

  launchReason = [(ATXAppInFocusEvent *)self launchReason];
  v15 = [launchReason hash] - v13 + 32 * v13;

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ATXAppInFocusEvent *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  [coderCopy encodeInt32:-[ATXAppInFocusEvent type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInt32:-[ATXAppInFocusEvent displayType](self forKey:{"displayType"), @"displayType"}];
  parentBundleID = [(ATXAppInFocusEvent *)self parentBundleID];
  [coderCopy encodeObject:parentBundleID forKey:@"parentBundleID"];

  extensionHostID = [(ATXAppInFocusEvent *)self extensionHostID];
  [coderCopy encodeObject:extensionHostID forKey:@"extensionHostID"];

  [coderCopy encodeBool:-[ATXAppInFocusEvent starting](self forKey:{"starting"), @"starting"}];
  absoluteTimestamp = [(ATXAppInFocusEvent *)self absoluteTimestamp];
  [coderCopy encodeObject:absoluteTimestamp forKey:@"absoluteTimestamp"];

  launchReason = [(ATXAppInFocusEvent *)self launchReason];
  [coderCopy encodeObject:launchReason forKey:@"launchReason"];
}

- (ATXAppInFocusEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ATXAppInFocusEvent;
  v5 = [(ATXAppInFocusEvent *)&v18 init];
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

    v5->_starting = [coderCopy decodeBoolForKey:@"starting"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"absoluteTimestamp"];
    absoluteTimestamp = v5->_absoluteTimestamp;
    v5->_absoluteTimestamp = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v14;

    v16 = v5;
  }

  return v5;
}

@end