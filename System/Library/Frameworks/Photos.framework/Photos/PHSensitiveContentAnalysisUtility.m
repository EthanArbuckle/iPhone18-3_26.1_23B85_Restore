@interface PHSensitiveContentAnalysisUtility
+ (BOOL)_assetIsEligableForVideoProcessing:(id)a3;
+ (BOOL)_assetNeedsSensitivityProcessing:(id)a3 forThumbnail:(BOOL)a4 forPickerSharing:(BOOL)a5;
+ (BOOL)_assetNeedsVideoSensitivityProcessing:(id)a3 forPickerSharing:(BOOL)a4;
+ (BOOL)_isContentPreviewableForAsset:(id)a3 forPickerSharing:(BOOL)a4 outError:(id *)a5;
+ (BOOL)_shouldAnalyzeMedia;
+ (BOOL)sensitiveContentAnalysisEnabled;
+ (CGImage)_applyLiveTreatment:(CGImage *)a3;
+ (CGImage)_applyStaticTreatment:(CGImage *)a3;
+ (id)_blurredImage:(id)a3;
+ (id)_clearedImageManagerResultDictionaryWithErrorIfNone:(id)a3 asset:(id)a4 isContentPreviewableForAsset:(BOOL)a5 assetNeedsProcessing:(BOOL)a6 error:(id)a7;
+ (id)_sharedCIContext;
+ (id)protectImageManagerResult:(id)a3 outVideoItem:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forVideoRequestFromAsset:(id)a7 requestAnalysisIfUnprocessed:(BOOL)a8;
+ (id)sensitivityAnalysisFromAsset:(id)a3 outError:(id *)a4;
+ (void)_analyzeUserOwnedAsset:(id)a3;
+ (void)_obscureImageManagerResultOrThumbnailDataIfSensitive:(id)a3 outResult:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forRequestFromAsset:(id)a7 applyLiveBlurIfSensitive:(BOOL)a8 assetNeedsProcessing:(BOOL)a9;
+ (void)obscureThumbnailDataIfSensitiveFromThumbnailData:(id)a3 outThumbnailData:(id *)a4 forThumbnailAsset:(id)a5;
+ (void)protectImageManagerResult:(id)a3 outAnimatedImage:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forAnimatedImageRequestFromAsset:(id)a7;
+ (void)protectImageManagerResult:(id)a3 outImage:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forImageRequestFromAsset:(id)a7 applyLiveBlurIfSensitive:(BOOL)a8;
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

+ (id)_blurredImage:(id)a3
{
  v3 = MEMORY[0x1E695F648];
  v4 = a3;
  v5 = [v3 gaussianBlurFilter];
  [v5 setValue:v4 forKey:*MEMORY[0x1E695FAB0]];

  [v5 setValue:&unk_1F102E4A8 forKey:*MEMORY[0x1E695FB10]];
  v6 = [v5 outputImage];

  return v6;
}

+ (CGImage)_applyStaticTreatment:(CGImage *)a3
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
  v11 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v12 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v13 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v14 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v15 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v16 = vcvtd_n_f64_s64([a1 randomIntBetween:5 upperBound:150], 8uLL);
  v36 = [MEMORY[0x1E695F610] colorWithRed:v11 green:v13 blue:v15];
  v35 = [MEMORY[0x1E695F610] colorWithRed:v12 green:v14 blue:v16];
  v17 = [MEMORY[0x1E695F648] smoothLinearGradientFilter];
  [v17 setPoint0:{0.0, 0.0}];
  [v17 setPoint1:{v8, v10}];
  [v17 setColor0:v36];
  [v17 setColor1:v35];
  v18 = [v17 outputImage];
  v19 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.1];
  v20 = MEMORY[0x1E695F648];
  v43 = *MEMORY[0x1E695FA78];
  v44[0] = v19;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v22 = [v20 filterWithName:@"CIConstantColorGenerator" withInputParameters:v21];

  v23 = [v22 outputImage];
  v24 = MEMORY[0x1E695F648];
  v25 = *MEMORY[0x1E695FAB0];
  v41[0] = *MEMORY[0x1E695FA48];
  v41[1] = v25;
  v42[0] = v18;
  v42[1] = v23;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v27 = [v24 filterWithName:@"CISourceOverCompositing" withInputParameters:v26];

  v28 = [v27 outputImage];
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v31 = [v28 imageByCroppingToRect:{v38, v37, v8, v10}];
  v32 = [a1 _sharedCIContext];
  v33 = [v32 createCGImage:v31 fromRect:{0.0, 0.0, Width, Height}];

  return v33;
}

+ (CGImage)_applyLiveTreatment:(CGImage *)a3
{
  v5 = [MEMORY[0x1E695F658] imageWithCGImage:?];
  [v5 extent];
  v6 = [v5 imageByCroppingToRect:?];
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [a1 _blurredImage:v6];
  v16 = [a1 _sharedCIContext];
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v19 = [v15 imageByCroppingToRect:{v8, v10, v12, v14}];
  v20 = [v16 createCGImage:v19 fromRect:{0.0, 0.0, Width, Height}];

  return v20;
}

+ (void)obscureThumbnailDataIfSensitiveFromThumbnailData:(id)a3 outThumbnailData:(id *)a4 forThumbnailAsset:(id)a5
{
  v8 = a5;
  v10 = a3;
  LOBYTE(v9) = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:v8];
  [a1 _obscureImageManagerResultOrThumbnailDataIfSensitive:v10 outResult:a4 infoDictionary:0 outInfoDictionary:0 forRequestFromAsset:v8 applyLiveBlurIfSensitive:0 assetNeedsProcessing:v9];
}

+ (void)protectImageManagerResult:(id)a3 outAnimatedImage:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forAnimatedImageRequestFromAsset:(id)a7
{
  v12 = a7;
  v13 = a5;
  v15 = a3;
  LOBYTE(v14) = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:v12];
  [a1 _obscureImageManagerResultOrThumbnailDataIfSensitive:v15 outResult:a4 infoDictionary:v13 outInfoDictionary:a6 forRequestFromAsset:v12 applyLiveBlurIfSensitive:1 assetNeedsProcessing:v14];
}

+ (id)protectImageManagerResult:(id)a3 outVideoItem:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forVideoRequestFromAsset:(id)a7 requestAnalysisIfUnprocessed:(BOOL)a8
{
  v8 = a8;
  v27[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = [PHSensitiveContentAnalysisUtility assetNeedsVideoSensitivityProcessing:v16];
  v18 = v17;
  v19 = 0;
  if (v8 && v17)
  {
    if ([v16 sensitivityAnalysisState] == 4)
    {
      [PHSensitiveContentAnalysisUtility _analyzeUserOwnedAsset:v16];
      v19 = 0;
    }

    else
    {
      v20 = [v16 photoLibrary];
      v24 = [v16 uuid];
      v27[0] = v24;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __163__PHSensitiveContentAnalysisUtility_protectImageManagerResult_outVideoItem_infoDictionary_outInfoDictionary_forVideoRequestFromAsset_requestAnalysisIfUnprocessed___block_invoke;
      v25[3] = &unk_1E75A89F8;
      v26 = v16;
      v19 = [v20 analyzeAssets:v21 forFeature:7 withCompletion:v25];
    }
  }

  LOBYTE(v23) = v18;
  [a1 _obscureImageManagerResultOrThumbnailDataIfSensitive:v14 outResult:a4 infoDictionary:v15 outInfoDictionary:a6 forRequestFromAsset:v16 applyLiveBlurIfSensitive:0 assetNeedsProcessing:v23];

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

+ (void)protectImageManagerResult:(id)a3 outImage:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forImageRequestFromAsset:(id)a7 applyLiveBlurIfSensitive:(BOOL)a8
{
  v8 = a8;
  v23[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = [PHSensitiveContentAnalysisUtility assetNeedsThumbnailSensitivityProcessing:v16];
  v18 = v17;
  if (v17)
  {
    if ([v16 sensitivityAnalysisState] == 4)
    {
      [PHSensitiveContentAnalysisUtility _analyzeUserOwnedAsset:v16];
    }

    else
    {
      v19 = [v16 photoLibrary];
      v22 = [v16 uuid];
      v23[0] = v22;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [v19 coalesceAndAnalyzeAssets:v20 forFeature:8];
    }
  }

  LOBYTE(v21) = v18;
  [a1 _obscureImageManagerResultOrThumbnailDataIfSensitive:v14 outResult:a4 infoDictionary:v15 outInfoDictionary:a6 forRequestFromAsset:v16 applyLiveBlurIfSensitive:v8 assetNeedsProcessing:v21];
}

+ (void)_analyzeUserOwnedAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = objc_alloc_init(getSCSensitivityAnalyzerClass());
  v6 = [v3 mainFileURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PHSensitiveContentAnalysisUtility__analyzeUserOwnedAsset___block_invoke;
  v9[3] = &unk_1E75A4958;
  v10 = v4;
  v11 = v3;
  v7 = v3;
  v8 = v4;
  [v5 analyzeFile:v6 options:8 progressHandler:0 completionHandler:v9];
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

+ (void)_obscureImageManagerResultOrThumbnailDataIfSensitive:(id)a3 outResult:(id *)a4 infoDictionary:(id)a5 outInfoDictionary:(id *)a6 forRequestFromAsset:(id)a7 applyLiveBlurIfSensitive:(BOOL)a8 assetNeedsProcessing:(BOOL)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v31 = 0;
  v17 = [PHSensitiveContentAnalysisUtility isContentPreviewableForAsset:v16 outError:&v31];
  v18 = v31;
  if (v17 && !a9)
  {
    v21 = v14;
    *a4 = v14;
    if (a6)
    {
      v22 = v15;
      *a6 = v15;
    }
  }

  else
  {
    if (a6)
    {
      v20 = [PHSensitiveContentAnalysisUtility _clearedImageManagerResultDictionaryWithErrorIfNone:v15 asset:v16 isContentPreviewableForAsset:v17 assetNeedsProcessing:a9 error:v18];
      *a6 = v20;
    }

    *a4 = 0;
    if (!a9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        *a4 = 0;
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

          v23 = v14;
        }

        v24 = v23;
        if (v23)
        {
          v25 = DCIM_CGImageRefFromPLImage();
          if (v9)
          {
            v26 = [a1 _applyLiveTreatment:v25];
          }

          else
          {
            v26 = [a1 _applyStaticTreatment:v25];
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
          *a4 = v28;
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
  block[4] = a1;
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

+ (BOOL)_isContentPreviewableForAsset:(id)a3 forPickerSharing:(BOOL)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = [v8 sourceType];
  if ((a4 || v9 == 256 || v9 == 2) && [v8 compactSCSensitivityAnalysis] && objc_msgSend(a1, "sensitiveContentAnalysisEnabled"))
  {
    v10 = [a1 sensitivityAnalysisFromAsset:v8 outError:a5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 isContentPreviewable];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (BOOL)_assetNeedsVideoSensitivityProcessing:(id)a3 forPickerSharing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([PHSensitiveContentAnalysisUtility _assetIsEligableForVideoProcessing:v6])
  {
    v7 = [a1 _assetNeedsSensitivityProcessing:v6 forThumbnail:0 forPickerSharing:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_assetIsEligableForVideoProcessing:(id)a3
{
  v3 = a3;
  if ([v3 isVideo])
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 isPhotoIris] && objc_msgSend(v3, "canPlayPhotoIris"))
  {
    v4 = [v3 isPhotoIrisPlaceholder] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)_assetNeedsSensitivityProcessing:(id)a3 forThumbnail:(BOOL)a4 forPickerSharing:(BOOL)a5
{
  v8 = a3;
  v9 = v8;
  if ((a5 || [v8 sourceType] == 256 || objc_msgSend(v9, "sourceType") == 2) && objc_msgSend(a1, "sensitiveContentAnalysisEnabled"))
  {
    if ([v9 compactSCSensitivityAnalysis])
    {
      v10 = [a1 sensitivityAnalysisFromAsset:v9 outError:0];
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

          v15 = v14 && !a4 && [v14 sensitivityAnalysisState] != 2 && objc_msgSend(v14, "sensitivityAnalysisState") != 3;
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

+ (id)_clearedImageManagerResultDictionaryWithErrorIfNone:(id)a3 asset:(id)a4 isContentPreviewableForAsset:(BOOL)a5 assetNeedsProcessing:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v9 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = v13;
  if (!v11 && !v13 && v9 && !v8)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  if (v11 && ([v11 objectForKeyedSubscript:@"PHImageErrorKey"], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    [v16 setObject:v17 forKeyedSubscript:@"PHImageErrorKey"];
  }

  else
  {
    if (!v14)
    {
      if (v9)
      {
        if (!v8)
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
      [v16 setObject:v21 forKeyedSubscript:@"PHImageErrorKey"];

      goto LABEL_16;
    }

    [v16 setObject:v14 forKeyedSubscript:@"PHImageErrorKey"];
  }

LABEL_16:
  v22 = [v16 objectForKeyedSubscript:@"PHImageErrorKey"];

  if (v22)
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v12 objectID];
      v25 = [v16 objectForKeyedSubscript:@"PHImageErrorKey"];
      v29 = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Error encountered during request for assetID: %@ error: %@", &v29, 0x16u);
    }
  }

  v26 = [v11 objectForKeyedSubscript:@"PHImageResultIsDegradedKey"];

  if (v26)
  {
    v27 = [v11 objectForKeyedSubscript:@"PHImageResultIsDegradedKey"];
    [v16 setObject:v27 forKeyedSubscript:@"PHImageResultIsDegradedKey"];
  }

  v15 = [v16 copy];

LABEL_23:

  return v15;
}

+ (id)sensitivityAnalysisFromAsset:(id)a3 outError:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0;
  v6 = [objc_alloc(getSCSensitivityAnalysisClass()) initFromCompactAnalysis:objc_msgSend(v5 error:{"compactSCSensitivityAnalysis"), &v19}];
  v7 = v19;
  if (!v6 && [v5 compactSCSensitivityAnalysis] >= 1)
  {
    if (a4)
    {
      v8 = v7;
      *a4 = v7;
    }

    objc_opt_class();
    v9 = v5;
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
        v14 = [v11 localIdentifier];
        v15 = [v9 compactSCSensitivityAnalysis];
        *buf = 138543874;
        v21 = v14;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = v15;
        v16 = "Error initializing SCSensitivityAnalysis for asset: %{public}@ error: %@ value: %lld";
LABEL_13:
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
      }
    }

    else if (v13)
    {
      v14 = [v9 objectID];
      v17 = [v9 compactSCSensitivityAnalysis];
      *buf = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v7;
      v24 = 2048;
      v25 = v17;
      v16 = "Error initializing SCSensitivityAnalysis for assetID: %{public}@ error: %@ value: %lld";
      goto LABEL_13;
    }
  }

  return v6;
}

@end