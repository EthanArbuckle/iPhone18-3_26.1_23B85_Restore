@interface ASDAppEvent
- (ASDAppEvent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAppEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDAppEvent allocWithZone:](ASDAppEvent init];
  v6 = [(NSString *)self->_accountID copyWithZone:zone];
  [(ASDAppEvent *)v5 setAccountID:v6];

  v7 = [(NSString *)self->_bundleID copyWithZone:zone];
  [(ASDAppEvent *)v5 setBundleID:v7];

  v8 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  [(ASDAppEvent *)v5 setBundleVersion:v8];

  [(ASDAppEvent *)v5 setCount:self->_count];
  v9 = [(NSString *)self->_cohort copyWithZone:zone];
  [(ASDAppEvent *)v5 setCohort:v9];

  v10 = [(NSDate *)self->_date copyWithZone:zone];
  [(ASDAppEvent *)v5 setDate:v10];

  v11 = [(NSString *)self->_deviceVendorID copyWithZone:zone];
  [(ASDAppEvent *)v5 setDeviceVendorID:v11];

  [(ASDAppEvent *)v5 setDuration:self->_duration];
  [(ASDAppEvent *)v5 setEventSubtype:self->_eventSubtype];
  v12 = [(NSNumber *)self->_eventTime copyWithZone:zone];
  [(ASDAppEvent *)v5 setEventTime:v12];

  [(ASDAppEvent *)v5 setEventType:self->_eventType];
  v13 = [(NSNumber *)self->_evid copyWithZone:zone];
  [(ASDAppEvent *)v5 setEvid:v13];

  [(ASDAppEvent *)v5 setForegroundUsage:self->_foregroundUsage];
  v14 = [(NSArray *)self->_foregroundUsageEvents copyWithZone:zone];
  [(ASDAppEvent *)v5 setForegroundUsageEvents:v14];

  [(ASDAppEvent *)v5 setHasBeenPosted:self->_hasBeenPosted];
  v15 = [(NSString *)self->_appPlatform copyWithZone:zone];
  [(ASDAppEvent *)v5 setAppPlatform:v15];

  [(ASDAppEvent *)v5 setIsBeta:self->_isBeta];
  [(ASDAppEvent *)v5 setIsClip:self->_isClip];
  v16 = [(NSNumber *)self->_itemID copyWithZone:zone];
  [(ASDAppEvent *)v5 setItemID:v16];

  v17 = [(NSString *)self->_itemName copyWithZone:zone];
  [(ASDAppEvent *)v5 setItemName:v17];

  v18 = [(NSNumber *)self->_startTime copyWithZone:zone];
  [(ASDAppEvent *)v5 setStartTime:v18];

  v19 = [(NSString *)self->_shortVersion copyWithZone:zone];
  [(ASDAppEvent *)v5 setShortVersion:v19];

  v20 = [(NSNumber *)self->_storefront copyWithZone:zone];
  [(ASDAppEvent *)v5 setStorefront:v20];

  v21 = [(NSString *)self->_weekStartDate copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountID = [(ASDAppEvent *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  appPlatform = [(ASDAppEvent *)self appPlatform];
  [coderCopy encodeObject:appPlatform forKey:@"appPlatform"];

  bundleID = [(ASDAppEvent *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  bundleVersion = [(ASDAppEvent *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  [coderCopy encodeInteger:-[ASDAppEvent count](self forKey:{"count"), @"count"}];
  cohort = [(ASDAppEvent *)self cohort];
  [coderCopy encodeObject:cohort forKey:@"cohort"];

  date = [(ASDAppEvent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  deviceVendorID = [(ASDAppEvent *)self deviceVendorID];
  [coderCopy encodeObject:deviceVendorID forKey:@"deviceVendorID"];

  [coderCopy encodeInt64:-[ASDAppEvent duration](self forKey:{"duration"), @"duration"}];
  eventTime = [(ASDAppEvent *)self eventTime];
  [coderCopy encodeObject:eventTime forKey:@"launchEnd"];

  [coderCopy encodeInteger:-[ASDAppEvent eventType](self forKey:{"eventType"), @"eventType"}];
  [coderCopy encodeInteger:-[ASDAppEvent eventSubtype](self forKey:{"eventSubtype"), @"eventSubtype"}];
  evid = [(ASDAppEvent *)self evid];
  [coderCopy encodeObject:evid forKey:@"evid"];

  [coderCopy encodeInt64:-[ASDAppEvent foregroundUsage](self forKey:{"foregroundUsage"), @"foregroundUsage"}];
  foregroundUsageEvents = [(ASDAppEvent *)self foregroundUsageEvents];
  [coderCopy encodeObject:foregroundUsageEvents forKey:@"foregroundUsageEvents"];

  [coderCopy encodeBool:-[ASDAppEvent hasBeenPosted](self forKey:{"hasBeenPosted"), @"hasBeenPosted"}];
  [coderCopy encodeBool:-[ASDAppEvent isBeta](self forKey:{"isBeta"), @"isBeta"}];
  [coderCopy encodeBool:-[ASDAppEvent isClip](self forKey:{"isClip"), @"isClip"}];
  itemID = [(ASDAppEvent *)self itemID];
  [coderCopy encodeObject:itemID forKey:@"itemID"];

  itemName = [(ASDAppEvent *)self itemName];
  [coderCopy encodeObject:itemName forKey:@"itemName"];

  startTime = [(ASDAppEvent *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"launchTime"];

  shortVersion = [(ASDAppEvent *)self shortVersion];
  [coderCopy encodeObject:shortVersion forKey:@"shortVersion"];

  storefront = [(ASDAppEvent *)self storefront];
  [coderCopy encodeObject:storefront forKey:@"storefront"];

  weekStartDate = [(ASDAppEvent *)self weekStartDate];
  [coderCopy encodeObject:weekStartDate forKey:@"weekStartDate"];
}

- (ASDAppEvent)initWithCoder:(id)coder
{
  v44[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = ASDAppEvent;
  v5 = [(ASDAppEvent *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appPlatform"];
    appPlatform = v5->_appPlatform;
    v5->_appPlatform = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v12;

    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cohort"];
    cohort = v5->_cohort;
    v5->_cohort = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceVendorID"];
    deviceVendorID = v5->_deviceVendorID;
    v5->_deviceVendorID = v18;

    v5->_duration = [coderCopy decodeInt64ForKey:@"duration"];
    v5->_eventSubtype = [coderCopy decodeIntegerForKey:@"eventSubtype"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchEnd"];
    eventTime = v5->_eventTime;
    v5->_eventTime = v20;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"evid"];
    evid = v5->_evid;
    v5->_evid = v22;

    v5->_foregroundUsage = [coderCopy decodeInt64ForKey:@"foregroundUsage"];
    v24 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v44[3] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    v26 = [v24 setWithArray:v25];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"foregroundUsageEvents"];
    foregroundUsageEvents = v5->_foregroundUsageEvents;
    v5->_foregroundUsageEvents = v27;

    v5->_hasBeenPosted = [coderCopy decodeBoolForKey:@"hasBeenPosted"];
    v5->_isBeta = [coderCopy decodeBoolForKey:@"isBeta"];
    v5->_isClip = [coderCopy decodeBoolForKey:@"isClip"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchTime"];
    startTime = v5->_startTime;
    v5->_startTime = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortVersion"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weekStartDate"];
    weekStartDate = v5->_weekStartDate;
    v5->_weekStartDate = v39;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

@end