@interface PHImportAssetBundleAsset
- (PHImportAssetBundleAsset)initWithAssetBundleAtURL:(id)l withImportSource:(id)source;
- (id)accessibilityDescription;
- (id)assetDescription;
- (id)creationDate;
- (id)keywordTitles;
- (id)timeZone;
- (id)title;
@end

@implementation PHImportAssetBundleAsset

- (id)accessibilityDescription
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  accessibilityDescription = [assetBundle accessibilityDescription];

  return accessibilityDescription;
}

- (id)assetDescription
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  assetDescription = [assetBundle assetDescription];

  return assetDescription;
}

- (id)keywordTitles
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  keywordTitles = [assetBundle keywordTitles];

  return keywordTitles;
}

- (id)title
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  assetTitle = [assetBundle assetTitle];

  return assetTitle;
}

- (id)timeZone
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  libraryCreationDateTimeZone = [assetBundle libraryCreationDateTimeZone];

  if (!libraryCreationDateTimeZone)
  {
    v6.receiver = self;
    v6.super_class = PHImportAssetBundleAsset;
    libraryCreationDateTimeZone = [(PHImportAsset *)&v6 timeZone];
  }

  return libraryCreationDateTimeZone;
}

- (id)creationDate
{
  assetBundle = [(PHImportAssetBundleAsset *)self assetBundle];
  libraryCreationDate = [assetBundle libraryCreationDate];

  if (!libraryCreationDate)
  {
    v6.receiver = self;
    v6.super_class = PHImportAssetBundleAsset;
    libraryCreationDate = [(PHImportAsset *)&v6 creationDate];
  }

  return libraryCreationDate;
}

- (PHImportAssetBundleAsset)initWithAssetBundleAtURL:(id)l withImportSource:(id)source
{
  v80 = *MEMORY[0x1E69E9840];
  lCopy = l;
  sourceCopy = source;
  v8 = [objc_alloc(MEMORY[0x1E69C0668]) initWithAssetBundleAtURL:lCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 mediaType] == 2)
    {
      videoURL = [v9 videoURL];
      v11 = 16;
      goto LABEL_8;
    }

    if ([v9 mediaType] == 1)
    {
      videoURL = [v9 photoURL];
      v11 = 2;
LABEL_8:
      v77.receiver = self;
      v77.super_class = PHImportAssetBundleAsset;
      v13 = [(PHImportAsset *)&v77 initWithSource:sourceCopy url:videoURL type:0 supportedMediaType:v11 uuid:0];
      if (!v13)
      {
LABEL_47:
        self = v13;
        selfCopy = self;
        goto LABEL_48;
      }

      if ([v9 mediaType] == 2)
      {
        fullSizeVideoURL = [v9 fullSizeVideoURL];

        if (fullSizeVideoURL)
        {
          v15 = [PHImportAsset alloc];
          fullSizeVideoURL2 = [v9 fullSizeVideoURL];
          v17 = [(PHImportAsset *)v15 initWithSource:sourceCopy url:fullSizeVideoURL2 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setLargeMovieRender:v17];
        }

        adjustmentBaseVideoURL = [v9 adjustmentBaseVideoURL];

        if (adjustmentBaseVideoURL)
        {
          v19 = [PHImportAsset alloc];
          adjustmentBaseVideoURL2 = [v9 adjustmentBaseVideoURL];
          v21 = [(PHImportAsset *)v19 initWithSource:sourceCopy url:adjustmentBaseVideoURL2 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setBase:v21];
        }

        spatialOvercaptureVideoURL = [v9 spatialOvercaptureVideoURL];

        if (!spatialOvercaptureVideoURL)
        {
          goto LABEL_40;
        }

        v23 = [PHImportAsset alloc];
        fullSizeVideoURL3 = [v9 fullSizeVideoURL];
        v25 = [(PHImportAsset *)v23 initWithSource:sourceCopy url:fullSizeVideoURL3 type:0 supportedMediaType:16 uuid:0];

        [(PHImportAsset *)v13 setSpatialOverCapture:v25];
      }

      else
      {
        if ([v9 mediaType] != 1)
        {
          goto LABEL_40;
        }

        alternatePhotoURL = [v9 alternatePhotoURL];

        if (alternatePhotoURL)
        {
          v28 = [PHImportAsset alloc];
          alternatePhotoURL2 = [v9 alternatePhotoURL];
          v30 = [(PHImportAsset *)v28 initWithSource:sourceCopy url:alternatePhotoURL2 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setRawAsset:v30];
        }

        fullSizePhotoURL = [v9 fullSizePhotoURL];

        if (fullSizePhotoURL)
        {
          v32 = [PHImportAsset alloc];
          fullSizePhotoURL2 = [v9 fullSizePhotoURL];
          v34 = [(PHImportAsset *)v32 initWithSource:sourceCopy url:fullSizePhotoURL2 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setLargeRender:v34];
        }

        adjustmentBasePhotoURL = [v9 adjustmentBasePhotoURL];

        if (adjustmentBasePhotoURL)
        {
          v36 = [PHImportAsset alloc];
          adjustmentBasePhotoURL2 = [v9 adjustmentBasePhotoURL];
          v38 = [(PHImportAsset *)v36 initWithSource:sourceCopy url:adjustmentBasePhotoURL2 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setBase:v38];
        }

        spatialOvercapturePhotoURL = [v9 spatialOvercapturePhotoURL];

        if (spatialOvercapturePhotoURL)
        {
          v40 = [PHImportAsset alloc];
          spatialOvercapturePhotoURL2 = [v9 spatialOvercapturePhotoURL];
          v42 = [(PHImportAsset *)v40 initWithSource:sourceCopy url:spatialOvercapturePhotoURL2 type:0 supportedMediaType:2 uuid:0];

          spatialOvercapturePairedVideoURL = [v9 spatialOvercapturePairedVideoURL];

          if (spatialOvercapturePairedVideoURL)
          {
            v44 = [PHImportAsset alloc];
            spatialOvercapturePairedVideoURL2 = [v9 spatialOvercapturePairedVideoURL];
            v46 = [(PHImportAsset *)v44 initWithSource:sourceCopy url:spatialOvercapturePairedVideoURL2 type:0 supportedMediaType:16 uuid:0];

            [(PHImportAsset *)v42 setVideoComplement:v46];
          }

          [(PHImportAsset *)v13 setSpatialOverCapture:v42];
        }

        pairedVideoURL = [v9 pairedVideoURL];

        if (pairedVideoURL)
        {
          v48 = [PHImportAsset alloc];
          pairedVideoURL2 = [v9 pairedVideoURL];
          v50 = [(PHImportAsset *)v48 initWithSource:sourceCopy url:pairedVideoURL2 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setVideoComplement:v50];
        }

        fullSizePairedVideoURL = [v9 fullSizePairedVideoURL];
        if (fullSizePairedVideoURL)
        {
          v52 = fullSizePairedVideoURL;
          largeRender = [(PHImportAsset *)v13 largeRender];

          if (largeRender)
          {
            v54 = [PHImportAsset alloc];
            fullSizePairedVideoURL2 = [v9 fullSizePairedVideoURL];
            v56 = [(PHImportAsset *)v54 initWithSource:sourceCopy url:fullSizePairedVideoURL2 type:0 supportedMediaType:16 uuid:0];

            largeRender2 = [(PHImportAsset *)v13 largeRender];
            [largeRender2 setVideoComplement:v56];
          }
        }

        adjustmentBasePairedVideoURL = [v9 adjustmentBasePairedVideoURL];
        if (!adjustmentBasePairedVideoURL)
        {
          goto LABEL_40;
        }

        v59 = adjustmentBasePairedVideoURL;
        base = [(PHImportAsset *)v13 base];

        if (!base)
        {
          goto LABEL_40;
        }

        v61 = [PHImportAsset alloc];
        adjustmentBasePairedVideoURL2 = [v9 adjustmentBasePairedVideoURL];
        v25 = [(PHImportAsset *)v61 initWithSource:sourceCopy url:adjustmentBasePairedVideoURL2 type:0 supportedMediaType:16 uuid:0];

        base2 = [(PHImportAsset *)v13 base];
        [base2 setVideoComplement:v25];
      }

LABEL_40:
      adjustmentDataURL = [v9 adjustmentDataURL];

      if (adjustmentDataURL)
      {
        v65 = [PHImportAsset alloc];
        adjustmentDataURL2 = [v9 adjustmentDataURL];
        v67 = [(PHImportAsset *)v65 initWithSource:sourceCopy url:adjustmentDataURL2 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v67];
      }

      originalAdjustmentDataURL = [v9 originalAdjustmentDataURL];

      if (originalAdjustmentDataURL)
      {
        v69 = [PHImportAsset alloc];
        originalAdjustmentDataURL2 = [v9 originalAdjustmentDataURL];
        v71 = [(PHImportAsset *)v69 initWithSource:sourceCopy url:originalAdjustmentDataURL2 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v71];
      }

      adjustmentSecondaryDataURL = [v9 adjustmentSecondaryDataURL];

      if (adjustmentSecondaryDataURL)
      {
        v73 = [PHImportAsset alloc];
        adjustmentSecondaryDataURL2 = [v9 adjustmentSecondaryDataURL];
        v75 = [(PHImportAsset *)v73 initWithSource:sourceCopy url:adjustmentSecondaryDataURL2 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v75];
      }

      [(PHImportAssetBundleAsset *)v13 setAssetBundle:v9];
      goto LABEL_47;
    }

    videoURL = PLImportGetLog();
    if (os_log_type_enabled(videoURL, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      mediaType = [v9 mediaType];
      v12 = "Unsupported asset bundle media type: %ld.";
      goto LABEL_18;
    }
  }

  else
  {
    videoURL = PLImportGetLog();
    if (os_log_type_enabled(videoURL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      mediaType = lCopy;
      v12 = "Tried to parse asset bundle at URL: %@, but it was invalid.";
LABEL_18:
      _os_log_impl(&dword_19C86F000, videoURL, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }
  }

  selfCopy = 0;
LABEL_48:

  return selfCopy;
}

@end