@interface LPApplePhotosMomentMetadata
- (BOOL)isEqual:(id)a3;
- (LPApplePhotosMomentMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPApplePhotosMomentMetadata

- (LPApplePhotosMomentMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = LPApplePhotosMomentMetadata;
  v5 = [(LPApplePhotosMomentMetadata *)&v18 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v5->_photoCount = [v4 decodeInt64ForKey:@"photoCount"];
    v5->_videoCount = [v4 decodeInt64ForKey:@"videoCount"];
    v5->_otherItemCount = [v4 decodeInt64ForKey:@"otherItemCount"];
    v8 = [v4 _lp_strictlyDecodeLPImageForKey:@"keyPhoto"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v8;

    v10 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"earliestAssetDate"];
    earliestAssetDate = v5->_earliestAssetDate;
    v5->_earliestAssetDate = v12;

    v14 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"latestAssetDate"];
    latestAssetDate = v5->_latestAssetDate;
    v5->_latestAssetDate = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 encodeInt64:self->_photoCount forKey:@"photoCount"];
  [v4 encodeInt64:self->_videoCount forKey:@"videoCount"];
  [v4 encodeInt64:self->_otherItemCount forKey:@"otherItemCount"];
  [v4 _lp_encodeObjectIfNotNil:self->_keyPhoto forKey:@"keyPhoto"];
  [v4 _lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
  [v4 _lp_encodeObjectIfNotNil:self->_earliestAssetDate forKey:@"earliestAssetDate"];
  [v4 _lp_encodeObjectIfNotNil:self->_latestAssetDate forKey:@"latestAssetDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPApplePhotosMomentMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPApplePhotosMomentMetadata *)self title];
    [(LPApplePhotosMomentMetadata *)v4 setTitle:v5];

    [(LPApplePhotosMomentMetadata *)v4 setPhotoCount:[(LPApplePhotosMomentMetadata *)self photoCount]];
    [(LPApplePhotosMomentMetadata *)v4 setVideoCount:[(LPApplePhotosMomentMetadata *)self videoCount]];
    [(LPApplePhotosMomentMetadata *)v4 setOtherItemCount:[(LPApplePhotosMomentMetadata *)self otherItemCount]];
    v6 = [(LPApplePhotosMomentMetadata *)self keyPhoto];
    [(LPApplePhotosMomentMetadata *)v4 setKeyPhoto:v6];

    v7 = [(LPApplePhotosMomentMetadata *)self expirationDate];
    [(LPApplePhotosMomentMetadata *)v4 setExpirationDate:v7];

    v8 = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
    [(LPApplePhotosMomentMetadata *)v4 setEarliestAssetDate:v8];

    v9 = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
    [(LPApplePhotosMomentMetadata *)v4 setLatestAssetDate:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPApplePhotosMomentMetadata;
  if ([(LPApplePhotosMomentMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:36];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  [v4 _populateProperties:v5 withPrimaryImage:v7];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__LPApplePhotosMomentMetadata_Transformers__presentationPropertiesForTransformer___block_invoke;
  aBlock[3] = &unk_1E7A35478;
  v8 = v5;
  v61 = v8;
  v62 = self;
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
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryLibrary(void)"];
    [v50 handleFailureInFunction:v51 file:@"LPApplePhotosTransformers.m" lineNumber:37 description:{@"%s", v63}];

    goto LABEL_32;
  }

  if (v63)
  {
    free(v63);
  }

  v10 = [(LPApplePhotosMomentMetadata *)self title];
  v11 = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
  v12 = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
  v58 = 0;
  v59 = 0;
  LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(v10, v11, v12, &v59, &v58);
  v57 = v59;
  v56 = v58;

  v13 = [(LPApplePhotosMomentMetadata *)self photoCount];
  v14 = [(LPApplePhotosMomentMetadata *)self videoCount];
  v15 = [(LPApplePhotosMomentMetadata *)self otherItemCount];
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
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *LPPLLocalizedCountDescription(NSUInteger, NSUInteger, NSUInteger, BOOL, BOOL)"}];
    [v52 handleFailureInFunction:v53 file:@"LPApplePhotosTransformers.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_32;
  }

  v17 = v16(v13, v14, v15, 1, 0);
  v18 = [(LPApplePhotosMomentMetadata *)self expirationDate];
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
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LPPXCMMStringForExpiryDate(NSDate *__strong)"];
    [v54 handleFailureInFunction:v55 file:@"LPApplePhotosTransformers.m" lineNumber:40 description:{@"%s", dlerror()}];

LABEL_32:
    __break(1u);
  }

  v20 = v19(v18);

  v21 = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  if (v21)
  {
    v22 = sizeClassAllowsMedia([v4 effectiveSizeClass]);

    if (v22)
    {
      v23 = [v8 captionBar];
      v24 = [v23 top];
      v25 = [v24 leading];
      [v25 setText:v17];

      v26 = [v8 captionBar];
      v27 = [v26 bottom];
      v28 = [v27 leading];
      [v28 setText:v20];

      v29 = [v8 captionBar];
      [v29 setTrailingAccessoryType:1];

      v30 = objc_alloc_init(LPCaptionBarPresentationProperties);
      [v8 setMediaTopCaptionBar:v30];

      v31 = [v8 mediaTopCaptionBar];
      v32 = [v31 top];
      v33 = [v32 leading];
      [v33 setText:v57];

      v34 = [v8 mediaTopCaptionBar];
      v35 = [v34 bottom];
      v36 = [v35 leading];
      [v36 setText:v56];
LABEL_24:

      goto LABEL_25;
    }
  }

  v37 = [v4 _rowConfigurationForStyle:{objc_msgSend(v8, "style")}];
  if ((v37 - 2) < 2)
  {
    v39 = [v8 captionBar];
    v40 = [v39 aboveTop];
    v41 = [v40 leading];
    [v41 setText:v57];

    v42 = [v8 captionBar];
    v43 = [v42 top];
    v44 = [v43 leading];
    [v44 setText:v17];

    v34 = [v8 captionBar];
    v35 = [v34 bottom];
    v36 = [v35 leading];
    [v36 setText:v20];
    goto LABEL_24;
  }

  if (v37 == 1)
  {
    v45 = [v8 captionBar];
    v46 = [v45 top];
    v47 = [v46 leading];
    [v47 setText:v57];

    v34 = [v8 captionBar];
    v35 = [v34 bottom];
    v36 = [v35 leading];
    [v36 setText:v56];
    goto LABEL_24;
  }

  if (!v37)
  {
    v34 = [v8 captionBar];
    v35 = [v34 top];
    v36 = [v35 leading];
    [v36 setText:v57];
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

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Photos: %@");
  v6 = [(LPApplePhotosMomentMetadata *)self title];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [(LPApplePhotosMomentMetadata *)self keyPhoto];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v4 = a3;
  v5 = [(LPApplePhotosMomentMetadata *)self title];
  v6 = [(LPApplePhotosMomentMetadata *)self earliestAssetDate];
  v7 = [(LPApplePhotosMomentMetadata *)self latestAssetDate];
  v12 = 0;
  v13 = 0;
  LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(v5, v6, v7, &v13, &v12);
  v8 = v13;
  v9 = v12;

  if (v9)
  {
    v10 = joinedByEmDash(v8, v9);
    [v4 setTitle:v10];
  }

  else
  {
    [v4 setTitle:v8];
  }

  v11 = [(LPApplePhotosMomentMetadata *)self keyPhoto];
  [v4 setImage:v11];
}

@end