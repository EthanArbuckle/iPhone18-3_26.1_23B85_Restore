@interface ASCLockupFeatureAppDistribution
- (ASCLockupFeatureAppDistribution)initWithCoder:(id)coder;
- (ASCLockupFeatureAppDistribution)initWithDistributorBundleId:(id)id appVersionId:(id)versionId;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureAppDistribution

- (ASCLockupFeatureAppDistribution)initWithDistributorBundleId:(id)id appVersionId:(id)versionId
{
  idCopy = id;
  versionIdCopy = versionId;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureAppDistribution;
  v8 = [(ASCLockupFeatureAppDistribution *)&v14 init];
  if (v8)
  {
    v9 = [idCopy copy];
    distributorBundleId = v8->_distributorBundleId;
    v8->_distributorBundleId = v9;

    v11 = [versionIdCopy copy];
    appVersionId = v8->_appVersionId;
    v8->_appVersionId = v11;
  }

  return v8;
}

- (ASCLockupFeatureAppDistribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorBundleId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appVersionId"];

  v7 = [(ASCLockupFeatureAppDistribution *)self initWithDistributorBundleId:v5 appVersionId:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  distributorBundleId = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [coderCopy encodeObject:distributorBundleId forKey:@"distributorBundleId"];

  appVersionId = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [coderCopy encodeObject:appVersionId forKey:@"appVersionId"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  distributorBundleId = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [(ASCHasher *)v3 combineObject:distributorBundleId];

  appVersionId = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [(ASCHasher *)v3 combineObject:appVersionId];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
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

    distributorBundleId = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
    distributorBundleId2 = [(ASCLockupFeatureAppDistribution *)v8 distributorBundleId];
    v11 = distributorBundleId2;
    if (distributorBundleId && distributorBundleId2)
    {
      if ([distributorBundleId isEqual:distributorBundleId2])
      {
        goto LABEL_12;
      }
    }

    else if (distributorBundleId == distributorBundleId2)
    {
LABEL_12:
      appVersionId = [(ASCLockupFeatureAppDistribution *)self appVersionId];
      appVersionId2 = [(ASCLockupFeatureAppDistribution *)v8 appVersionId];
      v14 = appVersionId2;
      if (appVersionId && appVersionId2)
      {
        v7 = [appVersionId isEqual:appVersionId2];
      }

      else
      {
        v7 = appVersionId == appVersionId2;
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
  distributorBundleId = [(ASCLockupFeatureAppDistribution *)self distributorBundleId];
  [(ASCDescriber *)v3 addObject:distributorBundleId withName:@"distributorBundleId"];

  appVersionId = [(ASCLockupFeatureAppDistribution *)self appVersionId];
  [(ASCDescriber *)v3 addObject:appVersionId withName:@"appVersionId"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end