@interface MTSDeviceSetupRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldScanNetworks;
- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6;
- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 rootPublicKey:(id)a7 nodeID:(id)a8;
- (MTRSetupPayload)setupPayload;
- (MTSDeviceSetupRequest)initWithCoder:(id)a3;
- (MTSDeviceSetupRequest)initWithDictionaryRepresentation:(id)a3;
- (MTSDeviceSetupRequest)initWithEcosystemName:(id)a3 homeNames:(id)a4 blockedDevicePairings:(id)a5;
- (MTSDeviceSetupRequest)initWithSerializedRequest:(id)a3;
- (MTSDeviceSetupRequest)initWithWrappedRequest:(id)a3;
- (MTSDeviceSetupTopology)topology;
- (NSDictionary)dictionaryRepresentation;
- (NSString)ecosystemName;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDeviceSetupRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v5 = [v6 serializedAsData];
  [v4 encodeObject:v5 forKey:@"MTSDSR.wrappedRequest"];
}

- (MTSDeviceSetupRequest)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSR.wrappedRequest"];
  if (v5)
  {
    v6 = [(MTSDeviceSetupRequest *)self initWithSerializedRequest:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = [0 length];
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not deserialize from wrappedRequestData: %ld", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)debugDescription
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 debugDescription];

  return v3;
}

- (id)description
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
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
    v7 = [(MTSDeviceSetupRequest *)self wrappedRequest];
    v8 = [v6 wrappedRequest];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 rootPublicKey:(id)a7 nodeID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v21 = [v20 shouldShowDeviceWithUUID:v19 vendorID:v18 productID:v17 serialNumber:v16 rootPublicKey:v15 nodeID:v14];

  return v21;
}

- (BOOL)shouldShowDeviceWithUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v15 = [v14 shouldShowDeviceWithUUID:v13 vendorID:v12 productID:v11 serialNumber:v10 rootPublicKey:0 nodeID:0];

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v4 = v12;
  if (v3)
  {
    v13 = @"MTSDSR";
    v14 = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_239824000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize device setup request %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MTRSetupPayload)setupPayload
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 setupPayload];

  return v3;
}

- (BOOL)shouldScanNetworks
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 shouldScanNetworks];

  return v3;
}

- (NSString)ecosystemName
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 ecosystemName];

  return v3;
}

- (MTSDeviceSetupTopology)topology
{
  v2 = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [v2 topology];

  return v3;
}

- (MTSDeviceSetupRequest)initWithDictionaryRepresentation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTSDeviceSetupRequest *)self init];
  v6 = [v4 hmf_dataForKey:@"MTSDSR"];
  if (v6)
  {
    v19 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v19];
    v8 = v19;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v6;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device setup request from dictionary representation; failed to deserialize data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v7 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = @"MTSDSR";
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_239824000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device setup request from dictionary representation; missing %@ key in dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MTSDeviceSetupRequest)initWithEcosystemName:(id)a3 homeNames:(id)a4 blockedDevicePairings:(id)a5
{
  v6 = [MTDeviceSetupRequestFactory makeRequestWithEcosystemName:a3 homes:a4 blockedDevicePairings:a5];
  v7 = [(MTSDeviceSetupRequest *)self initWithWrappedRequest:v6];

  return v7;
}

- (MTSDeviceSetupRequest)initWithSerializedRequest:(id)a3
{
  v4 = [MTDeviceSetupRequestFactory makeRequestFrom:a3];
  if (v4)
  {
    self = [(MTSDeviceSetupRequest *)self initWithWrappedRequest:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MTSDeviceSetupRequest)initWithWrappedRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTSDeviceSetupRequest;
  v6 = [(MTSDeviceSetupRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedRequest, a3);
  }

  return v7;
}

@end