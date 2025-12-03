@interface PHAssetResource
+ (NSArray)assetResourcesForLivePhoto:(PHLivePhoto *)livePhoto;
+ (id)_assetResourcesFromPLResources:(id)resources includeMetadata:(BOOL)metadata mediaMetadataVirtualResources:(id)virtualResources asset:(id)asset photoLibrary:(id)library assetHasAdjustments:(BOOL)adjustments includeDerivatives:(BOOL)derivatives includeAdjustmentOverflowDataBlob:(BOOL)self0;
+ (id)_resourcesForManagedAsset:(id)asset includeDerivatives:(BOOL)derivatives;
+ (id)assetResourceForAsset:(id)asset qualityClass:(id)class;
+ (id)assetResourcesForAsset:(id)asset includeDerivatives:(BOOL)derivatives includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob;
+ (id)assetResourcesForAssets:(id)assets includeDerivatives:(BOOL)derivatives includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob;
- (NSString)contextualVideoThumbnailIdentifier;
- (PHAsset)asset;
- (PHAssetResource)initWithResource:(id)resource asset:(id)asset hasAdjustments:(BOOL)adjustments photoLibrary:(id)library;
- (PHAssetResource)initWithType:(int64_t)type livePhoto:(id)photo;
- (UTType)contentType;
- (id)debugDescription;
- (id)description;
- (id)privateFileLoader;
- (int64_t)analysisType;
@end

@implementation PHAssetResource

- (UTType)contentType
{
  v2 = MEMORY[0x1E69C08F0];
  uniformTypeIdentifier = [(PHAssetResource *)self uniformTypeIdentifier];
  v4 = [v2 typeWithIdentifier:uniformTypeIdentifier];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E6982D60];
  }

  v6 = v5;

  return v5;
}

- (PHAsset)asset
{
  v10[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PHAssetResource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  assetLocalIdentifier = [(PHAssetResource *)self assetLocalIdentifier];
  v10[0] = assetLocalIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [PHAsset fetchAssetsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E69BE3C8] prettyMultiLineDescriptionBuilderWithObject:self indent:0];
  v4 = _PHAssetResourceTypeDescription(self->_type);
  [v3 appendName:@"type" object:v4];

  [v3 appendName:@"uti" object:self->_uniformTypeIdentifier];
  [v3 appendName:@"filename" object:self->_originalFilename];
  [v3 appendName:@"asset" object:self->_assetLocalIdentifier];
  [v3 appendName:@"locallyAvailable" BOOLValue:self->_locallyAvailable];
  [v3 appendName:@"fileURL" object:self->_privateFileURL];
  [v3 appendName:@"width" integerValue:self->_pixelWidth];
  [v3 appendName:@"height" integerValue:self->_pixelHeight];
  [v3 appendName:@"fileSize" unsignedIntegerValue:{-[PHAssetResource fileSize](self, "fileSize")}];
  analysisType = [(PHAssetResource *)self analysisType];
  if ((analysisType - 1) > 2)
  {
    v6 = @"small";
  }

  else
  {
    v6 = off_1E75A51F0[analysisType - 1];
  }

  v7 = v6;
  [v3 appendName:@"analysisType" object:v7];

  v8 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:self->_cplResourceType];
  [v3 appendName:@"cplResourceType" object:v8];

  [v3 appendName:@"isCurrent" BOOLValue:self->_current];
  [v3 appendName:@"isInCloud" BOOLValue:self->_inCloud];
  build = [v3 build];

  return build;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = _PHAssetResourceTypeDescription(self->_type);
  v5 = [v3 stringWithFormat:@"type: %@, uti: %@, size: {%lu, %lu}", v4, self->_uniformTypeIdentifier, self->_pixelWidth, self->_pixelHeight];

  if (self->_originalFilename)
  {
    [v5 appendFormat:@", filename: %@", self->_originalFilename];
  }

  [v5 appendFormat:@", asset: %@", self->_assetLocalIdentifier];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@ %p> - %@", v8, self, v5];

  return v9;
}

- (PHAssetResource)initWithType:(int64_t)type livePhoto:(id)photo
{
  photoCopy = photo;
  if (!photoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResource.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"livePhoto"}];
  }

  v37.receiver = self;
  v37.super_class = PHAssetResource;
  v8 = [(PHAssetResource *)&v37 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    assetLocalIdentifier = [photoCopy assetLocalIdentifier];
    assetLocalIdentifier = v9->_assetLocalIdentifier;
    v9->_assetLocalIdentifier = assetLocalIdentifier;

    if (type == 9)
    {
      videoFileLoader = [photoCopy videoFileLoader];
      v21 = [videoFileLoader copy];
      privateFileLoader = v9->_privateFileLoader;
      v9->_privateFileLoader = v21;

      videoURL = [photoCopy videoURL];
      privateFileURL = v9->_privateFileURL;
      v9->_privateFileURL = videoURL;

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [(NSURL *)v9->_privateFileURL path];
      v9->_locallyAvailable = [defaultManager fileExistsAtPath:path];

      videoTypeIdentifier = [photoCopy videoTypeIdentifier];
    }

    else
    {
      if (type != 1)
      {
        uniformTypeIdentifier = [MEMORY[0x1E696AAA8] currentHandler];
        [uniformTypeIdentifier handleFailureInMethod:a2 object:v9 file:@"PHAssetResource.m" lineNumber:701 description:@"Live photo asset resources only supports 'Photo' and 'PairedVideo'"];
        goto LABEL_10;
      }

      imageFileLoader = [photoCopy imageFileLoader];
      v13 = [imageFileLoader copy];
      v14 = v9->_privateFileLoader;
      v9->_privateFileLoader = v13;

      imageURL = [photoCopy imageURL];
      v16 = v9->_privateFileURL;
      v9->_privateFileURL = imageURL;

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [(NSURL *)v9->_privateFileURL path];
      v9->_locallyAvailable = [defaultManager2 fileExistsAtPath:path2];

      videoTypeIdentifier = [photoCopy imageTypeIdentifier];
    }

    uniformTypeIdentifier = v9->_uniformTypeIdentifier;
    v9->_uniformTypeIdentifier = videoTypeIdentifier;
LABEL_10:

    v28 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v9->_uniformTypeIdentifier];
    preferredFilenameExtension = [v28 preferredFilenameExtension];

    if (!preferredFilenameExtension)
    {
      pathExtension = [(NSURL *)v9->_privateFileURL pathExtension];
      if (!pathExtension)
      {
        v31 = @"MOV";
        if (type == 1)
        {
          v31 = @"JPG";
        }

        pathExtension = v31;
      }

      preferredFilenameExtension = pathExtension;
    }

    originalFilename = [photoCopy originalFilename];
    v33 = [originalFilename stringByAppendingPathExtension:preferredFilenameExtension];
    originalFilename = v9->_originalFilename;
    v9->_originalFilename = v33;
  }

  return v9;
}

- (PHAssetResource)initWithResource:(id)resource asset:(id)asset hasAdjustments:(BOOL)adjustments photoLibrary:(id)library
{
  adjustmentsCopy = adjustments;
  v119 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  assetCopy = asset;
  libraryCopy = library;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetResource.m" lineNumber:625 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (assetCopy)
    {
      goto LABEL_3;
    }

LABEL_229:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetResource.m" lineNumber:626 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_3;
  }

  if (!assetCopy)
  {
    goto LABEL_229;
  }

LABEL_3:
  v13 = resourceCopy;
  v14 = assetCopy;
  v15 = &unk_1F102CAA0;
  switch([(__CFString *)v13 resourceType])
  {
    case 0u:
      if (_PHAssetResourceIsTopClassResource(v13))
      {
        version = [(__CFString *)v13 version];
        if (version > 1)
        {
          if (version == 3)
          {
            v16 = PLPhotoKitGetLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_107;
            }

            *buf = 0;
            v17 = "'current' version non-derivative image is invalid, likely resource data error";
            goto LABEL_104;
          }

          if (version != 2)
          {
            goto LABEL_62;
          }

          v15 = &unk_1F102CBA8;
        }

        else if (version)
        {
          if (version != 1)
          {
            goto LABEL_62;
          }

          v15 = &unk_1F102CBC0;
        }

        else
        {
          v15 = &unk_1F102CB90;
        }

        goto LABEL_109;
      }

      dataStore = [(__CFString *)v13 dataStore];
      storeClassID = [objc_opt_class() storeClassID];

      if (storeClassID == 1)
      {
        v15 = &unk_1F102CBD8;
        goto LABEL_109;
      }

      if ([MEMORY[0x1E69BE728] isMasterThumbRecipeID:{-[__CFString recipeID](v13, "recipeID")}])
      {
        v15 = &unk_1F102CBF0;
        goto LABEL_109;
      }

      if ([(__CFString *)v13 recipeID]== 65749)
      {
        goto LABEL_108;
      }

      if (storeClassID == 3)
      {
        goto LABEL_94;
      }

      if (storeClassID)
      {
        v16 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_107;
        }

        *buf = 138412290;
        v116 = v13;
        v17 = "Derivative image resource not supported by PHAssetResource: %@";
        goto LABEL_24;
      }

      if (([(__CFString *)v13 isCPLResource]& 1) != 0)
      {
        goto LABEL_94;
      }

      recipeID = [(__CFString *)v13 recipeID];
      if (adjustmentsCopy)
      {
        v108 = 65941;
      }

      else
      {
        if (recipeID == 65943)
        {
LABEL_233:
          v15 = &unk_1F102CC08;
          goto LABEL_109;
        }

        recipeID = [(__CFString *)v13 recipeID];
        v108 = 65951;
      }

      if (recipeID != v108)
      {
        v16 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_107;
        }

        *buf = 138412290;
        v116 = v13;
        v17 = "Derivative image resource not supported by PHAssetResource: %@";
        goto LABEL_24;
      }

      goto LABEL_233;
    case 1u:
LABEL_62:
      if (!_PHAssetResourceIsTopClassResource(v13))
      {
        dataStore2 = [(__CFString *)v13 dataStore];
        storeClassID2 = [objc_opt_class() storeClassID];

        if (storeClassID2 == 3)
        {
          v16 = PLPhotoKitGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          *buf = 0;
          v17 = "Unexpected derivative video resource in syndication store";
          goto LABEL_104;
        }

        if (storeClassID2 == 2 || !storeClassID2 && ([(__CFString *)v13 isCPLResource]& 1) != 0)
        {
          goto LABEL_94;
        }

        v16 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_107;
        }

        *buf = 0;
        v17 = "Unsupported derivative video type";
        v22 = v16;
        v23 = OS_LOG_TYPE_DEBUG;
        goto LABEL_105;
      }

      version2 = [(__CFString *)v13 version];
      if (version2 > 1)
      {
        if (version2 == 3)
        {
          v16 = PLPhotoKitGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          *buf = 0;
          v17 = "'current' version video is invalid, likely resource data error";
          goto LABEL_104;
        }

        if (version2 != 2)
        {
          goto LABEL_76;
        }

        v15 = &unk_1F102CC38;
      }

      else if (version2)
      {
        if (version2 != 1)
        {
          goto LABEL_76;
        }

        v15 = &unk_1F102CC50;
      }

      else
      {
        v15 = &unk_1F102CC20;
      }

      goto LABEL_109;
    case 2u:
      v15 = &unk_1F102CAB8;
      goto LABEL_109;
    case 3u:
      if ([(__CFString *)v13 isDerivative])
      {
        dataStore3 = [(__CFString *)v13 dataStore];
        storeClassID3 = [objc_opt_class() storeClassID];

        if (storeClassID3 == 3)
        {
          v16 = PLPhotoKitGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          *buf = 0;
          v17 = "Unexpected derivative video complement resource in syndication store";
          goto LABEL_104;
        }

        if (storeClassID3 || ([(__CFString *)v13 isCPLResource]& 1) == 0)
        {
          v16 = PLPhotoKitGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_107;
          }

          *buf = 138412290;
          v116 = v13;
          v17 = "Derivative video complement resource not supported by PHAssetResource: %@";
LABEL_24:
          v22 = v16;
          v23 = OS_LOG_TYPE_DEBUG;
          goto LABEL_55;
        }

LABEL_94:
        v15 = &unk_1F102CAD0;
      }

      else
      {
        version3 = [(__CFString *)v13 version];
        if (version3 > 1)
        {
          if (version3 == 3)
          {
            v16 = PLPhotoKitGetLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_107;
            }

            *buf = 0;
            v17 = "'current' version video complement is invalid, likely resource data error";
            goto LABEL_104;
          }

          if (version3 != 2)
          {
            goto LABEL_82;
          }

          v15 = &unk_1F102CB00;
        }

        else if (version3)
        {
          if (version3 != 1)
          {
            goto LABEL_82;
          }

          v15 = &unk_1F102CB18;
        }

        else
        {
          v15 = &unk_1F102CAE8;
        }
      }

      goto LABEL_109;
    case 4u:
LABEL_76:
      v15 = &unk_1F102CC68;
      goto LABEL_109;
    case 5u:
      uniformTypeIdentifier = [(__CFString *)v13 uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier identifier];
      supplementalResourceAAEType = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
      [supplementalResourceAAEType identifier];
      v27 = v14;
      libraryCopy2 = library;
      v30 = v29 = adjustmentsCopy;
      v31 = libraryCopy;
      v32 = [identifier isEqualToString:v30];

      adjustmentsCopy = v29;
      library = libraryCopy2;
      v14 = v27;

      v82 = v32 == 0;
      libraryCopy = v31;
      if (v82)
      {
        v15 = 0;
      }

      else
      {
        v15 = &unk_1F102CA58;
      }

      goto LABEL_109;
    case 6u:
      goto LABEL_52;
    case 7u:
      goto LABEL_109;
    case 8u:
      version4 = [(__CFString *)v13 version];
      if (version4 > 1)
      {
        if (version4 != 3)
        {
          if (version4 == 2)
          {
            v15 = &unk_1F102CA70;
            goto LABEL_109;
          }

          goto LABEL_52;
        }
      }

      else
      {
        if (!version4)
        {
          v15 = &unk_1F102CA58;
          goto LABEL_109;
        }

        if (version4 != 1)
        {
LABEL_52:
          v15 = &unk_1F102CA88;
          goto LABEL_109;
        }
      }

      v16 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v116 = v13;
        v17 = "Adjustment resource with unsupported version: %@";
        v22 = v16;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_55:
        v38 = 12;
LABEL_106:
        _os_log_impl(&dword_19C86F000, v22, v23, v17, buf, v38);
      }

LABEL_107:

LABEL_108:
      v15 = 0;
LABEL_109:

      if (!v15)
      {
        v42 = 0;
LABEL_222:

        goto LABEL_223;
      }

      v114.receiver = self;
      v114.super_class = PHAssetResource;
      v42 = [(PHAssetResource *)&v114 init];
      if (v42)
      {
        v111 = adjustmentsCopy;
        v112 = libraryCopy;
        uniformTypeIdentifier2 = [(__CFString *)v13 uniformTypeIdentifier];
        identifier2 = [uniformTypeIdentifier2 identifier];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = v13;
          objectID = [(__CFString *)v45 objectID];
          internalResourceObjectID = v42->_internalResourceObjectID;
          v42->_internalResourceObjectID = objectID;
        }

        uuid = [v14 uuid];
        v49 = [(PHObject *)PHAsset localIdentifierWithUUID:uuid];
        assetLocalIdentifier = v42->_assetLocalIdentifier;
        v42->_assetLocalIdentifier = v49;

        objc_storeStrong(&v42->_uniformTypeIdentifier, identifier2);
        integerValue = [v15 integerValue];
        v42->_type = integerValue;
        v52 = v14;
        self = identifier2;
        v53 = 0;
        if (integerValue <= 106)
        {
          switch(integerValue)
          {
            case 1:
            case 2:
            case 3:
            case 19:
              originalFilename = [v52 originalFilename];
              goto LABEL_116;
            case 4:
            case 9:
              originalFilename2 = [v52 originalFilename];
              stringByDeletingPathExtension = [originalFilename2 stringByDeletingPathExtension];

              v57 = _PHAssetResourceOriginalFilenameFromBasePlusUTI(stringByDeletingPathExtension, self);
              goto LABEL_141;
            case 5:
              v65 = MEMORY[0x1E69C08F0];
              v66 = [MEMORY[0x1E6982C40] typeWithIdentifier:self];
              stringByDeletingPathExtension = [v65 preferredOrFallbackFilenameExtensionForType:v66];

              v57 = [@"FullSizeRender" stringByAppendingPathExtension:stringByDeletingPathExtension];
LABEL_141:
              v53 = v57;

              goto LABEL_151;
            case 6:
            case 10:
              v53 = @"FullSizeRender.mov";
              goto LABEL_151;
            case 7:
              v53 = @"Adjustments.plist";
              goto LABEL_151;
            case 8:
              v53 = @"PenultimateFullSizeRender.jpg";
              goto LABEL_151;
            case 11:
            case 12:
              v53 = @"PenultimateFullSizeRender.mov";
              goto LABEL_151;
            case 13:
            case 14:
              originalFilename3 = [v52 originalFilename];
              stringByDeletingPathExtension2 = [originalFilename3 stringByDeletingPathExtension];
              v60 = [stringByDeletingPathExtension2 stringByAppendingString:@"S"];

              v53 = _PHAssetResourceOriginalFilenameFromBasePlusAsset(v60, v52, 0);

              goto LABEL_151;
            case 15:
              originalFilename4 = [v52 originalFilename];
              stringByDeletingPathExtension3 = [originalFilename4 stringByDeletingPathExtension];
              v63 = [stringByDeletingPathExtension3 stringByAppendingString:@"S"];

              v64 = _PHAssetResourceOriginalFilenameFromBasePlusUTI(v63, self);
              goto LABEL_145;
            case 16:
              originalFilename5 = [v52 originalFilename];
              stringByDeletingPathExtension4 = [originalFilename5 stringByDeletingPathExtension];
              v63 = [stringByDeletingPathExtension4 stringByAppendingString:@"O"];

              v64 = [v63 stringByAppendingPathExtension:*MEMORY[0x1E69C0E18]];
LABEL_145:
              v53 = v64;

              break;
            case 20:
              v53 = @"Alchemist.heic";
              break;
            default:
              goto LABEL_151;
          }

          goto LABEL_151;
        }

        if (integerValue > 113)
        {
          if (integerValue <= 116)
          {
            if (integerValue == 114)
            {
              v53 = @"GenerativePlaygroundFaceResources.dat";
              goto LABEL_151;
            }

            if (integerValue != 116)
            {
              goto LABEL_151;
            }

            originalFilename = PLResourceAlchemistV2OneUpFilename();
          }

          else
          {
            switch(integerValue)
            {
              case 'u':
                originalFilename = PLResourceAlchemistV2Widget1x1Filename();
                break;
              case 'v':
                originalFilename = PLResourceAlchemistV2Widget1x2Filename();
                break;
              case 'w':
                originalFilename = PLResourceAlchemistV2WallpaperFilename();
                break;
              default:
                goto LABEL_151;
            }
          }
        }

        else
        {
          if (integerValue > 108)
          {
            switch(integerValue)
            {
              case 'm':
                v53 = @"WallpaperComputeResources.dat";
                break;
              case 'n':
                v53 = @"AdjustmentsSecondary.data";
                break;
              case 'p':
                v53 = @"ComputeSyncWrapper.dat";
                break;
            }

LABEL_151:

            originalFilename = v42->_originalFilename;
            v42->_originalFilename = &v53->isa;

            objc_storeStrong(&v42->_photoLibrary, library);
            if ([(__CFString *)v13 localAvailability]>= 1)
            {
              v42->_locallyAvailable = 1;
              dataStoreKey = [(__CFString *)v13 dataStoreKey];
              v71 = [dataStoreKey fileURLForAssetID:v52];
              privateFileURL = v42->_privateFileURL;
              v42->_privateFileURL = v71;
            }

            v42->_pixelWidth = [(__CFString *)v13 orientedWidth];
            v42->_pixelHeight = [(__CFString *)v13 orientedHeight];
            v42->_fileSize = [(__CFString *)v13 dataLength];
            trashedDate = [(__CFString *)v13 trashedDate];
            trashedDate = v42->_trashedDate;
            v42->_trashedDate = trashedDate;

            v42->_trashed = [(__CFString *)v13 trashedState]!= 0;
            v75 = [objc_alloc(MEMORY[0x1E69BE738]) initWithResource:v13];
            backingResourceIdentity = v42->_backingResourceIdentity;
            v42->_backingResourceIdentity = v75;

            objectID2 = [v52 objectID];
            assetObjectID = v42->_assetObjectID;
            v42->_assetObjectID = objectID2;

            v42->_orientation = [(__CFString *)v13 orientation];
            dataStore4 = [(__CFString *)v13 dataStore];
            v42->_dataStoreClassID = [objc_opt_class() storeClassID];

            version5 = [(__CFString *)v13 version];
            if (v111)
            {
              v81 = 2;
            }

            else
            {
              v81 = 0;
            }

            v82 = version5 == 3 || v81 == version5;
            v83 = v82;
            v42->_current = v83;
            libraryID = [v52 libraryID];
            libraryID = v42->_libraryID;
            v42->_libraryID = libraryID;

            v42->_inCloud = [(__CFString *)v13 isInCloud];
            cplType = [(__CFString *)v13 cplType];
            libraryCopy = v112;
            if (!cplType)
            {
              goto LABEL_220;
            }

            v87 = cplType;
            v88 = 0;
            type = v42->_type;
            if (type > 100)
            {
              if ((type - 101) >= 0x13)
              {
                goto LABEL_221;
              }
            }

            else if (type > 10)
            {
              if ((type - 13) >= 8)
              {
                if (type == 11)
                {
                  if (cplType == 20)
                  {
                    v88 = 20;
                    goto LABEL_221;
                  }

                  v96 = PLImageManagerGetLog();
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_219;
                  }

                  v97 = @"video_cmpl_base";
                  v103 = @"video_cmpl_base";
                  v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"video_cmpl_base";
                  v117 = 2114;
                  v118 = v99;
                }

                else
                {
                  if (type != 12)
                  {
                    goto LABEL_221;
                  }

                  if (cplType == 25)
                  {
                    v88 = 25;
                    goto LABEL_221;
                  }

                  v96 = PLImageManagerGetLog();
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_219;
                  }

                  v97 = @"video_base";
                  v104 = @"video_base";
                  v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"video_base";
                  v117 = 2114;
                  v118 = v99;
                }

LABEL_218:
                _os_log_impl(&dword_19C86F000, v96, OS_LOG_TYPE_ERROR, "Asset resource with type %{public}@ has incompatible CPLResourceType %{public}@, defaulting to CPLResourceTypeUnknown", buf, 0x16u);

LABEL_219:
                goto LABEL_220;
              }
            }

            else if (type > 5)
            {
              if (type > 7)
              {
                if (type == 8)
                {
                  if (cplType == 15)
                  {
                    v88 = 15;
                    goto LABEL_221;
                  }

                  v96 = PLImageManagerGetLog();
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_219;
                  }

                  v97 = @"photo_base";
                  v102 = @"photo_base";
                  v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"photo_base";
                  v117 = 2114;
                  v118 = v99;
                }

                else if (type == 9)
                {
                  if (cplType == 18)
                  {
                    v88 = 18;
                    goto LABEL_221;
                  }

                  v96 = PLImageManagerGetLog();
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_219;
                  }

                  v97 = @"video_cmpl";
                  v100 = @"video_cmpl";
                  v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"video_cmpl";
                  v117 = 2114;
                  v118 = v99;
                }

                else
                {
                  if (cplType == 19)
                  {
                    v88 = 19;
                    goto LABEL_221;
                  }

                  v96 = PLImageManagerGetLog();
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_219;
                  }

                  v97 = @"video_cmpl_full";
                  v101 = @"video_cmpl_full";
                  v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"video_cmpl_full";
                  v117 = 2114;
                  v118 = v99;
                }

                goto LABEL_218;
              }

              if (type == 6)
              {
                if (cplType == 16)
                {
                  v88 = 16;
                  goto LABEL_221;
                }

                v96 = PLImageManagerGetLog();
                if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_219;
                }

                v97 = @"video_full";
                v98 = @"video_full";
                v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                *buf = 138543618;
                v116 = @"video_full";
                v117 = 2114;
                v118 = v99;
                goto LABEL_218;
              }
            }

            else
            {
              if ((type - 1) < 3)
              {
                if (cplType == 1)
                {
                  v88 = 1;
LABEL_221:
                  v42->_cplResourceType = v88;
                  goto LABEL_222;
                }

                v90 = PLImageManagerGetLog();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  v91 = _PHAssetResourceTypeDescription(type);
                  v92 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = v91;
                  v117 = 2114;
                  v118 = v92;
                  _os_log_impl(&dword_19C86F000, v90, OS_LOG_TYPE_ERROR, "Asset resource with type %{public}@ has incompatible CPLResourceType %{public}@, defaulting to CPLResourceTypeUnknown", buf, 0x16u);
                }

LABEL_220:
                v88 = 0;
                goto LABEL_221;
              }

              if (type != 4)
              {
                if (type != 5)
                {
                  goto LABEL_221;
                }

                if (cplType == 2)
                {
                  v88 = 2;
                  goto LABEL_221;
                }

                v96 = PLImageManagerGetLog();
                if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_219;
                }

                v97 = @"photo_full";
                v105 = @"photo_full";
                v99 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                *buf = 138543618;
                v116 = @"photo_full";
                v117 = 2114;
                v118 = v99;
                goto LABEL_218;
              }

              if (cplType != 17)
              {
                v93 = PLImageManagerGetLog();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                {
                  v94 = @"photo_alt";
                  v95 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v87];
                  *buf = 138543618;
                  v116 = @"photo_alt";
                  v117 = 2114;
                  v118 = v95;
                  _os_log_impl(&dword_19C86F000, v93, OS_LOG_TYPE_ERROR, "Asset resource with type %{public}@ has incompatible CPLResourceType %{public}@, defaulting to CPLResourceTypeUnknown", buf, 0x16u);
                }
              }
            }

            v88 = v87;
            goto LABEL_221;
          }

          if (integerValue != 107)
          {
            v53 = @"Adjustments.data";
            goto LABEL_151;
          }

          originalFilename = _PHAssetResourceOriginalFilenameFromBasePlusAsset(@"DeferredPreview", v52, 1);
        }

LABEL_116:
        v53 = originalFilename;
        goto LABEL_151;
      }

LABEL_223:

      return v42;
    case 9u:
      version6 = [(__CFString *)v13 version];
      if (!version6)
      {
        v15 = &unk_1F102CC98;
        goto LABEL_109;
      }

      if (version6 == 2)
      {
        v15 = &unk_1F102CCB0;
        goto LABEL_109;
      }

      v16 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 0;
      v17 = "Media metadata only valid for original or adjusted versions";
      goto LABEL_104;
    case 0xAu:
LABEL_82:
      if ([v14 isVideo])
      {
        v15 = &unk_1F102CB30;
      }

      else
      {
        v15 = &unk_1F102CB48;
      }

      goto LABEL_109;
    case 0xBu:
      v15 = &unk_1F102CB60;
      goto LABEL_109;
    case 0xCu:
    case 0x1Fu:
      v16 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 0;
      v17 = "Unsupported resource type";
      goto LABEL_104;
    case 0xDu:
      if ([v14 isVideo])
      {
        v15 = &unk_1F102CB78;
        goto LABEL_109;
      }

      v16 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 0;
      v17 = "Unsupported metadata for image type";
LABEL_104:
      v22 = v16;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_105:
      v38 = 2;
      goto LABEL_106;
    case 0xEu:
      recipeID2 = [(__CFString *)v13 recipeID];
      v15 = 0;
      if ((recipeID2 - 327687) <= 0xE && ((1 << (recipeID2 - 7)) & 0x5545) != 0)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:PHAssetResourceTypeForDataDerivativeRecipeID(recipeID2)];
      }

      goto LABEL_109;
    case 0xFu:
      if ([(__CFString *)v13 recipeID]== 66137)
      {
        v15 = &unk_1F102CC80;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_109;
    case 0x10u:
      v15 = &unk_1F102CCC8;
      goto LABEL_109;
    default:
      v16 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 0;
      v17 = "Asset resource type unknown";
      goto LABEL_104;
  }
}

+ (NSArray)assetResourcesForLivePhoto:(PHLivePhoto *)livePhoto
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (livePhoto)
  {
    v3 = livePhoto;
    v4 = [[PHAssetResource alloc] initWithType:1 livePhoto:v3];
    v5 = [[PHAssetResource alloc] initWithType:9 livePhoto:v3];

    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to create live photo asset resources", v10, 2u);
      }

      v8 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v11[0] = v4;
      v11[1] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

+ (id)_resourcesForManagedAsset:(id)asset includeDerivatives:(BOOL)derivatives
{
  v5 = MEMORY[0x1E695DF70];
  assetCopy = asset;
  array = [v5 array];
  v8 = MEMORY[0x1E695DEC8];
  modernResources = [assetCopy modernResources];
  allObjects = [modernResources allObjects];
  v11 = [v8 arrayWithArray:allObjects];

  v12 = [assetCopy nonPersistedResourcesWithOptions:0];
  v13 = [assetCopy virtualResourcesThatReplaceMissingPersistedResources:v11];

  [array addObjectsFromArray:v11];
  [array addObjectsFromArray:v12];
  [array addObjectsFromArray:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PHAssetResource__resourcesForManagedAsset_includeDerivatives___block_invoke;
  v16[3] = &__block_descriptor_33_e22_B16__0___PLResource__8l;
  derivativesCopy = derivatives;
  v14 = [array _pl_filter:v16];

  return v14;
}

uint64_t __64__PHAssetResource__resourcesForManagedAsset_includeDerivatives___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isDerivative])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

+ (id)_assetResourcesFromPLResources:(id)resources includeMetadata:(BOOL)metadata mediaMetadataVirtualResources:(id)virtualResources asset:(id)asset photoLibrary:(id)library assetHasAdjustments:(BOOL)adjustments includeDerivatives:(BOOL)derivatives includeAdjustmentOverflowDataBlob:(BOOL)self0
{
  adjustmentsCopy = adjustments;
  metadataCopy = metadata;
  blobCopy = blob;
  v71 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  virtualResourcesCopy = virtualResources;
  assetCopy = asset;
  libraryCopy = library;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = resourcesCopy;
  v18 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
  v51 = v17;
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    v21 = 0x1E75A0000uLL;
    do
    {
      v22 = 0;
      do
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        IsTopClassResource = _PHAssetResourceIsTopClassResource(v23);
        if ((derivatives || IsTopClassResource) && (metadataCopy || [v23 resourceType] != 9 && objc_msgSend(v23, "resourceType") != 13) && (blobCopy || objc_msgSend(v23, "resourceType") != 6) && (!objc_msgSend(v23, "isDerivative") || objc_msgSend(v23, "version") || !adjustmentsCopy))
        {
          if ([v23 version] != 2 || adjustmentsCopy)
          {
            v31 = [objc_alloc(*(v21 + 3664)) initWithResource:v23 asset:assetCopy hasAdjustments:adjustmentsCopy photoLibrary:libraryCopy];
            v25 = v31;
            if (v31)
            {
              if ([v31 type]== 1 || [v25 type]== 2 || [v25 type]== 3)
              {
                [v16 insertObject:v25 atIndex:0];
              }

              else
              {
                [v16 addObject:v25];
              }
            }
          }

          else
          {
            v25 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              [assetCopy uuid];
              v26 = v16;
              v27 = metadataCopy;
              v28 = v21;
              v30 = v29 = blobCopy;
              *buf = 138412290;
              v66 = v30;
              _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "Asset %@ with no adjustments has adjusted resource, resource will be ignored", buf, 0xCu);

              blobCopy = v29;
              v21 = v28;
              metadataCopy = v27;
              v16 = v26;
              v17 = v51;
            }
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v32 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
      v19 = v32;
    }

    while (v32);
  }

  v33 = virtualResourcesCopy;
  if (metadataCopy)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v34 = virtualResourcesCopy;
    v35 = [v34 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v58;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v58 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[PHAssetResource alloc] initWithResource:*(*(&v57 + 1) + 8 * i) asset:assetCopy hasAdjustments:adjustmentsCopy photoLibrary:libraryCopy];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __188__PHAssetResource__assetResourcesFromPLResources_includeMetadata_mediaMetadataVirtualResources_asset_photoLibrary_assetHasAdjustments_includeDerivatives_includeAdjustmentOverflowDataBlob___block_invoke;
          v55[3] = &unk_1E75A6510;
          v40 = v39;
          v56 = v40;
          v41 = [v16 indexOfObjectPassingTest:v55];
          if (v40)
          {
            if (v41 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v16 removeObjectAtIndex:v41];
            }

            [v16 addObject:v40];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v36);
    }

    v33 = virtualResourcesCopy;
  }

  v42 = [v16 indexesOfObjectsPassingTest:&__block_literal_global_20104];
  if ([v42 count] >= 2)
  {
    v43 = [v16 objectsAtIndexes:v42];
    [v16 removeObjectsAtIndexes:v42];
    v44 = [v43 sortedArrayUsingComparator:&__block_literal_global_50];
    v45 = PLImageManagerGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [v42 count];
      uuid = [assetCopy uuid];
      *buf = 134218242;
      v66 = v46;
      v67 = 2114;
      v68 = uuid;
      _os_log_impl(&dword_19C86F000, v45, OS_LOG_TYPE_ERROR, "%ld original photo image resources found for asset %{public}@, not fatal, picking best and continuing", buf, 0x16u);
    }

    lastObject = [v43 lastObject];
    [v16 addObject:lastObject];
  }

  return v16;
}

uint64_t __188__PHAssetResource__assetResourcesFromPLResources_includeMetadata_mediaMetadataVirtualResources_asset_photoLibrary_assetHasAdjustments_includeDerivatives_includeAdjustmentOverflowDataBlob___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 backingResourceIdentity];
  v7 = [v6 recipeID];
  v8 = [v5 backingResourceIdentity];
  v9 = [v8 recipeID];

  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v4 backingResourceIdentity];
    v12 = [v11 recipeID];

    if (v12)
    {
      v13 = [v5 backingResourceIdentity];
      v14 = [v13 recipeID];

      if (v14)
      {
        v15 = [v4 backingResourceIdentity];
        v16 = [v15 recipeID];
        v17 = [v5 backingResourceIdentity];
        v18 = [v17 recipeID];

        if (v16 > v18)
        {
          v10 = 1;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (NSString)contextualVideoThumbnailIdentifier
{
  if ([(PHAssetResource *)self type]== (PHAssetResourceTypePhotoProxy|0x60))
  {
    v3 = MEMORY[0x1E69BE6D0];
    privateFileURL = [(PHAssetResource *)self privateFileURL];
    v5 = [v3 contextualVideoThumbnailIdentifierFromFileURL:privateFileURL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)analysisType
{
  if (!self->_current)
  {
    return 3;
  }

  type = self->_type;
  if (type > 101)
  {
    switch(type)
    {
      case 'f':
        return 0;
      case 'g':
        if (self->_dataStoreClassID == 3)
        {
          return 1;
        }

        v5 = self->_cplResourceType - 1;
        if (v5 < 5)
        {
          return qword_19CB29A20[v5];
        }

        break;
      case 'k':
        return 2;
    }

    return 3;
  }

  if (type != 1 && type != 5)
  {
    return 3;
  }

  if (self->_dataStoreClassID == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)privateFileLoader
{
  v2 = _Block_copy(self->_privateFileLoader);

  return v2;
}

+ (id)assetResourcesForAssets:(id)assets includeDerivatives:(BOOL)derivatives includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  memset(v33, 0, sizeof(v33));
  if ([assetsCopy countByEnumeratingWithState:v33 objects:v34 count:16] && (objc_msgSend(**(&v33[0] + 1), "photoLibrary"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    photoLibrary = [v12 photoLibrary];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke;
    v22[3] = &unk_1E75A65F0;
    v23 = assetsCopy;
    v24 = photoLibrary;
    v27 = a2;
    selfCopy = self;
    v25 = v13;
    derivativesCopy = derivatives;
    metadataCopy = metadata;
    blobCopy = blob;
    v29 = 0;
    v16 = dictionary;
    v26 = v16;
    v17 = photoLibrary;
    v18 = v13;
    [v17 performBlockAndWait:v22];
    v19 = v26;
    v20 = v16;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F8];
  }

  return v20;
}

void __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v32 + 1) + 8 * v7) uuid];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x1E69BE540] fetchRequest];
  [v9 setFetchBatchSize:100];
  v38[0] = @"additionalAttributes";
  v38[1] = @"additionalAttributes.mediaMetadata";
  v38[2] = @"master";
  v38[3] = @"master.mediaMetadata";
  v38[4] = @"modernResources";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v2];
  [v9 setPredicate:v11];

  v12 = [*(a1 + 40) managedObjectContext];
  v13 = qos_class_self() == QOS_CLASS_USER_INITIATED || qos_class_self() == QOS_CLASS_USER_INTERACTIVE;
  v14 = objc_alloc(MEMORY[0x1E69BE400]);
  v15 = NSStringFromSelector(*(a1 + 64));
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke_2;
  v30[3] = &unk_1E75A65A0;
  v31 = *(a1 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke_3;
  v22[3] = &unk_1E75A65C8;
  v16 = *(a1 + 32);
  v17 = *(a1 + 72);
  v23 = v16;
  v26 = v17;
  v28 = *(a1 + 84);
  v24 = *(a1 + 48);
  v29 = *(a1 + 86);
  v27 = *(a1 + 80);
  v25 = *(a1 + 56);
  v18 = [v14 initWithName:v15 fetchRequest:v9 context:v12 options:v13 generateContextBlock:v30 didFetchObjectIDsBlock:0 processResultBlock:v22];

  v21 = 0;
  LOBYTE(v15) = [v18 processObjectsWithError:&v21];
  v19 = v21;
  if ((v15 & 1) == 0)
  {
    v20 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v19;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Error while enumerating assets: %@", buf, 0xCu);
    }
  }
}

id __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69BE698]);
  [v2 setRequiredState:6];
  [v2 setRefreshesAfterSave:0];
  [v2 setAutomaticallyPinToFirstFetch:0];
  [v2 setLibraryRole:0];
  v3 = MEMORY[0x1E69BE670];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-worker", "+[PHAssetResource(Private) assetResourcesForAssets:includeDerivatives:includeMetadata:includeAdjustmentOverflowDataBlob:]_block_invoke_2"];
  v5 = [v4 UTF8String];
  v6 = [*(a1 + 32) photoLibraryBundle];
  v7 = [v3 newPhotoLibraryWithName:v5 loadedFromBundle:v6 options:v2 error:0];
  v8 = v7;

  v9 = [v7 managedObjectContext];

  return v9;
}

void __121__PHAssetResource_Private__assetResourcesForAssets_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [v10 uuid];
      v12 = [v4 uuid];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = [*(a1 + 56) _resourcesForManagedAsset:v4 includeDerivatives:*(a1 + 68)];
    v16 = *(a1 + 56);
    v17 = *(a1 + 69);
    if (v17 == 1)
    {
      v18 = [v4 mediaMetadataVirtualResources];
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1 + 40);
    v20 = [v4 hasAdjustments];
    BYTE1(v22) = *(a1 + 70);
    LOBYTE(v22) = *(a1 + 68);
    v21 = [v16 _assetResourcesFromPLResources:v15 includeMetadata:v17 mediaMetadataVirtualResources:v18 asset:v4 photoLibrary:v19 assetHasAdjustments:v20 includeDerivatives:v22 includeAdjustmentOverflowDataBlob:?];
    if (v17)
    {
    }

    os_unfair_lock_lock((a1 + 64));
    [*(a1 + 48) setObject:v21 forKeyedSubscript:v14];
    os_unfair_lock_unlock((a1 + 64));
  }

  else
  {
LABEL_9:
    v14 = v5;
  }

LABEL_18:
}

+ (id)assetResourcesForAsset:(id)asset includeDerivatives:(BOOL)derivatives includeMetadata:(BOOL)metadata includeAdjustmentOverflowDataBlob:(BOOL)blob
{
  assetCopy = asset;
  array = [MEMORY[0x1E695DF70] array];
  photoLibrary = [assetCopy photoLibrary];
  v12PhotoLibrary = [photoLibrary photoLibrary];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __120__PHAssetResource_Private__assetResourcesForAsset_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke;
  v20[3] = &unk_1E75A6578;
  v21 = assetCopy;
  v22 = v12PhotoLibrary;
  metadataCopy = metadata;
  selfCopy = self;
  derivativesCopy = derivatives;
  blobCopy = blob;
  v14 = array;
  v23 = v14;
  v15 = v12PhotoLibrary;
  v16 = assetCopy;
  [v15 performBlockAndWait:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

void __120__PHAssetResource_Private__assetResourcesForAsset_includeDerivatives_includeMetadata_includeAdjustmentOverflowDataBlob___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [*(a1 + 32) objectID];
  v7 = [v5 predicateWithFormat:@"self == %@", v6];
  [v4 setPredicate:v7];

  v8 = [*(a1 + 40) managedObjectContext];
  v9 = [v8 executeFetchRequest:v4 error:0];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [*(a1 + 40) managedObjectContext];
    [v11 refreshObject:v10 mergeChanges:{objc_msgSend(v10, "hasChanges")}];

    v12 = [*(a1 + 32) isWalrusEnabled];
    v13 = MEMORY[0x1E69BE540];
    v14 = [v10 objectID];
    v15 = [*(a1 + 40) managedObjectContext];
    v26 = 0;
    v16 = [v13 fetchResourcesForAssetWithObjectID:v14 inContext:v15 versions:0 includeVirtualResources:1 allowDerivatives:1 excludeDynamicCPLResources:v12 additionalPredicate:0 relationshipKeyPathsForPrefetching:0 error:&v26];
    v17 = v26;

    v18 = *(a1 + 64);
    if (v18 == 1)
    {
      v19 = [v10 mediaMetadataVirtualResources];
      LOBYTE(v18) = *(a1 + 64);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = [v21 photoLibrary];
    v23 = [v10 hasAdjustments];
    LOWORD(v25) = *(a1 + 65);
    v24 = [v20 _assetResourcesFromPLResources:v16 includeMetadata:v18 & 1 mediaMetadataVirtualResources:v19 asset:v21 photoLibrary:v22 assetHasAdjustments:v23 includeDerivatives:v25 includeAdjustmentOverflowDataBlob:?];

    if (v24)
    {
      [*(a1 + 48) addObjectsFromArray:v24];
    }
  }
}

+ (id)assetResourceForAsset:(id)asset qualityClass:(id)class
{
  assetCopy = asset;
  classCopy = class;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__20186;
  v25 = __Block_byref_object_dispose__20187;
  v26 = 0;
  photoLibrary = [assetCopy photoLibrary];
  v8PhotoLibrary = [photoLibrary photoLibrary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PHAssetResource_Private__assetResourceForAsset_qualityClass___block_invoke;
  v15[3] = &unk_1E75A9B78;
  v10 = assetCopy;
  v16 = v10;
  v11 = classCopy;
  v17 = v11;
  v19 = &v21;
  selfCopy = self;
  v12 = photoLibrary;
  v18 = v12;
  [v8PhotoLibrary performBlockAndWait:v15];

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __63__PHAssetResource_Private__assetResourceForAsset_qualityClass___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 photoLibrary];
  v4 = [v3 managedObjectContext];

  v5 = MEMORY[0x1E69BE540];
  v6 = [*(a1 + 32) objectID];
  v7 = [v5 assetWithObjectID:v6 inManagedObjectContext:v4];

  v8 = [*(a1 + 32) isWalrusEnabled];
  v9 = MEMORY[0x1E69BE540];
  v28 = v7;
  v10 = [v7 objectID];
  v33 = 0;
  v27 = v4;
  v11 = [v9 fetchResourcesForAssetWithObjectID:v10 inContext:v4 versions:0 includeVirtualResources:1 allowDerivatives:1 excludeDynamicCPLResources:v8 additionalPredicate:0 relationshipKeyPathsForPrefetching:0 error:&v33];
  v26 = v33;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 dataStore];
        if ([*(a1 + 40) isTable])
        {
          v19 = [v17 recipeID];
          v20 = [*(a1 + 40) backingImageFormat];
          [v20 formatID];
          v21 = PLTableThumbnailRecipeIDFromFormatID();

          if (v19 == v21)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if ([*(a1 + 40) isThumbnail])
          {
            if (([MEMORY[0x1E69BE728] isMasterThumbRecipeID:{objc_msgSend(v17, "recipeID")}] & 1) == 0)
            {
              goto LABEL_15;
            }

LABEL_11:
            v22 = [objc_alloc(*(a1 + 64)) initWithResource:v17 asset:*(a1 + 32) hasAdjustments:objc_msgSend(v28 photoLibrary:{"hasAdjustments"), *(a1 + 48)}];
            v23 = *(*(a1 + 56) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            goto LABEL_15;
          }

          if (PLDataStoreHasClassID())
          {
            if ([v17 isCPLResource])
            {
              v25 = [v17 cplType];
              if (v25 == [*(a1 + 40) backingCPLResourceType])
              {
                goto LABEL_11;
              }
            }
          }
        }

LABEL_15:
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }
}

@end