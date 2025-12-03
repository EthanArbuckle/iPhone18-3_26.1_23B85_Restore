@interface PHPTPAsset
+ (BOOL)isMovieType:(int64_t)type;
+ (BOOL)isPhotoType:(int64_t)type;
+ (int64_t)ptpTrashedStateForResourceType:(int64_t)type;
- (BOOL)isMovie;
- (BOOL)isPhoto;
- (BOOL)isPrimary;
- (BOOL)isRender;
- (CGSize)imagePixSize;
- (CGSize)thumbPixSize;
- (NSString)fullDirectoryPath;
- (PHPTPAsset)initWithPTPAsset:(id)asset;
- (PHPTPAsset)initWithPhotosAsset:(id)asset photosResource:(id)resource;
- (PHPTPAsset)initWithPhotosAsset:(id)asset url:(id)url resourceType:(int64_t)type orientation:(unsigned int)orientation;
- (id)_prettyDescriptionWithIndent:(int64_t)indent;
- (id)_resourceFilenameForFilename:(id)filename assetResource:(id)resource;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation PHPTPAsset

- (CGSize)thumbPixSize
{
  width = self->_thumbPixSize.width;
  height = self->_thumbPixSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imagePixSize
{
  width = self->_imagePixSize.width;
  height = self->_imagePixSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_prettyDescriptionWithIndent:(int64_t)indent
{
  v4 = [MEMORY[0x1E69BE3C8] prettyMultiLineDescriptionBuilderWithObject:self indent:indent];
  [v4 appendName:@"resourceHandle" typeCode:"@" value:&self->_resourceHandle];
  [v4 appendName:@"dcfFilename" typeCode:"@" value:&self->_dcfFilename];
  [v4 appendName:@"capturedFilename" typeCode:"@" value:&self->_capturedFilename];
  [v4 appendName:@"deleted" typeCode:"B" value:&self->_deleted];
  [v4 appendName:@"fileSystemFilename" typeCode:"@" value:&self->_fileSystemFilename];
  fullDirectoryPath = [(PHPTPAsset *)self fullDirectoryPath];
  [v4 appendName:@"fullDirectoryPath" object:fullDirectoryPath];

  [v4 appendName:@"objectCompressedSize" typeCode:"@" value:&self->_objectCompressedSize];
  [v4 appendName:@"fingerprint" typeCode:"@" value:&self->_fingerprint];
  [v4 appendName:@"originatingAssetID" typeCode:"@" value:&self->_originatingAssetID];
  [v4 appendName:@"thumbOffset" typeCode:"@" value:&self->_thumbOffset];
  [v4 appendName:@"thumbCompressedSize" typeCode:"@" value:&self->_thumbCompressedSize];
  [v4 appendName:@"imagePixSize" typeCode:"{CGSize=dd}" value:&self->_imagePixSize];
  [v4 appendName:@"thumbPixSize" typeCode:"{CGSize=dd}" value:&self->_thumbPixSize];
  [v4 appendName:@"desiredOrientation" typeCode:"q" value:&self->_desiredOrientation];
  [v4 appendName:@"modificationDateString" typeCode:"@" value:&self->_modificationDateString];
  [v4 appendName:@"captureDateString" typeCode:"@" value:&self->_captureDateString];
  [v4 appendName:@"durationString" typeCode:"@" value:&self->_durationString];
  [v4 appendName:@"locationString" typeCode:"@" value:&self->_locationString];
  [v4 appendName:@"groupUUID" typeCode:"@" value:&self->_groupUUID];
  [v4 appendName:@"burstUUID" typeCode:"@" value:&self->_burstUUID];
  [v4 appendName:@"burstPicked" typeCode:"B" value:&self->_burstPicked];
  [v4 appendName:@"burstFavorite" typeCode:"B" value:&self->_burstFavorite];
  [v4 appendName:@"burstFirstPicked" typeCode:"B" value:&self->_burstFirstPicked];
  [v4 appendName:@"highFrameRateVideo" typeCode:"B" value:&self->_highFrameRateVideo];
  [v4 appendName:@"timeLapseVideo" typeCode:"B" value:&self->_timeLapseVideo];
  [v4 appendName:@"relatedUUID" typeCode:"@" value:&self->_relatedUUID];
  [v4 appendName:@"conversionGroup" typeCode:"q" value:&self->_conversionGroup];
  [v4 appendName:@"videoCodec" typeCode:"I" value:&self->_videoCodec];
  [v4 appendName:@"contentType" typeCode:"@" value:&self->_contentType];
  build = [v4 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PHMutablePTPAsset alloc];

  return [(PHPTPAsset *)v4 initWithPTPAsset:self];
}

+ (int64_t)ptpTrashedStateForResourceType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  if (type > 107)
  {
    switch(type)
    {
      case 'l':
        v8 = PLPTPGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithInteger:108];
          *buf = 138412290;
          typeCopy = v9;
          _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Unexpected request for trashed state of resource type %@", buf, 0xCu);
        }

        break;
      case 'n':
        return 0x10000;
      case 'q':
        return 0x8000;
      default:
LABEL_28:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:469 description:{@"Unhandled resource type (%lu) in %s", type, "+[PHPTPAsset ptpTrashedStateForResourceType:]"}];

        break;
    }

    return 0;
  }

  else
  {
    result = 1;
    switch(type)
    {
      case 1:
      case 2:
        return result;
      case 3:
        result = 512;
        break;
      case 4:
        result = 2048;
        break;
      case 5:
        result = 4;
        break;
      case 6:
        result = 8;
        break;
      case 7:
        result = 2;
        break;
      case 8:
        result = 128;
        break;
      case 9:
        result = 4096;
        break;
      case 10:
        result = 1024;
        break;
      case 11:
        result = 0x4000;
        break;
      case 12:
        result = 256;
        break;
      case 13:
      case 14:
      case 15:
      case 19:
      case 20:
        v7 = PLPTPGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
        }

        return 0;
      case 16:
        result = 64;
        break;
      case 17:
        result = 0x2000;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

+ (BOOL)isMovieType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  if (type > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << type) & 0x301BA) == 0)
  {
    if (((1 << type) & 0x1E44) != 0)
    {
      return 1;
    }

    if (((1 << type) & 0x18E000) != 0)
    {
      v7 = PLPTPGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

LABEL_9:
    if ((type - 108) > 5 || ((1 << (type - 108)) & 0x25) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:384 description:{@"Unhandled resource type (%lu) in %s", type, "+[PHPTPAsset isMovieType:]"}];
    }
  }

  return 0;
}

+ (BOOL)isPhotoType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  if (type > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << type) & 0x31ECC) == 0)
  {
    if (((1 << type) & 0x18E000) != 0)
    {
      v6 = PLPTPGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << type) & 0x132) != 0)
    {
      return 1;
    }

LABEL_9:
    if ((type - 108) > 5 || ((1 << (type - 108)) & 0x25) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:345 description:{@"Unhandled resource type (%lu) in %s", type, "+[PHPTPAsset isPhotoType:]"}];
    }
  }

  return 0;
}

- (BOOL)isRender
{
  v12 = *MEMORY[0x1E69E9840];
  resourceType = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
  if (resourceType > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << resourceType) & 0x31B9E) == 0)
  {
    if (((1 << resourceType) & 0x18E000) != 0)
    {
      v5 = PLPTPGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        resourceType2 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
        *buf = 134217984;
        v11 = resourceType2;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << resourceType) & 0x460) != 0)
    {
      return 1;
    }

LABEL_9:
    if (resourceType - 108 > 5 || ((1 << (resourceType - 108)) & 0x25) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:419 description:{@"Unhandled resource type (%lu) in %s", -[PHPTPAssetHandle resourceType](self->_resourceHandle, "resourceType"), "-[PHPTPAsset isRender]"}];
    }
  }

  return 0;
}

- (BOOL)isMovie
{
  resourceType = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];

  return [PHPTPAsset isMovieType:resourceType];
}

- (BOOL)isPhoto
{
  resourceType = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];

  return [PHPTPAsset isPhotoType:resourceType];
}

- (BOOL)isPrimary
{
  v12 = *MEMORY[0x1E69E9840];
  resourceType = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
  if (resourceType > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << resourceType) & 0x31FF8) == 0)
  {
    if (((1 << resourceType) & 0x18E000) != 0)
    {
      v5 = PLPTPGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        resourceType2 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
        *buf = 134217984;
        v11 = resourceType2;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << resourceType) & 6) != 0)
    {
      return 1;
    }

LABEL_9:
    if (resourceType - 108 > 5 || ((1 << (resourceType - 108)) & 0x25) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:306 description:{@"Unhandled resource type (%lu) in %s", -[PHPTPAssetHandle resourceType](self->_resourceHandle, "resourceType"), "-[PHPTPAsset isPrimary]"}];
    }
  }

  return 0;
}

- (NSString)fullDirectoryPath
{
  v2 = [(PHPTPAsset *)self url];
  uRLByDeletingLastPathComponent = [v2 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  return path;
}

- (PHPTPAsset)initWithPTPAsset:(id)asset
{
  assetCopy = asset;
  v32.receiver = self;
  v32.super_class = PHPTPAsset;
  v5 = [(PHPTPAsset *)&v32 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_url, *(assetCopy + 29));
    objc_storeStrong(&v6->_resourceHandle, *(assetCopy + 25));
    v7 = [*(assetCopy + 13) copy];
    captureDateString = v6->_captureDateString;
    v6->_captureDateString = v7;

    v9 = [*(assetCopy + 12) copy];
    modificationDateString = v6->_modificationDateString;
    v6->_modificationDateString = v9;

    v11 = [*(assetCopy + 3) copy];
    fingerprint = v6->_fingerprint;
    v6->_fingerprint = v11;

    v13 = [*(assetCopy + 4) copy];
    originatingAssetID = v6->_originatingAssetID;
    v6->_originatingAssetID = v13;

    objc_storeStrong(&v6->_contentType, *(assetCopy + 22));
    v15 = [*(assetCopy + 28) copy];
    capturedFilename = v6->_capturedFilename;
    v6->_capturedFilename = v15;

    v17 = [*(assetCopy + 26) copy];
    dcfFilename = v6->_dcfFilename;
    v6->_dcfFilename = v17;

    v19 = [*(assetCopy + 27) copy];
    fileSystemFilename = v6->_fileSystemFilename;
    v6->_fileSystemFilename = v19;

    objc_storeStrong(&v6->_overflowURL, *(assetCopy + 24));
    objectCompressedSize = [assetCopy objectCompressedSize];
    objectCompressedSize = v6->_objectCompressedSize;
    v6->_objectCompressedSize = objectCompressedSize;

    objc_storeStrong(&v6->_thumbCompressedSize, *(assetCopy + 6));
    objc_storeStrong(&v6->_thumbOffset, *(assetCopy + 5));
    v6->_thumbPixSize = *(assetCopy + 72);
    v23 = [*(assetCopy + 17) copy];
    burstUUID = v6->_burstUUID;
    v6->_burstUUID = v23;

    v6->_burstPicked = assetCopy[144];
    v6->_burstFavorite = assetCopy[145];
    v6->_burstFirstPicked = assetCopy[146];
    v6->_imagePixSize = *(assetCopy + 56);
    v6->_desiredOrientation = *(assetCopy + 11);
    v25 = [*(assetCopy + 14) copy];
    durationString = v6->_durationString;
    v6->_durationString = v25;

    v27 = [*(assetCopy + 15) copy];
    locationString = v6->_locationString;
    v6->_locationString = v27;

    v29 = [*(assetCopy + 16) copy];
    groupUUID = v6->_groupUUID;
    v6->_groupUUID = v29;

    v6->_highFrameRateVideo = assetCopy[147];
    v6->_timeLapseVideo = assetCopy[148];
    v6->_isPartOfLivePhoto = assetCopy[240];
    v6->_deleted = assetCopy[8];
    v6->_videoCodec = [assetCopy videoCodec];
    objc_storeStrong(&v6->_contentType, *(assetCopy + 22));
    v6->_isHDR = assetCopy[184];
    v6->_conversionGroup = *(assetCopy + 20);
  }

  return v6;
}

- (PHPTPAsset)initWithPhotosAsset:(id)asset url:(id)url resourceType:(int64_t)type orientation:(unsigned int)orientation
{
  v6 = *&orientation;
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PHPTPAsset;
  v10 = [(PHPTPAsset *)&v16 init];
  if (v10)
  {
    v11 = [PHPTPAssetHandle alloc];
    localIdentifier = [assetCopy localIdentifier];
    v13 = [(PHPTPAssetHandle *)v11 initWithResourceType:type orientation:v6 localIdentifier:localIdentifier requiresConversion:0];
    resourceHandle = v10->_resourceHandle;
    v10->_resourceHandle = v13;
  }

  return v10;
}

- (PHPTPAsset)initWithPhotosAsset:(id)asset photosResource:(id)resource
{
  assetCopy = asset;
  resourceCopy = resource;
  privateFileURL = [resourceCopy privateFileURL];
  v9 = -[PHPTPAsset initWithPhotosAsset:url:resourceType:orientation:](self, "initWithPhotosAsset:url:resourceType:orientation:", assetCopy, privateFileURL, [resourceCopy type], objc_msgSend(resourceCopy, "orientation"));

  if (v9)
  {
    privateFileURL2 = [resourceCopy privateFileURL];
    url = v9->_url;
    v9->_url = privateFileURL2;

    if (v9->_url)
    {
      ptpProperties = [assetCopy ptpProperties];
      fingerprint = [ptpProperties fingerprint];
      fingerprint = v9->_fingerprint;
      v9->_fingerprint = fingerprint;

      ptpProperties2 = [assetCopy ptpProperties];
      originatingAssetIdentifier = [ptpProperties2 originatingAssetIdentifier];
      originatingAssetID = v9->_originatingAssetID;
      v9->_originatingAssetID = originatingAssetIdentifier;

      v18 = MEMORY[0x1E69C08F0];
      uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
      v20 = [v18 typeWithIdentifier:uniformTypeIdentifier];
      contentType = v9->_contentType;
      v9->_contentType = v20;

      ptpProperties3 = [assetCopy ptpProperties];
      [ptpProperties3 originalFilename];
      v24 = v23 = resourceCopy;
      filename = v24;
      if (!v24)
      {
        ptpProperties4 = [assetCopy ptpProperties];
        filename = [ptpProperties4 filename];
      }

      v110 = assetCopy;
      ptpProperties5 = [assetCopy ptpProperties];
      dateCreated = [ptpProperties5 dateCreated];
      fileSize = [v23 fileSize];
      auxiliaryResourceFilenameMarker = [(PHPTPAssetHandle *)v9->_resourceHandle auxiliaryResourceFilenameMarker];
      v30 = [PHDCFUtilities dcfCompliantFileNameForFileName:filename createDate:dateCreated fileSize:fileSize filenameMarker:auxiliaryResourceFilenameMarker];

      if (!v24)
      {
      }

      v31 = [(PHPTPAsset *)v9 _resourceFilenameForFilename:v30 assetResource:v23];
      dcfFilename = v9->_dcfFilename;
      v9->_dcfFilename = v31;

      resourceCopy = v23;
      assetCopy = v110;
      if (v9->_dcfFilename)
      {
        v33 = [(PHPTPAsset *)v9 url];
        lastPathComponent = [v33 lastPathComponent];
        fileSystemFilename = v9->_fileSystemFilename;
        v9->_fileSystemFilename = lastPathComponent;

        if ([(PHPTPAsset *)v9 isPrimary])
        {
          originalFilename = [v23 originalFilename];
          v37 = [(PHPTPAsset *)v9 _resourceFilenameForFilename:originalFilename assetResource:v23];
          capturedFilename = v9->_capturedFilename;
          v9->_capturedFilename = v37;
        }

        else
        {
          originalFilename = v9->_capturedFilename;
          v9->_capturedFilename = 0;
        }

        ptpProperties6 = [v110 ptpProperties];
        dateCreated2 = [ptpProperties6 dateCreated];

        ptpProperties7 = [v110 ptpProperties];
        [ptpProperties7 timeZoneOffset];
        v44 = v43;

        v107 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v44];
        v109 = dateCreated2;
        v45 = PFStringFromDateTimeZoneFormat();
        objc_storeStrong(&v9->_modificationDateString, v45);
        v106 = v45;
        objc_storeStrong(&v9->_captureDateString, v45);
        v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resourceCopy, "fileSize")}];
        objectCompressedSize = v9->_objectCompressedSize;
        v9->_objectCompressedSize = v46;

        if ([(PHPTPAsset *)v9 isPrimary])
        {
          ptpProperties8 = [v110 ptpProperties];
          embeddedThumbnailLength = [ptpProperties8 embeddedThumbnailLength];
          integerValue = [embeddedThumbnailLength integerValue];
          if (integerValue)
          {
            v51 = integerValue;
          }

          else
          {
            v51 = 0x10000;
          }

          v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v51];
          thumbCompressedSize = v9->_thumbCompressedSize;
          v9->_thumbCompressedSize = v52;

          ptpProperties9 = [v110 ptpProperties];
          embeddedThumbnailOffset = [ptpProperties9 embeddedThumbnailOffset];
          integerValue2 = [embeddedThumbnailOffset integerValue];
          if (integerValue2 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = integerValue2;
          }

          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v57];
          thumbOffset = v9->_thumbOffset;
          v9->_thumbOffset = v58;

          ptpProperties10 = [v110 ptpProperties];
          embeddedThumbnailWidth = [ptpProperties10 embeddedThumbnailWidth];
          unsignedIntegerValue = [embeddedThumbnailWidth unsignedIntegerValue];
          ptpProperties11 = [v110 ptpProperties];
          embeddedThumbnailHeight = [ptpProperties11 embeddedThumbnailHeight];
          unsignedIntegerValue2 = [embeddedThumbnailHeight unsignedIntegerValue];
          v9->_thumbPixSize.width = unsignedIntegerValue;
          v9->_thumbPixSize.height = unsignedIntegerValue2;

          assetCopy = v110;
          ptpProperties12 = [v110 ptpProperties];
          burstIdentifier = [ptpProperties12 burstIdentifier];
          v68 = [burstIdentifier copy];
          burstUUID = v9->_burstUUID;
          v9->_burstUUID = v68;

          ptpProperties13 = [v110 ptpProperties];
          v9->_burstPicked = [ptpProperties13 isBurstPicked];

          ptpProperties14 = [v110 ptpProperties];
          v9->_burstFavorite = [ptpProperties14 isBurstFavorite];

          ptpProperties15 = [v110 ptpProperties];
          v9->_burstFirstPicked = [ptpProperties15 isBurstFirstPicked];
        }

        else
        {
          v73 = v9->_thumbCompressedSize;
          v9->_thumbCompressedSize = &unk_1F102BDB0;

          ptpProperties15 = v9->_thumbOffset;
          v9->_thumbOffset = &unk_1F102BDC8;
        }

        pixelWidth = [resourceCopy pixelWidth];
        pixelHeight = [resourceCopy pixelHeight];
        v9->_imagePixSize.width = pixelWidth;
        v9->_imagePixSize.height = pixelHeight;
        v9->_desiredOrientation = [resourceCopy orientation];
        if ([(PHPTPAsset *)v9 isPrimary])
        {
          ptpProperties16 = [assetCopy ptpProperties];
          originalDuration = [ptpProperties16 originalDuration];
        }

        else
        {
          v78 = MEMORY[0x1E696AD98];
          [assetCopy duration];
          originalDuration = [v78 numberWithDouble:?];
        }

        stringValue = [originalDuration stringValue];
        durationString = v9->_durationString;
        v9->_durationString = stringValue;

        ptpProperties17 = [assetCopy ptpProperties];
        location = [ptpProperties17 location];

        [location coordinate];
        v84 = v83;
        v86 = v85;
        v87 = MEMORY[0x1E696AEC0];
        [location altitude];
        v89 = [v87 stringWithFormat:@"%+f, %+f, %+f", v84, v86, v88];
        locationString = v9->_locationString;
        v9->_locationString = v89;

        ptpProperties18 = [assetCopy ptpProperties];
        livePhotoPairingIdentifier = [ptpProperties18 livePhotoPairingIdentifier];
        v93 = [livePhotoPairingIdentifier copy];
        groupUUID = v9->_groupUUID;
        v9->_groupUUID = v93;

        ptpProperties19 = [assetCopy ptpProperties];
        v9->_highFrameRateVideo = [ptpProperties19 isHighFrameRateVideo];

        ptpProperties20 = [assetCopy ptpProperties];
        v9->_timeLapseVideo = [ptpProperties20 isTimelapseVideo];

        ptpProperties21 = [assetCopy ptpProperties];
        v9->_isPartOfLivePhoto = [ptpProperties21 isLivePhoto];

        ptpProperties22 = [assetCopy ptpProperties];
        v9->_isHDR = [ptpProperties22 isHDR];

        ptpProperties23 = [assetCopy ptpProperties];
        codec = [ptpProperties23 codec];

        v101 = resourceCopy;
        if (codec)
        {
          v102 = [MEMORY[0x1E69C0708] fourCharCodeFromString:codec];
        }

        else
        {
          v102 = 0;
        }

        v9->_videoCodec = v102;
        assetCopy = v110;
        ptpProperties24 = [v110 ptpProperties];
        ptpTrashedState = [ptpProperties24 ptpTrashedState];
        v9->_deleted = ([objc_opt_class() ptpTrashedStateForResourceType:{-[PHPTPAssetHandle resourceType](v9->_resourceHandle, "resourceType")}] & ptpTrashedState) != 0;

        resourceCopy = v101;
        v39 = v109;
      }

      else
      {
        v39 = v9;
        v9 = 0;
      }
    }

    else
    {
      v30 = v9;
      v9 = 0;
    }
  }

  return v9;
}

- (id)_resourceFilenameForFilename:(id)filename assetResource:(id)resource
{
  v25 = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  resourceCopy = resource;
  v7 = resourceCopy;
  if (resourceCopy)
  {
    privateFileURL = [resourceCopy privateFileURL];
    pathExtension = [privateFileURL pathExtension];
    v10 = pathExtension;
    if (privateFileURL)
    {
      if (pathExtension)
      {
        type = [v7 type];
        if (type > 107)
        {
          switch(type)
          {
            case 'q':
              v22 = @"DBG";
              goto LABEL_38;
            case 'n':
              v22 = @"DAT";
              goto LABEL_38;
            case 'l':
              goto LABEL_7;
          }
        }

        else if (type <= 0x14)
        {
          if (((1 << type) & 0x31F7E) != 0)
          {
LABEL_7:
            uppercaseString = [v10 uppercaseString];
            v13 = [filenameCopy _pl_stringByReplacingPathExtension:uppercaseString];

LABEL_22:
            goto LABEL_23;
          }

          if (((1 << type) & 0x18E000) != 0)
          {
            v16 = PLPTPGetLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_21;
            }

            v23 = 134217984;
            type2 = [v7 type];
            v17 = "Unexpected resource type %ld";
            v18 = v16;
            v19 = OS_LOG_TYPE_INFO;
            goto LABEL_29;
          }

          if (type == 7)
          {
            v22 = @"AAE";
LABEL_38:
            v13 = [filenameCopy _pl_stringByReplacingPathExtension:v22];
            goto LABEL_22;
          }
        }

        v16 = PLPTPGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_21;
        }

        v23 = 134217984;
        type2 = [v7 type];
        v17 = "Unhandled resource type (%lu)";
        v18 = v16;
        v19 = OS_LOG_TYPE_FAULT;
LABEL_29:
        v20 = 12;
        goto LABEL_20;
      }

      v16 = PLPTPGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v23) = 0;
        v17 = "Unexpected nil extension";
        goto LABEL_16;
      }
    }

    else
    {
      isLocallyAvailable = [v7 isLocallyAvailable];
      v15 = PLPTPGetLog();
      v16 = v15;
      if (isLocallyAvailable)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v23) = 0;
          v17 = "Unexpected nil privateFileURL";
LABEL_16:
          v18 = v16;
          v19 = OS_LOG_TYPE_FAULT;
LABEL_19:
          v20 = 2;
LABEL_20:
          _os_log_impl(&dword_19C86F000, v18, v19, v17, &v23, v20);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        v17 = "Resource has been pruned, ignoring";
        v18 = v16;
        v19 = OS_LOG_TYPE_INFO;
        goto LABEL_19;
      }
    }

LABEL_21:

    v13 = 0;
    goto LABEL_22;
  }

  privateFileURL = PLPTPGetLog();
  if (os_log_type_enabled(privateFileURL, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_19C86F000, privateFileURL, OS_LOG_TYPE_FAULT, "Unexpected nil assetResource", &v23, 2u);
  }

  v13 = 0;
LABEL_23:

  return v13;
}

@end