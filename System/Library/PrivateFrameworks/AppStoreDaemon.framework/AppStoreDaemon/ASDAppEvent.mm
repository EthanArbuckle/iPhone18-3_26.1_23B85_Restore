@interface ASDAppEvent
- (ASDAppEvent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAppEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDAppEvent allocWithZone:](ASDAppEvent init];
  v6 = [(NSString *)self->_accountID copyWithZone:a3];
  [(ASDAppEvent *)v5 setAccountID:v6];

  v7 = [(NSString *)self->_bundleID copyWithZone:a3];
  [(ASDAppEvent *)v5 setBundleID:v7];

  v8 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  [(ASDAppEvent *)v5 setBundleVersion:v8];

  [(ASDAppEvent *)v5 setCount:self->_count];
  v9 = [(NSString *)self->_cohort copyWithZone:a3];
  [(ASDAppEvent *)v5 setCohort:v9];

  v10 = [(NSDate *)self->_date copyWithZone:a3];
  [(ASDAppEvent *)v5 setDate:v10];

  v11 = [(NSString *)self->_deviceVendorID copyWithZone:a3];
  [(ASDAppEvent *)v5 setDeviceVendorID:v11];

  [(ASDAppEvent *)v5 setDuration:self->_duration];
  [(ASDAppEvent *)v5 setEventSubtype:self->_eventSubtype];
  v12 = [(NSNumber *)self->_eventTime copyWithZone:a3];
  [(ASDAppEvent *)v5 setEventTime:v12];

  [(ASDAppEvent *)v5 setEventType:self->_eventType];
  v13 = [(NSNumber *)self->_evid copyWithZone:a3];
  [(ASDAppEvent *)v5 setEvid:v13];

  [(ASDAppEvent *)v5 setForegroundUsage:self->_foregroundUsage];
  v14 = [(NSArray *)self->_foregroundUsageEvents copyWithZone:a3];
  [(ASDAppEvent *)v5 setForegroundUsageEvents:v14];

  [(ASDAppEvent *)v5 setHasBeenPosted:self->_hasBeenPosted];
  v15 = [(NSString *)self->_appPlatform copyWithZone:a3];
  [(ASDAppEvent *)v5 setAppPlatform:v15];

  [(ASDAppEvent *)v5 setIsBeta:self->_isBeta];
  [(ASDAppEvent *)v5 setIsClip:self->_isClip];
  v16 = [(NSNumber *)self->_itemID copyWithZone:a3];
  [(ASDAppEvent *)v5 setItemID:v16];

  v17 = [(NSString *)self->_itemName copyWithZone:a3];
  [(ASDAppEvent *)v5 setItemName:v17];

  v18 = [(NSNumber *)self->_startTime copyWithZone:a3];
  [(ASDAppEvent *)v5 setStartTime:v18];

  v19 = [(NSString *)self->_shortVersion copyWithZone:a3];
  [(ASDAppEvent *)v5 setShortVersion:v19];

  v20 = [(NSNumber *)self->_storefront copyWithZone:a3];
  [(ASDAppEvent *)v5 setStorefront:v20];

  v21 = [(NSString *)self->_weekStartDate copyWithZone:a3];
  [(ASDAppEvent *)v5 setWeekStartDate:v21];

  return v5;
}

- (id)description
{
  bundleID = self->_bundleID;
  bundleVersion = self->_bundleVersion;
  evid = self->_evid;
  itemID = self->_itemID;
  eventTime = self->_eventTime;
  eventType = self->_eventType;
  if (eventTime)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{ bundleID: %@ bundleVersion: %@ itemID: %@ evid: %@ eventType: %ld startTime: %@ eventTime: %@ }", bundleID, bundleVersion, itemID, evid, eventType, self->_startTime, eventTime];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"{ bundleID: %@ bundleVersion: %@ itemID: %@ evid: %@ eventType: %ld subtype: %ld count: %ld }", bundleID, bundleVersion, itemID, evid, eventType, self->_eventSubtype, self->_count];
  }
  v8 = ;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDAppEvent *)self accountID];
  [v4 encodeObject:v5 forKey:@"accountID"];

  v6 = [(ASDAppEvent *)self appPlatform];
  [v4 encodeObject:v6 forKey:@"appPlatform"];

  v7 = [(ASDAppEvent *)self bundleID];
  [v4 encodeObject:v7 forKey:@"bundleID"];

  v8 = [(ASDAppEvent *)self bundleVersion];
  [v4 encodeObject:v8 forKey:@"bundleVersion"];

  [v4 encodeInteger:-[ASDAppEvent count](self forKey:{"count"), @"count"}];
  v9 = [(ASDAppEvent *)self cohort];
  [v4 encodeObject:v9 forKey:@"cohort"];

  v10 = [(ASDAppEvent *)self date];
  [v4 encodeObject:v10 forKey:@"date"];

  v11 = [(ASDAppEvent *)self deviceVendorID];
  [v4 encodeObject:v11 forKey:@"deviceVendorID"];

  [v4 encodeInt64:-[ASDAppEvent duration](self forKey:{"duration"), @"duration"}];
  v12 = [(ASDAppEvent *)self eventTime];
  [v4 encodeObject:v12 forKey:@"launchEnd"];

  [v4 encodeInteger:-[ASDAppEvent eventType](self forKey:{"eventType"), @"eventType"}];
  [v4 encodeInteger:-[ASDAppEvent eventSubtype](self forKey:{"eventSubtype"), @"eventSubtype"}];
  v13 = [(ASDAppEvent *)self evid];
  [v4 encodeObject:v13 forKey:@"evid"];

  [v4 encodeInt64:-[ASDAppEvent foregroundUsage](self forKey:{"foregroundUsage"), @"foregroundUsage"}];
  v14 = [(ASDAppEvent *)self foregroundUsageEvents];
  [v4 encodeObject:v14 forKey:@"foregroundUsageEvents"];

  [v4 encodeBool:-[ASDAppEvent hasBeenPosted](self forKey:{"hasBeenPosted"), @"hasBeenPosted"}];
  [v4 encodeBool:-[ASDAppEvent isBeta](self forKey:{"isBeta"), @"isBeta"}];
  [v4 encodeBool:-[ASDAppEvent isClip](self forKey:{"isClip"), @"isClip"}];
  v15 = [(ASDAppEvent *)self itemID];
  [v4 encodeObject:v15 forKey:@"itemID"];

  v16 = [(ASDAppEvent *)self itemName];
  [v4 encodeObject:v16 forKey:@"itemName"];

  v17 = [(ASDAppEvent *)self startTime];
  [v4 encodeObject:v17 forKey:@"launchTime"];

  v18 = [(ASDAppEvent *)self shortVersion];
  [v4 encodeObject:v18 forKey:@"shortVersion"];

  v19 = [(ASDAppEvent *)self storefront];
  [v4 encodeObject:v19 forKey:@"storefront"];

  v20 = [(ASDAppEvent *)self weekStartDate];
  [v4 encodeObject:v20 forKey:@"weekStartDate"];
}

- (ASDAppEvent)initWithCoder:(id)a3
{
  v44[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = ASDAppEvent;
  v5 = [(ASDAppEvent *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appPlatform"];
    appPlatform = v5->_appPlatform;
    v5->_appPlatform = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v12;

    v5->_count = [v4 decodeIntegerForKey:@"count"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cohort"];
    cohort = v5->_cohort;
    v5->_cohort = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceVendorID"];
    deviceVendorID = v5->_deviceVendorID;
    v5->_deviceVendorID = v18;

    v5->_duration = [v4 decodeInt64ForKey:@"duration"];
    v5->_eventSubtype = [v4 decodeIntegerForKey:@"eventSubtype"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchEnd"];
    eventTime = v5->_eventTime;
    v5->_eventTime = v20;

    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"evid"];
    evid = v5->_evid;
    v5->_evid = v22;

    v5->_foregroundUsage = [v4 decodeInt64ForKey:@"foregroundUsage"];
    v24 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v44[3] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    v26 = [v24 setWithArray:v25];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"foregroundUsageEvents"];
    foregroundUsageEvents = v5->_foregroundUsageEvents;
    v5->_foregroundUsageEvents = v27;

    v5->_hasBeenPosted = [v4 decodeBoolForKey:@"hasBeenPosted"];
    v5->_isBeta = [v4 decodeBoolForKey:@"isBeta"];
    v5->_isClip = [v4 decodeBoolForKey:@"isClip"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchTime"];
    startTime = v5->_startTime;
    v5->_startTime = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weekStartDate"];
    weekStartDate = v5->_weekStartDate;
    v5->_weekStartDate = v39;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

@end