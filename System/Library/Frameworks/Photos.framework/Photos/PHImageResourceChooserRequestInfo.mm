@interface PHImageResourceChooserRequestInfo
- (CGSize)desiredSize;
- (PHImageResourceChooserRequestInfo)initWithAsset:(id)asset desiredSize:(CGSize)size requestedScale:(float)scale allowedResourceVersions:(id)versions behaviorSpec:(id)spec cloudSharedMode:(BOOL)mode fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)available loggingPrefix:(id)self0;
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

- (PHImageResourceChooserRequestInfo)initWithAsset:(id)asset desiredSize:(CGSize)size requestedScale:(float)scale allowedResourceVersions:(id)versions behaviorSpec:(id)spec cloudSharedMode:(BOOL)mode fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable:(double)available loggingPrefix:(id)self0
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  versionsCopy = versions;
  specCopy = spec;
  prefixCopy = prefix;
  v27.receiver = self;
  v27.super_class = PHImageResourceChooserRequestInfo;
  v24 = [(PHImageResourceChooserRequestInfo *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_asset, asset);
    v25->_desiredSize.width = width;
    v25->_desiredSize.height = height;
    v25->_requestedScale = scale;
    objc_storeStrong(&v25->_allowedResourceVersions, versions);
    objc_storeStrong(&v25->_behaviorSpec, spec);
    v25->_isCloudShared = mode;
    v25->_fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable = available;
    objc_storeStrong(&v25->_loggingPrefix, prefix);
  }

  return v25;
}

@end