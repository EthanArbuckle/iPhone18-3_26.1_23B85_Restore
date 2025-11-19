@interface PHImportAssetFilePresenter
- (PHImportAssetFilePresenter)initWithPrimaryURL:(id)a3 presentedURL:(id)a4;
@end

@implementation PHImportAssetFilePresenter

- (PHImportAssetFilePresenter)initWithPrimaryURL:(id)a3 presentedURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [(PHImportAssetFilePresenter *)self init];
    v10 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_primaryPresentedItemURL, a3);
      objc_storeStrong(&v10->_presentedItemURL, a4);
      v12 = objc_opt_new();
      self = v10->_presentedItemOperationQueue;
      v10->_presentedItemOperationQueue = v12;
    }

    else
    {
      self = 0;
    }
  }

  return v10;
}

@end