@interface ASCLockupFeatureProductVariants
- (ASCLockupFeatureProductVariants)initWithCoder:(id)coder;
- (ASCLockupFeatureProductVariants)initWithProductVariantID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureProductVariants

- (ASCLockupFeatureProductVariants)initWithProductVariantID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureProductVariants;
  v5 = [(ASCLockupFeatureProductVariants *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    productVariantID = v5->_productVariantID;
    v5->_productVariantID = v6;
  }

  return v5;
}

- (ASCLockupFeatureProductVariants)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVariantID"];

  v6 = [(ASCLockupFeatureProductVariants *)self initWithProductVariantID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  productVariantID = [(ASCLockupFeatureProductVariants *)self productVariantID];
  [coderCopy encodeObject:productVariantID forKey:@"productVariantID"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  productVariantID = [(ASCLockupFeatureProductVariants *)self productVariantID];
  [(ASCHasher *)v3 combineObject:productVariantID];

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
      productVariantID = [(ASCLockupFeatureProductVariants *)self productVariantID];
      productVariantID2 = [(ASCLockupFeatureProductVariants *)v8 productVariantID];
      v11 = productVariantID2;
      if (productVariantID && productVariantID2)
      {
        v7 = [productVariantID isEqual:productVariantID2];
      }

      else
      {
        v7 = productVariantID == productVariantID2;
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
  productVariantID = [(ASCLockupFeatureProductVariants *)self productVariantID];
  [(ASCDescriber *)v3 addObject:productVariantID withName:@"productVariantID"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end