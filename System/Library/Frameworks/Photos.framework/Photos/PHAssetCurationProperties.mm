@interface PHAssetCurationProperties
+ (id)propertiesToFetch;
- (NSArray)objectSaliencyRects;
- (PHAssetCurationProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetCurationProperties

- (NSArray)objectSaliencyRects
{
  v17 = *MEMORY[0x1E69E9840];
  cachedObjectSaliencyRects = self->_cachedObjectSaliencyRects;
  if (!cachedObjectSaliencyRects)
  {
    if (self->_objectSaliencyRectsData)
    {
      v4 = MEMORY[0x1E696ACD0];
      v5 = MEMORY[0x1E695DFD8];
      v6 = objc_opt_class();
      v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
      objectSaliencyRectsData = self->_objectSaliencyRectsData;
      v14 = 0;
      v9 = [v4 unarchivedObjectOfClasses:v7 fromData:objectSaliencyRectsData error:&v14];
      v10 = v14;
      v11 = self->_cachedObjectSaliencyRects;
      self->_cachedObjectSaliencyRects = v9;

      if (!self->_cachedObjectSaliencyRects)
      {
        v12 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v10;
          _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to unarchive objectSaliencyRectsData: %@", buf, 0xCu);
        }
      }

      cachedObjectSaliencyRects = self->_cachedObjectSaliencyRects;
    }

    else
    {
      cachedObjectSaliencyRects = 0;
    }
  }

  return cachedObjectSaliencyRects;
}

- (PHAssetCurationProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = PHAssetCurationProperties;
  v9 = [(PHAssetCurationProperties *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"additionalAttributes.importedByBundleIdentifier"];
    importedByBundleIdentifier = v10->_importedByBundleIdentifier;
    v10->_importedByBundleIdentifier = v11;

    v13 = [v7 objectForKeyedSubscript:@"additionalAttributes.importedByDisplayName"];
    importedByDisplayName = v10->_importedByDisplayName;
    v10->_importedByDisplayName = v13;

    v15 = [v7 objectForKeyedSubscript:@"addedDate"];
    addedDate = v10->_addedDate;
    v10->_addedDate = v15;

    v17 = [v7 objectForKey:@"computedAttributes.interestingSubjectScore"];
    v18 = v17;
    if (v17)
    {
      [v17 floatValue];
    }

    else
    {
      v19 = 0.5;
    }

    v10->_interestingSubjectScore = v19;
    v20 = [v7 objectForKeyedSubscript:@"lastSharedDate"];
    lastSharedDate = v10->_lastSharedDate;
    v10->_lastSharedDate = v20;

    v22 = [v7 objectForKeyedSubscript:@"additionalAttributes.allowedForAnalysis"];
    v10->_allowedForAnalysis = [v22 BOOLValue];

    v23 = [v7 objectForKeyedSubscript:@"additionalAttributes.objectSaliencyRectsData"];
    objectSaliencyRectsData = v10->_objectSaliencyRectsData;
    v10->_objectSaliencyRectsData = v23;

    v25 = [v7 objectForKeyedSubscript:@"additionalAttributes.syndicationIdentifier"];
    syndicationIdentifier = v10->_syndicationIdentifier;
    v10->_syndicationIdentifier = v25;

    v27 = [v7 objectForKeyedSubscript:@"isDetectedScreenshot"];
    v10->_isDetectedScreenshot = [v27 BOOLValue];

    v28 = [v7 objectForKeyedSubscript:@"conversation.importSessionID"];
    conversationID = v10->_conversationID;
    v10->_conversationID = v28;
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_56;

  return v2;
}

void __46__PHAssetCurationProperties_propertiesToFetch__block_invoke()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v3[0] = @"addedDate";
  v3[1] = @"computedAttributes.interestingSubjectScore";
  v3[2] = @"lastSharedDate";
  v3[3] = @"additionalAttributes.allowedForAnalysis";
  v3[4] = @"additionalAttributes.objectSaliencyRectsData";
  v3[5] = @"additionalAttributes.importedByBundleIdentifier";
  v3[6] = @"additionalAttributes.importedByDisplayName";
  v3[7] = @"additionalAttributes.syndicationIdentifier";
  v3[8] = @"isDetectedScreenshot";
  v3[9] = @"conversation.importSessionID";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:10];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_56;
  propertiesToFetch_pl_once_object_56 = v1;
}

@end