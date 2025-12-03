@interface MTSThreadNetworkCredential
- (BOOL)isEqual:(id)equal;
- (MTSThreadNetworkCredential)initWithCoder:(id)coder;
- (MTSThreadNetworkCredential)initWithDataset:(id)dataset borderAgentEUI:(id)i borderAgentID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSThreadNetworkCredential

- (unint64_t)hash
{
  dataset = [(MTSThreadNetworkCredential *)self dataset];
  v3 = [dataset hash];

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
    dataset = [(MTSThreadNetworkCredential *)self dataset];
    dataset2 = [v6 dataset];
    if ([dataset isEqualToData:dataset2] && (-[MTSThreadNetworkCredential borderAgentEUI](self, "borderAgentEUI"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "borderAgentEUI"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      borderAgentID = [(MTSThreadNetworkCredential *)self borderAgentID];
      borderAgentID2 = [v6 borderAgentID];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataset = [(MTSThreadNetworkCredential *)self dataset];
  [coderCopy encodeObject:dataset forKey:@"ds"];

  borderAgentEUI = [(MTSThreadNetworkCredential *)self borderAgentEUI];
  [coderCopy encodeObject:borderAgentEUI forKey:@"ba"];

  borderAgentID = [(MTSThreadNetworkCredential *)self borderAgentID];
  [coderCopy encodeObject:borderAgentID forKey:@"id"];
}

- (MTSThreadNetworkCredential)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MTSThreadNetworkCredential;
  v5 = [(MTSThreadNetworkCredential *)&v21 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
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

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
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

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
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

- (MTSThreadNetworkCredential)initWithDataset:(id)dataset borderAgentEUI:(id)i borderAgentID:(id)d
{
  datasetCopy = dataset;
  iCopy = i;
  dCopy = d;
  if (!datasetCopy)
  {
    _HMFPreconditionFailure();
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = dCopy;
  if (iCopy && [(NSData *)iCopy length]!= 8)
  {
    goto LABEL_8;
  }

  if (!v11 || [(NSData *)v11 length]== 16)
  {
    v21.receiver = self;
    v21.super_class = MTSThreadNetworkCredential;
    v12 = [(MTSThreadNetworkCredential *)&v21 init];
    dataset = v12->_dataset;
    v12->_dataset = datasetCopy;
    v14 = datasetCopy;

    borderAgentEUI = v12->_borderAgentEUI;
    v12->_borderAgentEUI = iCopy;
    v16 = iCopy;

    borderAgentID = v12->_borderAgentID;
    v12->_borderAgentID = v11;

    return v12;
  }

LABEL_9:
  v19 = _HMFPreconditionFailure();
  return +[(MTSThreadNetworkCredential *)v19];
}

@end