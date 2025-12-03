@interface MTSWiFiScanResult
- (BOOL)isEqual:(id)equal;
- (MTSWiFiScanResult)initWithCoder:(id)coder;
- (MTSWiFiScanResult)initWithSSID:(id)d rssi:(id)rssi security:(unsigned __int8)security band:(unsigned __int8)band;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSWiFiScanResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ssid = [(MTSWiFiScanResult *)self ssid];
  [coderCopy encodeObject:ssid forKey:@"MTSWSR.ck.ssid"];

  rssi = [(MTSWiFiScanResult *)self rssi];
  [coderCopy encodeObject:rssi forKey:@"MTSWSR.ck.rssi"];

  [coderCopy encodeInteger:-[MTSWiFiScanResult security](self forKey:{"security"), @"MTSWSR.ck.security"}];
  [coderCopy encodeInteger:-[MTSWiFiScanResult band](self forKey:{"band"), @"MTSWSR.ck.band"}];
}

- (MTSWiFiScanResult)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSWSR.ck.ssid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSWSR.ck.rssi"];
  v7 = [coderCopy decodeIntegerForKey:@"MTSWSR.ck.security"];
  v8 = [coderCopy decodeIntegerForKey:@"MTSWSR.ck.band"];
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
    selfCopy = self;
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
    selfCopy = [(MTSWiFiScanResult *)self initWithSSID:v5 rssi:v6 security:v7 band:v8];
    v14 = selfCopy;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)hash
{
  ssid = [(MTSWiFiScanResult *)self ssid];
  v4 = [ssid hash];
  rssi = [(MTSWiFiScanResult *)self rssi];
  v6 = [rssi hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[MTSWiFiScanResult security](self, "security")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[MTSWiFiScanResult band](self, "band")}];
  v10 = [v9 hash];

  return v8 ^ v10;
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
    ssid = [(MTSWiFiScanResult *)self ssid];
    ssid2 = [v6 ssid];
    if ([ssid isEqual:ssid2])
    {
      rssi = [(MTSWiFiScanResult *)self rssi];
      rssi2 = [v6 rssi];
      if ([rssi isEqual:rssi2] && (v11 = -[MTSWiFiScanResult security](self, "security"), v11 == objc_msgSend(v6, "security")))
      {
        band = [(MTSWiFiScanResult *)self band];
        v13 = band == [v6 band];
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

- (MTSWiFiScanResult)initWithSSID:(id)d rssi:(id)rssi security:(unsigned __int8)security band:(unsigned __int8)band
{
  dCopy = d;
  rssiCopy = rssi;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = rssiCopy;
  if (!rssiCopy)
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
    v14 = [dCopy copy];
    ssid = v13->_ssid;
    v13->_ssid = v14;

    objc_storeStrong(&v13->_rssi, rssi);
    v13->_security = security;
    v13->_band = band;
  }

  return v13;
}

@end