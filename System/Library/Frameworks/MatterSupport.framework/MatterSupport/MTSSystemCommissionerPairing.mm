@interface MTSSystemCommissionerPairing
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (MTSSystemCommissionerPairing)initWithCoder:(id)coder;
- (MTSSystemCommissionerPairing)initWithUUID:(id)d nodeID:(id)iD vendorID:(id)vendorID productID:(id)productID deviceType:(id)type serialNumber:(id)number name:(id)name setupPayload:(id)self0 threadCredentialManagementEnabled:(id)self1;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSSystemCommissionerPairing

- (NSArray)attributeDescriptions
{
  v33[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(MTSSystemCommissionerPairing *)self uuid];
  v31 = [v3 initWithName:@"UUID" value:uuid];
  v33[0] = v31;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  nodeID = [(MTSSystemCommissionerPairing *)self nodeID];
  v29 = [v4 initWithName:@"Node ID" value:nodeID];
  v33[1] = v29;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  vendorID = [(MTSSystemCommissionerPairing *)self vendorID];
  v27 = [v5 initWithName:@"Vendor ID" value:vendorID];
  v33[2] = v27;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  productID = [(MTSSystemCommissionerPairing *)self productID];
  v25 = [v6 initWithName:@"Product ID" value:productID];
  v33[3] = v25;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  deviceType = [(MTSSystemCommissionerPairing *)self deviceType];
  v8 = [v7 initWithName:@"Device Type" value:deviceType];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  serialNumber = [(MTSSystemCommissionerPairing *)self serialNumber];
  v11 = [v9 initWithName:@"Serial Number" value:serialNumber];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(MTSSystemCommissionerPairing *)self name];
  v14 = [v12 initWithName:@"Name" value:name];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  setupPayload = [(MTSSystemCommissionerPairing *)self setupPayload];
  v17 = [v15 initWithName:@"Setup Payload" value:setupPayload];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  threadCredentialManagementEnabled = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
  v20 = [v18 initWithName:@"Thread Credential Management" value:threadCredentialManagementEnabled];
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

- (MTSSystemCommissionerPairing)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.nodeID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.vendorID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.productID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.deviceType"];
  v10 = v5;
  if (v5 && v6 && v7 && v8 && v9)
  {
    selfCopy = self;
    v11 = v6;
    v12 = v9;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.serialNumber"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.name"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.setupPayload"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSSCP.threadCM"];
    v16 = v11;
    selfCopy2 = [(MTSSystemCommissionerPairing *)selfCopy initWithUUID:v10 nodeID:v11 vendorID:v7 productID:v8 deviceType:v12 serialNumber:v13 name:v25 setupPayload:v14 threadCredentialManagementEnabled:v15];

    v18 = selfCopy2;
  }

  else
  {
    v19 = v9;
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(MTSSystemCommissionerPairing *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"MTSSCP.uuid"];

  nodeID = [(MTSSystemCommissionerPairing *)self nodeID];
  [coderCopy encodeObject:nodeID forKey:@"MTSSCP.nodeID"];

  vendorID = [(MTSSystemCommissionerPairing *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"MTSSCP.vendorID"];

  productID = [(MTSSystemCommissionerPairing *)self productID];
  [coderCopy encodeObject:productID forKey:@"MTSSCP.productID"];

  deviceType = [(MTSSystemCommissionerPairing *)self deviceType];
  [coderCopy encodeObject:deviceType forKey:@"MTSSCP.deviceType"];

  serialNumber = [(MTSSystemCommissionerPairing *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"MTSSCP.serialNumber"];

  name = [(MTSSystemCommissionerPairing *)self name];
  [coderCopy encodeObject:name forKey:@"MTSSCP.name"];

  setupPayload = [(MTSSystemCommissionerPairing *)self setupPayload];
  [coderCopy encodeObject:setupPayload forKey:@"MTSSCP.setupPayload"];

  threadCredentialManagementEnabled = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
  [coderCopy encodeObject:threadCredentialManagementEnabled forKey:@"MTSSCP.threadCM"];
}

- (unint64_t)hash
{
  uuid = [(MTSSystemCommissionerPairing *)self uuid];
  v3 = [uuid hash];

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
    uuid = [(MTSSystemCommissionerPairing *)self uuid];
    uuid2 = [v6 uuid];
    if ([uuid isEqual:uuid2])
    {
      nodeID = [(MTSSystemCommissionerPairing *)self nodeID];
      nodeID2 = [v6 nodeID];
      if ([nodeID isEqual:nodeID2])
      {
        vendorID = [(MTSSystemCommissionerPairing *)self vendorID];
        vendorID2 = [v6 vendorID];
        if ([vendorID isEqual:vendorID2])
        {
          productID = [(MTSSystemCommissionerPairing *)self productID];
          productID2 = [v6 productID];
          if ([productID isEqual:?])
          {
            v30 = vendorID;
            deviceType = [(MTSSystemCommissionerPairing *)self deviceType];
            [v6 deviceType];
            v29 = v31 = deviceType;
            if ([deviceType isEqual:?])
            {
              v28 = productID;
              serialNumber = [(MTSSystemCommissionerPairing *)self serialNumber];
              serialNumber2 = [v6 serialNumber];
              v24 = HMFEqualObjects();

              vendorID = v30;
              if (!v24)
              {
                goto LABEL_20;
              }

              name = [(MTSSystemCommissionerPairing *)self name];
              name2 = [v6 name];
              v22 = HMFEqualObjects();

              if (!v22)
              {
                goto LABEL_20;
              }

              setupPayload = [(MTSSystemCommissionerPairing *)self setupPayload];
              setupPayload2 = [v6 setupPayload];
              v23 = HMFEqualObjects();

              if (v23)
              {
                threadCredentialManagementEnabled = [(MTSSystemCommissionerPairing *)self threadCredentialManagementEnabled];
                threadCredentialManagementEnabled2 = [v6 threadCredentialManagementEnabled];
                v20 = HMFEqualObjects();
              }

              else
              {
LABEL_20:
                v20 = 0;
              }

              productID = v28;
            }

            else
            {
              v20 = 0;
              vendorID = v30;
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

- (MTSSystemCommissionerPairing)initWithUUID:(id)d nodeID:(id)iD vendorID:(id)vendorID productID:(id)productID deviceType:(id)type serialNumber:(id)number name:(id)name setupPayload:(id)self0 threadCredentialManagementEnabled:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  vendorIDCopy = vendorID;
  productIDCopy = productID;
  typeCopy = type;
  numberCopy = number;
  nameCopy = name;
  payloadCopy = payload;
  enabledCopy = enabled;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!iDCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!vendorIDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!productIDCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!typeCopy)
  {
LABEL_16:
    v57 = _HMFPreconditionFailure();
    return +[(MTSSystemCommissionerPairing *)v57];
  }

  v26 = enabledCopy;
  v60.receiver = self;
  v60.super_class = MTSSystemCommissionerPairing;
  v27 = [(MTSSystemCommissionerPairing *)&v60 init];
  if (v27)
  {
    v28 = [dCopy copy];
    uuid = v27->_uuid;
    v27->_uuid = v28;

    v30 = [iDCopy copy];
    nodeID = v27->_nodeID;
    v27->_nodeID = v30;

    v32 = [vendorIDCopy copy];
    vendorID = v27->_vendorID;
    v27->_vendorID = v32;

    v34 = [productIDCopy copy];
    productID = v27->_productID;
    v27->_productID = v34;

    v36 = [typeCopy copy];
    deviceType = v27->_deviceType;
    v27->_deviceType = v36;

    v38 = [numberCopy copy];
    serialNumber = v27->_serialNumber;
    v27->_serialNumber = v38;

    v40 = [nameCopy copy];
    name = v27->_name;
    v27->_name = v40;

    v42 = [payloadCopy copy];
    setupPayload = v27->_setupPayload;
    v27->_setupPayload = v42;

    if (v26)
    {
      v59 = typeCopy;
      v44 = productIDCopy;
      v45 = vendorIDCopy;
      v46 = iDCopy;
      v47 = dCopy;
      v48 = payloadCopy;
      v49 = nameCopy;
      v50 = numberCopy;
      v51 = MEMORY[0x277CCABB0];
      bOOLValue = [v26 BOOLValue];
      v53 = v51;
      numberCopy = v50;
      nameCopy = v49;
      payloadCopy = v48;
      dCopy = v47;
      iDCopy = v46;
      vendorIDCopy = v45;
      productIDCopy = v44;
      typeCopy = v59;
      v54 = [v53 numberWithBool:bOOLValue];
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