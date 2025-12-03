@interface AXMPhotoAssetData
+ (id)_photoAuthorizationMessage:(int64_t)message;
+ (id)phAssetFromLocalIdentifier:(id)identifier photoLibraryURL:(id)l;
- (AXMPhotoAssetData)initWithCoder:(id)coder;
- (AXMPhotoAssetData)initWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l allowsNetworkAccess:(BOOL)access needsImageData:(BOOL)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateAssetDetails;
@end

@implementation AXMPhotoAssetData

- (AXMPhotoAssetData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AXMPhotoAssetData;
  v5 = [(AXMPhotoAssetData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyAssetURL];
    [(AXMPhotoAssetData *)v5 setAssetURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyCreationDate];
    [(AXMPhotoAssetData *)v5 setAssetCreationDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyUTI];
    [(AXMPhotoAssetData *)v5 setAssetUTI:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyLocalIdentifier];
    [(AXMPhotoAssetData *)v5 setAssetLocalIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyImageData];
    [(AXMPhotoAssetData *)v5 setAssetImageData:v10];

    -[AXMPhotoAssetData setAssetOrientation:](v5, "setAssetOrientation:", [coderCopy decodeInt32ForKey:AXMPhotoAssetDataCodingKeyOrientation]);
    -[AXMPhotoAssetData setAllowNetworkAccess:](v5, "setAllowNetworkAccess:", [coderCopy decodeBoolForKey:AXMPhotoAssetDataCodingKeyAllowNetworkAccess]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMPhotoAssetDataCodingKeyPhotoLibraryURL];
    [(AXMPhotoAssetData *)v5 setPhotoLibraryURL:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetURL = [(AXMPhotoAssetData *)self assetURL];
  [coderCopy encodeObject:assetURL forKey:AXMPhotoAssetDataCodingKeyAssetURL];

  assetCreationDate = [(AXMPhotoAssetData *)self assetCreationDate];
  [coderCopy encodeObject:assetCreationDate forKey:AXMPhotoAssetDataCodingKeyCreationDate];

  assetUTI = [(AXMPhotoAssetData *)self assetUTI];
  [coderCopy encodeObject:assetUTI forKey:AXMPhotoAssetDataCodingKeyUTI];

  assetLocalIdentifier = [(AXMPhotoAssetData *)self assetLocalIdentifier];
  [coderCopy encodeObject:assetLocalIdentifier forKey:AXMPhotoAssetDataCodingKeyLocalIdentifier];

  assetImageData = [(AXMPhotoAssetData *)self assetImageData];
  [coderCopy encodeObject:assetImageData forKey:AXMPhotoAssetDataCodingKeyImageData];

  assetOrientation = [(AXMPhotoAssetData *)self assetOrientation];
  [coderCopy encodeInt32:assetOrientation forKey:AXMPhotoAssetDataCodingKeyOrientation];
  allowNetworkAccess = [(AXMPhotoAssetData *)self allowNetworkAccess];
  [coderCopy encodeBool:allowNetworkAccess forKey:AXMPhotoAssetDataCodingKeyAllowNetworkAccess];
  photoLibraryURL = [(AXMPhotoAssetData *)self photoLibraryURL];
  [coderCopy encodeObject:photoLibraryURL forKey:AXMPhotoAssetDataCodingKeyPhotoLibraryURL];
}

+ (id)_photoAuthorizationMessage:(int64_t)message
{
  if (message > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1D210 + message);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  assetURL = [(AXMPhotoAssetData *)self assetURL];
  assetCreationDate = [(AXMPhotoAssetData *)self assetCreationDate];
  assetLocalIdentifier = [(AXMPhotoAssetData *)self assetLocalIdentifier];
  assetImageData = [(AXMPhotoAssetData *)self assetImageData];
  assetUTI = [(AXMPhotoAssetData *)self assetUTI];
  v10 = [v3 stringWithFormat:@"<%@ %p URL=%@ creationDate=%@ localIdentifier=%@ data=%@ UTI=%@ orientation=%u>", v4, self, assetURL, assetCreationDate, assetLocalIdentifier, assetImageData, assetUTI, -[AXMPhotoAssetData assetOrientation](self, "assetOrientation")];

  return v10;
}

- (AXMPhotoAssetData)initWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l allowsNetworkAccess:(BOOL)access needsImageData:(BOOL)data
{
  dataCopy = data;
  accessCopy = access;
  identifierCopy = identifier;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = AXMPhotoAssetData;
  v12 = [(AXMPhotoAssetData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(AXMPhotoAssetData *)v12 setAssetLocalIdentifier:identifierCopy];
    [(AXMPhotoAssetData *)v13 setAllowNetworkAccess:accessCopy];
    [(AXMPhotoAssetData *)v13 setPhotoLibraryURL:lCopy];
    if (dataCopy)
    {
      [(AXMPhotoAssetData *)v13 updateAssetDetails];
    }
  }

  return v13;
}

+ (id)phAssetFromLocalIdentifier:(id)identifier photoLibraryURL:(id)l
{
  v27[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  v7 = [objc_alloc(getPHPhotoLibraryClass()) initWithPhotoLibraryURL:lCopy];
  v21 = 0;
  v8 = [v7 openAndWaitWithUpgrade:0 error:&v21];
  v9 = v21;
  v10 = v9;
  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12 & v8)
  {
    librarySpecificFetchOptions = [v7 librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    if ([getPHPhotoLibraryClass() authorizationStatus] == 3)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v14 = getPHAssetClass_softClass;
      v26 = getPHAssetClass_softClass;
      if (!getPHAssetClass_softClass)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __getPHAssetClass_block_invoke;
        v22[3] = &unk_1E7A1C700;
        v22[4] = &v23;
        __getPHAssetClass_block_invoke(v22);
        v14 = v24[3];
      }

      v15 = v14;
      _Block_object_dispose(&v23, 8);
      v27[0] = identifierCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:librarySpecificFetchOptions];

      if ([v17 count])
      {
        firstObject = [v17 firstObject];
LABEL_22:

        goto LABEL_23;
      }

      v19 = AXMediaLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AXMPhotoAssetData phAssetFromLocalIdentifier:identifierCopy photoLibraryURL:v19];
      }
    }

    else
    {
      v17 = AXMediaLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [AXMPhotoAssetData phAssetFromLocalIdentifier:v17 photoLibraryURL:?];
      }
    }

    firstObject = 0;
    goto LABEL_22;
  }

  librarySpecificFetchOptions = AXMediaLogCommon();
  if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_FAULT))
  {
    [(AXMPhotoAssetData *)lCopy phAssetFromLocalIdentifier:v10 photoLibraryURL:librarySpecificFetchOptions];
  }

  firstObject = 0;
LABEL_23:

  return firstObject;
}

- (void)updateAssetDetails
{
  photoLibraryURL = [(AXMPhotoAssetData *)self photoLibraryURL];

  if (photoLibraryURL)
  {
    assetLocalIdentifier = [(AXMPhotoAssetData *)self assetLocalIdentifier];
    photoLibraryURL2 = [(AXMPhotoAssetData *)self photoLibraryURL];
    v6 = [AXMPhotoAssetData phAssetFromLocalIdentifier:assetLocalIdentifier photoLibraryURL:photoLibraryURL2];

    creationDate = [v6 creationDate];
    [(AXMPhotoAssetData *)self setAssetCreationDate:creationDate];

    mainFileURL = [v6 mainFileURL];
    [(AXMPhotoAssetData *)self setAssetURL:mainFileURL];

    getPHImageManagerClass();
    if (objc_opt_respondsToSelector())
    {
      defaultManager = [getPHImageManagerClass() defaultManager];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v10 = getPHImageRequestOptionsClass_softClass;
      v18 = getPHImageRequestOptionsClass_softClass;
      if (!getPHImageRequestOptionsClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getPHImageRequestOptionsClass_block_invoke;
        v14[3] = &unk_1E7A1C700;
        v14[4] = &v15;
        __getPHImageRequestOptionsClass_block_invoke(v14);
        v10 = v16[3];
      }

      v11 = v10;
      _Block_object_dispose(&v15, 8);
      v12 = objc_alloc_init(v10);
      [v12 setResizeMode:2];
      [v12 setDeliveryMode:1];
      [v12 setSynchronous:1];
      [v12 setNetworkAccessAllowed:{-[AXMPhotoAssetData allowNetworkAccess](self, "allowNetworkAccess")}];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__AXMPhotoAssetData_updateAssetDetails__block_invoke;
      v13[3] = &unk_1E7A1D1D8;
      v13[4] = self;
      [defaultManager requestImageDataAndOrientationForAsset:v6 options:v12 resultHandler:v13];
    }
  }
}

void __39__AXMPhotoAssetData_updateAssetDetails__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a2)
  {
    [*(a1 + 32) setAssetImageData:a2];
    [*(a1 + 32) setAssetUTI:v7];
    [*(a1 + 32) setAssetOrientation:a4];
  }

  else
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__AXMPhotoAssetData_updateAssetDetails__block_invoke_cold_1(v8);
    }
  }
}

+ (void)phAssetFromLocalIdentifier:(os_log_t)log photoLibraryURL:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1AE37B000, log, OS_LOG_TYPE_FAULT, "AXMPhotoAssetData: Could not fetch Photo Library using the photo library URL : %@ error: %@", &v3, 0x16u);
}

+ (void)phAssetFromLocalIdentifier:(NSObject *)a1 photoLibraryURL:.cold.2(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = +[AXMPhotoAssetData _photoAuthorizationMessage:](AXMPhotoAssetData, "_photoAuthorizationMessage:", [getPHPhotoLibraryClass() authorizationStatus]);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1AE37B000, a1, OS_LOG_TYPE_FAULT, "AXMPhotoAssetData: PhotoLibrary Authorization Failure - Image resource load will not be available : %@", &v3, 0xCu);
}

+ (void)phAssetFromLocalIdentifier:(uint64_t)a1 photoLibraryURL:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "AXMPhotoAssetData: PHAsset for localIdentifier not found : %@", &v2, 0xCu);
}

@end