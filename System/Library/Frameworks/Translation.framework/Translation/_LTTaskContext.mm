@interface _LTTaskContext
- (_LTTaskContext)initWithCoder:(id)a3;
- (_LTTaskContext)initWithSessionID:(id)a3 taskHint:(int64_t)a4 localePair:(id)a5 deviceOS:(id)a6 deviceType:(id)a7 appIdentifier:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTaskContext

- (_LTTaskContext)initWithSessionID:(id)a3 taskHint:(int64_t)a4 localePair:(id)a5 deviceOS:(id)a6 deviceType:(id)a7 appIdentifier:(id)a8
{
  v23 = a3;
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = _LTTaskContext;
  v18 = [(_LTTaskContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, a3);
    v19->_taskHint = a4;
    objc_storeStrong(&v19->_localePair, a5);
    objc_storeStrong(&v19->_deviceOS, a6);
    objc_storeStrong(&v19->_deviceType, a7);
    objc_storeStrong(&v19->_appIdentifier, a8);
    v20 = v19;
  }

  return v19;
}

- (_LTTaskContext)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _LTTaskContext;
  v5 = [(_LTTaskContext *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v5->_taskHint = [v4 decodeIntegerForKey:@"taskHint"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceOS"];
    deviceOS = v5->_deviceOS;
    v5->_deviceOS = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionID = self->_sessionID;
  v5 = a3;
  [v5 encodeObject:sessionID forKey:@"sessionID"];
  [v5 encodeInteger:self->_taskHint forKey:@"taskHint"];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
  [v5 encodeObject:self->_deviceOS forKey:@"deviceOS"];
  [v5 encodeObject:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
}

@end