@interface AMSFinanceResponse
+ (id)valueForProtocolKey:(id)a3 inResponse:(id)a4;
- (ACAccount)account;
- (AMSFinanceResponse)initWithTaskInfo:(id)a3 decodedObject:(id)a4;
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
- (id)_performerForPaymentSheetWithDelegateAuthentication:(BOOL)a3;
- (id)_valueForProtocolKey:(id)a3;
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
  v3 = [(AMSFinanceResponse *)self dialogKind];
  v4 = 0;
  if (v3 <= 4)
  {
    if ((v3 - 3) >= 2)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_15;
        }

        v5 = [(AMSFinanceResponse *)self _performerForAuthenticate];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v6 = self;
    v7 = 0;
LABEL_13:
    v5 = [(AMSFinanceResponse *)v6 _performerForPaymentSheetWithDelegateAuthentication:v7];
    goto LABEL_14;
  }

  if (v3 == 5)
  {
LABEL_10:
    v5 = [(AMSFinanceResponse *)self _performerForDialog];
    goto LABEL_14;
  }

  if (v3 == 6)
  {
    v6 = self;
    v7 = 1;
    goto LABEL_13;
  }

  if (v3 != 7)
  {
    goto LABEL_15;
  }

  v5 = [(AMSFinanceResponse *)self _performerForExpressCheckout];
LABEL_14:
  v4 = v5;
LABEL_15:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 ams_addNullableObject:v4];
  v9 = [(AMSFinanceResponse *)self _performerForActionDictionary];
  [v8 ams_addNullableObject:v9];

  v10 = [(AMSFinanceResponse *)self _performerForCreditDisplay];
  [v8 ams_addNullableObject:v10];

  return v8;
}

- (id)_performerForActionDictionary
{
  v3 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AMSFinanceResponse *)self taskInfo];
    v5 = [AMSFinanceActionResponse actionWithActionDictionary:v3 taskInfo:v4];
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
    v4 = [(AMSFinanceResponse *)self account];
    v5 = [(AMSFinanceResponse *)self taskInfo];
    v6 = [AMSFinanceActionResponse actionWithUpdatedCreditString:v3 account:v4 taskInfo:v5];
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
    v5 = [v4 longLongValue];

    if (!v5)
    {
      goto LABEL_8;
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v3 setObject:v6 forKeyedSubscript:@"AMSServerErrorCode"];

    v7 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"m-allowed"];
    [v3 setObject:v7 forKeyedSubscript:@"AMSServerAllowed"];

    v8 = [(AMSFinanceResponse *)self responseDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"AMSServerPayload"];

    v9 = [(AMSFinanceResponse *)self _valueForProtocolKey:@"customerMessage"];
    if (![(__CFString *)v9 length])
    {

      v9 = @"The server encountered an error";
    }

    v5 = AMSCustomError(@"AMSErrorDomain", 305, @"Server Error", v9, v3, 0);
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (AMSFinanceResponse)initWithTaskInfo:(id)a3 decodedObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AMSFinanceResponse;
  v9 = [(AMSFinanceResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskInfo, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v8;
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
    v6 = [(AMSFinanceResponse *)self taskInfo];
    v7 = [v6 properties];
    v8 = [v7 clientInfo];
    v9 = [v5 ams_sharedAccountStoreForProcessInfo:v8];

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

  v6 = [MEMORY[0x1E695DF70] array];
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
          v13 = [v12 host];

          if (v13)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (id)valueForProtocolKey:(id)a3 inResponse:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"protocol"];
  v8 = [v7 objectForKey:v5];

  if (!v8)
  {
    v8 = [v6 objectForKey:v5];
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
  v3 = [(AMSFinanceResponse *)self cachedAuthenticateResponse];

  if (v3)
  {
    v4 = [(AMSFinanceResponse *)self cachedAuthenticateResponse];
  }

  else
  {
    if ([(AMSFinanceResponse *)self dialogKind]== 2)
    {
      v5 = [AMSFinanceAuthenticateResponse alloc];
      v6 = [(AMSFinanceResponse *)self responseDictionary];
      v7 = [(AMSFinanceResponse *)self taskInfo];
      v4 = [(AMSFinanceAuthenticateResponse *)v5 initWithResponseDictionary:v6 taskInfo:v7];
    }

    else
    {
      v4 = 0;
    }

    [(AMSFinanceResponse *)self setCachedAuthenticateResponse:v4];
  }

  return v4;
}

- (id)_performerForDialog
{
  v3 = [(AMSFinanceResponse *)self cachedDialogResponse];

  if (v3)
  {
    v4 = [(AMSFinanceResponse *)self cachedDialogResponse];
    goto LABEL_10;
  }

  v5 = [(AMSFinanceResponse *)self dialogKind];
  if (v5 == 1)
  {
    v10 = [AMSFinanceDialogResponse alloc];
    v7 = [(AMSFinanceResponse *)self responseDictionary];
    v8 = [(AMSFinanceResponse *)self taskInfo];
    v9 = [(AMSFinanceDialogResponse *)v10 initWithResponseDictionary:v7 kind:1 taskInfo:v8];
  }

  else
  {
    if (v5 != 5)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v6 = [AMSFinanceVerifyPurchaseResponse alloc];
    v7 = [(AMSFinanceResponse *)self responseDictionary];
    v8 = [(AMSFinanceResponse *)self taskInfo];
    v9 = [(AMSFinanceVerifyPurchaseResponse *)v6 initWithPayload:v7 taskInfo:v8];
  }

  v4 = v9;

LABEL_9:
  [(AMSFinanceResponse *)self setCachedDialogResponse:v4];
LABEL_10:

  return v4;
}

- (id)_performerForPaymentSheetWithDelegateAuthentication:(BOOL)a3
{
  v3 = a3;
  v5 = [(AMSFinanceResponse *)self cachedPaymentSheetResponse];

  if (v5)
  {
    v5 = [(AMSFinanceResponse *)self cachedPaymentSheetResponse];
    goto LABEL_12;
  }

  v6 = [(AMSFinanceResponse *)self dialogKind];
  if (v6 <= 6 && ((1 << v6) & 0x58) != 0)
  {
    v7 = v6 == 4;
    v8 = [AMSFinancePaymentSheetResponse alloc];
    v9 = [(AMSFinanceResponse *)self responseDictionary];
    v10 = [(AMSFinanceResponse *)self taskInfo];
    v5 = [(AMSFinancePaymentSheetResponse *)v8 initWithResponseDictionary:v9 confirmationOnly:v7 delegateAuthenticationRequired:v3 biometricSignatureRequired:1 taskInfo:v10];

    v11 = [(AMSFinanceResponse *)self taskInfo];
    v12 = [v11 response];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;

      if (!v13)
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = [v13 valueForHTTPHeaderField:@"apple-timing-app"];
      v14 = [(AMSFinancePaymentSheetResponse *)v5 paymentSheetRequest];
      v15 = [v14 performanceMetrics];
      [v15 setPrimaryDataAppleTimingApp:v12];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
  [(AMSFinanceResponse *)self setCachedPaymentSheetResponse:v5];
LABEL_12:

  return v5;
}

- (id)_performerForExpressCheckout
{
  v3 = [AMSFinanceExpressCheckoutResponse alloc];
  v4 = [(AMSFinanceResponse *)self responseDictionary];
  v5 = [(AMSFinanceResponse *)self taskInfo];
  v6 = [(AMSFinanceExpressCheckoutResponse *)v3 initWithResponseDictionary:v4 taskInfo:v5];

  return v6;
}

- (id)_valueForProtocolKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSFinanceResponse *)self responseDictionary];
  v6 = [AMSFinanceResponse valueForProtocolKey:v4 inResponse:v5];

  return v6;
}

@end