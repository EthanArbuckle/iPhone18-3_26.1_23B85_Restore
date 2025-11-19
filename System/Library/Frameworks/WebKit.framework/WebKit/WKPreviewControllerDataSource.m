@interface WKPreviewControllerDataSource
@end

@implementation WKPreviewControllerDataSource

void __71___WKPreviewControllerDataSource_previewController_previewItemAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v7 = *(WeakRetained + 8);
    v5 = (WeakRetained + 64);
    v6 = v7;
    if (v7 && *(v6 + 4))
    {
      WTF::URL::createCFURL(&v9, v5);
      (*(a2 + 16))(a2, v9, 0);
      v8 = v9;
      v9 = 0;
      if (v8)
      {
      }
    }

    else
    {
      [v4 setCompletionHandler:a2];
    }
  }
}

@end