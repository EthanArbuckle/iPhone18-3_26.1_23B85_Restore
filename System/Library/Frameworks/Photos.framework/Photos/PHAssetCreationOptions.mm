@interface PHAssetCreationOptions
- (PHAssetCreationOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStillSourceTime:(id *)time;
@end

@implementation PHAssetCreationOptions

- (void)setStillSourceTime:(id *)time
{
  v3 = *&time->var0;
  self->_stillSourceTime.epoch = time->var3;
  *&self->_stillSourceTime.value = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setShouldDownloadOrCloudReReferenceMissingResources:{-[PHAssetCreationOptions shouldDownloadOrCloudReReferenceMissingResources](self, "shouldDownloadOrCloudReReferenceMissingResources")}];
  adjustmentBakeInOptions = [(PHAssetCreationOptions *)self adjustmentBakeInOptions];
  [v4 setAdjustmentBakeInOptions:adjustmentBakeInOptions];

  metadataCopyOptions = [(PHAssetCreationOptions *)self metadataCopyOptions];
  [v4 setMetadataCopyOptions:metadataCopyOptions];

  [(PHAssetCreationOptions *)self stillSourceTime];
  v8 = v10;
  v9 = v11;
  [v4 setStillSourceTime:&v8];
  [v4 setResetUserSpecificMetadata:{-[PHAssetCreationOptions resetUserSpecificMetadata](self, "resetUserSpecificMetadata")}];
  [v4 setCopyStillPhotoFromLivePhoto:{-[PHAssetCreationOptions copyStillPhotoFromLivePhoto](self, "copyStillPhotoFromLivePhoto")}];
  [v4 setCopyOriginal:{-[PHAssetCreationOptions copyOriginal](self, "copyOriginal")}];
  [v4 setCopySinglePhotoFromBurst:{-[PHAssetCreationOptions copySinglePhotoFromBurst](self, "copySinglePhotoFromBurst")}];
  [v4 setCopyAsAlternateAsset:{-[PHAssetCreationOptions copyAsAlternateAsset](self, "copyAsAlternateAsset")}];
  [v4 setUseRecoverableStagingDirectory:{-[PHAssetCreationOptions useRecoverableStagingDirectory](self, "useRecoverableStagingDirectory")}];
  [v4 setShouldCreateScreenshot:{-[PHAssetCreationOptions shouldCreateScreenshot](self, "shouldCreateScreenshot")}];
  [v4 setShouldUseAutomaticallyGeneratedOriginalFilename:{-[PHAssetCreationOptions shouldUseAutomaticallyGeneratedOriginalFilename](self, "shouldUseAutomaticallyGeneratedOriginalFilename")}];
  return v4;
}

- (PHAssetCreationOptions)init
{
  v4.receiver = self;
  v4.super_class = PHAssetCreationOptions;
  result = [(PHAssetCreationOptions *)&v4 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    *&result->_stillSourceTime.value = *MEMORY[0x1E6960C70];
    result->_stillSourceTime.epoch = *(v3 + 16);
  }

  return result;
}

@end