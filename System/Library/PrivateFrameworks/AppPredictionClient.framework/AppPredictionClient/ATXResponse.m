@interface ATXResponse
- (ATXResponse)initWithCoder:(id)a3;
- (ATXResponse)initWithPredictions:(id)a3 cacheFileData:(id)a4 error:(id)a5;
- (ATXResponse)initWithPredictions:(id)a3 proactiveSuggestions:(id)a4 uuid:(id)a5 cacheFileData:(id)a6 blendingUICacheUpdateUUID:(id)a7 error:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (NSArray)predictedAppIdentities;
- (NSArray)predictedApps;
- (id)json;
- (id)jsonDescription;
- (id)jsonRawData;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAtxSearchResults:(id)a3;
- (void)json;
@end

@implementation ATXResponse

- (NSArray)predictedApps
{
  v2 = [ATXScoredPrediction predictionsFrom:self->_predictions];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_104];

  return v3;
}

- (ATXResponse)initWithPredictions:(id)a3 cacheFileData:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [(ATXResponse *)self initWithPredictions:v10 proactiveSuggestions:0 uuid:v11 cacheFileData:v9 blendingUICacheUpdateUUID:0 error:v8];

  return v12;
}

- (ATXResponse)initWithPredictions:(id)a3 proactiveSuggestions:(id)a4 uuid:(id)a5 cacheFileData:(id)a6 blendingUICacheUpdateUUID:(id)a7 error:(id)a8
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = ATXResponse;
  v18 = [(ATXResponse *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a5);
    objc_storeStrong(&v19->_predictions, a3);
    objc_storeStrong(&v19->_proactiveSuggestions, a4);
    objc_storeStrong(&v19->_cacheFileData, a6);
    objc_storeStrong(&v19->_blendingModelUICacheUpdateUUID, a7);
    objc_storeStrong(&v19->_error, a8);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("appClipQueue", v20);
    appClipQueue = v19->_appClipQueue;
    v19->_appClipQueue = v21;
  }

  return v19;
}

- (NSArray)predictedAppIdentities
{
  v2 = [ATXScoredPrediction predictionsFrom:self->_predictions];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_14_1];

  return v3;
}

ATXAppIdentity *__37__ATXResponse_predictedAppIdentities__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ATXIsRemoteAppBundleId();
  if (v3)
  {
    v4 = ATXBundleIdForRemoteBundleId();

    v2 = v4;
  }

  v5 = [[ATXAppIdentity alloc] initWithBundleIdentifier:v2 appType:v3];

  return v5;
}

- (id)jsonRawData
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"nil";
  }

  v20[0] = v5;
  v19[1] = @"predictedApps";
  v6 = [(ATXResponse *)self predictedApps];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v7;
  v19[2] = @"proactiveSuggestions";
  v8 = [(ATXResponse *)self proactiveSuggestions];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v20[2] = v10;
  v19[3] = @"cacheFileData";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_cacheFileData, "length")}];
  v12 = v11;
  blendingModelUICacheUpdateUUID = self->_blendingModelUICacheUpdateUUID;
  if (!blendingModelUICacheUpdateUUID)
  {
    blendingModelUICacheUpdateUUID = &stru_1F3E050C8;
  }

  v20[3] = v11;
  v20[4] = blendingModelUICacheUpdateUUID;
  v19[4] = @"blendingUICacheUpdateUUID";
  v19[5] = @"error";
  v14 = [(NSError *)self->_error description];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"nil";
  }

  v20[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];

  if (!v6)
  {
  }

  return v17;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXResponse *)self jsonRawData];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXResponse *)v5 json];
    }
  }

  return v4;
}

- (id)jsonDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXResponse *)self json];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXResponse *)self isEqualToResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[3])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_predictions;
  v9 = v8;
  if (v8 == v4[5])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_proactiveSuggestions;
  v12 = v11;
  if (v11 == v4[6])
  {
  }

  else
  {
    v13 = [(NSArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_cacheFileData;
  v15 = v14;
  if (v14 == v4[1])
  {
  }

  else
  {
    v16 = [(NSData *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_blendingModelUICacheUpdateUUID;
  v18 = v17;
  if (v17 == v4[7])
  {
  }

  else
  {
    v19 = [(NSUUID *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = self->_error;
  v23 = v22;
  if (v22 == v4[4])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSError *)v22 isEqual:?];
  }

LABEL_20:
  return v20;
}

- (void)enumerateAtxSearchResults:(id)a3
{
  v4 = a3;
  predictions = self->_predictions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__ATXResponse_enumerateAtxSearchResults___block_invoke;
  v7[3] = &unk_1E80C6678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSArray *)predictions enumerateObjectsUsingBlock:v7];
}

void __41__ATXResponse_enumerateAtxSearchResults___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 32) + 48);
  v6 = a2;
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 48) objectAtIndex:a3];
  }

  v8 = [[ATXSearchResult alloc] initWithScoredBundleId:v6 response:*(a1 + 32) proactiveSuggestion:v7];
  v9 = [v6 predictedItem];

  v10 = v9;
  if (![ATXApplicationRecord isAppClipWebClipBundleId:v10])
  {
    v12 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
    v13 = [v12 localizedName];
    v15 = 2;
    v14 = v10;
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E6994690] sharedStore];
  v12 = [v11 synchronouslyGetAppClipWithIdentifier:v10];

  v13 = [v12 title];
  if (v12 && [v12 isApplicationInstalled] && v13)
  {
    v14 = @"com.apple.application";
    v15 = 22;
LABEL_10:

    if (![v13 length])
    {
      v16 = __atxlog_handle_ui();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __41__ATXResponse_enumerateAtxSearchResults___block_invoke_cold_1(v10, v16);
      }
    }

    v17 = [MEMORY[0x1E69CA4F0] textWithString:v13];
    [(ATXSearchResult *)v8 setTitle:v17];

    [(ATXSearchResult *)v8 setIdentifier:v10];
    [(ATXSearchResult *)v8 setApplicationBundleIdentifier:v14];
    [(ATXSearchResult *)v8 setIsLocalApplicationResult:1];
    [(ATXSearchResult *)v8 setSectionBundleIdentifier:@"com.apple.spotlight.dec.zkw.apps"];
    [(ATXSearchResult *)v8 setRenderHorizontallyWithOtherResultsInCategory:1];
    v18 = [(ATXSearchResult *)v8 title];
    [v18 setMaxLines:1];

    v19 = [(ATXSearchResult *)v8 applicationBundleIdentifier];
    [(ATXSearchResult *)v8 setResultBundleId:v19];

    [(ATXSearchResult *)v8 setType:v15];
    v20 = __atxlog_handle_ui();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_INFO, "zkw app title: %@", buf, 0xCu);
    }

    v21 = __atxlog_handle_ui();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [(ATXSearchResult *)v8 identifier];
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_INFO, "zkw searchResult.identifier: %@", buf, 0xCu);
    }

    v23 = __atxlog_handle_ui();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [(ATXSearchResult *)v8 applicationBundleIdentifier];
      *buf = 138412290;
      v27 = v24;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_INFO, "zkw searchResult.applicationBundleIdentifier: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v25 = __atxlog_handle_ui();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __41__ATXResponse_enumerateAtxSearchResults___block_invoke_cold_2(v25);
  }

  v14 = @"com.apple.application";
LABEL_24:
}

- (ATXResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scoredPredictions"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"proactiveSuggestions"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheFileData"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendingModelUICacheUpdateUUID"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v17 = [(ATXResponse *)self initWithPredictions:v9 proactiveSuggestions:v13 uuid:v5 cacheFileData:v14 blendingUICacheUpdateUUID:v15 error:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_predictions forKey:@"scoredPredictions"];
  [v5 encodeObject:self->_proactiveSuggestions forKey:@"proactiveSuggestions"];
  [v5 encodeObject:self->_cacheFileData forKey:@"cacheFileData"];
  [v5 encodeObject:self->_blendingModelUICacheUpdateUUID forKey:@"blendingModelUICacheUpdateUUID"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (void)json
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize ATXResponse. Error: %@", &v2, 0xCu);
}

void __41__ATXResponse_enumerateAtxSearchResults___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ZKW app result had no title for bundleId: %@", &v2, 0xCu);
}

@end