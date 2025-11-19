@interface AMSPurchaseRequestEncoder
+ (id)_bagURLKeysForPurchaseType:(int64_t)a3 withProductType:(id)a4 purchase:(id)a5 prefix:(id)a6;
+ (id)_bagURLKeysFromPurchaseInfo:(id)a3;
+ (id)_buyProductURLKeysForProductType:(id)a3 prefix:(id)a4;
+ (id)_parametersFromPurchaseInfo:(id)a3;
+ (id)bagURLFromPurchaseInfo:(id)a3 bag:(id)a4;
+ (id)configureRequest:(id)a3 purchaseInfo:(id)a4 bag:(id)a5;
+ (int64_t)_anisetteTypeFromAccount:(id)a3;
- (AMSPurchaseRequestEncoder)initWithPurchaseInfo:(id)a3;
- (AMSPurchaseRequestEncoder)initWithPurchaseInfo:(id)a3 bag:(id)a4;
- (id)encodeRequest;
@end

@implementation AMSPurchaseRequestEncoder

- (AMSPurchaseRequestEncoder)initWithPurchaseInfo:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSPurchaseRequestEncoder;
  v6 = [(AMSURLRequestEncoder *)&v11 initWithBag:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseInfo, a3);
    v8 = dispatch_queue_create("com.apple.PurchaseRequest", 0);
    purchaseRequestQueue = v7->_purchaseRequestQueue;
    v7->_purchaseRequestQueue = v8;
  }

  return v7;
}

- (AMSPurchaseRequestEncoder)initWithPurchaseInfo:(id)a3 bag:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v18.receiver = self;
  v18.super_class = AMSPurchaseRequestEncoder;
  v8 = [(AMSURLRequestEncoder *)&v18 initWithBag:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_purchaseInfo, a3);
    v10 = dispatch_queue_create("com.apple.PurchaseRequest", 0);
    purchaseRequestQueue = v9->_purchaseRequestQueue;
    v9->_purchaseRequestQueue = v10;

    v12 = [(AMSPurchaseRequestEncoder *)v9 purchaseInfo];
    v13 = [v12 purchase];
    v14 = [v13 buyParams];
    v15 = [v14 objectForKeyedSubscript:0x1F0722118];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;

      if (!v16)
      {
LABEL_7:

        goto LABEL_8;
      }

      v19 = @"purchaseProductType";
      v20[0] = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [(AMSURLRequestEncoder *)v9 setAdditionalMetrics:v15];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

+ (id)configureRequest:(id)a3 purchaseInfo:(id)a4 bag:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 purchase];
    v14 = [v13 logUUID];
    v15 = a1;
    v16 = MEMORY[0x1E696AEC0];
    v43 = v15;
    v17 = objc_opt_class();
    v18 = v17;
    if (v14)
    {
      v5 = [v10 purchase];
      v6 = [v5 logUUID];
      [v16 stringWithFormat:@"%@: [%@] ", v18, v6];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v17];
    }
    v19 = ;
    *buf = 138543362;
    v54 = v19;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Configuring request", buf, 0xCu);
    if (v14)
    {

      v19 = v5;
    }

    a1 = v43;
  }

  [v9 setHTTPMethod:@"POST"];
  v20 = [v10 account];
  if (v20)
  {
    v21 = v20;
    v22 = [v10 account];
    v23 = [v22 ams_isEphemeralAccount];

    if ((v23 & 1) == 0)
    {
      v24 = [v10 account];
      [v9 ams_addXTokenHeaderWithAccount:v24];
    }
  }

  v25 = [v10 additionalHeaders];

  if (v25)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v26 = [v10 additionalHeaders];
    v27 = [v26 keyEnumerator];

    v28 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v48 + 1) + 8 * i);
          v33 = [v10 additionalHeaders];
          v34 = [v33 objectForKeyedSubscript:v32];
          [v9 setValue:v34 forHTTPHeaderField:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v29);
    }
  }

  v35 = [v10 purchase];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v37 = AMSError(10, @"Presentation failed for SiWA purchase task", @"The currently implementation does not support payment sheet on SiWA purchase task.", 0);
    v38 = [AMSBinaryPromise promiseWithError:v37];
  }

  else
  {
    v38 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __63__AMSPurchaseRequestEncoder_configureRequest_purchaseInfo_bag___block_invoke;
  v44[3] = &unk_1E73BB300;
  v46 = v9;
  v47 = a1;
  v45 = v10;
  v39 = v9;
  v40 = v10;
  v41 = [v38 continueWithBlock:v44];

  return v41;
}

id __63__AMSPurchaseRequestEncoder_configureRequest_purchaseInfo_bag___block_invoke(id *a1, char a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
      v14 = AMSLogableError(v6);
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to add payment hardware status headers. error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = v3;
      }
    }
  }

  v15 = [a1[6] _parametersFromPurchaseInfo:a1[4]];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__AMSPurchaseRequestEncoder_configureRequest_purchaseInfo_bag___block_invoke_24;
  v18[3] = &unk_1E73BB2D8;
  v19 = a1[4];
  v20 = a1[5];
  v16 = [v15 continueWithBinaryPromiseBlock:v18];

  return v16;
}

id __63__AMSPurchaseRequestEncoder_configureRequest_purchaseInfo_bag___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 purchase];
  if ([v8 useJSONContentType])
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(a1 + 40);
  v15 = v6;
  v11 = [v10 ams_setBodyParameters:v7 encoding:v9 compressBody:0 error:&v15];

  v12 = v15;
  if (v11)
  {
    +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    [AMSBinaryPromise promiseWithError:v12];
  }
  v13 = ;

  return v13;
}

- (id)encodeRequest
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@encodeRequest invoked", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = objc_alloc_init(AMSMutablePromise);
  v12 = [(AMSPurchaseRequestEncoder *)self purchaseRequestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke;
  block[3] = &unk_1E73B3DE0;
  block[4] = self;
  v13 = v11;
  v18 = v13;
  dispatch_async(v12, block);

  v14 = v18;
  v15 = v13;

  return v13;
}

void __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    *buf = 138543362;
    v44 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting to encode request", buf, 0xCu);
    if (v5)
    {

      v9 = v1;
    }
  }

  v10 = [*(a1 + 32) purchaseInfo];
  v11 = [v10 clientInfo];
  [*(a1 + 32) setClientInfo:v11];

  v12 = [*(a1 + 32) purchaseInfo];
  v13 = [v12 purchase];
  if ([v13 useJSONContentType])
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [*(a1 + 32) setRequestEncoding:v14];

  v15 = [*(a1 + 32) purchaseInfo];
  v16 = [v15 purchase];
  v17 = [v16 logUUID];
  [*(a1 + 32) setLogUUID:v17];

  v18 = [*(a1 + 32) purchaseInfo];
  v19 = [v18 account];
  [*(a1 + 32) setAnisetteType:{+[AMSPurchaseRequestEncoder _anisetteTypeFromAccount:](AMSPurchaseRequestEncoder, "_anisetteTypeFromAccount:", v19)}];

  v20 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v20 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  [(AMSKeychainOptions *)v20 setPurpose:0];
  [*(a1 + 32) setKeychainOptions:v20];
  v21 = [*(a1 + 32) purchaseInfo];
  v22 = [v21 purchase];
  v23 = [v22 isUserInitiated];

  if ((v23 & 1) == 0)
  {
    [*(a1 + 32) setDialogOptions:1];
  }

  v24 = [*(a1 + 32) purchaseInfo];
  v25 = [v24 account];

  if (v25)
  {
    v26 = [*(a1 + 32) purchaseInfo];
    v27 = [v26 purchase];
    v28 = [v27 storefront];

    if (v28)
    {
      v29 = [*(a1 + 32) purchaseInfo];
      v30 = [v29 account];
      v31 = [*(a1 + 32) purchaseInfo];
      v32 = [v31 purchase];
      v33 = [v32 storefront];
      [v30 ams_setStorefront:v33];
    }

    v34 = [*(a1 + 32) purchaseInfo];
    v35 = [v34 account];
    [*(a1 + 32) setAccount:v35];
  }

  v36 = objc_opt_class();
  v37 = [*(a1 + 32) purchaseInfo];
  v38 = [*(a1 + 32) bag];
  v39 = [v36 bagURLFromPurchaseInfo:v37 bag:v38];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke_30;
  v41[3] = &unk_1E73BB350;
  v40 = *(a1 + 40);
  v41[4] = *(a1 + 32);
  v42 = v40;
  [v39 addFinishBlock:v41];
}

void __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    if (!v6)
    {
      v8 = [[AMSURLRequest alloc] initWithURL:v5];
      v9 = [*(a1 + 32) purchaseInfo];
      v10 = [(AMSURLRequest *)v8 properties];
      [v10 setPurchaseInfo:v9];

      if (os_variant_has_internal_content())
      {
        v11 = [(AMSURLRequest *)v8 properties];
        v12 = [v11 purchaseInfo];
        v13 = [v12 clientCorrelationKey];
        [(AMSURLRequest *)v8 setValue:v13 forHTTPHeaderField:@"X-Apple-Purchase-UUID"];
      }
    }
  }

  if (!(v7 | v8))
  {
    v14 = *(a1 + 40);
    v15 = AMSError(2, @"Purchase Encoder Failed", @"Invalid request", 0);
    [v14 finishWithError:v15];

    goto LABEL_9;
  }

  if (!v7)
  {
LABEL_9:
    v16 = [*(a1 + 32) purchaseInfo];
    v17 = [*(a1 + 32) bag];
    v18 = [AMSPurchaseRequestEncoder configureRequest:v8 purchaseInfo:v16 bag:v17];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke_2;
    v22[3] = &unk_1E73B3538;
    v19 = v8;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    [v18 addFinishBlock:v22];

    goto LABEL_10;
  }

  [*(a1 + 40) finishWithError:v7];
LABEL_10:
}

void __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = AMSPurchaseRequestEncoder;
  v3 = objc_msgSendSuper2(&v6, sel_requestByEncodingRequest_parameters_, v2, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSPurchaseRequestEncoder_encodeRequest__block_invoke_3;
  v4[3] = &unk_1E73BB328;
  v5 = *(a1 + 48);
  [v3 addFinishBlock:v4];
}

+ (int64_t)_anisetteTypeFromAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 ams_isEphemeralAccount] & 1) == 0)
  {
    if ([v4 ams_isLocalAccount])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

+ (id)_buyProductURLKeysForProductType:(id)a3 prefix:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = AMSBagKeyBuyProductOverrideForProductType(v7);

  if (v5 && v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v9];
    [v8 addObject:v10];

LABEL_7:
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, @"buyProduct"];
    [v8 addObject:v11];

    goto LABEL_8;
  }

  if (v9)
  {
    [v8 addObject:v9];
  }

  if (v5)
  {
    goto LABEL_7;
  }

  [v8 addObject:@"buyProduct"];
LABEL_8:
  v12 = [v8 copy];

  return v12;
}

+ (id)_bagURLKeysForPurchaseType:(int64_t)a3 withProductType:(id)a4 purchase:(id)a5 prefix:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v10;
    v15 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v17 = a1;
    v18 = objc_opt_class();
    v19 = v18;
    if (v15)
    {
      a1 = AMSLogKey();
      [v16 stringWithFormat:@"%@: [%@] ", v19, a1];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v18];
    }
    v20 = ;
    *buf = 138543618;
    v33 = v20;
    v34 = 2048;
    v35 = a3;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Creating bag URL keys from purchase type %tu", buf, 0x16u);
    if (v15)
    {

      v20 = a1;
    }

    a1 = v17;
    v10 = v29;
  }

  v21 = [v11 URLBagKey];

  if (v21)
  {
    v22 = [v11 URLBagKey];
    v31 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
LABEL_12:
    v24 = v23;
    goto LABEL_19;
  }

  if (v12)
  {
    v25 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@/", v12];
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v22 = v25;
  if (a3)
  {
    v26 = AMSBagKeyForPurchaseType(a3);
    [v22 appendString:v26];
  }

  else
  {
    if (v10)
    {
      v23 = [a1 _buyProductURLKeysForProductType:v10 prefix:v12];
      goto LABEL_12;
    }

    [v25 appendString:@"buyProduct"];
  }

  v27 = [v22 copy];
  v30 = v27;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];

LABEL_19:

  return v24;
}

+ (id)_bagURLKeysFromPurchaseInfo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 purchase];
    v10 = [v9 logUUID];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v3 = [v6 purchase];
      v4 = [v3 logUUID];
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    *buf = 138543362;
    v36 = v14;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating bag URL keys from purchase info", buf, 0xCu);
    if (v10)
    {

      v14 = v3;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [v6 buyParams];
  v17 = [v16 containsKey:@"pkPayment"];

  v18 = [v6 buyParams];
  v19 = [v18 objectForKeyedSubscript:@"buyType"];

  v20 = [v6 purchase];
  v21 = [v20 purchaseType];

  v22 = [v6 purchase];
  v23 = [v22 buyParams];
  v24 = [v23 objectForKeyedSubscript:0x1F0722118];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v17)
  {
    v26 = AMSBagKeyCommercePaymentBlobBuyURLs;
  }

  else
  {
    v26 = AMSBagKeyCommerceBuyURLs;
  }

  v27 = *v26;
  if (v19)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", *v26, v19];
    [v15 addObject:v28];
  }

  v29 = [v6 purchase];
  v30 = [a1 _bagURLKeysForPurchaseType:v21 withProductType:v25 purchase:v29 prefix:v27];
  [v15 addObjectsFromArray:v30];

  v31 = [v6 purchase];
  v32 = [a1 _bagURLKeysForPurchaseType:v21 withProductType:v25 purchase:v31 prefix:0];
  [v15 addObjectsFromArray:v32];

  v33 = [v15 copy];

  return v33;
}

+ (id)bagURLFromPurchaseInfo:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _bagURLKeysFromPurchaseInfo:v6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__AMSPurchaseRequestEncoder_bagURLFromPurchaseInfo_bag___block_invoke;
  v15[3] = &unk_1E73BB378;
  v16 = v7;
  v17 = v6;
  v18 = a1;
  v9 = v6;
  v10 = v7;
  v11 = [v8 ams_mapWithTransformIgnoresNil:v15];

  v12 = [v11 ams_mapWithTransformIgnoresNil:&__block_literal_global_117];
  v13 = [AMSPromise promiseWithAny:v12];

  return v13;
}

id __56__AMSPurchaseRequestEncoder_bagURLFromPurchaseInfo_bag___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) account];
    v7 = [v5 URLForKey:v4 account:v6];
  }

  else
  {
    v8 = [*(a1 + 40) account];

    if (v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = AMSLogKey();
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = v13;
        if (v11)
        {
          v2 = AMSLogKey();
          [v12 stringWithFormat:@"%@: [%@] ", v14, v2];
        }

        else
        {
          [v12 stringWithFormat:@"%@: ", v13];
        }
        v15 = ;
        v16 = NSStringFromSelector(sel_URLForKey_account_);
        *buf = 138543618;
        v19 = v15;
        v20 = 2114;
        v21 = v16;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@AMSBagProtocol implementation doesn't implement %{public}@ but an account was specified. This may cause mismatches between account used for bag value fetches and account used for request encoding.", buf, 0x16u);
        if (v11)
        {

          v15 = v2;
        }
      }
    }

    v7 = [*(a1 + 32) URLForKey:v4];
  }

  return v7;
}

+ (id)_parametersFromPurchaseInfo:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 buyParams];
  v6 = [v5 copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(AMSBuyParams);
  }

  v9 = v8;

  v10 = [v4 clientCorrelationKey];
  [(AMSBuyParams *)v9 setParameter:v10 forKey:@"clientCorrelationKey"];

  if ([v4 addKBSync])
  {
    v11 = [v4 account];
    v12 = +[AMSKeybag sharedInstance];
    v13 = [v11 ams_DSID];
    v67 = 0;
    v14 = [v12 keybagSyncDataWithAccountID:v13 transactionType:1 error:&v67];
    v15 = v67;

    if (v14 && [v14 length])
    {
      v16 = [v14 base64EncodedStringWithOptions:0];
      [(AMSBuyParams *)v9 setParameter:v16 forKey:@"kbsync"];
LABEL_29:

      goto LABEL_30;
    }

    v17 = +[AMSLogConfig sharedPurchaseConfig];
    v16 = v17;
    if (v15)
    {
      if (!v17)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v16 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v56 = [v4 purchase];
      v19 = [v56 logUUID];
      v54 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      v21 = v20;
      v57 = a1;
      if (v19)
      {
        v52 = [v4 purchase];
        v51 = [v52 logUUID];
        [v54 stringWithFormat:@"%@: [%@] ", v21, v51];
      }

      else
      {
        [v54 stringWithFormat:@"%@: ", v20];
      }
      v22 = ;
      v30 = AMSLogableError(v15);
      *buf = 138543618;
      v69 = v22;
      v70 = 2114;
      v71 = v30;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to lookup kbsync due to error: %{public}@", buf, 0x16u);
      if (v19)
      {

        v22 = v52;
      }
    }

    else
    {
      if (!v17)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v16 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v56 = [v4 purchase];
      v23 = [v56 logUUID];
      v24 = a1;
      v25 = v23;
      v26 = MEMORY[0x1E696AEC0];
      v57 = v24;
      v27 = objc_opt_class();
      v28 = v27;
      if (v25)
      {
        v55 = [v4 purchase];
        v53 = [v55 logUUID];
        [v26 stringWithFormat:@"%@: [%@] ", v28, v53];
      }

      else
      {
        [v26 stringWithFormat:@"%@: ", v27];
      }
      v29 = ;
      *buf = 138543362;
      v69 = v29;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@Looking up kbsync returned no error or data", buf, 0xCu);
      if (v25)
      {

        v29 = v55;
      }
    }

    a1 = v57;
LABEL_28:

    goto LABEL_29;
  }

LABEL_30:
  v31 = +[AMSDevice deviceGUID];
  if (v31)
  {
    [(AMSBuyParams *)v9 setParameter:v31 forKey:@"guid"];
  }

  if (+[AMSDevice deviceIsiPad](AMSDevice, "deviceIsiPad") || +[AMSDevice deviceIsiPhone])
  {
    v32 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v33 = [v32 ams_activeiCloudAccount];

    if ([v33 isEnabledForDataclass:*MEMORY[0x1E6959AD8]])
    {
      [(AMSBuyParams *)v9 setParameter:@"1" forKey:@"icloud-backup-enabled"];
    }
  }

  v34 = [v4 account];
  v35 = [v34 ams_isEphemeralAccount];

  if (v35)
  {
    v36 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v36)
    {
      v36 = +[AMSLogConfig sharedConfig];
    }

    v37 = [v36 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [v4 purchase];
      v39 = [v38 logUUID];
      v40 = MEMORY[0x1E696AEC0];
      v58 = a1;
      v41 = objc_opt_class();
      v42 = v41;
      if (v39)
      {
        v56 = [v4 purchase];
        a1 = [v56 logUUID];
        [v40 stringWithFormat:@"%@: [%@] ", v42, a1];
      }

      else
      {
        [v40 stringWithFormat:@"%@: ", v41];
      }
      v43 = ;
      *buf = 138543362;
      v69 = v43;
      _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_INFO, "%{public}@Skipping AFDS for Ephemeral Account.", buf, 0xCu);
      if (v39)
      {

        v43 = v56;
      }

      a1 = v58;
    }

    v46 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v44 = [AMSFDSService cachedFDSForPurchaseInfo:v4];
    v45 = [v44 promiseWithTimeout:4.0];

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke;
    v63[3] = &unk_1E73BB3E8;
    v64 = v4;
    v66 = a1;
    v65 = v9;
    v46 = [v45 continueWithBinaryPromiseBlock:v63];
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke_70;
  v59[3] = &unk_1E73BB410;
  v61 = v9;
  v62 = a1;
  v60 = v4;
  v47 = v9;
  v48 = v4;
  v49 = [v46 continueWithPromiseBlock:v59];

  return v49;
}

id __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if (AMSErrorIsEqual(v7, @"AMSErrorDomain", 12))
    {
      v9 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v67 = v8;
        v11 = [*(a1 + 32) purchase];
        v12 = [v11 logUUID];
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        v15 = v14;
        if (v12)
        {
          a3 = [*(a1 + 32) purchase];
          v3 = [a3 logUUID];
          [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        *buf = 138543362;
        v75 = v16;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Reading empty AFDS cache", buf, 0xCu);
        v8 = v67;
        if (v12)
        {

          v16 = a3;
        }
      }
    }

    else
    {
      v9 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v68 = v8;
        v17 = [*(a1 + 32) purchase];
        v18 = [v17 logUUID];
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = v20;
        if (v18)
        {
          a3 = [*(a1 + 32) purchase];
          v3 = [a3 logUUID];
          [v19 stringWithFormat:@"%@: [%@] ", v21, v3];
        }

        else
        {
          [v19 stringWithFormat:@"%@: ", v20];
        }
        v22 = ;
        v23 = AMSLogableError(v68);
        *buf = 138543618;
        v75 = v22;
        v76 = 2114;
        v77 = v23;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error while reading AFDS cache: %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = a3;
        }

        v8 = v68;
      }
    }
  }

  v24 = [v6 value];

  if (v24)
  {
    v25 = @"afds";
    if (([v6 action] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v26 = @"afdsv2";

      v25 = v26;
    }

    v27 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v25;
      v64 = [*(a1 + 32) purchase];
      v29 = [v64 logUUID];
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = v31;
      v69 = v8;
      if (v29)
      {
        v63 = [*(a1 + 32) purchase];
        v62 = [v63 logUUID];
        [v30 stringWithFormat:@"%@: [%@] ", v32, v62];
      }

      else
      {
        [v30 stringWithFormat:@"%@: ", v31];
      }
      v33 = ;
      v42 = AMSHashIfNeeded(v65);
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "action")}];
      v44 = [v6 value];
      v45 = AMSHashIfNeeded(v44);
      *buf = 138544130;
      v75 = v33;
      v76 = 2114;
      v77 = v42;
      v78 = 2114;
      v79 = v43;
      v80 = 2114;
      v81 = v45;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Adding an AFDS value to the request. buyParam = %{public}@, action = %{public}@, value = %{public}@", buf, 0x2Au);

      if (v29)
      {

        v33 = v63;
      }

      v25 = v65;
      v8 = v69;
    }

    v46 = *(a1 + 40);
    v47 = [v6 value];
    [v46 setParameter:v47 forKey:v25];

    if ([v6 action] == 4 || objc_msgSend(v6, "action") == 5)
    {
      v48 = [AMSFDSService didConsumeFDSForPurchaseInfo:*(a1 + 32)];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke_68;
      v71[3] = &unk_1E73BB3C0;
      v49 = *(a1 + 32);
      v50 = *(a1 + 48);
      v72 = v49;
      v73 = v50;
      v51 = [v48 continueWithBlock:v71];
    }

    else
    {
      v52 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v52)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      v53 = [v52 OSLogObject];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v66 = v25;
        v70 = v8;
        v54 = [*(a1 + 32) purchase];
        v55 = [v54 logUUID];
        v56 = MEMORY[0x1E696AEC0];
        v57 = objc_opt_class();
        v58 = v57;
        if (v55)
        {
          v46 = [*(a1 + 32) purchase];
          a1 = [v46 logUUID];
          [v56 stringWithFormat:@"%@: [%@] ", v58, a1];
        }

        else
        {
          [v56 stringWithFormat:@"%@: ", v57];
        }
        v59 = ;
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "action")}];
        *buf = 138543618;
        v75 = v59;
        v76 = 2114;
        v77 = v60;
        _os_log_impl(&dword_192869000, v53, OS_LOG_TYPE_INFO, "%{public}@Skipping AFDS completion call for action type: %{public}@", buf, 0x16u);

        v8 = v70;
        if (v55)
        {

          v59 = v46;
        }

        v25 = v66;
      }

      v51 = +[AMSBinaryPromise promiseWithSuccess];
    }
  }

  else
  {
    v34 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v34)
    {
      v34 = +[AMSLogConfig sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [*(a1 + 32) purchase];
      v37 = [v36 logUUID];
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = v39;
      if (v37)
      {
        v24 = [*(a1 + 32) purchase];
        a1 = [v24 logUUID];
        [v38 stringWithFormat:@"%@: [%@] ", v40, a1];
      }

      else
      {
        [v38 stringWithFormat:@"%@: ", v39];
      }
      v41 = ;
      *buf = 138543362;
      v75 = v41;
      _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_INFO, "%{public}@No AFDS available.", buf, 0xCu);
      if (v37)
      {

        v41 = v24;
      }
    }

    v51 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v51;
}

id __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke_68(id *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1[4] purchase];
      v9 = [v8 logUUID];
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        a1 = [a1[4] purchase];
        v3 = [a1 logUUID];
        [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v15 = AMSLogableError(v5);
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@AFDS completion call failed with error: %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v14 = [AMSBinaryPromise promiseWithError:v5];
  }

  else
  {
    v14 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v16 = v14;

  return v16;
}

id __57__AMSPurchaseRequestEncoder__parametersFromPurchaseInfo___block_invoke_70(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasBeenAuthedForBuy])
  {
    v4 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) purchase];
      v7 = [v6 logUUID];
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v1 = [*(a1 + 32) purchase];
        v2 = [v1 logUUID];
        [v8 stringWithFormat:@"%@: [%@] ", v10, v2];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@'hasBeenAuthedForBuy' flag set: Attaching to buyParams", buf, 0xCu);
      if (v7)
      {

        v11 = v1;
      }
    }

    [*(a1 + 40) setParameter:MEMORY[0x1E695E118] forKey:@"hasBeenAuthedForBuy"];
  }

  v12 = [*(a1 + 32) paymentServicesURL];

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) paymentServicesURL];
    v15 = [v14 absoluteString];
    [v13 setParameter:v15 forKey:@"applePayPaymentServiceURL"];
  }

  v16 = [*(a1 + 32) paymentToken];
  if (v16)
  {
    v17 = v16;
    v18 = [*(a1 + 32) expressCheckoutMode];

    if (v18)
    {
      v19 = *(a1 + 40);
      v20 = [*(a1 + 32) expressCheckoutMode];
      [v19 setParameter:v20 forKey:@"expressCheckoutMode"];
    }
  }

  v21 = [*(a1 + 40) normalizedDictionary];
  v22 = [AMSPromise promiseWithResult:v21];

  return v22;
}

@end