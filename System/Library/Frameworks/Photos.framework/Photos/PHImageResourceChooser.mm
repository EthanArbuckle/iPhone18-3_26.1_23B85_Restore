@interface PHImageResourceChooser
+ (id)_bagFromInfo:(id)info asset:(id)asset behaviorSpec:(id)spec requiredScale:(double)scale bagVendor:(id)vendor assetIDContainerVendor:(id)containerVendor;
+ (id)_resourceVersionsFromImageRequestVersion:(int64_t)version assetHasAdjustments:(BOOL)adjustments;
+ (unint64_t)_chooserSourceOptionsFromBehaviorSpec:(id)spec allowHints:(BOOL)hints;
+ (void)initialize;
- (BOOL)_resourceInfoPassesTestForImageDerivativeOfVideo:(id)video;
- (CGRect)normalizedCropRect;
- (CGSize)desiredSize;
- (Class)_policyHandlerClassForCurrentPolicy;
- (PHImageResourceChooser)initWithAsset:(id)asset resourceHandler:(id)handler;
- (PHImageResourceChooser)initWithChooserList:(id)list asset:(id)asset resourceHandler:(id)handler;
- (id)_requestInfo;
- (id)context;
- (void)_reset;
- (void)_updateCachedGeometry;
- (void)presentNextQualifyingResource;
- (void)setAllowChoosingNonLocalVideoKeyFrameResource:(BOOL)resource;
- (void)setAllowHints:(BOOL)hints;
- (void)setBehaviorSpec:(id)spec;
- (void)setDesiredSize:(CGSize)size;
- (void)setFallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)available;
- (void)setIsCloudSharedMode:(BOOL)mode;
- (void)setNormalizedCropRect:(CGRect)rect;
@end

@implementation PHImageResourceChooser

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[PHRecyclableObjectVendor alloc] initWithTargetClass:objc_opt_class() requiresThreadSafety:1 initialPoolSize:4];
    v3 = s_bagVendor;
    s_bagVendor = v2;

    s_assetIDContainerVendor = [[PHRecyclableObjectVendor alloc] initWithTargetClass:objc_opt_class() requiresThreadSafety:1 initialPoolSize:4];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_updateCachedGeometry
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  v5 = self->_asset;
  v6 = height == *(MEMORY[0x1E695F060] + 8) && width == *MEMORY[0x1E695F060];
  v17 = v5;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PHImageResourceChooser _updateCachedGeometry]"];
    [currentHandler handleFailureInFunction:v16 file:@"PHImageResourceChooser.m" lineNumber:166 description:@"asset must be set before setting desired size."];
  }

  v7 = CGRectEqualToRect(self->_normalizedCropRect, *MEMORY[0x1E695F058]);
  [(PHResourceChooserAsset *)v17 unorientedSize];
  v9 = v8;
  if (v7)
  {
    [(PHResourceChooserAsset *)v17 unorientedSize];
    v11 = v9 * v10;
  }

  else
  {
    v12 = v8 * self->_normalizedCropRect.size.width;
    [(PHResourceChooserAsset *)v17 unorientedSize];
    v11 = v12 * (v13 * self->_normalizedCropRect.size.height);
  }

  v14 = 1.0;
  if (!v6)
  {
    v14 = ((width * height) / v11);
  }

  self->_requiredScale = fmin(v14, 1.0);
}

- (void)presentNextQualifyingResource
{
  if (!self->_behaviorSpec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageResourceChooser.m" lineNumber:408 description:@"no behavior spec set."];
  }

  if (self->_needsReset)
  {
    [(PHImageResourceChooser *)self _reset];
  }

  version = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec version];
  choosingPolicy = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec choosingPolicy];
  v5 = choosingPolicy;
  v7 = version < 2 && choosingPolicy == 3;
  _requestInfo = [(PHImageResourceChooser *)self _requestInfo];
  objc_initWeak(&location, self);
  objc_storeStrong(&self->_list->_asset, self->_asset);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PHImageResourceChooser_presentNextQualifyingResource__block_invoke;
  aBlock[3] = &unk_1E75A7DD8;
  objc_copyWeak(v25, &location);
  v25[1] = v5;
  v9 = _requestInfo;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  list = self->_list;
  itemHandler = list->_itemHandler;
  list->_itemHandler = v10;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__PHImageResourceChooser_presentNextQualifyingResource__block_invoke_103;
  v19[3] = &unk_1E75A7E00;
  objc_copyWeak(v21, &location);
  v13 = v9;
  v20 = v13;
  v21[1] = v5;
  v21[2] = version;
  v22 = v7;
  v14 = _Block_copy(v19);
  v15 = self->_list;
  endOfListHandler = v15->_endOfListHandler;
  v15->_endOfListHandler = v14;

  -[PHResourceChooserList continueEnumeratingWithSourceOptions:](self->_list, "continueEnumeratingWithSourceOptions:", [objc_opt_class() _chooserSourceOptionsFromBehaviorSpec:self->_behaviorSpec allowHints:self->_allowHints]);
  objc_destroyWeak(v21);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

- (void)_reset
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLImageManagerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    loggingPrefix = self->_loggingPrefix;
    v9 = 138412290;
    v10 = loggingPrefix;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "[RM]: %@ resetting chooser...", &v9, 0xCu);
  }

  fallbackInfo = self->_fallbackInfo;
  self->_fallbackInfo = 0;

  *&self->_didCheckForLocalVideoKeyFrame = 0;
  PHChooserListMoveFirst(self->_list);
  [(PHImageResourceChooser *)self _updateCachedGeometry];
  version = [(PHImageRequestBehaviorSpec *)self->_behaviorSpec version];
  if (version == 2)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  if (version == 1)
  {
    v8 = 1;
LABEL_7:
    v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"uniformTypeIdentifier.conformsToRawImage" ascending:v8];
  }

  PHChooserListSetSortDescriptor(self->_list, v7);
  self->_needsReset = 0;
}

- (id)_requestInfo
{
  v3 = [PHImageResourceChooserRequestInfo alloc];
  asset = self->_asset;
  requiredScale = self->_requiredScale;
  v6 = [PHImageResourceChooser _resourceVersionsFromImageRequestVersion:[(PHImageRequestBehaviorSpec *)self->_behaviorSpec version] assetHasAdjustments:[(PHResourceChooserAsset *)asset hasAdjustments]];
  *&v7 = requiredScale;
  v8 = [(PHImageResourceChooserRequestInfo *)v3 initWithAsset:asset desiredSize:v6 requestedScale:self->_behaviorSpec allowedResourceVersions:self->_isCloudSharedMode behaviorSpec:self->_loggingPrefix cloudSharedMode:self->_desiredSize.width fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:self->_desiredSize.height loggingPrefix:v7, self->_fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];

  return v8;
}

uint64_t __55__PHImageResourceChooser_presentNextQualifyingResource__block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4, void *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v56 = 0;
  v13 = [WeakRetained _policyHandlerClassForCurrentPolicy];
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v55 = 0;
  v16 = [v13 qualifyResourceInfo:v10 againstPolicy:v14 requestInfo:v15 reversed:a3 tooLargeForPolicy:&v56 disqualificationReason:&v55];
  v17 = v55;
  if (!v16)
  {
    goto LABEL_9;
  }

  if (([WeakRetained _resourceInfoPassesTestForImageDerivativeOfVideo:v10] & 1) == 0)
  {

    v17 = @"failed video derivative test";
LABEL_9:
    v21 = *(WeakRetained + 9);
    if (v21)
    {
      v19 = v21;
      v11[2](v11);
      v22 = 0;
      v23 = 1;
      v54 = @"NOT OK (Yielding FB)";
      goto LABEL_20;
    }

    if (v56 == 1)
    {
      v11[2](v11);
      *a4 = 1;
      v24 = @"NOT OK (Forcing EOL)";
    }

    else
    {
      v24 = @"NOT OK";
    }

LABEL_18:
    v54 = v24;
    goto LABEL_19;
  }

  if (v16 == 1)
  {
    if ([*(WeakRetained + 2) reversed])
    {
      v19 = v10;
      v20 = @"OK as FB (Yielding FB due to running in reverse)";
      goto LABEL_40;
    }

    objc_storeStrong(WeakRetained + 9, a2);
    v24 = @"OK as FB";
    goto LABEL_18;
  }

  if (v16 != 2)
  {
    v54 = 0;
LABEL_19:
    v19 = 0;
    v23 = *a4;
    v22 = 1;
    goto LABEL_20;
  }

  if (*(WeakRetained + 9) && ([v10 dataStoreKey], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v19 = *(WeakRetained + 9);
    v11[2](v11);
    v20 = @"OK, but not local (Yielding local FB)";
  }

  else
  {
    v19 = v10;
    v20 = @"OK";
  }

LABEL_40:
  v54 = v20;
  if (!v19)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v23 = 1;
LABEL_20:
  v25 = [*(a1 + 32) asset];
  [v10 approximateSizeFromAsset:v25];

  v26 = PLImageManagerGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 48);
    v53 = v11;
    v52 = v19;
    v51 = v23;
    if (v27 > 4)
    {
      v28 = @"best";
    }

    else
    {
      v28 = off_1E75AA510[v27];
    }

    v50 = v22;
    v49 = *(WeakRetained + 14);
    v46 = v28;
    v29 = DCIM_NSStringFromCGSize();
    v48 = *(WeakRetained + 4);
    v30 = CGRectEqualToRect(*(WeakRetained + 40), *MEMORY[0x1E695F058]);
    v31 = @" (crop adjusted)";
    v32 = &stru_1F0FC60C8;
    if (v30)
    {
      v31 = &stru_1F0FC60C8;
    }

    v47 = v31;
    v33 = DCIM_NSStringFromCGSize();
    [v10 resourceScale];
    v35 = v34;
    v36 = [v10 recipeID];
    if (v36)
    {
      v37 = MEMORY[0x1E696AEC0];
      [v10 recipeID];
      v45 = PLResourceRecipeIDDescription();
      v32 = [v37 stringWithFormat:@", recipe: %@", v45];
    }

    v38 = v35;
    if (v17)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", v17];
    }

    else
    {
      v39 = &stru_1F0FC60C8;
    }

    *buf = 138414594;
    v58 = v49;
    v59 = 2112;
    v60 = v46;
    v61 = 2112;
    v62 = v29;
    v63 = 2048;
    v64 = v48;
    v65 = 2112;
    v66 = v47;
    v67 = 2112;
    v68 = v33;
    v69 = 2048;
    v70 = v38;
    v71 = 2112;
    v72 = v32;
    v73 = 2112;
    v74 = v54;
    v75 = 2112;
    v76 = v39;
    _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "[RM]: %@ (choosing) policy: %@, req size: %@ (scale: %f%@), qualifying resource w appx size: %@ (scale: %f%@), %@%@", buf, 0x66u);
    if (v17)
    {
    }

    if (v36)
    {
    }

    v11 = v53;
    v19 = v52;
    v22 = v50;
    v23 = v51;
  }

  if ((v22 & 1) == 0)
  {
    v40 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    v41 = [PHImageResourceChooser _bagFromInfo:v19 asset:*(WeakRetained + 1) behaviorSpec:*(WeakRetained + 10) requiredScale:s_bagVendor bagVendor:s_assetIDContainerVendor assetIDContainerVendor:*(WeakRetained + 4)];
    v42 = *(WeakRetained + 3);
    v43 = objc_loadWeakRetained(WeakRetained + 13);
    (*(v42 + 16))(v42, v43, v41, v19);

    [s_bagVendor recycleObject:v41];
  }

  return v23 & 1;
}

- (Class)_policyHandlerClassForCurrentPolicy
{
  if ([(PHImageRequestBehaviorSpec *)self->_behaviorSpec choosingPolicy]<= 4)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void __55__PHImageResourceChooser_presentNextQualifyingResource__block_invoke_103(uint64_t a1, void *a2, _BYTE *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(WeakRetained + 9);
  if (v7)
  {
    v8 = v7;
    v9 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    v10 = [*(a1 + 32) asset];
    [v8 approximateSizeFromAsset:v10];

    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(WeakRetained + 14);
      v13 = *(a1 + 48);
      if (v13 > 4)
      {
        v14 = @"best";
      }

      else
      {
        v14 = off_1E75AA510[v13];
      }

      v20 = v14;
      v21 = DCIM_NSStringFromCGSize();
      v22 = *(WeakRetained + 4);
      v23 = DCIM_NSStringFromCGSize();
      v27 = 138413314;
      v28 = v12;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "[RM]: %@ (choosing) policy: %@, against size: %@ (scale: %f), yielding FB resource w appx size: %@ due to hitting EOL", &v27, 0x34u);
    }

    v24 = [PHImageResourceChooser _bagFromInfo:v8 asset:*(WeakRetained + 1) behaviorSpec:*(WeakRetained + 10) requiredScale:s_bagVendor bagVendor:s_assetIDContainerVendor assetIDContainerVendor:*(WeakRetained + 4)];
    v25 = *(WeakRetained + 3);
    v26 = objc_loadWeakRetained(WeakRetained + 13);
    (*(v25 + 16))(v25, v26, v24, v8);

    [s_bagVendor recycleObject:v24];
    goto LABEL_16;
  }

  if (*(a1 + 64) == 1 && (v15 = [v5 reversed], a3) && (v15 & 1) == 0)
  {
    v16 = PLImageManagerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(WeakRetained + 14);
      v27 = 138412290;
      v28 = v17;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "[RM]: %@ (choosing) couldn't find a resource meeting size criteria, turning around and removing size criteria...", &v27, 0xCu);
    }

    *a3 = 1;
    if (*(a1 + 56) == 1)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"uniformTypeIdentifier.conformsToRawImage" ascending:0];
      PHChooserListSetSortDescriptor(v5, v8);
LABEL_16:
    }
  }

  else
  {
    v18 = *(WeakRetained + 3);
    v19 = objc_loadWeakRetained(WeakRetained + 13);
    (*(v18 + 16))(v18, v19, 0, 0);
  }
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (CGSize)desiredSize
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setFallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)available
{
  if (vabdd_f64(self->_fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable, available) > 0.00000011920929)
  {
    self->_needsReset = 1;
    self->_fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable = available;
  }
}

- (void)setBehaviorSpec:(id)spec
{
  specCopy = spec;
  v5 = specCopy;
  if (!self->_needsReset && specCopy && self->_behaviorSpec)
  {
    loadingOptions = [(PHImageRequestBehaviorSpec *)specCopy loadingOptions];
    if (loadingOptions == [(PHImageRequestBehaviorSpec *)self->_behaviorSpec loadingOptions]&& (v7 = [(PHImageRequestBehaviorSpec *)v5 choosingPolicy], v7 >= [(PHImageRequestBehaviorSpec *)self->_behaviorSpec choosingPolicy]) && (v8 = [(PHImageRequestBehaviorSpec *)v5 version], v8 == [(PHImageRequestBehaviorSpec *)self->_behaviorSpec version]) && ([(PHImageRequestBehaviorSpec *)v5 minimumTableThumbnailLongSide], v10 = v9, [(PHImageRequestBehaviorSpec *)self->_behaviorSpec minimumTableThumbnailLongSide], v10 == v11))
    {
      onlyUseFetchedAssetPropertiesDuringChoosing = [(PHImageRequestBehaviorSpec *)v5 onlyUseFetchedAssetPropertiesDuringChoosing];
      v12 = onlyUseFetchedAssetPropertiesDuringChoosing ^ [(PHImageRequestBehaviorSpec *)self->_behaviorSpec onlyUseFetchedAssetPropertiesDuringChoosing];
    }

    else
    {
      v12 = 1;
    }

    self->_needsReset = v12;
  }

  behaviorSpec = self->_behaviorSpec;
  self->_behaviorSpec = v5;
}

- (void)setIsCloudSharedMode:(BOOL)mode
{
  if (self->_isCloudSharedMode != mode)
  {
    self->_needsReset = 1;
    self->_isCloudSharedMode = mode;
  }
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setNormalizedCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_normalizedCropRect))
  {
    if (!CGRectEqualToRect(self->_normalizedCropRect, *MEMORY[0x1E695F058]))
    {
      self->_needsReset = 1;
    }

    self->_normalizedCropRect.origin.x = x;
    self->_normalizedCropRect.origin.y = y;
    self->_normalizedCropRect.size.width = width;
    self->_normalizedCropRect.size.height = height;

    [(PHImageResourceChooser *)self _updateCachedGeometry];
  }
}

- (void)setAllowChoosingNonLocalVideoKeyFrameResource:(BOOL)resource
{
  if (self->_allowChoosingNonLocalVideoKeyFrameResource != resource)
  {
    self->_needsReset = 1;
    self->_allowChoosingNonLocalVideoKeyFrameResource = resource;
  }
}

- (void)setAllowHints:(BOOL)hints
{
  if (self->_allowHints != hints)
  {
    self->_needsReset = 1;
    self->_allowHints = hints;
  }
}

- (void)setDesiredSize:(CGSize)size
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  if (size.width != width || size.height != height)
  {
    if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
    {
      self->_needsReset = 1;
    }

    self->_desiredSize = size;
    [(PHImageResourceChooser *)self _updateCachedGeometry];
  }
}

- (PHImageResourceChooser)initWithAsset:(id)asset resourceHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  v8 = objc_alloc_init(PHResourceChooserList);
  v9 = [(PHImageResourceChooser *)self initWithChooserList:v8 asset:assetCopy resourceHandler:handlerCopy];

  return v9;
}

- (PHImageResourceChooser)initWithChooserList:(id)list asset:(id)asset resourceHandler:(id)handler
{
  listCopy = list;
  assetCopy = asset;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = PHImageResourceChooser;
  v13 = [(PHImageResourceChooser *)&v20 init];
  if (v13)
  {
    if (listCopy)
    {
      if (assetCopy)
      {
LABEL_4:
        objc_storeStrong(v13 + 2, list);
        objc_storeStrong(v13 + 1, asset);
        v14 = _Block_copy(handlerCopy);
        v15 = *(v13 + 3);
        *(v13 + 3) = v14;

        *(v13 + 45) = 257;
        v13[92] = 1;
        *(v13 + 4) = 0;
        v16 = *(MEMORY[0x1E695F058] + 16);
        *(v13 + 40) = *MEMORY[0x1E695F058];
        *(v13 + 56) = v16;
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"PHImageResourceChooser.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"list"}];

      if (assetCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v13 file:@"PHImageResourceChooser.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_4;
  }

LABEL_5:

  return v13;
}

- (BOOL)_resourceInfoPassesTestForImageDerivativeOfVideo:(id)video
{
  videoCopy = video;
  if ([(PHResourceChooserAsset *)self->_asset mediaType]!= 2)
  {
    goto LABEL_15;
  }

  if (!self->_didCheckForLocalVideoKeyFrame && self->_list && ([videoCopy isHintBased] & 1) == 0)
  {
    self->_didCheckForLocalVideoKeyFrame = 1;
    self->_hasLocalVideoKeyFrameInNonHintResources = PHChooserListLookAheadForNonHintResourcePassingTest(self->_list, &__block_literal_global_29014);
  }

  if (!self->_hasLocalVideoKeyFrameInNonHintResources)
  {
    goto LABEL_15;
  }

  isLocalVideoKeyFrameValid = [(PHResourceChooserAsset *)self->_asset isLocalVideoKeyFrameValid];
  recipeID = [videoCopy recipeID];
  if (isLocalVideoKeyFrameValid)
  {
    if ((PLResourceRecipeIDIsCPLImageDerivative() & 1) == 0 && ([videoCopy recipeID] != 65749 || (-[PHResourceChooserAsset isWalrusEnabled](self->_asset, "isWalrusEnabled") & 1) == 0))
    {
      if ([videoCopy recipeID] != 65749 || -[PHImageResourceChooser allowChoosingNonLocalVideoKeyFrameResource](self, "allowChoosingNonLocalVideoKeyFrameResource"))
      {
LABEL_15:
        v7 = 1;
        goto LABEL_16;
      }

      v9 = PLImageManagerGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "[RM]: rejecting local video keyframe b/c chooser is configured to disallow it", v10, 2u);
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = recipeID != 65749;
  }

LABEL_16:

  return v7;
}

+ (unint64_t)_chooserSourceOptionsFromBehaviorSpec:(id)spec allowHints:(BOOL)hints
{
  hintsCopy = hints;
  specCopy = spec;
  v6 = hintsCopy;
  if (([specCopy onlyUseFetchedAssetPropertiesDuringChoosing] & 1) == 0 && (objc_msgSend(specCopy, "choosingPolicy") > 2 || !hintsCopy || !objc_msgSend(specCopy, "choosingPolicy") && objc_msgSend(specCopy, "isNetworkAccessAllowed")))
  {
    v6 = hintsCopy | 2;
  }

  return v6;
}

+ (id)_bagFromInfo:(id)info asset:(id)asset behaviorSpec:(id)spec requiredScale:(double)scale bagVendor:(id)vendor assetIDContainerVendor:(id)containerVendor
{
  infoCopy = info;
  assetCopy = asset;
  specCopy = spec;
  vendorCopy = vendor;
  containerVendorCopy = containerVendor;
  dataStoreKey = [infoCopy dataStoreKey];

  if (dataStoreKey)
  {
    dataStoreKey = [vendorCopy dequeueRecyclableObject];
    dequeueRecyclableObject = [containerVendorCopy dequeueRecyclableObject];
    [dequeueRecyclableObject loadFromAsset:assetCopy];
    [dataStoreKey setAssetID:dequeueRecyclableObject];
    store = [infoCopy store];
    [dataStoreKey setDataStore:store];

    dataStoreKey2 = [infoCopy dataStoreKey];
    [dataStoreKey setDataStoreKey:dataStoreKey2];

    choosingPolicy = [specCopy choosingPolicy];
    if (choosingPolicy <= 4)
    {
      if (((1 << choosingPolicy) & 0x19) != 0)
      {
        IsFullSizeDeferredProcessingPreview = 0;
      }

      else
      {
        [infoCopy resourceScale];
        if (v24 >= scale)
        {
          [infoCopy recipeID];
          IsFullSizeDeferredProcessingPreview = PLResourceRecipeIsFullSizeDeferredProcessingPreview();
        }

        else
        {
          IsFullSizeDeferredProcessingPreview = 1;
        }
      }

      [dataStoreKey setIsDegraded:IsFullSizeDeferredProcessingPreview];
    }

    [dataStoreKey setIsPrimaryFormat:objc_msgSend(infoCopy, "isPrimaryFormat")];
    [dataStoreKey setKeyIsHintBased:{objc_msgSend(infoCopy, "isHintBased")}];
    [infoCopy recipeID];
    [assetCopy deferredProcessingNeeded];
    [dataStoreKey setIsDerivedFromDeferredPreview:PLResourceIsDerivedFromDeferredProcessingPreviewImage()];
  }

  else
  {
    dequeueRecyclableObject = 0;
  }

  return dataStoreKey;
}

+ (id)_resourceVersionsFromImageRequestVersion:(int64_t)version assetHasAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v7 = v6;
  v8 = &unk_1F102D0D0;
  if (version > 1)
  {
    if (version != 2)
    {
      if (version != 8)
      {
        goto LABEL_12;
      }

      v8 = &unk_1F102D0E8;
    }

    goto LABEL_11;
  }

  if (!version)
  {
    [v6 addObject:&unk_1F102D0A0];
    if (adjustmentsCopy)
    {
      v8 = &unk_1F102D0B8;
    }

    goto LABEL_11;
  }

  if (version == 1)
  {
    [v6 addObject:&unk_1F102D0D0];
    if (!adjustmentsCopy)
    {
      v8 = &unk_1F102D0A0;
LABEL_11:
      [v7 addObject:v8];
    }
  }

LABEL_12:

  return v7;
}

@end