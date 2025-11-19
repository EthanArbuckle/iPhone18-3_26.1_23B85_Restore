@interface HMCameraUserNotificationSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraUserNotificationSettings)init;
- (HMCameraUserNotificationSettings)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraUserNotificationSettings

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCameraUserNotificationSettings *)self isAccessModeChangeNotificationEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Access Mode Change" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCameraUserNotificationSettings *)self isReachabilityEventNotificationEnabled];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Reachability Event" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCameraUserNotificationSettings *)self isSmartBulletinBoardNotificationEnabled];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Smart Bulletin" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  v14 = [v12 initWithName:@"Smart Bulletin Condition" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCameraUserNotificationSettings)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMCameraUserNotificationSettings *)self init];
  -[HMCameraUserNotificationSettings setVersion:](v5, "setVersion:", [v4 decodeIntegerForKey:@"HMCPNS.ck.version"]);
  -[HMCameraUserNotificationSettings setAccessModeChangeNotificationEnabled:](v5, "setAccessModeChangeNotificationEnabled:", [v4 decodeBoolForKey:@"HMCPNS.ck.amcne"]);
  -[HMCameraUserNotificationSettings setReachabilityEventNotificationEnabled:](v5, "setReachabilityEventNotificationEnabled:", [v4 decodeBoolForKey:@"HMCPNS.ck.rene"]);
  -[HMCameraUserNotificationSettings setSmartBulletinBoardNotificationEnabled:](v5, "setSmartBulletinBoardNotificationEnabled:", [v4 decodeBoolForKey:@"HMCPNS.ck.sbbne"]);
  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMCPNS.ck.sbbnc"];

  [(HMCameraUserNotificationSettings *)v5 setSmartBulletinBoardNotificationCondition:v9];
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMCameraUserNotificationSettings version](self forKey:{"version"), @"HMCPNS.ck.version"}];
  [v4 encodeBool:-[HMCameraUserNotificationSettings isAccessModeChangeNotificationEnabled](self forKey:{"isAccessModeChangeNotificationEnabled"), @"HMCPNS.ck.amcne"}];
  [v4 encodeBool:-[HMCameraUserNotificationSettings isReachabilityEventNotificationEnabled](self forKey:{"isReachabilityEventNotificationEnabled"), @"HMCPNS.ck.rene"}];
  [v4 encodeBool:-[HMCameraUserNotificationSettings isSmartBulletinBoardNotificationEnabled](self forKey:{"isSmartBulletinBoardNotificationEnabled"), @"HMCPNS.ck.sbbne"}];
  v5 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  [v4 encodeObject:v5 forKey:@"HMCPNS.ck.sbbnc"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMMutableCameraUserNotificationSettings);
  [(HMCameraUserNotificationSettings *)v4 setVersion:[(HMCameraUserNotificationSettings *)self version]];
  [(HMCameraUserNotificationSettings *)v4 setAccessModeChangeNotificationEnabled:[(HMCameraUserNotificationSettings *)self isAccessModeChangeNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setReachabilityEventNotificationEnabled:[(HMCameraUserNotificationSettings *)self isReachabilityEventNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationEnabled:[(HMCameraUserNotificationSettings *)self isSmartBulletinBoardNotificationEnabled]];
  v5 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationCondition:v5];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v3 = [(HMCameraUserNotificationSettings *)self version];
  v4 = v3 ^ [(HMCameraUserNotificationSettings *)self isAccessModeChangeNotificationEnabled];
  v5 = [(HMCameraUserNotificationSettings *)self isReachabilityEventNotificationEnabled];
  v6 = v4 ^ v5 ^ [(HMCameraUserNotificationSettings *)self isSmartBulletinBoardNotificationEnabled];
  v7 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6 && (v7 = -[HMCameraUserNotificationSettings version](self, "version"), v7 == [v6 version]) && (v8 = -[HMCameraUserNotificationSettings isAccessModeChangeNotificationEnabled](self, "isAccessModeChangeNotificationEnabled"), v8 == objc_msgSend(v6, "isAccessModeChangeNotificationEnabled")) && (v9 = -[HMCameraUserNotificationSettings isReachabilityEventNotificationEnabled](self, "isReachabilityEventNotificationEnabled"), v9 == objc_msgSend(v6, "isReachabilityEventNotificationEnabled")) && (v10 = -[HMCameraUserNotificationSettings isSmartBulletinBoardNotificationEnabled](self, "isSmartBulletinBoardNotificationEnabled"), v10 == objc_msgSend(v6, "isSmartBulletinBoardNotificationEnabled")))
  {
    v13 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
    v14 = [v6 smartBulletinBoardNotificationCondition];
    v11 = HMFEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMCameraUserNotificationSettings)init
{
  v3.receiver = self;
  v3.super_class = HMCameraUserNotificationSettings;
  result = [(HMCameraUserNotificationSettings *)&v3 init];
  if (result)
  {
    result->_version = 1;
  }

  return result;
}

@end