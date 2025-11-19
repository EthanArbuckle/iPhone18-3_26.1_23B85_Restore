@interface MTSThreadScanResult
- (BOOL)isEqual:(id)a3;
- (MTSThreadScanResult)initWithCoder:(id)a3;
- (MTSThreadScanResult)initWithNetworkName:(id)a3 panID:(id)a4 extendedPANID:(id)a5 channel:(id)a6 extendedAddress:(id)a7 rssi:(id)a8 version:(id)a9 lqi:(id)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSThreadScanResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSThreadScanResult *)self networkName];
  [v4 encodeObject:v5 forKey:@"MTSTSR.ck.networkName"];

  v6 = [(MTSThreadScanResult *)self panID];
  [v4 encodeObject:v6 forKey:@"MTSTSR.ck.panID"];

  v7 = [(MTSThreadScanResult *)self extendedPANID];
  [v4 encodeObject:v7 forKey:@"MTSTSR.ck.extendedPANID"];

  v8 = [(MTSThreadScanResult *)self channel];
  [v4 encodeObject:v8 forKey:@"MTSTSR.ck.channel"];

  v9 = [(MTSThreadScanResult *)self extendedAddress];
  [v4 encodeObject:v9 forKey:@"MTSTSR.ck.extendedAddress"];

  v10 = [(MTSThreadScanResult *)self rssi];
  [v4 encodeObject:v10 forKey:@"MTSTSR.ck.rssi"];

  v11 = [(MTSThreadScanResult *)self version];
  [v4 encodeObject:v11 forKey:@"MTSTSR.ck.version"];

  v12 = [(MTSThreadScanResult *)self lqi];
  [v4 encodeObject:v12 forKey:@"MTSTSR.ck.lqi"];
}

- (MTSThreadScanResult)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.networkName"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.panID"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.extendedPANID"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.channel"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.extendedAddress"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.rssi"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.version"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.lqi"];
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v15 = v5;
  v16 = v4;
  v17 = v11;
  if (v16 && v15 && v14 && v13 && v12 && v9 && v10 && v11)
  {
    v18 = [(MTSThreadScanResult *)self initWithNetworkName:v16 panID:v15 extendedPANID:v14 channel:v13 extendedAddress:v12 rssi:v9 version:v10 lqi:v11];
    v26 = v18;
  }

  else
  {
    v24 = v10;
    context = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138545410;
      v29 = v27;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v9;
      v42 = 2112;
      v43 = v24;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_239824000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded networkName: %@, panID: %@, extendedPANID: %@, channel: %@, extendedAddress: %@, rssi: %@, version: %@, lqi: %@", buf, 0x5Cu);
    }

    v26 = v19;
    objc_autoreleasePoolPop(context);
    v18 = 0;
    v10 = v24;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)hash
{
  v3 = [(MTSThreadScanResult *)self panID];
  v4 = [v3 hash];
  v5 = [(MTSThreadScanResult *)self extendedPANID];
  v6 = [v5 hash] ^ v4;
  v7 = [(MTSThreadScanResult *)self networkName];
  v8 = [v7 hash];
  v9 = [(MTSThreadScanResult *)self channel];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(MTSThreadScanResult *)self extendedAddress];
  v12 = [v11 hash];
  v13 = [(MTSThreadScanResult *)self rssi];
  v14 = v12 ^ [v13 hash];
  v15 = [(MTSThreadScanResult *)self version];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(MTSThreadScanResult *)self lqi];
  v18 = [v17 hash];

  return v16 ^ v18;
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
    v7 = [(MTSThreadScanResult *)self networkName];
    v8 = [v6 networkName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(MTSThreadScanResult *)self panID];
      v10 = [v6 panID];
      if ([v9 isEqualToNumber:v10])
      {
        v11 = [(MTSThreadScanResult *)self extendedPANID];
        v12 = [v6 extendedPANID];
        if ([v11 isEqualToNumber:v12])
        {
          v13 = [(MTSThreadScanResult *)self channel];
          v29 = [v6 channel];
          v30 = v13;
          if ([v13 isEqualToNumber:v29])
          {
            v14 = [(MTSThreadScanResult *)self extendedAddress];
            v27 = [v6 extendedAddress];
            v28 = v14;
            if ([v14 isEqualToData:v27])
            {
              v15 = [(MTSThreadScanResult *)self rssi];
              v25 = [v6 rssi];
              v26 = v15;
              if ([v15 isEqualToNumber:v25])
              {
                v16 = [(MTSThreadScanResult *)self version];
                v17 = [v6 version];
                v24 = v16;
                v18 = v16;
                v19 = v17;
                if ([v18 isEqualToNumber:v17])
                {
                  v23 = [(MTSThreadScanResult *)self lqi];
                  v22 = [v6 lqi];
                  v20 = [v23 isEqualToNumber:v22];
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (MTSThreadScanResult)initWithNetworkName:(id)a3 panID:(id)a4 extendedPANID:(id)a5 channel:(id)a6 extendedAddress:(id)a7 rssi:(id)a8 version:(id)a9 lqi:(id)a10
{
  v16 = a3;
  v17 = a4;
  v34 = a5;
  obj = a6;
  v33 = a6;
  v18 = a7;
  v32 = a8;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v34)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v33)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v18)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v22 = v21;
  if (!v21)
  {
LABEL_19:
    v29 = _HMFPreconditionFailure();
    return +[(MTSThreadScanResult *)v29];
  }

  v35.receiver = self;
  v35.super_class = MTSThreadScanResult;
  v23 = [(MTSThreadScanResult *)&v35 init];
  if (v23)
  {
    v24 = [v16 copy];
    networkName = v23->_networkName;
    v23->_networkName = v24;

    objc_storeStrong(&v23->_panID, a4);
    objc_storeStrong(&v23->_extendedPANID, a5);
    objc_storeStrong(&v23->_channel, obj);
    v26 = [v18 copy];
    extendedAddress = v23->_extendedAddress;
    v23->_extendedAddress = v26;

    objc_storeStrong(&v23->_rssi, v32);
    objc_storeStrong(&v23->_version, a9);
    objc_storeStrong(&v23->_lqi, a10);
  }

  return v23;
}

@end