@interface ASCLockupFeatureBundleID
- (ASCLockupFeatureBundleID)initWithBundleID:(id)d;
- (ASCLockupFeatureBundleID)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureBundleID

- (ASCLockupFeatureBundleID)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureBundleID;
  v5 = [(ASCLockupFeatureBundleID *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (ASCLockupFeatureBundleID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];

  v6 = [(ASCLockupFeatureBundleID *)self initWithBundleID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ASCLockupFeatureBundleID *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  bundleID = [(ASCLockupFeatureBundleID *)self bundleID];
  [(ASCHasher *)v3 combineObject:bundleID];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
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

    if (v8)
    {
      bundleID = [(ASCLockupFeatureBundleID *)self bundleID];
      bundleID2 = [(ASCLockupFeatureBundleID *)v8 bundleID];
      v11 = bundleID2;
      if (bundleID && bundleID2)
      {
        v7 = [bundleID isEqual:bundleID2];
      }

      else
      {
        v7 = bundleID == bundleID2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  bundleID = [(ASCLockupFeatureBundleID *)self bundleID];
  [(ASCDescriber *)v3 addObject:bundleID withName:@"bundleID"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end