@interface ASDPurgeAppsRequestOptions
- (ASDPurgeAppsRequestOptions)initWithCoder:(id)coder;
- (ASDPurgeAppsRequestOptions)initWithVolume:(id)volume urgency:(int64_t)urgency;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurgeAppsRequestOptions

- (ASDPurgeAppsRequestOptions)initWithVolume:(id)volume urgency:(int64_t)urgency
{
  volumeCopy = volume;
  v11.receiver = self;
  v11.super_class = ASDPurgeAppsRequestOptions;
  v8 = [(ASDPurgeAppsRequestOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_volume, volume);
    v9->_urgency = urgency;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDPurgeAppsRequestOptions allocWithZone:](ASDPurgeAppsRequestOptions init];
  v6 = [(NSArray *)self->_apps copyWithZone:zone];
  apps = v5->_apps;
  v5->_apps = v6;

  v8 = [(NSNumber *)self->_desiredPurgeAmount copyWithZone:zone];
  desiredPurgeAmount = v5->_desiredPurgeAmount;
  v5->_desiredPurgeAmount = v8;

  v5->_offloadOnly = self->_offloadOnly;
  v5->_performAvailablityCheck = self->_performAvailablityCheck;
  v5->_skipLaunchCheck = self->_skipLaunchCheck;
  v5->_urgency = self->_urgency;
  v10 = [(NSString *)self->_volume copyWithZone:zone];
  volume = v5->_volume;
  v5->_volume = v10;

  return v5;
}

- (ASDPurgeAppsRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ASDPurgeAppsRequestOptions;
  v5 = [(ASDRequestOptions *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"apps"];
    apps = v5->_apps;
    v5->_apps = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desiredPurgeAmount"];
    desiredPurgeAmount = v5->_desiredPurgeAmount;
    v5->_desiredPurgeAmount = v11;

    v5->_offloadOnly = [coderCopy decodeBoolForKey:@"offloadOnly"];
    v5->_performAvailablityCheck = [coderCopy decodeBoolForKey:@"performAvailablityCheck"];
    v5->_skipLaunchCheck = [coderCopy decodeBoolForKey:@"skipLaunchCheck"];
    v5->_urgency = [coderCopy decodeIntegerForKey:@"urgency"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    volume = v5->_volume;
    v5->_volume = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  apps = [(ASDPurgeAppsRequestOptions *)self apps];
  [coderCopy encodeObject:apps forKey:@"apps"];

  desiredPurgeAmount = [(ASDPurgeAppsRequestOptions *)self desiredPurgeAmount];
  [coderCopy encodeObject:desiredPurgeAmount forKey:@"desiredPurgeAmount"];

  [coderCopy encodeBool:-[ASDPurgeAppsRequestOptions offloadOnly](self forKey:{"offloadOnly"), @"offloadOnly"}];
  [coderCopy encodeBool:-[ASDPurgeAppsRequestOptions performAvailablityCheck](self forKey:{"performAvailablityCheck"), @"performAvailablityCheck"}];
  [coderCopy encodeBool:-[ASDPurgeAppsRequestOptions skipLaunchCheck](self forKey:{"skipLaunchCheck"), @"skipLaunchCheck"}];
  [coderCopy encodeInteger:-[ASDPurgeAppsRequestOptions urgency](self forKey:{"urgency"), @"urgency"}];
  volume = [(ASDPurgeAppsRequestOptions *)self volume];
  [coderCopy encodeObject:volume forKey:@"volume"];

  v8.receiver = self;
  v8.super_class = ASDPurgeAppsRequestOptions;
  [(ASDRequestOptions *)&v8 encodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  urgency = [(ASDPurgeAppsRequestOptions *)self urgency];
  desiredPurgeAmount = [(ASDPurgeAppsRequestOptions *)self desiredPurgeAmount];
  volume = [(ASDPurgeAppsRequestOptions *)self volume];
  skipLaunchCheck = [(ASDPurgeAppsRequestOptions *)self skipLaunchCheck];
  apps = [(ASDPurgeAppsRequestOptions *)self apps];
  v10 = [apps componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"%@ {urgency = %ld, desired = %@ volume: %@ skip launch check: %d apps: [%@]}", v4, urgency, desiredPurgeAmount, volume, skipLaunchCheck, v10];

  return v11;
}

@end