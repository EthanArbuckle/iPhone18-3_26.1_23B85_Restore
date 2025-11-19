@interface ASCLockupFeatureBuyParams
- (ASCLockupFeatureBuyParams)initWithAppOffer:(id)a3;
- (ASCLockupFeatureBuyParams)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureBuyParams

- (ASCLockupFeatureBuyParams)initWithAppOffer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureBuyParams;
  v5 = [(ASCLockupFeatureBuyParams *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    appOffer = v5->_appOffer;
    v5->_appOffer = v6;
  }

  return v5;
}

- (ASCLockupFeatureBuyParams)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appOffer"];

  v6 = [(ASCLockupFeatureBuyParams *)self initWithAppOffer:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureBuyParams *)self appOffer];
  [v4 encodeObject:v5 forKey:@"appOffer"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureBuyParams *)self appOffer];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
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

    if (v8)
    {
      v9 = [(ASCLockupFeatureBuyParams *)self appOffer];
      v10 = [(ASCLockupFeatureBuyParams *)v8 appOffer];
      v11 = v10;
      if (v9 && v10)
      {
        v7 = [v9 isEqual:v10];
      }

      else
      {
        v7 = v9 == v10;
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
  v4 = [(ASCLockupFeatureBuyParams *)self appOffer];
  [(ASCDescriber *)v3 addObject:v4 withName:@"appOffer"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end