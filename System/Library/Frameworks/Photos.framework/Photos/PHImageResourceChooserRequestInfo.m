@interface PHImageResourceChooserRequestInfo
- (CGSize)desiredSize;
- (PHImageResourceChooserRequestInfo)initWithAsset:(id)a3 desiredSize:(CGSize)a4 requestedScale:(float)a5 allowedResourceVersions:(id)a6 behaviorSpec:(id)a7 cloudSharedMode:(BOOL)a8 fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)a9 loggingPrefix:(id)a10;
@end

@implementation PHImageResourceChooserRequestInfo

- (CGSize)desiredSize
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PHImageResourceChooserRequestInfo)initWithAsset:(id)a3 desiredSize:(CGSize)a4 requestedScale:(float)a5 allowedResourceVersions:(id)a6 behaviorSpec:(id)a7 cloudSharedMode:(BOOL)a8 fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)a9 loggingPrefix:(id)a10
{
  height = a4.height;
  width = a4.width;
  v20 = a3;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v27.receiver = self;
  v27.super_class = PHImageResourceChooserRequestInfo;
  v24 = [(PHImageResourceChooserRequestInfo *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_asset, a3);
    v25->_desiredSize.width = width;
    v25->_desiredSize.height = height;
    v25->_requestedScale = a5;
    objc_storeStrong(&v25->_allowedResourceVersions, a6);
    objc_storeStrong(&v25->_behaviorSpec, a7);
    v25->_isCloudShared = a8;
    v25->_fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable = a9;
    objc_storeStrong(&v25->_loggingPrefix, a10);
  }

  return v25;
}

@end