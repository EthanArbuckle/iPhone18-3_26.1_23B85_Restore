@interface ASCProgressOfferMetadata
- (ASCProgressOfferMetadata)initWithCoder:(id)a3;
- (ASCProgressOfferMetadata)initWithPercent:(double)a3 cancellable:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initIndeterminate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCProgressOfferMetadata

- (ASCProgressOfferMetadata)initWithPercent:(double)a3 cancellable:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = ASCProgressOfferMetadata;
  result = [(ASCOfferMetadata *)&v7 _init];
  if (result)
  {
    result->_percent = a3;
    result->_cancellable = a4;
  }

  return result;
}

- (id)initIndeterminate
{
  v3.receiver = self;
  v3.super_class = ASCProgressOfferMetadata;
  result = [(ASCOfferMetadata *)&v3 _init];
  if (result)
  {
    *(result + 2) = 0x7FF0000000000000;
  }

  return result;
}

- (ASCProgressOfferMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASCProgressOfferMetadata;
  v5 = [(ASCOfferMetadata *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"percent"];
    v5->_percent = v6;
    v5->_cancellable = [v4 decodeBoolForKey:@"cancellable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASCProgressOfferMetadata;
  v4 = a3;
  [(ASCOfferMetadata *)&v5 encodeWithCoder:v4];
  [(ASCProgressOfferMetadata *)self percent:v5.receiver];
  [v4 encodeDouble:@"percent" forKey:?];
  [v4 encodeBool:-[ASCProgressOfferMetadata cancellable](self forKey:{"cancellable"), @"cancellable"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCProgressOfferMetadata *)self percent];
  [(ASCHasher *)v3 combineInteger:v4];
  v5 = [(ASCHasher *)v3 finalizeHash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v7 = v6;

  if (v7)
  {
    [(ASCProgressOfferMetadata *)self percent];
    v9 = v8;
    [v7 percent];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  [(ASCProgressOfferMetadata *)self percent];
  [(ASCDescriber *)v3 addDouble:@"percent" withName:?];
  [(ASCDescriber *)v3 addBool:[(ASCProgressOfferMetadata *)self cancellable] withName:@"cancellable"];
  v4 = [(ASCDescriber *)v3 finalizeDescription];

  return v4;
}

@end