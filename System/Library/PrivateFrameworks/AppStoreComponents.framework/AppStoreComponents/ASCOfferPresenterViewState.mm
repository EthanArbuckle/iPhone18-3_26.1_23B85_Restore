@interface ASCOfferPresenterViewState
- (ASCOfferPresenterViewState)initWithMetadata:(id)a3 theme:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCOfferPresenterViewState

- (ASCOfferPresenterViewState)initWithMetadata:(id)a3 theme:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCOfferPresenterViewState;
  v8 = [(ASCOfferPresenterViewState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [v7 copy];
    theme = v8->_theme;
    v8->_theme = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCOfferPresenterViewState *)self metadata];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCOfferPresenterViewState *)self theme];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
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
    v8 = [(ASCOfferPresenterViewState *)self metadata];
    v9 = [v7 metadata];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCOfferPresenterViewState *)self theme];
      v12 = [v7 theme];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
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
  v4 = [(ASCOfferPresenterViewState *)self metadata];
  [(ASCDescriber *)v3 addObject:v4 withName:@"metadata"];

  v5 = [(ASCOfferPresenterViewState *)self theme];
  [(ASCDescriber *)v3 addObject:v5 withName:@"theme"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end