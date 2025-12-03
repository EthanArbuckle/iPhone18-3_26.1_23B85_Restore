@interface ASCLockupFeatureBuyParams
- (ASCLockupFeatureBuyParams)initWithAppOffer:(id)offer;
- (ASCLockupFeatureBuyParams)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureBuyParams

- (ASCLockupFeatureBuyParams)initWithAppOffer:(id)offer
{
  offerCopy = offer;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureBuyParams;
  v5 = [(ASCLockupFeatureBuyParams *)&v9 init];
  if (v5)
  {
    v6 = [offerCopy copy];
    appOffer = v5->_appOffer;
    v5->_appOffer = v6;
  }

  return v5;
}

- (ASCLockupFeatureBuyParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appOffer"];

  v6 = [(ASCLockupFeatureBuyParams *)self initWithAppOffer:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appOffer = [(ASCLockupFeatureBuyParams *)self appOffer];
  [coderCopy encodeObject:appOffer forKey:@"appOffer"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  appOffer = [(ASCLockupFeatureBuyParams *)self appOffer];
  [(ASCHasher *)v3 combineObject:appOffer];

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
      appOffer = [(ASCLockupFeatureBuyParams *)self appOffer];
      appOffer2 = [(ASCLockupFeatureBuyParams *)v8 appOffer];
      v11 = appOffer2;
      if (appOffer && appOffer2)
      {
        v7 = [appOffer isEqual:appOffer2];
      }

      else
      {
        v7 = appOffer == appOffer2;
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
  appOffer = [(ASCLockupFeatureBuyParams *)self appOffer];
  [(ASCDescriber *)v3 addObject:appOffer withName:@"appOffer"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end