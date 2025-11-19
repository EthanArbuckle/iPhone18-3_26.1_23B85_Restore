@interface PHPTPConversionHelper
+ (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 withConversionManager:(id)a5 peerCapabilities:(id)a6;
+ (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 withPeerCapabilites:(id)a5;
@end

@implementation PHPTPConversionHelper

+ (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 withPeerCapabilites:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 originalFilename];
  v11 = [v7 fullDirectoryPath];
  v33 = v10;
  v12 = [v11 stringByAppendingPathComponent:v10];

  v32 = v12;
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  v14 = [v7 groupUUID];
  v15 = [v8 isVideo];
  v16 = MEMORY[0x1E69AE8A8];
  if (!v15)
  {
    [v7 imagePixSize];
    v17 = [v16 imageSourceForFileURL:v13 dimensions:?];
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E69AE8A8] videoSourceForFileURL:v13];
  if ([v8 isLivePhoto])
  {
    if ([v8 isRender])
    {
      goto LABEL_18;
    }

    if (![v8 livePhotoImageIsHEIC])
    {
LABEL_15:
      v19 = v17;
      v20 = 0;
      v21 = 1635148593;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v18 = [v7 videoCodec];
  if (v18)
  {
    if (v18 != 1752589105)
    {
      if ([MEMORY[0x1E69C0700] videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:v18])
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
    v36 = v7;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Failed to get video codec for asset: %@", buf, 0xCu);
  }

LABEL_18:
  [v17 markLivePhotoPairingIdentifierAsCheckedWithValue:v14];
  [v17 markIsHDRAsCheckedWithValue:{objc_msgSend(v7, "isHDR")}];
  if ([v8 isVideo])
  {
    v24 = [v8 isLivePhoto] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v34 = 0;
  v25 = v9;
  v26 = [MEMORY[0x1E69AE8A0] requestForSource:v17 destinationCapabilities:v9 error:&v34];
  v27 = v34;
  if (v26)
  {
    [v26 setShouldPadOutputFileToEstimatedLength:1];
    [v26 setUseTransferBehaviorUserPreference:1];
    v28 = [v7 filename];
    [v26 setOutputFilename:v28];

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
      v38 = v7;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Unable to create conversion request: %@, ptpAsset: %@", buf, 0x16u);
    }
  }

  return v26;
}

+ (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 withConversionManager:(id)a5 peerCapabilities:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [a1 conversionResultForPTPAsset:v10 sourceHints:a4 withPeerCapabilites:a6];
  if (!v12)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v10;
      v16 = "Failed to create a conversion request for ptpAsset %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_26:
    v28 = 0;
    goto LABEL_27;
  }

  [v11 preflightConversionRequest:v12];
  v13 = [v12 source];
  v14 = [v13 containsProResVideoWithFormatEligibleForTranscoding];

  if (v14)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v10;
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

    v19 = [v12 error];
    *buf = 138412546;
    v41 = v19;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to preflight conversion request: %@, ptpAsset: %@", buf, 0x16u);
LABEL_25:

    goto LABEL_26;
  }

  v20 = [v12 source];
  if ([v20 isVideo])
  {
    v21 = [v12 source];
    v22 = [v21 firstVideoTrackCodec];
  }

  else
  {
    v22 = 0;
  }

  v23 = MEMORY[0x1E69C08F0];
  v24 = [v12 source];
  v25 = [v24 fileType];
  v15 = [v23 typeWithIdentifier:v25];

  v26 = [v12 backwardsCompatibilityStatus];
  if (v26 != 2)
  {
    v27 = v26;
    if (v26 == 1)
    {
      v28 = [[PHPTPConversionResult alloc] initWithRequiresConversion:0 pathExtension:0 estimatedFileLength:0 inputVideoCodec:v22 inputContentType:v15 outputVideoCodec:v22 outputContentType:v15];
      goto LABEL_27;
    }

    v19 = PLPTPGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v36 = [v12 error];
      *buf = 134218498;
      v41 = v27;
      v42 = 2112;
      v43 = v36;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unexpected backwards compatibility status %ld: %@, ptpAsset: %@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v38 = [PHPTPConversionResult alloc];
  v39 = [v12 outputPathExtension];
  v29 = [v39 uppercaseString];
  v30 = [v12 estimatedOutputFileLength];
  v31 = [v12 source];
  if ([v31 isVideo])
  {
    v32 = 1635148593;
  }

  else
  {
    v32 = 0;
  }

  v33 = [v12 source];
  v34 = [v33 isVideo];
  v35 = MEMORY[0x1E6982F80];
  if (!v34)
  {
    v35 = MEMORY[0x1E6982E58];
  }

  v28 = [(PHPTPConversionResult *)v38 initWithRequiresConversion:1 pathExtension:v29 estimatedFileLength:v30 inputVideoCodec:v22 inputContentType:v15 outputVideoCodec:v32 outputContentType:*v35];

LABEL_27:

  return v28;
}

@end