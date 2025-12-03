@interface MTSThreadNetworkAssociation
- (BOOL)isEqual:(id)equal;
- (MTSThreadNetworkAssociation)initWithCoder:(id)coder;
- (MTSThreadNetworkAssociation)initWithExtendedPANID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSThreadNetworkAssociation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extendedPANID = [(MTSThreadNetworkAssociation *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"MTSTNA.ck.extendedPANID"];
}

- (MTSThreadNetworkAssociation)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSTNA.ck.extendedPANID"];
  if (v5)
  {
    selfCopy = [(MTSThreadNetworkAssociation *)self initWithExtendedPANID:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded extendedPANID: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)hash
{
  extendedPANID = [(MTSThreadNetworkAssociation *)self extendedPANID];
  v3 = [extendedPANID hash];

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
    extendedPANID = [(MTSThreadNetworkAssociation *)self extendedPANID];
    extendedPANID2 = [v6 extendedPANID];
    v9 = [extendedPANID isEqualToNumber:extendedPANID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSThreadNetworkAssociation)initWithExtendedPANID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    v12.receiver = self;
    v12.super_class = MTSThreadNetworkAssociation;
    v7 = [(MTSThreadNetworkAssociation *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_extendedPANID, d);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(MTSThreadNetworkAssociation *)v10];
  }
}

@end