@interface QLPreviewMockScene
- (QLPreviewControllerConformingDataSource)dataSource;
- (QLPreviewControllerConformingDelegate)delegate;
@end

@implementation QLPreviewMockScene

- (QLPreviewControllerConformingDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->dataSource);

  return WeakRetained;
}

- (QLPreviewControllerConformingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end