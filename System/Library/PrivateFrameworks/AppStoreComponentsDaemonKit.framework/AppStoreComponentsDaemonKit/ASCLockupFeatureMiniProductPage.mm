@interface ASCLockupFeatureMiniProductPage
- (ASCLockupFeatureMiniProductPage)initWithCoder:(id)coder;
- (ASCLockupFeatureMiniProductPage)initWithMetadata:(id)metadata description:(id)description;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureMiniProductPage

- (ASCLockupFeatureMiniProductPage)initWithMetadata:(id)metadata description:(id)description
{
  metadataCopy = metadata;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureMiniProductPage;
  v8 = [(ASCLockupFeatureMiniProductPage *)&v14 init];
  if (v8)
  {
    v9 = [metadataCopy copy];
    productPageMetadata = v8->_productPageMetadata;
    v8->_productPageMetadata = v9;

    v11 = [descriptionCopy copy];
    productPageDescription = v8->_productPageDescription;
    v8->_productPageDescription = v11;
  }

  return v8;
}

- (ASCLockupFeatureMiniProductPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPageMetadata"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPageDescription"];

  v7 = [(ASCLockupFeatureMiniProductPage *)self initWithMetadata:v5 description:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  productPageMetadata = [(ASCLockupFeatureMiniProductPage *)self productPageMetadata];
  [coderCopy encodeObject:productPageMetadata forKey:@"productPageMetadata"];

  productPageDescription = [(ASCLockupFeatureMiniProductPage *)self productPageDescription];
  [coderCopy encodeObject:productPageDescription forKey:@"productPageDescription"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  productPageMetadata = [(ASCLockupFeatureMiniProductPage *)self productPageMetadata];
  [(ASCHasher *)v3 combineObject:productPageMetadata];

  productPageDescription = [(ASCLockupFeatureMiniProductPage *)self productPageDescription];
  [(ASCHasher *)v3 combineObject:productPageDescription];

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

    productPageMetadata = [(ASCLockupFeatureMiniProductPage *)self productPageMetadata];
    productPageMetadata2 = [(ASCLockupFeatureMiniProductPage *)v8 productPageMetadata];
    v11 = productPageMetadata2;
    if (productPageMetadata && productPageMetadata2)
    {
      if ([productPageMetadata isEqual:productPageMetadata2])
      {
        goto LABEL_12;
      }
    }

    else if (productPageMetadata == productPageMetadata2)
    {
LABEL_12:
      productPageDescription = [(ASCLockupFeatureMiniProductPage *)self productPageDescription];
      productPageDescription2 = [(ASCLockupFeatureMiniProductPage *)v8 productPageDescription];
      v14 = productPageDescription2;
      if (productPageDescription && productPageDescription2)
      {
        v7 = [productPageDescription isEqual:productPageDescription2];
      }

      else
      {
        v7 = productPageDescription == productPageDescription2;
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
  productPageMetadata = [(ASCLockupFeatureMiniProductPage *)self productPageMetadata];
  [(ASCDescriber *)v3 addObject:productPageMetadata withName:@"productPageMetadata"];

  productPageDescription = [(ASCLockupFeatureMiniProductPage *)self productPageDescription];
  [(ASCDescriber *)v3 addObject:productPageDescription withName:@"productPageDescription"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end