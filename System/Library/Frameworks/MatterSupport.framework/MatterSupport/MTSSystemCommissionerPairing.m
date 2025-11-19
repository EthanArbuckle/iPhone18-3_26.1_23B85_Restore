@interface MTSSystemCommissionerPairing
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (MTSSystemCommissionerPairing)initWithCoder:(id)a3;
- (MTSSystemCommissionerPairing)initWithUUID:(id)a3 nodeID:(id)a4 vendorID:(id)a5 productID:(id)a6 deviceType:(id)a7 serialNumber:(id)a8 name:(id)a9 setupPayload:(id)a10 threadCredentialManagementEnabled:(id)a11;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSSystemCommissionerPairing

- (NSArray)attributeDescriptions
{
  v33[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = [(MTSSystemCommissionerPairing *)self uuid];
  v31 = [v3 initWithName:@"UUID" value:v32];
  v33[0] = v31;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(MTSSystemCommissionerPairing *)self nodeID];
  v29 = [v4 initWithName:@"Node ID" value:v30];
  v33[1] = v29;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [(MTSSystemCommissionerPairing *)self vendorID];
  v27 = [v5 initWithName:@"Vendor ID" value:v28];
  v33[2] = v27;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(MTSSystemCommissionerPairing *)self productID];
  v25 = [v6 initWithName:@"Product ID" value:v26];
  v33[3] = v25;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(MTSSystemCommissionerPairing *)self deviceType];
  v8 = [v7 initWithName:@"Device Type" value:v24];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(MTSSystemCommissionerPairing *)self serialNumber];
  v11 = [v9 initWithName:@"Serial Number" value:v10];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(MTSSystemCommissionerPairing *)self name];
  v14 = [v12 initWithName:@"Name" value:v13];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(MTSSystemCommissionerPairing *)self setupPayload];
  v17 = [v15 initWithName:@"Setup Payload" value:v16];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
  v20 = [v18 initWithName:@"Thread Credential Management" value:v19];
  v33[8] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSSystemCommissionerPairing)initWithCoder:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.nodeID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.vendorID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.productID"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.deviceType"];
  v10 = v5;
  if (v5 && v6 && v7 && v8 && v9)
  {
    v26 = self;
    v11 = v6;
    v12 = v9;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.serialNumber"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.name"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.setupPayload"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.threadCM"];
    v16 = v11;
    v17 = [(MTSSystemCommissionerPairing *)v26 initWithUUID:v10 nodeID:v11 vendorID:v7 productID:v8 deviceType:v12 serialNumber:v13 name:v25 setupPayload:v14 threadCredentialManagementEnabled:v15];

    v18 = v17;
  }

  else
  {
    v19 = v9;
    v20 = objc_autoreleasePoolPush();
    v17 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544642;
      v28 = v22;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_239824000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded uuid: %@, nodeID: %@, vendorID: %@, productID: %@, deviceType: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = 0;
    v16 = v6;
    v12 = v19;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSSystemCommissionerPairing *)self uuid];
  [v4 encodeObject:v5 forKey:@"MTSSCP.uuid"];

  v6 = [(MTSSystemCommissionerPairing *)self nodeID];
  [v4 encodeObject:v6 forKey:@"MTSSCP.nodeID"];

  v7 = [(MTSSystemCommissionerPairing *)self vendorID];
  [v4 encodeObject:v7 forKey:@"MTSSCP.vendorID"];

  v8 = [(MTSSystemCommissionerPairing *)self productID];
  [v4 encodeObject:v8 forKey:@"MTSSCP.productID"];

  v9 = [(MTSSystemCommissionerPairing *)self deviceType];
  [v4 encodeObject:v9 forKey:@"MTSSCP.deviceType"];

  v10 = [(MTSSystemCommissionerPairing *)self serialNumber];
  [v4 encodeObject:v10 forKey:@"MTSSCP.serialNumber"];

  v11 = [(MTSSystemCommissionerPairing *)self name];
  [v4 encodeObject:v11 forKey:@"MTSSCP.name"];

  v12 = [(MTSSystemCommissionerPairing *)self setupPayload];
  [v4 encodeObject:v12 forKey:@"MTSSCP.setupPayload"];

  v13 = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
  [v4 encodeObject:v13 forKey:@"MTSSCP.threadCM"];
}

- (unint64_t)hash
{
  v2 = [(MTSSystemCommissionerPairing *)self uuid];
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
    v7 = [(MTSSystemCommissionerPairing *)self uuid];
    v8 = [v6 uuid];
    if ([v7 isEqual:v8])
    {
      v9 = [(MTSSystemCommissionerPairing *)self nodeID];
      v10 = [v6 nodeID];
      if ([v9 isEqual:v10])
      {
        v11 = [(MTSSystemCommissionerPairing *)self vendorID];
        v12 = [v6 vendorID];
        if ([v11 isEqual:v12])
        {
          v13 = [(MTSSystemCommissionerPairing *)self productID];
          v32 = [v6 productID];
          if ([v13 isEqual:?])
          {
            v30 = v11;
            v14 = [(MTSSystemCommissionerPairing *)self deviceType];
            [v6 deviceType];
            v29 = v31 = v14;
            if ([v14 isEqual:?])
            {
              v28 = v13;
              v15 = [(MTSSystemCommissionerPairing *)self serialNumber];
              v16 = [v6 serialNumber];
              v24 = HMFEqualObjects();

              v11 = v30;
              if (!v24)
              {
                goto LABEL_20;
              }

              v25 = [(MTSSystemCommissionerPairing *)self name];
              v17 = [v6 name];
              v22 = HMFEqualObjects();

              if (!v22)
              {
                goto LABEL_20;
              }

              v26 = [(MTSSystemCommissionerPairing *)self setupPayload];
              v18 = [v6 setupPayload];
              v23 = HMFEqualObjects();

              if (v23)
              {
                v27 = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
                v19 = [v6 threadCredentialManagementEnabled];
                v20 = HMFEqualObjects();
              }

              else
              {
LABEL_20:
                v20 = 0;
              }

              v13 = v28;
            }

            else
            {
              v20 = 0;
              v11 = v30;
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

- (MTSSystemCommissionerPairing)initWithUUID:(id)a3 nodeID:(id)a4 vendorID:(id)a5 productID:(id)a6 deviceType:(id)a7 serialNumber:(id)a8 name:(id)a9 setupPayload:(id)a10 threadCredentialManagementEnabled:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v20)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    v57 = _HMFPreconditionFailure();
    return +[(MTSSystemCommissionerPairing *)v57];
  }

  v26 = v25;
  v60.receiver = self;
  v60.super_class = MTSSystemCommissionerPairing;
  v27 = [(MTSSystemCommissionerPairing *)&v60 init];
  if (v27)
  {
    v28 = [v17 copy];
    uuid = v27->_uuid;
    v27->_uuid = v28;

    v30 = [v18 copy];
    nodeID = v27->_nodeID;
    v27->_nodeID = v30;

    v32 = [v19 copy];
    vendorID = v27->_vendorID;
    v27->_vendorID = v32;

    v34 = [v20 copy];
    productID = v27->_productID;
    v27->_productID = v34;

    v36 = [v21 copy];
    deviceType = v27->_deviceType;
    v27->_deviceType = v36;

    v38 = [v22 copy];
    serialNumber = v27->_serialNumber;
    v27->_serialNumber = v38;

    v40 = [v23 copy];
    name = v27->_name;
    v27->_name = v40;

    v42 = [v24 copy];
    setupPayload = v27->_setupPayload;
    v27->_setupPayload = v42;

    if (v26)
    {
      v59 = v21;
      v44 = v20;
      v45 = v19;
      v46 = v18;
      v47 = v17;
      v48 = v24;
      v49 = v23;
      v50 = v22;
      v51 = MEMORY[0x277CCABB0];
      v52 = [v26 BOOLValue];
      v53 = v51;
      v22 = v50;
      v23 = v49;
      v24 = v48;
      v17 = v47;
      v18 = v46;
      v19 = v45;
      v20 = v44;
      v21 = v59;
      v54 = [v53 numberWithBool:v52];
    }

    else
    {
      v54 = 0;
    }

    threadCredentialManagementEnabled = v27->_threadCredentialManagementEnabled;
    v27->_threadCredentialManagementEnabled = v54;
  }

  return v27;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end