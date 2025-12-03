@interface AMSDeviceOffer
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)offersSetFromArray:(id)array;
- (AMSDeviceOffer)initWithDictionary:(id)dictionary;
- (AMSDeviceOffer)initWithOfferIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (unint64_t)offerType;
@end

@implementation AMSDeviceOffer

+ (id)offersSetFromArray:(id)array
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [array ams_mapWithTransformIgnoresNil:&__block_literal_global_40];
  v5 = [v3 setWithArray:v4];

  return v5;
}

AMSDeviceOffer *__37__AMSDeviceOffer_offersSetFromArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  return v3;
}

- (AMSDeviceOffer)initWithOfferIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = AMSDeviceOffer;
  v5 = [(AMSDeviceOffer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    adamId = v5->_adamId;
    v5->_adamId = &unk_1F0779430;

    v8 = [identifierCopy copy];
    offerIdentifier = v6->_offerIdentifier;
    v6->_offerIdentifier = v8;
  }

  return v6;
}

- (AMSDeviceOffer)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"offerIdentifier"];
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
        selfCopy = self;
        goto LABEL_49;
      }

      v8 = [dictionaryCopy objectForKeyedSubscript:@"adamId"];
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

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138543362;
        *&v33[4] = objc_opt_class();
        v13 = *&v33[4];
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: No adamId found in initializer dictionary, setting to 0", v33, 0xCu);
      }

      v9 = &unk_1F0779430;
LABEL_15:
      objc_storeStrong(&v7->_adamId, v9);
      v14 = [dictionaryCopy objectForKeyedSubscript:@"description"];
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

      v17 = [dictionaryCopy objectForKeyedSubscript:@"isDowngrading"];
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
      v19 = [dictionaryCopy objectForKeyedSubscript:@"dsid"];
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

      v22 = [dictionaryCopy objectForKeyedSubscript:@"isSubscribed"];
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
      v24 = [dictionaryCopy objectForKeyedSubscript:@"serialNumber"];
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
        v27 = [dictionaryCopy objectForKeyedSubscript:{@"serialNumber", *v33}];
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

        v31 = [dictionaryCopy objectForKeyedSubscript:@"serialNumbers"];
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

  selfCopy = 0;
LABEL_49:

  return selfCopy;
}

- (unint64_t)offerType
{
  offerIdentifier = [(AMSDeviceOffer *)self offerIdentifier];
  lowercaseString = [offerIdentifier lowercaseString];

  lowercaseString2 = [AMSDeviceOfferIdentifierAppleMusic lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = unk_1F07D08C8(AMSDeviceOfferIdentifieriCloud, "lowercaseString");
    v8 = [lowercaseString isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString3 = [AMSDeviceOfferIdentifierAppleCare lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString3];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        lowercaseString4 = [AMSDeviceOfferIdentifierTV lowercaseString];
        v12 = [lowercaseString isEqualToString:lowercaseString4];

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
  adamId = [(AMSDeviceOffer *)self adamId];
  v4 = [adamId hash];
  v5 = [(AMSDeviceOffer *)self description];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(AMSDeviceOffer *)self isDowngrading];
  isSubscribed = [(AMSDeviceOffer *)self isSubscribed];
  offerIdentifier = [(AMSDeviceOffer *)self offerIdentifier];
  v10 = v7 ^ isSubscribed ^ [offerIdentifier hash];
  serialNumbers = [(AMSDeviceOffer *)self serialNumbers];
  v12 = [serialNumbers hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    adamId = [(AMSDeviceOffer *)self adamId];
    if (adamId || ([(AMSDeviceOffer *)equalCopy adamId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      adamId2 = [(AMSDeviceOffer *)self adamId];
      adamId3 = [(AMSDeviceOffer *)equalCopy adamId];
      v12 = [adamId2 isEqual:adamId3];

      if (adamId)
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
    if (v13 || ([(AMSDeviceOffer *)equalCopy description], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(AMSDeviceOffer *)self description];
      v15 = [(AMSDeviceOffer *)equalCopy description];
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

    isDowngrading = [(AMSDeviceOffer *)self isDowngrading];
    if (isDowngrading != [(AMSDeviceOffer *)equalCopy isDowngrading])
    {
      goto LABEL_3;
    }

    isSubscribed = [(AMSDeviceOffer *)self isSubscribed];
    if (isSubscribed != [(AMSDeviceOffer *)equalCopy isSubscribed])
    {
      goto LABEL_3;
    }

    offerIdentifier = [(AMSDeviceOffer *)self offerIdentifier];
    if (offerIdentifier || ([(AMSDeviceOffer *)equalCopy offerIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      offerIdentifier2 = [(AMSDeviceOffer *)self offerIdentifier];
      offerIdentifier3 = [(AMSDeviceOffer *)equalCopy offerIdentifier];
      v22 = [offerIdentifier2 isEqual:offerIdentifier3];

      if (offerIdentifier)
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

    serialNumbers = [(AMSDeviceOffer *)self serialNumbers];
    if (serialNumbers || ([(AMSDeviceOffer *)equalCopy serialNumbers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      serialNumbers2 = [(AMSDeviceOffer *)self serialNumbers];
      serialNumbers3 = [(AMSDeviceOffer *)equalCopy serialNumbers];
      v7 = [serialNumbers2 isEqual:serialNumbers3];

      if (serialNumbers)
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
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end