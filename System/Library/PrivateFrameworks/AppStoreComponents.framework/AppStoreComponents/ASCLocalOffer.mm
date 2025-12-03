@interface ASCLocalOffer
+ (id)viewInAppStoreOfferForLockupView:(id)view;
- (ASCLocalOffer)initWithMetadata:(id)metadata action:(id)action;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ASCLocalOffer

- (ASCLocalOffer)initWithMetadata:(id)metadata action:(id)action
{
  metadataCopy = metadata;
  actionCopy = action;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCLocalOffer;
  v8 = [(ASCLocalOffer *)&v14 init];
  if (v8)
  {
    v9 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [actionCopy copy];
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

+ (id)viewInAppStoreOfferForLockupView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, viewCopy);
  v5 = [self alloc];
  v6 = objc_alloc_init(ASCViewInAppStoreOfferMetadata);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ASCLocalOffer_viewInAppStoreOfferForLockupView___block_invoke;
  v9[3] = &unk_2781CBD28;
  objc_copyWeak(&v10, &location);
  v7 = [v5 initWithMetadata:v6 action:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

void __50__ASCLocalOffer_viewInAppStoreOfferForLockupView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentProductDetailsViewController];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  metadata = [(ASCLocalOffer *)self metadata];
  [(ASCHasher *)v3 combineObject:metadata];

  action = [(ASCLocalOffer *)self action];
  v6 = MEMORY[0x216070C30]();
  [(ASCHasher *)v3 combineObject:v6];

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
    metadata = [(ASCLocalOffer *)self metadata];
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
      action = [(ASCLocalOffer *)self action];
      v12 = MEMORY[0x216070C30]();
      action2 = [v7 action];
      v14 = MEMORY[0x216070C30]();
      v15 = v14;
      if (v12 && v14)
      {
        v16 = [v12 isEqual:v14];
      }

      else
      {
        v16 = v12 == v14;
      }

      goto LABEL_18;
    }

    v16 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  metadata = [(ASCLocalOffer *)self metadata];
  [(ASCDescriber *)v3 addObject:metadata withName:@"metadata"];

  action = [(ASCLocalOffer *)self action];
  v6 = MEMORY[0x216070C30]();
  [(ASCDescriber *)v3 addObject:v6 withName:@"action"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end