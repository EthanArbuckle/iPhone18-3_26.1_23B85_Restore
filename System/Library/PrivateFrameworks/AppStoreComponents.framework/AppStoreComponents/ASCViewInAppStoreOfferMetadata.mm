@interface ASCViewInAppStoreOfferMetadata
- (ASCViewInAppStoreOfferMetadata)init;
- (ASCViewInAppStoreOfferMetadata)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
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

- (ASCViewInAppStoreOfferMetadata)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASCViewInAppStoreOfferMetadata;
  return [(ASCOfferMetadata *)&v4 initWithCoder:a3];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCViewInAppStoreOfferMetadata *)self title];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v3 = a3;
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
  v4 = [(ASCViewInAppStoreOfferMetadata *)self title];
  [(ASCDescriber *)v3 addObject:v4 withName:@"title"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end