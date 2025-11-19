@interface ASDRestoreTotalDownloadSizeEstimateRequest
- (ASDRestoreTotalDownloadSizeEstimateRequest)init;
@end

@implementation ASDRestoreTotalDownloadSizeEstimateRequest

- (ASDRestoreTotalDownloadSizeEstimateRequest)init
{
  v3 = +[ASDRestoreService sharedInstance];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDRestoreTotalDownloadSizeEstimateRequest;
    v5 = [(ASDRestoreTotalDownloadSizeEstimateRequest *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_restoreService, v3);
    }
  }

  return self;
}

@end