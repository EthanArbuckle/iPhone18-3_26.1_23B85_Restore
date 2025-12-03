@interface HMHomeWalletKey
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMHomeWalletKey)initWithCoder:(id)coder;
- (HMHomeWalletKey)initWithUUID:(id)d customURL:(id)l expressEnabled:(BOOL)enabled uwbUnlockEnabled:(BOOL)unlockEnabled color:(int64_t)color;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeWalletKey

- (NSArray)attributeDescriptions
{
  v21[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  uUID = [(HMHomeWalletKey *)self UUID];
  v4 = [v3 initWithName:@"UUID" value:uUID];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  customURL = [(HMHomeWalletKey *)self customURL];
  v7 = [v5 initWithName:@"Custom URL" value:customURL];
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

- (HMHomeWalletKey)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyCustomURL"];
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
    selfCopy = self;
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
    selfCopy = -[HMHomeWalletKey initWithUUID:customURL:expressEnabled:uwbUnlockEnabled:color:](self, "initWithUUID:customURL:expressEnabled:uwbUnlockEnabled:color:", v5, v6, [coderCopy decodeBoolForKey:@"HMHomeWalletKeyExpressEnabled"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"HMHomeWalletKeyUWBUnlockEnabled"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"HMHomeWalletKeyEncodedColor"));
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMHomeWalletKey *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMHomeWalletKeyUUID"];

  customURL = [(HMHomeWalletKey *)self customURL];
  [coderCopy encodeObject:customURL forKey:@"HMHomeWalletKeyCustomURL"];

  [coderCopy encodeBool:-[HMHomeWalletKey isExpressEnabled](self forKey:{"isExpressEnabled"), @"HMHomeWalletKeyExpressEnabled"}];
  [coderCopy encodeBool:-[HMHomeWalletKey isUWBUnlockEnabled](self forKey:{"isUWBUnlockEnabled"), @"HMHomeWalletKeyUWBUnlockEnabled"}];
  [coderCopy encodeInteger:-[HMHomeWalletKey color](self forKey:{"color"), @"HMHomeWalletKeyEncodedColor"}];
}

- (unint64_t)hash
{
  uUID = [(HMHomeWalletKey *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uUID = [(HMHomeWalletKey *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      customURL = [(HMHomeWalletKey *)self customURL];
      customURL2 = [v6 customURL];
      if ([customURL isEqual:customURL2] && (v11 = -[HMHomeWalletKey isExpressEnabled](self, "isExpressEnabled"), v11 == objc_msgSend(v6, "isExpressEnabled")) && (v12 = -[HMHomeWalletKey color](self, "color"), v12 == objc_msgSend(v6, "color")))
      {
        isUWBUnlockEnabled = [(HMHomeWalletKey *)self isUWBUnlockEnabled];
        v14 = isUWBUnlockEnabled ^ [v6 isUWBUnlockEnabled] ^ 1;
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

- (HMHomeWalletKey)initWithUUID:(id)d customURL:(id)l expressEnabled:(BOOL)enabled uwbUnlockEnabled:(BOOL)unlockEnabled color:(int64_t)color
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = HMHomeWalletKey;
  v15 = [(HMHomeWalletKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_UUID, d);
    objc_storeStrong(&v16->_customURL, l);
    v16->_expressEnabled = enabled;
    v16->_uwbUnlockEnabled = unlockEnabled;
    v16->_color = color;
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end