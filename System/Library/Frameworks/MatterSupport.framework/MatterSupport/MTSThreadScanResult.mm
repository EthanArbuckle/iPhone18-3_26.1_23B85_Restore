@interface MTSThreadScanResult
- (BOOL)isEqual:(id)equal;
- (MTSThreadScanResult)initWithCoder:(id)coder;
- (MTSThreadScanResult)initWithNetworkName:(id)name panID:(id)d extendedPANID:(id)iD channel:(id)channel extendedAddress:(id)address rssi:(id)rssi version:(id)version lqi:(id)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSThreadScanResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkName = [(MTSThreadScanResult *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"MTSTSR.ck.networkName"];

  panID = [(MTSThreadScanResult *)self panID];
  [coderCopy encodeObject:panID forKey:@"MTSTSR.ck.panID"];

  extendedPANID = [(MTSThreadScanResult *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"MTSTSR.ck.extendedPANID"];

  channel = [(MTSThreadScanResult *)self channel];
  [coderCopy encodeObject:channel forKey:@"MTSTSR.ck.channel"];

  extendedAddress = [(MTSThreadScanResult *)self extendedAddress];
  [coderCopy encodeObject:extendedAddress forKey:@"MTSTSR.ck.extendedAddress"];

  rssi = [(MTSThreadScanResult *)self rssi];
  [coderCopy encodeObject:rssi forKey:@"MTSTSR.ck.rssi"];

  version = [(MTSThreadScanResult *)self version];
  [coderCopy encodeObject:version forKey:@"MTSTSR.ck.version"];

  v12 = [(MTSThreadScanResult *)self lqi];
  [coderCopy encodeObject:v12 forKey:@"MTSTSR.ck.lqi"];
}

- (MTSThreadScanResult)initWithCoder:(id)coder
{
  v46 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.networkName"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.panID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.extendedPANID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.channel"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.extendedAddress"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.rssi"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.version"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTSR.ck.lqi"];
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
    selfCopy = self;
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

    v26 = selfCopy;
    objc_autoreleasePoolPop(context);
    v18 = 0;
    v10 = v24;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)hash
{
  panID = [(MTSThreadScanResult *)self panID];
  v4 = [panID hash];
  extendedPANID = [(MTSThreadScanResult *)self extendedPANID];
  v6 = [extendedPANID hash] ^ v4;
  networkName = [(MTSThreadScanResult *)self networkName];
  v8 = [networkName hash];
  channel = [(MTSThreadScanResult *)self channel];
  v10 = v6 ^ v8 ^ [channel hash];
  extendedAddress = [(MTSThreadScanResult *)self extendedAddress];
  v12 = [extendedAddress hash];
  rssi = [(MTSThreadScanResult *)self rssi];
  v14 = v12 ^ [rssi hash];
  version = [(MTSThreadScanResult *)self version];
  v16 = v10 ^ v14 ^ [version hash];
  v17 = [(MTSThreadScanResult *)self lqi];
  v18 = [v17 hash];

  return v16 ^ v18;
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
    networkName = [(MTSThreadScanResult *)self networkName];
    networkName2 = [v6 networkName];
    if ([networkName isEqualToString:networkName2])
    {
      panID = [(MTSThreadScanResult *)self panID];
      panID2 = [v6 panID];
      if ([panID isEqualToNumber:panID2])
      {
        extendedPANID = [(MTSThreadScanResult *)self extendedPANID];
        extendedPANID2 = [v6 extendedPANID];
        if ([extendedPANID isEqualToNumber:extendedPANID2])
        {
          channel = [(MTSThreadScanResult *)self channel];
          channel2 = [v6 channel];
          v30 = channel;
          if ([channel isEqualToNumber:channel2])
          {
            extendedAddress = [(MTSThreadScanResult *)self extendedAddress];
            extendedAddress2 = [v6 extendedAddress];
            v28 = extendedAddress;
            if ([extendedAddress isEqualToData:extendedAddress2])
            {
              rssi = [(MTSThreadScanResult *)self rssi];
              rssi2 = [v6 rssi];
              v26 = rssi;
              if ([rssi isEqualToNumber:rssi2])
              {
                version = [(MTSThreadScanResult *)self version];
                version2 = [v6 version];
                v24 = version;
                v18 = version;
                v19 = version2;
                if ([v18 isEqualToNumber:version2])
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

- (MTSThreadScanResult)initWithNetworkName:(id)name panID:(id)d extendedPANID:(id)iD channel:(id)channel extendedAddress:(id)address rssi:(id)rssi version:(id)version lqi:(id)self0
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  obj = channel;
  channelCopy = channel;
  addressCopy = address;
  rssiCopy = rssi;
  rssiCopy2 = rssi;
  versionCopy = version;
  lqiCopy = lqi;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!iDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!channelCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!addressCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!rssiCopy2)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!versionCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v22 = lqiCopy;
  if (!lqiCopy)
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
    v24 = [nameCopy copy];
    networkName = v23->_networkName;
    v23->_networkName = v24;

    objc_storeStrong(&v23->_panID, d);
    objc_storeStrong(&v23->_extendedPANID, iD);
    objc_storeStrong(&v23->_channel, obj);
    v26 = [addressCopy copy];
    extendedAddress = v23->_extendedAddress;
    v23->_extendedAddress = v26;

    objc_storeStrong(&v23->_rssi, rssiCopy);
    objc_storeStrong(&v23->_version, version);
    objc_storeStrong(&v23->_lqi, lqi);
  }

  return v23;
}

@end