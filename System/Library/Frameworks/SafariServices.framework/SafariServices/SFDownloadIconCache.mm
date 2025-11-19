@interface SFDownloadIconCache
@end

@implementation SFDownloadIconCache

void __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke_2;
  v4[3] = &unk_1E8495CB8;
  objc_copyWeak(&v5, (a1 + 48));
  objc_copyWeak(&v6, (a1 + 56));
  [v2 _generateThumbnailForURL:v3 completionHandler:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke_3;
  block[3] = &unk_1E8495C90;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    if (v3)
    {
      [v4 _didGenerateThumbnail:*(a1 + 32) forSource:v3];
    }

    WeakRetained = v4;
  }
}

void __67___SFDownloadIconCache__generateThumbnailForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___SFDownloadIconCache__generateThumbnailForURL_completionHandler___block_invoke_2;
  v6[3] = &unk_1E8490798;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67___SFDownloadIconCache__generateThumbnailForURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) UIImage];
  (*(v1 + 16))(v1, v2);
}

@end