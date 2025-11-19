@interface AKBAATimeConfig
- (AKBAATimeConfig)initWithCoder:(id)a3;
- (AKBAATimeConfig)initWithServerTimeInterval:(double)a3 localTimeInterval:(double)a4 bootSessionUUID:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKBAATimeConfig

- (AKBAATimeConfig)initWithServerTimeInterval:(double)a3 localTimeInterval:(double)a4 bootSessionUUID:(id)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = v14;
  v14 = 0;
  v9.receiver = v5;
  v9.super_class = AKBAATimeConfig;
  v8 = [(AKBAATimeConfig *)&v9 init];
  v14 = v8;
  objc_storeStrong(&v14, v8);
  if (v8)
  {
    v14->_lastServerTimeInterval = v12;
    v14->_lastLocalTimeInterval = v11;
    objc_storeStrong(&v14->_bootSessionUUID, location);
  }

  v7 = _objc_retain(v14);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (AKBAATimeConfig)initWithCoder:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKBAATimeConfig;
  v10 = [(AKBAATimeConfig *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    [location[0] decodeDoubleForKey:@"lastLocalTimeInterval"];
    v13->_lastLocalTimeInterval = v4;
    [location[0] decodeDoubleForKey:@"lastServerTimeInterval"];
    v13->_lastServerTimeInterval = v5;
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"bootSessionUUID"];
    bootSessionUUID = v13->_bootSessionUUID;
    v13->_bootSessionUUID = v6;
    _objc_release(bootSessionUUID);
  }

  v9 = _objc_retain(v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  [(AKBAATimeConfig *)v8 lastLocalTimeInterval];
  [v3 encodeDouble:@"lastLocalTimeInterval" forKey:?];
  v4 = location[0];
  [(AKBAATimeConfig *)v8 lastServerTimeInterval];
  [v4 encodeDouble:@"lastServerTimeInterval" forKey:?];
  v5 = location[0];
  v6 = [(AKBAATimeConfig *)v8 bootSessionUUID];
  [v5 encodeObject:? forKey:?];
  _objc_release(v6);
  objc_storeStrong(location, 0);
}

@end