@interface MFMailAssetViewerHandler
- (MFMailAssetViewerHandler)initWithAttachmentContext:(id)context delegate:(id)delegate;
- (MFMailAssetViewerHandlerDelegate)delegate;
- (void)launchAssetViewerForItem:(id)item editContent:(BOOL)content requireCopy:(BOOL)copy completion:(id)completion;
- (void)launchAssetViewerForURL:(id)l editContent:(BOOL)content requireCopy:(BOOL)copy completion:(id)completion;
@end

@implementation MFMailAssetViewerHandler

- (MFMailAssetViewerHandler)initWithAttachmentContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MFMailAssetViewerHandler;
  v9 = [(MFMailAssetViewerHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentContext, context);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)launchAssetViewerForURL:(id)l editContent:(BOOL)content requireCopy:(BOOL)copy completion:(id)completion
{
  completionCopy = completion;
  ef_notSupportedError = [MEMORY[0x1E696ABC0] ef_notSupportedError];
  completionCopy[2](completionCopy, ef_notSupportedError);
}

- (void)launchAssetViewerForItem:(id)item editContent:(BOOL)content requireCopy:(BOOL)copy completion:(id)completion
{
  completionCopy = completion;
  ef_notSupportedError = [MEMORY[0x1E696ABC0] ef_notSupportedError];
  completionCopy[2](completionCopy, ef_notSupportedError);
}

- (MFMailAssetViewerHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end