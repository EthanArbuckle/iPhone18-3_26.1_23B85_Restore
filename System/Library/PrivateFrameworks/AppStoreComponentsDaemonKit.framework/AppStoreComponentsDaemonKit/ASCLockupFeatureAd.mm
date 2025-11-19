@interface ASCLockupFeatureAd
- (ASCLockupFeatureAd)initWithCoder:(id)a3;
- (ASCLockupFeatureAd)initWithEditorsChoice:(BOOL)a3 productRating:(float)a4 productRatingBadge:(id)a5 productDescription:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureAd

- (ASCLockupFeatureAd)initWithEditorsChoice:(BOOL)a3 productRating:(float)a4 productRatingBadge:(id)a5 productDescription:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = ASCLockupFeatureAd;
  v12 = [(ASCLockupFeatureAd *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_isEditorsChoice = a3;
    v12->_productRating = a4;
    v14 = [v10 copy];
    productRatingBadge = v13->_productRatingBadge;
    v13->_productRatingBadge = v14;

    v16 = [v11 copy];
    productDescription = v13->_productDescription;
    v13->_productDescription = v16;
  }

  return v13;
}

- (ASCLockupFeatureAd)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isEditorsChoice"];
  if ([v4 containsValueForKey:@"productRating"])
  {
    [v4 decodeFloatForKey:@"productRating"];
    v7 = v6;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productRatingBadge"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productDescription"];
    LODWORD(v10) = v7;
    self = [(ASCLockupFeatureAd *)self initWithEditorsChoice:v5 productRating:v8 productRatingBadge:v9 productDescription:v10];

    v11 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCLockupFeatureAd initWithCoder:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[ASCLockupFeatureAd isEditorsChoice](self forKey:{"isEditorsChoice"), @"isEditorsChoice"}];
  [(ASCLockupFeatureAd *)self productRating];
  [v4 encodeFloat:@"productRating" forKey:?];
  v5 = [(ASCLockupFeatureAd *)self productRatingBadge];
  [v4 encodeObject:v5 forKey:@"productRatingBadge"];

  v6 = [(ASCLockupFeatureAd *)self productDescription];
  [v4 encodeObject:v6 forKey:@"productDescription"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineBool:[(ASCLockupFeatureAd *)self isEditorsChoice]];
  [(ASCLockupFeatureAd *)self productRating];
  [(ASCHasher *)v3 combineDouble:v4];
  v5 = [(ASCLockupFeatureAd *)self productRatingBadge];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockupFeatureAd *)self productDescription];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCHasher *)v3 finalizeHash];
  return v7;
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

    if (!v8 || (v9 = [(ASCLockupFeatureAd *)self isEditorsChoice], v9 != [(ASCLockupFeatureAd *)v8 isEditorsChoice]) || ([(ASCLockupFeatureAd *)self productRating], v11 = v10, [(ASCLockupFeatureAd *)v8 productRating], v11 != v12))
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v13 = [(ASCLockupFeatureAd *)self productRatingBadge];
    v14 = [(ASCLockupFeatureAd *)v8 productRatingBadge];
    v15 = v14;
    if (v13 && v14)
    {
      if ([v13 isEqual:v14])
      {
        goto LABEL_14;
      }
    }

    else if (v13 == v14)
    {
LABEL_14:
      v16 = [(ASCLockupFeatureAd *)self productDescription];
      v17 = [(ASCLockupFeatureAd *)v8 productDescription];
      v18 = v17;
      if (v16 && v17)
      {
        v7 = [v16 isEqual:v17];
      }

      else
      {
        v7 = v16 == v17;
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
  v5 = [(ASCLockupFeatureAd *)self productRatingBadge];
  [(ASCDescriber *)v3 addObject:v5 withName:@"productRatingBadge"];

  v6 = [(ASCLockupFeatureAd *)self productDescription];
  [(ASCDescriber *)v3 addObject:v6 withName:@"productDescription"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end