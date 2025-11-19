@interface MKAppleMediaServices
+ (id)sharedInstance;
+ (id)sourceStringWithSource:(int64_t)a3;
- (BOOL)isVisualIntelligenceProcess;
- (id)additionalParameterWithType:(int64_t)a3;
- (id)externalRequestCounterRequestSubtypeWithType:(int64_t)a3;
- (int64_t)AMSMediaTaskTypeFromGEOAppleMediaServicesMediaType:(int64_t)a3;
- (void)appleMediaServicesResultsWithIdentifiers:(id)a3 bundleIdentifiers:(id)a4 artworkSize:(CGSize)a5 screenScale:(double)a6 type:(int64_t)a7 source:(int64_t)a8 completion:(id)a9;
- (void)mediaResultWithIdentifiers:(id)a3 bundleIdentifiers:(id)a4 artworkSize:(CGSize)a5 screenScale:(double)a6 type:(int64_t)a7 source:(int64_t)a8 completion:(id)a9;
@end

@implementation MKAppleMediaServices

+ (id)sourceStringWithSource:(int64_t)a3
{
  if ((a3 - 2) > 0xB)
  {
    return @"Open App";
  }

  else
  {
    return *(&off_1E76C62C8 + a3 - 2);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MKAppleMediaServices_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __38__MKAppleMediaServices_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (id)externalRequestCounterRequestSubtypeWithType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    return @"Unknown Subtype";
  }

  else
  {
    return *(&off_1E76C6328 + a3 - 1);
  }
}

- (id)additionalParameterWithType:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      return &unk_1F1611DF0;
    }

    if (a3 == 2)
    {
      return &unk_1F1611E68;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    switch(a3)
    {
      case 19:
        return &unk_1F1611E40;
      case 17:
        return &unk_1F1611E18;
      case 3:
        return &unk_1F1611DF0;
      default:
        return 0;
    }
  }
}

- (int64_t)AMSMediaTaskTypeFromGEOAppleMediaServicesMediaType:(int64_t)a3
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0:
      v4 = MKGetAppleMediaServicesServerLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "Unhandled GEOAppleMediaServicesMediaType %@", &v6, 0xCu);
      }

      goto LABEL_5;
    case 3:
      result = 5;
      break;
    case 4:
      result = 203;
      break;
    case 5:
LABEL_5:
      result = 200;
      break;
    case 6:
      result = 205;
      break;
    case 7:
      result = 202;
      break;
    case 8:
      result = 204;
      break;
    case 9:
      result = 201;
      break;
    case 10:
      result = 206;
      break;
    case 11:
      result = 207;
      break;
    case 12:
      result = 301;
      break;
    case 13:
      result = 300;
      break;
    case 14:
      result = 302;
      break;
    case 15:
      result = 101;
      break;
    case 16:
      result = 100;
      break;
    case 17:
      result = 103;
      break;
    case 18:
      result = 400;
      break;
    case 19:
      result = 402;
      break;
    case 20:
      result = 401;
      break;
    default:
      return result;
  }

  return result;
}

- (BOOL)isVisualIntelligenceProcess
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.VisualIntelligenceCamera"];

  return v4;
}

- (void)mediaResultWithIdentifiers:(id)a3 bundleIdentifiers:(id)a4 artworkSize:(CGSize)a5 screenScale:(double)a6 type:(int64_t)a7 source:(int64_t)a8 completion:(id)a9
{
  height = a5.height;
  width = a5.width;
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v20 = [getAMSMediaTaskClass() bagSubProfile];
  v21 = [getAMSMediaTaskClass() bagSubProfileVersion];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2050000000;
  v22 = getAMSBagClass_softClass;
  v58 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __getAMSBagClass_block_invoke;
    v54[3] = &unk_1E76CD7B0;
    v54[4] = &v55;
    __getAMSBagClass_block_invoke(v54);
    v22 = v56[3];
  }

  v43 = v19;
  v23 = v22;
  _Block_object_dispose(&v55, 8);
  v44 = v21;
  v24 = [v22 bagForProfile:v20 profileVersion:v21];
  v25 = [(MKAppleMediaServices *)self AMSMediaTaskTypeFromGEOAppleMediaServicesMediaType:a7];
  v26 = [(MKAppleMediaServices *)self isVisualIntelligenceProcess];
  v27 = @"com.apple.Maps";
  if (v26)
  {
    v27 = @"com.apple.VisualIntelligenceCamera";
  }

  v28 = v27;
  v29 = [objc_alloc(getAMSMediaTaskClass()) initWithType:v25 clientIdentifier:v28 clientVersion:@"1" bag:v24];

  if ([v17 count])
  {
    v40 = v20;
    v41 = v18;
    v42 = v17;
    [v29 setItemIdentifiers:v17];
  }

  else
  {
    if (![v18 count])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke;
      block[3] = &unk_1E76CD4D0;
      v53 = v43;
      v39 = v43;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v38 = v53;
      goto LABEL_10;
    }

    v40 = v20;
    v41 = v18;
    v42 = v17;
    [v29 setBundleIdentifiers:v18];
  }

  v30 = [(MKAppleMediaServices *)self additionalParameterWithType:a7];
  [v29 setAdditionalQueryParams:v30];

  v31 = [MEMORY[0x1E69A2458] sharedCounter];
  v32 = [(MKAppleMediaServices *)self externalRequestCounterRequestType];
  v33 = [(MKAppleMediaServices *)self externalRequestCounterRequestSubtypeWithType:a7];
  v34 = [objc_opt_class() sourceStringWithSource:a8];
  v35 = GEOApplicationIdentifierOrProcessName();
  v36 = [v31 externalRequestCounterTicketForType:v32 subtype:v33 source:v34 appId:v35];

  v37 = [v29 perform];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke_2;
  v45[3] = &unk_1E76C6290;
  v49 = width;
  v50 = height;
  v51 = a6;
  v46 = v36;
  v47 = v43;
  v48 = a7;
  v38 = v43;
  v39 = v36;
  [v37 addFinishBlock:v45];

  v18 = v41;
  v17 = v42;
  v20 = v40;
LABEL_10:
}

void __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v21 = a3;
  v22 = v5;
  v6 = [v5 responseDataItems];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [objc_alloc(MEMORY[0x1E69A1B60]) initWithResponseDictionary:v13 mediaType:*(a1 + 48) artworkSize:*(a1 + 56) screenScale:{*(a1 + 64), *(a1 + 72)}];
        if (v14)
        {
          v15 = MKGetAppleMediaServicesServerLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v32 = v14;
            v33 = 2112;
            v34 = v13;
            _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "Returning result %@ from responseDictionary %@", buf, 0x16u);
          }

          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  v16 = *(a1 + 32);
  v17 = [v22 responseDictionary];
  [v16 requestCompletedWithAMPResult:v17];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke_19;
  block[3] = &unk_1E76CAA70;
  v18 = *(a1 + 40);
  v24 = v7;
  v25 = v21;
  v26 = v18;
  v19 = v21;
  v20 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)appleMediaServicesResultsWithIdentifiers:(id)a3 bundleIdentifiers:(id)a4 artworkSize:(CGSize)a5 screenScale:(double)a6 type:(int64_t)a7 source:(int64_t)a8 completion:(id)a9
{
  height = a5.height;
  width = a5.width;
  v17 = a9;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __130__MKAppleMediaServices_appleMediaServicesResultsWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke;
  v19[3] = &unk_1E76C8490;
  v20 = v17;
  v18 = v17;
  [(MKAppleMediaServices *)self mediaResultWithIdentifiers:a3 bundleIdentifiers:a4 artworkSize:a7 screenScale:a8 type:v19 source:width completion:height, a6];
}

void __130__MKAppleMediaServices_appleMediaServicesResultsWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v15 = @"error";
    v16[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 errorWithDomain:@"MKAppleMediaServicesErrorDomain" code:1 userInfo:v10];
    (*(v8 + 16))(v8, 0, v11);
  }

  else
  {
    v12 = [v5 count];
    v13 = *(a1 + 32);
    if (v12)
    {
      (*(v13 + 16))(v13, v5, 0);
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKAppleMediaServicesErrorDomain" code:2 userInfo:0];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

@end