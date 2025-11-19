@interface PHContentEditingInputRequestOptions
- (CGSize)targetSize;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setOriginalChoice:(unint64_t)a3;
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

- (void)setOriginalChoice:(unint64_t)a3
{
  self->_forceRunAsUnadjustedAsset = 1;
  self->_shouldForceOriginalChoice = 1;
  self->_originalChoice = a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PHContentEditingInputRequestOptions *)self canHandleAdjustmentData];
  [v4 setCanHandleAdjustmentData:v5];

  [v4 setNetworkAccessAllowed:{-[PHContentEditingInputRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  v6 = [(PHContentEditingInputRequestOptions *)self progressHandler];
  [v4 setProgressHandler:v6];

  [(PHContentEditingInputRequestOptions *)self targetSize];
  [v4 setTargetSize:?];
  [v4 setContentMode:{-[PHContentEditingInputRequestOptions contentMode](self, "contentMode")}];
  [v4 setDontAllowRAW:{-[PHContentEditingInputRequestOptions dontAllowRAW](self, "dontAllowRAW")}];
  v7 = [(PHContentEditingInputRequestOptions *)self canHandleRAW];
  [v4 setCanHandleRAW:v7];

  [v4 setOriginalChoice:{-[PHContentEditingInputRequestOptions originalChoice](self, "originalChoice")}];
  [v4 setForceRunAsUnadjustedAsset:{-[PHContentEditingInputRequestOptions forceRunAsUnadjustedAsset](self, "forceRunAsUnadjustedAsset")}];
  [v4 setForceReturnFullLivePhoto:{-[PHContentEditingInputRequestOptions forceReturnFullLivePhoto](self, "forceReturnFullLivePhoto")}];
  [v4 setForcePrepareCurrentBaseVersionInAddition:{-[PHContentEditingInputRequestOptions forcePrepareCurrentBaseVersionInAddition](self, "forcePrepareCurrentBaseVersionInAddition")}];
  v8 = [(PHContentEditingInputRequestOptions *)self resultHandlerQueue];
  [v4 setResultHandlerQueue:v8];

  [v4 setShouldForceOriginalChoice:{-[PHContentEditingInputRequestOptions shouldForceOriginalChoice](self, "shouldForceOriginalChoice")}];
  [v4 setDisallowFallbackAdjustmentBase:{-[PHContentEditingInputRequestOptions disallowFallbackAdjustmentBase](self, "disallowFallbackAdjustmentBase")}];
  [v4 setSkipDisplaySizeImage:{-[PHContentEditingInputRequestOptions skipDisplaySizeImage](self, "skipDisplaySizeImage")}];
  [v4 setSkipLivePhotoImageAndAVAsset:{-[PHContentEditingInputRequestOptions skipLivePhotoImageAndAVAsset](self, "skipLivePhotoImageAndAVAsset")}];
  [v4 setDownloadIntent:{-[PHContentEditingInputRequestOptions downloadIntent](self, "downloadIntent")}];
  [v4 setRequireOriginalsDownloaded:{-[PHContentEditingInputRequestOptions requireOriginalsDownloaded](self, "requireOriginalsDownloaded")}];
  return v4;
}

@end