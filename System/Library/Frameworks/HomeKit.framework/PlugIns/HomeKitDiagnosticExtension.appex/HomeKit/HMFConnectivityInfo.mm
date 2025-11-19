@interface HMFConnectivityInfo
+ (id)connectivityInfoWithAccessoryIdentifier:(id)a3 wakeConfiguration:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)woWLANSupportsBSP;
- (BOOL)woWLANSupportsDarkPoll;
- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5;
- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5 darkPollMinimumInterval:(id)a6;
- (HMFConnectivityInfo)initWithCoder:(id)a3;
- (HMFWoWLANInfo)woWLANInfo;
- (NSNumber)woWLANDarkPollMinimumIntervalInSeconds;
- (id)description;
- (int64_t)woWLANWakeUpTypeSupport;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFConnectivityInfo

- (id)description
{
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"WakeOnLanV2Enabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v3 = [(HMFConnectivityInfo *)self accessoryIdentifier];
    v4 = [(HMFConnectivityInfo *)self woBLEInfo];
    v5 = [(HMFConnectivityInfo *)self woWLANInfos];
    v6 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];
    v7 = [(HMFConnectivityInfo *)self woWLANLastDarkPollDate];
    v8 = [NSString stringWithFormat:@"Identifier: %@ BLEInfo: %@, WLANInfos: %@, DarkPollMinimumInterval: %@, LastDarkPollDate: %@", v3, v4, v5, v6, v7];
  }

  else
  {
    v3 = [(HMFConnectivityInfo *)self accessoryIdentifier];
    v4 = [(HMFConnectivityInfo *)self woBLEInfo];
    v5 = [(HMFConnectivityInfo *)self woWLANInfos];
    v8 = [NSString stringWithFormat:@"Identifier: %@ BLEInfo: %@, WLANInfos: %@", v3, v4, v5];
  }

  return v8;
}

- (BOOL)woWLANSupportsDarkPoll
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 woWLANSupportsDarkPoll];
  return v2;
}

- (BOOL)woWLANSupportsBSP
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 woWLANSupportsBSP];
  return v2;
}

- (int64_t)woWLANWakeUpTypeSupport
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 woWLANWakeUpTypeSupport];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSNumber)woWLANDarkPollMinimumIntervalInSeconds
{
  v3 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];

  if (v3)
  {
    v4 = [NSNumber alloc];
    v5 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];
    v6 = [v4 initWithUnsignedLongLong:{60 * objc_msgSend(v5, "unsignedLongValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)woWLANVersion
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 woWLANVersion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HMFConnectivityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.ID"];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v23 count:2];
  v7 = [NSSet setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"HMFCI.woBLE"];

  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v22 count:3];
  v10 = [NSSet setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"HMFCI.woWLAN"];

  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v12 = [NSArray arrayWithObjects:v21 count:2];
  v13 = [NSSet setWithArray:v12];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HMFCI.All.woWLAN"];

  if (![v14 count] && v11)
  {
    v20 = v11;
    v15 = [NSArray arrayWithObjects:&v20 count:1];

    v14 = v15;
  }

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.DarkPollMinimumInterval"];
  v17 = [(HMFConnectivityInfo *)self initWithAccessoryIdentifier:v5 woBLEInfo:v8 woWLANInfos:v14 darkPollMinimumInterval:v16];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.LastDarkPollDate"];
  [(HMFConnectivityInfo *)v17 setWoWLANLastDarkPollDate:v18];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(HMFConnectivityInfo *)self accessoryIdentifier];
  [v16 encodeObject:v4 forKey:@"HMFCI.ID"];

  v5 = [(HMFConnectivityInfo *)self woBLEInfo];

  if (v5)
  {
    v6 = [(HMFConnectivityInfo *)self woBLEInfo];
    [v16 encodeObject:v6 forKey:@"HMFCI.woBLE"];
  }

  v7 = [(HMFConnectivityInfo *)self woWLANInfo];

  if (v7)
  {
    v8 = [(HMFConnectivityInfo *)self woWLANInfo];
    [v16 encodeObject:v8 forKey:@"HMFCI.woWLAN"];
  }

  v9 = [(HMFConnectivityInfo *)self woWLANInfos];

  if (v9)
  {
    v10 = [(HMFConnectivityInfo *)self woWLANInfos];
    [v16 encodeObject:v10 forKey:@"HMFCI.All.woWLAN"];
  }

  v11 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];

  if (v11)
  {
    v12 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];
    [v16 encodeObject:v12 forKey:@"HMFCI.woWLAN.DarkPollMinimumInterval"];
  }

  v13 = [(HMFConnectivityInfo *)self woWLANLastDarkPollDate];

  v14 = v16;
  if (v13)
  {
    v15 = [(HMFConnectivityInfo *)self woWLANLastDarkPollDate];
    [v16 encodeObject:v15 forKey:@"HMFCI.woWLAN.LastDarkPollDate"];

    v14 = v16;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = [(HMFConnectivityInfo *)self accessoryIdentifier];
    v8 = [(HMFConnectivityInfo *)v6 accessoryIdentifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(HMFConnectivityInfo *)self woBLEInfo];
    v11 = [(HMFConnectivityInfo *)v6 woBLEInfo];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = [(HMFConnectivityInfo *)self woWLANInfos];
    v14 = [(HMFConnectivityInfo *)v6 woWLANInfos];
    v15 = HMFEqualObjects();

    if (!v15)
    {
      goto LABEL_11;
    }

    v16 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];
    v17 = [(HMFConnectivityInfo *)v6 woWLANDarkPollMinimumInterval];
    v18 = HMFEqualObjects();

    if (v18)
    {
      v19 = [(HMFConnectivityInfo *)self woWLANLastDarkPollDate];
      v20 = [(HMFConnectivityInfo *)v6 woWLANLastDarkPollDate];
      v21 = HMFEqualObjects();
    }

    else
    {
LABEL_11:
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(HMFConnectivityInfo *)self accessoryIdentifier];
  v4 = [v3 hash];
  v5 = [(HMFConnectivityInfo *)self woBLEInfo];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMFConnectivityInfo *)self woWLANInfos];
  v8 = [v7 hash];
  v9 = [(HMFConnectivityInfo *)self woWLANDarkPollMinimumInterval];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HMFConnectivityInfo *)self woWLANLastDarkPollDate];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (HMFWoWLANInfo)woWLANInfo
{
  v2 = [(HMFConnectivityInfo *)self woWLANInfos];
  v3 = [v2 firstObject];

  return v3;
}

- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5 darkPollMinimumInterval:(id)a6
{
  v11 = a6;
  v12 = [(HMFConnectivityInfo *)self initWithAccessoryIdentifier:a3 woBLEInfo:a4 woWLANInfos:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_woWLANDarkPollMinimumInterval, a6);
  }

  return v13;
}

- (HMFConnectivityInfo)initWithAccessoryIdentifier:(id)a3 woBLEInfo:(id)a4 woWLANInfos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 && (v10 || [v11 count]))
  {
    v33.receiver = self;
    v33.super_class = HMFConnectivityInfo;
    v13 = [(HMFConnectivityInfo *)&v33 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_accessoryIdentifier, a3);
      objc_storeStrong(&v14->_woBLEInfo, a4);
      if (v12)
      {
        v15 = +[NSMutableArray array];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v29 + 1) + 8 * i);
              if (([v15 containsObject:{v21, v29}] & 1) == 0)
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v18);
        }

        v22 = [v15 copy];
        woWLANInfos = v14->_woWLANInfos;
        v14->_woWLANInfos = v22;
      }
    }

    self = v14;
    v24 = self;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@Returning nil for the invalid woBLEInfo and woWLANInfo of accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  return v24;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)connectivityInfoWithAccessoryIdentifier:(id)a3 wakeConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 custom1];
  v8 = [v7 primaryIdentifier];

  if (v8)
  {
    v9 = [HMFWoBLEInfo alloc];
    v10 = [v6 custom1];
    v11 = [v10 primaryIdentifier];
    v12 = [(HMFWoBLEInfo *)v9 initWithBLEIdentifier:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 custom2];
  v14 = [v13 primaryIdentifier];

  if (v14)
  {
    v15 = [HMFWoWLANInfo alloc];
    v16 = [v6 custom2];
    v17 = [v16 primaryIdentifier];
    v18 = [v6 custom2];
    v19 = [v18 secondaryIdentifier];
    v20 = [(HMFWoWLANInfo *)v15 initWithPrimaryIdentifier:v17 wifiIdentifiers:v19];

    v21 = [HMFConnectivityInfo alloc];
    if (v20)
    {
      v25 = v20;
      v22 = [NSArray arrayWithObjects:&v25 count:1];
      v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:v5 woBLEInfo:v12 woWLANInfos:v22];

      goto LABEL_9;
    }
  }

  else
  {
    v21 = [HMFConnectivityInfo alloc];
  }

  v23 = [(HMFConnectivityInfo *)v21 initWithAccessoryIdentifier:v5 woBLEInfo:v12 woWLANInfos:0];
LABEL_9:

  return v23;
}

@end