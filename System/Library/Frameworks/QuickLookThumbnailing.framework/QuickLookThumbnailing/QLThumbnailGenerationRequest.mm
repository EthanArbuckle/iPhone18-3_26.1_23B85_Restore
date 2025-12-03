@interface QLThumbnailGenerationRequest
+ (QLThumbnailGenerationRequest)requestWithThumbnailRequest:(id)request;
+ (id)_basicFileIdentifierForURL:(id)l error:(id *)error;
+ (id)_fileProviderFileIdentifierForFPItem:(id)item;
+ (id)customExtensionCommunicationEncodedClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFileBased;
- (BOOL)isUbiquitous;
- (BOOL)isValid;
- (BOOL)prepareForSending;
- (BOOL)provideGenericIcon;
- (BOOL)provideLowQualityThumbnail;
- (BOOL)resultShouldBeSavedToDisk;
- (CGSize)size;
- (NSString)contentTypeUTI;
- (NSURL)fileURL;
- (QLThumbnailGenerationRequest)initWithCoder:(id)coder;
- (QLThumbnailGenerationRequest)initWithData:(id)data contentType:(id)type size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types;
- (QLThumbnailGenerationRequest)initWithFPItem:(id)item size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types;
- (QLThumbnailGenerationRequest)initWithFileAtURL:(NSURL *)url size:(CGSize)size scale:(CGFloat)scale representationTypes:(QLThumbnailGenerationRequestRepresentationTypes)representationTypes;
- (QLThumbnailGenerationRequest)initWithSearchResultIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier contentType:(id)type size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types;
- (UTType)contentType;
- (float)maximumPixelSize;
- (id)_stateDescription;
- (id)copyWithSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)equivalentFPItemRequestWithItem:(id)item representationTypes:(unint64_t)types;
- (id)fileIdentifier;
- (int64_t)compare:(id)compare;
- (int64_t)requestedMostRepresentativeType;
- (unint64_t)externalThumbnailGeneratorDataHash;
- (unint64_t)hash;
- (void)contentType;
- (void)encodeWithCoder:(id)coder;
- (void)markDidBegin;
- (void)prepareForSending;
- (void)setContentType:(UTType *)contentType;
- (void)setContentTypeUTI:(id)i;
- (void)setFileURL:(id)l;
- (void)setSaveURL:(id)l;
- (void)setSaveURLContentType:(id)type;
@end

@implementation QLThumbnailGenerationRequest

- (BOOL)prepareForSending
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (!self->_item && ![(QLThumbnailGenerationRequest *)self isDataBased])
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy_;
    v65 = __Block_byref_object_dispose_;
    v66 = 0;
    v58 = 0;
    v59[0] = &v58;
    v59[1] = 0x3032000000;
    v59[2] = __Block_byref_object_copy_;
    v59[3] = __Block_byref_object_dispose_;
    v60 = 0;
    fileURL = [(QLThumbnailGenerationRequest *)self fileURL];
    v7 = fileURL;
    if (fileURL)
    {
      v57 = 0;
      v8 = [fileURL checkResourceIsReachableAndReturnError:&v57];
      v9 = v57;
      if (v8)
      {
        ql_realpathURL = [v7 ql_realpathURL];
        [(QLThumbnailGenerationRequest *)self setFileURL:ql_realpathURL];
        if (_CFURLIsItemPromiseAtURL())
        {
          v56 = 0;
          v11 = _CFURLCopyLogicalURLOfPromiseAtURL();
          v12 = *(v59[0] + 40);
          *(v59[0] + 40) = v11;

          if (!*(v59[0] + 40))
          {
            requestIsInvalidError = self->_requestIsInvalidError;
            self->_requestIsInvalidError = v56;
          }

          v14 = v62[5];
          v62[5] = ql_realpathURL;
        }

        else
        {
          objc_storeStrong((v59[0] + 40), ql_realpathURL);
          v22 = v62[5];
          v62[5] = ql_realpathURL;
        }
      }

      else if (_CFURLIsItemPromiseAtURL())
      {
        objc_storeStrong(v62 + 5, v7);
      }

      else
      {
        objc_storeStrong((v59[0] + 40), v7);
        v15 = _CFURLPromiseCopyPhysicalURL();
        v16 = v62[5];
        v62[5] = v15;

        v17 = v62[5];
        if (!v17 || v17 == *(v59[0] + 40))
        {
          v18 = objc_alloc_init(MEMORY[0x1E696ABF8]);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __49__QLThumbnailGenerationRequest_prepareForSending__block_invoke;
          v54[3] = &unk_1E8369C98;
          v54[4] = &v58;
          v54[5] = &v61;
          v55 = v9;
          [v18 coordinateReadingItemAtURL:v7 options:5 error:&v55 byAccessor:v54];
          v19 = v55;
          v20 = v55;

          if (!*(v59[0] + 40))
          {
            v21 = _log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [QLThumbnailGenerationRequest prepareForSending];
            }

            objc_storeStrong(&self->_requestIsInvalidError, v19);
          }

          v9 = v20;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v23 = v62[5];
    if (!v23 || !*(v59[0] + 40))
    {
      if (self->_requestIsInvalidError)
      {
        goto LABEL_41;
      }

      v45 = MEMORY[0x1E696ABC0];
      if (v7)
      {
        v67 = *MEMORY[0x1E696A998];
        v68[0] = v7;
        p_super = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      }

      else
      {
        p_super = 0;
      }

      v48 = [v45 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:p_super];
      v49 = self->_requestIsInvalidError;
      self->_requestIsInvalidError = v48;

      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v53 = v9;
    v24 = [v23 checkResourceIsReachableAndReturnError:&v53];
    v25 = v53;

    if (v24)
    {
      v26 = objc_opt_class();
      v27 = v62[5];
      v52 = v25;
      v28 = [v26 _basicFileIdentifierForURL:v27 error:&v52];
      v29 = v52;

      basicFileIdentifier = self->_basicFileIdentifier;
      self->_basicFileIdentifier = v28;

      if (self->_basicFileIdentifier)
      {
        FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
        v32 = *(v59[0] + 40);
        v51 = v29;
        v33 = [FPSandboxingURLWrapperClass wrapperWithURL:v32 extensionClass:"com.apple.quicklook.readonly" error:&v51];
        v34 = v51;

        quicklookSandboxWrapper = self->_quicklookSandboxWrapper;
        self->_quicklookSandboxWrapper = v33;

        v36 = getFPSandboxingURLWrapperClass();
        v37 = *(v59[0] + 40);
        v38 = *MEMORY[0x1E69E9BA8];
        v50 = v34;
        v39 = [v36 wrapperWithURL:v37 extensionClass:v38 error:&v50];
        v40 = v50;
        v9 = v50;

        genericSandboxWrapper = self->_genericSandboxWrapper;
        self->_genericSandboxWrapper = v39;

        v42 = *(v59[0] + 40);
        v43 = QLTSandboxWrapperForParentURLOf();
        parentDirectorySandboxWrapper = self->_parentDirectorySandboxWrapper;
        self->_parentDirectorySandboxWrapper = v43;

        if (self->_genericSandboxWrapper && self->_quicklookSandboxWrapper)
        {
          v3 = 1;
LABEL_42:

          _Block_object_dispose(&v58, 8);
          _Block_object_dispose(&v61, 8);

          goto LABEL_4;
        }

        objc_storeStrong(&self->_requestIsInvalidError, v40);
        p_super = _log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(QLThumbnailGenerationRequest *)v59 prepareForSending];
        }

        goto LABEL_40;
      }

      v47 = v29;
    }

    else
    {
      v47 = v25;
    }

    v9 = v47;
    p_super = &self->_requestIsInvalidError->super;
    self->_requestIsInvalidError = v47;
LABEL_40:

LABEL_41:
    v3 = 0;
    goto LABEL_42;
  }

  v3 = 1;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)customExtensionCommunicationEncodedClasses
{
  if (customExtensionCommunicationEncodedClasses_onceToken != -1)
  {
    +[QLThumbnailGenerationRequest customExtensionCommunicationEncodedClasses];
  }

  v3 = customExtensionCommunicationEncodedClasses__customExtensionCommunicationEncodedClasses;

  return v3;
}

- (UTType)contentType
{
  overriddenContentType = self->_overriddenContentType;
  if (overriddenContentType || (overriddenContentType = self->_contentType) != 0)
  {
    v4 = overriddenContentType;
  }

  else
  {
    contentTypeUTI = [(QLThumbnailGenerationRequest *)self contentTypeUTI];
    if (contentTypeUTI)
    {
      v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:contentTypeUTI];
      contentType = self->_contentType;
      self->_contentType = v7;

      v9 = self->_contentType;
      if (!v9)
      {
        v10 = _log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [QLThumbnailGenerationRequest contentType];
        }

        v9 = self->_contentType;
      }

      v4 = v9;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)contentTypeUTI
{
  overriddenContentType = self->_overriddenContentType;
  if (overriddenContentType)
  {
    goto LABEL_3;
  }

  overriddenContentType = self->_contentType;
  if (overriddenContentType)
  {
    goto LABEL_3;
  }

  overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
  if (!overriddenContentTypeIdentifier)
  {
    overriddenContentTypeIdentifier = self->_contentTypeUTI;
    if (!overriddenContentTypeIdentifier)
    {
      item = self->_item;
      if (item)
      {
        contentType = [(FPItem *)item contentType];

        if (contentType)
        {
          contentType2 = [(FPItem *)self->_item contentType];
          contentType = self->_contentType;
          self->_contentType = contentType2;

          overriddenContentType = self->_contentType;
LABEL_3:
          identifier = [(UTType *)overriddenContentType identifier];
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      fileURL = [(QLThumbnailGenerationRequest *)self fileURL];
      if (fileURL)
      {
        v12 = fileURL;
      }

      else
      {
        genericSandboxWrapper = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
        v12 = [genericSandboxWrapper url];

        if (!v12)
        {
LABEL_22:
          overriddenContentTypeIdentifier = self->_contentTypeUTI;
          goto LABEL_23;
        }
      }

      if (_CFURLIsItemPromiseAtURL())
      {
        v14 = _CFURLCopyLogicalURLOfPromiseAtURL();
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }

        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      v18 = [QLUTIAnalyzer UTIForURL:v17];
      contentTypeUTI = self->_contentTypeUTI;
      self->_contentTypeUTI = v18;

      goto LABEL_22;
    }
  }

LABEL_23:
  identifier = overriddenContentTypeIdentifier;
LABEL_4:

  return identifier;
}

- (BOOL)isValid
{
  if ([(QLThumbnailGenerationRequest *)self isUbiquitous])
  {
    return 1;
  }

  quicklookSandboxWrapper = [(QLThumbnailGenerationRequest *)self quicklookSandboxWrapper];
  if (quicklookSandboxWrapper)
  {
    isDataBased = 1;
  }

  else
  {
    genericSandboxWrapper = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
    if (genericSandboxWrapper)
    {
      isDataBased = 1;
    }

    else
    {
      isDataBased = [(QLThumbnailGenerationRequest *)self isDataBased];
    }
  }

  return isDataBased;
}

- (BOOL)isUbiquitous
{
  item = [(QLThumbnailGenerationRequest *)self item];
  v3 = item != 0;

  return v3;
}

- (id)fileIdentifier
{
  basicFileIdentifier = self->_basicFileIdentifier;
  if (!basicFileIdentifier)
  {
    basicFileIdentifier = self->_fileProviderFileIdentifier;
  }

  return basicFileIdentifier;
}

- (int64_t)requestedMostRepresentativeType
{
  if (self->_representationTypes)
  {
    return flsl(self->_representationTypes & 7) - 1;
  }

  else
  {
    return 0;
  }
}

- (void)markDidBegin
{
  date = [MEMORY[0x1E695DF00] date];
  [(QLThumbnailGenerationRequest *)self setBeginDate:date];
}

- (BOOL)provideGenericIcon
{
  if (self->_representationTypes)
  {
    return ![(QLThumbnailGenerationRequest *)self resultShouldBeSavedToDisk:v2];
  }

  else
  {
    return 0;
  }
}

- (float)maximumPixelSize
{
  width = self->_size.width;
  if (width < self->_size.height)
  {
    width = self->_size.height;
  }

  return self->_scale * width;
}

- (BOOL)provideLowQualityThumbnail
{
  if ((self->_representationTypes & 2) == 0)
  {
    return 0;
  }

  if ([(QLThumbnailGenerationRequest *)self resultShouldBeSavedToDisk])
  {
    return 0;
  }

  return ![(QLThumbnailGenerationRequest *)self isDataBased];
}

- (BOOL)resultShouldBeSavedToDisk
{
  saveURL = [(QLThumbnailGenerationRequest *)self saveURL];
  if (saveURL)
  {
    v4 = 1;
  }

  else
  {
    saveFileHandle = [(QLThumbnailGenerationRequest *)self saveFileHandle];
    v4 = saveFileHandle != 0;
  }

  return v4;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)externalThumbnailGeneratorDataHash
{
  v17 = *MEMORY[0x1E69E9840];
  externalThumbnailGeneratorData = self->_externalThumbnailGeneratorData;
  if (externalThumbnailGeneratorData && !self->_externalThumbnailGeneratorDataHash)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSDictionary *)externalThumbnailGeneratorData allValues];
    v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            self->_externalThumbnailGeneratorDataHash ^= [v9 hash];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  result = self->_externalThumbnailGeneratorDataHash;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (QLThumbnailGenerationRequest)initWithFileAtURL:(NSURL *)url size:(CGSize)size scale:(CGFloat)scale representationTypes:(QLThumbnailGenerationRequestRepresentationTypes)representationTypes
{
  height = size.height;
  width = size.width;
  v11 = url;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Tried to create QLThumbnailGenerationRequest with a nil url" userInfo:0];
    [v12 raise];
  }

  scale = [(QLThumbnailGenerationRequest *)self initWithSize:representationTypes scale:width representationTypes:height, scale];
  if (scale)
  {
    v16 = 0;
    [(NSURL *)v11 getResourceValue:&v16 forKey:@"FPUnflattenedPackageURL" error:0];
    if (v16)
    {
      v14 = v16;
    }

    else
    {
      v14 = v11;
    }

    objc_storeStrong(&scale->_fileURL, v14);
  }

  return scale;
}

- (QLThumbnailGenerationRequest)initWithFPItem:(id)item size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  if (!itemCopy)
  {
    [QLThumbnailGenerationRequest initWithFPItem:size:scale:representationTypes:];
  }

  v13 = itemCopy;
  scale = [(QLThumbnailGenerationRequest *)self initWithSize:types scale:width representationTypes:height, scale];
  v15 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_item, item);
    v16 = [objc_opt_class() _fileProviderFileIdentifierForFPItem:v13];
    fileProviderFileIdentifier = v15->_fileProviderFileIdentifier;
    v15->_fileProviderFileIdentifier = v16;
  }

  return v15;
}

- (QLThumbnailGenerationRequest)initWithSearchResultIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier contentType:(id)type size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  typeCopy = type;
  scale = [(QLThumbnailGenerationRequest *)self initWithSize:1 scale:width representationTypes:height, scale];
  v19 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_searchResultIdentifier, identifier);
    objc_storeStrong(&v19->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v19->_contentType, type);
  }

  return v19;
}

- (QLThumbnailGenerationRequest)initWithData:(id)data contentType:(id)type size:(CGSize)size scale:(double)scale representationTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  typeCopy = type;
  if (!dataCopy || (v16 = typeCopy) == 0)
  {
    [QLThumbnailGenerationRequest initWithData:contentType:size:scale:representationTypes:];
  }

  scale = [(QLThumbnailGenerationRequest *)self initWithSize:types scale:width representationTypes:height, scale];
  v18 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_data, data);
    [(QLThumbnailGenerationRequest *)v18 setContentTypeUTI:v16];
  }

  return v18;
}

+ (QLThumbnailGenerationRequest)requestWithThumbnailRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = requestCopy;
    v6 = [QLThumbnailGenerationRequest alloc];
    if (isKindOfClass)
    {
      item = [v5 item];
      [v5 size];
      v9 = v8;
      v11 = v10;
      [v5 scale];
      v13 = v12;

      v14 = [(QLThumbnailGenerationRequest *)v6 initWithFPItem:item size:-1 scale:v9 representationTypes:v11, v13];
    }

    else
    {
      item = [v5 genericSandboxWrapper];
      v15 = [item url];
      [v5 size];
      v17 = v16;
      v19 = v18;
      [v5 scale];
      v21 = v20;

      v14 = [(QLThumbnailGenerationRequest *)v6 initWithFileAtURL:v15 size:-1 scale:v17 representationTypes:v19, v21];
    }

    [v5 minimumDimension];
    [(QLThumbnailGenerationRequest *)v14 setMinimumDimension:?];
    -[QLThumbnailGenerationRequest setBadgeType:](v14, "setBadgeType:", [v5 badgeType]);
    -[QLThumbnailGenerationRequest setIconMode:](v14, "setIconMode:", [v5 iconMode]);
    -[QLThumbnailGenerationRequest setWantsBaseline:](v14, "setWantsBaseline:", [v5 wantsBaseline]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setSaveURL:(id)l
{
  lCopy = l;
  FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
  v6 = *MEMORY[0x1E69E9BB0];
  v12 = 0;
  v7 = [FPSandboxingURLWrapperClass wrapperWithURL:lCopy extensionClass:v6 error:&v12];
  v8 = v12;
  v9 = v12;
  saveURLSandboxWrapper = self->_saveURLSandboxWrapper;
  self->_saveURLSandboxWrapper = v7;

  if (!self->_saveURLSandboxWrapper || v9)
  {
    v11 = _log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailGenerationRequest setSaveURL:];
    }

    objc_storeStrong(&self->_requestIsInvalidError, v8);
  }
}

- (void)setSaveURLContentType:(id)type
{
  typeCopy = type;
  v4 = CGImageDestinationCopyTypeIdentifiers();
  if (typeCopy && ([typeCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[__CFArray containsObject:](v4, "containsObject:", v5), v5, (v6 & 1) == 0))
  {
    saveURLContentType = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported image type", typeCopy];
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"QLThumbnailGeneratorInvalidContentType" reason:saveURLContentType userInfo:0];
    [v9 raise];
  }

  else
  {
    v7 = typeCopy;
    saveURLContentType = self->_saveURLContentType;
    self->_saveURLContentType = v7;
  }
}

- (void)setContentType:(UTType *)contentType
{
  objc_storeStrong(&self->_overriddenContentType, contentType);
  v8 = contentType;
  overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
  self->_overriddenContentTypeIdentifier = 0;

  v6 = self->_contentType;
  self->_contentType = 0;

  contentTypeUTI = self->_contentTypeUTI;
  self->_contentTypeUTI = 0;
}

- (void)setContentTypeUTI:(id)i
{
  iCopy = i;
  overriddenContentType = self->_overriddenContentType;
  self->_overriddenContentType = 0;

  overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
  self->_overriddenContentTypeIdentifier = iCopy;
  v9 = iCopy;

  contentType = self->_contentType;
  self->_contentType = 0;

  contentTypeUTI = self->_contentTypeUTI;
  self->_contentTypeUTI = 0;
}

- (BOOL)isFileBased
{
  v3 = [(FPSandboxingURLWrapper *)self->_quicklookSandboxWrapper url];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(FPSandboxingURLWrapper *)self->_genericSandboxWrapper url];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      fileURL = [(QLThumbnailGenerationRequest *)self fileURL];
      v4 = fileURL != 0;
    }
  }

  return v4;
}

- (id)equivalentFPItemRequestWithItem:(id)item representationTypes:(unint64_t)types
{
  itemCopy = item;
  v7 = [QLThumbnailGenerationRequest alloc];
  [(QLThumbnailGenerationRequest *)self size];
  v9 = v8;
  v11 = v10;
  [(QLThumbnailGenerationRequest *)self scale];
  v13 = [(QLThumbnailGenerationRequest *)v7 initWithFPItem:itemCopy size:types scale:v9 representationTypes:v11, v12];

  [(QLThumbnailGenerationRequest *)v13 setIconMode:[(QLThumbnailGenerationRequest *)self iconMode]];
  [(QLThumbnailGenerationRequest *)v13 setIconVariant:[(QLThumbnailGenerationRequest *)self iconVariant]];
  [(QLThumbnailGenerationRequest *)v13 setInterpolationQuality:[(QLThumbnailGenerationRequest *)self interpolationQuality]];
  [(QLThumbnailGenerationRequest *)self minimumDimension];
  [(QLThumbnailGenerationRequest *)v13 setMinimumDimension:?];
  [(QLThumbnailGenerationRequest *)v13 setBadgeType:[(QLThumbnailGenerationRequest *)self badgeType]];
  saveURLSandboxWrapper = [(QLThumbnailGenerationRequest *)self saveURLSandboxWrapper];
  [(QLThumbnailGenerationRequest *)v13 setSaveURLSandboxWrapper:saveURLSandboxWrapper];

  saveFileHandle = [(QLThumbnailGenerationRequest *)self saveFileHandle];
  [(QLThumbnailGenerationRequest *)v13 setSaveFileHandle:saveFileHandle];

  saveURLContentType = [(QLThumbnailGenerationRequest *)self saveURLContentType];
  [(QLThumbnailGenerationRequest *)v13 setSaveURLContentType:saveURLContentType];

  [(QLThumbnailGenerationRequest *)v13 setDownloadingAllowed:[(QLThumbnailGenerationRequest *)self isDownloadingAllowed]];
  [(QLThumbnailGenerationRequest *)v13 setShouldUseRestrictedExtension:[(QLThumbnailGenerationRequest *)self shouldUseRestrictedExtension]];

  return v13;
}

+ (id)_fileProviderFileIdentifierForFPItem:(id)item
{
  itemCopy = item;
  v4 = [QLCacheFileProviderFileIdentifier alloc];
  itemID = [itemCopy itemID];
  v6 = [(QLCacheFileProviderFileIdentifier *)v4 initWithItemID:itemID];

  v7 = [[QLThumbnailVersion alloc] initWithFPItem:itemCopy automaticallyGenerated:1];
  v8 = [[QLCacheFileProviderVersionedFileIdentifier alloc] initWithFileIdentifier:v6 version:v7];

  return v8;
}

+ (id)_basicFileIdentifierForURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [[QLCacheBasicFileIdentifier alloc] initWithFileURL:lCopy error:error];
  if (v6)
  {
    v7 = [[QLThumbnailVersion alloc] initWithFileURL:lCopy automaticallyGenerated:1];
    v8 = [[QLCacheBasicVersionedFileIdentifier alloc] initWithFileIdentifier:v6 version:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (QLThumbnailGenerationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v30 = 0.0;
  v31 = 0.0;
  [v5 getValue:&v30 size:16];
  v6 = [QLThumbnailGenerationRequest alloc];
  [coderCopy decodeDoubleForKey:@"sc"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"rt"];
  v10 = [(QLThumbnailGenerationRequest *)v6 initWithSize:v9 scale:v30 representationTypes:v31, v8];
  getFPSandboxingURLWrapperClass();
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quicklookSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setQuicklookSandboxWrapper:v11];

  getFPSandboxingURLWrapperClass();
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genericSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setGenericSandboxWrapper:v12];

  getFPSandboxingURLWrapperClass();
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentDirSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setParentDirectorySandboxWrapper:v13];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v14 = getFPItemClass_softClass;
  v36 = getFPItemClass_softClass;
  if (!getFPItemClass_softClass)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __getFPItemClass_block_invoke;
    v32[3] = &unk_1E8369C70;
    v32[4] = &v33;
    __getFPItemClass_block_invoke(v32);
    v14 = v34[3];
  }

  v15 = v14;
  _Block_object_dispose(&v33, 8);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:@"it"];
  [(QLThumbnailGenerationRequest *)v10 setItem:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpfi"];
  [(QLThumbnailGenerationRequest *)v10 setFileProviderFileIdentifier:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bfi"];
  [(QLThumbnailGenerationRequest *)v10 setBasicFileIdentifier:v18];

  -[QLThumbnailGenerationRequest setIconMode:](v10, "setIconMode:", [coderCopy decodeBoolForKey:@"i"]);
  -[QLThumbnailGenerationRequest setIconVariant:](v10, "setIconVariant:", [coderCopy decodeIntegerForKey:@"iv"]);
  -[QLThumbnailGenerationRequest setWantsBaseline:](v10, "setWantsBaseline:", [coderCopy decodeBoolForKey:@"baseline"]);
  [coderCopy decodeDoubleForKey:@"ms"];
  [(QLThumbnailGenerationRequest *)v10 setMinimumDimension:?];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(QLThumbnailGenerationRequest *)v10 setUuid:v19];

  -[QLThumbnailGenerationRequest setBadgeType:](v10, "setBadgeType:", [coderCopy decodeIntegerForKey:@"bt"]);
  -[QLThumbnailGenerationRequest setGenerationBehavior:](v10, "setGenerationBehavior:", [coderCopy decodeIntegerForKey:@"generationBehavior"]);
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oCT"];
  [(QLThumbnailGenerationRequest *)v10 setOverriddenContentType:v20];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oCTI"];
  [(QLThumbnailGenerationRequest *)v10 setOverriddenContentTypeIdentifier:v21];

  -[QLThumbnailGenerationRequest setInterpolationQuality:](v10, "setInterpolationQuality:", [coderCopy decodeIntegerForKey:@"interpolationQuality"]);
  -[QLThumbnailGenerationRequest setDownloadingAllowed:](v10, "setDownloadingAllowed:", [coderCopy decodeBoolForKey:@"downloadingAllowed"]);
  getFPSandboxingURLWrapperClass();
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saveURLSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setSaveURLSandboxWrapper:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saveFileHandle"];
  [(QLThumbnailGenerationRequest *)v10 setSaveFileHandle:v23];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saveURLContentType"];
  [(QLThumbnailGenerationRequest *)v10 setSaveURLContentType:v24];

  v25 = +[QLThumbnailGenerationRequest customExtensionCommunicationEncodedClasses];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"etgd"];
  [(QLThumbnailGenerationRequest *)v10 setExternalThumbnailGeneratorData:v26];

  -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v10, "setShouldUseRestrictedExtension:", [coderCopy decodeBoolForKey:@"shouldUseRestrictedExtension"]);
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  [(QLThumbnailGenerationRequest *)v10 setData:v27];

  -[QLThumbnailGenerationRequest setThirdPartyVideoDecodersAllowed:](v10, "setThirdPartyVideoDecodersAllowed:", [coderCopy decodeBoolForKey:@"thirdPartyVideo"]);
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
  [(QLThumbnailGenerationRequest *)v10 setTintColor:v28];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  quicklookSandboxWrapper = self->_quicklookSandboxWrapper;
  v17 = coderCopy;
  if (quicklookSandboxWrapper)
  {
    [coderCopy encodeObject:quicklookSandboxWrapper forKey:@"quicklookSandboxWrapper"];
  }

  genericSandboxWrapper = self->_genericSandboxWrapper;
  if (genericSandboxWrapper)
  {
    [v17 encodeObject:genericSandboxWrapper forKey:@"genericSandboxWrapper"];
  }

  parentDirectorySandboxWrapper = self->_parentDirectorySandboxWrapper;
  if (parentDirectorySandboxWrapper)
  {
    [v17 encodeObject:parentDirectorySandboxWrapper forKey:@"parentDirSandboxWrapper"];
  }

  item = self->_item;
  if (item)
  {
    [v17 encodeObject:item forKey:@"it"];
  }

  fileProviderFileIdentifier = self->_fileProviderFileIdentifier;
  if (fileProviderFileIdentifier)
  {
    [v17 encodeObject:fileProviderFileIdentifier forKey:@"fpfi"];
  }

  basicFileIdentifier = self->_basicFileIdentifier;
  if (basicFileIdentifier)
  {
    [v17 encodeObject:basicFileIdentifier forKey:@"bfi"];
  }

  overriddenContentType = self->_overriddenContentType;
  if (overriddenContentType)
  {
    [v17 encodeObject:overriddenContentType forKey:@"oCT"];
  }

  overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
  if (overriddenContentTypeIdentifier)
  {
    [v17 encodeObject:overriddenContentTypeIdentifier forKey:@"oCTI"];
  }

  v13 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [v17 encodeObject:v13 forKey:@"si"];

  [v17 encodeDouble:@"sc" forKey:self->_scale];
  [v17 encodeBool:self->_iconMode forKey:@"i"];
  [v17 encodeInteger:self->_badgeType forKey:@"bt"];
  [v17 encodeDouble:@"ms" forKey:self->_minimumDimension];
  [v17 encodeInteger:self->_representationTypes forKey:@"rt"];
  [v17 encodeObject:self->_uuid forKey:@"uuid"];
  [v17 encodeInteger:self->_iconVariant forKey:@"iv"];
  [v17 encodeBool:self->_wantsBaseline forKey:@"baseline"];
  [v17 encodeInteger:self->_generationBehavior forKey:@"generationBehavior"];
  [v17 encodeInteger:self->_interpolationQuality forKey:@"interpolationQuality"];
  saveURLSandboxWrapper = self->_saveURLSandboxWrapper;
  if (saveURLSandboxWrapper)
  {
    [v17 encodeObject:saveURLSandboxWrapper forKey:@"saveURLSandboxWrapper"];
  }

  saveFileHandle = self->_saveFileHandle;
  if (saveFileHandle)
  {
    [v17 encodeObject:saveFileHandle forKey:@"saveFileHandle"];
  }

  [v17 encodeBool:self->_downloadingAllowed forKey:@"downloadingAllowed"];
  [v17 encodeObject:self->_saveURLContentType forKey:@"saveURLContentType"];
  externalThumbnailGeneratorData = self->_externalThumbnailGeneratorData;
  if (externalThumbnailGeneratorData)
  {
    [v17 encodeObject:externalThumbnailGeneratorData forKey:@"etgd"];
  }

  [v17 encodeBool:self->_shouldUseRestrictedExtension forKey:@"shouldUseRestrictedExtension"];
  [v17 encodeObject:self->_data forKey:@"data"];
  [v17 encodeBool:self->_thirdPartyVideoDecodersAllowed forKey:@"thirdPartyVideo"];
  [v17 encodeObject:self->_tintColor forKey:@"tintColor"];
}

uint64_t __74__QLThumbnailGenerationRequest_customExtensionCommunicationEncodedClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  customExtensionCommunicationEncodedClasses__customExtensionCommunicationEncodedClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  iconMode = [(QLThumbnailGenerationRequest *)self iconMode];
  iconMode2 = [compareCopy iconMode];
  if (!iconMode && (iconMode2 & 1) != 0)
  {
    goto LABEL_3;
  }

  if (((!iconMode | iconMode2) & 1) == 0)
  {
    goto LABEL_9;
  }

  badgeType = [(QLThumbnailGenerationRequest *)self badgeType];
  badgeType2 = [compareCopy badgeType];
  if (!badgeType && badgeType2)
  {
LABEL_3:
    v7 = -1;
    goto LABEL_10;
  }

  if (badgeType && !badgeType2)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  iconVariant = [(QLThumbnailGenerationRequest *)self iconVariant];
  if (iconVariant == [compareCopy iconVariant])
  {
    [(QLThumbnailGenerationRequest *)self maximumPixelSize];
    v13 = v12;
    [compareCopy maximumPixelSize];
    if (v13 >= v14)
    {
      [(QLThumbnailGenerationRequest *)self maximumPixelSize];
      v24 = v23;
      [compareCopy maximumPixelSize];
      if (v24 > v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [(QLThumbnailGenerationRequest *)self minimumDimension];
      v16 = v15;
      [compareCopy minimumDimension];
      if (v16 != v17)
      {
        [(QLThumbnailGenerationRequest *)self minimumDimension];
        v19 = v18;
        [compareCopy minimumDimension];
        if (v19 > v20)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        goto LABEL_10;
      }
    }

    interpolationQuality = [(QLThumbnailGenerationRequest *)self interpolationQuality];
    if (interpolationQuality == [compareCopy interpolationQuality])
    {
      v7 = 0;
      goto LABEL_10;
    }

    interpolationQuality2 = [(QLThumbnailGenerationRequest *)self interpolationQuality];
    v22 = interpolationQuality2 < [compareCopy interpolationQuality];
  }

  else
  {
    iconVariant2 = [(QLThumbnailGenerationRequest *)self iconVariant];
    v22 = iconVariant2 < [compareCopy iconVariant];
  }

  if (v22)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithSize:self->_representationTypes scale:self->_size.width representationTypes:{self->_size.height, self->_scale}];
  [v4 setQuicklookSandboxWrapper:self->_quicklookSandboxWrapper];
  [v4 setGenericSandboxWrapper:self->_genericSandboxWrapper];
  [v4 setParentDirectorySandboxWrapper:self->_parentDirectorySandboxWrapper];
  [v4 setItem:self->_item];
  [v4 setOverriddenContentType:self->_overriddenContentType];
  [v4 setOverriddenContentTypeIdentifier:self->_overriddenContentTypeIdentifier];
  [v4 setBasicFileIdentifier:self->_basicFileIdentifier];
  [v4 setFileProviderFileIdentifier:self->_fileProviderFileIdentifier];
  [v4 setIconMode:self->_iconMode];
  [v4 setIconVariant:self->_iconVariant];
  [v4 setWantsBaseline:self->_wantsBaseline];
  [v4 setMinimumDimension:self->_minimumDimension];
  [v4 setUuid:self->_uuid];
  [v4 setBadgeType:self->_badgeType];
  [v4 setGenerationBehavior:self->_generationBehavior];
  [v4 setInterpolationQuality:self->_interpolationQuality];
  [v4 setDownloadingAllowed:self->_downloadingAllowed];
  [v4 setSaveURLSandboxWrapper:self->_saveURLSandboxWrapper];
  [v4 setSaveFileHandle:self->_saveFileHandle];
  [v4 setSaveURLContentType:self->_saveURLContentType];
  [v4 setExternalThumbnailGeneratorData:self->_externalThumbnailGeneratorData];
  [v4 setShouldUseRestrictedExtension:self->_shouldUseRestrictedExtension];
  [v4 setThirdPartyVideoDecodersAllowed:self->_thirdPartyVideoDecodersAllowed];
  [v4 setTintColor:self->_tintColor];
  [v4 setData:self->_data];
  return v4;
}

- (id)copyWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [(QLThumbnailGenerationRequest *)self copy];
  [v5 setSize:{width, height}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fileIdentifier = [(QLThumbnailGenerationRequest *)self fileIdentifier];
      fileIdentifier2 = [(QLThumbnailGenerationRequest *)v5 fileIdentifier];
      v8 = fileIdentifier2;
      if (fileIdentifier == fileIdentifier2)
      {
      }

      else
      {
        fileIdentifier3 = [(QLThumbnailGenerationRequest *)self fileIdentifier];
        fileIdentifier4 = [(QLThumbnailGenerationRequest *)v5 fileIdentifier];
        v11 = [fileIdentifier3 isEqual:fileIdentifier4];

        if (!v11)
        {
          v12 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      uuid = self->_uuid;
      uuid = [(QLThumbnailGenerationRequest *)v5 uuid];
      if (![(NSUUID *)uuid isEqual:uuid])
      {
        goto LABEL_23;
      }

      [(QLThumbnailGenerationRequest *)v5 size];
      v12 = 0;
      if (self->_size.width != v16 || self->_size.height != v15)
      {
        goto LABEL_24;
      }

      scale = self->_scale;
      [(QLThumbnailGenerationRequest *)v5 scale];
      if (scale != v18)
      {
        goto LABEL_23;
      }

      iconMode = self->_iconMode;
      if (iconMode != [(QLThumbnailGenerationRequest *)v5 iconMode]|| (badgeType = self->_badgeType, badgeType != [(QLThumbnailGenerationRequest *)v5 badgeType]) || (minimumDimension = self->_minimumDimension, [(QLThumbnailGenerationRequest *)v5 minimumDimension], minimumDimension != v22) || (representationTypes = self->_representationTypes, representationTypes != [(QLThumbnailGenerationRequest *)v5 representationTypes]) || (iconVariant = self->_iconVariant, iconVariant != [(QLThumbnailGenerationRequest *)v5 iconVariant]) || (wantsBaseline = self->_wantsBaseline, wantsBaseline != [(QLThumbnailGenerationRequest *)v5 wantsBaseline]) || (interpolationQuality = self->_interpolationQuality, interpolationQuality != [(QLThumbnailGenerationRequest *)v5 interpolationQuality]))
      {
LABEL_23:
        v12 = 0;
LABEL_24:

        goto LABEL_25;
      }

      externalThumbnailGeneratorData = self->_externalThumbnailGeneratorData;
      externalThumbnailGeneratorData = [(QLThumbnailGenerationRequest *)v5 externalThumbnailGeneratorData];
      if (externalThumbnailGeneratorData != externalThumbnailGeneratorData)
      {
        v29 = self->_externalThumbnailGeneratorData;
        externalThumbnailGeneratorData2 = [(QLThumbnailGenerationRequest *)v5 externalThumbnailGeneratorData];
        if (![(NSDictionary *)v29 isEqual:externalThumbnailGeneratorData2])
        {
          v12 = 0;
          goto LABEL_39;
        }

        v42 = externalThumbnailGeneratorData2;
      }

      overriddenContentType = self->_overriddenContentType;
      overriddenContentType = [(QLThumbnailGenerationRequest *)v5 overriddenContentType];
      if (overriddenContentType == overriddenContentType)
      {
        v41 = externalThumbnailGeneratorData;
      }

      else
      {
        v34 = self->_overriddenContentType;
        overriddenContentType2 = [(QLThumbnailGenerationRequest *)v5 overriddenContentType];
        if (![(UTType *)v34 isEqual:?])
        {
          v12 = 0;
          externalThumbnailGeneratorData2 = v42;
          goto LABEL_37;
        }

        v41 = externalThumbnailGeneratorData;
      }

      overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
      overriddenContentTypeIdentifier = [(QLThumbnailGenerationRequest *)v5 overriddenContentTypeIdentifier];
      v37 = overriddenContentTypeIdentifier;
      if (overriddenContentTypeIdentifier == overriddenContentTypeIdentifier)
      {

        v12 = 1;
      }

      else
      {
        v38 = self->_overriddenContentTypeIdentifier;
        overriddenContentTypeIdentifier2 = [(QLThumbnailGenerationRequest *)v5 overriddenContentTypeIdentifier];
        v12 = [(NSString *)v38 isEqual:overriddenContentTypeIdentifier2];
      }

      externalThumbnailGeneratorData = v41;
      externalThumbnailGeneratorData2 = v42;
      if (overriddenContentType == overriddenContentType)
      {
LABEL_38:

        if (externalThumbnailGeneratorData == externalThumbnailGeneratorData)
        {
LABEL_40:

          goto LABEL_24;
        }

LABEL_39:

        goto LABEL_40;
      }

LABEL_37:

      goto LABEL_38;
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  fileIdentifier = [(QLThumbnailGenerationRequest *)self fileIdentifier];
  v4 = [fileIdentifier hash];
  width = self->_size.width;
  v6 = v4 ^ [(NSUUID *)self->_uuid hash];

  return v6 ^ width;
}

- (id)description
{
  if ([(QLThumbnailGenerationRequest *)self iconMode])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(icon mode, variant %lu)", -[QLThumbnailGenerationRequest iconVariant](self, "iconVariant")];
  }

  else
  {
    v3 = &stru_1F49E08A8;
  }

  if ([(QLThumbnailGenerationRequest *)self badgeType])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(badge %lu)", -[QLThumbnailGenerationRequest badgeType](self, "badgeType")];
  }

  else
  {
    v4 = &stru_1F49E08A8;
  }

  v47 = v4;
  if ([(QLThumbnailGenerationRequest *)self isFileBased])
  {
    v45 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = objc_opt_class();
    v44 = NSStringFromClass(v5);
    uuid = [(QLThumbnailGenerationRequest *)self uuid];
    genericSandboxWrapper = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
    itemIdentifier = [genericSandboxWrapper url];
    lastPathComponent = [itemIdentifier lastPathComponent];
    [(QLThumbnailGenerationRequest *)self fileIdentifier];
    v11 = v10 = v3;
    representationTypes = [(QLThumbnailGenerationRequest *)self representationTypes];
    [(QLThumbnailGenerationRequest *)self size];
    v14 = v13;
    [(QLThumbnailGenerationRequest *)self size];
    v16 = v15;
    _stateDescription = [(QLThumbnailGenerationRequest *)self _stateDescription];
    v18 = v47;
    v42 = representationTypes;
    v19 = uuid;
    v20 = v44;
    v21 = [v45 initWithFormat:@"<%@:%p uuid:%@ %@ (fi:%@) (rt:%lu) {%g, %g} %@ %@ - %@>", v44, self, v19, lastPathComponent, v11, v42, v14, v16, v10, v47, _stateDescription];

    v3 = v10;
  }

  else
  {
    isUbiquitous = [(QLThumbnailGenerationRequest *)self isUbiquitous];
    v46 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    uuid2 = [(QLThumbnailGenerationRequest *)self uuid];
    if (isUbiquitous)
    {
      genericSandboxWrapper = [(FPItem *)self->_item providerDomainID];
      itemIdentifier = [(FPItem *)self->_item itemIdentifier];
      lastPathComponent = [(FPItem *)self->_item displayName];
      representationTypes2 = [(QLThumbnailGenerationRequest *)self representationTypes];
      [(QLThumbnailGenerationRequest *)self size];
      v28 = v27;
      [(QLThumbnailGenerationRequest *)self size];
      v30 = v29;
      _stateDescription2 = [(QLThumbnailGenerationRequest *)self _stateDescription];
      v18 = v47;
      v43 = representationTypes2;
      v19 = uuid2;
      v39 = uuid2;
      v20 = v24;
      v21 = [v46 initWithFormat:@"<%@:%p uuid:%@ %@/%@ (%@) (rt:%lu) {%g, %g} %@ %@ - %@>", v24, self, v39, genericSandboxWrapper, itemIdentifier, lastPathComponent, v43, v28, v30, v3, v47, _stateDescription2];
    }

    else
    {
      genericSandboxWrapper = [(QLThumbnailGenerationRequest *)self data];
      v32 = [genericSandboxWrapper length];
      itemIdentifier = [(QLThumbnailGenerationRequest *)self contentTypeUTI];
      representationTypes3 = [(QLThumbnailGenerationRequest *)self representationTypes];
      [(QLThumbnailGenerationRequest *)self size];
      v35 = v34;
      [(QLThumbnailGenerationRequest *)self size];
      v37 = v36;
      lastPathComponent = [(QLThumbnailGenerationRequest *)self _stateDescription];
      v18 = v47;
      v40 = uuid2;
      v41 = v32;
      v19 = uuid2;
      v20 = v24;
      v21 = [v46 initWithFormat:@"<%@:%p uuid:%@ (data request, l: %lu, %@) (rt:%lu) {%g, %g} %@ %@ - %@>", v24, self, v40, v41, itemIdentifier, representationTypes3, v35, v37, v3, v47, lastPathComponent];
    }
  }

  return v21;
}

- (id)_stateDescription
{
  if ([(QLThumbnailGenerationRequest *)self isCancelled])
  {
    return @"Cancelled";
  }

  if ([(QLThumbnailGenerationRequest *)self isFinished])
  {
    return @"Finished";
  }

  beginDate = [(QLThumbnailGenerationRequest *)self beginDate];

  if (beginDate)
  {
    return @"Running";
  }

  else
  {
    return @"Not started";
  }
}

void __49__QLThumbnailGenerationRequest_prepareForSending__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ql_realpathURL];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = _CFURLPromiseCopyPhysicalURL();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (NSURL)fileURL
{
  os_unfair_lock_lock(&self->_urlLock);
  v3 = self->_fileURL;
  os_unfair_lock_unlock(&self->_urlLock);

  return v3;
}

- (void)setFileURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_urlLock);
  fileURL = self->_fileURL;
  self->_fileURL = lCopy;

  os_unfair_lock_unlock(&self->_urlLock);
}

- (void)setSaveURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not create a FPSandboxingURLWrapper for save URL %@ for thumbnail request. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)contentType
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Invalid type identifier %@ set on %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)prepareForSending
{
  *v4 = 138412546;
  *&v4[4] = *(*self + 40);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, a2, a3, "Could not create FPSandboxingURLWrapper with url: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end