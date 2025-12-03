@interface PHPTPConversionHelper
+ (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints withConversionManager:(id)manager peerCapabilities:(id)capabilities;
+ (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints withPeerCapabilites:(id)capabilites;
@end

@implementation PHPTPConversionHelper

+ (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints withPeerCapabilites:(id)capabilites
{
  v39 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  hintsCopy = hints;
  capabilitesCopy = capabilites;
  originalFilename = [assetCopy originalFilename];
  fullDirectoryPath = [assetCopy fullDirectoryPath];
  v33 = originalFilename;
  v12 = [fullDirectoryPath stringByAppendingPathComponent:originalFilename];

  v32 = v12;
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  groupUUID = [assetCopy groupUUID];
  isVideo = [hintsCopy isVideo];
  v16 = MEMORY[0x1E69AE8A8];
  if (!isVideo)
  {
    [assetCopy imagePixSize];
    v17 = [v16 imageSourceForFileURL:v13 dimensions:?];
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E69AE8A8] videoSourceForFileURL:v13];
  if ([hintsCopy isLivePhoto])
  {
    if ([hintsCopy isRender])
    {
      goto LABEL_18;
    }

    if (![hintsCopy livePhotoImageIsHEIC])
    {
LABEL_15:
      v19 = v17;
      v20 = 0;
      v21 = 1635148593;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  videoCodec = [assetCopy videoCodec];
  if (videoCodec)
  {
    if (videoCodec != 1752589105)
    {
      if ([MEMORY[0x1E69C0700] videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:videoCodec])
      {
        v19 = v17;
        v20 = 1;
        v21 = 1752589105;
        v23 = 1;
LABEL_17:
        [v19 markContainsVideoEligibleForTranscodingAsCheckedWithValue:v20 codec:v21 isProRes:v23];
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_9:
    v19 = v17;
    v20 = 1;
    v21 = 1752589105;
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v22 = PLPTPGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = assetCopy;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Failed to get video codec for asset: %@", buf, 0xCu);
  }

LABEL_18:
  [v17 markLivePhotoPairingIdentifierAsCheckedWithValue:groupUUID];
  [v17 markIsHDRAsCheckedWithValue:{objc_msgSend(assetCopy, "isHDR")}];
  if ([hintsCopy isVideo])
  {
    v24 = [hintsCopy isLivePhoto] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v34 = 0;
  v25 = capabilitesCopy;
  v26 = [MEMORY[0x1E69AE8A0] requestForSource:v17 destinationCapabilities:capabilitesCopy error:&v34];
  v27 = v34;
  if (v26)
  {
    [v26 setShouldPadOutputFileToEstimatedLength:1];
    [v26 setUseTransferBehaviorUserPreference:1];
    filename = [assetCopy filename];
    [v26 setOutputFilename:filename];

    if (v24)
    {
      [v26 enableSinglePassVideoEncodingWithUpdateHandler:0];
    }

    v29 = v26;
  }

  else
  {
    v30 = PLPTPGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = assetCopy;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Unable to create conversion request: %@, ptpAsset: %@", buf, 0x16u);
    }
  }

  return v26;
}

+ (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints withConversionManager:(id)manager peerCapabilities:(id)capabilities
{
  v46 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managerCopy = manager;
  v12 = [self conversionResultForPTPAsset:assetCopy sourceHints:hints withPeerCapabilites:capabilities];
  if (!v12)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = assetCopy;
      v16 = "Failed to create a conversion request for ptpAsset %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_26:
    v28 = 0;
    goto LABEL_27;
  }

  [managerCopy preflightConversionRequest:v12];
  source = [v12 source];
  containsProResVideoWithFormatEligibleForTranscoding = [source containsProResVideoWithFormatEligibleForTranscoding];

  if (containsProResVideoWithFormatEligibleForTranscoding)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = assetCopy;
      v16 = "Never transcode ProRes ptpAsset: %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_7:
      _os_log_impl(&dword_19C86F000, v17, v18, v16, buf, 0xCu);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if ([v12 status] == 5)
  {
    v15 = PLPTPGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    error = [v12 error];
    *buf = 138412546;
    v41 = error;
    v42 = 2112;
    v43 = assetCopy;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to preflight conversion request: %@, ptpAsset: %@", buf, 0x16u);
LABEL_25:

    goto LABEL_26;
  }

  source2 = [v12 source];
  if ([source2 isVideo])
  {
    source3 = [v12 source];
    firstVideoTrackCodec = [source3 firstVideoTrackCodec];
  }

  else
  {
    firstVideoTrackCodec = 0;
  }

  v23 = MEMORY[0x1E69C08F0];
  source4 = [v12 source];
  fileType = [source4 fileType];
  v15 = [v23 typeWithIdentifier:fileType];

  backwardsCompatibilityStatus = [v12 backwardsCompatibilityStatus];
  if (backwardsCompatibilityStatus != 2)
  {
    v27 = backwardsCompatibilityStatus;
    if (backwardsCompatibilityStatus == 1)
    {
      v28 = [[PHPTPConversionResult alloc] initWithRequiresConversion:0 pathExtension:0 estimatedFileLength:0 inputVideoCodec:firstVideoTrackCodec inputContentType:v15 outputVideoCodec:firstVideoTrackCodec outputContentType:v15];
      goto LABEL_27;
    }

    error = PLPTPGetLog();
    if (os_log_type_enabled(error, OS_LOG_TYPE_ERROR))
    {
      error2 = [v12 error];
      *buf = 134218498;
      v41 = v27;
      v42 = 2112;
      v43 = error2;
      v44 = 2112;
      v45 = assetCopy;
      _os_log_impl(&dword_19C86F000, error, OS_LOG_TYPE_ERROR, "Unexpected backwards compatibility status %ld: %@, ptpAsset: %@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v38 = [PHPTPConversionResult alloc];
  outputPathExtension = [v12 outputPathExtension];
  uppercaseString = [outputPathExtension uppercaseString];
  estimatedOutputFileLength = [v12 estimatedOutputFileLength];
  source5 = [v12 source];
  if ([source5 isVideo])
  {
    v32 = 1635148593;
  }

  else
  {
    v32 = 0;
  }

  source6 = [v12 source];
  isVideo = [source6 isVideo];
  v35 = MEMORY[0x1E6982F80];
  if (!isVideo)
  {
    v35 = MEMORY[0x1E6982E58];
  }

  v28 = [(PHPTPConversionResult *)v38 initWithRequiresConversion:1 pathExtension:uppercaseString estimatedFileLength:estimatedOutputFileLength inputVideoCodec:firstVideoTrackCodec inputContentType:v15 outputVideoCodec:v32 outputContentType:*v35];

LABEL_27:

  return v28;
}

@end