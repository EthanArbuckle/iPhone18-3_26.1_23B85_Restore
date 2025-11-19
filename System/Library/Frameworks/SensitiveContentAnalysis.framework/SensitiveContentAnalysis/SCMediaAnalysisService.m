@interface SCMediaAnalysisService
- (SCMediaAnalysisService)init;
- (SCMediaAnalysisService)initWithMADService:(id)a3;
- (id)_newImageClassificationRequest;
- (id)_newVideoClassificationRequest;
- (id)_processMADResults:(id *)a3 requestID:(int)a4 error:(id)a5 request:(id)a6;
- (id)_processMADResults:(id *)a3 requestID:(int)a4 error:(id)a5 videoRequest:(id)a6;
- (id)obtainCurrentPolicy;
- (void)dealloc;
- (void)isSensitiveCGImage:(CGImage *)a3 withOrientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)isSensitiveImage:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)isSensitiveImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)isSensitivePixelBuffer:(__CVBuffer *)a3 withOrientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)isSensitiveVideoFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)isSensitiveVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (void)obtainCurrentPolicy;
@end

@implementation SCMediaAnalysisService

- (SCMediaAnalysisService)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMADServiceClass_softClass;
  v12 = getMADServiceClass_softClass;
  if (!getMADServiceClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMADServiceClass_block_invoke;
    v8[3] = &unk_1E7A43950;
    v8[4] = &v9;
    __getMADServiceClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [v3 service];
  v6 = [(SCMediaAnalysisService *)self initWithMADService:v5];

  return v6;
}

- (SCMediaAnalysisService)initWithMADService:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SCMediaAnalysisService;
  v6 = [(SCMediaAnalysisService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
    v8 = objc_alloc_init(SCAnalytics);
    analytics = v7->_analytics;
    v7->_analytics = v8;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_service)
  {
    v3 = atomic_load(&self->_usedService);
    if (v3)
    {
      v4 = [(SCMediaAnalysisService *)self service];
      [v4 cancelAllRequests];
    }
  }

  v5.receiver = self;
  v5.super_class = SCMediaAnalysisService;
  [(SCMediaAnalysisService *)&v5 dealloc];
}

- (id)obtainCurrentPolicy
{
  v3 = +[SCLog client];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AEA3F000, v3, OS_LOG_TYPE_DEFAULT, "MAD request to obtain ScanningPolicy has started", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __45__SCMediaAnalysisService_obtainCurrentPolicy__block_invoke;
  v14 = &unk_1E7A43AF0;
  objc_copyWeak(&v17, &location);
  v16 = buf;
  v6 = v4;
  v15 = v6;
  dispatch_async(v5, &v11);

  v7 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [SCLog client:v11];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SCMediaAnalysisService *)v8 obtainCurrentPolicy];
    }
  }

  v9 = *(v20 + 5);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  return v9;
}

void __45__SCMediaAnalysisService_obtainCurrentPolicy__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained service];
  v10 = 0;
  v4 = [v3 userSafetyEnabled:&v10];
  v5 = v10;

  v6 = +[SCLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1AEA3F000, v6, OS_LOG_TYPE_DEFAULT, "MAD request to obtain ScanningPolicy has finished, policy: %@, error: %@", buf, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
  v9 = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)isSensitiveImage:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = [(SCMediaAnalysisService *)self _newImageClassificationRequest];
  [v21[5] setEnableNudityDetection:(v6 & 2) == 0];
  v10 = _os_feature_enabled_impl();
  if ((v6 & 4) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [v21[5] setEnableGoreViolenceDetection:v11];
  v12 = [(SCMediaAnalysisService *)self service];
  v28[0] = v21[5];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__SCMediaAnalysisService_isSensitiveImage_options_completionHandler___block_invoke;
  v17[3] = &unk_1E7A43B18;
  v17[4] = self;
  v19 = &v20;
  v14 = v9;
  v18 = v14;
  v15 = [v12 performRequests:v13 onImageURL:v8 withIdentifier:&stru_1F24906E8 completionHandler:v17];

  v16 = +[SCLog client];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v27 = v15;
    _os_log_impl(&dword_1AEA3F000, v16, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with imageURL started", buf, 8u);
  }

  _Block_object_dispose(&v20, 8);
}

void __69__SCMediaAnalysisService_isSensitiveImage_options_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 request:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returns following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (void)isSensitiveCGImage:(CGImage *)a3 withOrientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = *&a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(SCMediaAnalysisService *)self _newImageClassificationRequest];
  [v22[5] setEnableNudityDetection:(v6 & 2) == 0];
  v11 = _os_feature_enabled_impl();
  if ((v6 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v22[5] setEnableGoreViolenceDetection:v12];
  v13 = [(SCMediaAnalysisService *)self service];
  v29[0] = v22[5];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__SCMediaAnalysisService_isSensitiveCGImage_withOrientation_options_completionHandler___block_invoke;
  v18[3] = &unk_1E7A43B18;
  v18[4] = self;
  v20 = &v21;
  v15 = v10;
  v19 = v15;
  v16 = [v13 performRequests:v14 onCGImage:a3 withOrientation:v7 andIdentifier:&stru_1F24906E8 completionHandler:v18];

  v17 = +[SCLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v16;
    _os_log_impl(&dword_1AEA3F000, v17, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with cgImage has started", buf, 8u);
  }

  _Block_object_dispose(&v21, 8);
}

void __87__SCMediaAnalysisService_isSensitiveCGImage_withOrientation_options_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 request:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returns following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (void)isSensitivePixelBuffer:(__CVBuffer *)a3 withOrientation:(unsigned int)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = *&a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = [(SCMediaAnalysisService *)self _newImageClassificationRequest];
  [v22[5] setEnableNudityDetection:(v6 & 2) == 0];
  v11 = _os_feature_enabled_impl();
  if ((v6 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v22[5] setEnableGoreViolenceDetection:v12];
  v13 = [(SCMediaAnalysisService *)self service];
  v29[0] = v22[5];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__SCMediaAnalysisService_isSensitivePixelBuffer_withOrientation_options_completionHandler___block_invoke;
  v18[3] = &unk_1E7A43B18;
  v18[4] = self;
  v20 = &v21;
  v15 = v10;
  v19 = v15;
  v16 = [v13 performRequests:v14 onPixelBuffer:a3 withOrientation:v7 andIdentifier:&stru_1F24906E8 completionHandler:v18];

  v17 = +[SCLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v16;
    _os_log_impl(&dword_1AEA3F000, v17, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with CVPixelBuffer has started", buf, 8u);
  }

  _Block_object_dispose(&v21, 8);
}

void __91__SCMediaAnalysisService_isSensitivePixelBuffer_withOrientation_options_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 request:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returned the following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (void)isSensitiveVideoFile:(id)a3 options:(unint64_t)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = [(SCMediaAnalysisService *)self _newVideoClassificationRequest];
  [v29[5] setRequiresBlastdoor:v8 & 1];
  [v29[5] setEnableNudityDetection:(v8 & 2) == 0];
  v13 = _os_feature_enabled_impl();
  if ((v8 & 4) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  [v29[5] setEnableGoreViolenceDetection:v14];
  v15 = [(SCMediaAnalysisService *)self service];
  v36[0] = v29[5];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__SCMediaAnalysisService_isSensitiveVideoFile_options_progressHandler_completionHandler___block_invoke;
  v25[3] = &unk_1E7A43B40;
  v17 = v11;
  v27 = v17;
  v18 = v10;
  v26 = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__SCMediaAnalysisService_isSensitiveVideoFile_options_progressHandler_completionHandler___block_invoke_2;
  v22[3] = &unk_1E7A43B18;
  v22[4] = self;
  v24 = &v28;
  v19 = v12;
  v23 = v19;
  v20 = [v15 performRequests:v16 videoURL:v18 identifier:&stru_1F24906E8 progressHandler:v25 completionHandler:v22];

  v21 = +[SCLog client];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v35 = v20;
    _os_log_impl(&dword_1AEA3F000, v21, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with videoURL started", buf, 8u);
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __89__SCMediaAnalysisService_isSensitiveVideoFile_options_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __89__SCMediaAnalysisService_isSensitiveVideoFile_options_progressHandler_completionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 videoRequest:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returns following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (void)isSensitiveImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = [(SCMediaAnalysisService *)self _newImageClassificationRequest];
  [v24[5] setEnableNudityDetection:(v7 & 2) == 0];
  v13 = _os_feature_enabled_impl();
  if ((v7 & 4) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  [v24[5] setEnableGoreViolenceDetection:v14];
  v15 = [(SCMediaAnalysisService *)self service];
  v31[0] = v24[5];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__SCMediaAnalysisService_isSensitiveImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke;
  v20[3] = &unk_1E7A43B18;
  v20[4] = self;
  v22 = &v23;
  v17 = v12;
  v21 = v17;
  v18 = [v15 performRequests:v16 onAssetWithLocalIdentifier:v10 fromPhotoLibraryWithURL:v11 completionHandler:v20];

  v19 = +[SCLog client];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = v18;
    _os_log_impl(&dword_1AEA3F000, v19, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with Image's LocalIdentifier started", buf, 8u);
  }

  _Block_object_dispose(&v23, 8);
}

void __112__SCMediaAnalysisService_isSensitiveImageWithLocalIdentifier_fromPhotoLibraryWithURL_options_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 request:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returns following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (void)isSensitiveVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 options:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v39[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = [(SCMediaAnalysisService *)self _newVideoClassificationRequest];
  [v32[5] setEnableNudityDetection:(v9 & 2) == 0];
  v16 = _os_feature_enabled_impl();
  if ((v9 & 4) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  [v32[5] setEnableGoreViolenceDetection:v17];
  v18 = [(SCMediaAnalysisService *)self service];
  v39[0] = v32[5];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __128__SCMediaAnalysisService_isSensitiveVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke;
  v28[3] = &unk_1E7A43B40;
  v20 = v14;
  v30 = v20;
  v21 = v12;
  v29 = v21;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__SCMediaAnalysisService_isSensitiveVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_2;
  v25[3] = &unk_1E7A43B18;
  v25[4] = self;
  v27 = &v31;
  v22 = v15;
  v26 = v22;
  v23 = [v18 performRequests:v19 assetLocalIdentifier:v21 photoLibraryURL:v13 progressHandler:v28 completionHandler:v25];

  v24 = +[SCLog client];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v38 = v23;
    _os_log_impl(&dword_1AEA3F000, v24, OS_LOG_TYPE_DEFAULT, "MAD request(%d) with video's LocalIdentifier started", buf, 8u);
  }

  _Block_object_dispose(&v31, 8);
}

uint64_t __128__SCMediaAnalysisService_isSensitiveVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __128__SCMediaAnalysisService_isSensitiveVideoWithLocalIdentifier_fromPhotoLibraryWithURL_options_progressHandler_completionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v9 = 0;
  v6 = [v5 _processMADResults:&v9 requestID:a2 error:a3 videoRequest:*(*(a1[6] + 8) + 40)];
  v7 = v9;
  v8 = +[SCLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "MAD request(%d) returns following results: (%@, '%@')", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

- (id)_processMADResults:(id *)a3 requestID:(int)a4 error:(id)a5 request:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    v12 = +[SCLog client];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCMediaAnalysisService _processMADResults:v9 requestID:a4 error:? request:?];
    }

    v13 = SCAErrorCausedBy(100, @"MADService request has failed with request error", v9);
LABEL_5:
    v14 = v13;
    goto LABEL_12;
  }

  v15 = [v10 error];

  if (v15)
  {
    v16 = +[SCLog client];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCMediaAnalysisService _processMADResults:requestID:error:request:];
    }

    v17 = [v11 error];
    v14 = SCAErrorCausedBy(100, @"MADService request has failed with request error", v17);
  }

  else
  {
    v18 = [v11 results];
    v19 = [v18 count];

    if (v19 != 1)
    {
      v27 = +[SCLog client];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SCMediaAnalysisService _processMADResults:requestID:error:request:];
      }

      v13 = SCAError(101, @"Unexpected results from MADService");
      goto LABEL_5;
    }

    v20 = [v11 results];
    v21 = [v20 firstObject];

    v22 = [_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult alloc];
    v23 = [v21 isSensitiveNudity];
    v24 = [v23 BOOLValue];
    v25 = [v21 isSensitiveGoreViolence];
    *a3 = -[SCMediaAnalysisServiceResult initWithIsNudity:isGoreAndViolence:](v22, "initWithIsNudity:isGoreAndViolence:", v24, [v25 BOOLValue]);

    v14 = 0;
  }

LABEL_12:

  return v14;
}

- (id)_processMADResults:(id *)a3 requestID:(int)a4 error:(id)a5 videoRequest:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    v12 = +[SCLog client];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCMediaAnalysisService _processMADResults:v9 requestID:a4 error:? videoRequest:?];
    }

    v13 = SCAErrorCausedBy(100, @"MADService video request has failed with request error", v9);
LABEL_5:
    v14 = v13;
    goto LABEL_12;
  }

  v15 = [v10 error];

  if (v15)
  {
    v16 = +[SCLog client];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCMediaAnalysisService _processMADResults:requestID:error:videoRequest:];
    }

    v17 = [v11 error];
    v14 = SCAErrorCausedBy(100, @"MADService video request has failed with request error", v17);
  }

  else
  {
    v18 = [v11 results];
    v19 = [v18 count];

    if (v19 != 1)
    {
      v27 = +[SCLog client];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SCMediaAnalysisService _processMADResults:requestID:error:videoRequest:];
      }

      v13 = SCAError(101, @"Unexpected video results from MADService");
      goto LABEL_5;
    }

    v20 = [v11 results];
    v21 = [v20 firstObject];

    v22 = [_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult alloc];
    v23 = [v21 isSensitiveNudity];
    v24 = [v23 BOOLValue];
    v25 = [v21 isSensitiveGoreViolence];
    *a3 = -[SCMediaAnalysisServiceResult initWithIsNudity:isGoreAndViolence:](v22, "initWithIsNudity:isGoreAndViolence:", v24, [v25 BOOLValue]);

    v14 = 0;
  }

LABEL_12:

  return v14;
}

- (id)_newImageClassificationRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getMADImageSafetyClassificationRequestClass_softClass;
  v9 = getMADImageSafetyClassificationRequestClass_softClass;
  if (!getMADImageSafetyClassificationRequestClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMADImageSafetyClassificationRequestClass_block_invoke;
    v5[3] = &unk_1E7A43950;
    v5[4] = &v6;
    __getMADImageSafetyClassificationRequestClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return objc_alloc_init(v2);
}

- (id)_newVideoClassificationRequest
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getMADVideoSafetyClassificationRequestClass_softClass;
  v16 = getMADVideoSafetyClassificationRequestClass_softClass;
  if (!getMADVideoSafetyClassificationRequestClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getMADVideoSafetyClassificationRequestClass_block_invoke;
    v12[3] = &unk_1E7A43950;
    v12[4] = &v13;
    __getMADVideoSafetyClassificationRequestClass_block_invoke(v12, a2, v2, v3, v4, v5, v6, v7, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  return objc_alloc_init(v8);
}

- (void)obtainCurrentPolicy
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 15;
  _os_log_error_impl(&dword_1AEA3F000, log, OS_LOG_TYPE_ERROR, "MAD request failed, not able to obtain current policy: timeout on client (%lldsec)", &v1, 0xCu);
}

- (void)_processMADResults:(uint64_t)a1 requestID:(int)a2 error:request:.cold.1(uint64_t a1, int a2)
{
  LODWORD(v4) = 67109378;
  HIDWORD(v4) = a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_1AEA3F000, v2, v3, "MAD request(%d) failed with error: %@", v4);
}

- (void)_processMADResults:requestID:error:request:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AEA3F000, v2, v3, "MAD request(%d) returns error: %@", v4, v5, v6, v7, 2u);
}

- (void)_processMADResults:requestID:error:request:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 results];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AEA3F000, v2, v3, "MAD request(%d) returns unexpected number of results %lu", v4, v5, v6, v7, v8);
}

- (void)_processMADResults:(uint64_t)a1 requestID:(int)a2 error:videoRequest:.cold.1(uint64_t a1, int a2)
{
  LODWORD(v4) = 67109378;
  HIDWORD(v4) = a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_1AEA3F000, v2, v3, "MAD video request(%d) failed with error: %@", v4);
}

- (void)_processMADResults:requestID:error:videoRequest:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AEA3F000, v2, v3, "MAD video request(%d) returns error: %@", v4, v5, v6, v7, 2u);
}

- (void)_processMADResults:requestID:error:videoRequest:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 results];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AEA3F000, v2, v3, "MAD video request(%d) returns unexpected number of results %lu", v4, v5, v6, v7, v8);
}

@end