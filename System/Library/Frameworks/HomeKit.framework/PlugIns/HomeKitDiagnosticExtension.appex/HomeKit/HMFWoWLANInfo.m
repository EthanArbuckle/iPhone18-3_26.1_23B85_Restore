@interface HMFWoWLANInfo
- (BOOL)isEqual:(id)a3;
- (HMFWoWLANInfo)initWithCoder:(id)a3;
- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)a3 wifiIdentifiers:(id)a4;
- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)a3 wakePort:(unsigned __int16)a4 wakeAddress:(id)a5 wakeType:(int64_t)a6 wakePacketType:(int64_t)a7 wakePattern:(id)a8;
- (NSString)wakeAddressString;
- (id)description;
- (int64_t)woWLANWakeUpTypeSupport;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFWoWLANInfo

- (int64_t)woWLANWakeUpTypeSupport
{
  if (![(HMFWoWLANInfo *)self wakeType])
  {
    return 1;
  }

  return [(HMFWoWLANInfo *)self wakeType];
}

- (unsigned)woWLANVersion
{
  v3 = [(HMFWoWLANInfo *)self version];
  if (v3)
  {

    LOBYTE(v3) = [(HMFWoWLANInfo *)self version];
  }

  return v3;
}

- (id)description
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    v3 = [NSNumber numberWithUnsignedChar:[(HMFWoWLANInfo *)self version]];
    v4 = [NSNumber numberWithInteger:[(HMFWoWLANInfo *)self wakeType]];
    v5 = [NSNumber numberWithUnsignedShort:[(HMFWoWLANInfo *)self wakePort]];
    v6 = [(HMFWoWLANInfo *)self wakeAddressString];
    v7 = [NSNumber numberWithInteger:[(HMFWoWLANInfo *)self wakePacketType]];
    v8 = [NSString stringWithFormat:@"<Version: %@, Wake Type: %@, Wake Port: %@, Wake Address: %@, Wake Packet Type: %@>", v3, v4, v5, v6, v7];
  }

  else
  {
    v3 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v4 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    v8 = [NSString stringWithFormat:@"<Primary Address: %@, Additional MAC Addresses: %@>", v3, v4];
  }

  return v8;
}

- (NSString)wakeAddressString
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig]&& [(HMFWoWLANInfo *)self wakePacketType]== 1)
  {
    v3 = [(HMFWoWLANInfo *)self wakeAddress];

    if (v3)
    {
      v4 = [HMFMACAddress alloc];
      v5 = [(HMFWoWLANInfo *)self wakeAddress];
      v6 = [v4 initWithAddressData:v5];

      v7 = [v6 formattedString];
    }

    else
    {
      v7 = [(HMFWoWLANInfo *)self wakePattern];

      if (v7)
      {
        v9 = [(HMFWoWLANInfo *)self wakePattern];
        v10 = v9;
        if (v9 && [v9 length] >= 0x66)
        {
          v11 = [v10 bytes];
          v12 = 0;
          while (v11[v12] == 255)
          {
            if (++v12 == 6)
            {
              for (i = 0; i != 6; ++i)
              {
                v20[i] = v11[i + 6];
              }

              v14 = v11 + 6;
              v15 = 1;
LABEL_20:
              v16 = 0;
              while (v14[v16] == v20[v16])
              {
                if (++v16 == 6)
                {
                  ++v15;
                  v14 += 6;
                  if (v15 != 16)
                  {
                    goto LABEL_20;
                  }

                  v17 = [HMFMACAddress alloc];
                  v18 = [NSData dataWithBytes:v20 length:6];
                  v19 = [v17 initWithAddressData:v18];

                  v7 = [v19 formattedString];

                  goto LABEL_13;
                }
              }

              break;
            }
          }
        }

        v7 = 0;
LABEL_13:
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMFWoWLANInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"HMFCI.woWLAN.sleepConfig"])
  {
    v5 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.WakePort"];
    v6 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.version"];
    v7 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.wakeType"];
    v8 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.wakePacketType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.wakePattern"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.WakeAddress"];

    v11 = [(HMFWoWLANInfo *)self initWithWakeVersion:v6 wakePort:v5 wakeAddress:v10 wakeType:v7 wakePacketType:v8 wakePattern:v9];
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.pID"];
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.sIDs"];

    v11 = [(HMFWoWLANInfo *)self initWithPrimaryIdentifier:v9 wifiIdentifiers:v10];
  }

  v12 = v11;

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(HMFWoWLANInfo *)self primaryMACAddress];

  if (v4)
  {
    v5 = [(HMFWoWLANInfo *)self primaryMACAddress];
    [v12 encodeObject:v5 forKey:@"HMFCI.woWLAN.pID"];
  }

  v6 = [(HMFWoWLANInfo *)self additionalMACAddresses];

  if (v6)
  {
    v7 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    [v12 encodeObject:v7 forKey:@"HMFCI.woWLAN.sIDs"];
  }

  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    [v12 encodeBool:1 forKey:@"HMFCI.woWLAN.sleepConfig"];
    [v12 encodeInteger:-[HMFWoWLANInfo version](self forKey:{"version"), @"HMFCI.woWLAN.version"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakePort](self forKey:{"wakePort"), @"HMFCI.woWLAN.WakePort"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakeType](self forKey:{"wakeType"), @"HMFCI.woWLAN.wakeType"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakePacketType](self forKey:{"wakePacketType"), @"HMFCI.woWLAN.wakePacketType"}];
    v8 = [(HMFWoWLANInfo *)self wakeAddress];

    if (v8)
    {
      v9 = [(HMFWoWLANInfo *)self wakeAddress];
      [v12 encodeObject:v9 forKey:@"HMFCI.woWLAN.WakeAddress"];
    }

    v10 = [(HMFWoWLANInfo *)self wakePattern];

    if (v10)
    {
      v11 = [(HMFWoWLANInfo *)self wakePattern];
      [v12 encodeObject:v11 forKey:@"HMFCI.woWLAN.wakePattern"];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
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
      goto LABEL_15;
    }

    v7 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v8 = [(HMFWoWLANInfo *)v6 primaryMACAddress];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    v11 = [(HMFWoWLANInfo *)v6 additionalMACAddresses];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = [(HMFWoWLANInfo *)self version];
    if (v13 != [(HMFWoWLANInfo *)v6 version])
    {
      goto LABEL_15;
    }

    v14 = [(HMFWoWLANInfo *)self wakeType];
    if (v14 != [(HMFWoWLANInfo *)v6 wakeType])
    {
      goto LABEL_15;
    }

    v15 = [(HMFWoWLANInfo *)self wakePort];
    if (v15 != [(HMFWoWLANInfo *)v6 wakePort])
    {
      goto LABEL_15;
    }

    v16 = [(HMFWoWLANInfo *)self wakePacketType];
    if (v16 != [(HMFWoWLANInfo *)v6 wakePacketType])
    {
      goto LABEL_15;
    }

    v17 = [(HMFWoWLANInfo *)self supportsSleepConfig];
    if (v17 != [(HMFWoWLANInfo *)v6 supportsSleepConfig])
    {
      goto LABEL_15;
    }

    v18 = [(HMFWoWLANInfo *)self wakePattern];
    v19 = [(HMFWoWLANInfo *)v6 wakePattern];
    v20 = HMFEqualObjects();

    if (v20)
    {
      v21 = [(HMFWoWLANInfo *)self wakeAddress];
      v22 = [(HMFWoWLANInfo *)v6 wakeAddress];
      v23 = HMFEqualObjects();
    }

    else
    {
LABEL_15:
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    v3 = [(HMFWoWLANInfo *)self version];
    v4 = [(HMFWoWLANInfo *)self wakeType];
    v5 = v4 ^ [(HMFWoWLANInfo *)self wakePacketType]^ v3;
    v6 = [(HMFWoWLANInfo *)self wakePort];
    v7 = [(HMFWoWLANInfo *)self wakePattern];
    v8 = v5 ^ v6 ^ [v7 hash];
    v9 = [(HMFWoWLANInfo *)self wakeAddress];
    v10 = (v8 ^ [v9 hash]);
  }

  else
  {
    v7 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v10 = [v7 hash];
  }

  return v10;
}

- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)a3 wakePort:(unsigned __int16)a4 wakeAddress:(id)a5 wakeType:(int64_t)a6 wakePacketType:(int64_t)a7 wakePattern:(id)a8
{
  v15 = a5;
  v16 = a8;
  if (v15)
  {
    v25.receiver = self;
    v25.super_class = HMFWoWLANInfo;
    v17 = [(HMFWoWLANInfo *)&v25 init];
    v18 = v17;
    if (v17)
    {
      v17->_supportsSleepConfig = 1;
      v17->_version = a3;
      v17->_wakePort = a4;
      objc_storeStrong(&v17->_wakeAddress, a5);
      v18->_wakeType = a6;
      v18->_wakePacketType = a7;
      objc_storeStrong(&v18->_wakePattern, a8);
    }

    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid wake address", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  return v20;
}

- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)a3 wifiIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 || [v8 count])
  {
    v17.receiver = self;
    v17.super_class = HMFWoWLANInfo;
    v10 = [(HMFWoWLANInfo *)&v17 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_primaryMACAddress, a3);
      objc_storeStrong(v11 + 3, a4);
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid inputs for HMFWoWLANInfo.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v12 = 0;
  }

  return v12;
}

@end