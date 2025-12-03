@interface MTSWiFiNetworkAssociation
- (BOOL)isEqual:(id)equal;
- (MTSWiFiNetworkAssociation)initWithCoder:(id)coder;
- (MTSWiFiNetworkAssociation)initWithSSID:(id)d credentials:(id)credentials;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSWiFiNetworkAssociation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ssid = [(MTSWiFiNetworkAssociation *)self ssid];
  [coderCopy encodeObject:ssid forKey:@"MTSWNA.ck.ssid"];

  credentials = [(MTSWiFiNetworkAssociation *)self credentials];
  [coderCopy encodeObject:credentials forKey:@"MTSWNA.ck.credentials"];
}

- (MTSWiFiNetworkAssociation)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSWNA.ck.ssid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSWNA.ck.credentials"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded ssid: %@, credentials: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(MTSWiFiNetworkAssociation *)self initWithSSID:v5 credentials:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)hash
{
  ssid = [(MTSWiFiNetworkAssociation *)self ssid];
  v4 = [ssid hash];
  credentials = [(MTSWiFiNetworkAssociation *)self credentials];
  v6 = [credentials hash];

  return v6 ^ v4;
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
    ssid = [(MTSWiFiNetworkAssociation *)self ssid];
    ssid2 = [v6 ssid];
    if ([ssid isEqual:ssid2])
    {
      credentials = [(MTSWiFiNetworkAssociation *)self credentials];
      credentials2 = [v6 credentials];
      v11 = [credentials isEqual:credentials2];
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

- (MTSWiFiNetworkAssociation)initWithSSID:(id)d credentials:(id)credentials
{
  dCopy = d;
  credentialsCopy = credentials;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = credentialsCopy;
  if (!credentialsCopy)
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
    v10 = [dCopy copy];
    ssid = v9->_ssid;
    v9->_ssid = v10;

    v12 = [v8 copy];
    credentials = v9->_credentials;
    v9->_credentials = v12;
  }

  return v9;
}

@end