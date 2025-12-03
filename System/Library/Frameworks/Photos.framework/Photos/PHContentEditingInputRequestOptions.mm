@interface PHContentEditingInputRequestOptions
- (CGSize)targetSize;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOriginalChoice:(unint64_t)choice;
@end

@implementation PHContentEditingInputRequestOptions

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setOriginalChoice:(unint64_t)choice
{
  self->_forceRunAsUnadjustedAsset = 1;
  self->_shouldForceOriginalChoice = 1;
  self->_originalChoice = choice;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  canHandleAdjustmentData = [(PHContentEditingInputRequestOptions *)self canHandleAdjustmentData];
  [v4 setCanHandleAdjustmentData:canHandleAdjustmentData];

  [v4 setNetworkAccessAllowed:{-[PHContentEditingInputRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  progressHandler = [(PHContentEditingInputRequestOptions *)self progressHandler];
  [v4 setProgressHandler:progressHandler];

  [(PHContentEditingInputRequestOptions *)self targetSize];
  [v4 setTargetSize:?];
  [v4 setContentMode:{-[PHContentEditingInputRequestOptions contentMode](self, "contentMode")}];
  [v4 setDontAllowRAW:{-[PHContentEditingInputRequestOptions dontAllowRAW](self, "dontAllowRAW")}];
  canHandleRAW = [(PHContentEditingInputRequestOptions *)self canHandleRAW];
  [v4 setCanHandleRAW:canHandleRAW];

  [v4 setOriginalChoice:{-[PHContentEditingInputRequestOptions originalChoice](self, "originalChoice")}];
  [v4 setForceRunAsUnadjustedAsset:{-[PHContentEditingInputRequestOptions forceRunAsUnadjustedAsset](self, "forceRunAsUnadjustedAsset")}];
  [v4 setForceReturnFullLivePhoto:{-[PHContentEditingInputRequestOptions forceReturnFullLivePhoto](self, "forceReturnFullLivePhoto")}];
  [v4 setForcePrepareCurrentBaseVersionInAddition:{-[PHContentEditingInputRequestOptions forcePrepareCurrentBaseVersionInAddition](self, "forcePrepareCurrentBaseVersionInAddition")}];
  resultHandlerQueue = [(PHContentEditingInputRequestOptions *)self resultHandlerQueue];
  [v4 setResultHandlerQueue:resultHandlerQueue];

  [v4 setShouldForceOriginalChoice:{-[PHContentEditingInputRequestOptions shouldForceOriginalChoice](self, "shouldForceOriginalChoice")}];
  [v4 setDisallowFallbackAdjustmentBase:{-[PHContentEditingInputRequestOptions disallowFallbackAdjustmentBase](self, "disallowFallbackAdjustmentBase")}];
  [v4 setSkipDisplaySizeImage:{-[PHContentEditingInputRequestOptions skipDisplaySizeImage](self, "skipDisplaySizeImage")}];
  [v4 setSkipLivePhotoImageAndAVAsset:{-[PHContentEditingInputRequestOptions skipLivePhotoImageAndAVAsset](self, "skipLivePhotoImageAndAVAsset")}];
  [v4 setDownloadIntent:{-[PHContentEditingInputRequestOptions downloadIntent](self, "downloadIntent")}];
  [v4 setRequireOriginalsDownloaded:{-[PHContentEditingInputRequestOptions requireOriginalsDownloaded](self, "requireOriginalsDownloaded")}];
  return v4;
}

@end