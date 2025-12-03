@interface ASCLockupFeatureMedia
- (ASCLockupFeatureMedia)initWithCoder:(id)coder;
- (ASCLockupFeatureMedia)initWithScreenshots:(id)screenshots trailers:(id)trailers;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureMedia

- (ASCLockupFeatureMedia)initWithScreenshots:(id)screenshots trailers:(id)trailers
{
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  v14.receiver = self;
  v14.super_class = ASCLockupFeatureMedia;
  v8 = [(ASCLockupFeatureMedia *)&v14 init];
  if (v8)
  {
    v9 = [screenshotsCopy copy];
    screenshots = v8->_screenshots;
    v8->_screenshots = v9;

    v11 = [trailersCopy copy];
    trailers = v8->_trailers;
    v8->_trailers = v11;
  }

  return v8;
}

- (ASCLockupFeatureMedia)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenshots"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailers"];

  v7 = [(ASCLockupFeatureMedia *)self initWithScreenshots:v5 trailers:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  screenshots = [(ASCLockupFeatureMedia *)self screenshots];
  [coderCopy encodeObject:screenshots forKey:@"screenshots"];

  trailers = [(ASCLockupFeatureMedia *)self trailers];
  [coderCopy encodeObject:trailers forKey:@"trailers"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  screenshots = [(ASCLockupFeatureMedia *)self screenshots];
  [(ASCHasher *)v3 combineObject:screenshots];

  trailers = [(ASCLockupFeatureMedia *)self trailers];
  [(ASCHasher *)v3 combineObject:trailers];

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

    screenshots = [(ASCLockupFeatureMedia *)self screenshots];
    screenshots2 = [(ASCLockupFeatureMedia *)v8 screenshots];
    v11 = screenshots2;
    if (screenshots && screenshots2)
    {
      if ([screenshots isEqual:screenshots2])
      {
        goto LABEL_12;
      }
    }

    else if (screenshots == screenshots2)
    {
LABEL_12:
      trailers = [(ASCLockupFeatureMedia *)self trailers];
      trailers2 = [(ASCLockupFeatureMedia *)v8 trailers];
      v14 = trailers2;
      if (trailers && trailers2)
      {
        v7 = [trailers isEqual:trailers2];
      }

      else
      {
        v7 = trailers == trailers2;
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
  screenshots = [(ASCLockupFeatureMedia *)self screenshots];
  [(ASCDescriber *)v3 addObject:screenshots withName:@"screenshots"];

  trailers = [(ASCLockupFeatureMedia *)self trailers];
  [(ASCDescriber *)v3 addObject:trailers withName:@"trailers"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end