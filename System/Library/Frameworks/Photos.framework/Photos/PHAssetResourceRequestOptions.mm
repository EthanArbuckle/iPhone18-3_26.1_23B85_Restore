@interface PHAssetResourceRequestOptions
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDownloadIntent:(int64_t)a3;
@end

@implementation PHAssetResourceRequestOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PHAssetResourceRequestOptions);
  [(PHAssetResourceRequestOptions *)v4 setNetworkAccessAllowed:self->_networkAccessAllowed];
  [(PHAssetResourceRequestOptions *)v4 setProgressHandler:self->_progressHandler];
  [(PHAssetResourceRequestOptions *)v4 setResistentToPrune:self->_resistentToPrune];
  [(PHAssetResourceRequestOptions *)v4 setDownloadIsTransient:self->_downloadIsTransient];
  [(PHAssetResourceRequestOptions *)v4 setPruneAfterAvailableOnLowDisk:self->_pruneAfterAvailableOnLowDisk];
  [(PHAssetResourceRequestOptions *)v4 setPruneAfterAvailableLowDiskThresholdBytes:self->_pruneAfterAvailableLowDiskThresholdBytes];
  [(PHAssetResourceRequestOptions *)v4 setDownloadIntent:self->_downloadIntent];
  [(PHAssetResourceRequestOptions *)v4 setDownloadPriority:self->_downloadPriority];
  return v4;
}

- (void)setDownloadIntent:(int64_t)a3
{
  self->_downloadIntent = a3;
  if (a3 == 6)
  {
    self->_pruneAfterAvailableOnLowDisk = 1;
  }
}

@end