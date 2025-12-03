@interface AMSEngagementRequest
- (AMSEngagementRequest)init;
- (AMSEngagementRequest)initWithCoder:(id)coder;
- (AMSEngagementRequest)initWithJSONDictionary:(id)dictionary;
- (AMSEngagementRequest)initWithModel:(id)model;
- (AMSEngagementRequest)initWithModel:(id)model destinationStyle:(int64_t)style;
- (AMSEngagementRequest)initWithRequestDictionary:(id)dictionary;
- (id)_accountFromDictionary:(id)dictionary;
- (id)exportObject;
- (id)modelForClass:(Class)class error:(id *)error;
- (int64_t)_engagementPresentationStyleFromDictionary:(id)dictionary;
- (void)applyOverlayMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementRequest

- (AMSEngagementRequest)init
{
  v7.receiver = self;
  v7.super_class = AMSEngagementRequest;
  v2 = [(AMSEngagementRequest *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_anonymousMetrics = 0;
    v4 = AMSLogKey();
    logKey = v3->_logKey;
    v3->_logKey = v4;

    *&v3->_failOnDismiss = 1;
    v3->_suppressInteractiveModalDismissal = 0;
    v3->_destinationStyle = 0;
  }

  return v3;
}

- (AMSEngagementRequest)initWithModel:(id)model
{
  modelCopy = model;
  v5 = [(AMSEngagementRequest *)self init];
  if (v5)
  {
    v6 = [AMSEngagementUtils encodeModel:modelCopy];
    modelData = v5->_modelData;
    v5->_modelData = v6;
  }

  return v5;
}

- (AMSEngagementRequest)initWithModel:(id)model destinationStyle:(int64_t)style
{
  modelCopy = model;
  v7 = [(AMSEngagementRequest *)self init];
  if (v7)
  {
    v8 = [AMSEngagementUtils encodeModel:modelCopy];
    modelData = v7->_modelData;
    v7->_modelData = v8;

    v7->_destinationStyle = style;
  }

  return v7;
}

- (AMSEngagementRequest)initWithRequestDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(AMSEngagementRequest *)self init];
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded(dictionaryCopy);
      *buf = 138543874;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Decoding engagement request from dict: %{public}@", buf, 0x20u);
    }

    account = [dictionaryCopy objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = account;

      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = [(AMSEngagementRequest *)v5 _accountFromDictionary:v12];
      account = v5->_account;
      v5->_account = v13;
    }

    else
    {
      v12 = 0;
    }

LABEL_11:
    v42 = v12;
    clientData = [dictionaryCopy objectForKeyedSubscript:@"clientData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = clientData;

      if (!v15)
      {
        v41 = 0;
LABEL_16:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"failOnDismiss"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;

          if (v18)
          {
            v5->_failOnDismiss = [v18 BOOLValue];
          }
        }

        else
        {

          v18 = 0;
        }

        logKey = [dictionaryCopy objectForKeyedSubscript:@"logKey"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = logKey;

          if (!v20)
          {
            v40 = 0;
LABEL_25:
            metricsOverlay = [dictionaryCopy objectForKeyedSubscript:@"metricsOverlay"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = metricsOverlay;

              if (!v23)
              {
                v24 = 0;
LABEL_30:
                v25 = [dictionaryCopy objectForKeyedSubscript:@"destinationStyle"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v25;

                  if (v26)
                  {
                    v5->_destinationStyle = [v26 integerValue];
                  }
                }

                else
                {

                  v26 = 0;
                }

                originatingURL = [dictionaryCopy objectForKeyedSubscript:@"originatingURL"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = originatingURL;

                  if (!v28)
                  {
                    goto LABEL_39;
                  }

                  v29 = [MEMORY[0x1E695DFF8] URLWithString:v28];
                  originatingURL = v5->_originatingURL;
                  v5->_originatingURL = v29;
                }

                else
                {
                  v28 = 0;
                }

LABEL_39:
                v30 = [dictionaryCopy objectForKeyedSubscript:@"presentationStyle"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v30;

                  if (v31)
                  {
                    v5->_presentationStyle = [v31 integerValue];
                  }
                }

                else
                {

                  v31 = 0;
                }

                v32 = [dictionaryCopy objectForKeyedSubscript:@"silentlyCheckURL"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = v32;

                  if (v33)
                  {
                    v5->_silentlyCheckURL = [v33 BOOLValue];
                  }
                }

                else
                {

                  v33 = 0;
                }

                v34 = [dictionaryCopy objectForKeyedSubscript:@"suppressInteractiveModalDismissal"];
                if (objc_opt_respondsToSelector())
                {
                  v35 = [dictionaryCopy objectForKeyedSubscript:@"suppressInteractiveModalDismissal"];
                  v5->_suppressInteractiveModalDismissal = [v35 BOOLValue];
                }

                else
                {
                  v5->_suppressInteractiveModalDismissal = 0;
                }

                URL = [dictionaryCopy objectForKeyedSubscript:@"URL"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = URL;

                  if (!v37)
                  {
LABEL_55:

                    goto LABEL_56;
                  }

                  v38 = [MEMORY[0x1E695DFF8] URLWithString:v37];
                  URL = v5->_URL;
                  v5->_URL = v38;
                }

                else
                {
                  v37 = 0;
                }

                goto LABEL_55;
              }

              v24 = v23;
              metricsOverlay = v5->_metricsOverlay;
              v5->_metricsOverlay = v24;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_30;
          }

          v21 = v20;
          logKey = v5->_logKey;
          v40 = v21;
          v5->_logKey = v21;
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_25;
      }

      v16 = v15;
      clientData = v5->_clientData;
      v41 = v16;
      v5->_clientData = v16;
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_16;
  }

LABEL_56:

  return v5;
}

- (AMSEngagementRequest)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && [dictionaryCopy count])
  {
    v6 = objc_alloc_init(AMSEngagementRequest);
    v7 = [v5 objectForKeyedSubscript:@"failOnDismiss"];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 objectForKeyedSubscript:@"failOnDismiss"];
      -[AMSEngagementRequest setFailOnDismiss:](v6, "setFailOnDismiss:", [v8 BOOLValue]);
    }

    else
    {
      [(AMSEngagementRequest *)v6 setFailOnDismiss:0];
    }

    v9 = [v5 objectForKeyedSubscript:@"clientData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [(AMSEngagementRequest *)v6 setClientData:v10];
    v11 = [v5 objectForKeyedSubscript:@"metricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [(AMSEngagementRequest *)v6 setMetricsOverlay:v12];
    v13 = [v5 objectForKeyedSubscript:@"destinationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    -[AMSEngagementRequest setDestinationStyle:](v6, "setDestinationStyle:", [v14 integerValue]);
    v15 = [v5 objectForKeyedSubscript:@"suppressInteractiveModalDismissal"];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v5 objectForKeyedSubscript:@"suppressInteractiveModalDismissal"];
      -[AMSEngagementRequest setSuppressInteractiveModalDismissal:](v6, "setSuppressInteractiveModalDismissal:", [v16 BOOLValue]);
    }

    else
    {
      [(AMSEngagementRequest *)v6 setSuppressInteractiveModalDismissal:0];
    }

    [(AMSEngagementRequest *)v6 setPresentationStyle:[(AMSEngagementRequest *)v6 _engagementPresentationStyleFromDictionary:v5]];
    v17 = [v5 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;

      if (!v18)
      {
        goto LABEL_24;
      }

      v17 = [MEMORY[0x1E695DFF8] URLWithString:v18];
      [(AMSEngagementRequest *)v6 setURL:v17];
    }

    else
    {
      v18 = 0;
    }

LABEL_24:
    v19 = [v5 objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = 0;
      goto LABEL_30;
    }

    v20 = v19;

    if (v20)
    {
      v19 = [v20 objectForKeyedSubscript:@"dsid"];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      v21 = [v20 objectForKeyedSubscript:@"dsid"];
      integerValue = [v21 integerValue];

      if (integerValue != -1)
      {
        v23 = MEMORY[0x1E6959A48];
        v24 = +[AMSProcessInfo currentProcess];
        v19 = [v23 ams_sharedAccountStoreForClient:v24];

        v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
        v26 = [v19 ams_iTunesAccountWithDSID:v25];
        [(AMSEngagementRequest *)v6 setAccount:v26];

        goto LABEL_30;
      }
    }

LABEL_31:

    goto LABEL_32;
  }

  v6 = 0;
LABEL_32:

  return v6;
}

- (id)exportObject
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v23[0] = @"failOnDismiss";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementRequest failOnDismiss](self, "failOnDismiss")}];
  v24[0] = v4;
  v23[1] = @"destinationStyle";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSEngagementRequest destinationStyle](self, "destinationStyle")}];
  v24[1] = v5;
  v23[2] = @"suppressInteractiveModalDismissal";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementRequest suppressInteractiveModalDismissal](self, "suppressInteractiveModalDismissal")}];
  v24[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v8 = [v3 dictionaryWithDictionary:v7];

  clientData = [(AMSEngagementRequest *)self clientData];

  if (clientData)
  {
    clientData2 = [(AMSEngagementRequest *)self clientData];
    [v8 setObject:clientData2 forKeyedSubscript:@"clientData"];
  }

  metricsOverlay = [(AMSEngagementRequest *)self metricsOverlay];

  if (metricsOverlay)
  {
    metricsOverlay2 = [(AMSEngagementRequest *)self metricsOverlay];
    [v8 setObject:metricsOverlay2 forKeyedSubscript:@"metricsOverlay"];
  }

  v13 = [(AMSEngagementRequest *)self URL];

  if (v13)
  {
    v14 = [(AMSEngagementRequest *)self URL];
    absoluteString = [v14 absoluteString];
    [v8 setObject:absoluteString forKeyedSubscript:@"url"];
  }

  account = [(AMSEngagementRequest *)self account];

  if (account)
  {
    account2 = [(AMSEngagementRequest *)self account];
    ams_DSID = [account2 ams_DSID];

    if (ams_DSID)
    {
      v21 = @"dsid";
      v22 = ams_DSID;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v8 setObject:v19 forKeyedSubscript:@"account"];
    }
  }

  return v8;
}

- (void)applyOverlayMetrics:(id)metrics
{
  if (self->_metricsOverlay)
  {
    metricsOverlay = self->_metricsOverlay;
  }

  else
  {
    metricsOverlay = MEMORY[0x1E695E0F8];
  }

  self->_metricsOverlay = [(NSDictionary *)metricsOverlay ams_dictionaryByAddingEntriesFromDictionary:metrics];

  MEMORY[0x1EEE66BB8]();
}

- (id)modelForClass:(Class)class error:(id *)error
{
  modelData = [(AMSEngagementRequest *)self modelData];
  v7 = [AMSEngagementUtils modelFromData:modelData class:class error:error];

  return v7;
}

- (id)_accountFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"dsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;

    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "integerValue")}];
      goto LABEL_6;
    }
  }

  else
  {

    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = [dictionaryCopy objectForKeyedSubscript:@"username"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"accountPreSet"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v12 = ams_sharedAccountStore;
  if (v6 | v8)
  {
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_iTunesAccountWithAltDSID:0 DSID:v6 username:v8];
    if (!ams_activeiTunesAccount)
    {
      v14 = [v12 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
      ams_activeiTunesAccount = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v14];
    }

    ams_DSID = [ams_activeiTunesAccount ams_DSID];

    if (!ams_DSID)
    {
      [ams_activeiTunesAccount ams_setDSID:v6];
    }

    username = [ams_activeiTunesAccount username];

    if (!username)
    {
      [ams_activeiTunesAccount setUsername:v8];
    }
  }

  else if ([v10 isEqualToString:@"activeItunes"])
  {
    ams_activeiTunesAccount = [v12 ams_activeiTunesAccount];
  }

  else
  {
    ams_activeiTunesAccount = 0;
  }

  return ams_activeiTunesAccount;
}

- (AMSEngagementRequest)initWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = AMSEngagementRequest;
  v5 = [(AMSEngagementRequest *)&v31 init];
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [coderCopy debugDescription];
      v11 = AMSHashIfNeeded(v10);
      *buf = 138543874;
      v33 = v8;
      v34 = 2114;
      v35 = v9;
      v36 = 2114;
      v37 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Decoding engagement request: %{public}@", buf, 0x20u);
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v12;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v15 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"clientData"];
    clientData = v5->_clientData;
    v5->_clientData = v15;

    v5->_failOnDismiss = [coderCopy decodeBoolForKey:@"failOnDismiss"];
    v5->_suppressInteractiveModalDismissal = [coderCopy decodeBoolForKey:@"suppressInteractiveModalDismissal"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logKey"];
    logKey = v5->_logKey;
    v5->_logKey = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaClientIdentifier"];
    mediaClientIdentifier = v5->_mediaClientIdentifier;
    v5->_mediaClientIdentifier = v19;

    ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v22 = [coderCopy decodeObjectOfClasses:ams_JSONClasses2 forKey:@"metricsOverlay"];
    metricsOverlay = v5->_metricsOverlay;
    v5->_metricsOverlay = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelData"];
    modelData = v5->_modelData;
    v5->_modelData = v24;

    v5->_destinationStyle = [coderCopy decodeIntegerForKey:@"destinationStyle"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingURL"];
    originatingURL = v5->_originatingURL;
    v5->_originatingURL = v26;

    v5->_presentationStyle = [coderCopy decodeIntegerForKey:@"presentationStyle"];
    v5->_silentlyCheckURL = [coderCopy decodeBoolForKey:@"silentlyCheckURL"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSEngagementRequest *)self account];
  [coderCopy encodeObject:account forKey:@"account"];

  clientData = [(AMSEngagementRequest *)self clientData];
  [coderCopy encodeObject:clientData forKey:@"clientData"];

  [coderCopy encodeBool:-[AMSEngagementRequest failOnDismiss](self forKey:{"failOnDismiss"), @"failOnDismiss"}];
  [coderCopy encodeBool:-[AMSEngagementRequest suppressInteractiveModalDismissal](self forKey:{"suppressInteractiveModalDismissal"), @"suppressInteractiveModalDismissal"}];
  logKey = [(AMSEngagementRequest *)self logKey];
  [coderCopy encodeObject:logKey forKey:@"logKey"];

  metricsOverlay = [(AMSEngagementRequest *)self metricsOverlay];
  [coderCopy encodeObject:metricsOverlay forKey:@"metricsOverlay"];

  modelData = [(AMSEngagementRequest *)self modelData];
  [coderCopy encodeObject:modelData forKey:@"modelData"];

  [coderCopy encodeInteger:-[AMSEngagementRequest destinationStyle](self forKey:{"destinationStyle"), @"destinationStyle"}];
  originatingURL = [(AMSEngagementRequest *)self originatingURL];
  [coderCopy encodeObject:originatingURL forKey:@"originatingURL"];

  [coderCopy encodeInteger:-[AMSEngagementRequest presentationStyle](self forKey:{"presentationStyle"), @"presentationStyle"}];
  [coderCopy encodeBool:-[AMSEngagementRequest silentlyCheckURL](self forKey:{"silentlyCheckURL"), @"silentlyCheckURL"}];
  mediaClientIdentifier = [(AMSEngagementRequest *)self mediaClientIdentifier];
  [coderCopy encodeObject:mediaClientIdentifier forKey:@"mediaClientIdentifier"];

  v12 = [(AMSEngagementRequest *)self URL];
  [coderCopy encodeObject:v12 forKey:@"URL"];
}

- (int64_t)_engagementPresentationStyleFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy valueForKey:@"style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;

    if (v5)
    {
LABEL_7:
      if (_MergedGlobals_108 != -1)
      {
        dispatch_once(&_MergedGlobals_108, &__block_literal_global_51);
      }

      v6 = [qword_1ED6E2998 valueForKey:v5];
      v7 = v6;
      if (v6)
      {
        integerValue = [v6 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v5 = [dictionaryCopy valueForKeyPath:@"clientData.style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v5;

    if (!v5)
    {
      integerValue = 0;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  integerValue = 0;
LABEL_14:

LABEL_15:
  return integerValue;
}

void __67__AMSEngagementRequest__engagementPresentationStyleFromDictionary___block_invoke()
{
  v0 = qword_1ED6E2998;
  qword_1ED6E2998 = &unk_1F0779D30;
}

@end