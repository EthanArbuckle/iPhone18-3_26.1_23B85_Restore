@interface HMHomeWalletKey
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMHomeWalletKey)initWithCoder:(id)a3;
- (HMHomeWalletKey)initWithUUID:(id)a3 customURL:(id)a4 expressEnabled:(BOOL)a5 uwbUnlockEnabled:(BOOL)a6 color:(int64_t)a7;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeWalletKey

- (NSArray)attributeDescriptions
{
  v21[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = [(HMHomeWalletKey *)self UUID];
  v4 = [v3 initWithName:@"UUID" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [(HMHomeWalletKey *)self customURL];
  v7 = [v5 initWithName:@"Custom URL" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeWalletKey *)self isExpressEnabled];
  v9 = HMFBooleanToString();
  v10 = [v8 initWithName:@"Express Enabled" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeWalletKey *)self isUWBUnlockEnabled];
  v12 = HMFBooleanToString();
  v13 = [v11 initWithName:@"UWB Enabled" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = HMHomeWalletKeyColorAsString([(HMHomeWalletKey *)self color]);
  v16 = [v14 initWithName:@"Color" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMHomeWalletKey)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyCustomURL"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize wallet keyfrom decoded UUID: %@ customURL: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = -[HMHomeWalletKey initWithUUID:customURL:expressEnabled:uwbUnlockEnabled:color:](self, "initWithUUID:customURL:expressEnabled:uwbUnlockEnabled:color:", v5, v6, [v4 decodeBoolForKey:@"HMHomeWalletKeyExpressEnabled"], objc_msgSend(v4, "decodeBoolForKey:", @"HMHomeWalletKeyUWBUnlockEnabled"), objc_msgSend(v4, "decodeIntegerForKey:", @"HMHomeWalletKeyEncodedColor"));
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMHomeWalletKey *)self UUID];
  [v6 encodeObject:v4 forKey:@"HMHomeWalletKeyUUID"];

  v5 = [(HMHomeWalletKey *)self customURL];
  [v6 encodeObject:v5 forKey:@"HMHomeWalletKeyCustomURL"];

  [v6 encodeBool:-[HMHomeWalletKey isExpressEnabled](self forKey:{"isExpressEnabled"), @"HMHomeWalletKeyExpressEnabled"}];
  [v6 encodeBool:-[HMHomeWalletKey isUWBUnlockEnabled](self forKey:{"isUWBUnlockEnabled"), @"HMHomeWalletKeyUWBUnlockEnabled"}];
  [v6 encodeInteger:-[HMHomeWalletKey color](self forKey:{"color"), @"HMHomeWalletKeyEncodedColor"}];
}

- (unint64_t)hash
{
  v2 = [(HMHomeWalletKey *)self UUID];
  v3 = [v2 hash];

  return v3;
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
  if (v6)
  {
    v7 = [(HMHomeWalletKey *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMHomeWalletKey *)self customURL];
      v10 = [v6 customURL];
      if ([v9 isEqual:v10] && (v11 = -[HMHomeWalletKey isExpressEnabled](self, "isExpressEnabled"), v11 == objc_msgSend(v6, "isExpressEnabled")) && (v12 = -[HMHomeWalletKey color](self, "color"), v12 == objc_msgSend(v6, "color")))
      {
        v13 = [(HMHomeWalletKey *)self isUWBUnlockEnabled];
        v14 = v13 ^ [v6 isUWBUnlockEnabled] ^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (HMHomeWalletKey)initWithUUID:(id)a3 customURL:(id)a4 expressEnabled:(BOOL)a5 uwbUnlockEnabled:(BOOL)a6 color:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = HMHomeWalletKey;
  v15 = [(HMHomeWalletKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_UUID, a3);
    objc_storeStrong(&v16->_customURL, a4);
    v16->_expressEnabled = a5;
    v16->_uwbUnlockEnabled = a6;
    v16->_color = a7;
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end