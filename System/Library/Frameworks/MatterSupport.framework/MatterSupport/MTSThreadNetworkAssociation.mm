@interface MTSThreadNetworkAssociation
- (BOOL)isEqual:(id)a3;
- (MTSThreadNetworkAssociation)initWithCoder:(id)a3;
- (MTSThreadNetworkAssociation)initWithExtendedPANID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSThreadNetworkAssociation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSThreadNetworkAssociation *)self extendedPANID];
  [v4 encodeObject:v5 forKey:@"MTSTNA.ck.extendedPANID"];
}

- (MTSThreadNetworkAssociation)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSTNA.ck.extendedPANID"];
  if (v5)
  {
    v6 = [(MTSThreadNetworkAssociation *)self initWithExtendedPANID:v5];
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
  v2 = [(MTSThreadNetworkAssociation *)self extendedPANID];
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
    v7 = [(MTSThreadNetworkAssociation *)self extendedPANID];
    v8 = [v6 extendedPANID];
    v9 = [v7 isEqualToNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSThreadNetworkAssociation)initWithExtendedPANID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = MTSThreadNetworkAssociation;
    v7 = [(MTSThreadNetworkAssociation *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_extendedPANID, a3);
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