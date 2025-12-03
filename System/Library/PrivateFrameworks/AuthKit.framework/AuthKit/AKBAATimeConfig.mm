@interface AKBAATimeConfig
- (AKBAATimeConfig)initWithCoder:(id)coder;
- (AKBAATimeConfig)initWithServerTimeInterval:(double)interval localTimeInterval:(double)timeInterval bootSessionUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKBAATimeConfig

- (AKBAATimeConfig)initWithServerTimeInterval:(double)interval localTimeInterval:(double)timeInterval bootSessionUUID:(id)d
{
  selfCopy = self;
  v13 = a2;
  intervalCopy = interval;
  timeIntervalCopy = timeInterval;
  location = 0;
  objc_storeStrong(&location, d);
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = AKBAATimeConfig;
  v8 = [(AKBAATimeConfig *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_lastServerTimeInterval = intervalCopy;
    selfCopy->_lastLocalTimeInterval = timeIntervalCopy;
    objc_storeStrong(&selfCopy->_bootSessionUUID, location);
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKBAATimeConfig)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKBAATimeConfig;
  v10 = [(AKBAATimeConfig *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    [location[0] decodeDoubleForKey:@"lastLocalTimeInterval"];
    selfCopy->_lastLocalTimeInterval = v4;
    [location[0] decodeDoubleForKey:@"lastServerTimeInterval"];
    selfCopy->_lastServerTimeInterval = v5;
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"bootSessionUUID"];
    bootSessionUUID = selfCopy->_bootSessionUUID;
    selfCopy->_bootSessionUUID = v6;
    _objc_release(bootSessionUUID);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  [(AKBAATimeConfig *)selfCopy lastLocalTimeInterval];
  [v3 encodeDouble:@"lastLocalTimeInterval" forKey:?];
  v4 = location[0];
  [(AKBAATimeConfig *)selfCopy lastServerTimeInterval];
  [v4 encodeDouble:@"lastServerTimeInterval" forKey:?];
  v5 = location[0];
  bootSessionUUID = [(AKBAATimeConfig *)selfCopy bootSessionUUID];
  [v5 encodeObject:? forKey:?];
  _objc_release(bootSessionUUID);
  objc_storeStrong(location, 0);
}

@end