@interface MTSWiFiNetworkAssociation
- (BOOL)isEqual:(id)a3;
- (MTSWiFiNetworkAssociation)initWithCoder:(id)a3;
- (MTSWiFiNetworkAssociation)initWithSSID:(id)a3 credentials:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSWiFiNetworkAssociation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSWiFiNetworkAssociation *)self ssid];
  [v4 encodeObject:v5 forKey:@"MTSWNA.ck.ssid"];

  v6 = [(MTSWiFiNetworkAssociation *)self credentials];
  [v4 encodeObject:v6 forKey:@"MTSWNA.ck.credentials"];
}

- (MTSWiFiNetworkAssociation)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSWNA.ck.ssid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSWNA.ck.credentials"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded ssid: %@, credentials: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(MTSWiFiNetworkAssociation *)self initWithSSID:v5 credentials:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)hash
{
  v3 = [(MTSWiFiNetworkAssociation *)self ssid];
  v4 = [v3 hash];
  v5 = [(MTSWiFiNetworkAssociation *)self credentials];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v7 = [(MTSWiFiNetworkAssociation *)self ssid];
    v8 = [v6 ssid];
    if ([v7 isEqual:v8])
    {
      v9 = [(MTSWiFiNetworkAssociation *)self credentials];
      v10 = [v6 credentials];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MTSWiFiNetworkAssociation)initWithSSID:(id)a3 credentials:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(MTSWiFiNetworkAssociation *)v15];
  }

  v17.receiver = self;
  v17.super_class = MTSWiFiNetworkAssociation;
  v9 = [(MTSWiFiNetworkAssociation *)&v17 init];
  if (v9)
  {
    v10 = [v6 copy];
    ssid = v9->_ssid;
    v9->_ssid = v10;

    v12 = [v8 copy];
    credentials = v9->_credentials;
    v9->_credentials = v12;
  }

  return v9;
}

@end