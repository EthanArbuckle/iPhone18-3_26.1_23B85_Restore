@interface AMSRatingsProviderTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
+ (id)ratingWithValue:(id)a3 mediaType:(unint64_t)a4 storeFront:(id)a5 clientIdentifier:(id)a6 bag:(id)a7;
- (AMSRatingsProviderTask)initWithMediaType:(unint64_t)a3 storeFront:(id)a4 clientIdentifier:(id)a5 bag:(id)a6;
- (id)_appQueryItems;
- (id)_commonQueryItems;
- (id)_urlForMediaType:(unint64_t)a3 error:(id *)a4;
- (id)_withQueryItemForType:(unint64_t)a3 regionalRatingSystem:(BOOL)a4;
- (id)initForAllMediaWithStoreFront:(id)a3 clientIdentifier:(id)a4 useCase:(unint64_t)a5 bag:(id)a6;
- (id)initForAllMediaWithUnratedRatingsForStoreFront:(id)a3 clientIdentifier:(id)a4 useCase:(unint64_t)a5 bag:(id)a6;
- (id)performTask;
- (id)resultWithCachedData:(id)a3;
@end

@implementation AMSRatingsProviderTask

- (id)initForAllMediaWithStoreFront:(id)a3 clientIdentifier:(id)a4 useCase:(unint64_t)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AMSRatingsProviderTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_mediaType = 5;
    objc_storeStrong(&v14->_storeFront, a3);
    objc_storeStrong(&v15->_clientIdentifier, a4);
    v15->_useCase = a5;
    objc_storeStrong(&v15->_bag, a6);
  }

  return v15;
}

- (id)initForAllMediaWithUnratedRatingsForStoreFront:(id)a3 clientIdentifier:(id)a4 useCase:(unint64_t)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AMSRatingsProviderTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_mediaType = 6;
    objc_storeStrong(&v14->_storeFront, a3);
    objc_storeStrong(&v15->_clientIdentifier, a4);
    v15->_useCase = a5;
    objc_storeStrong(&v15->_bag, a6);
  }

  return v15;
}

- (AMSRatingsProviderTask)initWithMediaType:(unint64_t)a3 storeFront:(id)a4 clientIdentifier:(id)a5 bag:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AMSRatingsProviderTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_storeFront, a4);
    v15->_mediaType = a3;
    objc_storeStrong(&v15->_clientIdentifier, a5);
    objc_storeStrong(&v15->_bag, a6);
  }

  return v15;
}

- (id)resultWithCachedData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [AMSRatingsProviderResult alloc];
    v6 = [(AMSRatingsProviderTask *)self mediaType];
    v7 = [(AMSRatingsProviderTask *)self storeFront];
    v8 = [(AMSRatingsProviderResult *)v5 initWithData:v4 mediaType:v6 andStoreFront:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)performTask
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AMSRatingsProviderTask_performTask__block_invoke;
  v5[3] = &unk_1E73BBAB8;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = AMSRatingsProviderTask;
  v2 = [(AMSTask *)&v4 performTaskWithBlock:v5];

  return v2;
}

AMSRatingsProviderResult *__37__AMSRatingsProviderTask_performTask__block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = [AMSRatingsCache alloc];
  v5 = [*(a1 + 32) mediaType];
  v6 = [*(a1 + 32) storeFront];
  v7 = [(AMSRatingsCache *)v4 initWithMediaType:v5 storeFront:v6];

  v8 = [(AMSRatingsCache *)v7 getCacheData];
  [(AMSRatingsCache *)v7 clearCacheIfNeeded];
  v55 = AMSLogKey();
  v9 = *(a1 + 32);
  v58 = 0;
  v10 = [v9 _urlForMediaType:objc_msgSend(v9 error:{"mediaType"), &v58}];
  v11 = v58;
  v12 = v11;
  v54 = v8;
  if (!v10 || v11)
  {
    v28 = AMSError(7, @"Ratings URL not found", @"Could not load a ratings URL for this media type.", v11);

    v27 = 0;
    v18 = 0;
LABEL_20:
    v32 = AMSError(3, @"Failed to create media request from ratings URL", @"An error occurred when attempting to encode the media request.", v28);
LABEL_21:

    v36 = v54;
LABEL_22:
    v37 = [*(a1 + 32) resultWithCachedData:v36];
    v38 = v32;
    goto LABEL_23;
  }

  v13 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = [v10 absoluteString];
    *buf = 138543874;
    v60 = v15;
    v61 = 2114;
    v62 = v55;
    v63 = 2112;
    v64 = v16;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] URL for Ratings: %@.", buf, 0x20u);
  }

  v17 = [MEMORY[0x1E695AC68] requestWithURL:v10];
  v18 = [AMSMediaSharedProperties propertiesForRatingsTask:*(a1 + 32)];
  v19 = [AMSMediaRequestEncoder alloc];
  v20 = [v18 tokenService];
  v21 = [*(a1 + 32) bag];
  v22 = [(AMSMediaRequestEncoder *)v19 initWithTokenService:v20 bag:v21];

  [(AMSMediaRequestEncoder *)v22 setLogKey:v55];
  v23 = [(AMSMediaRequestEncoder *)v22 requestByEncodingRequest:v17 parameters:0];
  v24 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v24)
  {
    v24 = +[AMSLogConfig sharedConfig];
  }

  v25 = [v24 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    *buf = 138543874;
    v60 = v26;
    v61 = 2114;
    v62 = v55;
    v63 = 2112;
    v64 = v17;
    _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request generated: %@.", buf, 0x20u);
  }

  v57 = 0;
  v27 = [v23 resultWithTimeout:&v57 error:60.0];
  v28 = v57;

  if (!v27 || v28)
  {
    goto LABEL_20;
  }

  v29 = [v18 session];
  v28 = [v29 dataTaskPromiseWithRequest:v27];

  v56 = 0;
  v30 = [v28 resultWithTimeout:&v56 error:60.0];
  v31 = v56;
  v53 = v30;
  if (v31)
  {
    v32 = v31;
    v33 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v33)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      *buf = 138543874;
      v60 = v35;
      v61 = 2114;
      v62 = v55;
      v63 = 2112;
      v64 = v32;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request completed with error: %@.", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v52 = a2;
  v41 = [AMSRatingsProviderResult alloc];
  v42 = [*(a1 + 32) mediaType];
  v43 = [*(a1 + 32) storeFront];
  v37 = [(AMSRatingsProviderResult *)v41 initWithURLResult:v30 mediaType:v42 andStoreFront:v43];

  v44 = +[AMSLogConfig sharedRatingsProviderConfig];
  if (!v44)
  {
    v44 = +[AMSLogConfig sharedConfig];
  }

  v45 = [v44 OSLogObject];
  a2 = v52;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = objc_opt_class();
    *buf = 138543874;
    v60 = v46;
    v61 = 2114;
    v62 = v55;
    v63 = 2112;
    v64 = v53;
    _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request completed: %@.", buf, 0x20u);
  }

  v47 = [v53 data];
  v48 = [(AMSRatingsCache *)v7 addCacheData:v47];

  if (!v48)
  {
    v49 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v49)
    {
      v49 = +[AMSLogConfig sharedConfig];
    }

    v50 = [v49 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      *buf = 138543618;
      v60 = v51;
      v61 = 2114;
      v62 = v55;
      _os_log_impl(&dword_192869000, v50, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cache data", buf, 0x16u);
    }
  }

  v32 = 0;
  v38 = 0;
  v36 = v54;
  if (!v37)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a2)
  {
    v39 = v38;
    *a2 = v38;
  }

  return v37;
}

+ (id)ratingWithValue:(id)a3 mediaType:(unint64_t)a4 storeFront:(id)a5 clientIdentifier:(id)a6 bag:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [[AMSRatingsProviderTask alloc] initWithMediaType:a4 storeFront:v14 clientIdentifier:v13 bag:v12];

  v16 = [(AMSRatingsProviderTask *)v15 performTask];
  v17 = objc_alloc_init(AMSMutablePromise);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__AMSRatingsProviderTask_ratingWithValue_mediaType_storeFront_clientIdentifier_bag___block_invoke;
  v23[3] = &unk_1E73BBAE0;
  v24 = v11;
  v18 = v17;
  v25 = v18;
  v19 = v11;
  [v16 addFinishBlock:v23];
  v20 = v25;
  v21 = v18;

  return v18;
}

void __84__AMSRatingsProviderTask_ratingWithValue_mediaType_storeFront_clientIdentifier_bag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    [*(a1 + 40) finishWithError:v6];
    goto LABEL_39;
  }

  v33 = v6;
  v38 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v5 ratingsStoreFronts];
  v36 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v36)
  {
    goto LABEL_37;
  }

  v35 = *v55;
  v40 = v5;
  do
  {
    v8 = 0;
    do
    {
      if (*v55 != v35)
      {
        v9 = v8;
        objc_enumerationMutation(obj);
        v8 = v9;
      }

      v37 = v8;
      v10 = *(*(&v54 + 1) + 8 * v8);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v39 = [v10 ratingSystems];
      v42 = [v39 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v42)
      {
        v41 = *v51;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v51 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = i;
            v12 = *(*(&v50 + 1) + 8 * i);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v13 = [v12 contentRatings];
            v14 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (!v14)
            {
              v16 = v13;
              goto LABEL_32;
            }

            v15 = v14;
            v16 = 0;
            v17 = *v47;
            v44 = *v47;
            do
            {
              v18 = 0;
              v45 = v15;
              do
              {
                if (*v47 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v46 + 1) + 8 * v18);
                if (*(a1 + 32) && ([*(*(&v46 + 1) + 8 * v18) value], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToNumber:", *(a1 + 32)), v20, v21))
                {
                  v22 = v19;

                  v16 = v22;
                }

                else if (v16)
                {
                  v23 = [v19 value];
                  v24 = [v23 intValue];
                  if (v24 >= [*(a1 + 32) intValue])
                  {
                  }

                  else
                  {
                    v25 = v13;
                    v26 = [v19 value];
                    v27 = [v26 intValue];
                    v28 = [v16 value];
                    v29 = [v28 intValue];

                    if (v27 > v29)
                    {
                      v30 = v19;

                      v16 = v30;
                    }

                    v13 = v25;
                    v17 = v44;
                    v15 = v45;
                  }
                }

                else
                {
                  v16 = v19;
                }

                ++v18;
              }

              while (v15 != v18);
              v15 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
            }

            while (v15);

            v5 = v40;
            i = v43;
            if (v16)
            {
              [v38 addObject:v16];
LABEL_32:

              continue;
            }
          }

          v42 = [v39 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v42);
      }

      v8 = v37 + 1;
    }

    while (v37 + 1 != v36);
    v36 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  }

  while (v36);
LABEL_37:

  v31 = *(a1 + 40);
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  [v31 finishWithResult:v32];

  v7 = v33;
LABEL_39:
}

- (id)_urlForMediaType:(unint64_t)a3 error:(id *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = [(AMSRatingsProviderTask *)self _commonQueryItems];
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0uLL:
        v13 = [(AMSRatingsProviderTask *)self storeFront];
        v11 = v13;
        v14 = @"AMSRatingsProviderVideoURL";
        v15 = @"AMSRatingsProviderVideoAllURL";
        goto LABEL_16;
      case 1uLL:
        v13 = [(AMSRatingsProviderTask *)self storeFront];
        v11 = v13;
        v14 = @"AMSRatingsProviderMusicURL";
        v15 = @"AMSRatingsProviderMusicAllURL";
        goto LABEL_16;
      case 2uLL:
        v8 = [(AMSRatingsProviderTask *)self storeFront];
        v9 = @"AMSRatingsProviderAppsURL";
        if (!v8)
        {
          v9 = @"AMSRatingsProviderAppsAllURL";
        }

        v10 = v9;

        v11 = [(AMSRatingsProviderTask *)self _appQueryItems];
        v12 = [v7 arrayByAddingObjectsFromArray:v11];

        v7 = v12;
        goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (a3 - 5 < 2)
  {
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v13 = [(AMSRatingsProviderTask *)self storeFront];
    v11 = v13;
    v14 = @"AMSRatingsProviderPodcastsURL";
    v15 = @"AMSRatingsProviderPodcastsAllURL";
    goto LABEL_16;
  }

  if (a3 != 4)
  {
LABEL_12:
    v13 = [(AMSRatingsProviderTask *)self storeFront];
    v11 = v13;
    v14 = @"AMSRatingsProviderMediaURL";
    v15 = @"AMSRatingsProviderMediaAllURL";
    goto LABEL_16;
  }

  v13 = [(AMSRatingsProviderTask *)self storeFront];
  v11 = v13;
  v14 = @"AMSRatingsProviderBooksURL";
  v15 = @"AMSRatingsProviderBooksAllURL";
LABEL_16:
  if (!v13)
  {
    v14 = v15;
  }

  v10 = v14;
LABEL_19:

  v16 = [(AMSRatingsProviderTask *)self _withQueryItemForType:a3 regionalRatingSystem:[(AMSRatingsProviderTask *)self regionalRatingSystem]];
  v17 = [v7 arrayByAddingObjectsFromArray:v16];

  v18 = [(AMSRatingsProviderTask *)self bag];
  v19 = [v18 stringForKey:v10];
  v52 = 0;
  v20 = [v19 valueWithError:&v52];
  v21 = v52;

  if (v20)
  {
    if ([(AMSRatingsProviderTask *)self useCase]== 1)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"useCase=%@", @"screenTime"];
      v23 = [v20 stringByReplacingOccurrencesOfString:@"useCase=%@" withString:v22];

      v20 = v23;
    }

    v24 = [(AMSRatingsProviderTask *)self storeFront];
    if (v24)
    {
      v25 = v24;
      v26 = [(AMSRatingsProviderTask *)self storeFront];
      v27 = [v26 length];

      if (v27)
      {
        v28 = MEMORY[0x1E696AEC0];
        v51 = v21;
        v29 = [(AMSRatingsProviderTask *)self storeFront];
        v30 = [v28 stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:&v51, v29];
        v31 = v51;

        v20 = v30;
        v21 = v31;
      }
    }

    v32 = [MEMORY[0x1E695DFF8] URLWithString:v20];
    if (v32)
    {
      v33 = v32;
      if (!v17)
      {
        goto LABEL_41;
      }

      v34 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v32 resolvingAgainstBaseURL:0];
      v35 = [v34 queryItems];
      v36 = v35;
      v37 = MEMORY[0x1E695E0F0];
      if (v35)
      {
        v37 = v35;
      }

      v38 = v37;

      v39 = [v38 arrayByAddingObjectsFromArray:v17];

      [v34 setQueryItems:v39];
      v40 = [v34 URL];

      v33 = v40;
    }

    else
    {
      v44 = +[AMSLogConfig sharedRatingsProviderConfig];
      if (!v44)
      {
        v44 = +[AMSLogConfig sharedConfig];
      }

      v45 = [v44 OSLogObject];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_opt_class();
        v47 = AMSLogKey();
        v48 = AMSHashIfNeeded(v20);
        *buf = 138543874;
        v54 = v46;
        v55 = 2114;
        v56 = v47;
        v57 = 2112;
        v58 = v48;
        _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating URL from string: %@.", buf, 0x20u);
      }

      AMSError(200, @"Ratings URL string malformed", @"Failed to create URL from bag-provided URL string", 0);
      v33 = 0;
      v21 = v34 = v21;
    }
  }

  else
  {
    v34 = +[AMSLogConfig sharedRatingsProviderConfig];
    if (!v34)
    {
      v34 = +[AMSLogConfig sharedConfig];
    }

    v41 = [v34 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = AMSLogKey();
      *buf = 138543874;
      v54 = v42;
      v55 = 2114;
      v56 = v43;
      v57 = 2112;
      v58 = v21;
      _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error loading URL from bag: %@.", buf, 0x20u);
    }

    v20 = 0;
    v33 = 0;
  }

LABEL_41:
  if (a4)
  {
    v49 = v21;
    *a4 = v21;
  }

  return v33;
}

- (id)_appQueryItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[AMSMediaURLBuilderUtility devicePlatform];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"platform" value:v3];
    [v2 addObject:v4];
  }

  return v2;
}

- (id)_withQueryItemForType:(unint64_t)a3 regionalRatingSystem:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (v4)
  {
    [v6 addObject:@"regionalRatingSystem"];
  }

  if (a3 == 6)
  {
    [v7 addObject:@"unratedRating"];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v7 count])
  {
    v9 = objc_alloc(MEMORY[0x1E696AF60]);
    v10 = [v7 componentsJoinedByString:{@", "}];
    v11 = [v9 initWithName:@"with" value:v10];
    [v8 addObject:v11];
  }

  return v8;
}

- (id)_commonQueryItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(AMSRatingsProviderTask *)self bag];
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