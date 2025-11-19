@interface AMSRatingsStorefrontTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSRatingsStorefrontTask)initWithMediaType:(unint64_t)a3 clientIdentifier:(id)a4 bag:(id)a5;
- (id)_queryItems;
- (id)_urlBagKeyForMediaType:(unint64_t)a3;
- (id)_urlForMediaType:(unint64_t)a3;
- (id)performTask;
@end

@implementation AMSRatingsStorefrontTask

- (AMSRatingsStorefrontTask)initWithMediaType:(unint64_t)a3 clientIdentifier:(id)a4 bag:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AMSRatingsStorefrontTask;
  v11 = [(AMSTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_mediaType = a3;
    objc_storeStrong(&v11->_clientIdentifier, a4);
    objc_storeStrong(&v12->_bag, a5);
  }

  return v12;
}

- (id)performTask
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AMSRatingsStorefrontTask_performTask__block_invoke;
  v5[3] = &unk_1E73BBB48;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = AMSRatingsStorefrontTask;
  v2 = [(AMSTask *)&v4 performTaskWithBlock:v5];

  return v2;
}

AMSRatingsStorefrontResult *__39__AMSRatingsStorefrontTask_performTask__block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = -[AMSRatingsCache initWithMediaType:]([AMSRatingsCache alloc], "initWithMediaType:", [*(a1 + 32) mediaType]);
  [(AMSRatingsCache *)v4 clearCacheIfNeeded];
  v5 = [(AMSRatingsCache *)v4 getCacheData];
  if (v5)
  {
    v6 = -[AMSRatingsStorefrontResult initWithData:mediaType:]([AMSRatingsStorefrontResult alloc], "initWithData:mediaType:", v5, [*(a1 + 32) mediaType]);
    if (v6)
    {
      v7 = v6;
      goto LABEL_35;
    }
  }

  v49 = a2;
  v8 = AMSLogKey();
  v9 = [*(a1 + 32) _urlForMediaType:{objc_msgSend(*(a1 + 32), "mediaType")}];
  v10 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = [v9 absoluteString];
    *buf = 138543874;
    v56 = v12;
    v57 = 2114;
    v58 = v8;
    v59 = 2112;
    v60 = v13;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] URL for Storefronts: %@.", buf, 0x20u);
  }

  v14 = [MEMORY[0x1E695AC68] requestWithURL:v9];
  v15 = [AMSMediaSharedProperties propertiesForStorefrontsTask:*(a1 + 32)];
  v16 = [AMSMediaRequestEncoder alloc];
  v52 = v15;
  v17 = [v15 tokenService];
  v18 = [*(a1 + 32) bag];
  v19 = [(AMSMediaRequestEncoder *)v16 initWithTokenService:v17 bag:v18];

  [(AMSMediaRequestEncoder *)v19 setLogKey:v8];
  v20 = [(AMSMediaRequestEncoder *)v19 requestByEncodingRequest:v14 parameters:0];
  v21 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    *buf = 138543874;
    v56 = v23;
    v57 = 2114;
    v58 = v8;
    v59 = 2112;
    v60 = v14;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request generated: %@.", buf, 0x20u);
  }

  v54 = 0;
  v50 = v20;
  v24 = [v20 resultWithTimeout:&v54 error:60.0];
  v25 = v54;
  v26 = v25;
  v51 = v9;
  if (!v24)
  {
    v35 = v8;
    v36 = 0;
    v31 = v25;
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v45 = v5;
  v27 = v19;
  v28 = [v52 session];
  v29 = [v28 dataTaskPromiseWithRequest:v24];

  v53 = v26;
  v46 = v29;
  v30 = [v29 resultWithTimeout:&v53 error:60.0];
  v31 = v53;

  v47 = v14;
  v48 = v30;
  if (v31)
  {
    v32 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    v19 = v27;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543874;
      v56 = v34;
      v57 = 2114;
      v35 = v8;
      v58 = v8;
      v59 = 2112;
      v60 = v31;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request completed with error: %@.", buf, 0x20u);
    }

    else
    {
      v35 = v8;
    }

    v36 = 0;
    v5 = v45;
LABEL_31:

    goto LABEL_32;
  }

  v35 = v8;
  v36 = -[AMSRatingsStorefrontResult initWithURLResult:mediaType:]([AMSRatingsStorefrontResult alloc], "initWithURLResult:mediaType:", v30, [*(a1 + 32) mediaType]);
  v37 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v37)
  {
    v37 = +[AMSLogConfig sharedConfig];
  }

  v38 = [v37 OSLogObject];
  v19 = v27;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = objc_opt_class();
    *buf = 138543874;
    v56 = v39;
    v57 = 2114;
    v58 = v35;
    v59 = 2112;
    v60 = v48;
    _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request completed: %@.", buf, 0x20u);
  }

  v40 = [v48 data];
  v41 = [(AMSRatingsCache *)v4 addCacheData:v40];

  v5 = v45;
  if (!v41)
  {
    v32 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      *buf = 138543618;
      v56 = v42;
      v57 = 2114;
      v58 = v35;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cache data", buf, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_32:

  v14 = v47;
  if (v31)
  {
LABEL_33:
    v43 = v31;
    *v49 = v31;
  }

LABEL_34:
  v7 = v36;

LABEL_35:

  return v7;
}

- (id)_urlBagKeyForMediaType:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"AMSRatingsStorefrontMediaURL";
  }

  else
  {
    return off_1E73BBB68[a3];
  }
}

- (id)_urlForMediaType:(unint64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [(AMSRatingsStorefrontTask *)self _urlBagKeyForMediaType:a3];
  v5 = [(AMSRatingsStorefrontTask *)self bag];
  v6 = [v5 stringForKey:v4];
  v28 = 0;
  v7 = [v6 valueWithError:&v28];
  v8 = v28;

  if (v8 || !v7)
  {
    v10 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSHashIfNeeded(v4);
      *buf = 138543874;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error getting URL from the bag for the key: %@.", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  if (!v9)
  {
    v22 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v26 = AMSHashIfNeeded(v7);
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating URL from string: %@.", buf, 0x20u);
    }

    v11 = AMSError(200, @"Storefronts URL string malformed", @"Failed to create URL from bag-provided URL string", 0);
    v10 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [(AMSRatingsStorefrontTask *)self _queryItems];
  v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v10 resolvingAgainstBaseURL:0];
  v13 = [v12 queryItems];
  v14 = v13;
  v15 = MEMORY[0x1E695E0F0];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v16 arrayByAddingObjectsFromArray:v11];

  [v12 setQueryItems:v17];
  v18 = [v12 URL];

LABEL_17:

  return v18;
}

- (id)_queryItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(AMSRatingsStorefrontTask *)self bag];
  v5 = [v4 stringForKey:@"language-tag"];
  v6 = [v5 valueWithError:0];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[AMSDevice language];
  }

  v9 = v8;

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"l" value:v9];
    [v3 addObject:v10];
  }

  v11 = +[AMSMediaURLBuilderUtility devicePlatform];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"platform" value:v11];
    [v3 addObject:v12];
  }

  if (+[AMSDevice deviceIsChinaSKU])
  {
    v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"with" value:@"cnformat"];
    [v3 addObject:v13];
  }

  return v3;
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end