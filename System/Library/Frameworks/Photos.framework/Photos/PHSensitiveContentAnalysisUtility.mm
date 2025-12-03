@interface PHSensitiveContentAnalysisUtility
+ (BOOL)_assetIsEligableForVideoProcessing:(id)processing;
+ (BOOL)_assetNeedsSensitivityProcessing:(id)processing forThumbnail:(BOOL)thumbnail forPickerSharing:(BOOL)sharing;
+ (BOOL)_assetNeedsVideoSensitivityProcessing:(id)processing forPickerSharing:(BOOL)sharing;
+ (BOOL)_isContentPreviewableForAsset:(id)asset forPickerSharing:(BOOL)sharing outError:(id *)error;
+ (BOOL)_shouldAnalyzeMedia;
+ (BOOL)sensitiveContentAnalysisEnabled;
+ (CGImage)_applyLiveTreatment:(CGImage *)treatment;
+ (CGImage)_applyStaticTreatment:(CGImage *)treatment;
+ (id)_blurredImage:(id)image;
+ (id)_clearedImageManagerResultDictionaryWithErrorIfNone:(id)none asset:(id)asset isContentPreviewableForAsset:(BOOL)forAsset assetNeedsProcessing:(BOOL)processing error:(id)error;
+ (id)_sharedCIContext;
+ (id)protectImageManagerResult:(id)result outVideoItem:(id *)item infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forVideoRequestFromAsset:(id)asset requestAnalysisIfUnprocessed:(BOOL)unprocessed;
+ (id)sensitivityAnalysisFromAsset:(id)asset outError:(id *)error;
+ (void)_analyzeUserOwnedAsset:(id)asset;
+ (void)_obscureImageManagerResultOrThumbnailDataIfSensitive:(id)sensitive outResult:(id *)result infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forRequestFromAsset:(id)asset applyLiveBlurIfSensitive:(BOOL)ifSensitive assetNeedsProcessing:(BOOL)processing;
+ (void)obscureThumbnailDataIfSensitiveFromThumbnailData:(id)data outThumbnailData:(id *)thumbnailData forThumbnailAsset:(id)asset;
+ (void)protectImageManagerResult:(id)result outAnimatedImage:(id *)image infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forAnimatedImageRequestFromAsset:(id)asset;
+ (void)protectImageManagerResult:(id)result outImage:(id *)image infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forImageRequestFromAsset:(id)asset applyLiveBlurIfSensitive:(BOOL)sensitive;
@end

@implementation PHSensitiveContentAnalysisUtility

+ (id)_sharedCIContext
{
  if (_sharedCIContext_onceToken != -1)
  {
    dispatch_once(&_sharedCIContext_onceToken, &__block_literal_global_8931);
  }

  v3 = _sharedCIContext_ciContext;

  return v3;
}

uint64_t __53__PHSensitiveContentAnalysisUtility__sharedCIContext__block_invoke()
{
  _sharedCIContext_ciContext = objc_alloc_init(MEMORY[0x1E695F620]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_blurredImage:(id)image
{
  v3 = MEMORY[0x1E695F648];
  imageCopy = image;
  gaussianBlurFilter = [v3 gaussianBlurFilter];
  [gaussianBlurFilter setValue:imageCopy forKey:*MEMORY[0x1E695FAB0]];

  [gaussianBlurFilter setValue:&unk_1F102E4A8 forKey:*MEMORY[0x1E695FB10]];
  outputImage = [gaussianBlurFilter outputImage];

  return outputImage;
}

+ (CGImage)_applyStaticTreatment:(CGImage *)treatment
{
  v44[1] = *MEMORY[0x1E69E9840];
  v40 = [MEMORY[0x1E695F658] imageWithCGImage:?];
  [v40 extent];
  v39 = [v40 imageByCroppingToRect:?];
  [v39 extent];
  v37 = v6;
  v38 = v5;
  v8 = v7;
  v10 = v9;
  v11 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v12 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v13 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v14 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v15 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v16 = vcvtd_n_f64_s64([self randomIntBetween:5 upperBound:150], 8uLL);
  v36 = [MEMORY[0x1E695F610] colorWithRed:v11 green:v13 blue:v15];
  v35 = [MEMORY[0x1E695F610] colorWithRed:v12 green:v14 blue:v16];
  smoothLinearGradientFilter = [MEMORY[0x1E695F648] smoothLinearGradientFilter];
  [smoothLinearGradientFilter setPoint0:{0.0, 0.0}];
  [smoothLinearGradientFilter setPoint1:{v8, v10}];
  [smoothLinearGradientFilter setColor0:v36];
  [smoothLinearGradientFilter setColor1:v35];
  outputImage = [smoothLinearGradientFilter outputImage];
  v19 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.1];
  v20 = MEMORY[0x1E695F648];
  v43 = *MEMORY[0x1E695FA78];
  v44[0] = v19;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v22 = [v20 filterWithName:@"CIConstantColorGenerator" withInputParameters:v21];

  outputImage2 = [v22 outputImage];
  v24 = MEMORY[0x1E695F648];
  v25 = *MEMORY[0x1E695FAB0];
  v41[0] = *MEMORY[0x1E695FA48];
  v41[1] = v25;
  v42[0] = outputImage;
  v42[1] = outputImage2;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v27 = [v24 filterWithName:@"CISourceOverCompositing" withInputParameters:v26];

  outputImage3 = [v27 outputImage];
  Width = CGImageGetWidth(treatment);
  Height = CGImageGetHeight(treatment);
  v31 = [outputImage3 imageByCroppingToRect:{v38, v37, v8, v10}];
  _sharedCIContext = [self _sharedCIContext];
  v33 = [_sharedCIContext createCGImage:v31 fromRect:{0.0, 0.0, Width, Height}];

  return v33;
}

+ (CGImage)_applyLiveTreatment:(CGImage *)treatment
{
  v5 = [MEMORY[0x1E695F658] imageWithCGImage:?];
  [v5 extent];
  v6 = [v5 imageByCroppingToRect:?];
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [self _blurredImage:v6];
  _sharedCIContext = [self _sharedCIContext];
  Width = CGImageGetWidth(treatment);
  Height = CGImageGetHeight(treatment);
  v19 = [v15 imageByCroppingToRect:{v8, v10, v12, v14}];
  v20 = [_sharedCIContext createCGImage:v19 fromRect:{0.0, 0.0, Width, Height}];

  return v20;
}

+ (void)obscureThumbnailDataIfSensitiveFromThumbnailData:(id)data outThumbnailData:(id *)thumbnailData forThumbnailAsset:(id)asset
{
  assetCopy = asset;
  dataCopy = data;
  LOBYTE(v9) = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:assetCopy];
  [self _obscureImageManagerResultOrThumbnailDataIfSensitive:dataCopy outResult:thumbnailData infoDictionary:0 outInfoDictionary:0 forRequestFromAsset:assetCopy applyLiveBlurIfSensitive:0 assetNeedsProcessing:v9];
}

+ (void)protectImageManagerResult:(id)result outAnimatedImage:(id *)image infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forAnimatedImageRequestFromAsset:(id)asset
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  resultCopy = result;
  LOBYTE(v14) = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:assetCopy];
  [self _obscureImageManagerResultOrThumbnailDataIfSensitive:resultCopy outResult:image infoDictionary:dictionaryCopy outInfoDictionary:infoDictionary forRequestFromAsset:assetCopy applyLiveBlurIfSensitive:1 assetNeedsProcessing:v14];
}

+ (id)protectImageManagerResult:(id)result outVideoItem:(id *)item infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forVideoRequestFromAsset:(id)asset requestAnalysisIfUnprocessed:(BOOL)unprocessed
{
  unprocessedCopy = unprocessed;
  v27[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v17 = [PHSensitiveContentAnalysisUtility assetNeedsVideoSensitivityProcessing:assetCopy];
  v18 = v17;
  v19 = 0;
  if (unprocessedCopy && v17)
  {
    if ([assetCopy sensitivityAnalysisState] == 4)
    {
      [PHSensitiveContentAnalysisUtility _analyzeUserOwnedAsset:assetCopy];
      v19 = 0;
    }

    else
    {
      photoLibrary = [assetCopy photoLibrary];
      uuid = [assetCopy uuid];
      v27[0] = uuid;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __163__PHSensitiveContentAnalysisUtility_protectImageManagerResult_outVideoItem_infoDictionary_outInfoDictionary_forVideoRequestFromAsset_requestAnalysisIfUnprocessed___block_invoke;
      v25[3] = &unk_1E75A89F8;
      v26 = assetCopy;
      v19 = [photoLibrary analyzeAssets:v21 forFeature:7 withCompletion:v25];
    }
  }

  LOBYTE(v23) = v18;
  [self _obscureImageManagerResultOrThumbnailDataIfSensitive:resultCopy outResult:item infoDictionary:dictionaryCopy outInfoDictionary:infoDictionary forRequestFromAsset:assetCopy applyLiveBlurIfSensitive:0 assetNeedsProcessing:v23];

  return v19;
}

void __163__PHSensitiveContentAnalysisUtility_protectImageManagerResult_outVideoItem_infoDictionary_outInfoDictionary_forVideoRequestFromAsset_requestAnalysisIfUnprocessed___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) uuid];
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Error analyzing video for safety: %{public}@, error: %@", &v8, 0x16u);
    }
  }
}

+ (void)protectImageManagerResult:(id)result outImage:(id *)image infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forImageRequestFromAsset:(id)asset applyLiveBlurIfSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v23[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v17 = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:assetCopy];
  v18 = v17;
  if (v17)
  {
    if ([assetCopy sensitivityAnalysisState] == 4)
    {
      [PHSensitiveContentAnalysisUtility _analyzeUserOwnedAsset:assetCopy];
    }

    else
    {
      photoLibrary = [assetCopy photoLibrary];
      uuid = [assetCopy uuid];
      v23[0] = uuid;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [photoLibrary coalesceAndAnalyzeAssets:v20 forFeature:8];
    }
  }

  LOBYTE(v21) = v18;
  [self _obscureImageManagerResultOrThumbnailDataIfSensitive:resultCopy outResult:image infoDictionary:dictionaryCopy outInfoDictionary:infoDictionary forRequestFromAsset:assetCopy applyLiveBlurIfSensitive:sensitiveCopy assetNeedsProcessing:v21];
}

+ (void)_analyzeUserOwnedAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  v5 = objc_alloc_init(getSCSensitivityAnalyzerClass());
  mainFileURL = [assetCopy mainFileURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke;
  v9[3] = &unk_1E75A4958;
  v10 = photoLibrary;
  v11 = assetCopy;
  v7 = assetCopy;
  v8 = photoLibrary;
  [v5 analyzeFile:mainFileURL options:8 progressHandler:0 completionHandler:v9];
}

void __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke_2;
    v13[3] = &unk_1E75AAEB0;
    v7 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke_3;
    v10[3] = &unk_1E75A77C0;
    v11 = v15;
    v12 = *(a1 + 40);
    [v7 performChanges:v13 completionHandler:v10];

    v8 = v14;
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) uuid];
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error analyzing asset %{public}@ for sensitivity: %@", buf, 0x16u);
    }
  }
}

void __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke_2(uint64_t a1)
{
  v4 = [PHAssetChangeRequest changeRequestForAsset:*(a1 + 32)];
  v2 = [PHSensitiveContentAnalysisUtility _assetIsEligableForVideoProcessing:*(a1 + 32)];
  v3 = [*(a1 + 40) compactAnalysis];
  if (v2)
  {
    [v4 setCompactVideoSCSensitivityAnalysis:v3];
  }

  else
  {
    [v4 setCompactImageSCSensitivityAnalysis:v3];
  }
}

void __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) compactAnalysis];
      v8 = [*(a1 + 40) uuid];
      v9 = 134218498;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Error persisting sensitivity analysis result: %lld for asset: %{public}@ with error: %@", &v9, 0x20u);
    }
  }
}

+ (void)_obscureImageManagerResultOrThumbnailDataIfSensitive:(id)sensitive outResult:(id *)result infoDictionary:(id)dictionary outInfoDictionary:(id *)infoDictionary forRequestFromAsset:(id)asset applyLiveBlurIfSensitive:(BOOL)ifSensitive assetNeedsProcessing:(BOOL)processing
{
  ifSensitiveCopy = ifSensitive;
  sensitiveCopy = sensitive;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v31 = 0;
  v17 = [PHSensitiveContentAnalysisUtility isContentPreviewableForAsset:assetCopy outError:&v31];
  v18 = v31;
  if (v17 && !processing)
  {
    v21 = sensitiveCopy;
    *result = sensitiveCopy;
    if (infoDictionary)
    {
      v22 = dictionaryCopy;
      *infoDictionary = dictionaryCopy;
    }
  }

  else
  {
    if (infoDictionary)
    {
      v20 = [PHSensitiveContentAnalysisUtility _clearedImageManagerResultDictionaryWithErrorIfNone:dictionaryCopy asset:assetCopy isContentPreviewableForAsset:v17 assetNeedsProcessing:processing error:v18];
      *infoDictionary = v20;
    }

    *result = 0;
    if (!processing)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        *result = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = DCIM_newPLImageWithData();
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          v23 = sensitiveCopy;
        }

        v24 = v23;
        if (v23)
        {
          v25 = DCIM_CGImageRefFromPLImage();
          if (ifSensitiveCopy)
          {
            v26 = [self _applyLiveTreatment:v25];
          }

          else
          {
            v26 = [self _applyStaticTreatment:v25];
          }

          v27 = v26;
          if (v26)
          {
            v28 = DCIM_newPLImageWithCGImage();
            CGImageRelease(v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          *result = v28;
        }
      }
    }
  }

LABEL_15:
}

+ (BOOL)sensitiveContentAnalysisEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PHSensitiveContentAnalysisUtility_sensitiveContentAnalysisEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sensitiveContentAnalysisEnabled_onceToken != -1)
  {
    dispatch_once(&sensitiveContentAnalysisEnabled_onceToken, block);
  }

  return sensitiveContentAnalysisEnabled_shouldAnalyzeMedia;
}

void __68__PHSensitiveContentAnalysisUtility_sensitiveContentAnalysisEnabled__block_invoke(uint64_t a1)
{
  sensitiveContentAnalysisEnabled_shouldAnalyzeMedia = [*(a1 + 32) _shouldAnalyzeMedia];
  SCSensitivityAnalysisClass = getSCSensitivityAnalysisClass();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PHSensitiveContentAnalysisUtility_sensitiveContentAnalysisEnabled__block_invoke_2;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v5[4] = *(a1 + 32);
  v3 = [SCSensitivityAnalysisClass subscribeToSensitiveContentPolicyChangeNotifications:v5];
  v4 = sensitiveContentAnalysisEnabled_cancellablePolicySubscription;
  sensitiveContentAnalysisEnabled_cancellablePolicySubscription = v3;
}

void __68__PHSensitiveContentAnalysisUtility_sensitiveContentAnalysisEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Error from subscribeToSensitiveContentPolicyChangeNotifications: %@", &v5, 0xCu);
    }
  }

  sensitiveContentAnalysisEnabled_shouldAnalyzeMedia = [*(a1 + 32) _shouldAnalyzeMedia];
}

+ (BOOL)_shouldAnalyzeMedia
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [getSCSensitivityAnalyzerClass() shouldAnalyzeMedia:&v7];
  v3 = v7;
  v4 = v3;
  if (v3 && [v3 code] != 20)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Error checking if SCSensitivityAnalyzer shouldAnalyzeMedia: %@", buf, 0xCu);
    }
  }

  return v2;
}

+ (BOOL)_isContentPreviewableForAsset:(id)asset forPickerSharing:(BOOL)sharing outError:(id *)error
{
  assetCopy = asset;
  sourceType = [assetCopy sourceType];
  if ((sharing || sourceType == 256 || sourceType == 2) && [assetCopy compactSCSensitivityAnalysis] && objc_msgSend(self, "sensitiveContentAnalysisEnabled"))
  {
    v10 = [self sensitivityAnalysisFromAsset:assetCopy outError:error];
    v11 = v10;
    if (v10)
    {
      isContentPreviewable = [v10 isContentPreviewable];
    }

    else
    {
      isContentPreviewable = 0;
    }
  }

  else
  {
    isContentPreviewable = 1;
  }

  return isContentPreviewable;
}

+ (BOOL)_assetNeedsVideoSensitivityProcessing:(id)processing forPickerSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  processingCopy = processing;
  if ([PHSensitiveContentAnalysisUtility _assetIsEligableForVideoProcessing:processingCopy])
  {
    v7 = [self _assetNeedsSensitivityProcessing:processingCopy forThumbnail:0 forPickerSharing:sharingCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_assetIsEligableForVideoProcessing:(id)processing
{
  processingCopy = processing;
  if ([processingCopy isVideo])
  {
    LOBYTE(v4) = 1;
  }

  else if ([processingCopy isPhotoIris] && objc_msgSend(processingCopy, "canPlayPhotoIris"))
  {
    v4 = [processingCopy isPhotoIrisPlaceholder] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)_assetNeedsSensitivityProcessing:(id)processing forThumbnail:(BOOL)thumbnail forPickerSharing:(BOOL)sharing
{
  processingCopy = processing;
  v9 = processingCopy;
  if ((sharing || [processingCopy sourceType] == 256 || objc_msgSend(v9, "sourceType") == 2) && objc_msgSend(self, "sensitiveContentAnalysisEnabled"))
  {
    if ([v9 compactSCSensitivityAnalysis])
    {
      v10 = [self sensitivityAnalysisFromAsset:v9 outError:0];
      v11 = v10;
      if (v10)
      {
        if ([v10 mayNeedOnDemandAnalysis] && objc_msgSend(v11, "isContentPreviewable"))
        {
          objc_opt_class();
          v12 = v9;
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          v15 = v14 && !thumbnail && [v14 sensitivityAnalysisState] != 2 && objc_msgSend(v14, "sensitivityAnalysisState") != 3;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_clearedImageManagerResultDictionaryWithErrorIfNone:(id)none asset:(id)asset isContentPreviewableForAsset:(BOOL)forAsset assetNeedsProcessing:(BOOL)processing error:(id)error
{
  processingCopy = processing;
  forAssetCopy = forAsset;
  v33 = *MEMORY[0x1E69E9840];
  noneCopy = none;
  assetCopy = asset;
  errorCopy = error;
  v14 = errorCopy;
  if (!noneCopy && !errorCopy && forAssetCopy && !processingCopy)
  {
    v15 = 0;
    goto LABEL_23;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (noneCopy && ([noneCopy objectForKeyedSubscript:@"PHImageErrorKey"], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [dictionary setObject:v17 forKeyedSubscript:@"PHImageErrorKey"];
  }

  else
  {
    if (!v14)
    {
      if (forAssetCopy)
      {
        if (!processingCopy)
        {
          goto LABEL_16;
        }

        v19 = MEMORY[0x1E696ABC0];
        v20 = 10002;
      }

      else
      {
        v19 = MEMORY[0x1E696ABC0];
        v20 = 10001;
      }

      v21 = [v19 errorWithDomain:@"PHPhotosErrorDomain" code:v20 userInfo:0];
      [dictionary setObject:v21 forKeyedSubscript:@"PHImageErrorKey"];

      goto LABEL_16;
    }

    [dictionary setObject:v14 forKeyedSubscript:@"PHImageErrorKey"];
  }

LABEL_16:
  v22 = [dictionary objectForKeyedSubscript:@"PHImageErrorKey"];

  if (v22)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      objectID = [assetCopy objectID];
      v25 = [dictionary objectForKeyedSubscript:@"PHImageErrorKey"];
      v29 = 138412546;
      v30 = objectID;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Error encountered during request for assetID: %@ error: %@", &v29, 0x16u);
    }
  }

  v26 = [noneCopy objectForKeyedSubscript:@"PHImageResultIsDegradedKey"];

  if (v26)
  {
    v27 = [noneCopy objectForKeyedSubscript:@"PHImageResultIsDegradedKey"];
    [dictionary setObject:v27 forKeyedSubscript:@"PHImageResultIsDegradedKey"];
  }

  v15 = [dictionary copy];

LABEL_23:

  return v15;
}

+ (id)sensitivityAnalysisFromAsset:(id)asset outError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v19 = 0;
  v6 = [objc_alloc(getSCSensitivityAnalysisClass()) initFromCompactAnalysis:objc_msgSend(assetCopy error:{"compactSCSensitivityAnalysis"), &v19}];
  v7 = v19;
  if (!v6 && [assetCopy compactSCSensitivityAnalysis] >= 1)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    objc_opt_class();
    v9 = assetCopy;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = PLBackendGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        localIdentifier = [v11 localIdentifier];
        compactSCSensitivityAnalysis = [v9 compactSCSensitivityAnalysis];
        *buf = 138543874;
        v21 = localIdentifier;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = compactSCSensitivityAnalysis;
        v16 = "Error initializing SCSensitivityAnalysis for asset: %{public}@ error: %@ value: %lld";
LABEL_13:
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
      }
    }

    else if (v13)
    {
      localIdentifier = [v9 objectID];
      compactSCSensitivityAnalysis2 = [v9 compactSCSensitivityAnalysis];
      *buf = 138543874;
      v21 = localIdentifier;
      v22 = 2112;
      v23 = v7;
      v24 = 2048;
      v25 = compactSCSensitivityAnalysis2;
      v16 = "Error initializing SCSensitivityAnalysis for assetID: %{public}@ error: %@ value: %lld";
      goto LABEL_13;
    }
  }

  return v6;
}

@end