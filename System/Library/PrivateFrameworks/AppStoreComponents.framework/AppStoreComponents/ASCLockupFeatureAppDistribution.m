@interface ASCLockupFeatureAppDistribution
- (ASCLockupFeatureAppDistribution)initWithCoder:(id)a3;
- (ASCLockupFeatureAppDistribution)initWithDistributorBundleId:(id)a3 appVersionId:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureAppDistribution

- (ASCLockupFeatureAppDistribution)initWithDistributorBundleId:(id)a3 appVersionId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureAppDistribution;
  v8 = [(ASCLockupFeatureAppDistribution *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    distributorBundleId = v8->_distributorBundleId;
    v8->_distributorBundleId = v9;

    v11 = [v7 copy];
    appVersionId = v8->_appVersionId;
    v8->_appVersionId = v11;
  }

  return v8;
}

- (ASCLockupFeatureAppDistribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorBundleId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appVersionId"];

  v7 = [(ASCLockupFeatureAppDistribution *)self initWithDistributorBundleId:v5 appVersionId:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [v4 encodeObject:v5 forKey:@"distributorBundleId"];

  v6 = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [v4 encodeObject:v6 forKey:@"appVersionId"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
    v10 = [(ASCLockupFeatureAppDistribution *)v8 distributorBundleId];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
        goto LABEL_12;
      }
    }

    else if (v9 == v10)
    {
LABEL_12:
      v12 = [(ASCLockupFeatureAppDistribution *)self appVersionId];
      v13 = [(ASCLockupFeatureAppDistribution *)v8 appVersionId];
      v14 = v13;
      if (v12 && v13)
      {
        v7 = [v12 isEqual:v13];
      }

      else
      {
        v7 = v12 == v13;
      }

      goto LABEL_20;
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [(ASCDescriber *)v3 addObject:v4 withName:@"distributorBundleId"];

  v5 = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [(ASCDescriber *)v3 addObject:v5 withName:@"appVersionId"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end