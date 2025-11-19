@interface PHPickerResult
+ (BOOL)_validateBestCropRect:(CGRect)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)_preferredContentsRectForTargetSize:(CGSize)a3;
- (NSString)assetIdentifier;
- (PHPickerResult)initWithCoder:(id)a3;
- (id)_filePromiseURLForTypeIdentifier:(id)a3;
- (id)_initWithItemProvider:(id)a3 itemIdentifier:(id)a4;
- (id)_initWithItemProvider:(id)a3 itemIdentifier:(id)a4 isAssetResult:(BOOL)a5 metadata:(id)a6;
- (unint64_t)hash;
- (void)_requestThumbnailImageURLForPreferredSize:(int64_t)a3 resultHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHPickerResult

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"PHPickerResultItemIdentifierKey"];
  [v5 encodeBool:self->__isAssetResult forKey:@"PHPickerResultIsAssetResultKey"];
  [v5 encodeObject:self->__metadata forKey:@"PHPickerResultMetadataKey"];
}

- (PHPickerResult)initWithCoder:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PHPickerResult;
  v5 = [(PHPickerResult *)&v39 init];
  v6 = v5;
  if (v5)
  {
    v31 = v5;
    if (initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, &__block_literal_global_751);
    }

    v32 = v4;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataKey"];
    v8 = [PUPhotosFileProviderItemProvider alloc];
    v9 = [(_PHPickerResultMetadata *)v7 filePromiseURLs];
    v10 = [(_PHPickerResultMetadata *)v7 sandboxExtensionTokens];
    v11 = [(PUPhotosFileProviderItemProvider *)v8 initWithProgressURLs:v9 progressURLSandboxExtensionTokens:v10];

    v12 = [(_PHPickerResultMetadata *)v7 suggestedName];
    [(PUPhotosFileProviderItemProvider *)v11 setSuggestedName:v12];

    v33 = v11;
    [(PUPhotosFileProviderItemProvider *)v11 set_copyToTemporaryDirectoryBeforeCallingOpenInPlaceCompletionHandler:[(_PHPickerResultMetadata *)v7 allowsItemProviderOpenInPlace]];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [(_PHPickerResultMetadata *)v7 typeIdentifiers];
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [(_PHPickerResultMetadata *)v7 filePromiseURLs];
          v20 = [v19 objectForKeyedSubscript:v18];

          v21 = [(_PHPickerResultMetadata *)v7 sandboxExtensionTokens];
          v22 = [v21 objectForKeyedSubscript:v18];

          if (v20)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __32__PHPickerResult_initWithCoder___block_invoke_2;
            v34[3] = &unk_1E83F78D8;
            v34[4] = v20;
            v34[5] = v22;
            [(PUPhotosFileProviderItemProvider *)v33 registerFileRepresentationForTypeIdentifier:v18 fileOptions:0 visibility:3 loadHandler:v34];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v6 = v31;
    itemProvider = v31->_itemProvider;
    v31->_itemProvider = &v33->super;
    v25 = v33;

    v4 = v32;
    v26 = [v32 decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultItemIdentifierKey"];
    itemIdentifier = v31->_itemIdentifier;
    v31->_itemIdentifier = v26;

    v31->__isAssetResult = [v32 decodeBoolForKey:@"PHPickerResultIsAssetResultKey"];
    metadata = v31->__metadata;
    v31->__metadata = v7;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __32__PHPickerResult_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = initWithCoder__queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PHPickerResult_initWithCoder___block_invoke_3;
  block[3] = &unk_1E83F78B0;
  v8 = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  return 0;
}

void __32__PHPickerResult_initWithCoder___block_invoke_3(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:a1[4] sandboxExtensionToken:a1[5] consume:1];
  (*(a1[6] + 16))();
}

void __32__PHPickerResult_initWithCoder___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.photos.picker.results", v0);
  v2 = initWithCoder__queue;
  initWithCoder__queue = v1;
}

- (id)_initWithItemProvider:(id)a3 itemIdentifier:(id)a4 isAssetResult:(BOOL)a5 metadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    v14 = v13;
    v25.receiver = self;
    v25.super_class = PHPickerResult;
    v15 = [(PHPickerResult *)&v25 init];
    if (!v15)
    {
LABEL_5:

      return v15;
    }

    if (([(PHPickerResult *)v15 isMemberOfClass:objc_opt_class()]& 1) != 0)
    {
      objc_storeStrong(&v15->_itemProvider, a3);
      v16 = [v12 copy];
      itemIdentifier = v15->_itemIdentifier;
      v15->_itemIdentifier = v16;

      v15->__isAssetResult = a5;
      v18 = [v14 copy];
      metadata = v15->__metadata;
      v15->__metadata = v18;

      goto LABEL_5;
    }
  }

  else
  {
    _PFAssertFailHandler();
  }

  v21 = _PFAssertFailHandler();
  return [(PHPickerResult *)v21 _initWithItemProvider:v22 itemIdentifier:v23, v24];
}

- (id)_initWithItemProvider:(id)a3 itemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = [(PHPickerResult *)self _initWithItemProvider:v6 itemIdentifier:v7 isAssetResult:1 metadata:0];

    return v9;
  }

  else
  {
    v11 = _PFAssertFailHandler();
    return [(PHPickerResult *)v11 _filePromiseURLForTypeIdentifier:v12, v13];
  }
}

- (id)_filePromiseURLForTypeIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
  }

  v5 = v4;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(PHPickerResult *)self _metadata];
  v7 = [v6 typeIdentifiers];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v27 = self;
    v28 = v7;
    v10 = *v31;
    v29 = v5;
    v26 = *v31;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
        v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:v12];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && [v14 conformsToType:v13])
        {
          v17 = [(PHPickerResult *)v27 _metadata];
          v18 = [v17 filePromiseURLs];
          v19 = [v18 objectForKeyedSubscript:v12];

          v20 = [(PHPickerResult *)v27 _metadata];
          v21 = [v20 sandboxExtensionTokens];
          v22 = [v21 objectForKeyedSubscript:v12];

          if (v19 && v22)
          {
            v23 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v19 sandboxExtensionToken:v22 consume:1];

            v7 = v28;
            v5 = v29;
            goto LABEL_19;
          }

          v7 = v28;
          v5 = v29;
          v10 = v26;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_19:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)_requestThumbnailImageURLForPreferredSize:(int64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    if (a3 == 1)
    {
      v8 = @"com.apple.private.photos.thumbnail.low";
    }

    else
    {
      v8 = @"com.apple.private.photos.thumbnail.standard";
    }

    v9 = [(PHPickerResult *)self itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PHPickerResult__requestThumbnailImageURLForPreferredSize_resultHandler___block_invoke;
    v13[3] = &unk_1E83F7888;
    v14 = v7;
    v10 = v7;
    v11 = [v9 loadFileRepresentationForTypeIdentifier:v8 completionHandler:v13];
  }

  else
  {
    v12 = _PFAssertFailHandler();
    __74__PHPickerResult__requestThumbnailImageURLForPreferredSize_resultHandler___block_invoke(v12);
  }
}

- (CGRect)_preferredContentsRectForTargetSize:(CGSize)a3
{
  v4 = 1.0;
  if (a3.width != 0.0 && a3.height != 0.0)
  {
    v5 = a3.width == *MEMORY[0x1E69BDDB0] && a3.height == *(MEMORY[0x1E69BDDB0] + 8);
    v6 = fabs(a3.width / a3.height);
    if (v5)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = v6;
    }
  }

  v47 = v4;
  v7 = MEMORY[0x1E69C06A0];
  v8 = [(PHPickerResult *)self _metadata];
  v9 = [v8 pixelWidth];
  v10 = [(PHPickerResult *)self _metadata];
  v11 = [v10 pixelHeight];
  v12 = [(PHPickerResult *)self _metadata];
  [v12 preferredCropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PHPickerResult *)self _metadata];
  [v21 acceptableCropRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(PHPickerResult *)self _metadata];
  [v30 normalizedFaceAreaRect];
  [v7 bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:v9 sourcePixelWidth:v11 sourcePixelHeight:v47 sourcePreferredCropRectNormalized:v14 sourceAcceptableCropRectNormalized:v16 sourceFaceAreaRectNormalized:{v18, v20, v23, v25, v27, v29, v31, v32, v33, v34}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [PHPickerResult _validateBestCropRect:v36, v38, v40, v42];
  v43 = v36;
  v44 = v38;
  v45 = v40;
  v46 = v42;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (NSString)assetIdentifier
{
  if (self->__isAssetResult)
  {
    return self->_itemIdentifier;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v3 = [(NSItemProvider *)self->_itemProvider hash];
  v4 = [(NSString *)self->_itemIdentifier hash];
  v5 = self->__isAssetResult - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return [(_PHPickerResultMetadata *)self->__metadata hash]- v5 + 32 * v5 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
LABEL_17:

    return v11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      if ([(NSItemProvider *)self->_itemProvider isEqual:v5->_itemProvider])
      {
        itemIdentifier = v5->_itemIdentifier;
        v8 = self->_itemIdentifier;
        v9 = v8;
        if (v8 == itemIdentifier)
        {
        }

        else
        {
          v10 = [(NSString *)v8 isEqual:itemIdentifier];

          if (!v10)
          {
            goto LABEL_15;
          }
        }

        if (self->__isAssetResult == v5->__isAssetResult)
        {
          metadata = self->__metadata;
          v13 = v5->__metadata;
          v14 = metadata;
          v15 = v14;
          if (v14 == v13)
          {
            v11 = 1;
          }

          else
          {
            v11 = [(_PHPickerResultMetadata *)v14 isEqual:v13];
          }

          goto LABEL_16;
        }
      }

LABEL_15:
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v17 = objc_opt_class();
    NSStringFromClass(v17);
    objc_claimAutoreleasedReturnValue();
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v19 = _PFAssertFailHandler();
  return [(PHPickerResult *)v19 init];
}

+ (BOOL)_validateBestCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3))
  {
    [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&x, *&y, *&width, *&height];
    _PFAssertFailHandler();
  }

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 1.0;
  v19.size.height = 1.0;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v7 = CGRectContainsRect(v19, v20);
  v8 = PLPickerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&x, *&y, *&width, *&height];
    v10 = v9;
    v11 = @"is not";
    if (v7)
    {
      v11 = @"is";
    }

    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ contained in the unit rect.", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

@end