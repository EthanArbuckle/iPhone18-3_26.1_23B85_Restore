@interface ASCLockupFeatureMedia
- (ASCLockupFeatureMedia)initWithCoder:(id)a3;
- (ASCLockupFeatureMedia)initWithScreenshots:(id)a3 trailers:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureMedia

- (ASCLockupFeatureMedia)initWithScreenshots:(id)a3 trailers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureMedia;
  v8 = [(ASCLockupFeatureMedia *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    screenshots = v8->_screenshots;
    v8->_screenshots = v9;

    v11 = [v7 copy];
    trailers = v8->_trailers;
    v8->_trailers = v11;
  }

  return v8;
}

- (ASCLockupFeatureMedia)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenshots"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailers"];

  v7 = [(ASCLockupFeatureMedia *)self initWithScreenshots:v5 trailers:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureMedia *)self screenshots];
  [v4 encodeObject:v5 forKey:@"screenshots"];

  v6 = [(ASCLockupFeatureMedia *)self trailers];
  [v4 encodeObject:v6 forKey:@"trailers"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureMedia *)self screenshots];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupFeatureMedia *)self trailers];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
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

    if (!v8)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(ASCLockupFeatureMedia *)self screenshots];
    v10 = [(ASCLockupFeatureMedia *)v8 screenshots];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
        goto LABEL_12;
      }
    }

    else if (v9 == v10)
    {
LABEL_12:
      v12 = [(ASCLockupFeatureMedia *)self trailers];
      v13 = [(ASCLockupFeatureMedia *)v8 trailers];
      v14 = v13;
      if (v12 && v13)
      {
        v7 = [v12 isEqual:v13];
      }

      else
      {
        v7 = v12 == v13;
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
  v4 = [(ASCLockupFeatureMedia *)self screenshots];
  [(ASCDescriber *)v3 addObject:v4 withName:@"screenshots"];

  v5 = [(ASCLockupFeatureMedia *)self trailers];
  [(ASCDescriber *)v3 addObject:v5 withName:@"trailers"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end