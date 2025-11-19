@interface ATXAppInFocusEvent
- (ATXAppInFocusEvent)initWithBundleId:(id)a3 type:(int)a4 displayType:(int)a5 parentBundleID:(id)a6 extensionHostID:(id)a7 starting:(BOOL)a8 absoluteTimestamp:(id)a9 launchReason:(id)a10;
- (ATXAppInFocusEvent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppInFocusEvent:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppInFocusEvent

- (ATXAppInFocusEvent)initWithBundleId:(id)a3 type:(int)a4 displayType:(int)a5 parentBundleID:(id)a6 extensionHostID:(id)a7 starting:(BOOL)a8 absoluteTimestamp:(id)a9 launchReason:(id)a10
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v33.receiver = self;
  v33.super_class = ATXAppInFocusEvent;
  v21 = [(ATXAppInFocusEvent *)&v33 init];
  if (v21)
  {
    v22 = [v16 copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v22;

    v21->_type = a4;
    v21->_displayType = a5;
    v24 = [v17 copy];
    parentBundleID = v21->_parentBundleID;
    v21->_parentBundleID = v24;

    v26 = [v18 copy];
    extensionHostID = v21->_extensionHostID;
    v21->_extensionHostID = v26;

    v21->_starting = a8;
    v28 = [v19 copy];
    absoluteTimestamp = v21->_absoluteTimestamp;
    v21->_absoluteTimestamp = v28;

    v30 = [v20 copy];
    launchReason = v21->_launchReason;
    v21->_launchReason = v30;
  }

  return v21;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppInFocusEvent *)self isEqualToATXAppInFocusEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppInFocusEvent:(id)a3
{
  v4 = a3;
  v5 = self->_bundleID;
  v6 = v5;
  if (v5 == v4[3])
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

  if (self->_type != *(v4 + 3) || self->_displayType != *(v4 + 4))
  {
    goto LABEL_18;
  }

  v8 = self->_parentBundleID;
  v9 = v8;
  if (v8 == v4[4])
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
  if (v11 == v4[5])
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

  if (self->_starting != *(v4 + 8))
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v14 = self->_absoluteTimestamp;
  v15 = v14;
  if (v14 == v4[6])
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
  if (v19 == v4[7])
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
  v3 = [(ATXAppInFocusEvent *)self bundleID];
  v4 = [v3 hash];

  v5 = 31 * (31 * v4 + [(ATXAppInFocusEvent *)self type]);
  v6 = v5 + [(ATXAppInFocusEvent *)self displayType];
  v7 = [(ATXAppInFocusEvent *)self parentBundleID];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXAppInFocusEvent *)self extensionHostID];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = 31 * v10 + [(ATXAppInFocusEvent *)self starting];
  v12 = [(ATXAppInFocusEvent *)self absoluteTimestamp];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = [(ATXAppInFocusEvent *)self launchReason];
  v15 = [v14 hash] - v13 + 32 * v13;

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppInFocusEvent *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  [v4 encodeInt32:-[ATXAppInFocusEvent type](self forKey:{"type"), @"type"}];
  [v4 encodeInt32:-[ATXAppInFocusEvent displayType](self forKey:{"displayType"), @"displayType"}];
  v6 = [(ATXAppInFocusEvent *)self parentBundleID];
  [v4 encodeObject:v6 forKey:@"parentBundleID"];

  v7 = [(ATXAppInFocusEvent *)self extensionHostID];
  [v4 encodeObject:v7 forKey:@"extensionHostID"];

  [v4 encodeBool:-[ATXAppInFocusEvent starting](self forKey:{"starting"), @"starting"}];
  v8 = [(ATXAppInFocusEvent *)self absoluteTimestamp];
  [v4 encodeObject:v8 forKey:@"absoluteTimestamp"];

  v9 = [(ATXAppInFocusEvent *)self launchReason];
  [v4 encodeObject:v9 forKey:@"launchReason"];
}

- (ATXAppInFocusEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ATXAppInFocusEvent;
  v5 = [(ATXAppInFocusEvent *)&v18 init];
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

    v5->_starting = [v4 decodeBoolForKey:@"starting"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"absoluteTimestamp"];
    absoluteTimestamp = v5->_absoluteTimestamp;
    v5->_absoluteTimestamp = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
    launchReason = v5->_launchReason;
    v5->_launchReason = v14;

    v16 = v5;
  }

  return v5;
}

@end