@interface ASCOfferContext
- (ASCOfferContext)initWithCoder:(id)coder;
- (ASCOfferContext)initWithFlags:(int64_t)flags presentingSceneIdentifier:(id)identifier presentingSceneBundleIdentifier:(id)bundleIdentifier externalDeepLinkURL:(id)l paymentViewServiceListener:(id)listener;
- (ASCOfferContext)offerContextWithPresentingSceneIdentifier:(id)identifier presentingSceneBundleIdentifier:(id)bundleIdentifier externalDeepLinkURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)offerContextByAddingFlags:(int64_t)flags;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCOfferContext

- (ASCOfferContext)initWithFlags:(int64_t)flags presentingSceneIdentifier:(id)identifier presentingSceneBundleIdentifier:(id)bundleIdentifier externalDeepLinkURL:(id)l paymentViewServiceListener:(id)listener
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  lCopy = l;
  listenerCopy = listener;
  v25.receiver = self;
  v25.super_class = ASCOfferContext;
  v16 = [(ASCOfferContext *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_flags = flags;
    v18 = [identifierCopy copy];
    presentingSceneIdentifier = v17->_presentingSceneIdentifier;
    v17->_presentingSceneIdentifier = v18;

    v20 = [bundleIdentifierCopy copy];
    presentingSceneBundleIdentifier = v17->_presentingSceneBundleIdentifier;
    v17->_presentingSceneBundleIdentifier = v20;

    v22 = [lCopy copy];
    externalDeepLinkURL = v17->_externalDeepLinkURL;
    v17->_externalDeepLinkURL = v22;

    objc_storeStrong(&v17->_paymentViewServiceListener, listener);
  }

  return v17;
}

- (ASCOfferContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"flags"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalDeepLinkURL"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentViewServiceListener"];

  v10 = [(ASCOfferContext *)self initWithFlags:v5 presentingSceneIdentifier:v6 presentingSceneBundleIdentifier:v7 externalDeepLinkURL:v8 paymentViewServiceListener:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ASCOfferContext flags](self forKey:{"flags"), @"flags"}];
  presentingSceneIdentifier = [(ASCOfferContext *)self presentingSceneIdentifier];
  [coderCopy encodeObject:presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];

  presentingSceneBundleIdentifier = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  [coderCopy encodeObject:presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];

  externalDeepLinkURL = [(ASCOfferContext *)self externalDeepLinkURL];
  [coderCopy encodeObject:externalDeepLinkURL forKey:@"externalDeepLinkURL"];

  paymentViewServiceListener = [(ASCOfferContext *)self paymentViewServiceListener];
  [coderCopy encodeObject:paymentViewServiceListener forKey:@"paymentViewServiceListener"];
}

- (id)offerContextByAddingFlags:(int64_t)flags
{
  flags = [(ASCOfferContext *)self flags];
  v6 = objc_alloc(objc_opt_class());
  presentingSceneIdentifier = [(ASCOfferContext *)self presentingSceneIdentifier];
  presentingSceneBundleIdentifier = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  externalDeepLinkURL = [(ASCOfferContext *)self externalDeepLinkURL];
  paymentViewServiceListener = [(ASCOfferContext *)self paymentViewServiceListener];
  v11 = [v6 initWithFlags:flags | flags presentingSceneIdentifier:presentingSceneIdentifier presentingSceneBundleIdentifier:presentingSceneBundleIdentifier externalDeepLinkURL:externalDeepLinkURL paymentViewServiceListener:paymentViewServiceListener];

  return v11;
}

- (ASCOfferContext)offerContextWithPresentingSceneIdentifier:(id)identifier presentingSceneBundleIdentifier:(id)bundleIdentifier externalDeepLinkURL:(id)l
{
  lCopy = l;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v11 = objc_alloc(objc_opt_class());
  flags = [(ASCOfferContext *)self flags];
  paymentViewServiceListener = [(ASCOfferContext *)self paymentViewServiceListener];
  v14 = [v11 initWithFlags:flags presentingSceneIdentifier:identifierCopy presentingSceneBundleIdentifier:bundleIdentifierCopy externalDeepLinkURL:lCopy paymentViewServiceListener:paymentViewServiceListener];

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineInteger:[(ASCOfferContext *)self flags]];
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
    supportsDSIDLessInstall = [(ASCOfferContext *)self supportsDSIDLessInstall];
    if (supportsDSIDLessInstall == [v7 supportsDSIDLessInstall])
    {
      shouldInstallParentApp = [(ASCOfferContext *)self shouldInstallParentApp];
      if (shouldInstallParentApp == [v7 shouldInstallParentApp])
      {
        presentingSceneIdentifier = [(ASCOfferContext *)self presentingSceneIdentifier];
        presentingSceneIdentifier2 = [v7 presentingSceneIdentifier];
        v14 = presentingSceneIdentifier2;
        if (presentingSceneIdentifier && presentingSceneIdentifier2)
        {
          if ([presentingSceneIdentifier isEqual:presentingSceneIdentifier2])
          {
LABEL_14:
            presentingSceneBundleIdentifier = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
            presentingSceneBundleIdentifier2 = [v7 presentingSceneBundleIdentifier];
            v17 = presentingSceneBundleIdentifier2;
            if (presentingSceneBundleIdentifier && presentingSceneBundleIdentifier2)
            {
              if ([presentingSceneBundleIdentifier isEqual:presentingSceneBundleIdentifier2])
              {
LABEL_17:
                externalDeepLinkURL = [(ASCOfferContext *)self externalDeepLinkURL];
                externalDeepLinkURL2 = [v7 externalDeepLinkURL];
                v20 = externalDeepLinkURL2;
                if (externalDeepLinkURL && externalDeepLinkURL2)
                {
                  if (![externalDeepLinkURL isEqual:externalDeepLinkURL2])
                  {
                    goto LABEL_27;
                  }
                }

                else if (externalDeepLinkURL != externalDeepLinkURL2)
                {
                  goto LABEL_27;
                }

                universalLinkRequired = [(ASCOfferContext *)self universalLinkRequired];
                if (universalLinkRequired == [v7 universalLinkRequired])
                {
                  paymentViewServiceListener = [(ASCOfferContext *)self paymentViewServiceListener];
                  paymentViewServiceListener2 = [v7 paymentViewServiceListener];
                  v24 = paymentViewServiceListener2;
                  v25 = paymentViewServiceListener;
                  if (paymentViewServiceListener && paymentViewServiceListener2)
                  {
                    v10 = [paymentViewServiceListener isEqual:paymentViewServiceListener2];
                  }

                  else
                  {
                    v10 = paymentViewServiceListener == paymentViewServiceListener2;
                  }

                  goto LABEL_33;
                }

LABEL_27:
                v10 = 0;
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (presentingSceneBundleIdentifier == presentingSceneBundleIdentifier2)
            {
              goto LABEL_17;
            }

            v10 = 0;
LABEL_34:

            goto LABEL_35;
          }
        }

        else if (presentingSceneIdentifier == presentingSceneIdentifier2)
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
  presentingSceneIdentifier = [(ASCOfferContext *)self presentingSceneIdentifier];
  [(ASCDescriber *)v3 addObject:presentingSceneIdentifier withName:@"presentingSceneIdentifier"];

  presentingSceneBundleIdentifier = [(ASCOfferContext *)self presentingSceneBundleIdentifier];
  [(ASCDescriber *)v3 addObject:presentingSceneBundleIdentifier withName:@"presentingSceneBundleIdentifier"];

  externalDeepLinkURL = [(ASCOfferContext *)self externalDeepLinkURL];
  [(ASCDescriber *)v3 addObject:externalDeepLinkURL withName:@"externalDeepLinkURL"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferContext *)self universalLinkRequired] withName:@"universalLinkRequired"];
  paymentViewServiceListener = [(ASCOfferContext *)self paymentViewServiceListener];
  [(ASCDescriber *)v3 addObject:paymentViewServiceListener withName:@"paymentViewServiceListener"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end