@interface AMSFinanceResponse
+ (id)valueForProtocolKey:(id)key inResponse:(id)response;
- (ACAccount)account;
- (AMSFinanceResponse)initWithTaskInfo:(id)info decodedObject:(id)object;
- (BOOL)supportedProtocolVersion;
- (NSArray)actions;
- (NSArray)pingURLs;
- (NSError)serverError;
- (NSURL)versionMismatchURL;
- (id)_performerForActionDictionary;
- (id)_performerForAuthenticate;
- (id)_performerForCreditDisplay;
- (id)_performerForDialog;
- (id)_performerForExpressCheckout;
- (id)_performerForPaymentSheetWithDelegateAuthentication:(BOOL)authentication;
- (id)_valueForProtocolKey:(id)key;
@end

@implementation AMSFinanceResponse

- (BOOL)supportedProtocolVersion
{
  v2 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"store-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"1.0"];
    if (v3 || ([v2 objectForKey:@"*"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      v5 = [v3 objectForKey:@"redirect-url"];
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSArray)actions
{
  dialogKind = [(AMSFinanceResponse *)self dialogKind];
  v4 = 0;
  if (dialogKind <= 4)
  {
    if ((dialogKind - 3) >= 2)
    {
      if (dialogKind != 1)
      {
        if (dialogKind != 2)
        {
          goto LABEL_15;
        }

        _performerForAuthenticate = [(AMSFinanceResponse *)self _performerForAuthenticate];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    selfCopy2 = self;
    v7 = 0;
LABEL_13:
    _performerForAuthenticate = [(AMSFinanceResponse *)selfCopy2 _performerForPaymentSheetWithDelegateAuthentication:v7];
    goto LABEL_14;
  }

  if (dialogKind == 5)
  {
LABEL_10:
    _performerForAuthenticate = [(AMSFinanceResponse *)self _performerForDialog];
    goto LABEL_14;
  }

  if (dialogKind == 6)
  {
    selfCopy2 = self;
    v7 = 1;
    goto LABEL_13;
  }

  if (dialogKind != 7)
  {
    goto LABEL_15;
  }

  _performerForAuthenticate = [(AMSFinanceResponse *)self _performerForExpressCheckout];
LABEL_14:
  v4 = _performerForAuthenticate;
LABEL_15:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 ams_addNullableObject:v4];
  _performerForActionDictionary = [(AMSFinanceResponse *)self _performerForActionDictionary];
  [v8 ams_addNullableObject:_performerForActionDictionary];

  _performerForCreditDisplay = [(AMSFinanceResponse *)self _performerForCreditDisplay];
  [v8 ams_addNullableObject:_performerForCreditDisplay];

  return v8;
}

- (id)_performerForActionDictionary
{
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    v5 = [AMSFinanceActionResponse actionWithActionDictionary:v3 taskInfo:taskInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_performerForCreditDisplay
{
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"creditDisplay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [(AMSFinanceResponse *)self account];
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    v6 = [AMSFinanceActionResponse actionWithUpdatedCreditString:v3 account:account taskInfo:taskInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSError)serverError
{
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"failureType"];
    longLongValue = [v4 longLongValue];

    if (!longLongValue)
    {
      goto LABEL_8;
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
    [v3 setObject:v6 forKeyedSubscript:@"AMSServerErrorCode"];

    v7 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"m-allowed"];
    [v3 setObject:v7 forKeyedSubscript:@"AMSServerAllowed"];

    responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
    [v3 setObject:responseDictionary forKeyedSubscript:@"AMSServerPayload"];

    v9 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"customerMessage"];
    if (![(__CFString *)v9 length])
    {

      v9 = @"The server encountered an error";
    }

    longLongValue = AMSCustomError(@"AMSErrorDomain", 305, @"Server Error", v9, v3, 0);
  }

  else
  {
    longLongValue = 0;
  }

LABEL_8:

  return longLongValue;
}

- (AMSFinanceResponse)initWithTaskInfo:(id)info decodedObject:(id)object
{
  infoCopy = info;
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = AMSFinanceResponse;
  v9 = [(AMSFinanceResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskInfo, info);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objectCopy;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v10->_responseDictionary, v11);
    v10->_dialogKind = [AMSFinanceDialogResponse dialogKindForTaskInfo:v10->_taskInfo withResponseDictionary:v10->_responseDictionary];
  }

  return v10;
}

- (ACAccount)account
{
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"dsPersonId"];
  if (!v3)
  {
    v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"dsid"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "integerValue")}];

    v3 = v4;
  }

  if (v3)
  {
    v5 = MEMORY[0x1E6959A48];
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    properties = [taskInfo properties];
    clientInfo = [properties clientInfo];
    v9 = [v5 ams_sharedAccountStoreForProcessInfo:clientInfo];

    v10 = [v9 ams_iTunesAccountWithDSID:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)pingURLs
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"pings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"ping"];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

    v3 = v5;
  }

  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(*(&v15 + 1) + 8 * i)];
          host = [v12 host];

          if (host)
          {
            [array addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return array;
}

+ (id)valueForProtocolKey:(id)key inResponse:(id)response
{
  keyCopy = key;
  responseCopy = response;
  v7 = [responseCopy objectForKey:@"protocol"];
  v8 = [v7 objectForKey:keyCopy];

  if (!v8)
  {
    v8 = [responseCopy objectForKey:keyCopy];
  }

  return v8;
}

- (NSURL)versionMismatchURL
{
  v2 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"store-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"1.0"];
    if (!v3)
    {
      v3 = [v2 objectForKey:@"*"];
    }

    v4 = [v3 objectForKey:@"redirect-url"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_performerForAuthenticate
{
  cachedAuthenticateResponse = [(AMSFinanceResponse *)self cachedAuthenticateResponse];

  if (cachedAuthenticateResponse)
  {
    cachedAuthenticateResponse2 = [(AMSFinanceResponse *)self cachedAuthenticateResponse];
  }

  else
  {
    if ([(AMSFinanceResponse *)self dialogKind]== 2)
    {
      v5 = [AMSFinanceAuthenticateResponse alloc];
      responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
      taskInfo = [(AMSFinanceResponse *)self taskInfo];
      cachedAuthenticateResponse2 = [(AMSFinanceAuthenticateResponse *)v5 initWithResponseDictionary:responseDictionary taskInfo:taskInfo];
    }

    else
    {
      cachedAuthenticateResponse2 = 0;
    }

    [(AMSFinanceResponse *)self setCachedAuthenticateResponse:cachedAuthenticateResponse2];
  }

  return cachedAuthenticateResponse2;
}

- (id)_performerForDialog
{
  cachedDialogResponse = [(AMSFinanceResponse *)self cachedDialogResponse];

  if (cachedDialogResponse)
  {
    cachedDialogResponse2 = [(AMSFinanceResponse *)self cachedDialogResponse];
    goto LABEL_10;
  }

  dialogKind = [(AMSFinanceResponse *)self dialogKind];
  if (dialogKind == 1)
  {
    v10 = [AMSFinanceDialogResponse alloc];
    responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    v9 = [(AMSFinanceDialogResponse *)v10 initWithResponseDictionary:responseDictionary kind:1 taskInfo:taskInfo];
  }

  else
  {
    if (dialogKind != 5)
    {
      cachedDialogResponse2 = 0;
      goto LABEL_9;
    }

    v6 = [AMSFinanceVerifyPurchaseResponse alloc];
    responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    v9 = [(AMSFinanceVerifyPurchaseResponse *)v6 initWithPayload:responseDictionary taskInfo:taskInfo];
  }

  cachedDialogResponse2 = v9;

LABEL_9:
  [(AMSFinanceResponse *)self setCachedDialogResponse:cachedDialogResponse2];
LABEL_10:

  return cachedDialogResponse2;
}

- (id)_performerForPaymentSheetWithDelegateAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  cachedPaymentSheetResponse = [(AMSFinanceResponse *)self cachedPaymentSheetResponse];

  if (cachedPaymentSheetResponse)
  {
    cachedPaymentSheetResponse = [(AMSFinanceResponse *)self cachedPaymentSheetResponse];
    goto LABEL_12;
  }

  dialogKind = [(AMSFinanceResponse *)self dialogKind];
  if (dialogKind <= 6 && ((1 << dialogKind) & 0x58) != 0)
  {
    v7 = dialogKind == 4;
    v8 = [AMSFinancePaymentSheetResponse alloc];
    responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
    taskInfo = [(AMSFinanceResponse *)self taskInfo];
    cachedPaymentSheetResponse = [(AMSFinancePaymentSheetResponse *)v8 initWithResponseDictionary:responseDictionary confirmationOnly:v7 delegateAuthenticationRequired:authenticationCopy biometricSignatureRequired:1 taskInfo:taskInfo];

    taskInfo2 = [(AMSFinanceResponse *)self taskInfo];
    response = [taskInfo2 response];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = response;

      if (!v13)
      {
LABEL_10:

        goto LABEL_11;
      }

      response = [v13 valueForHTTPHeaderField:@"apple-timing-app"];
      paymentSheetRequest = [(AMSFinancePaymentSheetResponse *)cachedPaymentSheetResponse paymentSheetRequest];
      performanceMetrics = [paymentSheetRequest performanceMetrics];
      [performanceMetrics setPrimaryDataAppleTimingApp:response];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
  [(AMSFinanceResponse *)self setCachedPaymentSheetResponse:cachedPaymentSheetResponse];
LABEL_12:

  return cachedPaymentSheetResponse;
}

- (id)_performerForExpressCheckout
{
  v3 = [AMSFinanceExpressCheckoutResponse alloc];
  responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
  taskInfo = [(AMSFinanceResponse *)self taskInfo];
  v6 = [(AMSFinanceExpressCheckoutResponse *)v3 initWithResponseDictionary:responseDictionary taskInfo:taskInfo];

  return v6;
}

- (id)_valueForProtocolKey:(id)key
{
  keyCopy = key;
  responseDictionary = [(AMSFinanceResponse *)self responseDictionary];
  v6 = [AMSFinanceResponse valueForProtocolKey:keyCopy inResponse:responseDictionary];

  return v6;
}

@end