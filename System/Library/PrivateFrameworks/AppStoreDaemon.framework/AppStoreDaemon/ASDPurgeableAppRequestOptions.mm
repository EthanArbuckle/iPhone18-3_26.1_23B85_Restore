@interface ASDPurgeableAppRequestOptions
- (ASDPurgeableAppRequestOptions)initWithCoder:(id)coder;
- (ASDPurgeableAppRequestOptions)initWithVolume:(id)volume urgency:(int64_t)urgency;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurgeableAppRequestOptions

- (ASDPurgeableAppRequestOptions)initWithVolume:(id)volume urgency:(int64_t)urgency
{
  volumeCopy = volume;
  v11.receiver = self;
  v11.super_class = ASDPurgeableAppRequestOptions;
  v8 = [(ASDPurgeableAppRequestOptions *)&v11 init];
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
  v5 = [+[ASDPurgeableAppRequestOptions allocWithZone:](ASDPurgeableAppRequestOptions init];
  v5->_performAvailablityCheck = self->_performAvailablityCheck;
  v5->_skipLaunchCheck = self->_skipLaunchCheck;
  v5->_urgency = self->_urgency;
  v6 = [(NSString *)self->_volume copyWithZone:zone];
  volume = v5->_volume;
  v5->_volume = v6;

  return v5;
}

- (ASDPurgeableAppRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDPurgeableAppRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_performAvailablityCheck = [coderCopy decodeBoolForKey:@"performAvailablityCheck"];
    v5->_skipLaunchCheck = [coderCopy decodeBoolForKey:@"skipLaunchCheck"];
    v5->_urgency = [coderCopy decodeIntegerForKey:@"urgency"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    volume = v5->_volume;
    v5->_volume = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ASDPurgeableAppRequestOptions performAvailablityCheck](self forKey:{"performAvailablityCheck"), @"performAvailablityCheck"}];
  [coderCopy encodeBool:-[ASDPurgeableAppRequestOptions skipLaunchCheck](self forKey:{"skipLaunchCheck"), @"skipLaunchCheck"}];
  [coderCopy encodeInteger:-[ASDPurgeableAppRequestOptions urgency](self forKey:{"urgency"), @"urgency"}];
  volume = [(ASDPurgeableAppRequestOptions *)self volume];
  [coderCopy encodeObject:volume forKey:@"volume"];

  v6.receiver = self;
  v6.super_class = ASDPurgeableAppRequestOptions;
  [(ASDRequestOptions *)&v6 encodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  urgency = [(ASDPurgeableAppRequestOptions *)self urgency];
  volume = [(ASDPurgeableAppRequestOptions *)self volume];
  v7 = [v3 stringWithFormat:@"%@ {urgency = %ld, volume = %@ skip launch check = %d, perform availability check = %d}", v4, urgency, volume, -[ASDPurgeableAppRequestOptions skipLaunchCheck](self, "skipLaunchCheck"), -[ASDPurgeableAppRequestOptions performAvailablityCheck](self, "performAvailablityCheck")];

  return v7;
}

@end