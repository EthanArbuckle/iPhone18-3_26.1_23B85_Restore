@interface MTSWiFiScanResult
- (BOOL)isEqual:(id)a3;
- (MTSWiFiScanResult)initWithCoder:(id)a3;
- (MTSWiFiScanResult)initWithSSID:(id)a3 rssi:(id)a4 security:(unsigned __int8)a5 band:(unsigned __int8)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSWiFiScanResult

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MTSWiFiScanResult *)self ssid];
  [v6 encodeObject:v4 forKey:@"MTSWSR.ck.ssid"];

  v5 = [(MTSWiFiScanResult *)self rssi];
  [v6 encodeObject:v5 forKey:@"MTSWSR.ck.rssi"];

  [v6 encodeInteger:-[MTSWiFiScanResult security](self forKey:{"security"), @"MTSWSR.ck.security"}];
  [v6 encodeInteger:-[MTSWiFiScanResult band](self forKey:{"band"), @"MTSWSR.ck.band"}];
}

- (MTSWiFiScanResult)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSWSR.ck.ssid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSWSR.ck.rssi"];
  v7 = [v4 decodeIntegerForKey:@"MTSWSR.ck.security"];
  v8 = [v4 decodeIntegerForKey:@"MTSWSR.ck.band"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v13 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_239824000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded ssid: %@, rssi: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    v13 = [(MTSWiFiScanResult *)self initWithSSID:v5 rssi:v6 security:v7 band:v8];
    v14 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)hash
{
  v3 = [(MTSWiFiScanResult *)self ssid];
  v4 = [v3 hash];
  v5 = [(MTSWiFiScanResult *)self rssi];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[MTSWiFiScanResult security](self, "security")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[MTSWiFiScanResult band](self, "band")}];
  v10 = [v9 hash];

  return v8 ^ v10;
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
    v7 = [(MTSWiFiScanResult *)self ssid];
    v8 = [v6 ssid];
    if ([v7 isEqual:v8])
    {
      v9 = [(MTSWiFiScanResult *)self rssi];
      v10 = [v6 rssi];
      if ([v9 isEqual:v10] && (v11 = -[MTSWiFiScanResult security](self, "security"), v11 == objc_msgSend(v6, "security")))
      {
        v12 = [(MTSWiFiScanResult *)self band];
        v13 = v12 == [v6 band];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MTSWiFiScanResult)initWithSSID:(id)a3 rssi:(id)a4 security:(unsigned __int8)a5 band:(unsigned __int8)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return +[(MTSWiFiScanResult *)v17];
  }

  v19.receiver = self;
  v19.super_class = MTSWiFiScanResult;
  v13 = [(MTSWiFiScanResult *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    ssid = v13->_ssid;
    v13->_ssid = v14;

    objc_storeStrong(&v13->_rssi, a4);
    v13->_security = a5;
    v13->_band = a6;
  }

  return v13;
}

@end