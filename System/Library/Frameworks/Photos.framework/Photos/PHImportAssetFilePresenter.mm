@interface PHImportAssetFilePresenter
- (PHImportAssetFilePresenter)initWithPrimaryURL:(id)l presentedURL:(id)rL;
@end

@implementation PHImportAssetFilePresenter

- (PHImportAssetFilePresenter)initWithPrimaryURL:(id)l presentedURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v9 = rLCopy;
  v10 = 0;
  if (lCopy && rLCopy)
  {
    v11 = [(PHImportAssetFilePresenter *)self init];
    v10 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_primaryPresentedItemURL, l);
      objc_storeStrong(&v10->_presentedItemURL, rL);
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