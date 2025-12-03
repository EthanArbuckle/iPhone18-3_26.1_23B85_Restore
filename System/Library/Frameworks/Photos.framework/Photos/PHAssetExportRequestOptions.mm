@interface PHAssetExportRequestOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssetExportRequestOptions:(id)options;
- (OS_dispatch_queue)resultHandlerQueue;
- (id)description;
@end

@implementation PHAssetExportRequestOptions

- (BOOL)isEqualToAssetExportRequestOptions:(id)options
{
  optionsCopy = options;
  includeAllAssetResources = [(PHAssetExportRequestOptions *)self includeAllAssetResources];
  if (includeAllAssetResources == [optionsCopy includeAllAssetResources]
    && (v6 = -[PHAssetExportRequestOptions variant](self, "variant"), v6 == [optionsCopy variant])
    && (v7 = -[PHAssetExportRequestOptions treatLivePhotoAsStill](self, "treatLivePhotoAsStill"), v7 == [optionsCopy treatLivePhotoAsStill])
    && (v8 = -[PHAssetExportRequestOptions flattenSlomoVideos](self, "flattenSlomoVideos"), v8 == [optionsCopy flattenSlomoVideos])
    && (v9 = -[PHAssetExportRequestOptions dontAllowRAW](self, "dontAllowRAW"), v9 == [optionsCopy dontAllowRAW])
    && (v10 = -[PHAssetExportRequestOptions shouldStripLocation](self, "shouldStripLocation"), v10 == [optionsCopy shouldStripLocation])
    && (v11 = -[PHAssetExportRequestOptions shouldStripCaption](self, "shouldStripCaption"), v11 == [optionsCopy shouldStripCaption])
    && (v12 = -[PHAssetExportRequestOptions shouldStripAccessibilityDescription](self, "shouldStripAccessibilityDescription"), v12 == [optionsCopy shouldStripAccessibilityDescription])
    && ((-[PHAssetExportRequestOptions videoExportPreset](self, "videoExportPreset"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13) || (-[PHAssetExportRequestOptions videoExportPreset](self, "videoExportPreset"), v14 = objc_claimAutoreleasedReturnValue(), [optionsCopy videoExportPreset], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
    && ((-[PHAssetExportRequestOptions videoExportFileType](self, "videoExportFileType"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17) || (-[PHAssetExportRequestOptions videoExportFileType](self, "videoExportFileType"), v18 = objc_claimAutoreleasedReturnValue(), [optionsCopy videoExportFileType], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, v18, v20))
    && (v21 = -[PHAssetExportRequestOptions disableMetadataCorrections](self, "disableMetadataCorrections"), v21 == [optionsCopy disableMetadataCorrections])
    && (v22 = -[PHAssetExportRequestOptions shouldExportUnmodifiedOriginalResources](self, "shouldExportUnmodifiedOriginalResources"), v22 == [optionsCopy shouldExportUnmodifiedOriginalResources])
    && (v23 = -[PHAssetExportRequestOptions shouldBundleComplexAssetResources](self, "shouldBundleComplexAssetResources"), v23 == [optionsCopy shouldBundleComplexAssetResources])
    && ((-[PHAssetExportRequestOptions customFilenameBase](self, "customFilenameBase"), v24 = objc_claimAutoreleasedReturnValue(), v24, !v24) || (-[PHAssetExportRequestOptions customFilenameBase](self, "customFilenameBase"), v25 = objc_claimAutoreleasedReturnValue(), [optionsCopy customFilenameBase], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqualToString:", v26), v26, v25, v27))
    && (-[PHAssetExportRequestOptions resultHandlerQueue](self, "resultHandlerQueue"), v28 = objc_claimAutoreleasedReturnValue(), [optionsCopy resultHandlerQueue], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v28 == v29)
    && (v30 = -[PHAssetExportRequestOptions locationComparisonStrategy](self, "locationComparisonStrategy"), v30 == [optionsCopy locationComparisonStrategy])
    && (v31 = -[PHAssetExportRequestOptions forceDateTimeMetadataBaking](self, "forceDateTimeMetadataBaking"), v31 == [optionsCopy forceDateTimeMetadataBaking])
    && (v32 = -[PHAssetExportRequestOptions forceLocationMetadataBaking](self, "forceLocationMetadataBaking"), v32 == [optionsCopy forceLocationMetadataBaking])
    && (v33 = -[PHAssetExportRequestOptions forceCaptionMetadataBaking](self, "forceCaptionMetadataBaking"), v33 == [optionsCopy forceCaptionMetadataBaking])
    && (v34 = -[PHAssetExportRequestOptions forceAccessibilityDescriptionMetadataBaking](self, "forceAccessibilityDescriptionMetadataBaking"), v34 == [optionsCopy forceAccessibilityDescriptionMetadataBaking]))
  {
    disableUpdatingFileCreationDatesOnExportedFileURLs = [(PHAssetExportRequestOptions *)self disableUpdatingFileCreationDatesOnExportedFileURLs];
    v35 = disableUpdatingFileCreationDatesOnExportedFileURLs ^ [optionsCopy disableUpdatingFileCreationDatesOnExportedFileURLs] ^ 1;
  }

  else
  {
    LOBYTE(v35) = 0;
  }

  return v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PHAssetExportRequestOptions *)self isEqualToAssetExportRequestOptions:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (OS_dispatch_queue)resultHandlerQueue
{
  resultHandlerQueue = self->_resultHandlerQueue;
  if (resultHandlerQueue)
  {
    v3 = resultHandlerQueue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  variant = self->_variant;
  if (variant > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E75A3CE8[variant];
  }

  return [v3 stringWithFormat:@"<%@: %p, variant: %@, livePhotoAsStill: %d, allowRaw: %d, flattenSlomo: %d, stripLocation: %d, stripCaption: %d, stripAXDescription: %d, assetBundle: %d, disableMetadataCorrections: %d, unmodifiedOriginals: %d>", v4, self, v6, self->_treatLivePhotoAsStill, !self->_dontAllowRAW, self->_flattenSlomoVideos, self->_shouldStripLocation, self->_shouldStripCaption, self->_shouldStripAccessibilityDescription, self->_includeAllAssetResources, self->_disableMetadataCorrections, self->_shouldExportUnmodifiedOriginalResources];
}

@end