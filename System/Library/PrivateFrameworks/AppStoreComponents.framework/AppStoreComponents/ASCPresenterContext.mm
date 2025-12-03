@interface ASCPresenterContext
+ (ASCPresenterContext)sharedContext;
- (ASCPresenterContext)initWithArtworkFetcher:(id)fetcher lockupFetcher:(id)lockupFetcher appOfferStateCenter:(id)center;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASCPresenterContext

+ (ASCPresenterContext)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    +[ASCPresenterContext sharedContext];
  }

  v3 = sharedContext_sharedContext;

  return v3;
}

void __36__ASCPresenterContext_sharedContext__block_invoke()
{
  v0 = [ASCPresenterContext alloc];
  v5 = +[ASCArtworkFetcher sharedFetcher];
  v1 = +[ASCLockupFetcher sharedFetcher];
  v2 = +[ASCAppOfferStateCenter sharedCenter];
  v3 = [(ASCPresenterContext *)v0 initWithArtworkFetcher:v5 lockupFetcher:v1 appOfferStateCenter:v2];
  v4 = sharedContext_sharedContext;
  sharedContext_sharedContext = v3;
}

- (ASCPresenterContext)initWithArtworkFetcher:(id)fetcher lockupFetcher:(id)lockupFetcher appOfferStateCenter:(id)center
{
  fetcherCopy = fetcher;
  lockupFetcherCopy = lockupFetcher;
  centerCopy = center;
  v15.receiver = self;
  v15.super_class = ASCPresenterContext;
  v12 = [(ASCPresenterContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkFetcher, fetcher);
    objc_storeStrong(&v13->_lockupFetcher, lockupFetcher);
    objc_storeStrong(&v13->_appOfferStateCenter, center);
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  artworkFetcher = [(ASCPresenterContext *)self artworkFetcher];
  [(ASCHasher *)v3 combineObject:artworkFetcher];

  lockupFetcher = [(ASCPresenterContext *)self lockupFetcher];
  [(ASCHasher *)v3 combineObject:lockupFetcher];

  appOfferStateCenter = [(ASCPresenterContext *)self appOfferStateCenter];
  [(ASCHasher *)v3 combineObject:appOfferStateCenter];

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
    artworkFetcher = [(ASCPresenterContext *)self artworkFetcher];
    artworkFetcher2 = [v7 artworkFetcher];
    v10 = artworkFetcher2;
    if (artworkFetcher && artworkFetcher2)
    {
      if ([artworkFetcher isEqual:artworkFetcher2])
      {
LABEL_10:
        lockupFetcher = [(ASCPresenterContext *)self lockupFetcher];
        lockupFetcher2 = [v7 lockupFetcher];
        v13 = lockupFetcher2;
        if (lockupFetcher && lockupFetcher2)
        {
          if ([lockupFetcher isEqual:lockupFetcher2])
          {
            goto LABEL_13;
          }
        }

        else if (lockupFetcher == lockupFetcher2)
        {
LABEL_13:
          appOfferStateCenter = [(ASCPresenterContext *)self appOfferStateCenter];
          appOfferStateCenter2 = [v7 appOfferStateCenter];
          v16 = appOfferStateCenter2;
          if (appOfferStateCenter && appOfferStateCenter2)
          {
            v17 = [appOfferStateCenter isEqual:appOfferStateCenter2];
          }

          else
          {
            v17 = appOfferStateCenter == appOfferStateCenter2;
          }

          goto LABEL_23;
        }

        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (artworkFetcher == artworkFetcher2)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  artworkFetcher = [(ASCPresenterContext *)self artworkFetcher];
  [(ASCDescriber *)v3 addObject:artworkFetcher withName:@"artworkFetcher"];

  lockupFetcher = [(ASCPresenterContext *)self lockupFetcher];
  [(ASCDescriber *)v3 addObject:lockupFetcher withName:@"lockupFetcher"];

  appOfferStateCenter = [(ASCPresenterContext *)self appOfferStateCenter];
  [(ASCDescriber *)v3 addObject:appOfferStateCenter withName:@"appOfferStateCenter"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end