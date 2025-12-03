@interface ASCLockupFeatureAd
- (ASCLockupFeatureAd)initWithCoder:(id)coder;
- (ASCLockupFeatureAd)initWithEditorsChoice:(BOOL)choice productRating:(float)rating productRatingBadge:(id)badge productDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureAd

- (ASCLockupFeatureAd)initWithEditorsChoice:(BOOL)choice productRating:(float)rating productRatingBadge:(id)badge productDescription:(id)description
{
  badgeCopy = badge;
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = ASCLockupFeatureAd;
  v12 = [(ASCLockupFeatureAd *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_isEditorsChoice = choice;
    v12->_productRating = rating;
    v14 = [badgeCopy copy];
    productRatingBadge = v13->_productRatingBadge;
    v13->_productRatingBadge = v14;

    v16 = [descriptionCopy copy];
    productDescription = v13->_productDescription;
    v13->_productDescription = v16;
  }

  return v13;
}

- (ASCLockupFeatureAd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isEditorsChoice"];
  if ([coderCopy containsValueForKey:@"productRating"])
  {
    [coderCopy decodeFloatForKey:@"productRating"];
    v7 = v6;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productRatingBadge"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productDescription"];
    LODWORD(v10) = v7;
    self = [(ASCLockupFeatureAd *)self initWithEditorsChoice:v5 productRating:v8 productRatingBadge:v9 productDescription:v10];

    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCLockupFeatureAd initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ASCLockupFeatureAd isEditorsChoice](self forKey:{"isEditorsChoice"), @"isEditorsChoice"}];
  [(ASCLockupFeatureAd *)self productRating];
  [coderCopy encodeFloat:@"productRating" forKey:?];
  productRatingBadge = [(ASCLockupFeatureAd *)self productRatingBadge];
  [coderCopy encodeObject:productRatingBadge forKey:@"productRatingBadge"];

  productDescription = [(ASCLockupFeatureAd *)self productDescription];
  [coderCopy encodeObject:productDescription forKey:@"productDescription"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureAd *)self isEditorsChoice]];
  [(ASCLockupFeatureAd *)self productRating];
  [(ASCHasher *)v3 combineDouble:v4];
  productRatingBadge = [(ASCLockupFeatureAd *)self productRatingBadge];
  [(ASCHasher *)v3 combineObject:productRatingBadge];

  productDescription = [(ASCLockupFeatureAd *)self productDescription];
  [(ASCHasher *)v3 combineObject:productDescription];

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

    if (!v8 || (v9 = [(ASCLockupFeatureAd *)self isEditorsChoice], v9 != [(ASCLockupFeatureAd *)v8 isEditorsChoice]) || ([(ASCLockupFeatureAd *)self productRating], v11 = v10, [(ASCLockupFeatureAd *)v8 productRating], v11 != v12))
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    productRatingBadge = [(ASCLockupFeatureAd *)self productRatingBadge];
    productRatingBadge2 = [(ASCLockupFeatureAd *)v8 productRatingBadge];
    v15 = productRatingBadge2;
    if (productRatingBadge && productRatingBadge2)
    {
      if ([productRatingBadge isEqual:productRatingBadge2])
      {
        goto LABEL_14;
      }
    }

    else if (productRatingBadge == productRatingBadge2)
    {
LABEL_14:
      productDescription = [(ASCLockupFeatureAd *)self productDescription];
      productDescription2 = [(ASCLockupFeatureAd *)v8 productDescription];
      v18 = productDescription2;
      if (productDescription && productDescription2)
      {
        v7 = [productDescription isEqual:productDescription2];
      }

      else
      {
        v7 = productDescription == productDescription2;
      }

      goto LABEL_24;
    }

    v7 = 0;
LABEL_24:

    goto LABEL_18;
  }

  v7 = 1;
LABEL_19:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  [(ASCDescriber *)v3 addBool:[(ASCLockupFeatureAd *)self isEditorsChoice] withName:@"isEditorsChoice"];
  [(ASCLockupFeatureAd *)self productRating];
  [(ASCDescriber *)v3 addDouble:@"productRating" withName:v4];
  productRatingBadge = [(ASCLockupFeatureAd *)self productRatingBadge];
  [(ASCDescriber *)v3 addObject:productRatingBadge withName:@"productRatingBadge"];

  productDescription = [(ASCLockupFeatureAd *)self productDescription];
  [(ASCDescriber *)v3 addObject:productDescription withName:@"productDescription"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end