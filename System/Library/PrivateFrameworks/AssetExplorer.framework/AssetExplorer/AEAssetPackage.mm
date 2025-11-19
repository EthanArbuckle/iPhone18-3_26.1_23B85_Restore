@interface AEAssetPackage
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sidecarTimeForKey:(SEL)a3;
- (AEAssetPackage)init;
- (AEAssetPackage)initWithAssetIdentifier:(id)a3 durableURLs:(id)a4 sidecar:(id)a5;
- (AEAssetPackage)initWithAssetIdentifier:(id)a3 durableURLs:(id)a4 suppressedTypes:(id)a5 sidecar:(id)a6;
- (AEAssetPackage)initWithCoder:(id)a3;
- (BOOL)containsGenerationRecipeData;
- (BOOL)containsGenerationSourceImage;
- (BOOL)containsLivePhotoContent;
- (BOOL)containsSuppressedLivePhoto;
- (BOOL)hasPhotoColorAdjustments;
- (BOOL)isURLSuppressedForType:(id)a3;
- (NSString)description;
- (NSString)uniformTypeIdentifier;
- (NSURL)providedFullsizeImageURL;
- (NSURL)providedFullsizeRenderImageURL;
- (NSURL)providedFullsizeRenderVideoURL;
- (NSURL)providedVideoURL;
- (PFAssetAdjustments)assetAdjustments;
- (double)aspectRatio;
- (double)duration;
- (id)_sidecarObjectForKey:(id)a3;
- (id)browserItemPayload;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentURLForType:(id)a3;
- (id)durableURLsSnapshotApplyingSuppression:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)reviewAssetFromPackageMetadata;
- (id)sidecarDataForKey:(id)a3;
- (id)sidecarDateForKey:(id)a3;
- (id)sidecarImageForKey:(id)a3;
- (id)sidecarNumberForKey:(id)a3;
- (id)sidecarPropertyListForKey:(id)a3;
- (id)sidecarSnapshot;
- (id)sourceImageURL;
- (id)suppressedTypesSnapshot;
- (int64_t)_sendSourceFromMediaOrigin:(int64_t)a3;
- (int64_t)mediaOrigin;
- (int64_t)playbackStyle;
- (unint64_t)mediaSubtypes;
- (unint64_t)mediaType;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
- (unsigned)playbackVariation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AEAssetPackage

- (id)sidecarImageForKey:(id)a3
{
  v3 = [(AEAssetPackage *)self _sidecarObjectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sidecarTimeForKey:(SEL)a3
{
  *retstr = **&MEMORY[0x277CC0898];
  dictionaryRepresentation = [(AEAssetPackage *)self _sidecarObjectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
  }

  return result;
}

- (id)sidecarDateForKey:(id)a3
{
  v3 = [(AEAssetPackage *)self _sidecarObjectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sidecarDataForKey:(id)a3
{
  v3 = [(AEAssetPackage *)self _sidecarObjectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sidecarNumberForKey:(id)a3
{
  v3 = [(AEAssetPackage *)self _sidecarObjectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sidecarPropertyListForKey:(id)a3
{
  v3 = [(AEAssetPackage *)self _sidecarObjectForKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [MEMORY[0x277CCAC58] propertyList:v3 isValidForFormat:200])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sidecarObjectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v5 = [(AEAssetPackage *)self _packageContentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__AEAssetPackage__sidecarObjectForKey___block_invoke;
    block[3] = &unk_278CC7358;
    block[4] = self;
    v10 = &v11;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __39__AEAssetPackage__sidecarObjectForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _contentQueueSidecar];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)currentURLForType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  packageContentQueue = self->__packageContentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__AEAssetPackage_currentURLForType___block_invoke;
  block[3] = &unk_278CC7358;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(packageContentQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __36__AEAssetPackage_currentURLForType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)suppressedTypesSnapshot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(AEAssetPackage *)self _packageContentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__AEAssetPackage_suppressedTypesSnapshot__block_invoke;
  v6[3] = &unk_278CC74B8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__AEAssetPackage_suppressedTypesSnapshot__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _contentQueue_suppressedTypes];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sidecarSnapshot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(AEAssetPackage *)self _packageContentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__AEAssetPackage_sidecarSnapshot__block_invoke;
  v6[3] = &unk_278CC74B8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__AEAssetPackage_sidecarSnapshot__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _contentQueueSidecar];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)durableURLsSnapshotApplyingSuppression:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AEAssetPackage_durableURLsSnapshotApplyingSuppression___block_invoke;
  block[3] = &unk_278CC7128;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __57__AEAssetPackage_durableURLsSnapshotApplyingSuppression___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  v3 = [v2 mutableCopy];

  if (*(a1 + 48) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [*(a1 + 32) _contentQueue_suppressedTypes];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [@"com.apple.asset-explorer-package.suppressed." stringByAppendingString:v9];
          [(NSMutableDictionary *)v3 ae_moveObjectFromKey:v9 toKey:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v11 = [v3 copy];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__AEAssetPackage_mutableCopyWithZone___block_invoke;
  v7[3] = &unk_278CC74B8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __38__AEAssetPackage_mutableCopyWithZone___block_invoke(uint64_t a1)
{
  v2 = [AEMutableAssetPackage alloc];
  v9 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) _contentQueue_finalURLs];
  v4 = [*(a1 + 32) _contentQueue_suppressedTypes];
  v5 = [*(a1 + 32) _contentQueueSidecar];
  v6 = [(AEAssetPackage *)v2 initWithAssetIdentifier:v9 durableURLs:v3 suppressedTypes:v4 sidecar:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__AEAssetPackage_copyWithZone___block_invoke;
  v7[3] = &unk_278CC74B8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __31__AEAssetPackage_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [AEAssetPackage alloc];
  v9 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) _contentQueue_finalURLs];
  v4 = [*(a1 + 32) _contentQueue_suppressedTypes];
  v5 = [*(a1 + 32) _contentQueueSidecar];
  v6 = [(AEAssetPackage *)v2 initWithAssetIdentifier:v9 durableURLs:v3 suppressedTypes:v4 sidecar:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Coder must allow keyed coding."];
  }

  v5 = [(AEAssetPackage *)self identifier];
  [v4 encodeObject:v5 forKey:@"AEAssetPackage.assetIdentifier"];

  v6 = [(AEAssetPackage *)self durableURLsSnapshotApplyingSuppression:0];
  [v4 encodeObject:v6 forKey:@"AEAssetPackage.durableURLs"];

  v7 = [(AEAssetPackage *)self suppressedTypesSnapshot];
  [v4 encodeObject:v7 forKey:@"AEAssetPackage.suppressedTypes"];

  v8 = [(AEAssetPackage *)self sidecarSnapshot];
  [v4 encodeObject:v8 forKey:@"AEAssetPackage.sidecar"];
}

- (AEAssetPackage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AEAssetPackage.assetIdentifier"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"AEAssetPackage.durableURLs"];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"AEAssetPackage.suppressedTypes"];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  [v15 addObject:objc_opt_class()];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"AEAssetPackage.sidecar"];

  v17 = [(AEAssetPackage *)self initWithAssetIdentifier:v5 durableURLs:v10 suppressedTypes:v14 sidecar:v16];
  return v17;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(AEAssetPackage *)self identifier];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"identifier", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(AEAssetPackage *)self durableURLsSnapshotApplyingSuppression:0];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"durableURLs", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(AEAssetPackage *)self suppressedTypesSnapshot];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"suppressedTypes", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(AEAssetPackage *)self sidecarSnapshot];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"sidecar", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = AEAssetPackage;
  v17 = [(AEAssetPackage *)&v21 description];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"<%@ %@>", v17, v18];

  return v19;
}

- (AEAssetPackage)init
{
  [(AEAssetPackage *)self doesNotRecognizeSelector:a2];

  return [(AEAssetPackage *)self initWithAssetIdentifier:@"bogus" durableURLs:0 sidecar:0];
}

- (AEAssetPackage)initWithAssetIdentifier:(id)a3 durableURLs:(id)a4 suppressedTypes:(id)a5 sidecar:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = AEAssetPackage;
  v14 = [(AEAssetPackage *)&v26 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.asset-explorer.package-content-queue", MEMORY[0x277D85CD8]);
    packageContentQueue = v14->__packageContentQueue;
    v14->__packageContentQueue = v15;

    v17 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = v14->__packageContentQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__AEAssetPackage_initWithAssetIdentifier_durableURLs_suppressedTypes_sidecar___block_invoke;
    v21[3] = &unk_278CC7680;
    v22 = v14;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    dispatch_barrier_sync(v19, v21);
  }

  return v14;
}

void __78__AEAssetPackage_initWithAssetIdentifier_durableURLs_suppressedTypes_sidecar___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v4 = v3;
  objc_storeStrong((a1[4] + 24), v3);

  v5 = a1[6];
  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v7 = v6;
  objc_storeStrong((a1[4] + 40), v6);

  v8 = a1[7];
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  objc_storeStrong((a1[4] + 32), v9);
}

- (AEAssetPackage)initWithAssetIdentifier:(id)a3 durableURLs:(id)a4 sidecar:(id)a5
{
  v14 = 0;
  v8 = a5;
  v9 = a3;
  v10 = _UnsuppressedURLs(a4, &v14);
  v11 = v14;
  v12 = [(AEAssetPackage *)self initWithAssetIdentifier:v9 durableURLs:v10 suppressedTypes:v11 sidecar:v8];

  return v12;
}

- (BOOL)isURLSuppressedForType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__AEAssetPackage_AEURLSuppression__isURLSuppressedForType___block_invoke;
  block[3] = &unk_278CC7358;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_barrier_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __59__AEAssetPackage_AEURLSuppression__isURLSuppressedForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_suppressedTypes];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (NSURL)providedFullsizeRenderVideoURL
{
  v3 = [(AEAssetPackage *)self currentURLForType:@"com.apple.assetexplorer.editedoriginalvideo"];
  if (v3)
  {
    v4 = [*MEMORY[0x277CE1E00] identifier];
    v5 = [(AEAssetPackage *)self currentURLForType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)providedVideoURL
{
  v3 = [(AEAssetPackage *)self currentURLForType:@"com.apple.assetexplorer.editedoriginalvideo"];
  if (!v3)
  {
    v4 = [*MEMORY[0x277CE1E00] identifier];
    v3 = [(AEAssetPackage *)self currentURLForType:v4];
  }

  return v3;
}

- (NSURL)providedFullsizeRenderImageURL
{
  v3 = [(AEAssetPackage *)self currentURLForType:@"com.apple.assetexplorer.editedoriginalimage"];
  if (v3)
  {
    v4 = [*MEMORY[0x277CE1DB0] identifier];
    v5 = [(AEAssetPackage *)self currentURLForType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)providedFullsizeImageURL
{
  v3 = [(AEAssetPackage *)self currentURLForType:@"com.apple.assetexplorer.editedoriginalimage"];
  if (!v3)
  {
    v4 = [*MEMORY[0x277CE1DB0] identifier];
    v3 = [(AEAssetPackage *)self currentURLForType:v4];
  }

  return v3;
}

- (PFAssetAdjustments)assetAdjustments
{
  v3 = [(AEAssetPackage *)self sidecarPropertyListForKey:@"com.apple.assetexplorer.editedadjustments"];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = [objc_alloc(MEMORY[0x277D3B3E8]) initWithPropertyListDictionary:v4];
    goto LABEL_5;
  }

  v4 = [(AEAssetPackage *)self sidecarPropertyListForKey:@"com.apple.video.slomo"];
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (double)duration
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)pixelHeight
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayPixelHeight"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)pixelWidth
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayPixelWidth"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unsigned)playbackVariation
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayPlaybackVariation"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)playbackStyle
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayPlaybackStyle"];
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)mediaSubtypes
{
  v3 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayMediaSubtypes"];
  v4 = [v3 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFF5;
  if ([(AEAssetPackage *)self canPlayPhotoIris])
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AEAssetPackage *)self isHDR];
  v7 = 2;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v5 | v7;

  return v8 | v4;
}

- (unint64_t)mediaType
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayMediaType"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)hasPhotoColorAdjustments
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageDisplayHasPhotoColorAdjustments"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)uniformTypeIdentifier
{
  v2 = MEMORY[0x277D3B508];
  v3 = [(AEAssetPackage *)self providedFullsizeImageURL];
  v4 = [v3 pathExtension];
  v5 = [v2 typeWithFilenameExtension:v4];
  v6 = [v5 identifier];

  return v6;
}

- (double)aspectRatio
{
  if (![(AEAssetPackage *)self pixelHeight])
  {
    return 1.0;
  }

  v3 = [(AEAssetPackage *)self pixelWidth];
  return v3 / [(AEAssetPackage *)self pixelHeight];
}

- (id)reviewAssetFromPackageMetadata
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  if (v3 != v4 || (objc_getAssociatedObject(v2, sel_reviewAssetFromPackageMetadata), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [objc_alloc(MEMORY[0x277D3D048]) initWithConformingAsset:v2];
    if (v3 == v4)
    {
      objc_setAssociatedObject(v2, sel_reviewAssetFromPackageMetadata, v5, 1);
    }
  }

  objc_sync_exit(v2);

  return v5;
}

- (BOOL)containsSuppressedLivePhoto
{
  v3 = *MEMORY[0x277CE1E00];
  v4 = [*MEMORY[0x277CE1E00] identifier];
  v5 = [(AEAssetPackage *)self currentURLForType:v4];

  v6 = [v3 identifier];
  LOBYTE(self) = [(AEAssetPackage *)self isURLSuppressedForType:v6];

  return (v5 != 0) & self;
}

- (BOOL)containsLivePhotoContent
{
  v3 = [*MEMORY[0x277CE1DB0] identifier];
  v4 = [(AEAssetPackage *)self currentURLForType:v3];

  v5 = [*MEMORY[0x277CE1E00] identifier];
  v6 = [(AEAssetPackage *)self currentURLForType:v5];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;

  return v8;
}

- (int64_t)mediaOrigin
{
  v2 = [(AEAssetPackage *)self sidecarNumberForKey:@"AEAssetPackageMediaOrigin"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (id)sourceImageURL
{
  v3 = [*MEMORY[0x277CE1DB0] identifier];
  v4 = [(AEAssetPackage *)self currentURLForType:v3];

  return v4;
}

- (BOOL)containsGenerationSourceImage
{
  v2 = [(AEAssetPackage *)self sourceImageURL];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)containsGenerationRecipeData
{
  v2 = [(AEAssetPackage *)self generationRecipeData];
  v3 = v2 != 0;

  return v3;
}

- (id)browserItemPayload
{
  v32[1] = *MEMORY[0x277D85DE8];
  v23 = [(AEAssetPackage *)self identifier];
  v3 = objc_alloc_init(MEMORY[0x277CF9790]);
  v4 = [(AEAssetPackage *)self durableURLsSnapshotApplyingSuppression:1];
  v5 = [*MEMORY[0x277CE1DB0] identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [*MEMORY[0x277CE1E00] identifier];
  v25 = [v4 objectForKeyedSubscript:v7];

  v24 = v6;
  if (v6)
  {
    [v3 setFileURL:v6];
    [v3 setVideoComplementFileURL:v25];
  }

  else
  {
    [v3 setFileURL:v25];
  }

  v8 = [v4 objectForKeyedSubscript:@"com.apple.assetexplorer.alasset.url"];
  v9 = [(AEAssetPackage *)self sidecarPropertyListForKey:@"com.apple.video.slomo"];
  v26 = [(AEAssetPackage *)self sidecarNumberForKey:*MEMORY[0x277D774A8]];
  v10 = [(AEAssetPackage *)self sidecarNumberForKey:*MEMORY[0x277D774A0]];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v8)
  {
    v12 = v10;
    v31 = *MEMORY[0x277CF9748];
    v13 = [v8 absoluteString];
    v32[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v11 addEntriesFromDictionary:v14];

LABEL_8:
    v10 = v12;
    goto LABEL_9;
  }

  if (v9)
  {
    v12 = v10;
    v29 = *MEMORY[0x277CF9758];
    v30 = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v11 addEntriesFromDictionary:v13];
    goto LABEL_8;
  }

LABEL_9:
  if (v26 && v10)
  {
    v15 = *MEMORY[0x277CF9750];
    v27[0] = *MEMORY[0x277CF9760];
    v27[1] = v15;
    v28[0] = v26;
    v28[1] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v11 addEntriesFromDictionary:v16];
  }

  v17 = [(AEAssetPackage *)self sidecarSnapshot];
  [v11 setObject:v4 forKey:@"AEAssetPackageDurableURLs"];
  [v11 setObject:v17 forKey:@"AEAssetPackageSidecar"];
  [v11 setObject:v23 forKey:@"AEAssetPackageAssetIdentifier"];
  v18 = [(AEAssetPackage *)self _sendSourceFromMediaOrigin:[(AEAssetPackage *)self mediaOrigin]];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  [v11 setObject:v19 forKey:kAEChatKitPayloadSendSource];

  v20 = [v11 copy];
  [v3 setUserInfo:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_sendSourceFromMediaOrigin:(int64_t)a3
{
  if (a3 > 4)
  {
    return 5;
  }

  else
  {
    return qword_241200118[a3];
  }
}

@end