@interface PhotosMediaViewAnalysisController
@end

@implementation PhotosMediaViewAnalysisController

void __54___PhotosMediaViewAnalysisController__performAnalysis__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleImageResult:a2];
}

void __57___PhotosMediaViewAnalysisController__handleImageResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___PhotosMediaViewAnalysisController__handleImageResult___block_invoke_3;
  block[3] = &unk_1E845C480;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __57___PhotosMediaViewAnalysisController__handleImageResult___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAnalysisResult:*(a1 + 32) error:*(a1 + 40)];
}

void __50___PhotosMediaViewAnalysisController_setAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 contextAnalysisDidChange:v3];
  [v4 contextAvailableResultsDidChange:*(a1 + 32)];
}

@end