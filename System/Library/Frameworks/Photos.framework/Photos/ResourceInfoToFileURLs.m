@interface ResourceInfoToFileURLs
@end

@implementation ResourceInfoToFileURLs

void ___ResourceInfoToFileURLs_block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHResourceLocalAvailabilityRequestAdjustmentDataURLKey";
  v2[1] = @"PHResourceLocalAvailabilityRequestOriginalAdjustmentDataURLKey";
  v3[0] = @"PHAssetExportRequestAdjustmentDataFileURLKey";
  v3[1] = @"PHAssetExportRequestOriginalAdjustmentDataFileURLKey";
  v2[2] = @"PHResourceLocalAvailabilityRequestAdjustmentSecondaryDataURLKey";
  v2[3] = @"PHResourceLocalAvailabilityRequestPhotoURLKey";
  v3[2] = @"PHAssetExportRequestAdjustmentSecondaryDataFileURLKey";
  v3[3] = @"PHAssetExportRequestPhotoFileURLKey";
  v2[4] = @"PHResourceLocalAvailabilityRequestAlternatePhotoURLKey";
  v2[5] = @"PHResourceLocalAvailabilityRequestFullSizePhotoURLKey";
  v3[4] = @"PHAssetExportRequestAlternatePhotoURLKey";
  v3[5] = @"PHAssetExportRequestFullSizePhotoURLKey";
  v2[6] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseFullSizePhotoURLKey";
  v2[7] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePhotoURLKey";
  v3[6] = @"PHAssetExportRequestAdjustmentBaseFullSizePhotoURLKey";
  v3[7] = @"PHAssetExportRequestSpatialOvercapturePhotoURLKey";
  v2[8] = @"PHResourceLocalAvailabilityRequestVideoURLKey";
  v2[9] = @"PHResourceLocalAvailabilityRequestFullSizeVideoURLKey";
  v3[8] = @"PHAssetExportRequestVideoFileURLKey";
  v3[9] = @"PHAssetExportRequestFullSizeVideoURLKey";
  v2[10] = @"PHResourceLocalAvailabilityRequestAdjustmentBaseVideoURLKey";
  v2[11] = @"PHResourceLocalAvailabilityRequestAdjustmentBasePairedVideoURLKey";
  v3[10] = @"PHAssetExportRequestAdjustmentBaseVideoURLKey";
  v3[11] = @"PHAssetExportRequestAdjustmentBasePairedVideoURLKey";
  v2[12] = @"PHResourceLocalAvailabilityRequestSpatialOvercapturePairedVideoURLKey";
  v2[13] = @"PHResourceLocalAvailabilityRequestSpatialOvercaptureVideoURLKey";
  v3[12] = @"PHAssetExportRequestSpatialOvercapturePairedVideoURLKey";
  v3[13] = @"PHAssetExportRequestSpatialOvercaptureVideoURLKey";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:14];
  v1 = _ResourceInfoToFileURLs_fileURLKeysFromResourceInfoKeys;
  _ResourceInfoToFileURLs_fileURLKeysFromResourceInfoKeys = v0;
}

@end