@interface ASCViewInAppStoreOfferMetadata
- (ASCViewInAppStoreOfferMetadata)init;
- (ASCViewInAppStoreOfferMetadata)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCViewInAppStoreOfferMetadata

- (ASCViewInAppStoreOfferMetadata)init
{
  v3.receiver = self;
  v3.super_class = ASCViewInAppStoreOfferMetadata;
  return [(ASCOfferMetadata *)&v3 _init];
}

- (ASCViewInAppStoreOfferMetadata)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ASCViewInAppStoreOfferMetadata;
  return [(ASCOfferMetadata *)&v4 initWithCoder:coder];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  title = [(ASCViewInAppStoreOfferMetadata *)self title];
  [(ASCHasher *)v3 combineObject:title];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  title = [(ASCViewInAppStoreOfferMetadata *)self title];
  [(ASCDescriber *)v3 addObject:title withName:@"title"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end