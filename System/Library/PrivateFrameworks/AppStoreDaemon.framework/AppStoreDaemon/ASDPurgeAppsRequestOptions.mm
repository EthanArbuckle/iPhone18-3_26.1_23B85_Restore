@interface ASDPurgeAppsRequestOptions
- (ASDPurgeAppsRequestOptions)initWithCoder:(id)a3;
- (ASDPurgeAppsRequestOptions)initWithVolume:(id)a3 urgency:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurgeAppsRequestOptions

- (ASDPurgeAppsRequestOptions)initWithVolume:(id)a3 urgency:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ASDPurgeAppsRequestOptions;
  v8 = [(ASDPurgeAppsRequestOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_volume, a3);
    v9->_urgency = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDPurgeAppsRequestOptions allocWithZone:](ASDPurgeAppsRequestOptions init];
  v6 = [(NSArray *)self->_apps copyWithZone:a3];
  apps = v5->_apps;
  v5->_apps = v6;

  v8 = [(NSNumber *)self->_desiredPurgeAmount copyWithZone:a3];
  desiredPurgeAmount = v5->_desiredPurgeAmount;
  v5->_desiredPurgeAmount = v8;

  v5->_offloadOnly = self->_offloadOnly;
  v5->_performAvailablityCheck = self->_performAvailablityCheck;
  v5->_skipLaunchCheck = self->_skipLaunchCheck;
  v5->_urgency = self->_urgency;
  v10 = [(NSString *)self->_volume copyWithZone:a3];
  volume = v5->_volume;
  v5->_volume = v10;

  return v5;
}

- (ASDPurgeAppsRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASDPurgeAppsRequestOptions;
  v5 = [(ASDRequestOptions *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"apps"];
    apps = v5->_apps;
    v5->_apps = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desiredPurgeAmount"];
    desiredPurgeAmount = v5->_desiredPurgeAmount;
    v5->_desiredPurgeAmount = v11;

    v5->_offloadOnly = [v4 decodeBoolForKey:@"offloadOnly"];
    v5->_performAvailablityCheck = [v4 decodeBoolForKey:@"performAvailablityCheck"];
    v5->_skipLaunchCheck = [v4 decodeBoolForKey:@"skipLaunchCheck"];
    v5->_urgency = [v4 decodeIntegerForKey:@"urgency"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    volume = v5->_volume;
    v5->_volume = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurgeAppsRequestOptions *)self apps];
  [v4 encodeObject:v5 forKey:@"apps"];

  v6 = [(ASDPurgeAppsRequestOptions *)self desiredPurgeAmount];
  [v4 encodeObject:v6 forKey:@"desiredPurgeAmount"];

  [v4 encodeBool:-[ASDPurgeAppsRequestOptions offloadOnly](self forKey:{"offloadOnly"), @"offloadOnly"}];
  [v4 encodeBool:-[ASDPurgeAppsRequestOptions performAvailablityCheck](self forKey:{"performAvailablityCheck"), @"performAvailablityCheck"}];
  [v4 encodeBool:-[ASDPurgeAppsRequestOptions skipLaunchCheck](self forKey:{"skipLaunchCheck"), @"skipLaunchCheck"}];
  [v4 encodeInteger:-[ASDPurgeAppsRequestOptions urgency](self forKey:{"urgency"), @"urgency"}];
  v7 = [(ASDPurgeAppsRequestOptions *)self volume];
  [v4 encodeObject:v7 forKey:@"volume"];

  v8.receiver = self;
  v8.super_class = ASDPurgeAppsRequestOptions;
  [(ASDRequestOptions *)&v8 encodeWithCoder:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(ASDPurgeAppsRequestOptions *)self urgency];
  v6 = [(ASDPurgeAppsRequestOptions *)self desiredPurgeAmount];
  v7 = [(ASDPurgeAppsRequestOptions *)self volume];
  v8 = [(ASDPurgeAppsRequestOptions *)self skipLaunchCheck];
  v9 = [(ASDPurgeAppsRequestOptions *)self apps];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"%@ {urgency = %ld, desired = %@ volume: %@ skip launch check: %d apps: [%@]}", v4, v5, v6, v7, v8, v10];

  return v11;
}

@end