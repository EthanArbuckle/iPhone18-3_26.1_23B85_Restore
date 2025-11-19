@interface PHPTPAsset
+ (BOOL)isMovieType:(int64_t)a3;
+ (BOOL)isPhotoType:(int64_t)a3;
+ (int64_t)ptpTrashedStateForResourceType:(int64_t)a3;
- (BOOL)isMovie;
- (BOOL)isPhoto;
- (BOOL)isPrimary;
- (BOOL)isRender;
- (CGSize)imagePixSize;
- (CGSize)thumbPixSize;
- (NSString)fullDirectoryPath;
- (PHPTPAsset)initWithPTPAsset:(id)a3;
- (PHPTPAsset)initWithPhotosAsset:(id)a3 photosResource:(id)a4;
- (PHPTPAsset)initWithPhotosAsset:(id)a3 url:(id)a4 resourceType:(int64_t)a5 orientation:(unsigned int)a6;
- (id)_prettyDescriptionWithIndent:(int64_t)a3;
- (id)_resourceFilenameForFilename:(id)a3 assetResource:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (id)_prettyDescriptionWithIndent:(int64_t)a3
{
  v4 = [MEMORY[0x1E69BE3C8] prettyMultiLineDescriptionBuilderWithObject:self indent:a3];
  [v4 appendName:@"resourceHandle" typeCode:"@" value:&self->_resourceHandle];
  [v4 appendName:@"dcfFilename" typeCode:"@" value:&self->_dcfFilename];
  [v4 appendName:@"capturedFilename" typeCode:"@" value:&self->_capturedFilename];
  [v4 appendName:@"deleted" typeCode:"B" value:&self->_deleted];
  [v4 appendName:@"fileSystemFilename" typeCode:"@" value:&self->_fileSystemFilename];
  v5 = [(PHPTPAsset *)self fullDirectoryPath];
  [v4 appendName:@"fullDirectoryPath" object:v5];

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
  v6 = [v4 build];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PHMutablePTPAsset alloc];

  return [(PHPTPAsset *)v4 initWithPTPAsset:self];
}

+ (int64_t)ptpTrashedStateForResourceType:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 > 107)
  {
    switch(a3)
    {
      case 'l':
        v8 = PLPTPGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithInteger:108];
          *buf = 138412290;
          v12 = v9;
          _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Unexpected request for trashed state of resource type %@", buf, 0xCu);
        }

        break;
      case 'n':
        return 0x10000;
      case 'q':
        return 0x8000;
      default:
LABEL_28:
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:a1 file:@"PHPTPAsset.m" lineNumber:469 description:{@"Unhandled resource type (%lu) in %s", a3, "+[PHPTPAsset ptpTrashedStateForResourceType:]"}];

        break;
    }

    return 0;
  }

  else
  {
    result = 1;
    switch(a3)
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
          v12 = a3;
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

+ (BOOL)isMovieType:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << a3) & 0x301BA) == 0)
  {
    if (((1 << a3) & 0x1E44) != 0)
    {
      return 1;
    }

    if (((1 << a3) & 0x18E000) != 0)
    {
      v7 = PLPTPGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v10 = a3;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

LABEL_9:
    if ((a3 - 108) > 5 || ((1 << (a3 - 108)) & 0x25) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PHPTPAsset.m" lineNumber:384 description:{@"Unhandled resource type (%lu) in %s", a3, "+[PHPTPAsset isMovieType:]"}];
    }
  }

  return 0;
}

+ (BOOL)isPhotoType:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << a3) & 0x31ECC) == 0)
  {
    if (((1 << a3) & 0x18E000) != 0)
    {
      v6 = PLPTPGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v10 = a3;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << a3) & 0x132) != 0)
    {
      return 1;
    }

LABEL_9:
    if ((a3 - 108) > 5 || ((1 << (a3 - 108)) & 0x25) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PHPTPAsset.m" lineNumber:345 description:{@"Unhandled resource type (%lu) in %s", a3, "+[PHPTPAsset isPhotoType:]"}];
    }
  }

  return 0;
}

- (BOOL)isRender
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
  if (v4 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << v4) & 0x31B9E) == 0)
  {
    if (((1 << v4) & 0x18E000) != 0)
    {
      v5 = PLPTPGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
        *buf = 134217984;
        v11 = v6;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << v4) & 0x460) != 0)
    {
      return 1;
    }

LABEL_9:
    if (v4 - 108 > 5 || ((1 << (v4 - 108)) & 0x25) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:419 description:{@"Unhandled resource type (%lu) in %s", -[PHPTPAssetHandle resourceType](self->_resourceHandle, "resourceType"), "-[PHPTPAsset isRender]"}];
    }
  }

  return 0;
}

- (BOOL)isMovie
{
  v2 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];

  return [PHPTPAsset isMovieType:v2];
}

- (BOOL)isPhoto
{
  v2 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];

  return [PHPTPAsset isPhotoType:v2];
}

- (BOOL)isPrimary
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
  if (v4 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << v4) & 0x31FF8) == 0)
  {
    if (((1 << v4) & 0x18E000) != 0)
    {
      v5 = PLPTPGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(PHPTPAssetHandle *)self->_resourceHandle resourceType];
        *buf = 134217984;
        v11 = v6;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }

      return 0;
    }

    if (((1 << v4) & 6) != 0)
    {
      return 1;
    }

LABEL_9:
    if (v4 - 108 > 5 || ((1 << (v4 - 108)) & 0x25) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PHPTPAsset.m" lineNumber:306 description:{@"Unhandled resource type (%lu) in %s", -[PHPTPAssetHandle resourceType](self->_resourceHandle, "resourceType"), "-[PHPTPAsset isPrimary]"}];
    }
  }

  return 0;
}

- (NSString)fullDirectoryPath
{
  v2 = [(PHPTPAsset *)self url];
  v3 = [v2 URLByDeletingLastPathComponent];
  v4 = [v3 path];

  return v4;
}

- (PHPTPAsset)initWithPTPAsset:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PHPTPAsset;
  v5 = [(PHPTPAsset *)&v32 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_url, *(v4 + 29));
    objc_storeStrong(&v6->_resourceHandle, *(v4 + 25));
    v7 = [*(v4 + 13) copy];
    captureDateString = v6->_captureDateString;
    v6->_captureDateString = v7;

    v9 = [*(v4 + 12) copy];
    modificationDateString = v6->_modificationDateString;
    v6->_modificationDateString = v9;

    v11 = [*(v4 + 3) copy];
    fingerprint = v6->_fingerprint;
    v6->_fingerprint = v11;

    v13 = [*(v4 + 4) copy];
    originatingAssetID = v6->_originatingAssetID;
    v6->_originatingAssetID = v13;

    objc_storeStrong(&v6->_contentType, *(v4 + 22));
    v15 = [*(v4 + 28) copy];
    capturedFilename = v6->_capturedFilename;
    v6->_capturedFilename = v15;

    v17 = [*(v4 + 26) copy];
    dcfFilename = v6->_dcfFilename;
    v6->_dcfFilename = v17;

    v19 = [*(v4 + 27) copy];
    fileSystemFilename = v6->_fileSystemFilename;
    v6->_fileSystemFilename = v19;

    objc_storeStrong(&v6->_overflowURL, *(v4 + 24));
    v21 = [v4 objectCompressedSize];
    objectCompressedSize = v6->_objectCompressedSize;
    v6->_objectCompressedSize = v21;

    objc_storeStrong(&v6->_thumbCompressedSize, *(v4 + 6));
    objc_storeStrong(&v6->_thumbOffset, *(v4 + 5));
    v6->_thumbPixSize = *(v4 + 72);
    v23 = [*(v4 + 17) copy];
    burstUUID = v6->_burstUUID;
    v6->_burstUUID = v23;

    v6->_burstPicked = v4[144];
    v6->_burstFavorite = v4[145];
    v6->_burstFirstPicked = v4[146];
    v6->_imagePixSize = *(v4 + 56);
    v6->_desiredOrientation = *(v4 + 11);
    v25 = [*(v4 + 14) copy];
    durationString = v6->_durationString;
    v6->_durationString = v25;

    v27 = [*(v4 + 15) copy];
    locationString = v6->_locationString;
    v6->_locationString = v27;

    v29 = [*(v4 + 16) copy];
    groupUUID = v6->_groupUUID;
    v6->_groupUUID = v29;

    v6->_highFrameRateVideo = v4[147];
    v6->_timeLapseVideo = v4[148];
    v6->_isPartOfLivePhoto = v4[240];
    v6->_deleted = v4[8];
    v6->_videoCodec = [v4 videoCodec];
    objc_storeStrong(&v6->_contentType, *(v4 + 22));
    v6->_isHDR = v4[184];
    v6->_conversionGroup = *(v4 + 20);
  }

  return v6;
}

- (PHPTPAsset)initWithPhotosAsset:(id)a3 url:(id)a4 resourceType:(int64_t)a5 orientation:(unsigned int)a6
{
  v6 = *&a6;
  v9 = a3;
  v16.receiver = self;
  v16.super_class = PHPTPAsset;
  v10 = [(PHPTPAsset *)&v16 init];
  if (v10)
  {
    v11 = [PHPTPAssetHandle alloc];
    v12 = [v9 localIdentifier];
    v13 = [(PHPTPAssetHandle *)v11 initWithResourceType:a5 orientation:v6 localIdentifier:v12 requiresConversion:0];
    resourceHandle = v10->_resourceHandle;
    v10->_resourceHandle = v13;
  }

  return v10;
}

- (PHPTPAsset)initWithPhotosAsset:(id)a3 photosResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 privateFileURL];
  v9 = -[PHPTPAsset initWithPhotosAsset:url:resourceType:orientation:](self, "initWithPhotosAsset:url:resourceType:orientation:", v6, v8, [v7 type], objc_msgSend(v7, "orientation"));

  if (v9)
  {
    v10 = [v7 privateFileURL];
    url = v9->_url;
    v9->_url = v10;

    if (v9->_url)
    {
      v12 = [v6 ptpProperties];
      v13 = [v12 fingerprint];
      fingerprint = v9->_fingerprint;
      v9->_fingerprint = v13;

      v15 = [v6 ptpProperties];
      v16 = [v15 originatingAssetIdentifier];
      originatingAssetID = v9->_originatingAssetID;
      v9->_originatingAssetID = v16;

      v18 = MEMORY[0x1E69C08F0];
      v19 = [v7 uniformTypeIdentifier];
      v20 = [v18 typeWithIdentifier:v19];
      contentType = v9->_contentType;
      v9->_contentType = v20;

      v22 = [v6 ptpProperties];
      [v22 originalFilename];
      v24 = v23 = v7;
      v25 = v24;
      if (!v24)
      {
        v108 = [v6 ptpProperties];
        v25 = [v108 filename];
      }

      v110 = v6;
      v26 = [v6 ptpProperties];
      v27 = [v26 dateCreated];
      v28 = [v23 fileSize];
      v29 = [(PHPTPAssetHandle *)v9->_resourceHandle auxiliaryResourceFilenameMarker];
      v30 = [PHDCFUtilities dcfCompliantFileNameForFileName:v25 createDate:v27 fileSize:v28 filenameMarker:v29];

      if (!v24)
      {
      }

      v31 = [(PHPTPAsset *)v9 _resourceFilenameForFilename:v30 assetResource:v23];
      dcfFilename = v9->_dcfFilename;
      v9->_dcfFilename = v31;

      v7 = v23;
      v6 = v110;
      if (v9->_dcfFilename)
      {
        v33 = [(PHPTPAsset *)v9 url];
        v34 = [v33 lastPathComponent];
        fileSystemFilename = v9->_fileSystemFilename;
        v9->_fileSystemFilename = v34;

        if ([(PHPTPAsset *)v9 isPrimary])
        {
          v36 = [v23 originalFilename];
          v37 = [(PHPTPAsset *)v9 _resourceFilenameForFilename:v36 assetResource:v23];
          capturedFilename = v9->_capturedFilename;
          v9->_capturedFilename = v37;
        }

        else
        {
          v36 = v9->_capturedFilename;
          v9->_capturedFilename = 0;
        }

        v40 = [v110 ptpProperties];
        v41 = [v40 dateCreated];

        v42 = [v110 ptpProperties];
        [v42 timeZoneOffset];
        v44 = v43;

        v107 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v44];
        v109 = v41;
        v45 = PFStringFromDateTimeZoneFormat();
        objc_storeStrong(&v9->_modificationDateString, v45);
        v106 = v45;
        objc_storeStrong(&v9->_captureDateString, v45);
        v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "fileSize")}];
        objectCompressedSize = v9->_objectCompressedSize;
        v9->_objectCompressedSize = v46;

        if ([(PHPTPAsset *)v9 isPrimary])
        {
          v48 = [v110 ptpProperties];
          v49 = [v48 embeddedThumbnailLength];
          v50 = [v49 integerValue];
          if (v50)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0x10000;
          }

          v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v51];
          thumbCompressedSize = v9->_thumbCompressedSize;
          v9->_thumbCompressedSize = v52;

          v54 = [v110 ptpProperties];
          v55 = [v54 embeddedThumbnailOffset];
          v56 = [v55 integerValue];
          if (v56 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = v56;
          }

          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v57];
          thumbOffset = v9->_thumbOffset;
          v9->_thumbOffset = v58;

          v60 = [v110 ptpProperties];
          v61 = [v60 embeddedThumbnailWidth];
          v62 = [v61 unsignedIntegerValue];
          v63 = [v110 ptpProperties];
          v64 = [v63 embeddedThumbnailHeight];
          v65 = [v64 unsignedIntegerValue];
          v9->_thumbPixSize.width = v62;
          v9->_thumbPixSize.height = v65;

          v6 = v110;
          v66 = [v110 ptpProperties];
          v67 = [v66 burstIdentifier];
          v68 = [v67 copy];
          burstUUID = v9->_burstUUID;
          v9->_burstUUID = v68;

          v70 = [v110 ptpProperties];
          v9->_burstPicked = [v70 isBurstPicked];

          v71 = [v110 ptpProperties];
          v9->_burstFavorite = [v71 isBurstFavorite];

          v72 = [v110 ptpProperties];
          v9->_burstFirstPicked = [v72 isBurstFirstPicked];
        }

        else
        {
          v73 = v9->_thumbCompressedSize;
          v9->_thumbCompressedSize = &unk_1F102BDB0;

          v72 = v9->_thumbOffset;
          v9->_thumbOffset = &unk_1F102BDC8;
        }

        v74 = [v7 pixelWidth];
        v75 = [v7 pixelHeight];
        v9->_imagePixSize.width = v74;
        v9->_imagePixSize.height = v75;
        v9->_desiredOrientation = [v7 orientation];
        if ([(PHPTPAsset *)v9 isPrimary])
        {
          v76 = [v6 ptpProperties];
          v77 = [v76 originalDuration];
        }

        else
        {
          v78 = MEMORY[0x1E696AD98];
          [v6 duration];
          v77 = [v78 numberWithDouble:?];
        }

        v79 = [v77 stringValue];
        durationString = v9->_durationString;
        v9->_durationString = v79;

        v81 = [v6 ptpProperties];
        v82 = [v81 location];

        [v82 coordinate];
        v84 = v83;
        v86 = v85;
        v87 = MEMORY[0x1E696AEC0];
        [v82 altitude];
        v89 = [v87 stringWithFormat:@"%+f, %+f, %+f", v84, v86, v88];
        locationString = v9->_locationString;
        v9->_locationString = v89;

        v91 = [v6 ptpProperties];
        v92 = [v91 livePhotoPairingIdentifier];
        v93 = [v92 copy];
        groupUUID = v9->_groupUUID;
        v9->_groupUUID = v93;

        v95 = [v6 ptpProperties];
        v9->_highFrameRateVideo = [v95 isHighFrameRateVideo];

        v96 = [v6 ptpProperties];
        v9->_timeLapseVideo = [v96 isTimelapseVideo];

        v97 = [v6 ptpProperties];
        v9->_isPartOfLivePhoto = [v97 isLivePhoto];

        v98 = [v6 ptpProperties];
        v9->_isHDR = [v98 isHDR];

        v99 = [v6 ptpProperties];
        v100 = [v99 codec];

        v101 = v7;
        if (v100)
        {
          v102 = [MEMORY[0x1E69C0708] fourCharCodeFromString:v100];
        }

        else
        {
          v102 = 0;
        }

        v9->_videoCodec = v102;
        v6 = v110;
        v103 = [v110 ptpProperties];
        v104 = [v103 ptpTrashedState];
        v9->_deleted = ([objc_opt_class() ptpTrashedStateForResourceType:{-[PHPTPAssetHandle resourceType](v9->_resourceHandle, "resourceType")}] & v104) != 0;

        v7 = v101;
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

- (id)_resourceFilenameForFilename:(id)a3 assetResource:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 privateFileURL];
    v9 = [v8 pathExtension];
    v10 = v9;
    if (v8)
    {
      if (v9)
      {
        v11 = [v7 type];
        if (v11 > 107)
        {
          switch(v11)
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

        else if (v11 <= 0x14)
        {
          if (((1 << v11) & 0x31F7E) != 0)
          {
LABEL_7:
            v12 = [v10 uppercaseString];
            v13 = [v5 _pl_stringByReplacingPathExtension:v12];

LABEL_22:
            goto LABEL_23;
          }

          if (((1 << v11) & 0x18E000) != 0)
          {
            v16 = PLPTPGetLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_21;
            }

            v23 = 134217984;
            v24 = [v7 type];
            v17 = "Unexpected resource type %ld";
            v18 = v16;
            v19 = OS_LOG_TYPE_INFO;
            goto LABEL_29;
          }

          if (v11 == 7)
          {
            v22 = @"AAE";
LABEL_38:
            v13 = [v5 _pl_stringByReplacingPathExtension:v22];
            goto LABEL_22;
          }
        }

        v16 = PLPTPGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_21;
        }

        v23 = 134217984;
        v24 = [v7 type];
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
      v14 = [v7 isLocallyAvailable];
      v15 = PLPTPGetLog();
      v16 = v15;
      if (v14)
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

  v8 = PLPTPGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_FAULT, "Unexpected nil assetResource", &v23, 2u);
  }

  v13 = 0;
LABEL_23:

  return v13;
}

@end