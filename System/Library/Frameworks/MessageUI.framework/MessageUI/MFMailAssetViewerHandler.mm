@interface MFMailAssetViewerHandler
- (MFMailAssetViewerHandler)initWithAttachmentContext:(id)a3 delegate:(id)a4;
- (MFMailAssetViewerHandlerDelegate)delegate;
- (void)launchAssetViewerForItem:(id)a3 editContent:(BOOL)a4 requireCopy:(BOOL)a5 completion:(id)a6;
- (void)launchAssetViewerForURL:(id)a3 editContent:(BOOL)a4 requireCopy:(BOOL)a5 completion:(id)a6;
@end

@implementation MFMailAssetViewerHandler

- (MFMailAssetViewerHandler)initWithAttachmentContext:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFMailAssetViewerHandler;
  v9 = [(MFMailAssetViewerHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentContext, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)launchAssetViewerForURL:(id)a3 editContent:(BOOL)a4 requireCopy:(BOOL)a5 completion:(id)a6
{
  v7 = a6;
  v6 = [MEMORY[0x1E696ABC0] ef_notSupportedError];
  v7[2](v7, v6);
}

- (void)launchAssetViewerForItem:(id)a3 editContent:(BOOL)a4 requireCopy:(BOOL)a5 completion:(id)a6
{
  v7 = a6;
  v6 = [MEMORY[0x1E696ABC0] ef_notSupportedError];
  v7[2](v7, v6);
}

- (MFMailAssetViewerHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end