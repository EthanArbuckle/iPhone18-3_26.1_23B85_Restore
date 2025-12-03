@interface MPStoreArtworkDataSource
+ (MPStoreArtworkDataSource)sharedStoreArtworkDataSource;
- (BOOL)areRepresentationsOfKind:(int64_t)kind availableForCatalog:(id)catalog;
- (CGSize)_bestSizeForImageSizeInfo:(id)info catalog:(id)catalog;
- (CGSize)_clampImageSize:(CGSize)size toMaxSupportedSize:(CGSize)supportedSize;
- (CGSize)bestAvailableSizeForCatalog:(id)catalog;
- (id)_bestURLForCatalog:(id)catalog kind:(int64_t)kind size:(CGSize)size;
- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options;
- (id)requestForCatalog:(id)catalog kind:(int64_t)kind size:(CGSize)size;
- (id)sortedSupportedSizesForCatalog:(id)catalog;
- (void)getExportableArtworkPropertiesForCatalog:(id)catalog completionHandler:(id)handler;
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

- (CGSize)_clampImageSize:(CGSize)size toMaxSupportedSize:(CGSize)supportedSize
{
  width = ceil(size.width);
  height = ceil(size.height);
  if (width > supportedSize.width + 0.00000011920929)
  {
    height = round(height * (supportedSize.width / width));
    width = supportedSize.width;
  }

  if (height > supportedSize.height + 0.00000011920929)
  {
    width = round(width * (supportedSize.height / height));
    height = supportedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_bestSizeForImageSizeInfo:(id)info catalog:(id)catalog
{
  infoCopy = info;
  [catalog scaledFittingSize];
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
  type = [infoCopy type];
  if (type == 2)
  {
    supportedSizes = [infoCopy supportedSizes];
    v20 = MPArtworkRepresentationBestSizeMatchingSize(supportedSizes, v20, v22);
    v22 = v29;
  }

  else if (type == 1)
  {
    if ([infoCopy hasMaxSupportedSize])
    {
      [infoCopy maxSupportedSize];
      [(MPStoreArtworkDataSource *)self _clampImageSize:v20 toMaxSupportedSize:v22, v24, v25];
      v20 = v26;
      v22 = v27;
    }
  }

  else if (type)
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

- (id)_bestURLForCatalog:(id)catalog kind:(int64_t)kind size:(CGSize)size
{
  catalogCopy = catalog;
  [(MPStoreArtworkDataSource *)self bestAvailableSizeForCatalog:catalogCopy];
  v10 = v9;
  v11 = v8;
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v17 = 0;
    goto LABEL_21;
  }

  token = [catalogCopy token];
  v14 = token;
  if (kind == 1)
  {
    preferredVideoFormat = [catalogCopy preferredVideoFormat];
    if (preferredVideoFormat)
    {
      if (preferredVideoFormat != 1)
      {
        goto LABEL_14;
      }

      videoArtworkInfo = [v14 videoArtworkInfo];
      v19 = [videoArtworkInfo CRABSVideoURLMatchingSize:{v10, v11}];
    }

    else
    {
      videoArtworkInfo = [v14 videoArtworkInfo];
      v19 = [videoArtworkInfo HLSVideoURLForAspectRatio:v10 / v11];
    }

    v17 = v19;
    goto LABEL_19;
  }

  if (!kind)
  {
    artworkInfoType = [token artworkInfoType];
    if (artworkInfoType == 1)
    {
      videoArtworkInfo2 = [v14 videoArtworkInfo];
      videoArtworkInfo = [videoArtworkInfo2 previewFrameArtworkInfoMatchingAspectRatio:v10 / v11];

      goto LABEL_16;
    }

    if (!artworkInfoType)
    {
      videoArtworkInfo = [v14 imageArtworkInfo];
LABEL_16:
      cropStyle = [v14 cropStyle];
      format = [v14 format];
      v17 = [videoArtworkInfo artworkURLWithSize:cropStyle cropStyle:format format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v10, v11}];

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

- (id)sortedSupportedSizesForCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
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
  imageArtworkInfo = [token imageArtworkInfo];
  sizeInfo = [imageArtworkInfo sizeInfo];
  type = [sizeInfo type];
  if (type == 2)
  {
    supportedSizes = [sizeInfo supportedSizes];
  }

  else
  {
    if (type == 1)
    {
      if ([sizeInfo hasMaxSupportedSize])
      {
        [sizeInfo maxSupportedSize];
        [(MPStoreArtworkDataSource *)self _clampImageSize:v19 toMaxSupportedSize:v21, v26, v27];
        v19 = v28;
        v21 = v29;
      }
    }

    else if (type)
    {
      supportedSizes = 0;
      goto LABEL_17;
    }

    v30 = MEMORY[0x1E695DEC8];
    v31 = [MEMORY[0x1E696B098] valueWithCGSize:{v19, v21}];
    supportedSizes = [v30 arrayWithObject:v31];
  }

LABEL_17:

  return supportedSizes;
}

- (CGSize)bestAvailableSizeForCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  token = [catalogCopy token];
  artworkInfoType = [token artworkInfoType];
  if (artworkInfoType == 1)
  {
    [catalogCopy fittingSize];
    v14 = v13;
    [catalogCopy fittingSize];
    v16 = v14 / v15;
    preferredVideoFormat = [catalogCopy preferredVideoFormat];
    if (!preferredVideoFormat)
    {
      videoArtworkInfo = [token videoArtworkInfo];
      v22 = [videoArtworkInfo HLSVideoURLForAspectRatio:v16];

      if (!v22)
      {
        goto LABEL_9;
      }

      videoArtworkInfo2 = [token videoArtworkInfo];
      sizeInfo2 = [videoArtworkInfo2 previewFrameArtworkInfoMatchingAspectRatio:v16];

      sizeInfo = [sizeInfo2 sizeInfo];
      [(MPStoreArtworkDataSource *)self _bestSizeForImageSizeInfo:sizeInfo catalog:catalogCopy];
      v5 = v25;
      v6 = v26;

      goto LABEL_8;
    }

    if (preferredVideoFormat == 1)
    {
      videoArtworkInfo3 = [token videoArtworkInfo];
      sizeInfo2 = [videoArtworkInfo3 supportedSizesForCRABSVideoForAspectRatio:v16];

      [catalogCopy scaledFittingSize];
      ICStoreVideoArtworkInfoBestSizesForSize();
      goto LABEL_7;
    }
  }

  else if (!artworkInfoType)
  {
    imageArtworkInfo = [token imageArtworkInfo];
    sizeInfo2 = [imageArtworkInfo sizeInfo];

    [(MPStoreArtworkDataSource *)self _bestSizeForImageSizeInfo:sizeInfo2 catalog:catalogCopy];
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

- (id)requestForCatalog:(id)catalog kind:(int64_t)kind size:(CGSize)size
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [(MPStoreArtworkDataSource *)self _bestURLForCatalog:catalog kind:size.width size:size.height];
  if (!v6)
  {
    goto LABEL_7;
  }

  standardDefaults = [MEMORY[0x1E69E4400] standardDefaults];
  isLegacyStoreCacheBusterEnabled = [standardDefaults isLegacyStoreCacheBusterEnabled];

  if (isLegacyStoreCacheBusterEnabled)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"buster" value:uUIDString];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [v6 ic_URLByAppendingQueryItems:v12];

    v6 = v13;
  }

  if (kind == 1)
  {
    v14 = [MEMORY[0x1E696AF68] requestWithURL:v6];
    goto LABEL_9;
  }

  if (kind)
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

- (BOOL)areRepresentationsOfKind:(int64_t)kind availableForCatalog:(id)catalog
{
  token = [catalog token];
  v6 = token;
  if (kind == 1)
  {
    videoArtworkInfo = [token videoArtworkInfo];
  }

  else
  {
    if (kind)
    {
      v8 = 0;
      goto LABEL_7;
    }

    videoArtworkInfo = [token imageArtworkInfo];
  }

  v8 = videoArtworkInfo != 0;

LABEL_7:
  return v8;
}

- (void)getExportableArtworkPropertiesForCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  v7 = objc_alloc_init(MPExportableArtworkProperties);
  token = [catalogCopy token];
  imageArtworkInfo = [token imageArtworkInfo];
  responseArray = [imageArtworkInfo responseArray];

  if (responseArray)
  {
    responseArray2 = [imageArtworkInfo responseArray];
  }

  else
  {
    responseArray2 = [imageArtworkInfo responseDictionary];

    if (responseArray2)
    {
      v12 = MEMORY[0x1E695DEC8];
      responseDictionary = [imageArtworkInfo responseDictionary];
      responseArray2 = [v12 arrayWithObject:responseDictionary];
    }
  }

  [(MPExportableArtworkProperties *)v7 setArtworkTemplateItems:responseArray2];
  [catalogCopy fittingSize];
  v14 = [(MPStoreArtworkDataSource *)self _bestURLForCatalog:catalogCopy kind:0 size:?];
  absoluteString = [v14 absoluteString];
  [(MPExportableArtworkProperties *)v7 setResolvedURLString:absoluteString];

  artworkTemplateItems = [(MPExportableArtworkProperties *)v7 artworkTemplateItems];
  if (artworkTemplateItems)
  {

    goto LABEL_8;
  }

  resolvedURLString = [(MPExportableArtworkProperties *)v7 resolvedURLString];

  if (resolvedURLString)
  {
LABEL_8:
    v18 = 0;
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:4 userInfo:0];
  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v7, v18);
  }

LABEL_10:
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options
{
  catalogCopy = catalog;
  v55.receiver = self;
  v55.super_class = MPStoreArtworkDataSource;
  v9 = [(MPAbstractNetworkArtworkDataSource *)&v55 existingArtworkEffectResultForEffectType:type catalog:catalogCopy options:options];
  if (type != 4)
  {
    if (type != 1)
    {
      goto LABEL_40;
    }

    token = [catalogCopy token];
    artworkInfoType = [token artworkInfoType];
    v51 = token;
    v53 = v9;
    if (artworkInfoType == 1)
    {
      [catalogCopy fittingSize];
      v16 = v15;
      [catalogCopy fittingSize];
      v18 = v16 / v17;
      videoArtworkInfo = [token videoArtworkInfo];
      imageArtworkInfo = [videoArtworkInfo previewFrameArtworkInfoMatchingAspectRatio:v18];
    }

    else if (artworkInfoType)
    {
      imageArtworkInfo = 0;
    }

    else
    {
      imageArtworkInfo = [token imageArtworkInfo];
    }

    v25 = [imageArtworkInfo copyColorWithKind:*MEMORY[0x1E69E4220]];
    v26 = [imageArtworkInfo copyColorWithKind:*MEMORY[0x1E69E4228]];
    v27 = [imageArtworkInfo copyColorWithKind:*MEMORY[0x1E69E4230]];
    v28 = [imageArtworkInfo copyColorWithKind:*MEMORY[0x1E69E4238]];
    if (v25)
    {
      textGradient = [MEMORY[0x1E69DC888] colorWithCGColor:v25];
      if (v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
      textGradient = 0;
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
        if (textGradient || v30 || v31)
        {
          v9 = objc_alloc_init(MPMutableArtworkColorAnalysis);
          [(MPMutableArtworkColorAnalysis *)v9 setBackgroundColor:textGradient];
          -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v9, "setBackgroundColorLight:", [textGradient MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);
          [(MPMutableArtworkColorAnalysis *)v9 setPrimaryTextColor:v30];
          -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v9, "setPrimaryTextColorLight:", [v30 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);
          [(MPMutableArtworkColorAnalysis *)v9 setSecondaryTextColor:v31];
          [(MPMutableArtworkColorAnalysis *)v9 setSecondaryTextColorLight:[(MPArtworkGradientInfo *)v31 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]];
          [(MPMutableArtworkColorAnalysis *)v9 setTertiaryTextColor:v32];
          -[MPMutableArtworkColorAnalysis setTertiaryTextColorLight:](v9, "setTertiaryTextColorLight:", [v32 MP_isArtworkColorAnalyzerLightColorForAlgorithm:1]);

          token2 = v51;
        }

        else
        {
          v30 = 0;
          textGradient = 0;
          token2 = v51;
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

  token2 = [catalogCopy token];
  artworkInfoType2 = [token2 artworkInfoType];
  if (artworkInfoType2 == 1)
  {
    [catalogCopy fittingSize];
    v21 = v20;
    [catalogCopy fittingSize];
    v23 = v21 / v22;
    videoArtworkInfo2 = [token2 videoArtworkInfo];
    imageArtworkInfo = [videoArtworkInfo2 previewFrameArtworkInfoMatchingAspectRatio:v23];
  }

  else if (artworkInfoType2)
  {
    imageArtworkInfo = 0;
  }

  else
  {
    imageArtworkInfo = [token2 imageArtworkInfo];
  }

  textGradient = [imageArtworkInfo textGradient];
  imageTraits = [imageArtworkInfo imageTraits];
  if ([textGradient count])
  {
    v34 = MEMORY[0x1E69DC888];
    firstObject = [textGradient firstObject];
    v30 = [v34 colorWithCGColor:firstObject];
  }

  else
  {
    v30 = 0;
  }

  gradientInfo = [imageArtworkInfo gradientInfo];
  if (gradientInfo)
  {
    v37 = [MPArtworkGradientInfo alloc];
    v54 = v9;
    v38 = MEMORY[0x1E69DC888];
    gradientInfo2 = [imageArtworkInfo gradientInfo];
    v40 = [v38 colorWithCGColor:{objc_msgSend(gradientInfo2, "color")}];
    [imageArtworkInfo gradientInfo];
    v50 = catalogCopy;
    v52 = textGradient;
    v42 = v41 = token2;
    [v42 y1];
    v44 = v43;
    [imageArtworkInfo gradientInfo];
    v46 = v45 = imageTraits;
    [v46 y2];
    v31 = [(MPArtworkGradientInfo *)v37 initWithColor:v40 y1:v44 y2:v47];

    imageTraits = v45;
    token2 = v41;
    catalogCopy = v50;
    textGradient = v52;

    v9 = v54;
  }

  else
  {
    v31 = 0;
  }

  if (v30 || (imageTraits & 1) != 0 || v31)
  {
    v48 = [[MPArtworkImageAttachments alloc] initWithTextColor:v30 gradientInfo:v31 hasTitle:imageTraits & 1];
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