@interface SCSensitivityAnalyzer
+ (BOOL)_isSensitiveContentWarningEnabled:(id)enabled;
+ (BOOL)_isSensitiveContentWarningEnabledForAnyOfServices:(id)services scanningPolicy:(id)policy;
+ (BOOL)_isSensitiveContentWarningEnabledForApplication:(id)application scanningPolicy:(id)policy;
+ (BOOL)_isSensitiveContentWarningEnabledForService:(id)service scanningPolicy:(id)policy;
+ (BOOL)isSensitiveContentWarningEnabledForAnyOfServices:(id)services;
+ (BOOL)isSensitiveContentWarningEnabledForService:(id)service;
+ (id)subscribeForAnalysisAvailabilityChanges:(id)changes;
+ (int64_t)_analysisPolicyFrom:(id)from;
+ (int64_t)analysisFeatureEnablement;
- (BOOL)shouldAnalyzeMedia:(id *)media;
- (BOOL)shouldAnalyzeMediaWithType:(id)type error:(id *)error;
- (NSProgress)analyzeVideoFile:(NSURL *)fileURL completionHandler:(void *)completionHandler;
- (SCSensitivityAnalysisPolicy)analysisPolicy;
- (SCSensitivityAnalyzer)initWithQueue:(id)queue;
- (SCSensitivityAnalyzer)initWithQueue:(id)queue madService:(id)service;
- (int64_t)_mapMOScanningPolicyEnumValue:(id)value;
- (void)_runBlockOnDispatchQueueIfSet:(id)set;
- (void)analyzeCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(unint64_t)options completionHandler:(id)handler;
- (void)analyzeFile:(id)file options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)analyzeImageFile:(id)file options:(unint64_t)options completionHandler:(id)handler;
- (void)analyzeImageWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation completionHandler:(id)handler;
- (void)analyzeVideoFile:(id)file options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)analyzeVideoWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation SCSensitivityAnalyzer

- (SCSensitivityAnalysisPolicy)analysisPolicy
{
  madService = [(SCSensitivityAnalyzer *)self madService];
  obtainCurrentPolicy = [madService obtainCurrentPolicy];
  v5 = [(SCSensitivityAnalyzer *)self _mapMOScanningPolicyEnumValue:obtainCurrentPolicy];

  return v5;
}

+ (int64_t)analysisFeatureEnablement
{
  v3 = [objc_msgSend(self "settingsReaderClass")];
  v4 = [self _analysisPolicyFrom:v3];

  return v4;
}

+ (BOOL)isSensitiveContentWarningEnabledForService:(id)service
{
  serviceCopy = service;
  v5 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(self) = [self _isSensitiveContentWarningEnabledForService:serviceCopy scanningPolicy:v5];

  return self;
}

+ (BOOL)isSensitiveContentWarningEnabledForAnyOfServices:(id)services
{
  servicesCopy = services;
  v5 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(self) = [self _isSensitiveContentWarningEnabledForAnyOfServices:servicesCopy scanningPolicy:v5];

  return self;
}

+ (id)subscribeForAnalysisAvailabilityChanges:(id)changes
{
  changesCopy = changes;
  v5 = [SCSensitivityAnalysisAvailabilityObserver alloc];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__SCSensitivityAnalyzer_subscribeForAnalysisAvailabilityChanges___block_invoke;
  v13 = &unk_1E7A439B0;
  v14 = changesCopy;
  selfCopy = self;
  v6 = changesCopy;
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

- (SCSensitivityAnalyzer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_opt_new();
  v6 = [(SCSensitivityAnalyzer *)self initWithQueue:queueCopy madService:v5];

  return v6;
}

- (SCSensitivityAnalyzer)initWithQueue:(id)queue madService:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = SCSensitivityAnalyzer;
  v9 = [(SCSensitivityAnalyzer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_madService, service);
    v11 = objc_alloc_init(SCAnalytics);
    analytics = v10->_analytics;
    v10->_analytics = v11;
  }

  return v10;
}

- (void)analyzeImageFile:(id)file options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  fileCopy = file;
  madService = [(SCSensitivityAnalyzer *)self madService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__SCSensitivityAnalyzer_analyzeImageFile_options_completionHandler___block_invoke;
  v12[3] = &unk_1E7A43A00;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [madService isSensitiveImage:fileCopy options:options completionHandler:v12];
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

- (void)analyzeCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(unint64_t)options completionHandler:(id)handler
{
  v7 = *&orientation;
  handlerCopy = handler;
  v11 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:options];
  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    madService = [(SCSensitivityAnalyzer *)self madService];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SCSensitivityAnalyzer_analyzeCGImage_orientation_options_completionHandler___block_invoke;
    v13[3] = &unk_1E7A43A00;
    v13[4] = self;
    v14 = handlerCopy;
    [madService isSensitiveCGImage:image withOrientation:v7 options:options completionHandler:v13];
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

- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation completionHandler:(id)handler
{
  v5 = *&orientation;
  handlerCopy = handler;
  madService = [(SCSensitivityAnalyzer *)self madService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__SCSensitivityAnalyzer_analyzePixelBuffer_orientation_completionHandler___block_invoke;
  v11[3] = &unk_1E7A43A00;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [madService isSensitivePixelBuffer:buffer withOrientation:v5 options:4 completionHandler:v11];
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

- (void)analyzeVideoFile:(id)file options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  fileCopy = file;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:options];
  if (v13)
  {
    completionHandlerCopy[2](completionHandlerCopy, v13, 0);
  }

  else
  {
    madService = [(SCSensitivityAnalyzer *)self madService];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E7A43A78;
    v17[4] = self;
    v18 = handlerCopy;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__SCSensitivityAnalyzer_analyzeVideoFile_options_progressHandler_completionHandler___block_invoke_3;
    v15[3] = &unk_1E7A43A00;
    v15[4] = self;
    v16 = completionHandlerCopy;
    [madService isSensitiveVideoFile:fileCopy options:options progressHandler:v17 completionHandler:v15];
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

- (void)analyzeFile:(id)file options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  fileCopy = file;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:options];
  if (v12)
  {
    completionHandlerCopy[2](completionHandlerCopy, v12, 0);
  }

  else if ([fileCopy sca_isMovieFile])
  {
    [(SCSensitivityAnalyzer *)self analyzeVideoFile:fileCopy options:options progressHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    [(SCSensitivityAnalyzer *)self analyzeImageFile:fileCopy options:options completionHandler:completionHandlerCopy];
  }
}

- (void)analyzeImageWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  v13 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:options];
  if (v13)
  {
    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    madService = [(SCSensitivityAnalyzer *)self madService];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__SCSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke;
    v15[3] = &unk_1E7A43A00;
    v15[4] = self;
    v16 = handlerCopy;
    [madService isSensitiveImageWithLocalIdentifier:identifierCopy fromPhotoLibraryWithURL:lCopy options:options completionHandler:v15];
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

- (void)analyzeVideoWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l options:(unint64_t)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v16 = [[SCSensitivityAnalysis alloc] initSummaryAnalysisForOptions:options];
  if (v16)
  {
    completionHandlerCopy[2](completionHandlerCopy, v16, 0);
  }

  else
  {
    madService = [(SCSensitivityAnalyzer *)self madService];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke;
    v20[3] = &unk_1E7A43AA0;
    v20[4] = self;
    v21 = handlerCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __123__SCSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_3;
    v18[3] = &unk_1E7A43A00;
    v18[4] = self;
    v19 = completionHandlerCopy;
    [madService isSensitiveVideoWithLocalIdentifier:identifierCopy fromPhotoLibraryWithURL:lCopy options:options progressHandler:v20 completionHandler:v18];
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

+ (int64_t)_analysisPolicyFrom:(id)from
{
  fromCopy = from;
  if ([self _isCommunicationSafetyEnabled:fromCopy])
  {
    v5 = 2;
  }

  else
  {
    v5 = [self _isSensitiveContentWarningEnabled:fromCopy];
  }

  return v5;
}

+ (BOOL)_isSensitiveContentWarningEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [objc_msgSend(self "entitlementsReaderClass")];
  if (v5)
  {
    v6 = [self _isSensitiveContentWarningEnabledForAnyOfServices:v5 scanningPolicy:enabledCopy];
  }

  else
  {
    v7 = [objc_msgSend(self "entitlementsReaderClass")];
    v6 = [self _isSensitiveContentWarningEnabledForApplication:v7 scanningPolicy:enabledCopy];
  }

  return v6;
}

+ (BOOL)_isSensitiveContentWarningEnabledForAnyOfServices:(id)services scanningPolicy:(id)policy
{
  v20 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  policyCopy = policy;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = servicesCopy;
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

        if ([self _isSensitiveContentWarningEnabledForService:*(*(&v15 + 1) + 8 * i) scanningPolicy:{policyCopy, v15}])
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

+ (BOOL)_isSensitiveContentWarningEnabledForService:(id)service scanningPolicy:(id)policy
{
  serviceCopy = service;
  policyCopy = policy;
  if ([policyCopy policy] == 1)
  {
    services = [policyCopy services];
    v8 = [services containsObject:serviceCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isSensitiveContentWarningEnabledForApplication:(id)application scanningPolicy:(id)policy
{
  applicationCopy = application;
  policyCopy = policy;
  if ([policyCopy policy] == 1)
  {
    v7 = [objc_alloc(MEMORY[0x1E69AE018]) initWithBundleIdentifier:applicationCopy];
    applications = [policyCopy applications];
    v9 = [applications containsObject:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_mapMOScanningPolicyEnumValue:(id)value
{
  result = [value integerValue];
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

- (void)_runBlockOnDispatchQueueIfSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SCSensitivityAnalyzer__runBlockOnDispatchQueueIfSet___block_invoke;
    block[3] = &unk_1E7A43AC8;
    v8 = setCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    setCopy[2](setCopy);
  }
}

- (BOOL)shouldAnalyzeMedia:(id *)media
{
  selfCopy = self;
  sub_1AEA90D64();

  return 1;
}

- (BOOL)shouldAnalyzeMediaWithType:(id)type error:(id *)error
{
  sub_1AEAF95BC();
  selfCopy = self;
  sub_1AEA90E90();

  return 1;
}

@end