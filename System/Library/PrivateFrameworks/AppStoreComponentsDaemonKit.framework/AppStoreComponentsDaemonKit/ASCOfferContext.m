@interface ASCOfferContext
- (ASCOfferContext)initWithCoder:(id)a3;
- (ASCOfferContext)initWithFlags:(int64_t)a3 presentingSceneIdentifier:(id)a4 presentingSceneBundleIdentifier:(id)a5 externalDeepLinkURL:(id)a6 paymentViewServiceListener:(id)a7;
- (ASCOfferContext)offerContextWithPresentingSceneIdentifier:(id)a3 presentingSceneBundleIdentifier:(id)a4 externalDeepLinkURL:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)offerContextByAddingFlags:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCOfferContext

- (ASCOfferContext)initWithFlags:(int64_t)a3 presentingSceneIdentifier:(id)a4 presentingSceneBundleIdentifier:(id)a5 externalDeepLinkURL:(id)a6 paymentViewServiceListener:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = ASCOfferContext;
  v16 = [(ASCOfferContext *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_flags = a3;
    v18 = [v12 copy];
    presentingSceneIdentifier = v17->_presentingSceneIdentifier;
    v17->_presentingSceneIdentifier = v18;

    v20 = [v13 copy];
    presentingSceneBundleIdentifier = v17->_presentingSceneBundleIdentifier;
    v17->_presentingSceneBundleIdentifier = v20;

    v22 = [v14 copy];
    externalDeepLinkURL = v17->_externalDeepLinkURL;
    v17->_externalDeepLinkURL = v22;

    objc_storeStrong(&v17->_paymentViewServiceListener, a7);
  }

  return v17;
}

- (ASCOfferContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"flags"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalDeepLinkURL"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentViewServiceListener"];

  v10 = [(ASCOfferContext *)self initWithFlags:v5 presentingSceneIdentifier:v6 presentingSceneBundleIdentifier:v7 externalDeepLinkURL:v8 paymentViewServiceListener:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ASCOfferContext flags](self forKey:{"flags"), @"flags"}];
  v5 = [(ASCOfferContext *)self presentingSceneIdentifier];
  [v4 encodeObject:v5 forKey:@"presentingSceneIdentifier"];

  v6 = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"presentingSceneBundleIdentifier"];

  v7 = [(ASCOfferContext *)self externalDeepLinkURL];
  [v4 encodeObject:v7 forKey:@"externalDeepLinkURL"];

  v8 = [(ASCOfferContext *)self paymentViewServiceListener];
  [v4 encodeObject:v8 forKey:@"paymentViewServiceListener"];
}

- (id)offerContextByAddingFlags:(int64_t)a3
{
  v5 = [(ASCOfferContext *)self flags];
  v6 = objc_alloc(objc_opt_class());
  v7 = [(ASCOfferContext *)self presentingSceneIdentifier];
  v8 = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  v9 = [(ASCOfferContext *)self externalDeepLinkURL];
  v10 = [(ASCOfferContext *)self paymentViewServiceListener];
  v11 = [v6 initWithFlags:v5 | a3 presentingSceneIdentifier:v7 presentingSceneBundleIdentifier:v8 externalDeepLinkURL:v9 paymentViewServiceListener:v10];

  return v11;
}

- (ASCOfferContext)offerContextWithPresentingSceneIdentifier:(id)a3 presentingSceneBundleIdentifier:(id)a4 externalDeepLinkURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc(objc_opt_class());
  v12 = [(ASCOfferContext *)self flags];
  v13 = [(ASCOfferContext *)self paymentViewServiceListener];
  v14 = [v11 initWithFlags:v12 presentingSceneIdentifier:v10 presentingSceneBundleIdentifier:v9 externalDeepLinkURL:v8 paymentViewServiceListener:v13];

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineInteger:[(ASCOfferContext *)self flags]];
  v4 = [(ASCHasher *)v3 finalizeHash];

  return v4;
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
    v8 = [(ASCOfferContext *)self supportsDSIDLessInstall];
    if (v8 == [v7 supportsDSIDLessInstall])
    {
      v9 = [(ASCOfferContext *)self shouldInstallParentApp];
      if (v9 == [v7 shouldInstallParentApp])
      {
        v12 = [(ASCOfferContext *)self presentingSceneIdentifier];
        v13 = [v7 presentingSceneIdentifier];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_14:
            v15 = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
            v16 = [v7 presentingSceneBundleIdentifier];
            v17 = v16;
            if (v15 && v16)
            {
              if ([v15 isEqual:v16])
              {
LABEL_17:
                v18 = [(ASCOfferContext *)self externalDeepLinkURL];
                v19 = [v7 externalDeepLinkURL];
                v20 = v19;
                if (v18 && v19)
                {
                  if (![v18 isEqual:v19])
                  {
                    goto LABEL_27;
                  }
                }

                else if (v18 != v19)
                {
                  goto LABEL_27;
                }

                v21 = [(ASCOfferContext *)self universalLinkRequired];
                if (v21 == [v7 universalLinkRequired])
                {
                  v22 = [(ASCOfferContext *)self paymentViewServiceListener];
                  v23 = [v7 paymentViewServiceListener];
                  v24 = v23;
                  v25 = v22;
                  if (v22 && v23)
                  {
                    v10 = [v22 isEqual:v23];
                  }

                  else
                  {
                    v10 = v22 == v23;
                  }

                  goto LABEL_33;
                }

LABEL_27:
                v10 = 0;
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v15 == v16)
            {
              goto LABEL_17;
            }

            v10 = 0;
LABEL_34:

            goto LABEL_35;
          }
        }

        else if (v12 == v13)
        {
          goto LABEL_14;
        }

        v10 = 0;
LABEL_35:

        goto LABEL_10;
      }
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  [(ASCDescriber *)v3 addBool:[(ASCOfferContext *)self supportsDSIDLessInstall] withName:@"supportsDSIDLessInstall"];
  [(ASCDescriber *)v3 addBool:[(ASCOfferContext *)self shouldInstallParentApp] withName:@"shouldInstallParentApp"];
  v4 = [(ASCOfferContext *)self presentingSceneIdentifier];
  [(ASCDescriber *)v3 addObject:v4 withName:@"presentingSceneIdentifier"];

  v5 = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  [(ASCDescriber *)v3 addObject:v5 withName:@"presentingSceneBundleIdentifier"];

  v6 = [(ASCOfferContext *)self externalDeepLinkURL];
  [(ASCDescriber *)v3 addObject:v6 withName:@"externalDeepLinkURL"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferContext *)self universalLinkRequired] withName:@"universalLinkRequired"];
  v7 = [(ASCOfferContext *)self paymentViewServiceListener];
  [(ASCDescriber *)v3 addObject:v7 withName:@"paymentViewServiceListener"];

  v8 = [(ASCDescriber *)v3 finalizeDescription];

  return v8;
}

@end