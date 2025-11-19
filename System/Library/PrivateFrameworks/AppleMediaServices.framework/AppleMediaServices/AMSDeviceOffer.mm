@interface AMSDeviceOffer
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)offersSetFromArray:(id)a3;
- (AMSDeviceOffer)initWithDictionary:(id)a3;
- (AMSDeviceOffer)initWithOfferIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (unint64_t)offerType;
@end

@implementation AMSDeviceOffer

+ (id)offersSetFromArray:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a3 ams_mapWithTransformIgnoresNil:&__block_literal_global_40];
  v5 = [v3 setWithArray:v4];

  return v5;
}

AMSDeviceOffer *__37__AMSDeviceOffer_offersSetFromArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  return v3;
}

- (AMSDeviceOffer)initWithOfferIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSDeviceOffer;
  v5 = [(AMSDeviceOffer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    adamId = v5->_adamId;
    v5->_adamId = &unk_1F0779430;

    v8 = [v4 copy];
    offerIdentifier = v6->_offerIdentifier;
    v6->_offerIdentifier = v8;
  }

  return v6;
}

- (AMSDeviceOffer)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"offerIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = [(AMSDeviceOffer *)self initWithOfferIdentifier:v6];
      if (!v7)
      {
LABEL_48:
        self = v7;
        v10 = self;
        goto LABEL_49;
      }

      v8 = [v4 objectForKeyedSubscript:@"adamId"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138543362;
        *&v33[4] = objc_opt_class();
        v13 = *&v33[4];
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: No adamId found in initializer dictionary, setting to 0", v33, 0xCu);
      }

      v9 = &unk_1F0779430;
LABEL_15:
      objc_storeStrong(&v7->_adamId, v9);
      v14 = [v4 objectForKeyedSubscript:@"description"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      description = v7->_description;
      v7->_description = v15;

      v17 = [v4 objectForKeyedSubscript:@"isDowngrading"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v7->_downgrading = [v18 BOOLValue];
      v19 = [v4 objectForKeyedSubscript:@"dsid"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      dsid = v7->_dsid;
      v7->_dsid = v20;

      v22 = [v4 objectForKeyedSubscript:@"isSubscribed"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v7->_subscribed = [v23 BOOLValue];
      v24 = [v4 objectForKeyedSubscript:@"serialNumber"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([MEMORY[0x1E695DFD8] setWithArray:v25], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v27 = [v4 objectForKeyedSubscript:{@"serialNumber", *v33}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [MEMORY[0x1E695DFD8] setWithObject:v28];
          if (v29)
          {
            v30 = v29;
            v25 = v28;
LABEL_45:
            if ([v30 count])
            {
              objc_storeStrong(&v7->_serialNumbers, v30);
            }

            goto LABEL_48;
          }
        }

        v31 = [v4 objectForKeyedSubscript:@"serialNumbers"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v31;
        }

        else
        {
          v25 = 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = 0;
          goto LABEL_45;
        }

        v26 = [MEMORY[0x1E695DFD8] setWithArray:v25];
      }

      v30 = v26;
      goto LABEL_45;
    }
  }

  else
  {

    v6 = 0;
  }

  v10 = 0;
LABEL_49:

  return v10;
}

- (unint64_t)offerType
{
  v2 = [(AMSDeviceOffer *)self offerIdentifier];
  v3 = [v2 lowercaseString];

  v4 = [AMSDeviceOfferIdentifierAppleMusic lowercaseString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = unk_1F07D08C8(AMSDeviceOfferIdentifieriCloud, "lowercaseString");
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [AMSDeviceOfferIdentifierAppleCare lowercaseString];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v11 = [AMSDeviceOfferIdentifierTV lowercaseString];
        v12 = [v3 isEqualToString:v11];

        if (v12)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(AMSDeviceOffer *)self adamId];
  v4 = [v3 hash];
  v5 = [(AMSDeviceOffer *)self description];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(AMSDeviceOffer *)self isDowngrading];
  v8 = [(AMSDeviceOffer *)self isSubscribed];
  v9 = [(AMSDeviceOffer *)self offerIdentifier];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [(AMSDeviceOffer *)self serialNumbers];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v9 = [(AMSDeviceOffer *)self adamId];
    if (v9 || ([(AMSDeviceOffer *)v5 adamId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(AMSDeviceOffer *)self adamId];
      v11 = [(AMSDeviceOffer *)v5 adamId];
      v12 = [v10 isEqual:v11];

      if (v9)
      {

        if (!v12)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v13 = [(AMSDeviceOffer *)self description];
    if (v13 || ([(AMSDeviceOffer *)v5 description], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(AMSDeviceOffer *)self description];
      v15 = [(AMSDeviceOffer *)v5 description];
      v16 = [v14 isEqual:v15];

      if (v13)
      {

        if (!v16)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v16 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v17 = [(AMSDeviceOffer *)self isDowngrading];
    if (v17 != [(AMSDeviceOffer *)v5 isDowngrading])
    {
      goto LABEL_3;
    }

    v18 = [(AMSDeviceOffer *)self isSubscribed];
    if (v18 != [(AMSDeviceOffer *)v5 isSubscribed])
    {
      goto LABEL_3;
    }

    v19 = [(AMSDeviceOffer *)self offerIdentifier];
    if (v19 || ([(AMSDeviceOffer *)v5 offerIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = [(AMSDeviceOffer *)self offerIdentifier];
      v21 = [(AMSDeviceOffer *)v5 offerIdentifier];
      v22 = [v20 isEqual:v21];

      if (v19)
      {

        if (!v22)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v22 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v23 = [(AMSDeviceOffer *)self serialNumbers];
    if (v23 || ([(AMSDeviceOffer *)v5 serialNumbers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = [(AMSDeviceOffer *)self serialNumbers];
      v25 = [(AMSDeviceOffer *)v5 serialNumbers];
      v7 = [v24 isEqual:v25];

      if (v23)
      {
LABEL_32:

        goto LABEL_5;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_32;
  }

LABEL_3:
  v7 = 0;
LABEL_5:

  return v7;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_102 != -1)
  {
    dispatch_once(&_MergedGlobals_102, &__block_literal_global_52);
  }

  v3 = qword_1ED6E28E8;

  return v3;
}

void __31__AMSDeviceOffer_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E28E8;
  qword_1ED6E28E8 = @"AMSDeviceOffers";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E28F0 != -1)
  {
    dispatch_once(&qword_1ED6E28F0, &__block_literal_global_57);
  }

  v3 = qword_1ED6E28F8;

  return v3;
}

void __38__AMSDeviceOffer_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E28F8;
  qword_1ED6E28F8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

@end