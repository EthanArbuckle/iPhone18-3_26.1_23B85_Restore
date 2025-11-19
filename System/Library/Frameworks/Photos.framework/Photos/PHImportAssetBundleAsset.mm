@interface PHImportAssetBundleAsset
- (PHImportAssetBundleAsset)initWithAssetBundleAtURL:(id)a3 withImportSource:(id)a4;
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
  v2 = [(PHImportAssetBundleAsset *)self assetBundle];
  v3 = [v2 accessibilityDescription];

  return v3;
}

- (id)assetDescription
{
  v2 = [(PHImportAssetBundleAsset *)self assetBundle];
  v3 = [v2 assetDescription];

  return v3;
}

- (id)keywordTitles
{
  v2 = [(PHImportAssetBundleAsset *)self assetBundle];
  v3 = [v2 keywordTitles];

  return v3;
}

- (id)title
{
  v2 = [(PHImportAssetBundleAsset *)self assetBundle];
  v3 = [v2 assetTitle];

  return v3;
}

- (id)timeZone
{
  v3 = [(PHImportAssetBundleAsset *)self assetBundle];
  v4 = [v3 libraryCreationDateTimeZone];

  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = PHImportAssetBundleAsset;
    v4 = [(PHImportAsset *)&v6 timeZone];
  }

  return v4;
}

- (id)creationDate
{
  v3 = [(PHImportAssetBundleAsset *)self assetBundle];
  v4 = [v3 libraryCreationDate];

  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = PHImportAssetBundleAsset;
    v4 = [(PHImportAsset *)&v6 creationDate];
  }

  return v4;
}

- (PHImportAssetBundleAsset)initWithAssetBundleAtURL:(id)a3 withImportSource:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69C0668]) initWithAssetBundleAtURL:v6];
  v9 = v8;
  if (v8)
  {
    if ([v8 mediaType] == 2)
    {
      v10 = [v9 videoURL];
      v11 = 16;
      goto LABEL_8;
    }

    if ([v9 mediaType] == 1)
    {
      v10 = [v9 photoURL];
      v11 = 2;
LABEL_8:
      v77.receiver = self;
      v77.super_class = PHImportAssetBundleAsset;
      v13 = [(PHImportAsset *)&v77 initWithSource:v7 url:v10 type:0 supportedMediaType:v11 uuid:0];
      if (!v13)
      {
LABEL_47:
        self = v13;
        v26 = self;
        goto LABEL_48;
      }

      if ([v9 mediaType] == 2)
      {
        v14 = [v9 fullSizeVideoURL];

        if (v14)
        {
          v15 = [PHImportAsset alloc];
          v16 = [v9 fullSizeVideoURL];
          v17 = [(PHImportAsset *)v15 initWithSource:v7 url:v16 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setLargeMovieRender:v17];
        }

        v18 = [v9 adjustmentBaseVideoURL];

        if (v18)
        {
          v19 = [PHImportAsset alloc];
          v20 = [v9 adjustmentBaseVideoURL];
          v21 = [(PHImportAsset *)v19 initWithSource:v7 url:v20 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setBase:v21];
        }

        v22 = [v9 spatialOvercaptureVideoURL];

        if (!v22)
        {
          goto LABEL_40;
        }

        v23 = [PHImportAsset alloc];
        v24 = [v9 fullSizeVideoURL];
        v25 = [(PHImportAsset *)v23 initWithSource:v7 url:v24 type:0 supportedMediaType:16 uuid:0];

        [(PHImportAsset *)v13 setSpatialOverCapture:v25];
      }

      else
      {
        if ([v9 mediaType] != 1)
        {
          goto LABEL_40;
        }

        v27 = [v9 alternatePhotoURL];

        if (v27)
        {
          v28 = [PHImportAsset alloc];
          v29 = [v9 alternatePhotoURL];
          v30 = [(PHImportAsset *)v28 initWithSource:v7 url:v29 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setRawAsset:v30];
        }

        v31 = [v9 fullSizePhotoURL];

        if (v31)
        {
          v32 = [PHImportAsset alloc];
          v33 = [v9 fullSizePhotoURL];
          v34 = [(PHImportAsset *)v32 initWithSource:v7 url:v33 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setLargeRender:v34];
        }

        v35 = [v9 adjustmentBasePhotoURL];

        if (v35)
        {
          v36 = [PHImportAsset alloc];
          v37 = [v9 adjustmentBasePhotoURL];
          v38 = [(PHImportAsset *)v36 initWithSource:v7 url:v37 type:0 supportedMediaType:2 uuid:0];

          [(PHImportAsset *)v13 setBase:v38];
        }

        v39 = [v9 spatialOvercapturePhotoURL];

        if (v39)
        {
          v40 = [PHImportAsset alloc];
          v41 = [v9 spatialOvercapturePhotoURL];
          v42 = [(PHImportAsset *)v40 initWithSource:v7 url:v41 type:0 supportedMediaType:2 uuid:0];

          v43 = [v9 spatialOvercapturePairedVideoURL];

          if (v43)
          {
            v44 = [PHImportAsset alloc];
            v45 = [v9 spatialOvercapturePairedVideoURL];
            v46 = [(PHImportAsset *)v44 initWithSource:v7 url:v45 type:0 supportedMediaType:16 uuid:0];

            [(PHImportAsset *)v42 setVideoComplement:v46];
          }

          [(PHImportAsset *)v13 setSpatialOverCapture:v42];
        }

        v47 = [v9 pairedVideoURL];

        if (v47)
        {
          v48 = [PHImportAsset alloc];
          v49 = [v9 pairedVideoURL];
          v50 = [(PHImportAsset *)v48 initWithSource:v7 url:v49 type:0 supportedMediaType:16 uuid:0];

          [(PHImportAsset *)v13 setVideoComplement:v50];
        }

        v51 = [v9 fullSizePairedVideoURL];
        if (v51)
        {
          v52 = v51;
          v53 = [(PHImportAsset *)v13 largeRender];

          if (v53)
          {
            v54 = [PHImportAsset alloc];
            v55 = [v9 fullSizePairedVideoURL];
            v56 = [(PHImportAsset *)v54 initWithSource:v7 url:v55 type:0 supportedMediaType:16 uuid:0];

            v57 = [(PHImportAsset *)v13 largeRender];
            [v57 setVideoComplement:v56];
          }
        }

        v58 = [v9 adjustmentBasePairedVideoURL];
        if (!v58)
        {
          goto LABEL_40;
        }

        v59 = v58;
        v60 = [(PHImportAsset *)v13 base];

        if (!v60)
        {
          goto LABEL_40;
        }

        v61 = [PHImportAsset alloc];
        v62 = [v9 adjustmentBasePairedVideoURL];
        v25 = [(PHImportAsset *)v61 initWithSource:v7 url:v62 type:0 supportedMediaType:16 uuid:0];

        v63 = [(PHImportAsset *)v13 base];
        [v63 setVideoComplement:v25];
      }

LABEL_40:
      v64 = [v9 adjustmentDataURL];

      if (v64)
      {
        v65 = [PHImportAsset alloc];
        v66 = [v9 adjustmentDataURL];
        v67 = [(PHImportAsset *)v65 initWithSource:v7 url:v66 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v67];
      }

      v68 = [v9 originalAdjustmentDataURL];

      if (v68)
      {
        v69 = [PHImportAsset alloc];
        v70 = [v9 originalAdjustmentDataURL];
        v71 = [(PHImportAsset *)v69 initWithSource:v7 url:v70 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v71];
      }

      v72 = [v9 adjustmentSecondaryDataURL];

      if (v72)
      {
        v73 = [PHImportAsset alloc];
        v74 = [v9 adjustmentSecondaryDataURL];
        v75 = [(PHImportAsset *)v73 initWithSource:v7 url:v74 type:0 supportedMediaType:64 uuid:0];

        [(PHImportAsset *)v13 addSidecarAsset:v75];
      }

      [(PHImportAssetBundleAsset *)v13 setAssetBundle:v9];
      goto LABEL_47;
    }

    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v79 = [v9 mediaType];
      v12 = "Unsupported asset bundle media type: %ld.";
      goto LABEL_18;
    }
  }

  else
  {
    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v79 = v6;
      v12 = "Tried to parse asset bundle at URL: %@, but it was invalid.";
LABEL_18:
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }
  }

  v26 = 0;
LABEL_48:

  return v26;
}

@end