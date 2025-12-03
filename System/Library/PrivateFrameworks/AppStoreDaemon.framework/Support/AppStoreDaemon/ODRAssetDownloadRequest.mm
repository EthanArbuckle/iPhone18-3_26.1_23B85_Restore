@interface ODRAssetDownloadRequest
- (ODRAssetDownloadRequest)init;
- (void)setExtractionProgress:(double)progress;
@end

@implementation ODRAssetDownloadRequest

- (ODRAssetDownloadRequest)init
{
  v16.receiver = self;
  v16.super_class = ODRAssetDownloadRequest;
  v2 = [(ODRAssetDownloadRequest *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    completionPromise = v2->_completionPromise;
    v2->_completionPromise = v3;

    v5 = [NSProgress progressWithTotalUnitCount:1000];
    progress = v2->_progress;
    v2->_progress = v5;

    v7 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v7;

    v9 = [[_TtC9appstored6LogKey alloc] initWithCode:@"ODR"];
    logKey = v2->_logKey;
    v2->_logKey = v9;

    objc_initWeak(&location, v2);
    v11 = v2->_progress;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002E0A38;
    v13[3] = &unk_10051F888;
    objc_copyWeak(&v14, &location);
    [(NSProgress *)v11 setCancellationHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setExtractionProgress:(double)progress
{
  [(NSProgress *)self->_progress setCompletedUnitCount:(progress * 1000.0)];
  outOfBandTransferPromise = self->_outOfBandTransferPromise;

  [(IXPromisedOutOfBandTransfer *)outOfBandTransferPromise setPercentComplete:progress];
}

@end