@interface ASCProgressOfferMetadata
- (ASCProgressOfferMetadata)initWithCoder:(id)coder;
- (ASCProgressOfferMetadata)initWithPercent:(double)percent cancellable:(BOOL)cancellable;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initIndeterminate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCProgressOfferMetadata

- (ASCProgressOfferMetadata)initWithPercent:(double)percent cancellable:(BOOL)cancellable
{
  v7.receiver = self;
  v7.super_class = ASCProgressOfferMetadata;
  result = [(ASCOfferMetadata *)&v7 _init];
  if (result)
  {
    result->_percent = percent;
    result->_cancellable = cancellable;
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

- (ASCProgressOfferMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ASCProgressOfferMetadata;
  v5 = [(ASCOfferMetadata *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"percent"];
    v5->_percent = v6;
    v5->_cancellable = [coderCopy decodeBoolForKey:@"cancellable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ASCProgressOfferMetadata;
  coderCopy = coder;
  [(ASCOfferMetadata *)&v5 encodeWithCoder:coderCopy];
  [(ASCProgressOfferMetadata *)self percent:v5.receiver];
  [coderCopy encodeDouble:@"percent" forKey:?];
  [coderCopy encodeBool:-[ASCProgressOfferMetadata cancellable](self forKey:{"cancellable"), @"cancellable"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCProgressOfferMetadata *)self percent];
  [(ASCHasher *)v3 combineInteger:v4];
  finalizeHash = [(ASCHasher *)v3 finalizeHash];

  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end