@interface SCSensitivityAnalyzer
+ (BOOL)_isSensitiveContentWarningEnabled:(id)a3;
+ (BOOL)_isSensitiveContentWarningEnabledForAnyOfServices:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)_isSensitiveContentWarningEnabledForApplication:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)_isSensitiveContentWarningEnabledForService:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)isSensitiveContentWarningEnabledForAnyOfServices:(id)a3;
+ (BOOL)isSensitiveContentWarningEnabledForService:(id)a3;
+ (id)subscribeForAnalysisAvailabilityChanges:(id)a3;
+ (int64_t)_analysisPolicyFrom:(id)a3;
+ (int64_t)analysisFeatureEnablement;
- (BOOL)shouldAnalyzeMedia:(id *)a3;
- (BOOL)shouldAnalyzeMediaWithType:(id)a3 error:(id *)a4;
- (NSProgress)analyzeVideoFile:(NSURL *)fileURL completionHandler:(void *)completionHandler;
- (SCSensitivityAnalysisPolicy)analysisPolicy;
- (SCSensitivityAnalyzer)initWithQueue:(id)a3;
- (SCSensitivityAnalyzer)initWithQueue:(id)a3 madService:(id)a4;
- (int64_t)_mapMOScanningPolicyEnumValue:(id)a3;
- (void)_runBlockOnDispatchQueueIfSet:(id)a3;
- (void)analyzeCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)analyzeFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)analyzeImageFile:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)analyzeImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)analyzePixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 completionHandler:(id)a5;
- (void)analyzeVideoFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)analyzeVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation SCSensitivityAnalyzer

- (SCSensitivityAnalysisPolicy)analysisPolicy
{
  v3 = [(SCSensitivityAnalyzer *)self madService];
  v4 = [v3 obtainCurrentPolicy];
  v5 = [(SCSensitivityAnalyzer *)self _mapMOScanningPolicyEnumValue:v4];

  return v5;
}

+ (int64_t)analysisFeatureEnablement
{
  v3 = [objc_msgSend(a1 "settingsReaderClass")];
  v4 = [a1 _analysisPolicyFrom:v3];

  return v4;
}

+ (BOOL)isSensitiveContentWarningEnabledForService:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(a1) = [a1 _isSensitiveContentWarningEnabledForService:v4 scanningPolicy:v5];

  return a1;
}

+ (BOOL)isSensitiveContentWarningEnabledForAnyOfServices:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(a1) = [a1 _isSensitiveContentWarningEnabledForAnyOfServices:v4 scanningPolicy:v5];

  return a1;
}

+ (id)subscribeForAnalysisAvailabilityChanges:(id)a3
{
  v4 = a3;
  v5 = [SCSensitivityAnalysisAvailabilityObserver alloc];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__SCSensitivityAnalyzer_subscribeForAnalysisAvailabilityChanges___block_invoke;
  v13 = &unk_1E7A439B0;
  v14 = v4;
  v15 = a1;
  v6 = v4;
  v7 = [SCManagedSettingsReader subscribeForScanningPolicyChanges:&v10];
  v8 = [(SCSensitivityAnalysisAvailabilityObserver *)v5 initWithSubscription:v7, v10, v11, v12, v13];

  return v8;
}

uint64_t __65__SCSensitivityAnalyzer_subscribeForAnalysisAvailabilityChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _analysisPolicyFrom:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (SCSensitivityAnalyzer)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SCSensitivityAnalyzer *)self initWithQueue:v4 madService:v5];

  return v6;
}

- (SCSensitivityAnalyzer)initWithQueue:(id)a3 madService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SCSensitivityAnalyzer;
  v9 = [(SCSensitivityAnalyzer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeStrong(&v10->_madService, a4);
    v11 = objc_alloc_init(SCAnalytics);
    analytics = v10->_analytics;
    v10->_analytics = v11;
  }

  return v10;
}

- (void)analyzeImageFile:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SCSensitivityAnalyzer *)self madService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__SCSensitivityAnalyzer_analyzeImageFile_options_completionHandler___block_invoke;
  v12[3] = &unk_1E7A43A00;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 isSensitiveImage:v9 options:a4 completionHandler:v12];
}

void __68__SCSensitivityAnalyzer_analyzeImageFile_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__SCSensitivityAnalyzer_analyzeImageFile_options_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __68__SCSensitivityAnalyzer_analyzeImageFile_options_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectImageEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

- (void)analyzeCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = *&a4;
  v10 = a6;
  v11 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:a5];
  if (v11)
  {
    v10[2](v10, v11, 0);
  }

  else
  {
    v12 = [(SCSensitivityAnalyzer *)self madService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SCSensitivityAnalyzer_analyzeCGImage_orientation_options_completionHandler___block_invoke;
    v13[3] = &unk_1E7A43A00;
    v13[4] = self;
    v14 = v10;
    [v12 isSensitiveCGImage:a3 withOrientation:v7 options:a5 completionHandler:v13];
  }
}

void __78__SCSensitivityAnalyzer_analyzeCGImage_orientation_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SCSensitivityAnalyzer_analyzeCGImage_orientation_options_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __78__SCSensitivityAnalyzer_analyzeCGImage_orientation_options_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectImageEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

- (void)analyzePixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [(SCSensitivityAnalyzer *)self madService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__SCSensitivityAnalyzer_analyzePixelBuffer_orientation_completionHandler___block_invoke;
  v11[3] = &unk_1E7A43A00;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 isSensitivePixelBuffer:a3 withOrientation:v5 options:4 completionHandler:v11];
}

void __74__SCSensitivityAnalyzer_analyzePixelBuffer_orientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__SCSensitivityAnalyzer_analyzePixelBuffer_orientation_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __74__SCSensitivityAnalyzer_analyzePixelBuffer_orientation_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectImageEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

- (NSProgress)analyzeVideoFile:(NSURL *)fileURL completionHandler:(void *)completionHandler
{
  v6 = fileURL;
  v7 = completionHandler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  [v12[5] setCompletedUnitCount:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SCSensitivityAnalyzer_analyzeVideoFile_completionHandler___block_invoke;
  v10[3] = &unk_1E7A43A28;
  v10[4] = &v11;
  [(SCSensitivityAnalyzer *)self analyzeVideoFile:v6 progressHandler:v10 completionHandler:v7];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)analyzeVideoFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:a4];
  if (v13)
  {
    v12[2](v12, v13, 0);
  }

  else
  {
    v14 = [(SCSensitivityAnalyzer *)self madService];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E7A43A78;
    v17[4] = self;
    v18 = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_3;
    v15[3] = &unk_1E7A43A00;
    v15[4] = self;
    v16 = v12;
    [v14 isSensitiveVideoFile:v10 options:a4 progressHandler:v17 completionHandler:v15];
  }
}

void __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_2;
    v5[3] = &unk_1E7A43A50;
    v6 = v2;
    v7 = a2;
    [v4 _runBlockOnDispatchQueueIfSet:v5];
  }
}

void __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectVideoEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

- (void)analyzeFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:a4];
  if (v12)
  {
    v11[2](v11, v12, 0);
  }

  else if ([v13 sca_isMovieFile])
  {
    [(SCSensitivityAnalyzer *)self analyzeVideoFile:v13 options:a4 progressHandler:v10 completionHandler:v11];
  }

  else
  {
    [(SCSensitivityAnalyzer *)self analyzeImageFile:v13 options:a4 completionHandler:v11];
  }
}

- (void)analyzeImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:a5];
  if (v13)
  {
    v12[2](v12, v13, 0);
  }

  else
  {
    v14 = [(SCSensitivityAnalyzer *)self madService];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__SCSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke;
    v15[3] = &unk_1E7A43A00;
    v15[4] = self;
    v16 = v12;
    [v14 isSensitiveImageWithLocalIdentifier:v10 fromPhotoLibraryWithURL:v11 options:a5 completionHandler:v15];
  }
}

void __107__SCSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__SCSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __107__SCSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectImageEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

- (void)analyzeVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:a5];
  if (v16)
  {
    v15[2](v15, v16, 0);
  }

  else
  {
    v17 = [(SCSensitivityAnalyzer *)self madService];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke;
    v20[3] = &unk_1E7A43AA0;
    v20[4] = self;
    v21 = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_3;
    v18[3] = &unk_1E7A43A00;
    v18[4] = self;
    v19 = v15;
    [v17 isSensitiveVideoWithLocalIdentifier:v12 fromPhotoLibraryWithURL:v13 options:a5 progressHandler:v20 completionHandler:v18];
  }
}

void __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_2;
    v5[3] = &unk_1E7A43A50;
    v6 = v2;
    v7 = a2;
    [v4 _runBlockOnDispatchQueueIfSet:v5];
  }
}

void __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_4;
  v10[3] = &unk_1E7A439D8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  [v13 _runBlockOnDispatchQueueIfSet:v10];
}

void __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SCSensitivityAnalysis alloc] initWithMediaAnalysisServiceResult:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) analytics];
  [v2 collectVideoEventWith:v3 error:*(a1 + 32)];

  (*(*(a1 + 56) + 16))();
}

+ (int64_t)_analysisPolicyFrom:(id)a3
{
  v4 = a3;
  if ([a1 _isCommunicationSafetyEnabled:v4])
  {
    v5 = 2;
  }

  else
  {
    v5 = [a1 _isSensitiveContentWarningEnabled:v4];
  }

  return v5;
}

+ (BOOL)_isSensitiveContentWarningEnabled:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "entitlementsReaderClass")];
  if (v5)
  {
    v6 = [a1 _isSensitiveContentWarningEnabledForAnyOfServices:v5 scanningPolicy:v4];
  }

  else
  {
    v7 = [objc_msgSend(a1 "entitlementsReaderClass")];
    v6 = [a1 _isSensitiveContentWarningEnabledForApplication:v7 scanningPolicy:v4];
  }

  return v6;
}

+ (BOOL)_isSensitiveContentWarningEnabledForAnyOfServices:(id)a3 scanningPolicy:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([a1 _isSensitiveContentWarningEnabledForService:*(*(&v15 + 1) + 8 * i) scanningPolicy:{v7, v15}])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)_isSensitiveContentWarningEnabledForService:(id)a3 scanningPolicy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 policy] == 1)
  {
    v7 = [v6 services];
    v8 = [v7 containsObject:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isSensitiveContentWarningEnabledForApplication:(id)a3 scanningPolicy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 policy] == 1)
  {
    v7 = [objc_alloc(MEMORY[0x1E69AE018]) initWithBundleIdentifier:v5];
    v8 = [v6 applications];
    v9 = [v8 containsObject:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_mapMOScanningPolicyEnumValue:(id)a3
{
  result = [a3 integerValue];
  if (result >= 3)
  {
    v4 = +[SCLog client];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCSensitivityAnalyzer _mapMOScanningPolicyEnumValue:v4];
    }

    return 0;
  }

  return result;
}

- (void)_runBlockOnDispatchQueueIfSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SCSensitivityAnalyzer__runBlockOnDispatchQueueIfSet___block_invoke;
    block[3] = &unk_1E7A43AC8;
    v8 = v4;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v4[2](v4);
  }
}

- (BOOL)shouldAnalyzeMedia:(id *)a3
{
  v3 = self;
  sub_1AEA90D64();

  return 1;
}

- (BOOL)shouldAnalyzeMediaWithType:(id)a3 error:(id *)a4
{
  sub_1AEAF95BC();
  v5 = self;
  sub_1AEA90E90();

  return 1;
}

@end