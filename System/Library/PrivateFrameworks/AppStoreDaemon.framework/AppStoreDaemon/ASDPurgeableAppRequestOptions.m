@interface ASDPurgeableAppRequestOptions
- (ASDPurgeableAppRequestOptions)initWithCoder:(id)a3;
- (ASDPurgeableAppRequestOptions)initWithVolume:(id)a3 urgency:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurgeableAppRequestOptions

- (ASDPurgeableAppRequestOptions)initWithVolume:(id)a3 urgency:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ASDPurgeableAppRequestOptions;
  v8 = [(ASDPurgeableAppRequestOptions *)&v11 init];
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
  v5 = [+[ASDPurgeableAppRequestOptions allocWithZone:](ASDPurgeableAppRequestOptions init];
  v5->_performAvailablityCheck = self->_performAvailablityCheck;
  v5->_skipLaunchCheck = self->_skipLaunchCheck;
  v5->_urgency = self->_urgency;
  v6 = [(NSString *)self->_volume copyWithZone:a3];
  volume = v5->_volume;
  v5->_volume = v6;

  return v5;
}

- (ASDPurgeableAppRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDPurgeableAppRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_performAvailablityCheck = [v4 decodeBoolForKey:@"performAvailablityCheck"];
    v5->_skipLaunchCheck = [v4 decodeBoolForKey:@"skipLaunchCheck"];
    v5->_urgency = [v4 decodeIntegerForKey:@"urgency"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    volume = v5->_volume;
    v5->_volume = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[ASDPurgeableAppRequestOptions performAvailablityCheck](self forKey:{"performAvailablityCheck"), @"performAvailablityCheck"}];
  [v4 encodeBool:-[ASDPurgeableAppRequestOptions skipLaunchCheck](self forKey:{"skipLaunchCheck"), @"skipLaunchCheck"}];
  [v4 encodeInteger:-[ASDPurgeableAppRequestOptions urgency](self forKey:{"urgency"), @"urgency"}];
  v5 = [(ASDPurgeableAppRequestOptions *)self volume];
  [v4 encodeObject:v5 forKey:@"volume"];

  v6.receiver = self;
  v6.super_class = ASDPurgeableAppRequestOptions;
  [(ASDRequestOptions *)&v6 encodeWithCoder:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(ASDPurgeableAppRequestOptions *)self urgency];
  v6 = [(ASDPurgeableAppRequestOptions *)self volume];
  v7 = [v3 stringWithFormat:@"%@ {urgency = %ld, volume = %@ skip launch check = %d, perform availability check = %d}", v4, v5, v6, -[ASDPurgeableAppRequestOptions skipLaunchCheck](self, "skipLaunchCheck"), -[ASDPurgeableAppRequestOptions performAvailablityCheck](self, "performAvailablityCheck")];

  return v7;
}

@end