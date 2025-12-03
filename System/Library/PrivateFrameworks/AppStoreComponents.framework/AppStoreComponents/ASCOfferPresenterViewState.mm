@interface ASCOfferPresenterViewState
- (ASCOfferPresenterViewState)initWithMetadata:(id)metadata theme:(id)theme;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCOfferPresenterViewState

- (ASCOfferPresenterViewState)initWithMetadata:(id)metadata theme:(id)theme
{
  metadataCopy = metadata;
  themeCopy = theme;
  v14.receiver = self;
  v14.super_class = ASCOfferPresenterViewState;
  v8 = [(ASCOfferPresenterViewState *)&v14 init];
  if (v8)
  {
    v9 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [themeCopy copy];
    theme = v8->_theme;
    v8->_theme = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  metadata = [(ASCOfferPresenterViewState *)self metadata];
  [(ASCHasher *)v3 combineObject:metadata];

  theme = [(ASCOfferPresenterViewState *)self theme];
  [(ASCHasher *)v3 combineObject:theme];

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
    metadata = [(ASCOfferPresenterViewState *)self metadata];
    metadata2 = [v7 metadata];
    v10 = metadata2;
    if (metadata && metadata2)
    {
      if ([metadata isEqual:metadata2])
      {
        goto LABEL_10;
      }
    }

    else if (metadata == metadata2)
    {
LABEL_10:
      theme = [(ASCOfferPresenterViewState *)self theme];
      theme2 = [v7 theme];
      v13 = theme2;
      if (theme && theme2)
      {
        v14 = [theme isEqual:theme2];
      }

      else
      {
        v14 = theme == theme2;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  metadata = [(ASCOfferPresenterViewState *)self metadata];
  [(ASCDescriber *)v3 addObject:metadata withName:@"metadata"];

  theme = [(ASCOfferPresenterViewState *)self theme];
  [(ASCDescriber *)v3 addObject:theme withName:@"theme"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end