@interface AMSBuyParams
+ (AMSBuyParams)buyParamsWithString:(id)string;
- (AMSBuyParams)init;
- (AMSBuyParams)initWithArray:(id)array;
- (AMSBuyParams)initWithCoder:(id)coder;
- (AMSBuyParams)initWithString:(id)string;
- (BOOL)containsKey:(id)key;
- (BOOL)isFreeTrial;
- (NSDictionary)dictionary;
- (NSDictionary)normalizedDictionary;
- (double)price;
- (id)_convertParsedBuyParamIfNeeded:(id)needed;
- (id)_normalizedDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryForFPDI;
- (id)parameterForKey:(id)key;
- (id)requestDataWithError:(id *)error;
- (id)stringValue;
- (void)_parseBuyParams:(id)params;
- (void)_parseBuyParamsArray:(id)array;
- (void)addBlindedSignature:(id)signature;
- (void)encodeWithCoder:(id)coder;
- (void)setParameter:(id)parameter forKey:(id)key;
@end

@implementation AMSBuyParams

- (id)dictionaryForFPDI
{
  selfCopy = self;
  v3 = AMSBuyParams.dictionaryForFPDI()();

  if (v3)
  {
    v4 = sub_192F9667C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (AMSBuyParams)buyParamsWithString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(objc_opt_class()) initWithString:stringCopy];

  return v4;
}

- (AMSBuyParams)init
{
  v6.receiver = self;
  v6.super_class = AMSBuyParams;
  v2 = [(AMSBuyParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;
  }

  return v2;
}

- (AMSBuyParams)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = [(AMSBuyParams *)self init];
  v6 = v5;
  if (v5)
  {
    [(AMSBuyParams *)v5 _parseBuyParamsArray:arrayCopy];
  }

  return v6;
}

- (AMSBuyParams)initWithString:(id)string
{
  stringCopy = string;
  v5 = [(AMSBuyParams *)self init];
  v6 = v5;
  if (v5)
  {
    [(AMSBuyParams *)v5 _parseBuyParams:stringCopy];
  }

  return v6;
}

- (NSDictionary)normalizedDictionary
{
  _normalizedDictionary = [(AMSBuyParams *)self _normalizedDictionary];
  v3 = [_normalizedDictionary copy];

  return v3;
}

- (void)addBlindedSignature:(id)signature
{
  v14 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = @"buySignatures";
    }

    else
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_8:
        [(AMSBuyParams *)self setParameter:0 forKey:@"sendBlindedData"];
        goto LABEL_14;
      }

      v5 = @"buyTokens";
    }

    [(AMSBuyParams *)self setParameter:signatureCopy forKey:v5];
    goto LABEL_8;
  }

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%@] Blinded signature of unexpected data type", &v10, 0x16u);
  }

LABEL_14:
}

- (BOOL)containsKey:(id)key
{
  backingDictionary = self->_backingDictionary;
  keyCopy = key;
  allKeys = [(NSMutableDictionary *)backingDictionary allKeys];
  v6 = [allKeys containsObject:keyCopy];

  return v6;
}

- (BOOL)isFreeTrial
{
  v2 = [(AMSBuyParams *)self objectForKeyedSubscript:@"offrd-free-trial"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  lowercaseString = [v3 lowercaseString];
  v5 = [lowercaseString isEqualToString:@"true"];

  return v5;
}

- (double)price
{
  v2 = [(AMSBuyParams *)self objectForKeyedSubscript:@"price"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if ([v3 length])
  {
    if (_MergedGlobals_91 != -1)
    {
      dispatch_once(&_MergedGlobals_91, &__block_literal_global_22);
    }

    v4 = [qword_1ED6E27D8 numberFromString:v3];
    v5 = v4;
    if (v4)
    {
      [v4 doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 9.22337204e18;
    }
  }

  else
  {
    v7 = 9.22337204e18;
  }

  return v7;
}

void __21__AMSBuyParams_price__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v0 setNumberStyle:1];
  v1 = qword_1ED6E27D8;
  qword_1ED6E27D8 = v0;
}

- (NSDictionary)dictionary
{
  v2 = [(NSMutableDictionary *)self->_backingDictionary copy];

  return v2;
}

- (id)parameterForKey:(id)key
{
  if (key)
  {
    v4 = [(NSMutableDictionary *)self->_backingDictionary valueForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setParameter:(id)parameter forKey:(id)key
{
  if (key)
  {
    [(NSMutableDictionary *)self->_backingDictionary setValue:parameter forKey:?];
  }
}

- (id)requestDataWithError:(id *)error
{
  v4 = MEMORY[0x1E696AE40];
  _normalizedDictionary = [(AMSBuyParams *)self _normalizedDictionary];
  v6 = [v4 dataWithPropertyList:_normalizedDictionary format:100 options:0 error:error];

  return v6;
}

- (id)stringValue
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _normalizedDictionary = [(AMSBuyParams *)self _normalizedDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __27__AMSBuyParams_stringValue__block_invoke;
  v9[3] = &unk_1E73B55D8;
  v10 = v3;
  v5 = v3;
  [_normalizedDictionary enumerateKeysAndObjectsUsingBlock:v9];

  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v6 setQueryItems:v5];
  percentEncodedQuery = [v6 percentEncodedQuery];

  return percentEncodedQuery;
}

void __27__AMSBuyParams_stringValue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
LABEL_6:
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 base64EncodedStringWithOptions:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8];
  }

  v9 = v10;
LABEL_14:
  v11 = [MEMORY[0x1E696AF60] queryItemWithName:v7 value:v9];
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = [(NSMutableDictionary *)self->_backingDictionary mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (id)_convertParsedBuyParamIfNeeded:(id)needed
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ((![neededCopy hasPrefix:{@"(", "hasSuffix:", @")"}] == 0) && (!objc_msgSend(neededCopy, "hasPrefix:", @"{") || !objc_msgSend(neededCopy, "hasSuffix:", @"}")))
  {
    goto LABEL_21;
  }

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v4 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v4, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v11 = ;
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = neededCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing buyParams object value: %@", buf, 0x16u);
    if (v8)
    {

      v11 = v3;
    }
  }

  v12 = [neededCopy dataUsingEncoding:4];
  v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:0];
  if (!v13)
  {

LABEL_21:
    v13 = neededCopy;
    goto LABEL_27;
  }

  v14 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = AMSLogKey();
    v17 = MEMORY[0x1E696AEC0];
    if (v16)
    {
      v18 = objc_opt_class();
      v4 = AMSLogKey();
      [v17 stringWithFormat:@"%@: [%@] ", v18, v4];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
    }
    v19 = ;
    *buf = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = neededCopy;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Deserialized buyParam object value to: %@", buf, 0x16u);
    if (v16)
    {

      v19 = v4;
    }
  }

LABEL_27:

  return v13;
}

- (id)_normalizedDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  backingDictionary = self->_backingDictionary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AMSBuyParams__normalizedDictionary__block_invoke;
  v7[3] = &unk_1E73B55D8;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)backingDictionary enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __37__AMSBuyParams__normalizedDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 base64EncodedStringWithOptions:0];

    v5 = v6;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
}

- (void)_parseBuyParamsArray:(id)array
{
  v63 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v6 = 0x1E73B0000uLL;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = v11;
    if (v9)
    {
      v3 = AMSLogKey();
      [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
    }

    else
    {
      [v10 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = AMSHashIfNeeded(arrayCopy);
    *buf = 138543618;
    v60 = v13;
    v61 = 2112;
    v62 = v14;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing buyParams array: %@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }

    v6 = 0x1E73B0000uLL;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = arrayCopy;
  v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v54 + 1) + 8 * i);
        v20 = [v19 rangeOfString:@"="];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = +[AMSUnitTests isRunningUnitTests];
          sharedPurchaseConfig = [*(v6 + 3552) sharedPurchaseConfig];
          sharedConfig = sharedPurchaseConfig;
          if (v22)
          {
            if (!sharedPurchaseConfig)
            {
              sharedConfig = [*(v6 + 3552) sharedConfig];
            }

            oSLogObject2 = [sharedConfig OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v26 = AMSLogKey();
              v27 = MEMORY[0x1E696AEC0];
              v28 = objc_opt_class();
              v29 = v28;
              if (v26)
              {
                v50 = AMSLogKey();
                v30 = [v27 stringWithFormat:@"%@: [%@] ", v29, v50];
                v48 = v30;
                v31 = v52;
              }

              else
              {
                v30 = [v27 stringWithFormat:@"%@: ", v28];
                v31 = v30;
              }

              v43 = AMSHashIfNeeded(v19);
              *buf = 138543618;
              v60 = v30;
              v61 = 2114;
              v62 = v43;
              _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Malformed buy param: %{public}@", buf, 0x16u);
              v52 = v31;
              v44 = v31;
              v6 = 0x1E73B0000uLL;
              if (v26)
              {

                v44 = v50;
              }
            }

            sharedConfig = [MEMORY[0x1E696AD88] defaultCenter];
            sharedPurchaseConfig2 = [*(v6 + 3552) sharedPurchaseConfig];
            [sharedConfig postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:sharedPurchaseConfig2 userInfo:0];
          }

          else
          {
            if (!sharedPurchaseConfig)
            {
              sharedConfig = [*(v6 + 3552) sharedConfig];
            }

            sharedPurchaseConfig2 = [sharedConfig OSLogObject];
            if (os_log_type_enabled(sharedPurchaseConfig2, OS_LOG_TYPE_FAULT))
            {
              v37 = AMSLogKey();
              v38 = MEMORY[0x1E696AEC0];
              v39 = objc_opt_class();
              v40 = v39;
              if (v37)
              {
                v49 = AMSLogKey();
                v41 = [v38 stringWithFormat:@"%@: [%@] ", v40, v49];
                v47 = v41;
                v42 = v51;
              }

              else
              {
                v41 = [v38 stringWithFormat:@"%@: ", v39];
                v42 = v41;
              }

              v45 = AMSHashIfNeeded(v19);
              *buf = 138543618;
              v60 = v41;
              v61 = 2114;
              v62 = v45;
              _os_log_impl(&dword_192869000, sharedPurchaseConfig2, OS_LOG_TYPE_FAULT, "%{public}@Malformed buy param: %{public}@", buf, 0x16u);
              v51 = v42;
              v46 = v42;
              v6 = 0x1E73B0000;
              if (v37)
              {

                v46 = v49;
              }
            }
          }
        }

        else
        {
          v32 = v20;
          v33 = v21;
          sharedConfig = [v19 substringToIndex:v20];
          v34 = [v19 substringFromIndex:v32 + v33];
          sharedPurchaseConfig2 = [v34 stringByRemovingPercentEncoding];

          v36 = [(AMSBuyParams *)self _convertParsedBuyParamIfNeeded:sharedPurchaseConfig2];
          [(NSMutableDictionary *)self->_backingDictionary setObject:v36 forKeyedSubscript:sharedConfig];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v16);
  }
}

- (void)_parseBuyParams:(id)params
{
  v31 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  v5 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v11 = AMSLogKey();
      v12 = [v8 stringWithFormat:@"%@: [%@] ", v10, v11];
    }

    else
    {
      v12 = [v8 stringWithFormat:@"%@: ", v9];
      v11 = v12;
    }

    v13 = AMSHashIfNeeded(paramsCopy);
    *buf = 138543618;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing buyParams string: %@", buf, 0x16u);
    if (v7)
    {
    }
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v14 setPercentEncodedQuery:paramsCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  queryItems = [v14 queryItems];
  v16 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(queryItems);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        name = [v19 name];
        if ([name length])
        {
          value = [v19 value];
          if (value)
          {
            [(NSMutableDictionary *)self->_backingDictionary setObject:value forKeyedSubscript:name];
          }
        }
      }

      v16 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(AMSBuyParams *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"kCodingKeyBuyParamsString"];
}

- (AMSBuyParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyBuyParamsString"];

  v6 = [(AMSBuyParams *)self initWithString:v5];
  return v6;
}

@end