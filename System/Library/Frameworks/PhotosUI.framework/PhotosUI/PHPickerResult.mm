@interface PHPickerResult
+ (BOOL)_validateBestCropRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (CGRect)_preferredContentsRectForTargetSize:(CGSize)size;
- (NSString)assetIdentifier;
- (PHPickerResult)initWithCoder:(id)coder;
- (id)_filePromiseURLForTypeIdentifier:(id)identifier;
- (id)_initWithItemProvider:(id)provider itemIdentifier:(id)identifier;
- (id)_initWithItemProvider:(id)provider itemIdentifier:(id)identifier isAssetResult:(BOOL)result metadata:(id)metadata;
- (unint64_t)hash;
- (void)_requestThumbnailImageURLForPreferredSize:(int64_t)size resultHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHPickerResult

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"PHPickerResultItemIdentifierKey"];
  [coderCopy encodeBool:self->__isAssetResult forKey:@"PHPickerResultIsAssetResultKey"];
  [coderCopy encodeObject:self->__metadata forKey:@"PHPickerResultMetadataKey"];
}

- (PHPickerResult)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v32 = coderCopy;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerResultMetadataKey"];
    v8 = [PUPhotosFileProviderItemProvider alloc];
    filePromiseURLs = [(_PHPickerResultMetadata *)v7 filePromiseURLs];
    sandboxExtensionTokens = [(_PHPickerResultMetadata *)v7 sandboxExtensionTokens];
    v11 = [(PUPhotosFileProviderItemProvider *)v8 initWithProgressURLs:filePromiseURLs progressURLSandboxExtensionTokens:sandboxExtensionTokens];

    suggestedName = [(_PHPickerResultMetadata *)v7 suggestedName];
    [(PUPhotosFileProviderItemProvider *)v11 setSuggestedName:suggestedName];

    v33 = v11;
    [(PUPhotosFileProviderItemProvider *)v11 set_copyToTemporaryDirectoryBeforeCallingOpenInPlaceCompletionHandler:[(_PHPickerResultMetadata *)v7 allowsItemProviderOpenInPlace]];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    typeIdentifiers = [(_PHPickerResultMetadata *)v7 typeIdentifiers];
    v14 = [typeIdentifiers countByEnumeratingWithState:&v35 objects:v40 count:16];
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
            objc_enumerationMutation(typeIdentifiers);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          filePromiseURLs2 = [(_PHPickerResultMetadata *)v7 filePromiseURLs];
          v20 = [filePromiseURLs2 objectForKeyedSubscript:v18];

          sandboxExtensionTokens2 = [(_PHPickerResultMetadata *)v7 sandboxExtensionTokens];
          v22 = [sandboxExtensionTokens2 objectForKeyedSubscript:v18];

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

        v15 = [typeIdentifiers countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v6 = v31;
    itemProvider = v31->_itemProvider;
    v31->_itemProvider = &v33->super;
    v25 = v33;

    coderCopy = v32;
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

- (id)_initWithItemProvider:(id)provider itemIdentifier:(id)identifier isAssetResult:(BOOL)result metadata:(id)metadata
{
  providerCopy = provider;
  identifierCopy = identifier;
  metadataCopy = metadata;
  if (providerCopy)
  {
    v14 = metadataCopy;
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
      objc_storeStrong(&v15->_itemProvider, provider);
      v16 = [identifierCopy copy];
      itemIdentifier = v15->_itemIdentifier;
      v15->_itemIdentifier = v16;

      v15->__isAssetResult = result;
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

- (id)_initWithItemProvider:(id)provider itemIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  if (providerCopy)
  {
    v8 = identifierCopy;
    v9 = [(PHPickerResult *)self _initWithItemProvider:providerCopy itemIdentifier:identifierCopy isAssetResult:1 metadata:0];

    return v9;
  }

  else
  {
    v11 = _PFAssertFailHandler();
    return [(PHPickerResult *)v11 _filePromiseURLForTypeIdentifier:v12, v13];
  }
}

- (id)_filePromiseURLForTypeIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    _PFAssertFailHandler();
  }

  v5 = identifierCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  _metadata = [(PHPickerResult *)self _metadata];
  typeIdentifiers = [_metadata typeIdentifiers];

  v8 = [typeIdentifiers countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v28 = typeIdentifiers;
    v10 = *v31;
    v29 = v5;
    v26 = *v31;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(typeIdentifiers);
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
          _metadata2 = [(PHPickerResult *)selfCopy _metadata];
          filePromiseURLs = [_metadata2 filePromiseURLs];
          v19 = [filePromiseURLs objectForKeyedSubscript:v12];

          _metadata3 = [(PHPickerResult *)selfCopy _metadata];
          sandboxExtensionTokens = [_metadata3 sandboxExtensionTokens];
          v22 = [sandboxExtensionTokens objectForKeyedSubscript:v12];

          if (v19 && v22)
          {
            v23 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v19 sandboxExtensionToken:v22 consume:1];

            typeIdentifiers = v28;
            v5 = v29;
            goto LABEL_19;
          }

          typeIdentifiers = v28;
          v5 = v29;
          v10 = v26;
        }
      }

      v9 = [typeIdentifiers countByEnumeratingWithState:&v30 objects:v34 count:16];
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

- (void)_requestThumbnailImageURLForPreferredSize:(int64_t)size resultHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
    if (size == 1)
    {
      v8 = @"com.apple.private.photos.thumbnail.low";
    }

    else
    {
      v8 = @"com.apple.private.photos.thumbnail.standard";
    }

    itemProvider = [(PHPickerResult *)self itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PHPickerResult__requestThumbnailImageURLForPreferredSize_resultHandler___block_invoke;
    v13[3] = &unk_1E83F7888;
    v14 = v7;
    v10 = v7;
    v11 = [itemProvider loadFileRepresentationForTypeIdentifier:v8 completionHandler:v13];
  }

  else
  {
    v12 = _PFAssertFailHandler();
    __74__PHPickerResult__requestThumbnailImageURLForPreferredSize_resultHandler___block_invoke(v12);
  }
}

- (CGRect)_preferredContentsRectForTargetSize:(CGSize)size
{
  v4 = 1.0;
  if (size.width != 0.0 && size.height != 0.0)
  {
    v5 = size.width == *MEMORY[0x1E69BDDB0] && size.height == *(MEMORY[0x1E69BDDB0] + 8);
    v6 = fabs(size.width / size.height);
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
  _metadata = [(PHPickerResult *)self _metadata];
  pixelWidth = [_metadata pixelWidth];
  _metadata2 = [(PHPickerResult *)self _metadata];
  pixelHeight = [_metadata2 pixelHeight];
  _metadata3 = [(PHPickerResult *)self _metadata];
  [_metadata3 preferredCropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _metadata4 = [(PHPickerResult *)self _metadata];
  [_metadata4 acceptableCropRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  _metadata5 = [(PHPickerResult *)self _metadata];
  [_metadata5 normalizedFaceAreaRect];
  [v7 bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:pixelWidth sourcePixelWidth:pixelHeight sourcePixelHeight:v47 sourcePreferredCropRectNormalized:v14 sourceAcceptableCropRectNormalized:v16 sourceFaceAreaRectNormalized:{v18, v20, v23, v25, v27, v29, v31, v32, v33, v34}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
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

+ (BOOL)_validateBestCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(rect))
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