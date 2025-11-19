@interface MPStoreArtworkDataSource
+ (MPStoreArtworkDataSource)sharedStoreArtworkDataSource;
- (BOOL)areRepresentationsOfKind:(int64_t)a3 availableForCatalog:(id)a4;
- (CGSize)_bestSizeForImageSizeInfo:(id)a3 catalog:(id)a4;
- (CGSize)_clampImageSize:(CGSize)a3 toMaxSupportedSize:(CGSize)a4;
- (CGSize)bestAvailableSizeForCatalog:(id)a3;
- (id)_bestURLForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5;
- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5;
- (id)requestForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5;
- (id)sortedSupportedSizesForCatalog:(id)a3;
- (void)getExportableArtworkPropertiesForCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPStoreArtworkDataSource

void __56__MPStoreArtworkDataSource_sharedStoreArtworkDataSource__block_invoke()
{
  v0 = objc_alloc_init(MPStoreArtworkDataSource);
  v1 = sharedStoreArtworkDataSource_sSharedStoreArtworkDataSource;
  sharedStoreArtworkDataSource_sSharedStoreArtworkDataSource = v0;
}

+ (MPStoreArtworkDataSource)sharedStoreArtworkDataSource
{
  if (sharedStoreArtworkDataSource_sOnceToken != -1)
  {
    dispatch_once(&sharedStoreArtworkDataSource_sOnceToken, &__block_literal_global_1704);
  }

  v3 = sharedStoreArtworkDataSource_sSharedStoreArtworkDataSource;

  return v3;
}

- (CGSize)_clampImageSize:(CGSize)a3 toMaxSupportedSize:(CGSize)a4
{
  width = ceil(a3.width);
  height = ceil(a3.height);
  if (width > a4.width + 0.00000011920929)
  {
    height = round(height * (a4.width / width));
    width = a4.width;
  }

  if (height > a4.height + 0.00000011920929)
  {
    width = round(width * (a4.height / height));
    height = a4.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_bestSizeForImageSizeInfo:(id)a3 catalog:(id)a4
{
  v6 = a3;
  [a4 scaledFittingSize];
  v8 = v7;
  v10 = v9;
  MSVGetMaximumScreenSize();
  v12 = v11;
  v14 = v13;
  v15 = MGGetBoolAnswer();
  v16 = 6016.0;
  if (!v15)
  {
    v16 = v12;
  }

  v17 = 3384.0;
  if (!v15)
  {
    v17 = v14;
  }

  if (v16 < v17)
  {
    v16 = v17;
  }

  v18 = v16;
  if (!v16)
  {
    v18 = 1024;
  }

  [(MPStoreArtworkDataSource *)self _clampImageSize:v8 toMaxSupportedSize:v10, v18, v18];
  v20 = v19;
  v22 = v21;
  v23 = [v6 type];
  if (v23 == 2)
  {
    v28 = [v6 supportedSizes];
    v20 = MPArtworkRepresentationBestSizeMatchingSize(v28, v20, v22);
    v22 = v29;
  }

  else if (v23 == 1)
  {
    if ([v6 hasMaxSupportedSize])
    {
      [v6 maxSupportedSize];
      [(MPStoreArtworkDataSource *)self _clampImageSize:v20 toMaxSupportedSize:v22, v24, v25];
      v20 = v26;
      v22 = v27;
    }
  }

  else if (v23)
  {
    v22 = *(MEMORY[0x1E695F060] + 8);
    v20 = *MEMORY[0x1E695F060];
  }

  v30 = v20;
  v31 = v22;
  result.height = v31;
  result.width = v30;
  return result;
}

- (id)_bestURLForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5
{
  v7 = a3;
  [(MPStoreArtworkDataSource *)self bestAvailableSizeForCatalog:v7];
  v10 = v9;
  v11 = v8;
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v17 = 0;
    goto LABEL_21;
  }

  v13 = [v7 token];
  v14 = v13;
  if (a4 == 1)
  {
    v18 = [v7 preferredVideoFormat];
    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_14;
      }

      v16 = [v14 videoArtworkInfo];
      v19 = [v16 CRABSVideoURLMatchingSize:{v10, v11}];
    }

    else
    {
      v16 = [v14 videoArtworkInfo];
      v19 = [v16 HLSVideoURLForAspectRatio:v10 / v11];
    }

    v17 = v19;
    goto LABEL_19;
  }

  if (!a4)
  {
    v15 = [v13 artworkInfoType];
    if (v15 == 1)
    {
      v20 = [v14 videoArtworkInfo];
      v16 = [v20 previewFrameArtworkInfoMatchingAspectRatio:v10 / v11];

      goto LABEL_16;
    }

    if (!v15)
    {
      v16 = [v14 imageArtworkInfo];
LABEL_16:
      v21 = [v14 cropStyle];
      v22 = [v14 format];
      v17 = [v16 artworkURLWithSize:v21 cropStyle:v22 format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v10, v11}];

LABEL_19:
      goto LABEL_20;
    }
  }

LABEL_14:
  v17 = 0;
LABEL_20:

LABEL_21:

  return v17;
}

- (id)sortedSupportedSizesForCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  [v4 scaledFittingSize];
  v7 = v6;
  v9 = v8;

  MSVGetMaximumScreenSize();
  v11 = v10;
  v13 = v12;
  v14 = MGGetBoolAnswer();
  v15 = 6016.0;
  if (!v14)
  {
    v15 = v11;
  }

  v16 = 3384.0;
  if (!v14)
  {
    v16 = v13;
  }

  if (v15 < v16)
  {
    v15 = v16;
  }

  v17 = v15;
  if (!v15)
  {
    v17 = 1024;
  }

  [(MPStoreArtworkDataSource *)self _clampImageSize:v7 toMaxSupportedSize:v9, v17, v17];
  v19 = v18;
  v21 = v20;
  v22 = [v5 imageArtworkInfo];
  v23 = [v22 sizeInfo];
  v24 = [v23 type];
  if (v24 == 2)
  {
    v25 = [v23 supportedSizes];
  }

  else
  {
    if (v24 == 1)
    {
      if ([v23 hasMaxSupportedSize])
      {
        [v23 maxSupportedSize];
        [(MPStoreArtworkDataSource *)self _clampImageSize:v19 toMaxSupportedSize:v21, v26, v27];
        v19 = v28;
        v21 = v29;
      }
    }

    else if (v24)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v30 = MEMORY[0x1E695DEC8];
    v31 = [MEMORY[0x1E696B098] valueWithCGSize:{v19, v21}];
    v25 = [v30 arrayWithObject:v31];
  }

LABEL_17:

  return v25;
}

- (CGSize)bestAvailableSizeForCatalog:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = [v4 token];
  v8 = [v7 artworkInfoType];
  if (v8 == 1)
  {
    [v4 fittingSize];
    v14 = v13;
    [v4 fittingSize];
    v16 = v14 / v15;
    v17 = [v4 preferredVideoFormat];
    if (!v17)
    {
      v21 = [v7 videoArtworkInfo];
      v22 = [v21 HLSVideoURLForAspectRatio:v16];

      if (!v22)
      {
        goto LABEL_9;
      }

      v23 = [v7 videoArtworkInfo];
      v10 = [v23 previewFrameArtworkInfoMatchingAspectRatio:v16];

      v24 = [v10 sizeInfo];
      [(MPStoreArtworkDataSource *)self _bestSizeForImageSizeInfo:v24 catalog:v4];
      v5 = v25;
      v6 = v26;

      goto LABEL_8;
    }

    if (v17 == 1)
    {
      v18 = [v7 videoArtworkInfo];
      v10 = [v18 supportedSizesForCRABSVideoForAspectRatio:v16];

      [v4 scaledFittingSize];
      ICStoreVideoArtworkInfoBestSizesForSize();
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    v9 = [v7 imageArtworkInfo];
    v10 = [v9 sizeInfo];

    [(MPStoreArtworkDataSource *)self _bestSizeForImageSizeInfo:v10 catalog:v4];
LABEL_7:
    v5 = v11;
    v6 = v12;
LABEL_8:
  }

LABEL_9:

  v19 = v5;
  v20 = v6;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)requestForCatalog:(id)a3 kind:(int64_t)a4 size:(CGSize)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [(MPStoreArtworkDataSource *)self _bestURLForCatalog:a3 kind:a5.width size:a5.height];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E69E4400] standardDefaults];
  v8 = [v7 isLegacyStoreCacheBusterEnabled];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];

    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"buster" value:v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [v6 ic_URLByAppendingQueryItems:v12];

    v6 = v13;
  }

  if (a4 == 1)
  {
    v14 = [MEMORY[0x1E696AF68] requestWithURL:v6];
    goto LABEL_9;
  }

  if (a4)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AF68] requestWithURL:v6 cachePolicy:0 timeoutInterval:60.0];
LABEL_9:
  v15 = v14;
LABEL_10:

  return v15;
}

- (BOOL)areRepresentationsOfKind:(int64_t)a3 availableForCatalog:(id)a4
{
  v5 = [a4 token];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 videoArtworkInfo];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [v5 imageArtworkInfo];
  }

  v8 = v7 != 0;

LABEL_7:
  return v8;
}

- (void)getExportableArtworkPropertiesForCatalog:(id)a3 completionHandler:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MPExportableArtworkProperties);
  v8 = [v19 token];
  v9 = [v8 imageArtworkInfo];
  v10 = [v9 responseArray];

  if (v10)
  {
    v11 = [v9 responseArray];
  }

  else
  {
    v11 = [v9 responseDictionary];

    if (v11)
    {
      v12 = MEMORY[0x1E695DEC8];
      v13 = [v9 responseDictionary];
      v11 = [v12 arrayWithObject:v13];
    }
  }

  [(MPExportableArtworkProperties *)v7 setArtworkTemplateItems:v11];
  [v19 fittingSize];
  v14 = [(MPStoreArtworkDataSource *)self _bestURLForCatalog:v19 kind:0 size:?];
  v15 = [v14 absoluteString];
  [(MPExportableArtworkProperties *)v7 setResolvedURLString:v15];

  v16 = [(MPExportableArtworkProperties *)v7 artworkTemplateItems];
  if (v16)
  {

    goto LABEL_8;
  }

  v17 = [(MPExportableArtworkProperties *)v7 resolvedURLString];

  if (v17)
  {
LABEL_8:
    v18 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:4 userInfo:0];
  if (v6)
  {
LABEL_9:
    v6[2](v6, v7, v18);
  }

LABEL_10:
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5
{
  v8 = a4;
  v55.receiver = self;
  v55.super_class = MPStoreArtworkDataSource;
  v9 = [(MPAbstractNetworkArtworkDataSource *)&v55 existingArtworkEffectResultForEffectType:a3 catalog:v8 options:a5];
  if (a3 != 4)
  {
    if (a3 != 1)
    {
      goto LABEL_40;
    }

    v10 = [v8 token];
    v11 = [v10 artworkInfoType];
    v51 = v10;
    v53 = v9;
    if (v11 == 1)
    {
      [v8 fittingSize];
      v16 = v15;
      [v8 fittingSize];
      v18 = v16 / v17;
      v19 = [v10 videoArtworkInfo];
      v12 = [v19 previewFrameArtworkInfoMatchingAspectRatio:v18];
    }

    else if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 imageArtworkInfo];
    }

    v25 = [v12 copyColorWithKind:*MEMORY[0x1E69E4220]];
    v26 = [v12 copyColorWithKind:*MEMORY[0x1E69E4228]];
    v27 = [v12 copyColorWithKind:*MEMORY[0x1E69E4230]];
    v28 = [v12 copyColorWithKind:*MEMORY[0x1E69E4238]];
    if (v25)
    {
      v29 = [MEMORY[0x1E69DC888] colorWithCGColor:v25];
      if (v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v29 = 0;
      if (v26)
      {
LABEL_14:
        v30 = [MEMORY[0x1E69DC888] colorWithCGColor:v26];
        if (v27)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v30 = 0;
    if (v27)
    {
LABEL_15:
      v31 = [MEMORY[0x1E69DC888] colorWithCGColor:v27];
      if (v28)
      {
LABEL_16:
        v32 = [MEMORY[0x1E69DC888] colorWithCGColor:v28];
LABEL_21:
        CGColorRelease(v25);
        CGColorRelease(v26);
        CGColorRelease(v27);
        CGColorRelease(v28);
        if (v29 || v30 || v31)
        {
          v9 = objc_alloc_init(MPMutableArtworkColorAnalysis);
          [(MPMutableArtworkColorAnalysis *)v9 setBackgroundColor:v29];
          -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v9, "setBackgroundColorLight:", [v29 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);
          [(MPMutableArtworkColorAnalysis *)v9 setPrimaryTextColor:v30];
          -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v9, "setPrimaryTextColorLight:", [v30 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);
          [(MPMutableArtworkColorAnalysis *)v9 setSecondaryTextColor:v31];
          [(MPMutableArtworkColorAnalysis *)v9 setSecondaryTextColorLight:[(MPArtworkGradientInfo *)v31 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]];
          [(MPMutableArtworkColorAnalysis *)v9 setTertiaryTextColor:v32];
          -[MPMutableArtworkColorAnalysis setTertiaryTextColorLight:](v9, "setTertiaryTextColorLight:", [v32 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);

          v13 = v51;
        }

        else
        {
          v30 = 0;
          v29 = 0;
          v13 = v51;
          v9 = v53;
        }

        goto LABEL_38;
      }

LABEL_20:
      v32 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v31 = 0;
    if (v28)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v13 = [v8 token];
  v14 = [v13 artworkInfoType];
  if (v14 == 1)
  {
    [v8 fittingSize];
    v21 = v20;
    [v8 fittingSize];
    v23 = v21 / v22;
    v24 = [v13 videoArtworkInfo];
    v12 = [v24 previewFrameArtworkInfoMatchingAspectRatio:v23];
  }

  else if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v13 imageArtworkInfo];
  }

  v29 = [v12 textGradient];
  v33 = [v12 imageTraits];
  if ([v29 count])
  {
    v34 = MEMORY[0x1E69DC888];
    v35 = [v29 firstObject];
    v30 = [v34 colorWithCGColor:v35];
  }

  else
  {
    v30 = 0;
  }

  v36 = [v12 gradientInfo];
  if (v36)
  {
    v37 = [MPArtworkGradientInfo alloc];
    v54 = v9;
    v38 = MEMORY[0x1E69DC888];
    v39 = [v12 gradientInfo];
    v40 = [v38 colorWithCGColor:{objc_msgSend(v39, "color")}];
    [v12 gradientInfo];
    v50 = v8;
    v52 = v29;
    v42 = v41 = v13;
    [v42 y1];
    v44 = v43;
    [v12 gradientInfo];
    v46 = v45 = v33;
    [v46 y2];
    v31 = [(MPArtworkGradientInfo *)v37 initWithColor:v40 y1:v44 y2:v47];

    v33 = v45;
    v13 = v41;
    v8 = v50;
    v29 = v52;

    v9 = v54;
  }

  else
  {
    v31 = 0;
  }

  if (v30 || (v33 & 1) != 0 || v31)
  {
    v48 = [[MPArtworkImageAttachments alloc] initWithTextColor:v30 gradientInfo:v31 hasTitle:v33 & 1];
    v32 = v9;
    v9 = v48;
LABEL_38:

    goto LABEL_39;
  }

  v30 = 0;
LABEL_39:

LABEL_40:

  return v9;
}

@end