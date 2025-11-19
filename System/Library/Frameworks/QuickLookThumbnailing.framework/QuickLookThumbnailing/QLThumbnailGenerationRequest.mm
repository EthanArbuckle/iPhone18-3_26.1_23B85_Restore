@interface QLThumbnailGenerationRequest
+ (QLThumbnailGenerationRequest)requestWithThumbnailRequest:(id)a3;
+ (id)_basicFileIdentifierForURL:(id)a3 error:(id *)a4;
+ (id)_fileProviderFileIdentifierForFPItem:(id)a3;
+ (id)customExtensionCommunicationEncodedClasses;
- (BOOL)isEqual:(id)a3;
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
- (QLThumbnailGenerationRequest)initWithCoder:(id)a3;
- (QLThumbnailGenerationRequest)initWithData:(id)a3 contentType:(id)a4 size:(CGSize)a5 scale:(double)a6 representationTypes:(unint64_t)a7;
- (QLThumbnailGenerationRequest)initWithFPItem:(id)a3 size:(CGSize)a4 scale:(double)a5 representationTypes:(unint64_t)a6;
- (QLThumbnailGenerationRequest)initWithFileAtURL:(NSURL *)url size:(CGSize)size scale:(CGFloat)scale representationTypes:(QLThumbnailGenerationRequestRepresentationTypes)representationTypes;
- (QLThumbnailGenerationRequest)initWithSearchResultIdentifier:(id)a3 domainIdentifier:(id)a4 contentType:(id)a5 size:(CGSize)a6 scale:(double)a7 representationTypes:(unint64_t)a8;
- (UTType)contentType;
- (float)maximumPixelSize;
- (id)_stateDescription;
- (id)copyWithSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)equivalentFPItemRequestWithItem:(id)a3 representationTypes:(unint64_t)a4;
- (id)fileIdentifier;
- (int64_t)compare:(id)a3;
- (int64_t)requestedMostRepresentativeType;
- (unint64_t)externalThumbnailGeneratorDataHash;
- (unint64_t)hash;
- (void)contentType;
- (void)encodeWithCoder:(id)a3;
- (void)markDidBegin;
- (void)prepareForSending;
- (void)setContentType:(UTType *)contentType;
- (void)setContentTypeUTI:(id)a3;
- (void)setFileURL:(id)a3;
- (void)setSaveURL:(id)a3;
- (void)setSaveURLContentType:(id)a3;
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
    v6 = [(QLThumbnailGenerationRequest *)self fileURL];
    v7 = v6;
    if (v6)
    {
      v57 = 0;
      v8 = [v6 checkResourceIsReachableAndReturnError:&v57];
      v9 = v57;
      if (v8)
      {
        v10 = [v7 ql_realpathURL];
        [(QLThumbnailGenerationRequest *)self setFileURL:v10];
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
          v62[5] = v10;
        }

        else
        {
          objc_storeStrong((v59[0] + 40), v10);
          v22 = v62[5];
          v62[5] = v10;
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
    v6 = [(QLThumbnailGenerationRequest *)self contentTypeUTI];
    if (v6)
    {
      v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
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
        v8 = [(FPItem *)item contentType];

        if (v8)
        {
          v9 = [(FPItem *)self->_item contentType];
          contentType = self->_contentType;
          self->_contentType = v9;

          overriddenContentType = self->_contentType;
LABEL_3:
          v4 = [(UTType *)overriddenContentType identifier];
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      v11 = [(QLThumbnailGenerationRequest *)self fileURL];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
        v12 = [v13 url];

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
  v4 = overriddenContentTypeIdentifier;
LABEL_4:

  return v4;
}

- (BOOL)isValid
{
  if ([(QLThumbnailGenerationRequest *)self isUbiquitous])
  {
    return 1;
  }

  v4 = [(QLThumbnailGenerationRequest *)self quicklookSandboxWrapper];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v3 = [(QLThumbnailGenerationRequest *)self isDataBased];
    }
  }

  return v3;
}

- (BOOL)isUbiquitous
{
  v2 = [(QLThumbnailGenerationRequest *)self item];
  v3 = v2 != 0;

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
  v3 = [MEMORY[0x1E695DF00] date];
  [(QLThumbnailGenerationRequest *)self setBeginDate:v3];
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
  v3 = [(QLThumbnailGenerationRequest *)self saveURL];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(QLThumbnailGenerationRequest *)self saveFileHandle];
    v4 = v5 != 0;
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
    v4 = [(NSDictionary *)externalThumbnailGeneratorData allValues];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            self->_externalThumbnailGeneratorDataHash ^= [v9 hash];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  v13 = [(QLThumbnailGenerationRequest *)self initWithSize:representationTypes scale:width representationTypes:height, scale];
  if (v13)
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

    objc_storeStrong(&v13->_fileURL, v14);
  }

  return v13;
}

- (QLThumbnailGenerationRequest)initWithFPItem:(id)a3 size:(CGSize)a4 scale:(double)a5 representationTypes:(unint64_t)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  if (!v12)
  {
    [QLThumbnailGenerationRequest initWithFPItem:size:scale:representationTypes:];
  }

  v13 = v12;
  v14 = [(QLThumbnailGenerationRequest *)self initWithSize:a6 scale:width representationTypes:height, a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_item, a3);
    v16 = [objc_opt_class() _fileProviderFileIdentifierForFPItem:v13];
    fileProviderFileIdentifier = v15->_fileProviderFileIdentifier;
    v15->_fileProviderFileIdentifier = v16;
  }

  return v15;
}

- (QLThumbnailGenerationRequest)initWithSearchResultIdentifier:(id)a3 domainIdentifier:(id)a4 contentType:(id)a5 size:(CGSize)a6 scale:(double)a7 representationTypes:(unint64_t)a8
{
  height = a6.height;
  width = a6.width;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [(QLThumbnailGenerationRequest *)self initWithSize:1 scale:width representationTypes:height, a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchResultIdentifier, a3);
    objc_storeStrong(&v19->_domainIdentifier, a4);
    objc_storeStrong(&v19->_contentType, a5);
  }

  return v19;
}

- (QLThumbnailGenerationRequest)initWithData:(id)a3 contentType:(id)a4 size:(CGSize)a5 scale:(double)a6 representationTypes:(unint64_t)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  if (!v14 || (v16 = v15) == 0)
  {
    [QLThumbnailGenerationRequest initWithData:contentType:size:scale:representationTypes:];
  }

  v17 = [(QLThumbnailGenerationRequest *)self initWithSize:a7 scale:width representationTypes:height, a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, a3);
    [(QLThumbnailGenerationRequest *)v18 setContentTypeUTI:v16];
  }

  return v18;
}

+ (QLThumbnailGenerationRequest)requestWithThumbnailRequest:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v3;
    v6 = [QLThumbnailGenerationRequest alloc];
    if (isKindOfClass)
    {
      v7 = [v5 item];
      [v5 size];
      v9 = v8;
      v11 = v10;
      [v5 scale];
      v13 = v12;

      v14 = [(QLThumbnailGenerationRequest *)v6 initWithFPItem:v7 size:-1 scale:v9 representationTypes:v11, v13];
    }

    else
    {
      v7 = [v5 genericSandboxWrapper];
      v15 = [v7 url];
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

- (void)setSaveURL:(id)a3
{
  v4 = a3;
  FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
  v6 = *MEMORY[0x1E69E9BB0];
  v12 = 0;
  v7 = [FPSandboxingURLWrapperClass wrapperWithURL:v4 extensionClass:v6 error:&v12];
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

- (void)setSaveURLContentType:(id)a3
{
  v10 = a3;
  v4 = CGImageDestinationCopyTypeIdentifiers();
  if (v10 && ([v10 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[__CFArray containsObject:](v4, "containsObject:", v5), v5, (v6 & 1) == 0))
  {
    saveURLContentType = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported image type", v10];
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"QLThumbnailGeneratorInvalidContentType" reason:saveURLContentType userInfo:0];
    [v9 raise];
  }

  else
  {
    v7 = v10;
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

- (void)setContentTypeUTI:(id)a3
{
  v4 = a3;
  overriddenContentType = self->_overriddenContentType;
  self->_overriddenContentType = 0;

  overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
  self->_overriddenContentTypeIdentifier = v4;
  v9 = v4;

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
      v6 = [(QLThumbnailGenerationRequest *)self fileURL];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)equivalentFPItemRequestWithItem:(id)a3 representationTypes:(unint64_t)a4
{
  v6 = a3;
  v7 = [QLThumbnailGenerationRequest alloc];
  [(QLThumbnailGenerationRequest *)self size];
  v9 = v8;
  v11 = v10;
  [(QLThumbnailGenerationRequest *)self scale];
  v13 = [(QLThumbnailGenerationRequest *)v7 initWithFPItem:v6 size:a4 scale:v9 representationTypes:v11, v12];

  [(QLThumbnailGenerationRequest *)v13 setIconMode:[(QLThumbnailGenerationRequest *)self iconMode]];
  [(QLThumbnailGenerationRequest *)v13 setIconVariant:[(QLThumbnailGenerationRequest *)self iconVariant]];
  [(QLThumbnailGenerationRequest *)v13 setInterpolationQuality:[(QLThumbnailGenerationRequest *)self interpolationQuality]];
  [(QLThumbnailGenerationRequest *)self minimumDimension];
  [(QLThumbnailGenerationRequest *)v13 setMinimumDimension:?];
  [(QLThumbnailGenerationRequest *)v13 setBadgeType:[(QLThumbnailGenerationRequest *)self badgeType]];
  v14 = [(QLThumbnailGenerationRequest *)self saveURLSandboxWrapper];
  [(QLThumbnailGenerationRequest *)v13 setSaveURLSandboxWrapper:v14];

  v15 = [(QLThumbnailGenerationRequest *)self saveFileHandle];
  [(QLThumbnailGenerationRequest *)v13 setSaveFileHandle:v15];

  v16 = [(QLThumbnailGenerationRequest *)self saveURLContentType];
  [(QLThumbnailGenerationRequest *)v13 setSaveURLContentType:v16];

  [(QLThumbnailGenerationRequest *)v13 setDownloadingAllowed:[(QLThumbnailGenerationRequest *)self isDownloadingAllowed]];
  [(QLThumbnailGenerationRequest *)v13 setShouldUseRestrictedExtension:[(QLThumbnailGenerationRequest *)self shouldUseRestrictedExtension]];

  return v13;
}

+ (id)_fileProviderFileIdentifierForFPItem:(id)a3
{
  v3 = a3;
  v4 = [QLCacheFileProviderFileIdentifier alloc];
  v5 = [v3 itemID];
  v6 = [(QLCacheFileProviderFileIdentifier *)v4 initWithItemID:v5];

  v7 = [[QLThumbnailVersion alloc] initWithFPItem:v3 automaticallyGenerated:1];
  v8 = [[QLCacheFileProviderVersionedFileIdentifier alloc] initWithFileIdentifier:v6 version:v7];

  return v8;
}

+ (id)_basicFileIdentifierForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[QLCacheBasicFileIdentifier alloc] initWithFileURL:v5 error:a4];
  if (v6)
  {
    v7 = [[QLThumbnailVersion alloc] initWithFileURL:v5 automaticallyGenerated:1];
    v8 = [[QLCacheBasicVersionedFileIdentifier alloc] initWithFileIdentifier:v6 version:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (QLThumbnailGenerationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v30 = 0.0;
  v31 = 0.0;
  [v5 getValue:&v30 size:16];
  v6 = [QLThumbnailGenerationRequest alloc];
  [v4 decodeDoubleForKey:@"sc"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"rt"];
  v10 = [(QLThumbnailGenerationRequest *)v6 initWithSize:v9 scale:v30 representationTypes:v31, v8];
  getFPSandboxingURLWrapperClass();
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quicklookSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setQuicklookSandboxWrapper:v11];

  getFPSandboxingURLWrapperClass();
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genericSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setGenericSandboxWrapper:v12];

  getFPSandboxingURLWrapperClass();
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentDirSandboxWrapper"];
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
  v16 = [v4 decodeObjectOfClass:v14 forKey:@"it"];
  [(QLThumbnailGenerationRequest *)v10 setItem:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpfi"];
  [(QLThumbnailGenerationRequest *)v10 setFileProviderFileIdentifier:v17];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bfi"];
  [(QLThumbnailGenerationRequest *)v10 setBasicFileIdentifier:v18];

  -[QLThumbnailGenerationRequest setIconMode:](v10, "setIconMode:", [v4 decodeBoolForKey:@"i"]);
  -[QLThumbnailGenerationRequest setIconVariant:](v10, "setIconVariant:", [v4 decodeIntegerForKey:@"iv"]);
  -[QLThumbnailGenerationRequest setWantsBaseline:](v10, "setWantsBaseline:", [v4 decodeBoolForKey:@"baseline"]);
  [v4 decodeDoubleForKey:@"ms"];
  [(QLThumbnailGenerationRequest *)v10 setMinimumDimension:?];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(QLThumbnailGenerationRequest *)v10 setUuid:v19];

  -[QLThumbnailGenerationRequest setBadgeType:](v10, "setBadgeType:", [v4 decodeIntegerForKey:@"bt"]);
  -[QLThumbnailGenerationRequest setGenerationBehavior:](v10, "setGenerationBehavior:", [v4 decodeIntegerForKey:@"generationBehavior"]);
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oCT"];
  [(QLThumbnailGenerationRequest *)v10 setOverriddenContentType:v20];

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oCTI"];
  [(QLThumbnailGenerationRequest *)v10 setOverriddenContentTypeIdentifier:v21];

  -[QLThumbnailGenerationRequest setInterpolationQuality:](v10, "setInterpolationQuality:", [v4 decodeIntegerForKey:@"interpolationQuality"]);
  -[QLThumbnailGenerationRequest setDownloadingAllowed:](v10, "setDownloadingAllowed:", [v4 decodeBoolForKey:@"downloadingAllowed"]);
  getFPSandboxingURLWrapperClass();
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saveURLSandboxWrapper"];
  [(QLThumbnailGenerationRequest *)v10 setSaveURLSandboxWrapper:v22];

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saveFileHandle"];
  [(QLThumbnailGenerationRequest *)v10 setSaveFileHandle:v23];

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saveURLContentType"];
  [(QLThumbnailGenerationRequest *)v10 setSaveURLContentType:v24];

  v25 = +[QLThumbnailGenerationRequest customExtensionCommunicationEncodedClasses];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"etgd"];
  [(QLThumbnailGenerationRequest *)v10 setExternalThumbnailGeneratorData:v26];

  -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v10, "setShouldUseRestrictedExtension:", [v4 decodeBoolForKey:@"shouldUseRestrictedExtension"]);
  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  [(QLThumbnailGenerationRequest *)v10 setData:v27];

  -[QLThumbnailGenerationRequest setThirdPartyVideoDecodersAllowed:](v10, "setThirdPartyVideoDecodersAllowed:", [v4 decodeBoolForKey:@"thirdPartyVideo"]);
  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
  [(QLThumbnailGenerationRequest *)v10 setTintColor:v28];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  quicklookSandboxWrapper = self->_quicklookSandboxWrapper;
  v17 = v4;
  if (quicklookSandboxWrapper)
  {
    [v4 encodeObject:quicklookSandboxWrapper forKey:@"quicklookSandboxWrapper"];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailGenerationRequest *)self iconMode];
  v6 = [v4 iconMode];
  if (!v5 && (v6 & 1) != 0)
  {
    goto LABEL_3;
  }

  if (((!v5 | v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [(QLThumbnailGenerationRequest *)self badgeType];
  v9 = [v4 badgeType];
  if (!v8 && v9)
  {
LABEL_3:
    v7 = -1;
    goto LABEL_10;
  }

  if (v8 && !v9)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v11 = [(QLThumbnailGenerationRequest *)self iconVariant];
  if (v11 == [v4 iconVariant])
  {
    [(QLThumbnailGenerationRequest *)self maximumPixelSize];
    v13 = v12;
    [v4 maximumPixelSize];
    if (v13 >= v14)
    {
      [(QLThumbnailGenerationRequest *)self maximumPixelSize];
      v24 = v23;
      [v4 maximumPixelSize];
      if (v24 > v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [(QLThumbnailGenerationRequest *)self minimumDimension];
      v16 = v15;
      [v4 minimumDimension];
      if (v16 != v17)
      {
        [(QLThumbnailGenerationRequest *)self minimumDimension];
        v19 = v18;
        [v4 minimumDimension];
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

    v26 = [(QLThumbnailGenerationRequest *)self interpolationQuality];
    if (v26 == [v4 interpolationQuality])
    {
      v7 = 0;
      goto LABEL_10;
    }

    v27 = [(QLThumbnailGenerationRequest *)self interpolationQuality];
    v22 = v27 < [v4 interpolationQuality];
  }

  else
  {
    v21 = [(QLThumbnailGenerationRequest *)self iconVariant];
    v22 = v21 < [v4 iconVariant];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (id)copyWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(QLThumbnailGenerationRequest *)self copy];
  [v5 setSize:{width, height}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(QLThumbnailGenerationRequest *)self fileIdentifier];
      v7 = [(QLThumbnailGenerationRequest *)v5 fileIdentifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(QLThumbnailGenerationRequest *)self fileIdentifier];
        v10 = [(QLThumbnailGenerationRequest *)v5 fileIdentifier];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          v12 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      uuid = self->_uuid;
      v14 = [(QLThumbnailGenerationRequest *)v5 uuid];
      if (![(NSUUID *)uuid isEqual:v14])
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
      v28 = [(QLThumbnailGenerationRequest *)v5 externalThumbnailGeneratorData];
      if (externalThumbnailGeneratorData != v28)
      {
        v29 = self->_externalThumbnailGeneratorData;
        v30 = [(QLThumbnailGenerationRequest *)v5 externalThumbnailGeneratorData];
        if (![(NSDictionary *)v29 isEqual:v30])
        {
          v12 = 0;
          goto LABEL_39;
        }

        v42 = v30;
      }

      overriddenContentType = self->_overriddenContentType;
      v33 = [(QLThumbnailGenerationRequest *)v5 overriddenContentType];
      if (overriddenContentType == v33)
      {
        v41 = externalThumbnailGeneratorData;
      }

      else
      {
        v34 = self->_overriddenContentType;
        v40 = [(QLThumbnailGenerationRequest *)v5 overriddenContentType];
        if (![(UTType *)v34 isEqual:?])
        {
          v12 = 0;
          v30 = v42;
          goto LABEL_37;
        }

        v41 = externalThumbnailGeneratorData;
      }

      overriddenContentTypeIdentifier = self->_overriddenContentTypeIdentifier;
      v36 = [(QLThumbnailGenerationRequest *)v5 overriddenContentTypeIdentifier];
      v37 = v36;
      if (overriddenContentTypeIdentifier == v36)
      {

        v12 = 1;
      }

      else
      {
        v38 = self->_overriddenContentTypeIdentifier;
        v39 = [(QLThumbnailGenerationRequest *)v5 overriddenContentTypeIdentifier];
        v12 = [(NSString *)v38 isEqual:v39];
      }

      externalThumbnailGeneratorData = v41;
      v30 = v42;
      if (overriddenContentType == v33)
      {
LABEL_38:

        if (externalThumbnailGeneratorData == v28)
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
  v3 = [(QLThumbnailGenerationRequest *)self fileIdentifier];
  v4 = [v3 hash];
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
    v6 = [(QLThumbnailGenerationRequest *)self uuid];
    v7 = [(QLThumbnailGenerationRequest *)self genericSandboxWrapper];
    v8 = [v7 url];
    v9 = [v8 lastPathComponent];
    [(QLThumbnailGenerationRequest *)self fileIdentifier];
    v11 = v10 = v3;
    v12 = [(QLThumbnailGenerationRequest *)self representationTypes];
    [(QLThumbnailGenerationRequest *)self size];
    v14 = v13;
    [(QLThumbnailGenerationRequest *)self size];
    v16 = v15;
    v17 = [(QLThumbnailGenerationRequest *)self _stateDescription];
    v18 = v47;
    v42 = v12;
    v19 = v6;
    v20 = v44;
    v21 = [v45 initWithFormat:@"<%@:%p uuid:%@ %@ (fi:%@) (rt:%lu) {%g, %g} %@ %@ - %@>", v44, self, v19, v9, v11, v42, v14, v16, v10, v47, v17];

    v3 = v10;
  }

  else
  {
    v22 = [(QLThumbnailGenerationRequest *)self isUbiquitous];
    v46 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [(QLThumbnailGenerationRequest *)self uuid];
    if (v22)
    {
      v7 = [(FPItem *)self->_item providerDomainID];
      v8 = [(FPItem *)self->_item itemIdentifier];
      v9 = [(FPItem *)self->_item displayName];
      v26 = [(QLThumbnailGenerationRequest *)self representationTypes];
      [(QLThumbnailGenerationRequest *)self size];
      v28 = v27;
      [(QLThumbnailGenerationRequest *)self size];
      v30 = v29;
      v31 = [(QLThumbnailGenerationRequest *)self _stateDescription];
      v18 = v47;
      v43 = v26;
      v19 = v25;
      v39 = v25;
      v20 = v24;
      v21 = [v46 initWithFormat:@"<%@:%p uuid:%@ %@/%@ (%@) (rt:%lu) {%g, %g} %@ %@ - %@>", v24, self, v39, v7, v8, v9, v43, v28, v30, v3, v47, v31];
    }

    else
    {
      v7 = [(QLThumbnailGenerationRequest *)self data];
      v32 = [v7 length];
      v8 = [(QLThumbnailGenerationRequest *)self contentTypeUTI];
      v33 = [(QLThumbnailGenerationRequest *)self representationTypes];
      [(QLThumbnailGenerationRequest *)self size];
      v35 = v34;
      [(QLThumbnailGenerationRequest *)self size];
      v37 = v36;
      v9 = [(QLThumbnailGenerationRequest *)self _stateDescription];
      v18 = v47;
      v40 = v25;
      v41 = v32;
      v19 = v25;
      v20 = v24;
      v21 = [v46 initWithFormat:@"<%@:%p uuid:%@ (data request, l: %lu, %@) (rt:%lu) {%g, %g} %@ %@ - %@>", v24, self, v40, v41, v8, v33, v35, v37, v3, v47, v9];
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

  v4 = [(QLThumbnailGenerationRequest *)self beginDate];

  if (v4)
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

- (void)setFileURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_urlLock);
  fileURL = self->_fileURL;
  self->_fileURL = v4;

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
  *&v4[4] = *(*a1 + 40);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, a2, a3, "Could not create FPSandboxingURLWrapper with url: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end