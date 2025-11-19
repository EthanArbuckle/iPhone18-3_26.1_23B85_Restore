@interface MTSThreadNetworkCredential
- (BOOL)isEqual:(id)a3;
- (MTSThreadNetworkCredential)initWithCoder:(id)a3;
- (MTSThreadNetworkCredential)initWithDataset:(id)a3 borderAgentEUI:(id)a4 borderAgentID:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSThreadNetworkCredential

- (unint64_t)hash
{
  v2 = [(MTSThreadNetworkCredential *)self dataset];
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
    v7 = [(MTSThreadNetworkCredential *)self dataset];
    v8 = [v6 dataset];
    if ([v7 isEqualToData:v8] && (-[MTSThreadNetworkCredential borderAgentEUI](self, "borderAgentEUI"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "borderAgentEUI"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(MTSThreadNetworkCredential *)self borderAgentID];
      v13 = [v6 borderAgentID];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSThreadNetworkCredential *)self dataset];
  [v4 encodeObject:v5 forKey:@"ds"];

  v6 = [(MTSThreadNetworkCredential *)self borderAgentEUI];
  [v4 encodeObject:v6 forKey:@"ba"];

  v7 = [(MTSThreadNetworkCredential *)self borderAgentID];
  [v4 encodeObject:v7 forKey:@"id"];
}

- (MTSThreadNetworkCredential)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MTSThreadNetworkCredential;
  v5 = [(MTSThreadNetworkCredential *)&v21 init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
  dataset = v5->_dataset;
  v5->_dataset = v6;

  if (!v5->_dataset)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v17;
    v18 = "%{public}@Failed to decode MTSThreadNetworkCredentialOperationalDatasetCodingKey";
LABEL_13:
    _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

    goto LABEL_14;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
  borderAgentEUI = v5->_borderAgentEUI;
  v5->_borderAgentEUI = v8;

  v10 = v5->_borderAgentEUI;
  if (v10 && [(NSData *)v10 length]!= 8)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v17;
    v18 = "%{public}@Failed to decode MTSThreadNetworkCredentialBorderAgentEUICodingKey";
    goto LABEL_13;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  borderAgentID = v5->_borderAgentID;
  v5->_borderAgentID = v11;

  v13 = v5->_borderAgentID;
  if (v13 && [(NSData *)v13 length]!= 16)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      v18 = "%{public}@Failed to decode MTSThreadNetworkCredentialBorderAgentIDCodingKey";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v15);
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v5;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTSThreadNetworkCredential)initWithDataset:(id)a3 borderAgentEUI:(id)a4 borderAgentID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (v9 && [(NSData *)v9 length]!= 8)
  {
    goto LABEL_8;
  }

  if (!v11 || [(NSData *)v11 length]== 16)
  {
    v21.receiver = self;
    v21.super_class = MTSThreadNetworkCredential;
    v12 = [(MTSThreadNetworkCredential *)&v21 init];
    dataset = v12->_dataset;
    v12->_dataset = v8;
    v14 = v8;

    borderAgentEUI = v12->_borderAgentEUI;
    v12->_borderAgentEUI = v9;
    v16 = v9;

    borderAgentID = v12->_borderAgentID;
    v12->_borderAgentID = v11;

    return v12;
  }

LABEL_9:
  v19 = _HMFPreconditionFailure();
  return +[(MTSThreadNetworkCredential *)v19];
}

@end