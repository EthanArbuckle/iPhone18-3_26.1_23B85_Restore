@interface InAppDownloadStatus
- (InAppDownloadStatus)initWithDownloadID:(id)d;
@end

@implementation InAppDownloadStatus

- (InAppDownloadStatus)initWithDownloadID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = InAppDownloadStatus;
  v6 = [(InAppDownloadStatus *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadID, d);
    error = v7->_error;
    v7->_error = 0;

    installPath = v7->_installPath;
    v7->_installPath = 0;

    v7->_progress = 0.0;
    v7->_state = 0;
    v7->_timeRemaining = -1.0;
  }

  return v7;
}

@end