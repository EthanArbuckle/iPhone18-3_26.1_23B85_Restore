@interface ICCameraFile
+ (id)fingerprintForFileAtURL:(id)l;
- (BOOL)isAudio;
- (BOOL)isData;
- (BOOL)isEdited:(unint64_t)edited;
- (BOOL)isHEIC;
- (BOOL)isImage;
- (BOOL)isJPEG;
- (BOOL)isMovie;
- (BOOL)isNonRawImage;
- (BOOL)setMetadata:(id)metadata;
- (CGImage)thumbnail;
- (ICCameraFile)initWithName:(id)name parentFolder:(id)folder device:(id)device;
- (ICCameraFile)initWithProxy:(id)proxy parentFolder:(id)folder device:(id)device;
- (NSProgress)requestDownloadWithOptions:(NSDictionary *)options completion:(void *)completion;
- (NSString)mediaBase;
- (id)base;
- (id)debugBadge;
- (id)debugIdentity;
- (id)debugType;
- (id)description;
- (id)thumbnailDataUsingOrientation:(id)orientation andSourceThumbnailData:(id)data;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)compareDate:(id)date;
- (int64_t)compareUUID:(id)d;
- (void)addSidecarFile:(id)file;
- (void)flagAsSidecar;
- (void)flushThumbnailCache;
- (void)handleObjectInfoUpdate:(id)update;
- (void)requestCloseStreamData;
- (void)requestFingerprintWithCompletion:(id)completion;
- (void)requestMetadata;
- (void)requestMetadataDictionaryWithOptions:(NSDictionary *)options completion:(void *)completion;
- (void)requestMetadataWithOptions:(id)options completion:(id)completion;
- (void)requestOpenStreamData;
- (void)requestReadDataAtOffset:(off_t)offset length:(off_t)length completion:(void *)completion;
- (void)requestRefreshObjectHandleInfo:(id)info;
- (void)requestSecurityScopedURLWithCompletion:(void *)completion;
- (void)requestStreamDataAtOffset:(int64_t)offset length:(int64_t)length completion:(id)completion;
- (void)requestThumbnail;
- (void)requestThumbnailDataWithOptions:(NSDictionary *)options completion:(void *)completion;
- (void)requestThumbnailWithOptions:(id)options completion:(id)completion;
- (void)setKeywordPropertiesFromDict:(id)dict;
- (void)setOrientation:(ICEXIFOrientationType)orientation;
- (void)setUTI:(id)i;
@end

@implementation ICCameraFile

- (int64_t)compareUUID:(id)d
{
  oUUID = [d oUUID];
  if (oUUID == [(ICCameraFile *)self oUUID])
  {
    return 0;
  }

  if (oUUID > [(ICCameraFile *)self oUUID])
  {
    return -1;
  }

  return 1;
}

- (int64_t)compareDate:(id)date
{
  uTime = [date uTime];
  if (uTime == [(ICCameraFile *)self uTime])
  {
    return 0;
  }

  if (uTime > [(ICCameraFile *)self uTime])
  {
    return -1;
  }

  return 1;
}

- (void)flushThumbnailCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ICCameraFile_flushThumbnailCache__block_invoke;
  block[3] = &unk_1E829C848;
  block[4] = self;
  ICPerformBlockOnMainThread(block);
}

uint64_t __35__ICCameraFile_flushThumbnailCache__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"thumbnail"];
  [*(a1 + 32) willChangeValueForKey:@"thumbnailIfAvailable"];
  v2 = [*(a1 + 32) thumbnailData];

  if (v2)
  {
    [*(a1 + 32) setThumbnailData:0];
  }

  [*(a1 + 32) setThumbnailState:1];
  [*(a1 + 32) didChangeValueForKey:@"thumbnailIfAvailable"];
  v3 = *(a1 + 32);

  return [v3 didChangeValueForKey:@"thumbnail"];
}

- (void)setOrientation:(ICEXIFOrientationType)orientation
{
  v5 = [(ICCameraItem *)self UTI];

  if (v5)
  {
    v6 = MEMORY[0x1E6982C40];
    v7 = [(ICCameraItem *)self UTI];
    v8 = [v6 typeWithIdentifier:v7];

    if (-[ICCameraFile orientation](self, "orientation") != orientation && [v8 conformsToType:*MEMORY[0x1E6982E30]])
    {
      [(ICCameraFile *)self setOrientationOverridden:1];
      [(ICCameraFile *)self setPrivOrientation:orientation];
    }
  }
}

- (void)addSidecarFile:(id)file
{
  if (file)
  {
    fileCopy = file;
    [(ICCameraFile *)self willChangeValueForKey:@"sidecarFiles"];
    [(NSMutableArray *)self->_sidecarFiles addObject:fileCopy];
    [fileCopy setOwnerID:{-[ICCameraItem objectID](self, "objectID")}];

    [(ICCameraFile *)self didChangeValueForKey:@"sidecarFiles"];
  }
}

- (id)debugBadge
{
  if (!self->_debugBadge)
  {
    self->_debugBadge = @"　 　";

    if ([(ICCameraItem *)self isRaw])
    {
      v3 = @"🅁";
    }

    else if ([(ICCameraFile *)self isJPEG])
    {
      v3 = @"🄹";
    }

    else
    {
      if (![(ICCameraFile *)self isHEIC])
      {
        goto LABEL_9;
      }

      v3 = @"🄷";
    }

    debugBadge = self->_debugBadge;
    self->_debugBadge = &v3->isa;
  }

LABEL_9:
  v5 = self->_debugBadge;

  return v5;
}

- (id)debugType
{
  if (!self->_debugType)
  {
    self->_debugType = @"　 　";

    if ([(ICCameraFile *)self isOriginal])
    {
      v3 = @"🄾 　";
    }

    else if ([(ICCameraFile *)self isEditedOriginal])
    {
      v3 = @"🄾 🄔";
    }

    else if ([(ICCameraFile *)self isConverted])
    {
      v3 = @"🅒 　";
    }

    else
    {
      if (![(ICCameraFile *)self isEditedConverted])
      {
        goto LABEL_11;
      }

      v3 = @"🅒 🄔";
    }

    debugType = self->_debugType;
    self->_debugType = &v3->isa;
  }

LABEL_11:
  v5 = self->_debugType;

  return v5;
}

- (id)debugIdentity
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(ICCameraFile *)self description];
  [array addObject:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sidecarFiles = [(ICCameraFile *)self sidecarFiles];
  v6 = [sidecarFiles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sidecarFiles);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) description];
        [array addObject:v10];
      }

      v7 = [sidecarFiles countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)description
{
  v3 = [(NSMutableArray *)self->_sidecarFiles count];
  if (-[ICCameraItem twinID](self, "twinID") && (-[ICCameraItem device](self, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v4 cameraFileWithObjectID:{-[ICCameraItem twinID](self, "twinID")}], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    name = [v5 name];
  }

  else
  {
    name = &stru_1F4691338;
  }

  v7 = MEMORY[0x1E696AEC0];
  debugType = [(ICCameraFile *)self debugType];
  debugBadge = [(ICCameraFile *)self debugBadge];
  name2 = [(ICCameraItem *)self name];
  v11 = [v7 stringWithFormat:@"%@ %@ | %15s | %1lu | %15s", debugType, debugBadge, objc_msgSend(name2, "UTF8String"), v3, -[__CFString UTF8String](name, "UTF8String")];

  return v11;
}

- (NSString)mediaBase
{
  if (self->_privMediaBase)
  {
    goto LABEL_10;
  }

  name = [(ICCameraItem *)self name];
  stringByDeletingPathExtension = [name stringByDeletingPathExtension];
  [(ICCameraFile *)self setPrivMediaBase:stringByDeletingPathExtension];

  privMediaBase = [(ICCameraFile *)self privMediaBase];
  v6 = [privMediaBase length];

  if (v6 >= 9)
  {
    privMediaBase2 = [(ICCameraFile *)self privMediaBase];
    v8 = [privMediaBase2 hasPrefix:@"IMG_O"];

    privMediaBase3 = [(ICCameraFile *)self privMediaBase];
    v10 = privMediaBase3;
    if (v8)
    {
      v11 = @"IMG_O";
    }

    else
    {
      v12 = [privMediaBase3 hasPrefix:@"IMG_A"];

      if (!v12)
      {
        goto LABEL_8;
      }

      privMediaBase3 = [(ICCameraFile *)self privMediaBase];
      v10 = privMediaBase3;
      v11 = @"IMG_A";
    }

    v13 = [privMediaBase3 stringByReplacingOccurrencesOfString:v11 withString:@"IMG_"];
    [(ICCameraFile *)self setPrivMediaBase:v13];
  }

LABEL_8:
  privMediaBase4 = [(ICCameraFile *)self privMediaBase];
  v15 = [privMediaBase4 length];

  if (v15 == 8)
  {
    privMediaBase5 = [(ICCameraFile *)self privMediaBase];
    v17 = [privMediaBase5 stringByAppendingString:@" "];
    [(ICCameraFile *)self setPrivMediaBase:v17];
  }

LABEL_10:

  return [(ICCameraFile *)self privMediaBase];
}

- (BOOL)isEdited:(unint64_t)edited
{
  v4 = edited | 8;
  v5 = ([(ICCameraFile *)self mediaMetadata]& 0xE0) != 0;
  return (v4 & ~[(ICCameraFile *)self mediaMetadata]) == 0 && v5;
}

- (void)flagAsSidecar
{
  v3 = [(ICCameraFile *)self mediaMetadata]| 0x400;

  [(ICCameraFile *)self setMediaMetadata:v3];
}

- (id)base
{
  name = [(ICCameraItem *)self name];
  stringByDeletingPathExtension = [name stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (BOOL)isMovie
{
  v3 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982EE8] identifier];
  if ([v3 isEqualToString:identifier])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICCameraItem *)self UTI];
    identifier2 = [*MEMORY[0x1E6982E80] identifier];
    v5 = [v6 isEqualToString:identifier2];
  }

  return v5;
}

- (BOOL)isImage
{
  v2 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982E30] identifier];
  v4 = [v2 isEqualToString:identifier];

  return v4;
}

- (BOOL)isNonRawImage
{
  v3 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982E30] identifier];
  if ([v3 isEqualToString:identifier])
  {
    v5 = ![(ICCameraItem *)self isRaw];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isAudio
{
  v2 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982CD0] identifier];
  v4 = [v2 isEqualToString:identifier];

  return v4;
}

- (BOOL)isData
{
  v2 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982D60] identifier];
  v4 = [v2 isEqualToString:identifier];

  return v4;
}

- (BOOL)isJPEG
{
  if (!self->_fileIsJPEG)
  {
    v7 = MEMORY[0x1E696AD98];
    isImage = [(ICCameraFile *)self isImage];
    if (isImage)
    {
      name = [(ICCameraItem *)self name];
      pathExtension = [name pathExtension];
      if ([pathExtension caseInsensitiveCompare:@"JPG"])
      {
        name2 = [(ICCameraItem *)self name];
        pathExtension2 = [name2 pathExtension];
        v9 = [pathExtension2 caseInsensitiveCompare:@"JPEG"] == 0;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = [v7 numberWithInt:v9];
    fileIsJPEG = self->_fileIsJPEG;
    self->_fileIsJPEG = v11;

    if (v10)
    {
    }

    if (isImage)
    {
    }
  }

  v13 = self->_fileIsJPEG;

  return [(NSNumber *)v13 BOOLValue];
}

- (BOOL)isHEIC
{
  if (!self->_fileIsHEIC)
  {
    v7 = MEMORY[0x1E696AD98];
    isImage = [(ICCameraFile *)self isImage];
    if (isImage)
    {
      name = [(ICCameraItem *)self name];
      pathExtension = [name pathExtension];
      if ([pathExtension caseInsensitiveCompare:@"HEIC"])
      {
        name2 = [(ICCameraItem *)self name];
        pathExtension2 = [name2 pathExtension];
        v9 = [pathExtension2 caseInsensitiveCompare:@"HIF"] == 0;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = [v7 numberWithInt:v9];
    fileIsHEIC = self->_fileIsHEIC;
    self->_fileIsHEIC = v11;

    if (v10)
    {
    }

    if (isImage)
    {
    }
  }

  v13 = self->_fileIsHEIC;

  return [(NSNumber *)v13 BOOLValue];
}

- (id)thumbnailDataUsingOrientation:(id)orientation andSourceThumbnailData:(id)data
{
  orientationCopy = orientation;
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy)
  {
    v9 = CGImageSourceCreateWithData(dataCopy, 0);
    if (v9)
    {
      v10 = v9;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
      CFRelease(v10);
      if (ImageAtIndex)
      {
        orientationOverridden = [(ICCameraFile *)self orientationOverridden];
        if (orientationCopy)
        {
          if (!orientationOverridden)
          {
            unsignedIntegerValue = [orientationCopy unsignedIntegerValue];
            if (unsignedIntegerValue != [(ICCameraFile *)self orientation])
            {
              [(ICCameraFile *)self willChangeValueForKey:@"orientation"];
              [(ICCameraFile *)self setOrientation:unsignedIntegerValue];
              [(ICCameraFile *)self didChangeValueForKey:@"orientation"];
            }
          }
        }

        if ([orientationCopy unsignedIntegerValue] == 1)
        {
          v14 = 0;
LABEL_21:
          [(ICCameraFile *)self setHasThumbnail:1];
          [(ICCameraItem *)self setThumbnailState:16];
          CFRelease(ImageAtIndex);
          if (v14)
          {
            v23 = v14;
          }

          else
          {
            v23 = v8;
          }

          v15 = v23;

          goto LABEL_25;
        }

        v14 = objc_alloc_init(MEMORY[0x1E695DF88]);
        v16 = ICCreateRotatedImageFromCGImage([orientationCopy unsignedIntegerValue], ImageAtIndex);
        identifier = [*MEMORY[0x1E6982E58] identifier];
        v18 = CGImageDestinationCreateWithData(v14, identifier, 1uLL, 0);

        if (v18 && v16)
        {
          CGImageDestinationAddImage(v18, v16, 0);
          if (!CGImageDestinationFinalize(v18))
          {
            __ICOSLogCreate();
            v19 = MEMORY[0x1E696AEC0];
            name = [(ICCameraItem *)self name];
            v21 = [v19 stringWithFormat:@"Thumb Rotate Failed: %@", name];

            v22 = *MEMORY[0x1E69A8B08];
            if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
            {
              +[(ICPrefManager *)v21];
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_19;
        }

        CFRelease(v16);
LABEL_19:
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_21;
      }
    }
  }

  v15 = 0;
LABEL_25:

  return v15;
}

- (CGImage)thumbnail
{
  ImageAtIndex = [(ICCameraFile *)self thumbnailData];
  if (ImageAtIndex)
  {
    thumbnailData = [(ICCameraFile *)self thumbnailData];
    v5 = CGImageSourceCreateWithData(thumbnailData, 0);

    if (v5)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
      CFRelease(v5);
    }

    else
    {
      ImageAtIndex = 0;
    }
  }

  return ImageAtIndex;
}

- (void)setKeywordPropertiesFromDict:(id)dict
{
  v54 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  [(ICCameraFile *)self duration];
  if (v5 == 0.0)
  {
    v6 = [dictCopy objectForKeyedSubscript:@"Duration"];

    if (v6)
    {
      v7 = [dictCopy objectForKeyedSubscript:@"Duration"];
      [v7 doubleValue];
      [(ICCameraFile *)self setDuration:?];
    }
  }

  burstUUID = [(ICCameraFile *)self burstUUID];
  if (!burstUUID)
  {
    v9 = [dictCopy objectForKeyedSubscript:@"BurstUUID"];

    if (!v9)
    {
      goto LABEL_8;
    }

    burstUUID = [dictCopy objectForKeyedSubscript:@"BurstUUID"];
    [(ICCameraFile *)self setBurstUUID:burstUUID];
  }

LABEL_8:
  originatingAssetID = [(ICCameraFile *)self originatingAssetID];
  if (originatingAssetID)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = [dictCopy objectForKeyedSubscript:@"OriginatingAssetID"];

  if (v11)
  {
    originatingAssetID = [dictCopy objectForKeyedSubscript:@"OriginatingAssetID"];
    [(ICCameraFile *)self setOriginatingAssetID:originatingAssetID];
    goto LABEL_11;
  }

LABEL_12:
  if (![(ICCameraFile *)self burstPicked])
  {
    v12 = [dictCopy objectForKeyedSubscript:@"BurstPicked"];

    if (v12)
    {
      v13 = [dictCopy objectForKeyedSubscript:@"BurstPicked"];
      -[ICCameraFile setBurstPicked:](self, "setBurstPicked:", [v13 BOOLValue]);
    }
  }

  if (![(ICCameraFile *)self burstFavorite])
  {
    v14 = [dictCopy objectForKeyedSubscript:@"BurstFavorite"];

    if (v14)
    {
      v15 = [dictCopy objectForKeyedSubscript:@"BurstFavorite"];
      -[ICCameraFile setBurstFavorite:](self, "setBurstFavorite:", [v15 BOOLValue]);
    }
  }

  if (![(ICCameraFile *)self highFramerate])
  {
    v16 = [dictCopy objectForKeyedSubscript:@"HighFramerate"];

    if (v16)
    {
      v17 = [dictCopy objectForKeyedSubscript:@"HighFramerate"];
      -[ICCameraFile setHighFramerate:](self, "setHighFramerate:", [v17 BOOLValue]);
    }
  }

  if (![(ICCameraFile *)self timeLapse])
  {
    v18 = [dictCopy objectForKeyedSubscript:@"TimeLapse"];

    if (v18)
    {
      v19 = [dictCopy objectForKeyedSubscript:@"TimeLapse"];
      -[ICCameraFile setTimeLapse:](self, "setTimeLapse:", [v19 BOOLValue]);
    }
  }

  originalFilename = [(ICCameraFile *)self originalFilename];
  if (!originalFilename)
  {
    v21 = [dictCopy objectForKeyedSubscript:@"OriginalFilename"];

    if (!v21)
    {
      goto LABEL_28;
    }

    originalFilename = [dictCopy objectForKeyedSubscript:@"OriginalFilename"];
    [(ICCameraFile *)self setOriginalFilename:originalFilename];
  }

LABEL_28:
  createdFilename = [(ICCameraFile *)self createdFilename];
  if (createdFilename)
  {
LABEL_31:

    goto LABEL_32;
  }

  v23 = [dictCopy objectForKeyedSubscript:@"CreatedFilename"];

  if (v23)
  {
    createdFilename = [dictCopy objectForKeyedSubscript:@"CreatedFilename"];
    [(ICCameraFile *)self setCreatedFilename:createdFilename];
    goto LABEL_31;
  }

LABEL_32:
  if (![(ICCameraFile *)self firstPicked])
  {
    v24 = [dictCopy objectForKeyedSubscript:@"FirstPicked"];

    if (v24)
    {
      v25 = [dictCopy objectForKeyedSubscript:@"FirstPicked"];
      -[ICCameraFile setFirstPicked:](self, "setFirstPicked:", [v25 BOOLValue]);
    }
  }

  groupUUID = [(ICCameraFile *)self groupUUID];
  if (!groupUUID)
  {
    v27 = [dictCopy objectForKeyedSubscript:@"GroupUUID"];

    if (!v27)
    {
      goto LABEL_39;
    }

    groupUUID = [dictCopy objectForKeyedSubscript:@"GroupUUID"];
    [(ICCameraFile *)self setGroupUUID:groupUUID];
  }

LABEL_39:
  relatedUUID = [(ICCameraFile *)self relatedUUID];
  if (!relatedUUID)
  {
    v29 = [dictCopy objectForKeyedSubscript:@"RelatedUUID"];

    if (!v29)
    {
      goto LABEL_43;
    }

    v30 = [dictCopy objectForKeyedSubscript:@"RelatedUUID"];
    [(ICCameraFile *)self setRelatedUUID:v30];

    relatedUUID = [(ICCameraItem *)self device];
    [relatedUUID setAppleRelatedUUIDSupport:1];
  }

LABEL_43:
  spatialOverCaptureGroupID = [(ICCameraFile *)self spatialOverCaptureGroupID];
  if (!spatialOverCaptureGroupID)
  {
    v32 = [dictCopy objectForKeyedSubscript:@"SpatialOverCaptureGroupID"];

    if (!v32)
    {
      goto LABEL_47;
    }

    spatialOverCaptureGroupID = [dictCopy objectForKeyedSubscript:@"SpatialOverCaptureGroupID"];
    [(ICCameraFile *)self setSpatialOverCaptureGroupID:spatialOverCaptureGroupID];
  }

LABEL_47:
  gpsString = [(ICCameraFile *)self gpsString];
  if (!gpsString)
  {
    v34 = [dictCopy objectForKeyedSubscript:@"GPSString"];

    if (!v34)
    {
      goto LABEL_51;
    }

    gpsString = [dictCopy objectForKeyedSubscript:@"GPSString"];
    [(ICCameraFile *)self setGpsString:gpsString];
  }

LABEL_51:
  groupUUID2 = [(ICCameraFile *)self groupUUID];
  if (!groupUUID2)
  {
    v36 = [dictCopy objectForKeyedSubscript:@"{MakerApple}"];
    v37 = [v36 objectForKeyedSubscript:@"17"];

    if (!v37)
    {
      goto LABEL_55;
    }

    groupUUID2 = [dictCopy objectForKeyedSubscript:@"{MakerApple}"];
    v38 = [groupUUID2 objectForKeyedSubscript:@"17"];
    [(ICCameraFile *)self setGroupUUID:v38];
  }

LABEL_55:
  v39 = [dictCopy objectForKeyedSubscript:@"Orientation"];

  if (v39)
  {
    v40 = [dictCopy objectForKeyedSubscript:@"Orientation"];
    orientation = [(ICCameraFile *)self orientation];
    if (orientation != [v40 integerValue])
    {
      [(ICCameraFile *)self willChangeValueForKey:@"orientation"];
      [(ICCameraFile *)self willChangeValueForKey:@"width"];
      [(ICCameraFile *)self willChangeValueForKey:@"height"];
      -[ICCameraFile setOrientation:](self, "setOrientation:", [v40 integerValue]);
      __ICOSLogCreate();
      name = [(ICCameraItem *)self name];
      if ([name length] >= 0x15)
      {
        v43 = [name substringWithRange:{0, 18}];
        v44 = [v43 stringByAppendingString:@".."];

        name = v44;
      }

      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Height: %lu, Width: %lu, Orientation: %lu", -[ICCameraFile height](self, "height"), -[ICCameraFile width](self, "width"), -[ICCameraFile orientation](self, "orientation")];
      v46 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v47 = name;
        v48 = v46;
        *buf = 136446466;
        uTF8String = [name UTF8String];
        v52 = 2114;
        v53 = v45;
        _os_log_impl(&dword_1C6F19000, v48, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [(ICCameraFile *)self didChangeValueForKey:@"orientation"];
      [(ICCameraFile *)self didChangeValueForKey:@"width"];
      [(ICCameraFile *)self didChangeValueForKey:@"height"];
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (ICCameraFile)initWithName:(id)name parentFolder:(id)folder device:(id)device
{
  v17.receiver = self;
  v17.super_class = ICCameraFile;
  v5 = [(ICCameraItem *)&v17 initWithName:name parentFolder:folder device:device];
  v6 = v5;
  if (v5)
  {
    [(ICCameraFile *)v5 setHasMetadata:1];
    [(ICCameraItem *)v6 setMetadataState:1];
    [(ICCameraItem *)v6 setThumbnailState:1];
    v6->_privOrientation = 1;
    [(ICCameraFile *)v6 setOrientationOverridden:0];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sidecarFiles = v6->_sidecarFiles;
    v6->_sidecarFiles = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subImages = v6->_subImages;
    v6->_subImages = v9;

    debugBadge = v6->_debugBadge;
    v6->_debugBadge = 0;

    debugType = v6->_debugType;
    v6->_debugType = 0;

    fileIsJPEG = v6->_fileIsJPEG;
    v6->_fileIsJPEG = 0;

    fileIsHEIC = v6->_fileIsHEIC;
    v6->_fileIsHEIC = 0;

    v15 = v6;
  }

  return v6;
}

- (ICCameraFile)initWithProxy:(id)proxy parentFolder:(id)folder device:(id)device
{
  proxyCopy = proxy;
  deviceCopy = device;
  folderCopy = folder;
  name = [proxyCopy name];
  v45.receiver = self;
  v45.super_class = ICCameraFile;
  v12 = [(ICCameraItem *)&v45 initWithName:name parentFolder:folderCopy device:deviceCopy];

  if (!v12)
  {
    goto LABEL_28;
  }

  [(ICCameraFile *)v12 setHasMetadata:1];
  [(ICCameraItem *)v12 setMetadataState:1];
  [(ICCameraItem *)v12 setThumbnailState:1];
  v12->_privOrientation = 1;
  [(ICCameraFile *)v12 setOrientationOverridden:0];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sidecarFiles = v12->_sidecarFiles;
  v12->_sidecarFiles = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  subImages = v12->_subImages;
  v12->_subImages = v15;

  debugBadge = v12->_debugBadge;
  v12->_debugBadge = 0;

  debugType = v12->_debugType;
  v12->_debugType = 0;

  fileIsJPEG = v12->_fileIsJPEG;
  v12->_fileIsJPEG = 0;

  fileIsHEIC = v12->_fileIsHEIC;
  v12->_fileIsHEIC = 0;

  -[ICCameraItem setObjectHandle:](v12, "setObjectHandle:", [proxyCopy objectHandle]);
  -[ICCameraItem setObjectID:](v12, "setObjectID:", [proxyCopy objectHandle]);
  name2 = [proxyCopy name];
  pathExtension = [name2 pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if (lowercaseString)
  {
    v24 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:lowercaseString];
  }

  else
  {
    v24 = 0;
  }

  v25 = _gKnownRawExtensions;
  if (!_gKnownRawExtensions)
  {
    v26 = CGImageSourceCopyTypeExtensions();
    v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v26];
    v28 = _gKnownRawExtensions;
    _gKnownRawExtensions = v27;

    [_gKnownRawExtensions removeObject:@"tif"];
    v25 = _gKnownRawExtensions;
  }

  if ([v25 count] && objc_msgSend(_gKnownRawExtensions, "containsObject:", lowercaseString))
  {
    -[ICCameraItem setRaw:](v12, "setRaw:", [_gKnownRawExtensions containsObject:lowercaseString]);
LABEL_11:
    v31 = MEMORY[0x1E6982E30];
    goto LABEL_16;
  }

  v29 = _gImageIOSupportedFileExtensions;
  v23LowercaseString = [lowercaseString lowercaseString];
  LOBYTE(v29) = [v29 containsObject:v23LowercaseString];

  if (v29)
  {
    goto LABEL_11;
  }

  if (v24)
  {
    v32 = *MEMORY[0x1E6982EE8];
    if ([v24 conformsToType:*MEMORY[0x1E6982EE8]])
    {
      goto LABEL_17;
    }

    v32 = *MEMORY[0x1E6982CD0];
    if ([v24 conformsToType:*MEMORY[0x1E6982CD0]])
    {
      goto LABEL_17;
    }
  }

  v31 = MEMORY[0x1E6982D60];
LABEL_16:
  v32 = *v31;
LABEL_17:
  identifier = [v32 identifier];
  [(ICCameraFile *)v12 setUTI:identifier];

  -[ICCameraFile setWidth:](v12, "setWidth:", [proxyCopy width]);
  -[ICCameraFile setHeight:](v12, "setHeight:", [proxyCopy height]);
  -[ICCameraFile setFileSize:](v12, "setFileSize:", [proxyCopy size]);
  -[ICCameraFile setHasThumbnail:](v12, "setHasThumbnail:", [proxyCopy hasThumbnail]);
  [(ICCameraFile *)v12 setHasMetadata:1];
  -[ICCameraItem setParentID:](v12, "setParentID:", [proxyCopy parentObjectHandle]);
  -[ICCameraItem setLocked:](v12, "setLocked:", [proxyCopy readOnly]);
  v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(proxyCopy, "captureDate")}];
  [(ICCameraItem *)v12 setCreationDate:v34];
  v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(proxyCopy, "modificationDate")}];
  [(ICCameraItem *)v12 setModificationDate:v35];
  [(ICCameraFile *)v12 setFileCreationDate:v34];
  [(ICCameraFile *)v12 setFileModificationDate:v35];
  transportType = [deviceCopy transportType];
  if ([transportType isEqualToString:@"ICTransportTypeUSB"])
  {
    isAppleDevice = [deviceCopy isAppleDevice];

    if (isAppleDevice)
    {
      name3 = [proxyCopy name];
      v39 = strstr([name3 UTF8String], "_E");

      if (v39)
      {
        [(ICCameraFile *)v12 flagMediaMetadata:8];
      }

      sequenceNumber = [proxyCopy sequenceNumber];
      v41 = 1 << sequenceNumber;
      if (sequenceNumber == 170)
      {
        v41 = 513;
      }

      [(ICCameraFile *)v12 flagMediaMetadata:v41];
    }
  }

  else
  {
  }

  keywords = [proxyCopy keywords];

  if (keywords)
  {
    keywords2 = [proxyCopy keywords];
    [(ICCameraFile *)v12 setKeywordPropertiesFromDict:keywords2];
  }

LABEL_28:
  return v12;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqual:@"children"])
  {
    sidecarFiles = [(ICCameraFile *)self sidecarFiles];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICCameraFile;
    sidecarFiles = [(ICCameraItem *)&v8 valueForUndefinedKey:keyCopy];
  }

  v6 = sidecarFiles;

  return v6;
}

- (BOOL)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy && [metadataCopy count])
  {
    [(ICCameraFile *)self willChangeValueForKey:@"metadata"];
    v6 = [v5 copy];
    metadata = self->_metadata;
    self->_metadata = v6;

    [(ICCameraFile *)self setKeywordPropertiesFromDict:v5];
    [(ICCameraFile *)self didChangeValueForKey:@"metadata"];
    if (![(ICCameraFile *)self orientationOverridden])
    {
      v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
      v9 = v8;
      if (v8)
      {
        unsignedIntegerValue = [v8 unsignedIntegerValue];
        if (unsignedIntegerValue != [(ICCameraFile *)self orientation])
        {
          [(ICCameraFile *)self willChangeValueForKey:@"orientation"];
          [(ICCameraFile *)self setOrientation:unsignedIntegerValue];
          [(ICCameraFile *)self didChangeValueForKey:@"orientation"];
        }
      }
    }

    device = [(ICCameraItem *)self device];
    transportType = [device transportType];
    v13 = [transportType isEqualToString:@"ICTransportTypeMassStorage"];

    if (v13)
    {
      [(ICCameraFile *)self setKeywordPropertiesFromDict:v5];
    }
  }

  hasMetadata = [(ICCameraFile *)self hasMetadata];

  return hasMetadata;
}

- (void)requestThumbnail
{
  v11[1] = *MEMORY[0x1E69E9840];
  device = [(ICCameraItem *)self device];
  delegate = [device delegate];

  v10 = @"kCGImageSourceShouldCache";
  v11[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__ICCameraFile_requestThumbnail__block_invoke;
  v8[3] = &unk_1E829CC58;
  v8[4] = self;
  v9 = delegate;
  v6 = delegate;
  [(ICCameraFile *)self requestThumbnailDataWithOptions:v5 completion:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __32__ICCameraFile_requestThumbnail__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) device];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) device];
    if ([v7 hasOpenSession] && *(a1 + 40))
    {
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __32__ICCameraFile_requestThumbnail__block_invoke_2;
        block[3] = &unk_1E829CC30;
        v9 = *(a1 + 40);
        v10 = *(a1 + 32);
        v12 = v9;
        v13 = v10;
        v14 = v4;
        ICPerformBlockOnMainThread(block);
      }
    }

    else
    {
    }
  }
}

void __32__ICCameraFile_requestThumbnail__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) device];
  [v2 cameraDevice:v3 didReceiveThumbnail:objc_msgSend(*(a1 + 40) forItem:"thumbnail") error:{*(a1 + 40), *(a1 + 48)}];
}

- (void)requestThumbnailDataWithOptions:(NSDictionary *)options completion:(void *)completion
{
  v6 = options;
  v7 = completion;
  thumbnailData = [(ICCameraFile *)self thumbnailData];
  if (thumbnailData)
  {
    v9 = thumbnailData;
    v10 = [(NSDictionary *)v6 objectForKeyedSubscript:@"kCGImageSourceThumbnailMaxPixelSize"];
    integerValue = [v10 integerValue];

    if (integerValue <= 160)
    {
      thumbnailData2 = [(ICCameraFile *)self thumbnailData];
      v7[2](v7, thumbnailData2, 0);
LABEL_16:

      goto LABEL_17;
    }
  }

  if (![(ICCameraFile *)self hasThumbnail]|| [(ICCameraItem *)self thumbnailState]== 4)
  {
    goto LABEL_10;
  }

  device = [(ICCameraItem *)self device];
  if (([device hasOpenSession] & 1) == 0)
  {

    goto LABEL_10;
  }

  device2 = [(ICCameraItem *)self device];
  beingEjected = [device2 beingEjected];

  if (beingEjected)
  {
LABEL_10:
    if ([(ICCameraItem *)self thumbnailState]== 4)
    {
      v17 = -20149;
    }

    else
    {
      device3 = [(ICCameraItem *)self device];
      hasOpenSession = [device3 hasOpenSession];

      if (hasOpenSession)
      {
        [(ICCameraItem *)self setThumbnailState:8];
        v17 = -21000;
      }

      else
      {
        v17 = -9958;
      }
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v17 userInfo:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__ICCameraFile_requestThumbnailDataWithOptions_completion___block_invoke_196;
    block[3] = &unk_1E829CCD0;
    v22 = v20;
    v23 = v7;
    thumbnailData2 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_16;
  }

  device4 = [(ICCameraItem *)self device];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__ICCameraFile_requestThumbnailDataWithOptions_completion___block_invoke;
  v24[3] = &unk_1E829CCA8;
  v24[4] = self;
  v25 = v6;
  v26 = v7;
  [device4 dispatchAsyncForOperationType:2 block:v24];

LABEL_17:
}

void __59__ICCameraFile_requestThumbnailDataWithOptions_completion___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) device];
  v3 = [v2 delegate];

  __ICOSLogCreate();
  v4 = __ICLogTypeEnabled();
  v5 = MEMORY[0x1E69A8B08];
  if (v4)
  {
    v6 = [*(a1 + 32) name];
    if ([v6 length] >= 0x15)
    {
      v7 = [v6 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];

      v6 = v8;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-> req thumb"];
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6;
      v12 = v10;
      *buf = 136446466;
      v52 = [v6 UTF8String];
      v53 = 2114;
      v54 = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) device], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v3, "cameraDevice:shouldGetThumbnailOfItem:", v13, *(a1 + 32)), v13, !v14))
  {
    [*(a1 + 32) setThumbnailState:1];
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-20098 userInfo:0];
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v35 = [*(a1 + 32) name];
      if ([v35 length] >= 0x15)
      {
        v36 = [v35 substringWithRange:{0, 18}];
        v37 = [v36 stringByAppendingString:@".."];

        v35 = v37;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<- recv thumb: Client Canceled Request"];
      v39 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v35;
        v41 = v39;
        v42 = [v35 UTF8String];
        *buf = 136446466;
        v52 = v42;
        v53 = 2114;
        v54 = v38;
        _os_log_impl(&dword_1C6F19000, v41, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = v15;
    if (*(a1 + 40))
    {
      [v15 addEntriesFromDictionary:?];
    }

    v17 = dispatch_semaphore_create(0);
    v18 = [*(a1 + 32) device];
    v19 = [v18 deviceManager];
    v20 = *(a1 + 32);
    v21 = [v20 device];
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __59__ICCameraFile_requestThumbnailDataWithOptions_completion___block_invoke_172;
    v46 = &unk_1E829CC80;
    v22 = v17;
    v47 = v22;
    v23 = v16;
    v24 = *(a1 + 32);
    v48 = v23;
    v49 = v24;
    v50 = *(a1 + 48);
    [v19 getFileThumbnail:v20 fromDevice:v21 withOptions:v23 completion:&v43];

    v25 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v22, v25))
    {
      __ICOSLogCreate();
      v26 = [*(a1 + 32) name];
      if ([v26 length] >= 0x15)
      {
        v27 = [v26 substringWithRange:{0, 18}];
        v28 = [v27 stringByAppendingString:@".."];

        v26 = v28;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-- recv thumb, queue pause timeout, will continue with next operation to unblock"];
      v30 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v26;
        v32 = v30;
        v33 = [v26 UTF8String];
        *buf = 136446466;
        v52 = v33;
        v53 = 2114;
        v54 = v29;
        _os_log_impl(&dword_1C6F19000, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __59__ICCameraFile_requestThumbnailDataWithOptions_completion___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v8 = [v6 objectForKeyedSubscript:@"thumb"];
  v9 = [v6 objectForKeyedSubscript:@"ICThumbnailRotated"];

  v10 = v8;
  if (!v9)
  {
    v10 = [v5 thumbnailDataUsingOrientation:v7 andSourceThumbnailData:v8];
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:@"kCGImageSourceShouldCache"];
  v12 = v11;
  if (v11)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
  }

  else
  {
    v14 = [v10 length];

    if (v14)
    {
      [v5 cacheThumbnailData:v10];
    }
  }

  v15 = [v6 objectForKeyedSubscript:@"errCode"];
  v16 = [v15 intValue];

  if (v16)
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-21000 userInfo:0];
    v18 = 8;
  }

  else
  {
    v17 = 0;
    v18 = 16;
  }

  [*(a1 + 48) setThumbnailState:v18];
  if (v7)
  {
    [*(a1 + 48) setOrientation:{objc_msgSend(v7, "intValue")}];
  }

  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v19 = [*(a1 + 48) name];
    if ([v19 length] >= 0x15)
    {
      v20 = [v19 substringWithRange:{0, 18}];
      v21 = [v20 stringByAppendingString:@".."];

      v19 = v21;
    }

    v22 = @"SUCCESS";
    if (v17)
    {
      v22 = v17;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<- recv thumb: %@", v22];
    v24 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v19;
      v26 = v24;
      *buf = 136446466;
      v29 = [v19 UTF8String];
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_1C6F19000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();

  v27 = *MEMORY[0x1E69E9840];
}

- (void)requestThumbnailWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ICCameraFile_requestThumbnailWithOptions_completion___block_invoke;
  v8[3] = &unk_1E829CCF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ICCameraFile *)self requestThumbnailDataWithOptions:options completion:v8];
}

- (void)requestMetadata
{
  device = [(ICCameraItem *)self device];
  delegate = [device delegate];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__ICCameraFile_requestMetadata__block_invoke;
  v6[3] = &unk_1E829CD20;
  v6[4] = self;
  v7 = delegate;
  v5 = delegate;
  [(ICCameraFile *)self requestMetadataDictionaryWithOptions:MEMORY[0x1E695E0F8] completion:v6];
}

void __31__ICCameraFile_requestMetadata__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ICCameraFile_requestMetadata__block_invoke_2;
  block[3] = &unk_1E829CC30;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v4;
  v6 = v4;
  ICPerformBlockOnMainThread(block);
}

void __31__ICCameraFile_requestMetadata__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  if (v2)
  {
    v7 = v2;
    v3 = [*(a1 + 32) device];
    if ([v3 hasOpenSession])
    {
      v4 = *(a1 + 40);

      if (!v4)
      {
        return;
      }

      v5 = *(a1 + 40);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) device];
      v3 = [*(a1 + 32) metadata];
      [v6 cameraDevice:v7 didReceiveMetadata:v3 forItem:*(a1 + 32) error:*(a1 + 48)];
    }
  }
}

- (void)requestMetadataDictionaryWithOptions:(NSDictionary *)options completion:(void *)completion
{
  v6 = options;
  v7 = completion;
  metadata = [(ICCameraFile *)self metadata];

  if (metadata)
  {
    metadata2 = [(ICCameraFile *)self metadata];
    v7[2](v7, metadata2, 0);
LABEL_15:

    goto LABEL_16;
  }

  if (![(ICCameraFile *)self hasMetadata]|| [(ICCameraItem *)self metadataState]== 4)
  {
    goto LABEL_9;
  }

  device = [(ICCameraItem *)self device];
  if (([device hasOpenSession] & 1) == 0)
  {

    goto LABEL_9;
  }

  device2 = [(ICCameraItem *)self device];
  beingEjected = [device2 beingEjected];

  if (beingEjected)
  {
LABEL_9:
    if ([(ICCameraItem *)self metadataState]== 4)
    {
      v14 = -20149;
    }

    else
    {
      device3 = [(ICCameraItem *)self device];
      hasOpenSession = [device3 hasOpenSession];

      if (hasOpenSession)
      {
        [(ICCameraItem *)self setMetadataState:8];
        v14 = -20150;
      }

      else
      {
        v14 = -9958;
      }
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v14 userInfo:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCameraFile_requestMetadataDictionaryWithOptions_completion___block_invoke_215;
    block[3] = &unk_1E829CCD0;
    v19 = v17;
    v20 = v7;
    metadata2 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_15;
  }

  [(ICCameraItem *)self setMetadataState:4];
  device4 = [(ICCameraItem *)self device];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__ICCameraFile_requestMetadataDictionaryWithOptions_completion___block_invoke;
  v21[3] = &unk_1E829CCA8;
  v21[4] = self;
  v22 = v6;
  v23 = v7;
  [device4 dispatchAsyncForOperationType:3 block:v21];

LABEL_16:
}

void __64__ICCameraFile_requestMetadataDictionaryWithOptions_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) device];
  v3 = [v2 delegate];

  __ICOSLogCreate();
  v4 = __ICLogTypeEnabled();
  v5 = MEMORY[0x1E69A8B08];
  if (v4)
  {
    v6 = [*(a1 + 32) name];
    if ([v6 length] >= 0x15)
    {
      v7 = [v6 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];

      v6 = v8;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-> req meta"];
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6;
      v12 = v10;
      *buf = 136446466;
      v48 = [v6 UTF8String];
      v49 = 2114;
      v50 = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) device], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v3, "cameraDevice:shouldGetMetadataOfItem:", v13, *(a1 + 32)), v13, !v14))
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-20148 userInfo:0];
    [*(a1 + 32) setMetadataState:1];
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v34 = [*(a1 + 32) name];
      if ([v34 length] >= 0x15)
      {
        v35 = [v34 substringWithRange:{0, 18}];
        v36 = [v35 stringByAppendingString:@".."];

        v34 = v36;
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<- recv meta: Client Canceled Request"];
      v38 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v34;
        v40 = v38;
        v41 = [v34 UTF8String];
        *buf = 136446466;
        v48 = v41;
        v49 = 2114;
        v50 = v37;
        _os_log_impl(&dword_1C6F19000, v40, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    v42 = *(a1 + 48);
    v32 = [*(a1 + 32) metadata];
    (*(v42 + 16))(v42, v32, v21);
  }

  else
  {
    v15 = dispatch_semaphore_create(0);
    v16 = [*(a1 + 32) device];
    v17 = [v16 deviceManager];
    v18 = *(a1 + 32);
    v19 = [v18 device];
    v20 = *(a1 + 40);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __64__ICCameraFile_requestMetadataDictionaryWithOptions_completion___block_invoke_205;
    v43[3] = &unk_1E829CD48;
    v21 = v15;
    v22 = *(a1 + 32);
    v44 = v21;
    v45 = v22;
    v46 = *(a1 + 48);
    [v17 getFileMetadata:v18 fromDevice:v19 withOptions:v20 completion:v43];

    v23 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v21, v23))
    {
      __ICOSLogCreate();
      v24 = [*(a1 + 32) name];
      if ([v24 length] >= 0x15)
      {
        v25 = [v24 substringWithRange:{0, 18}];
        v26 = [v25 stringByAppendingString:@".."];

        v24 = v26;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-- recv meta, queue pause timeout, will continue with next operation to unblock"];
      v28 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v24;
        v30 = v28;
        v31 = [v24 UTF8String];
        *buf = 136446466;
        v48 = v31;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&dword_1C6F19000, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    v32 = v44;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __64__ICCameraFile_requestMetadataDictionaryWithOptions_completion___block_invoke_205(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  dispatch_semaphore_signal(v4);
  v6 = [v5 objectForKeyedSubscript:@"metadata"];
  v7 = [v5 objectForKeyedSubscript:@"errCode"];

  LODWORD(v5) = [v7 intValue];
  if (v5)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-20150 userInfo:0];
    v9 = (a1 + 40);
  }

  else
  {
    v9 = (a1 + 40);
    if ([*(a1 + 40) setMetadata:v6])
    {
      v8 = 0;
      v10 = 16;
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-20147 userInfo:0];
  }

  v10 = 8;
LABEL_7:
  [*v9 setMetadataState:v10];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v11 = [*(a1 + 40) name];
    if ([v11 length] >= 0x15)
    {
      v12 = [v11 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];

      v11 = v13;
    }

    v14 = @"SUCCESS";
    if (v8)
    {
      v14 = v8;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<- recv meta: %@", v14];
    v16 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v11;
      v18 = v16;
      *buf = 136446466;
      v23 = [v11 UTF8String];
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_1C6F19000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v19 = *(a1 + 48);
  v20 = [*(a1 + 40) metadata];
  (*(v19 + 16))(v19, v20, v8);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)requestMetadataWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__ICCameraFile_requestMetadataWithOptions_completion___block_invoke;
  v8[3] = &unk_1E829CD70;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ICCameraFile *)self requestMetadataDictionaryWithOptions:options completion:v8];
}

- (NSProgress)requestDownloadWithOptions:(NSDictionary *)options completion:(void *)completion
{
  v6 = options;
  v7 = completion;
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:@"ICSidecarDownload"];
  device = [(ICCameraItem *)self device];
  hasOpenSession = [device hasOpenSession];

  if (hasOpenSession)
  {
    device2 = [(ICCameraItem *)self device];
    if ([device2 hasOpenSession])
    {
      device3 = [(ICCameraItem *)self device];
      beingEjected = [device3 beingEjected];

      if ((beingEjected & 1) == 0)
      {
        if (v8)
        {
          v14 = 0;
        }

        else
        {
          v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{-[ICCameraFile fileSize](self, "fileSize")}];
          [v14 setCancellable:1];
          [v14 setPausable:0];
        }

        device4 = [(ICCameraItem *)self device];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke;
        v26[3] = &unk_1E829CE30;
        v26[4] = self;
        v27 = v8;
        v24 = v14;
        v28 = v24;
        v29 = v6;
        v30 = v7;
        [device4 dispatchAsyncForOperationType:4 block:v26];

        v25 = v30;
        v21 = v24;

        goto LABEL_10;
      }
    }

    else
    {
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    device5 = [(ICCameraItem *)self device];
    [array addTruth:objc_msgSend(device5 code:{"hasOpenSession") ^ 1, -9958}];

    device6 = [(ICCameraItem *)self device];
    [array addTruth:objc_msgSend(device6 code:{"beingEjected"), -21346}];

    [dictionary setObject:array forKeyedSubscript:@"errors"];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-30000 userInfo:dictionary];
    (*(v7 + 2))(v7, 0, v20);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9958 userInfo:0];
    (*(v7 + 2))(v7, 0, v15);
  }

  v21 = 0;
LABEL_10:

  return v21;
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke(id *a1)
{
  v157 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v3 = a1[4];
  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v150[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_2;
  v150[3] = &unk_1E829C820;
  dsema = v2;
  v151 = dsema;
  [v3 requestRefreshObjectHandleInfo:v150];
  v4 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(dsema, v4);
  if (!a1[5])
  {
    v5 = a1[6];
    v6 = [a1[4] device];
    [v6 setDownloadProgress:v5];

    v7 = [a1[4] device];
    v8 = [v7 downloadProgress];
    [v8 setTotalUnitCount:{objc_msgSend(a1[4], "fileSize")}];
  }

  v112 = [a1[7] objectForKeyedSubscript:@"ICDownloadsDirectoryURL"];
  v9 = [a1[7] objectForKeyedSubscript:@"ICSaveAsFilename"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [a1[4] name];
  }

  v12 = v11;

  v113 = [a1[7] objectForKeyedSubscript:@"ICAppendedDuplicateNumber"];
  v111 = [v12 stringByDeletingPathExtension];
  v110 = [v12 pathExtension];
  v106 = v12;
  v108 = [a1[4] fileSize];
  if (v113)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d.%@", v111, objc_msgSend(v113, "intValue"), v110];

    __ICOSLogCreate();
    v14 = [a1[4] name];
    if ([v14 length] >= 0x15)
    {
      v15 = [v14 substringWithRange:{0, 18}];
      v16 = [v15 stringByAppendingString:@".."];

      v14 = v16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Main asset filename is already on disk, appending %d", objc_msgSend(v113, "intValue")];
    v18 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v14;
      v20 = v18;
      v21 = [v14 UTF8String];
      *buf = 136446466;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1C6F19000, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (a1[5])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v111, v110];
    v14 = v106;
LABEL_14:

    v22 = [v112 path];
    v23 = [v22 stringByAppendingPathComponent:v13];
    v24 = v23;
    v25 = open([v23 UTF8String], 2562, 33152);

    goto LABEL_15;
  }

  v113 = 0;
  v81 = 1;
  v13 = v106;
  while (1)
  {
    v82 = [v112 path];
    v83 = [v82 stringByAppendingPathComponent:v13];
    v84 = v83;
    v25 = open([v83 UTF8String], 2562, 33152);
    v85 = v25 != -1 || v81 >= 0x14;
    v86 = !v85;

    if (!v86)
    {
      break;
    }

    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d.%@", v111, v81, v110];

    __ICOSLogCreate();
    v88 = [a1[4] name];
    if ([v88 length] >= 0x15)
    {
      v89 = [v88 substringWithRange:{0, 18}];
      v90 = [v89 stringByAppendingString:@".."];

      v88 = v90;
    }

    v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Filename is already on disk, trying %@", v87];
    v92 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v93 = v88;
      v94 = v92;
      v95 = [v88 UTF8String];
      *buf = 136446466;
      *&buf[4] = v95;
      *&buf[12] = 2114;
      *&buf[14] = v91;
      _os_log_impl(&dword_1C6F19000, v94, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v96 = [MEMORY[0x1E696AD98] numberWithInt:v81];

    v81 = (v81 + 1);
    v13 = v87;
    v113 = v96;
  }

LABEL_15:
  v26 = [v112 path];
  v105 = [v26 stringByAppendingPathComponent:v13];

  if (!v13 || !v108)
  {
    __ICOSLogCreate();
    if ([@"download fail" length] < 0x15)
    {
      v52 = @"download fail";
    }

    else
    {
      v51 = [@"download fail" substringWithRange:{0, 18}];
      v52 = [v51 stringByAppendingString:@".."];
    }

    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filename: %@, fileSize: %llu", v13, v108];
    v73 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v74 = v52;
      v75 = v73;
      v76 = [(__CFString *)v52 UTF8String];
      *buf = 136446466;
      *&buf[4] = v76;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      _os_log_impl(&dword_1C6F19000, v75, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v77 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9934 userInfo:0];
    (*(a1[8] + 2))();
    if (!a1[5])
    {
      v78 = [a1[4] device];
      [v78 setDownloadProgress:0];
    }

    goto LABEL_72;
  }

  v27 = v105;
  v104 = [v105 fileSystemRepresentation];
  __ICOSLogCreate();
  if (v25 == -1)
  {
    if ([@"download fail" length] < 0x15)
    {
      v80 = @"download fail";
    }

    else
    {
      v79 = [@"download fail" substringWithRange:{0, 18}];
      v80 = [v79 stringByAppendingString:@".."];
    }

    v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filename: %@, fileSize: %llu", v13, v108];
    v98 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v99 = v80;
      v100 = v98;
      v101 = [(__CFString *)v80 UTF8String];
      *buf = 136446466;
      *&buf[4] = v101;
      *&buf[12] = 2114;
      *&buf[14] = v97;
      _os_log_impl(&dword_1C6F19000, v100, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v77 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9934 userInfo:0];
    (*(a1[8] + 2))();
    if (!a1[5])
    {
      v102 = [a1[4] device];
      [v102 setDownloadProgress:0];
    }

LABEL_72:

    goto LABEL_73;
  }

  v28 = [a1[4] name];
  if ([v28 length] >= 0x15)
  {
    v29 = [v28 substringWithRange:{0, 18}];
    v30 = [v29 stringByAppendingString:@".."];

    v28 = v30;
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Downloading to: %s", v104];
  v32 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v33 = v28;
    v34 = v32;
    v35 = [v28 UTF8String];
    *buf = 136446466;
    *&buf[4] = v35;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    _os_log_impl(&dword_1C6F19000, v34, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v156 = v108;
  v146 = 0;
  v147 = &v146;
  v148 = 0x2020000000;
  v149 = 0;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 0;
  v36 = [a1[4] device];
  if ([v36 isAppleDevice])
  {
    v37 = 50331648;
  }

  else
  {
    v37 = 0x400000;
  }

  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  [a1[4] requestOpenStreamData];
  info = 0;
  mach_timebase_info(&info);
  _gBenchmarkStartMachTime = 0;
  *&_gBenchmarkStartMachTime = mach_absolute_time();
  while (*(*&buf[8] + 24) >= 1 && (v142[3] & 1) == 0 && ([a1[6] isCancelled] & 1) == 0)
  {
    v38 = objc_autoreleasePoolPush();
    if (v37 >= *(*&buf[8] + 24))
    {
      v39 = *(*&buf[8] + 24);
    }

    else
    {
      v39 = v37;
    }

    __ICOSLogCreate();
    v40 = [a1[4] name];
    if ([v40 length] >= 0x15)
    {
      v41 = [v40 substringWithRange:{0, 18}];
      v42 = [v41 stringByAppendingString:@".."];

      v40 = v42;
    }

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting: %llu at offset: %llu", v39, v147[3]];
    v44 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v40;
      v46 = [v40 UTF8String];
      *v152 = 136446466;
      *&v152[4] = v46;
      v153 = 2114;
      v154 = v43;
      _os_log_impl(&dword_1C6F19000, v44, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v152, 0x16u);
    }

    v47 = dispatch_semaphore_create(0);
    *v152 = 0;
    mach_timebase_info(v152);
    _gBenchmarkStartMachTime = 0;
    *&_gBenchmarkStartMachTime = mach_absolute_time();
    v48 = a1[4];
    v49 = v147[3];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_248;
    v125[3] = &unk_1E829CDC0;
    v129 = &v137;
    v125[4] = v48;
    v135 = v25;
    v130 = &v141;
    v131 = v145;
    v126 = a1[5];
    v127 = a1[6];
    v132 = buf;
    v133 = &v146;
    v134 = v108;
    v50 = v47;
    v128 = v50;
    [v48 requestStreamDataAtOffset:v49 length:v39 completion:v125];
    dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);

    objc_autoreleasePoolPop(v38);
  }

  v53 = 0.0;
  if (!a1[5])
  {
    v54 = v138[3];
    numer = info.numer;
    denom = info.denom;
    v57 = *(*&buf[8] + 24);
    __ICOSLogCreate();
    v58 = [a1[4] name];
    if ([v58 length] >= 0x15)
    {
      v59 = [v58 substringWithRange:{0, 18}];
      v60 = [v59 stringByAppendingString:@".."];

      v58 = v60;
    }

    v53 = -(v57 - ((1000.0 / (((v54 * numer) / denom) / 1000000.0)) * v108)) * 0.000000953674316;
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"icDatarate: %07.2f", *&v53];
    v62 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v58;
      v64 = [v58 UTF8String];
      *v152 = 136446466;
      *&v152[4] = v64;
      v153 = 2114;
      v154 = v61;
      _os_log_impl(&dword_1C6F19000, v62, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v152, 0x16u);
    }
  }

  [a1[4] requestCloseStreamData];
  v65 = [a1[4] device];
  v66 = [v65 deviceWriteQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_283;
  block[3] = &unk_1E829CE08;
  v121 = &v141;
  v122 = v104;
  v67 = a1[6];
  v68 = a1[5];
  v123 = v53;
  v109 = a1[4];
  v69 = a1[7];
  *&v70 = v109;
  *(&v70 + 1) = v69;
  *&v71 = v67;
  *(&v71 + 1) = v68;
  v115 = v71;
  v116 = v70;
  v124 = v25;
  v117 = v113;
  v118 = v112;
  v120 = a1[8];
  v119 = v13;
  dispatch_async(v66, block);

  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(&v146, 8);
  _Block_object_dispose(buf, 8);
LABEL_73:

  v103 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_248(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = ((mach_absolute_time() - *&_gBenchmarkStartMachTime) + *(*(*(a1 + 64) + 8) + 24));
  v4 = [v3 objectForKeyedSubscript:@"ICReadData"];
  v5 = [v3 objectForKeyedSubscript:@"ICBytesRead"];
  v6 = [v5 unsignedLongLongValue];

  __ICOSLogCreate();
  v7 = [*(a1 + 32) name];
  if ([v7 length] >= 0x15)
  {
    v8 = [v7 substringWithRange:{0, 18}];
    v9 = [v8 stringByAppendingString:@".."];

    v7 = v9;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received: %llu bytes", v6];
  v11 = MEMORY[0x1E69A8B08];
  v12 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v7;
    v14 = v12;
    *buf = 136446466;
    v50 = [v7 UTF8String];
    v51 = 2114;
    v52 = v10;
    _os_log_impl(&dword_1C6F19000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v4 && [v4 length] && v6)
  {
    v15 = [*(a1 + 32) device];
    v16 = [v15 deviceWriteQueue];
    block = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_258;
    v41 = &unk_1E829CD98;
    v42 = v3;
    v48 = *(a1 + 112);
    v17 = v4;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v43 = v17;
    v44 = v18;
    v47 = *(a1 + 72);
    v45 = v19;
    v46 = *(a1 + 48);
    dispatch_async(v16, &block);

    *(*(*(a1 + 88) + 8) + 24) -= v6;
    *(*(*(a1 + 96) + 8) + 24) = *(a1 + 104) - *(*(*(a1 + 88) + 8) + 24);
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v20 = [*(a1 + 32) name];
      if ([v20 length] >= 0x15)
      {
        v21 = [v20 substringWithRange:{0, 18}];
        v22 = [v21 stringByAppendingString:@".."];

        v20 = v22;
      }

      v23 = *(*(*(a1 + 96) + 8) + 24);
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+ Request @ Offset: %lld, Remaining: %lld", v23, *(*(*(a1 + 88) + 8) + 24), block, v39, v40, v41, v42, v43, v44, v45];
      v25 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v20;
        v27 = v25;
        v28 = [v20 UTF8String];
        *buf = 136446466;
        v50 = v28;
        v51 = 2114;
        v52 = v24;
        _os_log_impl(&dword_1C6F19000, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    __ICOSLogCreate();
    v29 = [*(a1 + 32) name];
    if ([v29 length] >= 0x15)
    {
      v30 = [v29 substringWithRange:{0, 18}];
      v31 = [v30 stringByAppendingString:@".."];

      v29 = v31;
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Downloading Failed - Missing File Data"];
    v33 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v29;
      v35 = v33;
      v36 = [v29 UTF8String];
      *buf = 136446466;
      v50 = v36;
      v51 = 2114;
      v52 = v32;
      _os_log_impl(&dword_1C6F19000, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v37 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_258(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICBufferOffset"];
  v3 = [v2 unsignedLongLongValue];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"ICBytesRead"];
  v5 = [v4 unsignedLongLongValue];

  v6 = write(*(a1 + 88), ([*(a1 + 40) bytes] + v3), v5);
  if (v6 != -1 && v6 == v5)
  {
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v16 = [*(a1 + 48) name];
      if ([v16 length] >= 0x15)
      {
        v17 = [v16 substringWithRange:{0, 18}];
        v18 = [v17 stringByAppendingString:@".."];

        v16 = v18;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+ Wrote: %lld @ Offset: %lld", v5, *(*(*(a1 + 80) + 8) + 24)];
      v20 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v16;
        v22 = v20;
        *buf = 136446466;
        v31 = [v16 UTF8String];
        v32 = 2114;
        v33 = v19;
        _os_log_impl(&dword_1C6F19000, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    *(*(*(a1 + 80) + 8) + 24) += v5;
  }

  else
  {
    v8 = v6;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    __ICOSLogCreate();
    v9 = [*(a1 + 48) name];
    if ([v9 length] >= 0x15)
    {
      v10 = [v9 substringWithRange:{0, 18}];
      v11 = [v10 stringByAppendingString:@".."];

      v9 = v11;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Downloading Failed - Appended: %llu BufferLength: %llu", v8, v5];
    v13 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v9;
      v15 = v13;
      *buf = 136446466;
      v31 = [v9 UTF8String];
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1C6F19000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (!*(a1 + 56))
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 80) + 8) + 24)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_268;
    block[3] = &unk_1E829CC30;
    v27 = *(a1 + 64);
    v28 = v23;
    v29 = *(a1 + 48);
    v24 = v23;
    ICPerformBlockOnMainThread(block);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_268(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [a1[4] setCompletedUnitCount:{objc_msgSend(a1[5], "unsignedLongLongValue")}];
  __ICOSLogCreate();
  v2 = [a1[6] name];
  if ([v2 length] >= 0x15)
  {
    v3 = [v2 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];

    v2 = v4;
  }

  v5 = MEMORY[0x1E696AEC0];
  [a1[4] fractionCompleted];
  v7 = [v5 stringWithFormat:@"Progress: %f", v6];
  v8 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2;
    v10 = v8;
    *buf = 136446466;
    v15 = [v2 UTF8String];
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_1C6F19000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [a1[6] device];
  v12 = [v11 delegate];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 didReceiveDownloadProgressForFile:a1[6] downloadedBytes:objc_msgSend(a1[5] maxBytes:{"unsignedLongLongValue"), objc_msgSend(a1[6], "fileSize")}];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_283(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    unlink(*(a1 + 104));
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9934 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  if ([*(a1 + 32) isCancelled])
  {
    unlink(*(a1 + 104));
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9937 userInfo:0];

    v2 = v3;
  }

  else
  {
    if (!*(a1 + 40))
    {
      [*(a1 + 48) setLastImportSpeed:*(a1 + 112)];
    }

    v4 = [*(a1 + 56) objectForKeyedSubscript:@"ICTruncateAfterSuccessfulDownload"];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 48) isConverted];

      if (v6)
      {
        __ICOSLogCreate();
        v7 = @"truncating...";
        if ([@"truncating..." length] >= 0x15)
        {
          v8 = [@"truncating..." substringWithRange:{0, 18}];
          v7 = [v8 stringByAppendingString:@".."];
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reported File Size: %lld", objc_msgSend(*(a1 + 48), "fileSize")];
        v10 = MEMORY[0x1E69A8B08];
        v11 = *MEMORY[0x1E69A8B08];
        if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v7;
          v13 = v11;
          buf.st_dev = 136446466;
          *&buf.st_mode = [(__CFString *)v7 UTF8String];
          WORD2(buf.st_ino) = 2114;
          *(&buf.st_ino + 6) = v9;
          _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
        }

        memset(&buf, 0, sizeof(buf));
        if (!lstat(*(a1 + 104), &buf))
        {
          v14 = buf.st_size + 1;
          v15 = -1;
          do
          {
            LOBYTE(__buf) = 0;
            v16 = pread(*(a1 + 120), &__buf, 1uLL, v14 - 2);
            --v15;
            --v14;
          }

          while (v16 == 1 && __buf == 0);
          __ICOSLogCreate();
          v18 = [@"truncating..." length];
          if (v15 == -2)
          {
            if (v18 < 0x15)
            {
              v20 = @"truncating...";
            }

            else
            {
              v19 = [@"truncating..." substringWithRange:{0, 18}];
              v20 = [v19 stringByAppendingString:@".."];
            }

            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"File did not have padding."];
            v24 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v20;
              v26 = v24;
              v27 = [(__CFString *)v20 UTF8String];
              __buf = 136446466;
              v53 = v27;
              v54 = 2114;
              v55 = v23;
              _os_log_impl(&dword_1C6F19000, v26, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &__buf, 0x16u);
            }
          }

          else
          {
            if (v18 < 0x15)
            {
              v22 = @"truncating...";
            }

            else
            {
              v21 = [@"truncating..." substringWithRange:{0, 18}];
              v22 = [v21 stringByAppendingString:@".."];
            }

            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Truncated File Size: %zu", v14];
            v29 = *v10;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v22;
              v31 = v29;
              v32 = [(__CFString *)v22 UTF8String];
              __buf = 136446466;
              v53 = v32;
              v54 = 2114;
              v55 = v28;
              _os_log_impl(&dword_1C6F19000, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &__buf, 0x16u);
            }

            ftruncate(*(a1 + 120), v14);
          }
        }
      }
    }

    v33 = [*(a1 + 48) creationDate];
    [v33 timeIntervalSince1970];
    v35 = v34;

    v36 = [*(a1 + 48) modificationDate];
    [v36 timeIntervalSince1970];
    v38 = v37;

    *&buf.st_uid = v35;
    *&buf.st_rdev = 0;
    *&buf.st_dev = v38;
    buf.st_ino = 0;
    futimes(*(a1 + 120), &buf);
  }

  close(*(a1 + 120));
  if (!v2)
  {
    v39 = [*(a1 + 56) objectForKeyedSubscript:@"ICDownloadSidecarFiles"];
    v40 = [v39 BOOLValue];

    if (v40)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_299;
      block[3] = &unk_1E829CC30;
      block[4] = *(a1 + 48);
      v49 = *(a1 + 64);
      v50 = *(a1 + 72);
      ICPerformBlockOnMainThread(block);
    }
  }

  v41 = *(a1 + 80);
  (*(*(a1 + 88) + 16))();
  if (*(a1 + 40))
  {
    if (v2)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v42 = [*(a1 + 48) device];
    [v42 setDownloadProgress:0];

    if (v2)
    {
      goto LABEL_45;
    }
  }

  v43 = [*(a1 + 56) objectForKeyedSubscript:@"ICDeleteAfterSuccessfulDownload"];
  v44 = v43;
  if (v43 && [v43 BOOLValue])
  {
    v45 = [*(a1 + 48) device];
    v51 = *(a1 + 48);
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    [v45 requestDeleteFiles:v46];
  }

LABEL_45:
  v47 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_299(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) sidecarFiles];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x1E695E118];
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E695DF90] dictionary];
        v9 = v8;
        v10 = *(a1 + 40);
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"ICAppendedDuplicateNumber"];
        }

        [v9 setObject:v4 forKeyedSubscript:@"ICSidecarDownload"];
        [v9 setObject:*(a1 + 48) forKeyedSubscript:@"ICDownloadsDirectoryURL"];
        v11 = [v7 requestDownloadWithOptions:v9 completion:&__block_literal_global_3];

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __54__ICCameraFile_requestDownloadWithOptions_completion___block_invoke_2_300(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v3 = v2;
    if ([v3 length] >= 0x15)
    {
      v4 = [v3 substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];

      v3 = v5;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"++ (sidecar)"];
    v7 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      v11 = 136446466;
      v12 = [v3 UTF8String];
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestReadDataAtOffset:(off_t)offset length:(off_t)length completion:(void *)completion
{
  v8 = completion;
  device = [(ICCameraItem *)self device];
  hasOpenSession = [device hasOpenSession];

  if ((hasOpenSession & 1) == 0)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9958 userInfo:0];
    v8[2](v8, 0, v16);
    goto LABEL_6;
  }

  device2 = [(ICCameraItem *)self device];
  if (([device2 hasOpenSession] & 1) == 0)
  {

    goto LABEL_8;
  }

  device3 = [(ICCameraItem *)self device];
  beingEjected = [device3 beingEjected];

  if (beingEjected)
  {
LABEL_8:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    device4 = [(ICCameraItem *)self device];
    [array addTruth:objc_msgSend(device4 code:{"hasOpenSession") ^ 1, -9958}];

    device5 = [(ICCameraItem *)self device];
    [array addTruth:objc_msgSend(device5 code:{"beingEjected"), -21346}];

    [dictionary setObject:array forKeyedSubscript:@"errors"];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-30000 userInfo:dictionary];
    v8[2](v8, 0, v21);

    goto LABEL_9;
  }

  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:length];
  [v14 setCancellable:1];
  [v14 setPausable:0];
  device6 = [(ICCameraItem *)self device];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__ICCameraFile_requestReadDataAtOffset_length_completion___block_invoke;
  v22[3] = &unk_1E829CE80;
  v25 = offset;
  v26 = length;
  v22[4] = self;
  v23 = v14;
  v24 = v8;
  v16 = v14;
  [device6 dispatchAsyncForOperationType:4 block:v22];

LABEL_6:
LABEL_9:
}

void __58__ICCameraFile_requestReadDataAtOffset_length_completion___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fileSize];
  v3 = *(a1 + 56);
  if (v3 < 0 || (v4 = v2, v3 >= v2) || *(a1 + 64) + v3 > v2)
  {
    __ICOSLogCreate();
    v5 = @"read fail";
    if ([@"read fail" length] >= 0x15)
    {
      v6 = [@"read fail" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 32) name];
    v9 = [v7 stringWithFormat:@"filename: %@, readOffset: %llu, readLength: %llu", v8, *(a1 + 56), *(a1 + 64)];

    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v5;
      v12 = v10;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v5 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-21448 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = [MEMORY[0x1E695DF88] dataWithCapacity:?];
    if (!v13)
    {
      goto LABEL_10;
    }

    __ICOSLogCreate();
    v15 = [*(a1 + 32) name];
    if ([v15 length] >= 0x15)
    {
      v16 = [v15 substringWithRange:{0, 18}];
      v17 = [v16 stringByAppendingString:@".."];

      v15 = v17;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Downloading to data buffer: %llu", *(a1 + 64)];
    v19 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v15;
      v21 = v19;
      *buf = 136446466;
      *&buf[4] = [v15 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&dword_1C6F19000, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v63 = 0;
    v64 = &v63;
    v22 = *(a1 + 56);
    v71 = *(a1 + 64);
    v65 = 0x2020000000;
    v66 = v22;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    if (v71 > 0x200000)
    {
      [*(a1 + 32) requestOpenStreamData];
    }

    info = 0;
    mach_timebase_info(&info);
    _gBenchmarkStartMachTime = 0;
    *&_gBenchmarkStartMachTime = mach_absolute_time();
    v23 = *&buf[8];
    v24 = *(*&buf[8] + 24);
    if (v24 >= 1)
    {
      while ((v60[3] & 1) == 0)
      {
        v25 = [*(a1 + 40) isCancelled];
        v23 = *&buf[8];
        if (v25)
        {
          break;
        }

        v26 = *(*&buf[8] + 24) >= 0x200000 ? 0x200000 : *(*&buf[8] + 24);
        v27 = dispatch_semaphore_create(0);
        *v67 = 0;
        mach_timebase_info(v67);
        _gBenchmarkStartMachTime = 0;
        *&_gBenchmarkStartMachTime = mach_absolute_time();
        v28 = *(a1 + 32);
        v29 = v64[3];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __58__ICCameraFile_requestReadDataAtOffset_length_completion___block_invoke_320;
        v45[3] = &unk_1E829CE58;
        v49 = &v55;
        v45[4] = v28;
        v46 = v13;
        v50 = buf;
        v51 = &v63;
        v30 = *(a1 + 40);
        v31 = *(a1 + 56);
        v47 = v30;
        v52 = &v59;
        v53 = v31;
        v32 = v27;
        v48 = v32;
        [v28 requestStreamDataAtOffset:v29 length:v26 completion:v45];
        dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);

        v23 = *&buf[8];
        if (*(*&buf[8] + 24) <= 0)
        {
          break;
        }
      }

      v24 = *(v23 + 24);
    }

    v33 = v56[3];
    numer = info.numer;
    denom = info.denom;
    __ICOSLogCreate();
    v36 = [*(a1 + 32) name];
    if ([v36 length] >= 0x15)
    {
      v37 = [v36 substringWithRange:{0, 18}];
      v38 = [v37 stringByAppendingString:@".."];

      v36 = v38;
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"icDatarate: %07.2f", -(v24 - ((1000.0 / (((v33 * numer) / denom) / 1000000.0)) * v4)) * 0.000000953674316];
    v40 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v36;
      v42 = [v36 UTF8String];
      *v67 = 136446466;
      *&v67[4] = v42;
      v68 = 2114;
      v69 = v39;
      _os_log_impl(&dword_1C6F19000, v40, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v67, 0x16u);
    }

    if (*(a1 + 64) > 0x200000)
    {
      [*(a1 + 32) requestCloseStreamData];
    }

    if (*(v60 + 24) == 1)
    {
      v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-21448 userInfo:0];
    }

    else
    {
      v43 = 0;
    }

    if ([*(a1 + 40) isCancelled])
    {
      v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9937 userInfo:0];

      v43 = v44;
    }

    (*(*(a1 + 48) + 16))();

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
}

void __58__ICCameraFile_requestReadDataAtOffset_length_completion___block_invoke_320(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = ((mach_absolute_time() - *&_gBenchmarkStartMachTime) + *(*(*(a1 + 64) + 8) + 24));
  v4 = [v3 objectForKeyedSubscript:@"ICReadData"];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [v5 length];
    v7 = [v3 objectForKeyedSubscript:@"ICBytesRead"];

    if (v7)
    {
      v8 = [v3 objectForKeyedSubscript:@"ICBytesRead"];
      v6 = [v8 unsignedLongLongValue];
    }

    v9 = [v3 objectForKeyedSubscript:@"ICBufferOffset"];

    if (v9)
    {
      v10 = [v3 objectForKeyedSubscript:@"ICBufferOffset"];
      v9 = [v10 unsignedLongLongValue];
    }

    __ICOSLogCreate();
    v11 = [*(a1 + 32) name];
    if ([v11 length] >= 0x15)
    {
      v12 = [v11 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];

      v11 = v13;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received: %llu bytes", v6];
    v15 = MEMORY[0x1E69A8B08];
    v16 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v11;
      v18 = v16;
      *buf = 136446466;
      v35 = [v11 UTF8String];
      v36 = 2114;
      v37 = v14;
      _os_log_impl(&dword_1C6F19000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    v20 = [v5 subdataWithRange:{v9, v6}];
    [v19 appendData:v20];

    *(*(*(a1 + 72) + 8) + 24) -= v6;
    *(*(*(a1 + 80) + 8) + 24) += v6;
    [*(a1 + 48) setCompletedUnitCount:*(*(*(a1 + 80) + 8) + 24) - *(a1 + 96)];
    __ICOSLogCreate();
    v21 = [*(a1 + 32) name];
    if ([v21 length] >= 0x15)
    {
      v22 = [v21 substringWithRange:{0, 18}];
      v23 = [v22 stringByAppendingString:@".."];

      v21 = v23;
    }

    v24 = MEMORY[0x1E696AEC0];
    v25 = *(*(*(a1 + 80) + 8) + 24);
    v26 = *(*(*(a1 + 72) + 8) + 24);
    [*(a1 + 48) fractionCompleted];
    v28 = [v24 stringWithFormat:@"Offset: %lld, Remaining: %lld, Progress: %f", v25, v26, v27];
    v29 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v21;
      v31 = v29;
      v32 = [v21 UTF8String];
      *buf = 136446466;
      v35 = v32;
      v36 = 2114;
      v37 = v28;
      _os_log_impl(&dword_1C6F19000, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v33 = *MEMORY[0x1E69E9840];
}

- (void)requestCloseStreamData
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F4697228 forKeyedSubscript:@"ICReadOffset"];
  [dictionary setObject:&unk_1F4697228 forKeyedSubscript:@"ICReadLength"];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ICReadBufferStreamClose"];
  device = [(ICCameraItem *)self device];
  deviceManager = [device deviceManager];
  device2 = [(ICCameraItem *)self device];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ICCameraFile_requestCloseStreamData__block_invoke;
  v7[3] = &unk_1E829CEA8;
  v7[4] = self;
  [deviceManager getFileData:self fromDevice:device2 withOptions:dictionary completion:v7];
}

void __38__ICCameraFile_requestCloseStreamData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (!v5)
  {
    __ICOSLogCreate();
    v6 = [*(a1 + 32) name];
    if ([v6 length] >= 0x15)
    {
      v7 = [v6 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];

      v6 = v8;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ICReadBufferStreamClose"];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6;
      v12 = v10;
      v14 = 136446466;
      v15 = [v6 UTF8String];
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)requestOpenStreamData
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F4697228 forKeyedSubscript:@"ICReadOffset"];
  [dictionary setObject:&unk_1F4697228 forKeyedSubscript:@"ICReadLength"];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ICReadBufferStreamOpen"];
  v4 = dispatch_semaphore_create(0);
  device = [(ICCameraItem *)self device];
  deviceManager = [device deviceManager];
  device2 = [(ICCameraItem *)self device];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__ICCameraFile_requestOpenStreamData__block_invoke;
  v9[3] = &unk_1E829CED0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [deviceManager getFileData:self fromDevice:device2 withOptions:dictionary completion:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __37__ICCameraFile_requestOpenStreamData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (!v5)
  {
    __ICOSLogCreate();
    v6 = [*(a1 + 32) name];
    if ([v6 length] >= 0x15)
    {
      v7 = [v6 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];

      v6 = v8;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ICReadBufferStreamOpen"];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6;
      v12 = v10;
      v15 = 136446466;
      v16 = [v6 UTF8String];
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v15, 0x16u);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)requestStreamDataAtOffset:(int64_t)offset length:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:offset];
  [dictionary setObject:v10 forKeyedSubscript:@"ICReadOffset"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:length];
  [dictionary setObject:v11 forKeyedSubscript:@"ICReadLength"];

  device = [(ICCameraItem *)self device];
  deviceManager = [device deviceManager];
  device2 = [(ICCameraItem *)self device];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__ICCameraFile_requestStreamDataAtOffset_length_completion___block_invoke;
  v16[3] = &unk_1E829CEF8;
  v17 = completionCopy;
  v15 = completionCopy;
  [deviceManager getFileData:self fromDevice:device2 withOptions:dictionary completion:v16];
}

void __60__ICCameraFile_requestStreamDataAtOffset_length_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setUTI:(id)i
{
  v15.receiver = self;
  v15.super_class = ICCameraFile;
  [(ICCameraItem *)&v15 setUTI:i];
  v4 = [(ICCameraItem *)self UTI];
  identifier = [*MEMORY[0x1E6982E30] identifier];
  v6 = [v4 isEqualToString:identifier];

  if (v6)
  {
    v7 = self->_mediaMetadata | 0x20;
  }

  else
  {
    v8 = [(ICCameraItem *)self UTI];
    identifier2 = [*MEMORY[0x1E6982EE8] identifier];
    v10 = [v8 isEqualToString:identifier2];

    if (v10)
    {
      v7 = self->_mediaMetadata | 0x40;
    }

    else
    {
      v11 = [(ICCameraItem *)self UTI];
      identifier3 = [*MEMORY[0x1E6982CD0] identifier];
      v13 = [v11 isEqualToString:identifier3];

      mediaMetadata = self->_mediaMetadata;
      if (v13)
      {
        v7 = mediaMetadata | 0x100;
      }

      else
      {
        v7 = mediaMetadata | 0x10;
      }
    }
  }

  self->_mediaMetadata = v7;
}

- (void)requestSecurityScopedURLWithCompletion:(void *)completion
{
  v4 = completion;
  device = [(ICCameraItem *)self device];
  deviceManager = [device deviceManager];
  device2 = [(ICCameraItem *)self device];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICCameraFile_requestSecurityScopedURLWithCompletion___block_invoke;
  v9[3] = &unk_1E829CEF8;
  v10 = v4;
  v8 = v4;
  [deviceManager getSecurityScopedURL:self fromDevice:device2 completion:v9];
}

void __55__ICCameraFile_requestSecurityScopedURLWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"errCode"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"ICSecurityScopedURL"];

  if (v6)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v6 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(*(a1 + 32) + 16))();
}

- (void)requestRefreshObjectHandleInfo:(id)info
{
  infoCopy = info;
  device = [(ICCameraItem *)self device];
  deviceManager = [device deviceManager];
  device2 = [(ICCameraItem *)self device];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ICCameraFile_requestRefreshObjectHandleInfo___block_invoke;
  v9[3] = &unk_1E829CEF8;
  v10 = infoCopy;
  v8 = infoCopy;
  [deviceManager refreshObjectHandleInfo:self fromDevice:device2 completion:v9];
}

void __47__ICCameraFile_requestRefreshObjectHandleInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(*(a1 + 32) + 16))();
}

- (void)handleObjectInfoUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy objectForKeyedSubscript:@"ICFileSize"];

  if (v5)
  {
    v6 = [updateCopy objectForKeyedSubscript:@"ICFileSize"];
    -[ICCameraFile setFileSize:](self, "setFileSize:", [v6 unsignedLongLongValue]);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__ICCameraFile_handleObjectInfoUpdate___block_invoke;
    block[3] = &unk_1E829C848;
    block[4] = self;
    ICPerformBlockOnMainThread(block);
  }

  v7 = [updateCopy objectForKeyedSubscript:@"ICMediaDuration"];

  if (v7)
  {
    v8 = [updateCopy objectForKeyedSubscript:@"ICMediaDuration"];
    [v8 doubleValue];
    [(ICCameraFile *)self setDuration:?];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_2;
    v19[3] = &unk_1E829C848;
    v19[4] = self;
    ICPerformBlockOnMainThread(v19);
  }

  v9 = [updateCopy objectForKeyedSubscript:@"ICModificationDate"];

  if (v9)
  {
    v10 = MEMORY[0x1E695DF00];
    v11 = [updateCopy objectForKeyedSubscript:@"ICModificationDate"];
    v12 = [v10 dateWithTimeIntervalSince1970:{objc_msgSend(v11, "unsignedLongLongValue")}];

    if (v12)
    {
      [(ICCameraItem *)self setModificationDate:v12];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_3;
      v18[3] = &unk_1E829C848;
      v18[4] = self;
      ICPerformBlockOnMainThread(v18);
    }
  }

  v13 = [updateCopy objectForKeyedSubscript:@"ICCreationDate"];

  if (v13)
  {
    v14 = MEMORY[0x1E695DF00];
    v15 = [updateCopy objectForKeyedSubscript:@"ICCreationDate"];
    v16 = [v14 dateWithTimeIntervalSince1970:{objc_msgSend(v15, "unsignedLongLongValue")}];

    if (v16)
    {
      [(ICCameraItem *)self setCreationDate:v16];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_4;
      v17[3] = &unk_1E829C848;
      v17[4] = self;
      ICPerformBlockOnMainThread(v17);
    }
  }
}

uint64_t __39__ICCameraFile_handleObjectInfoUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"fileSize"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"fileSize"];
}

uint64_t __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"duration"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"duration"];
}

uint64_t __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"modificationDate"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"modificationDate"];
}

uint64_t __39__ICCameraFile_handleObjectInfoUpdate___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"creationDate"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"creationDate"];
}

+ (id)fingerprintForFileAtURL:(id)l
{
  v3 = MEMORY[0x1E69A8AD8];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  v8 = 0;
  v6 = [v5 fingerprintForFileAtURL:lCopy error:&v8];

  return v6;
}

- (void)requestFingerprintWithCompletion:(id)completion
{
  completionCopy = completion;
  fingerprint = [(ICCameraFile *)self fingerprint];

  if (fingerprint)
  {
    fingerprint2 = [(ICCameraFile *)self fingerprint];
    completionCopy[2](completionCopy, fingerprint2, 0);
  }

  else
  {
    device = [(ICCameraItem *)self device];
    deviceManager = [device deviceManager];
    device2 = [(ICCameraItem *)self device];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__ICCameraFile_requestFingerprintWithCompletion___block_invoke;
    v10[3] = &unk_1E829CF20;
    v10[4] = self;
    v11 = completionCopy;
    [deviceManager getFingerprint:self fromDevice:device2 completion:v10];
  }
}

void __49__ICCameraFile_requestFingerprintWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"errCode"];
  v6 = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"ICCameraFileFingerprint"];

  if (v6)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v6 userInfo:0];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (v7)
  {
LABEL_3:
    [*(a1 + 32) setFingerprint:v7];
  }

LABEL_4:
  (*(*(a1 + 40) + 16))();
}

@end