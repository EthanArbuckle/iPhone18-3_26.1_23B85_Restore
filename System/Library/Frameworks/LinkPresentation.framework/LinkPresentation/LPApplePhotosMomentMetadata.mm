@interface LPApplePhotosMomentMetadata
- (BOOL)isEqual:(id)equal;
- (LPApplePhotosMomentMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPApplePhotosMomentMetadata

- (LPApplePhotosMomentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = LPApplePhotosMomentMetadata;
  v5 = [(LPApplePhotosMomentMetadata *)&v18 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v5->_photoCount = [coderCopy decodeInt64ForKey:@"photoCount"];
    v5->_videoCount = [coderCopy decodeInt64ForKey:@"videoCount"];
    v5->_otherItemCount = [coderCopy decodeInt64ForKey:@"otherItemCount"];
    v8 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"keyPhoto"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v8;

    v10 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"earliestAssetDate"];
    earliestAssetDate = v5->_earliestAssetDate;
    v5->_earliestAssetDate = v12;

    v14 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"latestAssetDate"];
    latestAssetDate = v5->_latestAssetDate;
    v5->_latestAssetDate = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy encodeInt64:self->_photoCount forKey:@"photoCount"];
  [coderCopy encodeInt64:self->_videoCount forKey:@"videoCount"];
  [coderCopy encodeInt64:self->_otherItemCount forKey:@"otherItemCount"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_keyPhoto forKey:@"keyPhoto"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_earliestAssetDate forKey:@"earliestAssetDate"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_latestAssetDate forKey:@"latestAssetDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPApplePhotosMomentMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPApplePhotosMomentMetadata *)self title];
    [(LPApplePhotosMomentMetadata *)v4 setTitle:title];

    [(LPApplePhotosMomentMetadata *)v4 setPhotoCount:[(LPApplePhotosMomentMetadata *)self photoCount]];
    [(LPApplePhotosMomentMetadata *)v4 setVideoCount:[(LPApplePhotosMomentMetadata *)self videoCount]];
    [(LPApplePhotosMomentMetadata *)v4 setOtherItemCount:[(LPApplePhotosMomentMetadata *)self otherItemCount]];
    keyPhoto = [(LPApplePhotosMomentMetadata *)self keyPhoto];
    [(LPApplePhotosMomentMetadata *)v4 setKeyPhoto:keyPhoto];

    expirationDate = [(LPApplePhotosMomentMetadata *)self expirationDate];
    [(LPApplePhotosMomentMetadata *)v4 setExpirationDate:expirationDate];

    earliestAssetDate = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
    [(LPApplePhotosMomentMetadata *)v4 setEarliestAssetDate:earliestAssetDate];

    latestAssetDate = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
    [(LPApplePhotosMomentMetadata *)v4 setLatestAssetDate:latestAssetDate];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPApplePhotosMomentMetadata;
  if ([(LPApplePhotosMomentMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_title) & 1) != 0 && v6[3] == self->_photoCount && v6[4] == self->_videoCount && v6[5] == self->_otherItemCount && objectsAreEqual_0(v6[6], self->_keyPhoto) && objectsAreEqual_0(v6[7], self->_expirationDate) && objectsAreEqual_0(v6[8], self->_earliestAssetDate))
      {
        v5 = objectsAreEqual_0(v6[9], self->_latestAssetDate);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  v72 = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:36];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  keyPhoto = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  [transformerCopy _populateProperties:v5 withPrimaryImage:keyPhoto];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__LPApplePhotosMomentMetadata_Transformers__presentationPropertiesForTransformer___block_invoke;
  aBlock[3] = &unk_1E7A35478;
  v8 = v5;
  v61 = v8;
  selfCopy = self;
  v9 = _Block_copy(aBlock);
  if (TCCAccessPreflight() && !+[LPTestingOverrides forceIgnoreAllTCCChecks])
  {
    v9[2](v9);
    v38 = v8;
    goto LABEL_26;
  }

  v63 = 0;
  if (!PhotoLibraryLibraryCore_frameworkLibrary)
  {
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __PhotoLibraryLibraryCore_block_invoke;
    v67 = &__block_descriptor_40_e5_v8__0l;
    v68 = &v63;
    v69 = xmmword_1E7A37738;
    v70 = 0;
    PhotoLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoLibraryLibraryCore_frameworkLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryLibrary(void)"];
    [currentHandler handleFailureInFunction:v51 file:@"LPApplePhotosTransformers.m" lineNumber:37 description:{@"%s", v63}];

    goto LABEL_32;
  }

  if (v63)
  {
    free(v63);
  }

  title = [(LPApplePhotosMomentMetadata *)self title];
  earliestAssetDate = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
  latestAssetDate = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
  v58 = 0;
  v59 = 0;
  LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(title, earliestAssetDate, latestAssetDate, &v59, &v58);
  v57 = v59;
  v56 = v58;

  photoCount = [(LPApplePhotosMomentMetadata *)self photoCount];
  videoCount = [(LPApplePhotosMomentMetadata *)self videoCount];
  otherItemCount = [(LPApplePhotosMomentMetadata *)self otherItemCount];
  *&v69 = 0;
  *(&v69 + 1) = &v69;
  v70 = 0x2020000000;
  v16 = getPLLocalizedCountDescriptionSymbolLoc_ptr;
  v71 = getPLLocalizedCountDescriptionSymbolLoc_ptr;
  if (!getPLLocalizedCountDescriptionSymbolLoc_ptr)
  {
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __getPLLocalizedCountDescriptionSymbolLoc_block_invoke;
    v67 = &unk_1E7A35518;
    v68 = &v69;
    __getPLLocalizedCountDescriptionSymbolLoc_block_invoke(&v64);
    v16 = *(*(&v69 + 1) + 24);
  }

  _Block_object_dispose(&v69, 8);
  if (!v16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *LPPLLocalizedCountDescription(NSUInteger, NSUInteger, NSUInteger, BOOL, BOOL)"}];
    [currentHandler2 handleFailureInFunction:v53 file:@"LPApplePhotosTransformers.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_32;
  }

  v17 = v16(photoCount, videoCount, otherItemCount, 1, 0);
  expirationDate = [(LPApplePhotosMomentMetadata *)self expirationDate];
  *&v69 = 0;
  *(&v69 + 1) = &v69;
  v70 = 0x2020000000;
  v19 = getPXCMMStringForExpiryDateSymbolLoc_ptr;
  v71 = getPXCMMStringForExpiryDateSymbolLoc_ptr;
  if (!getPXCMMStringForExpiryDateSymbolLoc_ptr)
  {
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __getPXCMMStringForExpiryDateSymbolLoc_block_invoke;
    v67 = &unk_1E7A35518;
    v68 = &v69;
    __getPXCMMStringForExpiryDateSymbolLoc_block_invoke(&v64);
    v19 = *(*(&v69 + 1) + 24);
  }

  _Block_object_dispose(&v69, 8);
  if (!v19)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LPPXCMMStringForExpiryDate(NSDate *__strong)"];
    [currentHandler3 handleFailureInFunction:v55 file:@"LPApplePhotosTransformers.m" lineNumber:40 description:{@"%s", dlerror()}];

LABEL_32:
    __break(1u);
  }

  v20 = v19(expirationDate);

  keyPhoto2 = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  if (keyPhoto2)
  {
    v22 = sizeClassAllowsMedia([transformerCopy effectiveSizeClass]);

    if (v22)
    {
      captionBar = [v8 captionBar];
      v24 = [captionBar top];
      leading = [v24 leading];
      [leading setText:v17];

      captionBar2 = [v8 captionBar];
      bottom = [captionBar2 bottom];
      leading2 = [bottom leading];
      [leading2 setText:v20];

      captionBar3 = [v8 captionBar];
      [captionBar3 setTrailingAccessoryType:1];

      v30 = objc_alloc_init(LPCaptionBarPresentationProperties);
      [v8 setMediaTopCaptionBar:v30];

      mediaTopCaptionBar = [v8 mediaTopCaptionBar];
      v32 = [mediaTopCaptionBar top];
      leading3 = [v32 leading];
      [leading3 setText:v57];

      mediaTopCaptionBar2 = [v8 mediaTopCaptionBar];
      bottom2 = [mediaTopCaptionBar2 bottom];
      leading4 = [bottom2 leading];
      [leading4 setText:v56];
LABEL_24:

      goto LABEL_25;
    }
  }

  v37 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v8, "style")}];
  if ((v37 - 2) < 2)
  {
    captionBar4 = [v8 captionBar];
    aboveTop = [captionBar4 aboveTop];
    leading5 = [aboveTop leading];
    [leading5 setText:v57];

    captionBar5 = [v8 captionBar];
    v43 = [captionBar5 top];
    leading6 = [v43 leading];
    [leading6 setText:v17];

    mediaTopCaptionBar2 = [v8 captionBar];
    bottom2 = [mediaTopCaptionBar2 bottom];
    leading4 = [bottom2 leading];
    [leading4 setText:v20];
    goto LABEL_24;
  }

  if (v37 == 1)
  {
    captionBar6 = [v8 captionBar];
    v46 = [captionBar6 top];
    leading7 = [v46 leading];
    [leading7 setText:v57];

    mediaTopCaptionBar2 = [v8 captionBar];
    bottom2 = [mediaTopCaptionBar2 bottom];
    leading4 = [bottom2 leading];
    [leading4 setText:v56];
    goto LABEL_24;
  }

  if (!v37)
  {
    mediaTopCaptionBar2 = [v8 captionBar];
    bottom2 = [mediaTopCaptionBar2 top];
    leading4 = [bottom2 leading];
    [leading4 setText:v57];
    goto LABEL_24;
  }

LABEL_25:
  v48 = v8;

LABEL_26:

  return v8;
}

void __82__LPApplePhotosMomentMetadata_Transformers__presentationPropertiesForTransformer___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 40) title];
  v2 = [*(a1 + 32) captionBar];
  v3 = [v2 top];
  v4 = [v3 leading];
  [v4 setText:v8];

  v9 = LPLocalizedString(@"Photos");
  v5 = [*(a1 + 32) captionBar];
  v6 = [v5 bottom];
  v7 = [v6 leading];
  [v7 setText:v9];
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Photos: %@");
  title = [(LPApplePhotosMomentMetadata *)self title];
  v7 = [v4 localizedStringWithFormat:v5, title];

  return v7;
}

- (id)previewImageForTransformer:(id)transformer
{
  keyPhoto = [(LPApplePhotosMomentMetadata *)self keyPhoto];

  return keyPhoto;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  title = [(LPApplePhotosMomentMetadata *)self title];
  earliestAssetDate = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
  latestAssetDate = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
  v12 = 0;
  v13 = 0;
  LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(title, earliestAssetDate, latestAssetDate, &v13, &v12);
  v8 = v13;
  v9 = v12;

  if (v9)
  {
    v10 = joinedByEmDash(v8, v9);
    [compatibilityCopy setTitle:v10];
  }

  else
  {
    [compatibilityCopy setTitle:v8];
  }

  keyPhoto = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  [compatibilityCopy setImage:keyPhoto];
}

@end