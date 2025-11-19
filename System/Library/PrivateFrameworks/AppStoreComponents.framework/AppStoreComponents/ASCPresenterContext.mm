@interface ASCPresenterContext
+ (ASCPresenterContext)sharedContext;
- (ASCPresenterContext)initWithArtworkFetcher:(id)a3 lockupFetcher:(id)a4 appOfferStateCenter:(id)a5;
- (BOOL)isEqual:(id)a3;
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

- (ASCPresenterContext)initWithArtworkFetcher:(id)a3 lockupFetcher:(id)a4 appOfferStateCenter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASCPresenterContext;
  v12 = [(ASCPresenterContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkFetcher, a3);
    objc_storeStrong(&v13->_lockupFetcher, a4);
    objc_storeStrong(&v13->_appOfferStateCenter, a5);
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCPresenterContext *)self artworkFetcher];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCPresenterContext *)self lockupFetcher];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCPresenterContext *)self appOfferStateCenter];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCHasher *)v3 finalizeHash];
  return v7;
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
    v8 = [(ASCPresenterContext *)self artworkFetcher];
    v9 = [v7 artworkFetcher];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCPresenterContext *)self lockupFetcher];
        v12 = [v7 lockupFetcher];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
            goto LABEL_13;
          }
        }

        else if (v11 == v12)
        {
LABEL_13:
          v14 = [(ASCPresenterContext *)self appOfferStateCenter];
          v15 = [v7 appOfferStateCenter];
          v16 = v15;
          if (v14 && v15)
          {
            v17 = [v14 isEqual:v15];
          }

          else
          {
            v17 = v14 == v15;
          }

          goto LABEL_23;
        }

        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v8 == v9)
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
  v4 = [(ASCPresenterContext *)self artworkFetcher];
  [(ASCDescriber *)v3 addObject:v4 withName:@"artworkFetcher"];

  v5 = [(ASCPresenterContext *)self lockupFetcher];
  [(ASCDescriber *)v3 addObject:v5 withName:@"lockupFetcher"];

  v6 = [(ASCPresenterContext *)self appOfferStateCenter];
  [(ASCDescriber *)v3 addObject:v6 withName:@"appOfferStateCenter"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end