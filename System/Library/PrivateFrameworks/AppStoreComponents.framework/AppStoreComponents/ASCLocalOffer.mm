@interface ASCLocalOffer
+ (id)viewInAppStoreOfferForLockupView:(id)a3;
- (ASCLocalOffer)initWithMetadata:(id)a3 action:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ASCLocalOffer

- (ASCLocalOffer)initWithMetadata:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCLocalOffer;
  v8 = [(ASCLocalOffer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    metadata = v8->_metadata;
    v8->_metadata = v9;

    v11 = [v7 copy];
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

+ (id)viewInAppStoreOfferForLockupView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v5 = [a1 alloc];
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
  v4 = [(ASCLocalOffer *)self metadata];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLocalOffer *)self action];
  v6 = MEMORY[0x216070C30]();
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
    v8 = [(ASCLocalOffer *)self metadata];
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
      v11 = [(ASCLocalOffer *)self action];
      v12 = MEMORY[0x216070C30]();
      v13 = [v7 action];
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
  v4 = [(ASCLocalOffer *)self metadata];
  [(ASCDescriber *)v3 addObject:v4 withName:@"metadata"];

  v5 = [(ASCLocalOffer *)self action];
  v6 = MEMORY[0x216070C30]();
  [(ASCDescriber *)v3 addObject:v6 withName:@"action"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end