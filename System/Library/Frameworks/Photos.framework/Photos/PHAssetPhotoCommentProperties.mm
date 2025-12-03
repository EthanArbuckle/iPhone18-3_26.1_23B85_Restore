@interface PHAssetPhotoCommentProperties
+ (id)propertiesToFetch;
- (PHAssetPhotoCommentProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetPhotoCommentProperties

- (PHAssetPhotoCommentProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v31.receiver = self;
  v31.super_class = PHAssetPhotoCommentProperties;
  v9 = [(PHAssetPhotoCommentProperties *)&v31 init];
  v10 = v9;
  if (v9)
  {
    v23 = v9;
    v24 = assetCopy;
    objc_storeWeak(&v9->super._asset, assetCopy);
    v25 = dictionaryCopy;
    [dictionaryCopy objectForKey:@"comments"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      bOOLValue2 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:{@"isLike", v23}];
          bOOLValue = [v19 BOOLValue];

          if (bOOLValue)
          {
            ++v14;
            if (bOOLValue2)
            {
              bOOLValue2 = 1;
            }

            else
            {
              v21 = [v18 objectForKeyedSubscript:@"isMyComment"];
              bOOLValue2 = [v21 BOOLValue];
            }
          }

          else
          {
            ++v15;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    else
    {
      bOOLValue2 = 0;
      v14 = 0;
      v15 = 0;
    }

    v23->_commentCount = v15;
    v10 = v23;
    v23->_likeCount = v14;
    v23->_hasUserLiked = bOOLValue2 & 1;

    assetCopy = v24;
    dictionaryCopy = v25;
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_51;

  return v2;
}

void __50__PHAssetPhotoCommentProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"commentDate";
  v3[1] = @"isLike";
  v3[2] = @"isMyComment";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_51;
  propertiesToFetch_pl_once_object_51 = v1;
}

@end