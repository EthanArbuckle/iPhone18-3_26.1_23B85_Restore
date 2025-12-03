@interface ICCameraDevice
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)uuidStringFromFileProviderIdentifier:(id)identifier;
- (BOOL)addMediaFiles:(id)files;
- (BOOL)containsRestrictedStorage;
- (BOOL)isAccessRestrictedAppleDevice;
- (BOOL)legacyDevice;
- (BOOL)setDefaultMediaPresentation:(unint64_t)presentation;
- (BOOL)supportsMediaFormatCatalog;
- (BOOL)updateAppleProperties:(id)properties;
- (CGImage)icon;
- (ICCameraDevice)initWithDictionary:(id)dictionary;
- (NSArray)contents;
- (NSArray)filesOfType:(NSString *)fileUTType;
- (NSArray)mediaFiles;
- (NSNumber)devicePairedState;
- (NSProgress)requestDeleteFiles:(NSArray *)files deleteFailed:(void *)deleteFailed completion:(void *)completion;
- (NSString)appleSerialNumber;
- (NSString)buildVersion;
- (NSString)deviceClass;
- (NSString)deviceColor;
- (NSString)deviceEnclosureColor;
- (NSString)productVersion;
- (id)cameraFileWithObjectID:(unint64_t)d;
- (id)cameraFolderWithObjectID:(unint64_t)d;
- (id)description;
- (id)ownerMedia:(id)media withMedia:(id)withMedia;
- (id)relateGroupedMedia:(id)media;
- (id)relateLegacyMedia:(id)media;
- (id)relateMedia:(id)media;
- (id)remoteCamera;
- (id)remoteCameraWithFailureBlock:(id)block;
- (int64_t)cameraFilesContentSizeInBytes;
- (int64_t)stitchMedia:(id)media withMedia:(id)withMedia;
- (unint64_t)countOfObjects;
- (void)addCameraFileToIndex:(id)index;
- (void)addCameraFolderToIndex:(id)index;
- (void)addCapability:(id)capability;
- (void)addFolder:(id)folder;
- (void)addItems:(id)items;
- (void)blendMedia:(id)media[10] ofLength:(int)length withMedia:(id)withMedia[10] ofLength:(int)ofLength;
- (void)cancelDelete;
- (void)cancelDownload;
- (void)dealloc;
- (void)dispatchAsyncForOperationType:(int64_t)type block:(id)block;
- (void)dumpPTPPassthruCommand:(id)command andData:(id)data;
- (void)grindMedia:(id)media[10] index:(int *)index file:(id)file;
- (void)handlePtpEvent:(id)event;
- (void)handleStatusNotification:(id)notification;
- (void)removeCameraFileFromIndex:(id)index;
- (void)removeCameraFolderFromIndex:(id)index;
- (void)removeFolder:(id)folder;
- (void)removeItems:(id)items;
- (void)requestCloseSession;
- (void)requestCloseSessionWithOptions:(id)options completion:(id)completion;
- (void)requestDeleteFiles:(NSArray *)files;
- (void)requestDownloadFile:(ICCameraFile *)file options:(NSDictionary *)options downloadDelegate:(id)downloadDelegate didDownloadSelector:(SEL)selector contextInfo:(void *)contextInfo;
- (void)requestEject;
- (void)requestEnumerateContentWithOptions:(id)options completion:(id)completion;
- (void)requestOpenSession;
- (void)requestOpenSessionWithOptions:(id)options completion:(id)completion;
- (void)requestReadDataFromFile:(ICCameraFile *)file atOffset:(off_t)offset length:(off_t)length readDelegate:(id)readDelegate didReadDataSelector:(SEL)selector contextInfo:(void *)contextInfo;
- (void)requestSendPTPCommand:(NSData *)command outData:(NSData *)data sendCommandDelegate:(id)sendCommandDelegate didSendCommandSelector:(SEL)selector contextInfo:(void *)contextInfo;
- (void)requestSendPTPCommand:(NSData *)ptpCommand outData:(NSData *)ptpData completion:(void *)completion;
- (void)requestSyncClock;
- (void)requestTakePicture;
- (void)requestUploadFile:(NSURL *)fileURL options:(NSDictionary *)options uploadDelegate:(id)uploadDelegate didUploadSelector:(SEL)selector contextInfo:(void *)contextInfo;
- (void)resetAccessRestriction;
- (void)setAccessRestriction:(unint64_t)restriction;
- (void)setAppleRelatedUUIDSupport:(unint64_t)support;
- (void)setContentCatalogPercentCompleted:(unint64_t)completed;
- (void)setDelegate:(id)delegate;
- (void)setICloudPhotosOptimizeStorageState:(unint64_t)state;
- (void)setIsAccessRestrictedAppleDevice:(BOOL)device;
- (void)setMediaPresentation:(ICMediaPresentation)mediaPresentation;
- (void)setPtpEventForwarding:(BOOL)forwarding;
- (void)setPtpEventHandler:(void *)ptpEventHandler;
- (void)storageAvailable;
- (void)updateAccessRestriction;
- (void)updateContentCatalogPercentCompleted;
- (void)updateEnumeratingErrorStatus;
- (void)updateLockedErrorStatus;
- (void)updateMediaFilesCount:(id)count;
@end

@implementation ICCameraDevice

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"mediaFiles"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___ICCameraDevice;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

+ (id)uuidStringFromFileProviderIdentifier:(id)identifier
{
  __src[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = identifierCopy;
  __src[0] = 0;
  __src[1] = 0;
  v30 = 0;
  if (!identifierCopy)
  {
    goto LABEL_10;
  }

  smallestEncoding = [identifierCopy smallestEncoding];
  [v4 length];
  v6 = [v4 length] - 16;
  [v4 length];
  if (![v4 getBytes:__src maxLength:16 usedLength:&v30 encoding:smallestEncoding options:1 range:v6 remainingRange:{16, 0}])
  {
    goto LABEL_10;
  }

  byte15 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  byte7 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  *byte6 = 0;
  v32 = 0;
  if (v30 >= 0x10)
  {
    v23 = 0;
  }

  else
  {
    v23 = 16 - v30;
  }

  if (v23 <= 15)
  {
    memcpy(&byte6[v23], __src, (15 - v23) + 1);
    v22 = byte6[0];
    v21 = byte6[1];
    v20 = byte6[2];
    v19 = byte6[3];
    v18 = byte6[4];
    v17 = byte6[5];
    v16 = byte6[6];
    byte7 = byte6[7];
    v14 = v32;
    v13 = BYTE1(v32);
    v12 = BYTE2(v32);
    v11 = BYTE3(v32);
    v10 = BYTE4(v32);
    v9 = BYTE5(v32);
    v8 = BYTE6(v32);
    byte15 = HIBYTE(v32);
  }

  v24 = *MEMORY[0x1E695E480];
  v25 = CFUUIDCreateWithBytes(*MEMORY[0x1E695E480], v22, v21, v20, v19, v18, v17, v16, byte7, v14, v13, v12, v11, v10, v9, v8, byte15);
  if (v25)
  {
    v26 = v25;
    v27 = CFUUIDCreateString(v24, v25);
    CFRelease(v26);
  }

  else
  {
LABEL_10:
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)relateLegacyMedia:(id)media
{
  v3 = MEMORY[0x1E695DF90];
  mediaCopy = media;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__ICCameraDevice_relateLegacyMedia___block_invoke;
  v10[3] = &unk_1E829D030;
  v11 = v6;
  v7 = v6;
  [mediaCopy enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v5 setObject:v8 forKeyedSubscript:@"universalFilesCount"];

  [v5 setObject:v7 forKeyedSubscript:@"newMedia"];

  return v5;
}

void __36__ICCameraDevice_relateLegacyMedia___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = [v20 count];
  uFiles = 0u;
  *&qword_1EC213818 = 0u;
  xmmword_1EC213828 = 0u;
  unk_1EC213838 = 0u;
  xmmword_1EC213848 = 0u;
  if (v4 < 2)
  {
    v10 = *(a1 + 32);
    v11 = [v20 objectAtIndexedSubscript:0];
    [v10 addObject:v11];
    goto LABEL_38;
  }

  v5 = 0;
  v6 = v4 - 1;
  do
  {
    v7 = [v20 objectAtIndexedSubscript:v6];
    if (([v7 isJPEG] & 1) != 0 || objc_msgSend(v7, "isHEIC"))
    {
      if (uFiles)
      {
        goto LABEL_8;
      }

      *&uFiles = v7;
    }

    else
    {
      if ([v7 isNonRawImage])
      {
        goto LABEL_8;
      }

      if ([v7 isRaw])
      {
        *(&uFiles + 1) = v7;
        goto LABEL_9;
      }

      if ([v7 isMovie])
      {
        if (!qword_1EC213818)
        {
          qword_1EC213818 = v7;
          goto LABEL_9;
        }

LABEL_8:
        [*(a1 + 32) addObject:v7];
        goto LABEL_9;
      }

      if ([v7 isAudio])
      {
        qword_1EC213820 = v7;
      }

      else
      {
        v9 = &uFiles + 8 * v5++;
        *(v9 + 4) = v7;
      }
    }

LABEL_9:

    v8 = v6-- != 0;
  }

  while (v8 && v5 < 10);
  v11 = uFiles;
  v12 = *(&uFiles + 1);
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      [v11 setPairedRawImage:v12];
      v14 = 2;
      v15 = v13;
    }

    else
    {
      v15 = 0;
      v14 = 2;
    }

    goto LABEL_32;
  }

  if (v12)
  {
    v15 = 0;
    v14 = 2;
    v11 = v12;
LABEL_32:
    v18 = v14 - 1;
    v19 = &uFiles + v14;
    do
    {
      if (*v19)
      {
        [v11 addSidecarFile:?];
      }

      ++v18;
      ++v19;
    }

    while (v18 < 7);
    [*(a1 + 32) addObject:v11];
    if (v15)
    {
      [*(a1 + 32) addObject:v15];
    }
  }

  else
  {
    v16 = qword_1EC213818;
    if (v16)
    {
      v11 = v16;
      v15 = 0;
      v14 = 3;
      goto LABEL_32;
    }

    v17 = qword_1EC213820;
    v15 = 0;
    if (v17)
    {
      v11 = v17;
      v14 = 4;
      goto LABEL_32;
    }

    v11 = 0;
  }

LABEL_38:
}

- (id)relateGroupedMedia:(id)media
{
  v4 = MEMORY[0x1E695DF90];
  mediaCopy = media;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __37__ICCameraDevice_relateGroupedMedia___block_invoke;
  v14 = &unk_1E829D058;
  selfCopy = self;
  v16 = v7;
  v8 = v7;
  [mediaCopy enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count", v11, v12, v13, v14, selfCopy)}];
  [v6 setObject:v9 forKeyedSubscript:@"universalFilesCount"];

  [v6 setObject:v8 forKeyedSubscript:@"newMedia"];

  return v6;
}

void __37__ICCameraDevice_relateGroupedMedia___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 count];
  v10 = 0;
  uFiles = 0u;
  *&qword_1EC213818 = 0u;
  xmmword_1EC213828 = 0u;
  unk_1EC213838 = 0u;
  xmmword_1EC213848 = 0u;
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      if ([v7 universalFamily])
      {
        [*(a1 + 32) grindMedia:&uFiles index:&v10 file:v7];
      }

      --v6;
    }

    while (v6 != -1);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) blendMedia:&uFiles ofLength:v8 withMedia:&uFiles ofLength:v8];
  if (v10 >= 1)
  {
    for (i = 0; i < v10; ++i)
    {
      if (([*(&uFiles + i) isSidecar] & 1) == 0 && (objc_msgSend(*(&uFiles + i), "isDataUniversal") & 1) == 0)
      {
        [*(a1 + 40) addObject:*(&uFiles + i)];
      }
    }
  }
}

- (id)ownerMedia:(id)media withMedia:(id)withMedia
{
  mediaCopy = media;
  withMediaCopy = withMedia;
  if ([mediaCopy isImage] && (v7 = objc_msgSend(withMediaCopy, "isMovie"), v8 = mediaCopy, v9 = withMediaCopy, (v7 & 1) != 0) || objc_msgSend(mediaCopy, "isMovie") && (v10 = objc_msgSend(withMediaCopy, "isImage"), v8 = withMediaCopy, v9 = mediaCopy, v10))
  {
    v11 = v8;
    [v11 addSidecarFile:v9];
    [v9 flagAsSidecar];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)stitchMedia:(id)media withMedia:(id)withMedia
{
  v33 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  withMediaCopy = withMedia;
  objectID = [mediaCopy objectID];
  if (objectID != [withMediaCopy objectID])
  {
    if ([mediaCopy isImage] && objc_msgSend(withMediaCopy, "isMovie") || ((objc_msgSend(mediaCopy, "isMovie") & 1) != 0 || objc_msgSend(mediaCopy, "isImage")) && objc_msgSend(withMediaCopy, "isDataUniversal"))
    {
      [mediaCopy addSidecarFile:withMediaCopy];
      [withMediaCopy flagAsSidecar];
    }

    else if (([withMediaCopy isImage] && (objc_msgSend(mediaCopy, "isImage") & 1) != 0 || objc_msgSend(withMediaCopy, "isMovie") && objc_msgSend(mediaCopy, "isMovie")) && (objc_msgSend(withMediaCopy, "isOriginal") && (objc_msgSend(mediaCopy, "isConverted") & 1) != 0 || objc_msgSend(mediaCopy, "isOriginal") && objc_msgSend(withMediaCopy, "isConverted")))
    {
      [withMediaCopy setTwinID:{objc_msgSend(mediaCopy, "objectID")}];
      [mediaCopy setTwinID:{objc_msgSend(withMediaCopy, "objectID")}];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = mediaCopy;
      obj = [mediaCopy sidecarFiles];
      v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        do
        {
          v12 = 0;
          do
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v27 + 1) + 8 * v12);
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            sidecarFiles = [withMediaCopy sidecarFiles];
            v15 = [sidecarFiles countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v24;
              do
              {
                v18 = 0;
                do
                {
                  if (*v24 != v17)
                  {
                    objc_enumerationMutation(sidecarFiles);
                  }

                  [(ICCameraDevice *)self stitchMedia:v13 withMedia:*(*(&v23 + 1) + 8 * v18++)];
                }

                while (v16 != v18);
                v16 = [sidecarFiles countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v16);
            }

            ++v12;
          }

          while (v12 != v10);
          v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v10);
      }

      mediaCopy = v21;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)blendMedia:(id)media[10] ofLength:(int)length withMedia:(id)withMedia[10] ofLength:(int)ofLength
{
  if (length >= 1)
  {
    v8 = 0;
    lengthCopy = length;
    do
    {
      ofLengthCopy = ofLength;
      withMediaCopy = withMedia;
      if (ofLength >= 1)
      {
        do
        {
          v11 = media[v8];
          mediaBase = [v11 mediaBase];
          v13 = [mediaBase length];

          mediaBase2 = [*withMediaCopy mediaBase];
          v15 = [mediaBase2 length];

          if (v15 == v13)
          {
            mediaBase3 = [v11 mediaBase];
            uTF8String = [mediaBase3 UTF8String];
            mediaBase4 = [*withMediaCopy mediaBase];
            v19 = strncmp(uTF8String, [mediaBase4 UTF8String], v13);

            if (!v19)
            {
              [(ICCameraDevice *)self stitchMedia:v11 withMedia:*withMediaCopy];
            }
          }

          ++withMediaCopy;
          --ofLengthCopy;
        }

        while (ofLengthCopy);
      }

      ++v8;
    }

    while (v8 != lengthCopy);
  }
}

- (void)grindMedia:(id)media[10] index:(int *)index file:(id)file
{
  fileCopy = file;
  v9 = *index;
  if (v9 < 1)
  {
LABEL_7:
    media[v9] = fileCopy;
    ++*index;
  }

  else
  {
    v10 = 0;
    v20 = fileCopy;
    while (1)
    {
      mediaBase = [fileCopy mediaBase];
      v12 = [mediaBase length];

      mediaBase2 = [media[v10] mediaBase];
      v14 = [mediaBase2 length];

      if (v14 == v12)
      {
        mediaBase3 = [media[v10] mediaBase];
        uTF8String = [mediaBase3 UTF8String];
        mediaBase4 = [v20 mediaBase];
        v18 = strncmp(uTF8String, [mediaBase4 UTF8String], v12);

        if (!v18)
        {
          v19 = [(ICCameraDevice *)self ownerMedia:media[v10] withMedia:v20];
          if (v19)
          {
            break;
          }
        }
      }

      ++v10;
      v9 = *index;
      fileCopy = v20;
      if (v10 >= v9)
      {
        goto LABEL_7;
      }
    }

    media[v10] = v19;

    fileCopy = v20;
  }
}

- (id)relateMedia:(id)media
{
  v26[1] = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  if ([(ICCameraDevice *)self legacyDevice])
  {
    v5 = @"mediaBase";
  }

  else
  {
    v5 = @"relatedUUID";
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v5 ascending:1];
  v26[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v22 = mediaCopy;
  v8 = [mediaCopy sortedArrayUsingDescriptors:v7];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = *MEMORY[0x1E6982DC8];
    do
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      v12 = [v11 UTI];
      identifier = [v10 identifier];
      v14 = [v12 isEqualToString:identifier];

      if (!v14)
      {
        break;
      }

      [v9 removeObjectAtIndex:0];
    }

    while ([v9 count]);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [v9 copyGroupIntoDictionary:&__block_literal_global_4];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__ICCameraDevice_relateMedia___block_invoke_2;
  v23[3] = &unk_1E829D058;
  v24 = v5;
  v17 = v15;
  v25 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:v23];
  if ([(ICCameraDevice *)self legacyDevice])
  {
    [(ICCameraDevice *)self relateLegacyMedia:v17];
  }

  else
  {
    [(ICCameraDevice *)self relateGroupedMedia:v17];
  }
  v18 = ;
  [(ICCameraDevice *)self addCapability:@"ICCameraDeviceSupportsHEIF"];
  v19 = [v18 objectForKeyedSubscript:@"newMedia"];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __30__ICCameraDevice_relateMedia___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__ICCameraDevice_relateMedia___block_invoke_3;
  v11[3] = &unk_1E829D0A0;
  v12 = *(a1 + 32);
  v6 = [a3 copyGroupIntoDictionary:v11];
  if (v6)
  {
    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__ICCameraDevice_relateMedia___block_invoke_4;
    v8[3] = &unk_1E829D0C8;
    v9 = *(a1 + 40);
    v10 = v5;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __30__ICCameraDevice_relateMedia___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v4 stringWithFormat:@"%d%@", objc_msgSend(v6, "intValue"), v8];

  [v5 setObject:v7 forKeyedSubscript:v9];
}

- (void)setIsAccessRestrictedAppleDevice:(BOOL)device
{
  obj = self;
  objc_sync_enter(obj);
  obj->_accessRestrictedAppleDevice = device;
  objc_sync_exit(obj);
}

- (BOOL)isAccessRestrictedAppleDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ICDevice *)selfCopy isAppleDevice])
  {
    v3 = ![(ICDevice *)selfCopy hasOpenSession]|| selfCopy->_accessRestrictedAppleDevice;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3 & 1;
}

- (void)updateAccessRestriction
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(ICDevice *)self isAppleDevice]&& (self->_devAccessRestriction != 8 || [(ICCameraDevice *)self notifyDelegateRestrictionChanged]))
  {
    devAccessRestriction = [(ICCameraDevice *)self devAccessRestriction];
    devAccessRestriction2 = [(ICCameraDevice *)self devAccessRestriction];
    devAccessRestriction3 = [(ICCameraDevice *)self devAccessRestriction];
    devAccessRestriction4 = [(ICCameraDevice *)self devAccessRestriction];
    delegate = [(ICDevice *)self delegate];

    if (delegate)
    {
      if ((devAccessRestriction & 8) != 0 || (devAccessRestriction2 & 6) == 6 || (devAccessRestriction3 & 3) == 3 || (devAccessRestriction4 & 5) == 5)
      {
        [(ICCameraDevice *)self setDevAccessRestriction:8];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __41__ICCameraDevice_updateAccessRestriction__block_invoke;
        v27[3] = &unk_1E829C848;
        v27[4] = self;
        ICPerformBlockOnMainThread(v27);
      }

      else
      {
        delegate2 = [(ICDevice *)self delegate];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);

        __ICOSLogCreate();
        name = [(ICDevice *)self name];
        if ([name length] >= 0x15)
        {
          v12 = [name substringWithRange:{0, 18}];
          v13 = [v12 stringByAppendingString:@".."];

          name = v13;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"⛔️ Notifying Access Restricted: %@", v10];
        v15 = *MEMORY[0x1E69A8B08];
        if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
        {
          v16 = name;
          v17 = v15;
          *buf = 136446466;
          uTF8String = [name UTF8String];
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&dword_1C6F19000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        [(ICCameraDevice *)self setDevAccessRestriction:0];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__ICCameraDevice_updateAccessRestriction__block_invoke_148;
        block[3] = &unk_1E829C848;
        block[4] = self;
        ICPerformBlockOnMainThread(block);
      }
    }

    else
    {
      [(ICCameraDevice *)self setNotifyDelegateRestrictionChanged:1];
      __ICOSLogCreate();
      name2 = [(ICDevice *)self name];
      if ([name2 length] >= 0x15)
      {
        v19 = [name2 substringWithRange:{0, 18}];
        v20 = [v19 stringByAppendingString:@".."];

        name2 = v20;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🟡 Queueing Access Restriction Changed: (delegate is nil)"];
      v22 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v23 = name2;
        v24 = v22;
        *buf = 136446466;
        uTF8String = [name2 UTF8String];
        v30 = 2114;
        v31 = v21;
        _os_log_impl(&dword_1C6F19000, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __41__ICCameraDevice_updateAccessRestriction__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);

  __ICOSLogCreate();
  v5 = [*(a1 + 32) name];
  if ([v5 length] >= 0x15)
  {
    v6 = [v5 substringWithRange:{0, 18}];
    v7 = [v6 stringByAppendingString:@".."];

    v5 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"✅ Notifying Access Unrestricted: %@", v4];
  v9 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v5;
    v11 = v9;
    *buf = 136446466;
    v15 = [v5 UTF8String];
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) willChangeValueForKey:@"isAccessRestrictedAppleDevice"];
  [*(a1 + 32) setIsAccessRestrictedAppleDevice:0];
  [*(a1 + 32) didChangeValueForKey:@"isAccessRestrictedAppleDevice"];
  [*(a1 + 32) updateLockedErrorStatus];
  v12 = [*(a1 + 32) delegate];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 performSelector:sel_cameraDeviceDidRemoveAccessRestriction_ withObject:*(a1 + 32)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __41__ICCameraDevice_updateAccessRestriction__block_invoke_148(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isAccessRestrictedAppleDevice"];
  [*(a1 + 32) setIsAccessRestrictedAppleDevice:1];
  [*(a1 + 32) didChangeValueForKey:@"isAccessRestrictedAppleDevice"];
  [*(a1 + 32) updateLockedErrorStatus];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 performSelector:sel_cameraDeviceDidEnableAccessRestriction_ withObject:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setAccessRestriction:(unint64_t)restriction
{
  if ([(ICDevice *)self isAppleDevice])
  {
    if ((restriction & ~[(ICCameraDevice *)self devAccessRestriction]) != 0)
    {
      devAccessRestriction = self->_devAccessRestriction;
      if (devAccessRestriction != 8)
      {
        self->_devAccessRestriction = devAccessRestriction | restriction;

        [(ICCameraDevice *)self updateAccessRestriction];
      }
    }
  }
}

- (id)remoteCamera
{
  devConnection = self->_devConnection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ICCameraDevice_remoteCamera__block_invoke;
  v5[3] = &unk_1E829C820;
  v5[4] = self;
  v3 = [(NSXPCConnection *)devConnection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __30__ICCameraDevice_remoteCamera__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    __ICOSLogCreate();
    v4 = @"remoteCamera";
    if ([@"remoteCamera" length] >= 0x15)
    {
      v5 = [@"remoteCamera" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) name];
    v8 = [v6 stringWithFormat:@"%@ - %@", v7, v3];

    v9 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
    {
      __30__ICCameraDevice_remoteCamera__block_invoke_cold_1(v4, v9);
    }
  }
}

- (id)remoteCameraWithFailureBlock:(id)block
{
  blockCopy = block;
  devConnection = self->_devConnection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__ICCameraDevice_remoteCameraWithFailureBlock___block_invoke;
  v10[3] = &unk_1E829D0F0;
  v10[4] = self;
  v6 = blockCopy;
  v11 = v6;
  v7 = [(NSXPCConnection *)devConnection remoteObjectProxyWithErrorHandler:v10];
  v8 = v7;
  if (v6 && !v7)
  {
    v6[2](v6);
  }

  return v8;
}

void __47__ICCameraDevice_remoteCameraWithFailureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    __ICOSLogCreate();
    v4 = @"remoteCamera";
    if ([@"remoteCamera" length] >= 0x15)
    {
      v5 = [@"remoteCamera" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) name];
    v8 = [v6 stringWithFormat:@"%@ - %@", v7, v3];

    v9 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
    {
      __30__ICCameraDevice_remoteCamera__block_invoke_cold_1(v4, v9);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)setMediaPresentation:(ICMediaPresentation)mediaPresentation
{
  capabilities = [(ICDevice *)self capabilities];
  if ([capabilities containsObject:@"ICCameraDeviceSupportsHEIF"])
  {
    hasOpenSession = [(ICDevice *)self hasOpenSession];
  }

  else
  {
    hasOpenSession = 0;
  }

  if (mediaPresentation - 1 > 1)
  {
    __ICOSLogCreate();
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera device does not support changing the media presentation"];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
    {
      [ICCameraDevice setMediaPresentation:];
    }
  }

  else if (self->_devMediaPresentation != mediaPresentation)
  {
    [(ICCameraDevice *)self willChangeValueForKey:@"mediaPresentation"];
    self->_devMediaPresentation = mediaPresentation;
    [(ICCameraDevice *)self didChangeValueForKey:@"mediaPresentation"];
    if (hasOpenSession)
    {

      [(ICCameraDevice *)self updateMediaPresentation];
    }
  }
}

- (void)resetAccessRestriction
{
  if ([(ICDevice *)self isAppleDevice])
  {
    [(ICCameraDevice *)self setDevAccessRestriction:0];
    if ([(ICDevice *)self hasOpenSession])
    {

      [(ICCameraDevice *)self updateAccessRestriction];
    }
  }
}

- (NSString)buildVersion
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"BuildVersion"];

  return v3;
}

- (NSString)deviceClass
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"DeviceClass"];

  return v3;
}

- (NSString)deviceColor
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"DeviceColor"];

  return v3;
}

- (NSString)deviceEnclosureColor
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"DeviceEnclosureColor"];

  return v3;
}

- (NSNumber)devicePairedState
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"DevicePairedState"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = ICCameraDevice;
  v4 = [(ICDevice *)&v10 description];
  v5 = [v3 stringWithString:v4];

  [(ICCameraDevice *)self timeOffset];
  [v5 appendFormat:@"  timeOffset                    : %f\n", v6];
  [v5 appendFormat:@"  hasConfigurableWiFiInterface  : %s\n", "N/A"];
  isAccessRestrictedAppleDevice = [(ICCameraDevice *)self isAccessRestrictedAppleDevice];
  v8 = "NO";
  if (isAccessRestrictedAppleDevice)
  {
    v8 = "YES";
  }

  [v5 appendFormat:@"  isAccessRestrictedAppleDevice : %s\n", v8];
  [v5 appendString:@"\n"];

  return v5;
}

- (void)setICloudPhotosOptimizeStorageState:(unint64_t)state
{
  [(ICCameraDevice *)self willChangeValueForKey:@"iCloudPhotosOptimizeStorageState"];
  self->_iCloudPhotosOptimizeStorageState = state;

  [(ICCameraDevice *)self didChangeValueForKey:@"iCloudPhotosOptimizeStorageState"];
}

- (void)addCapability:(id)capability
{
  capabilityCopy = capability;
  if (!-[ICCameraDevice iCloudPhotosEnabled](self, "iCloudPhotosEnabled") || ([capabilityCopy isEqualToString:@"ICCameraDeviceCanDeleteOneFile"] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = ICCameraDevice;
    [(ICDevice *)&v5 addCapability:capabilityCopy];
  }
}

- (unint64_t)countOfObjects
{
  indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
  mediaItemCount = [indexedMediaSet mediaItemCount];

  return mediaItemCount;
}

- (void)updateMediaFilesCount:(id)count
{
  v4 = [count objectForKeyedSubscript:@"ICANumberOfPreflightObjectsKey"];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if (unsignedIntegerValue != [(ICCameraDevice *)self preflightCountOfObjects])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__ICCameraDevice_updateMediaFilesCount___block_invoke;
      v7[3] = &unk_1E829D118;
      v7[4] = self;
      v7[5] = unsignedIntegerValue;
      ICPerformBlockOnMainThread(v7);
    }
  }
}

uint64_t __40__ICCameraDevice_updateMediaFilesCount___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) willChangeValueForKey:@"preflightCountOfObjects"];
  [*(a1 + 32) setPreflightCountOfObjects:*(a1 + 40)];
  __ICOSLogCreate();
  v2 = @"                ◺◺◺◺";
  if ([@"                ◺◺◺◺" length] >= 0x15)
  {
    v3 = [@"                ◺◺◺◺" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Preflighted: %ld", objc_msgSend(*(a1 + 32), "preflightCountOfObjects")];
  v5 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v11 = [(__CFString *)v2 UTF8String];
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1C6F19000, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) didChangeValueForKey:@"preflightCountOfObjects"];
  result = [*(a1 + 32) updateContentCatalogPercentCompleted];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateContentCatalogPercentCompleted
{
  if ([(ICCameraDevice *)self preflightCountOfObjects]== -1 || [(ICCameraDevice *)self containsRestrictedStorage])
  {
    return;
  }

  if (![(ICCameraDevice *)self preflightCountOfObjects]&& ![(ICCameraDevice *)self isAccessRestrictedAppleDevice])
  {
    goto LABEL_9;
  }

  if ([(ICCameraDevice *)self preflightCountOfObjects]>= 1 && [(ICCameraDevice *)self countOfObjects])
  {
    countOfObjects = [(ICCameraDevice *)self countOfObjects];
    preflightCountOfObjects = [(ICCameraDevice *)self preflightCountOfObjects];
    countOfObjects2 = [(ICCameraDevice *)self countOfObjects];
    if (countOfObjects <= preflightCountOfObjects)
    {
      v6 = countOfObjects2 * 100.0 / [(ICCameraDevice *)self preflightCountOfObjects];
LABEL_14:
      if (v6 > [(ICCameraDevice *)self contentCatalogPercentCompleted])
      {

        [(ICCameraDevice *)self setContentCatalogPercentCompleted:v6];
      }

      return;
    }

    [(ICCameraDevice *)self setPreflightCountOfObjects:countOfObjects2];
LABEL_9:
    v6 = 100.0;
    goto LABEL_14;
  }

  [(ICCameraDevice *)self contentCatalogPercentCompleted];
}

- (void)setContentCatalogPercentCompleted:(unint64_t)completed
{
  v29 = *MEMORY[0x1E69E9840];
  if ((completed != 100 || [(ICDevice *)self ready]) && self->_devContentCatalogPercentCompleted != 100 && ![(ICCameraDevice *)self containsRestrictedStorage])
  {
    [(ICCameraDevice *)self willChangeValueForKey:@"contentCatalogPercentCompleted"];
    self->_devContentCatalogPercentCompleted = completed;
    [(ICCameraDevice *)self didChangeValueForKey:@"contentCatalogPercentCompleted"];
    __ICOSLogCreate();
    name = [(ICDevice *)self name];
    if ([name length] >= 0x15)
    {
      v6 = [name substringWithRange:{0, 18}];
      v7 = [v6 stringByAppendingString:@".."];

      name = v7;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Enumerated:%lu/Preflighted:%ld)", -[ICCameraDevice countOfObjects](self, "countOfObjects"), -[ICCameraDevice preflightCountOfObjects](self, "preflightCountOfObjects")];
    v9 = MEMORY[0x1E69A8B08];
    v10 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v11 = name;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [name UTF8String];
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if ([(ICDevice *)self ready]&& [(ICCameraDevice *)self contentCatalogPercentCompleted]== 100)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__ICCameraDevice_setContentCatalogPercentCompleted___block_invoke;
      block[3] = &unk_1E829C848;
      block[4] = self;
      ICPerformBlockOnMainThread(block);
    }

    else
    {
      __ICOSLogCreate();
      name2 = [(ICDevice *)self name];
      if ([name2 length] >= 0x15)
      {
        v14 = [name2 substringWithRange:{0, 18}];
        v15 = [v14 stringByAppendingString:@".."];

        name2 = v15;
      }

      v16 = MEMORY[0x1E696AEC0];
      if ([(ICDevice *)self ready])
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      v18 = [v16 stringWithFormat:@"Ready: %s, Percent:%lu%%", v17, -[ICCameraDevice contentCatalogPercentCompleted](self, "contentCatalogPercentCompleted")];
      v19 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = name2;
        v21 = v19;
        uTF8String2 = [name2 UTF8String];
        *buf = 136446466;
        uTF8String = uTF8String2;
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&dword_1C6F19000, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __52__ICCameraDevice_setContentCatalogPercentCompleted___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 performSelector:sel_deviceDidBecomeReadyWithCompleteContentCatalog_ withObject:*(a1 + 32) withObject:0];
  }

  __ICOSLogCreate();
  v3 = [*(a1 + 32) name];
  if ([v3 length] >= 0x15)
  {
    v4 = [v3 substringWithRange:{0, 18}];
    v5 = [v4 stringByAppendingString:@".."];

    v3 = v5;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 32) devMediaFiles];
  v8 = [v6 stringWithFormat:@"💯 Content Catalog Complete: %lu", objc_msgSend(v7, "count")];

  v9 = MEMORY[0x1E69A8B08];
  v10 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v3;
    v12 = v10;
    *buf = 136446466;
    v23 = [v3 UTF8String];
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 32) previouslyIndexed])
  {
    __ICOSLogCreate();
    v13 = [*(a1 + 32) name];
    if ([v13 length] >= 0x15)
    {
      v14 = [v13 substringWithRange:{0, 18}];
      v15 = [v14 stringByAppendingString:@".."];

      v13 = v15;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  Previously Indexed: %5lu", objc_msgSend(*(a1 + 32), "previouslyIndexed")];
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v13;
      v19 = v17;
      v20 = [v13 UTF8String];
      *buf = 136446466;
      v23 = v20;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_1C6F19000, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)cameraFolderWithObjectID:(unint64_t)d
{
  dCopy = d;
  if (d)
  {
    indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
    dCopy = [indexedMediaSet mediaItemWithHandle:dCopy inTypes:&unk_1F4697240];
  }

  return dCopy;
}

- (id)cameraFileWithObjectID:(unint64_t)d
{
  dCopy = d;
  if (d)
  {
    indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
    dCopy = [indexedMediaSet mediaItemWithHandle:dCopy inTypes:&unk_1F4697258];
  }

  return dCopy;
}

- (void)requestOpenSession
{
  v17 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v3 = @"openSession";
  if ([@"openSession" length] >= 0x15)
  {
    v4 = [@"openSession" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = MEMORY[0x1E696AEC0];
  name = [(ICDevice *)self name];
  v7 = [v5 stringWithFormat:@"requestOpenSession: %@", name];

  v8 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v3;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1C6F19000, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__ICCameraDevice_requestOpenSession__block_invoke;
  v12[3] = &unk_1E829C820;
  v12[4] = self;
  [(ICCameraDevice *)self requestOpenSessionWithOptions:MEMORY[0x1E695E0F8] completion:v12];
  v11 = *MEMORY[0x1E69E9840];
}

void __36__ICCameraDevice_requestOpenSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ICCameraDevice_requestOpenSession__block_invoke_2;
  block[3] = &unk_1E829CC30;
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = v3;
  v7 = v4;
  ICPerformBlockOnMainThread(block);
}

uint64_t __36__ICCameraDevice_requestOpenSession__block_invoke_2(uint64_t *a1)
{
  result = a1[4];
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a1[4] performSelector:sel_device_didOpenSessionWithError_ withObject:a1[5] withObject:a1[6]];
    }
  }

  if (a1[6])
  {
    v3 = a1[4];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = a1[6];

      return [v4 performSelector:sel_device_didEncounterError_ withObject:v5 withObject:v6];
    }
  }

  return result;
}

- (void)requestOpenSessionWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (optionsCopy)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"ICEnumerationChronologicalOrder"];
    self->_enumerationOrder = [v8 intValue];
  }

  if ([(ICDevice *)self hasOpenSession])
  {
    completionCopy[2](completionCopy, 0);
  }

  else if ([(ICDevice *)self hasOpenSession]|| [(ICCameraDevice *)self beingEjected])
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9927 userInfo:0];
    (completionCopy)[2](completionCopy, v9);
  }

  else
  {
    [(ICDevice *)self setSessionState:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__ICCameraDevice_requestOpenSessionWithOptions_completion___block_invoke;
    v10[3] = &unk_1E829CCA8;
    v10[4] = self;
    v11 = optionsCopy;
    v12 = completionCopy;
    [(ICCameraDevice *)self dispatchAsyncForOperationType:0 block:v10];
  }
}

void __59__ICCameraDevice_requestOpenSessionWithOptions_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDevContentCatalogPercentCompleted:0];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = v2;
  if (*(a1 + 40))
  {
    [v2 addEntriesFromDictionary:?];
  }

  v4 = [*(a1 + 32) deviceManager];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICCameraDevice_requestOpenSessionWithOptions_completion___block_invoke_2;
  v6[3] = &unk_1E829D140;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v4 openSession:v5 withOptions:v3 completion:v6];
}

uint64_t __59__ICCameraDevice_requestOpenSessionWithOptions_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (v5 == -21347)
  {
    ICMakeLocalizedErrorWithCodeAndString(-21347, @"ICReturnConnectionSessionAlreadyOpen");
    objc_claimAutoreleasedReturnValue();
  }

  else if (v5)
  {
    if (v5 == -9943)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = MEMORY[0x1E696AEC0];
      v8 = ICLocalizedString();
      v9 = [*(a1 + 32) name];
      v10 = [v7 stringWithFormat:v8, v9];

      if (v10)
      {
        [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      if ([*(a1 + 32) devAccessRestriction] != 8)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9943 userInfo:v6];
        objc_claimAutoreleasedReturnValue();
      }

      [*(a1 + 32) setSessionState:1];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v5 userInfo:0];
      objc_claimAutoreleasedReturnValue();
      [*(a1 + 32) setSessionState:-1];
    }
  }

  else
  {
    [*(a1 + 32) setSessionState:1];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)requestEnumerateContentWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (optionsCopy)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"ICEnumerationChronologicalOrder"];
    self->_enumerationOrder = [v8 intValue];
  }

  if ([(ICDevice *)self hasOpenSession])
  {
    if ([(ICCameraDevice *)self beingEjected])
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = -9922;
    }

    else
    {
      if (!self->_devContentCatalogPercentCompleted)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __64__ICCameraDevice_requestEnumerateContentWithOptions_completion___block_invoke;
        v12[3] = &unk_1E829CCA8;
        v13 = optionsCopy;
        selfCopy = self;
        v15 = completionCopy;
        [(ICCameraDevice *)self dispatchAsyncForOperationType:0 block:v12];

        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = -9954;
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -9958;
  }

  v11 = [v9 errorWithDomain:@"com.apple.ImageCaptureCore" code:v10 userInfo:0];
  (*(completionCopy + 2))(completionCopy, v11);

LABEL_10:
}

void __64__ICCameraDevice_requestEnumerateContentWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = v2;
  if (*(a1 + 32))
  {
    [v2 addEntriesFromDictionary:?];
  }

  v4 = [*(a1 + 40) deviceManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ICCameraDevice_requestEnumerateContentWithOptions_completion___block_invoke_2;
  v6[3] = &unk_1E829D168;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateContent:v5 withOptions:v3 completion:v6];
}

uint64_t __64__ICCameraDevice_requestEnumerateContentWithOptions_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)addCameraFolderToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];
}

- (void)removeCameraFolderFromIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
  [indexedMediaSet removeMediaItemFromIndex:indexCopy];
}

- (void)addCameraFileToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];
}

- (void)removeCameraFileFromIndex:(id)index
{
  v27 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  array = [MEMORY[0x1E695DF70] array];
  if (indexCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [array addObject:indexCopy];
      if ([indexCopy twinID])
      {
        v6 = -[ICCameraDevice cameraFileWithObjectID:](self, "cameraFileWithObjectID:", [indexCopy twinID]);
        if (v6)
        {
          v7 = v6;
          [array addObject:v6];
        }
      }

      v20 = 324;
      os_unfair_lock_lock(&self->_mediaLock);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = array;
      v8 = array;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            sidecarFiles = [indexCopy sidecarFiles];
            v16 = sidecarFiles;
            if (sidecarFiles && [sidecarFiles count])
            {
              v11 += [v16 count];
              indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
              [indexedMediaSet removeMediaItemsFromIndex:v16];
            }

            v11 += [v14 universalFamily];
            indexedMediaSet2 = [(ICCameraDevice *)self indexedMediaSet];
            [indexedMediaSet2 removeMediaItemFromIndex:v14];

            [(ICCameraDevice *)self addNumberOfDownloadableItems:-v11];
            ++v13;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }

      os_unfair_lock_unlock((self + v20));
      array = v21;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsMediaFormatCatalog
{
  transportType = [(ICDevice *)self transportType];
  v4 = ([transportType isEqualToString:@"ICTransportTypeMassStorage"] & 1) == 0 && -[ICCameraDevice appleRelatedUUIDSupport](self, "appleRelatedUUIDSupport") != 0;

  return v4;
}

- (void)setAppleRelatedUUIDSupport:(unint64_t)support
{
  if ([(ICCameraDevice *)self appleRelatedUUIDSupport]!= support && (support == 2 || support == 1) && ![(ICCameraDevice *)self appleRelatedUUIDSupport])
  {
    self->_appleRelatedUUIDSupport = support;
  }
}

- (BOOL)legacyDevice
{
  transportType = [(ICDevice *)self transportType];
  v4 = ([transportType isEqualToString:@"ICTransportTypeMassStorage"] & 1) != 0 || -[ICCameraDevice appleRelatedUUIDSupport](self, "appleRelatedUUIDSupport") != 1;

  return v4;
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  if ([(ICDevice *)self hasOpenSession])
  {
    if (itemsCopy)
    {
      v5 = [itemsCopy count];
      if (v5)
      {
        v5 = [(ICCameraDevice *)self relateMedia:itemsCopy];
      }
    }

    else
    {
      v5 = 0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__ICCameraDevice_addItems___block_invoke;
    v7[3] = &unk_1E829C870;
    v8 = v5;
    selfCopy = self;
    v6 = v5;
    ICPerformBlockOnMainThread(v7);
  }
}

uint64_t __27__ICCameraDevice_addItems___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addMediaFiles:?];
  }

  v2 = *(a1 + 40);

  return [v2 updateContentCatalogPercentCompleted];
}

- (NSArray)contents
{
  os_unfair_lock_lock(&self->_mediaLock);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_devContents];
  os_unfair_lock_unlock(&self->_mediaLock);

  return v3;
}

- (NSArray)mediaFiles
{
  os_unfair_lock_lock(&self->_mediaLock);
  v3 = MEMORY[0x1E695DEC8];
  devMediaFiles = [(ICCameraDevice *)self devMediaFiles];
  v5 = [v3 arrayWithArray:devMediaFiles];

  os_unfair_lock_unlock(&self->_mediaLock);

  return v5;
}

- (NSArray)filesOfType:(NSString *)fileUTType
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = fileUTType;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_devContents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addItemsMatchingType:v4 fromFolder:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)containsRestrictedStorage
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(ICDevice *)self isAppleDevice])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_devContents;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      v6 += v5;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        name = [*(*(&v13 + 1) + 8 * v8) name];
        v10 = [name isEqualToString:@"0xFEEDFACE"];

        if (v10)
        {
          break;
        }

        if (v5 == ++v8)
        {
          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          if (!v6)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_13:
    result = 1;
  }

  else
  {
LABEL_11:
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)storageAvailable
{
  if (![(ICCameraDevice *)self containsRestrictedStorage])
  {

    [(ICCameraDevice *)self setAccessRestriction:5];
  }
}

- (BOOL)addMediaFiles:(id)files
{
  filesCopy = files;
  v5 = filesCopy;
  if (filesCopy && [filesCopy count])
  {
    [(ICCameraDevice *)self willChangeValueForKey:@"mediaFiles"];
    [(ICCameraDevice *)self willChangeValueForKey:@"contents"];
    devMediaFiles = [(ICCameraDevice *)self devMediaFiles];
    [devMediaFiles addObjectsFromArray:v5];

    delegate = [(ICDevice *)self delegate];
    v8 = objc_opt_respondsToSelector();
    v9 = objc_opt_respondsToSelector();
    if (delegate && (v8 & 1) != 0)
    {
      [delegate performSelector:sel_cameraDevice_didAddItems_ withObject:self withObject:v5];
    }

    else if (delegate)
    {
      if (((v9 ^ 1) & 1) == 0)
      {
        v10 = [v5 count];
        if (v10)
        {
          v11 = v10;
          for (i = 0; i != v11; ++i)
          {
            v13 = [v5 objectAtIndexedSubscript:i];
            [delegate performSelector:sel_cameraDevice_didAddItem_ withObject:self withObject:v13];
          }
        }
      }
    }

    [(ICCameraDevice *)self didChangeValueForKey:@"contents"];
    [(ICCameraDevice *)self didChangeValueForKey:@"mediaFiles"];
  }

  return 0;
}

- (void)handleStatusNotification:(id)notification
{
  v37 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [notificationCopy objectForKeyedSubscript:@"ICDeviceStatus"];
  if ([v5 isEqualToString:@"ICDeviceIsReady"])
  {
    deviceNotificationQueue = [(ICCameraDevice *)self deviceNotificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__ICCameraDevice_handleStatusNotification___block_invoke;
    block[3] = &unk_1E829C870;
    block[4] = self;
    v32 = notificationCopy;
    dispatch_async(deviceNotificationQueue, block);
  }

  else if ([v5 isEqualToString:@"ICAppleDeviceUnlocked"])
  {
    __ICOSLogCreate();
    name = [(ICDevice *)self name];
    if ([name length] >= 0x15)
    {
      v8 = [name substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];

      name = v9;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🔓 Device Is Unlocked"];
    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v12 = name;
      v13 = v11;
      *buf = 136446466;
      uTF8String = [name UTF8String];
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(ICCameraDevice *)self setAccessRestriction:6];
  }

  else if ([v5 isEqualToString:@"ICDeviceIsEnumerating"])
  {
    isEnumeratingContent = self->_isEnumeratingContent;
    v15 = [notificationCopy objectForKeyedSubscript:@"deviceIsEnumerating"];
    bOOLValue = [v15 BOOLValue];

    if (isEnumeratingContent != bOOLValue)
    {
      v17 = [notificationCopy objectForKeyedSubscript:@"deviceIsEnumerating"];
      bOOLValue2 = [v17 BOOLValue];

      if (bOOLValue2)
      {
        [(ICCameraDevice *)self setAccessRestriction:6];
      }

      __ICOSLogCreate();
      name2 = [(ICDevice *)self name];
      if ([name2 length] >= 0x15)
      {
        v20 = [name2 substringWithRange:{0, 18}];
        v21 = [v20 stringByAppendingString:@".."];

        name2 = v21;
      }

      v22 = MEMORY[0x1E696AEC0];
      v23 = [notificationCopy objectForKeyedSubscript:@"deviceIsEnumerating"];
      bOOLValue3 = [v23 BOOLValue];
      v25 = @"NO";
      if (bOOLValue3)
      {
        v25 = @"YES";
      }

      v26 = [v22 stringWithFormat:@"♻️ Device Is Enumerating: %@", v25];

      v27 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v28 = name2;
        v29 = v27;
        *buf = 136446466;
        uTF8String = [name2 UTF8String];
        v35 = 2114;
        v36 = v26;
        _os_log_impl(&dword_1C6F19000, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [(ICCameraDevice *)self willChangeValueForKey:@"isEnumeratingContent"];
      self->_isEnumeratingContent = bOOLValue2;
      [(ICCameraDevice *)self updateEnumeratingErrorStatus];
      [(ICCameraDevice *)self didChangeValueForKey:@"isEnumeratingContent"];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __43__ICCameraDevice_handleStatusNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICCameraDevice_handleStatusNotification___block_invoke_2;
  block[3] = &unk_1E829CC30;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  ICPerformBlockOnMainThread(block);
}

uint64_t __43__ICCameraDevice_handleStatusNotification___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) ready] & 1) != 0 || !objc_msgSend(*(a1 + 32), "hasOpenSession"))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = *MEMORY[0x1E69E9840];

    return [v11 updateMediaFilesCount:v12];
  }

  else
  {
    [*(a1 + 32) setReady:1];
    __ICOSLogCreate();
    v2 = [*(a1 + 32) name];
    if ([v2 length] >= 0x15)
    {
      v3 = [v2 substringWithRange:{0, 18}];
      v4 = [v3 stringByAppendingString:@".."];

      v2 = v4;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🏁 Device Did Become Ready"];
    v6 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v2;
      v8 = v6;
      v14 = 136446466;
      v15 = [v2 UTF8String];
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1C6F19000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v14, 0x16u);
    }

    if (*(a1 + 40))
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 40) performSelector:sel_deviceDidBecomeReady_ withObject:*(a1 + 32)];
      }
    }

    result = [*(a1 + 32) updateMediaFilesCount:*(a1 + 48)];
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)updateLockedErrorStatus
{
  if ([(ICDevice *)self isAppleDevice])
  {
    delegate = [(ICDevice *)self delegate];
    if ([(ICCameraDevice *)self devAccessRestriction]== 8)
    {
      v4 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v6 = MEMORY[0x1E696AEC0];
      v7 = ICLocalizedString();
      name = [(ICDevice *)self name];
      v9 = [v6 stringWithFormat:v7, name];

      if (v9)
      {
        [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:-9943 userInfo:dictionary];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__ICCameraDevice_updateLockedErrorStatus__block_invoke;
    block[3] = &unk_1E829CC30;
    v13 = delegate;
    selfCopy = self;
    v15 = v4;
    v10 = v4;
    v11 = delegate;
    ICPerformBlockOnMainThread(block);
  }
}

uint64_t __41__ICCameraDevice_updateLockedErrorStatus__block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 performSelector:sel_device_didEncounterError_ withObject:v5 withObject:v6];
  }

  return result;
}

- (void)updateEnumeratingErrorStatus
{
  if ([(ICDevice *)self isAppleDevice]&& ![(ICCameraDevice *)self isAccessRestrictedAppleDevice])
  {
    delegate = [(ICDevice *)self delegate];
    if (self->_isEnumeratingContent)
    {
      name = [(ICDevice *)self name];
      v5 = ICMakeFormattedLocalizedError(-9954, name);
    }

    else
    {
      v5 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__ICCameraDevice_updateEnumeratingErrorStatus__block_invoke;
    block[3] = &unk_1E829CC30;
    v9 = delegate;
    selfCopy = self;
    v11 = v5;
    v6 = v5;
    v7 = delegate;
    ICPerformBlockOnMainThread(block);
  }
}

uint64_t __46__ICCameraDevice_updateEnumeratingErrorStatus__block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 performSelector:sel_device_didEncounterError_ withObject:v5 withObject:v6];
  }

  return result;
}

- (void)removeItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = itemsCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = -[ICCameraDevice cameraFileWithObjectID:](self, "cameraFileWithObjectID:", [*(*(&v19 + 1) + 8 * v8) integerValue]);
        v10 = v9;
        if (v9)
        {
          parentFolder = [v9 parentFolder];
          if (parentFolder)
          {
            v12 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ICCameraDevice *)self willChangeValueForKey:@"contents"];
              [(ICCameraDevice *)self willChangeValueForKey:@"mediaFiles"];
              [parentFolder deleteItem:v12];
              [(ICCameraDevice *)self removeCameraFileFromIndex:v12];
              os_unfair_lock_lock(&self->_mediaLock);
              [(NSMutableArray *)self->_devMediaFiles removeObject:v12];
              os_unfair_lock_unlock(&self->_mediaLock);
              [(ICCameraDevice *)self didChangeValueForKey:@"contents"];
              [(ICCameraDevice *)self didChangeValueForKey:@"mediaFiles"];
            }

            else
            {
              os_unfair_lock_lock(&self->_mediaLock);
              [(ICCameraDevice *)self willChangeValueForKey:@"contents"];
              [(ICCameraDevice *)self willChangeValueForKey:@"mediaFiles"];
              [parentFolder deleteItem:v12];
              [(ICCameraDevice *)self removeCameraFolderFromIndex:v12];
              [(ICCameraDevice *)self didChangeValueForKey:@"contents"];
              [(ICCameraDevice *)self didChangeValueForKey:@"mediaFiles"];
              os_unfair_lock_unlock(&self->_mediaLock);
            }

            [array addObject:v12];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__ICCameraDevice_removeItems___block_invoke;
  block[3] = &unk_1E829C870;
  block[4] = self;
  v18 = array;
  v13 = array;
  ICPerformBlockOnMainThread(block);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __30__ICCameraDevice_removeItems___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if ([*(a1 + 40) count])
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 performSelector:sel_cameraDevice_didRemoveItems_ withObject:*(a1 + 32) withObject:*(a1 + 40)];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)requestCloseSession
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__ICCameraDevice_requestCloseSession__block_invoke;
  v2[3] = &unk_1E829C820;
  v2[4] = self;
  [(ICCameraDevice *)self requestCloseSessionWithOptions:0 completion:v2];
}

void __37__ICCameraDevice_requestCloseSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ICCameraDevice_requestCloseSession__block_invoke_2;
  v5[3] = &unk_1E829C870;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  ICPerformBlockOnMainThread(v5);
}

uint64_t __37__ICCameraDevice_requestCloseSession__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 performSelector:sel_device_didCloseSessionWithError_ withObject:*(a1 + 32) withObject:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)requestCloseSessionWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if ([(ICDevice *)self sessionState]== 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__ICCameraDevice_requestCloseSessionWithOptions_completion___block_invoke;
    v9[3] = &unk_1E829CCA8;
    v10 = optionsCopy;
    selfCopy = self;
    v12 = completionCopy;
    [(ICCameraDevice *)self dispatchAsyncForOperationType:1 block:v9];
  }

  else
  {
    v8 = ICMakeLocalizedError(-9958);
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

void __60__ICCameraDevice_requestCloseSessionWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = v2;
  if (*(a1 + 32))
  {
    [v2 addEntriesFromDictionary:?];
  }

  v4 = [*(a1 + 40) deviceManager];
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__ICCameraDevice_requestCloseSessionWithOptions_completion___block_invoke_2;
  v6[3] = &unk_1E829D140;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v4 closeSession:v5 withOptions:v3 completion:v6];
}

uint64_t __60__ICCameraDevice_requestCloseSessionWithOptions_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"errCode"];
  v5 = [v4 intValue];

  if (v5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v5 userInfo:0];
    objc_claimAutoreleasedReturnValue();
  }

  [*(a1 + 32) willChangeValueForKey:@"hasOpenSession"];
  [*(a1 + 32) setSessionState:-1];
  [*(a1 + 32) didChangeValueForKey:@"hasOpenSession"];
  [*(a1 + 32) willChangeValueForKey:@"contents"];
  v6 = [*(a1 + 32) devContents];
  [v6 removeAllObjects];

  [*(a1 + 32) didChangeValueForKey:@"contents"];
  [*(a1 + 32) lockMedia];
  [*(a1 + 32) willChangeValueForKey:@"mediaFiles"];
  v7 = [*(a1 + 32) devMediaFiles];
  [v7 removeAllObjects];

  [*(a1 + 32) didChangeValueForKey:@"mediaFiles"];
  [*(a1 + 32) unlockMedia];
  [*(a1 + 32) lockMedia];
  v8 = [*(a1 + 32) indexedMediaSet];
  [v8 removeAllItems];

  [*(a1 + 32) resetAccessRestriction];
  [*(a1 + 32) setDevContentCatalogPercentCompleted:0];
  [*(a1 + 32) setPreflightCountOfObjects:-1];
  [*(a1 + 32) setMediaObjectCount:0];
  [*(a1 + 32) setPreviouslyIndexed:0];
  [*(a1 + 32) setReady:0];
  [*(a1 + 32) unlockMedia];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)handlePtpEvent:(id)event
{
  eventCopy = event;
  delegate = [(ICDevice *)self delegate];
  if (eventCopy)
  {
    ptpEventHandler = [(ICCameraDevice *)self ptpEventHandler];

    if (ptpEventHandler)
    {
      ptpEventHandler2 = [(ICCameraDevice *)self ptpEventHandler];
      (ptpEventHandler2)[2](ptpEventHandler2, eventCopy);
    }

    else if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate performSelector:sel_cameraDevice_didReceivePTPEvent_ withObject:self withObject:eventCopy];
    }
  }
}

- (void)setPtpEventHandler:(void *)ptpEventHandler
{
  v4 = ptpEventHandler;
  v6 = v4;
  if (v4)
  {
    [(ICCameraDevice *)self setPtpEventForwarding:1];
    v4 = MEMORY[0x1CCA59970](v6);
  }

  v5 = self->_ptpEventHandler;
  self->_ptpEventHandler = v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5.receiver = self;
  v5.super_class = ICCameraDevice;
  [(ICDevice *)&v5 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICCameraDevice *)self setPtpEventForwarding:1];
    }

    if ([(ICCameraDevice *)self notifyDelegateRestrictionChanged])
    {
      [(ICCameraDevice *)self updateAccessRestriction];
    }
  }
}

- (void)requestSyncClock
{
  if ([(ICDevice *)self hasOpenSession]&& [(ICCameraDevice *)self allowsSyncingClock])
  {
    deviceManager = [(ICDevice *)self deviceManager];
    [deviceManager syncClock:self completion:&__block_literal_global_322];
  }
}

void __34__ICCameraDevice_requestSyncClock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:@"errCode"];
  v6 = [v5 intValue];

  if (v6)
  {
    __ICOSLogCreate();
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v4 name];
    v9 = [v7 stringWithFormat:@"%@ - Sync Clock: %d", v8, v6];

    v10 = __ICLogTypeEnabled();
    v11 = *MEMORY[0x1E69A8B08];
    if (v10)
    {
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEBUG))
    {
      __34__ICCameraDevice_requestSyncClock__block_invoke_cold_1();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)dispatchAsyncForOperationType:(int64_t)type block:(id)block
{
  v5 = [block copy];
  devCommandQueue = self->_devCommandQueue;
  block = v5;
  if (devCommandQueue)
  {
    dispatch_async(devCommandQueue, v5);
  }

  else
  {
    v7 = dispatch_get_global_queue(25, 0);
    dispatch_async(v7, block);
  }
}

- (void)requestDeleteFiles:(NSArray *)files
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__ICCameraDevice_requestDeleteFiles___block_invoke_2;
  v4[3] = &unk_1E829D1D0;
  v4[4] = self;
  v3 = [(ICCameraDevice *)self requestDeleteFiles:files deleteFailed:&__block_literal_global_328 completion:v4];
}

void __37__ICCameraDevice_requestDeleteFiles___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ICCameraDevice_requestDeleteFiles___block_invoke_3;
  v6[3] = &unk_1E829C870;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  ICPerformBlockOnMainThread(v6);
}

void __37__ICCameraDevice_requestDeleteFiles___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_cameraDevice_didCompleteDeleteFilesWithError_ withObject:*(a1 + 32) withObject:*(a1 + 40)];
  }
}

- (NSProgress)requestDeleteFiles:(NSArray *)files deleteFailed:(void *)deleteFailed completion:(void *)completion
{
  v8 = files;
  v9 = deleteFailed;
  v10 = completion;
  if (![(ICDevice *)self hasOpenSession]|| [(ICCameraDevice *)self beingEjected]|| [(ICCameraDevice *)self isLocked]|| ![(NSArray *)v8 count])
  {
    v13 = ICMakeLocalizedError(-9941);
    v10[2](v10, MEMORY[0x1E695E0F8], v13);

    v12 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{-[NSArray count](v8, "count")}];
    [v11 setCancellable:1];
    [v11 setPausable:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke;
    v15[3] = &unk_1E829D270;
    v15[4] = self;
    v12 = v11;
    v16 = v12;
    v17 = v8;
    v18 = v10;
    v19 = v9;
    [(ICCameraDevice *)self dispatchAsyncForOperationType:5 block:v15];
  }

  return v12;
}

void __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke(id *a1)
{
  [a1[4] setDeleteProgress:a1[5]];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__2;
  v26[4] = __Block_byref_object_dispose__2;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = [a1[6] mutableCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__333;
  v22 = __Block_byref_object_dispose__334;
  v23 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke_335;
  v9 = &unk_1E829D248;
  v10 = a1[5];
  v14 = v24;
  v15 = v28;
  v16 = v26;
  v2 = a1[7];
  v11 = a1[4];
  v12 = v2;
  v13 = a1[8];
  v17 = &v18;
  v3 = MEMORY[0x1CCA59970](&v6);
  v4 = [v3 copy];
  v5 = v19[5];
  v19[5] = v4;

  v3[2](v3);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
}

void __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke_335(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) != 0 || !objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count"))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    if ([*(*(*(a1 + 72) + 8) + 40) count])
    {
      [v12 setObject:*(*(*(a1 + 72) + 8) + 40) forKeyedSubscript:@"ICDeleteFailed"];
      v10 = ICMakeLocalizedError(-9941);
    }

    else
    {
      v10 = 0;
    }

    if ([*(*(*(a1 + 80) + 8) + 40) count])
    {
      [v12 setObject:*(*(*(a1 + 80) + 8) + 40) forKeyedSubscript:@"ICDeleteSuccessful"];
    }

    if ([*(a1 + 32) isCancelled] && objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count"))
    {
      [v12 setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:@"ICDeleteCanceled"];
      v11 = ICMakeLocalizedError(-9942);

      v10 = v11;
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setDeleteProgress:0];
  }

  else
  {
    v2 = [*(*(*(a1 + 64) + 8) + 40) lastObject];
    v3 = dispatch_semaphore_create(0);
    v4 = [*(a1 + 40) deviceManager];
    v5 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke_2;
    v14[3] = &unk_1E829D1F8;
    v6 = *(a1 + 56);
    v16 = v3;
    v17 = v6;
    v18 = *(a1 + 72);
    v19 = *(a1 + 64);
    v15 = v2;
    v7 = v3;
    v8 = v2;
    [v4 deleteFile:v8 fromDevice:v5 completion:v14];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke_344;
    block[3] = &unk_1E829D220;
    block[4] = *(a1 + 88);
    dispatch_async(v9, block);
  }
}

void __61__ICCameraDevice_requestDeleteFiles_deleteFailed_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  __ICOSLogCreate();
  v5 = @"iccameradevice";
  if ([@"iccameradevice" length] >= 0x15)
  {
    v6 = [@"iccameradevice" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 objectForKeyedSubscript:@"file"];
  v9 = [v7 stringWithFormat:@"delete file reply: %@", v8];

  v10 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v5;
    v12 = v10;
    *buf = 136446466;
    v32 = [(__CFString *)v5 UTF8String];
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v13 = [v4 objectForKeyedSubscript:@"errCode"];
  v14 = [v13 intValue];

  v15 = 56;
  if (v14 > -9923)
  {
    if (v14 == -9922)
    {
      v16 = *(a1 + 48);
      v22 = *(a1 + 32);
      v27 = @"ICDeleteErrorFileMissing";
      v28 = v22;
      v18 = MEMORY[0x1E695DF20];
      v19 = &v28;
      v20 = &v27;
      goto LABEL_15;
    }

    if (!v14)
    {
      v15 = 64;
    }
  }

  else
  {
    if (v14 == -9942)
    {
      v16 = *(a1 + 48);
      v21 = *(a1 + 32);
      v29 = @"ICDeleteErrorCanceled";
      v30 = v21;
      v18 = MEMORY[0x1E695DF20];
      v19 = &v30;
      v20 = &v29;
      goto LABEL_15;
    }

    if (v14 == -9941)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v25 = @"ICDeleteErrorReadOnly";
      v26 = v17;
      v18 = MEMORY[0x1E695DF20];
      v19 = &v26;
      v20 = &v25;
LABEL_15:
      v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
      (*(v16 + 16))(v16, v23);

      v15 = 56;
    }
  }

  [*(*(*(a1 + v15) + 8) + 40) addObject:*(a1 + 32)];
  [*(*(*(a1 + 72) + 8) + 40) removeLastObject];
  dispatch_semaphore_signal(*(a1 + 40));

  v24 = *MEMORY[0x1E69E9840];
}

- (void)requestEject
{
  if ([(ICCameraDevice *)self isEjectable])
  {
    if (![(ICCameraDevice *)self beingEjected])
    {
      [(ICCameraDevice *)self setBeingEjected:1];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __30__ICCameraDevice_requestEject__block_invoke;
      v4[3] = &unk_1E829C820;
      v4[4] = self;
      v3.receiver = self;
      v3.super_class = ICCameraDevice;
      [(ICDevice *)&v3 requestEjectWithCompletion:v4];
    }
  }
}

- (void)requestSendPTPCommand:(NSData *)ptpCommand outData:(NSData *)ptpData completion:(void *)completion
{
  v8 = completion;
  if (ptpCommand)
  {
    v9 = ptpData;
    v10 = ptpCommand;
    deviceManager = [(ICDevice *)self deviceManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__ICCameraDevice_requestSendPTPCommand_outData_completion___block_invoke;
    v12[3] = &unk_1E829CEF8;
    v13 = v8;
    [deviceManager sendDevice:self ptpCommand:v10 andPayload:v9 completion:v12];
  }
}

void __59__ICCameraDevice_requestSendPTPCommand_outData_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"errCode"];
  v6 = [v5 intValue];

  if (v6)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImageCaptureCore" code:v6 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"ICPTPDataInBuffer"];
  v8 = [v4 objectForKeyedSubscript:@"ICPTPResponseBuffer"];

  (*(*(a1 + 32) + 16))();
}

- (void)setPtpEventForwarding:(BOOL)forwarding
{
  forwardingCopy = forwarding;
  v9[1] = *MEMORY[0x1E69E9840];
  deviceManager = [(ICDevice *)self deviceManager];
  if (forwardingCopy)
  {
    v9[0] = @"ICNotificationTypeDeviceForwardPTPEvents";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [deviceManager registerDevice:self forImageCaptureEventNotifications:v6];
  }

  else
  {
    v8 = @"ICNotificationTypeDeviceForwardPTPEvents";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [deviceManager unregisterDevice:self forImageCaptureEventNotifications:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelDelete
{
  deleteProgress = [(ICCameraDevice *)self deleteProgress];

  if (deleteProgress)
  {
    deleteProgress2 = [(ICCameraDevice *)self deleteProgress];
    [deleteProgress2 cancel];
  }
}

- (void)requestDownloadFile:(ICCameraFile *)file options:(NSDictionary *)options downloadDelegate:(id)downloadDelegate didDownloadSelector:(SEL)selector contextInfo:(void *)contextInfo
{
  v11 = file;
  v12 = options;
  v13 = downloadDelegate;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__ICCameraDevice_requestDownloadFile_options_downloadDelegate_didDownloadSelector_contextInfo___block_invoke;
  v18[3] = &unk_1E829D2C0;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  v22 = selector;
  v23 = contextInfo;
  v14 = v11;
  v15 = v13;
  v16 = v12;
  v17 = [(ICCameraFile *)v14 requestDownloadWithOptions:v16 completion:v18];
}

void __95__ICCameraDevice_requestDownloadFile_options_downloadDelegate_didDownloadSelector_contextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mutableCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__ICCameraDevice_requestDownloadFile_options_downloadDelegate_didDownloadSelector_contextInfo___block_invoke_2;
  block[3] = &unk_1E829D298;
  v15 = v5;
  v16 = v7;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v17 = v8;
  v20 = v9;
  v18 = v10;
  v19 = v6;
  v21 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  ICPerformBlockOnMainThread(block);
}

id __95__ICCameraDevice_requestDownloadFile_options_downloadDelegate_didDownloadSelector_contextInfo___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKeyedSubscript:@"ICSavedFilename"];
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);

  return [v5 v7];
}

- (void)addFolder:(id)folder
{
  v19 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  if (folderCopy)
  {
    os_unfair_lock_lock(&self->_mediaLock);
    __ICOSLogCreate();
    name = [(ICDevice *)self name];
    if ([name length] >= 0x15)
    {
      v6 = [name substringWithRange:{0, 18}];
      v7 = [v6 stringByAppendingString:@".."];

      name = v7;
    }

    v8 = MEMORY[0x1E696AEC0];
    name2 = [folderCopy name];
    v10 = [v8 stringWithFormat:@"🗄 Store Added  - %04d - [%8s]", 1, objc_msgSend(name2, "UTF8String")];

    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v12 = name;
      v13 = v11;
      *buf = 136446466;
      uTF8String = [name UTF8String];
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_devContents addObject:folderCopy];
    os_unfair_lock_unlock(&self->_mediaLock);
    [(ICCameraDevice *)self addCameraFolderToIndex:folderCopy];
    [(ICCameraDevice *)self storageAvailable];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeFolder:(id)folder
{
  if (folder)
  {
    devContents = self->_devContents;
    folderCopy = folder;
    [(NSMutableArray *)devContents removeObject:folderCopy];
    indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
    [indexedMediaSet removeMediaItemFromIndex:folderCopy];

    [(ICCameraDevice *)self storageAvailable];
  }
}

- (void)cancelDownload
{
  downloadProgress = [(ICCameraDevice *)self downloadProgress];

  if (downloadProgress)
  {
    downloadProgress2 = [(ICCameraDevice *)self downloadProgress];
    [downloadProgress2 cancel];
  }
}

- (int64_t)cameraFilesContentSizeInBytes
{
  v17 = *MEMORY[0x1E69E9840];
  indexedMediaSet = [(ICCameraDevice *)self indexedMediaSet];
  v3 = [indexedMediaSet orderedSetForType:@"file"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += 5120 + [*(*(&v12 + 1) + 8 * i) fileSize];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CGImage)icon
{
  systemSymbolName = [(ICDevice *)self systemSymbolName];

  if (!systemSymbolName)
  {
    [(ICDevice *)self setSystemSymbolName:@"camera"];
  }

  systemSymbolName2 = [(ICDevice *)self systemSymbolName];
  if (systemSymbolName2)
  {
    v5 = systemSymbolName2;
    cameraDeviceIcon = [(ICCameraDevice *)self cameraDeviceIcon];

    if (!cameraDeviceIcon)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69A89C0]);
      [v7 setSymbolWeight:3];
      [v7 setPointSize:24.0];
      mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
      v9 = [mobdevProperties objectForKeyedSubscript:@"ProductType"];

      if (v9)
      {
        v10 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:v9];
        v11 = MEMORY[0x1E69A8A40];
        identifier = [v10 identifier];
        v22 = 0;
        v13 = [v11 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:1 error:&v22];

        v14 = [v13 imageForDescriptor:v7];
        v15 = v14;
        if (v14)
        {
          -[ICCameraDevice setCameraDeviceIcon:](self, "setCameraDeviceIcon:", [v14 CGImage]);
        }
      }

      if (![(ICCameraDevice *)self cameraDeviceIcon])
      {
        v16 = objc_alloc(MEMORY[0x1E69A8A40]);
        systemSymbolName3 = [(ICDevice *)self systemSymbolName];
        v18 = [v16 initWithSymbolName:systemSymbolName3 bundleURL:0];

        v19 = [v18 imageForDescriptor:v7];
        v20 = v19;
        if (v19)
        {
          -[ICCameraDevice setCameraDeviceIcon:](self, "setCameraDeviceIcon:", [v19 CGImage]);
        }
      }
    }
  }

  return [(ICCameraDevice *)self cameraDeviceIcon];
}

- (BOOL)setDefaultMediaPresentation:(unint64_t)presentation
{
  mediaPresentation = [(ICCameraDevice *)self mediaPresentation];
  if (mediaPresentation != presentation)
  {
    [(ICCameraDevice *)self setMediaPresentation:presentation];
  }

  return mediaPresentation != presentation;
}

- (ICCameraDevice)initWithDictionary:(id)dictionary
{
  v17.receiver = self;
  v17.super_class = ICCameraDevice;
  v3 = [(ICDevice *)&v17 initWithDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    [(ICDevice *)v3 setProductKind:@"Camera"];
    [(ICDevice *)v4 setType:1];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraDevice *)v4 setDevContents:v5];

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraDevice *)v4 setDevMediaFiles:v6];

    v4->_mediaLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("ICDeviceNotificationQueue", v7);
    devNotificationQueue = v4->_devNotificationQueue;
    v4->_devNotificationQueue = v8;

    v10 = dispatch_queue_create("ICDeviceCommandQueue", v7);
    devCommandQueue = v4->_devCommandQueue;
    v4->_devCommandQueue = v10;

    v12 = dispatch_queue_create("ICDeviceWriteQueue", v7);
    devWriteQueue = v4->_devWriteQueue;
    v4->_devWriteQueue = v12;

    v4->_devContentCatalogPercentCompleted = 0;
    v4->_preflightCountOfObjects = -1;
    v4->_isEnumeratingContent = 0;
    [(ICCameraDevice *)v4 setDevMediaPresentation:1];
    v14 = [objc_alloc(MEMORY[0x1E69A8AF0]) initWithTypes:&unk_1F4697270];
    indexedMediaSet = v4->_indexedMediaSet;
    v4->_indexedMediaSet = v14;

    [(ICCameraDevice *)v4 setAppleRelatedUUIDSupport:0];
    [(ICCameraDevice *)v4 setEnumerationOrder:1];
    [(ICDevice *)v4 setType:[(ICDevice *)v4 type]| 0x100];
    [(ICCameraDevice *)v4 resetAccessRestriction];
    [(ICCameraDevice *)v4 addObserver:v4 forKeyPath:@"ready" options:3 context:0];
  }

  return v4;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  name = [(ICDevice *)self name];
  if ([name length] >= 0x15)
  {
    v4 = [name substringWithRange:{0, 18}];
    v5 = [v4 stringByAppendingString:@".."];

    name = v5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" --- Deallocating Device"];
  v7 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v8 = name;
    v9 = v7;
    *buf = 136446466;
    uTF8String = [name UTF8String];
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(ICCameraDevice *)self removeObserver:self forKeyPath:@"ready"];
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v12.receiver = self;
  v12.super_class = ICCameraDevice;
  [(ICCameraDevice *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestReadDataFromFile:(ICCameraFile *)file atOffset:(off_t)offset length:(off_t)length readDelegate:(id)readDelegate didReadDataSelector:(SEL)selector contextInfo:(void *)contextInfo
{
  v14 = file;
  v15 = readDelegate;
  v16 = sel_registerName("didReadData:fromFile:error:contextInfo:");
  if ([(ICDevice *)self hasOpenSession]&& (v17 = [(ICCameraDevice *)self beingEjected], selector) && v15 && v14 && !v17)
  {
    if (length + offset <= [(ICCameraFile *)v14 fileSize]&& ![(ICCameraFile *)v14 isConverted])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __103__ICCameraDevice_requestReadDataFromFile_atOffset_length_readDelegate_didReadDataSelector_contextInfo___block_invoke;
      v26[3] = &unk_1E829D310;
      v27 = v15;
      v29 = v16;
      v30 = selector;
      v28 = v14;
      v31 = contextInfo;
      [(ICCameraFile *)v28 requestReadDataAtOffset:offset length:length completion:v26];

      v18 = v27;
LABEL_12:

      goto LABEL_13;
    }
  }

  else if (!v15)
  {
    goto LABEL_13;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = ICMakeLocalizedError(-9922);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __103__ICCameraDevice_requestReadDataFromFile_atOffset_length_readDelegate_didReadDataSelector_contextInfo___block_invoke_3;
    v20[3] = &unk_1E829D338;
    v21 = v15;
    v24 = selector;
    v22 = v14;
    v23 = v19;
    v25 = contextInfo;
    v18 = v19;
    ICPerformBlockOnMainThread(v20);

    goto LABEL_12;
  }

LABEL_13:
}

void __103__ICCameraDevice_requestReadDataFromFile_atOffset_length_readDelegate_didReadDataSelector_contextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__ICCameraDevice_requestReadDataFromFile_atOffset_length_readDelegate_didReadDataSelector_contextInfo___block_invoke_2;
  block[3] = &unk_1E829D2E8;
  v7 = *(a1 + 32);
  v15 = *(a1 + 48);
  v11 = v7;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = v6;
  v16 = *(a1 + 64);
  v8 = v6;
  v9 = v5;
  ICPerformBlockOnMainThread(block);
}

uint64_t __103__ICCameraDevice_requestReadDataFromFile_atOffset_length_readDelegate_didReadDataSelector_contextInfo___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[8];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = a1[6];
      v7 = a1[7];
      v8 = a1[9];
      v9 = a1[10];

      return [v4 v8];
    }
  }

  return result;
}

- (void)dumpPTPPassthruCommand:(id)command andData:(id)data
{
  v97 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  dataCopy = data;
  v92 = 0;
  v91 = 0;
  [commandCopy getBytes:&v92 range:{0, 4}];
  [commandCopy getBytes:&v91 range:{6, 2}];
  if (v91 != 37142 && v91 != 37203)
  {
    __ICOSLogCreate();
    v8 = @"--cmd--";
    if ([@"--cmd--" length] >= 0x15)
    {
      v9 = [@"--cmd--" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"************************"];
    v11 = MEMORY[0x1E69A8B08];
    v12 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v94 = uTF8String;
      v95 = 2114;
      v96 = v10;
      _os_log_impl(&dword_1C6F19000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    __ICOSLogCreate();
    v14 = @"length";
    if ([@"length" length] >= 0x15)
    {
      v15 = [@"length" substringWithRange:{0, 18}];
      v14 = [v15 stringByAppendingString:@".."];
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
    v17 = *v11;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String2 = [(__CFString *)v14 UTF8String];
      *buf = 136446466;
      v94 = uTF8String2;
      v95 = 2114;
      v96 = v16;
      _os_log_impl(&dword_1C6F19000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [commandCopy getBytes:&v91 range:{4, 2}];
    __ICOSLogCreate();
    v19 = @"type";
    if ([@"type" length] >= 0x15)
    {
      v20 = [@"type" substringWithRange:{0, 18}];
      v19 = [v20 stringByAppendingString:@".."];
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v91];
    v22 = *v11;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String3 = [(__CFString *)v19 UTF8String];
      *buf = 136446466;
      v94 = uTF8String3;
      v95 = 2114;
      v96 = v21;
      _os_log_impl(&dword_1C6F19000, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [commandCopy getBytes:&v91 range:{6, 2}];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v91];
    __ICOSLogCreate();
    v25 = @"op";
    if ([@"op" length] >= 0x15)
    {
      v26 = [@"op" substringWithRange:{0, 18}];
      v25 = [v26 stringByAppendingString:@".."];
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", objc_msgSend(v24, "UTF8String")];
    v28 = *v11;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String4 = [(__CFString *)v25 UTF8String];
      *buf = 136446466;
      v94 = uTF8String4;
      v95 = 2114;
      v96 = v27;
      _os_log_impl(&dword_1C6F19000, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [commandCopy getBytes:&v92 range:{8, 4}];
    __ICOSLogCreate();
    v30 = @"tid";
    if ([@"tid" length] >= 0x15)
    {
      v31 = [@"tid" substringWithRange:{0, 18}];
      v30 = [v31 stringByAppendingString:@".."];
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
    v33 = *v11;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String5 = [(__CFString *)v30 UTF8String];
      *buf = 136446466;
      v94 = uTF8String5;
      v95 = 2114;
      v96 = v32;
      _os_log_impl(&dword_1C6F19000, v33, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if ([commandCopy length] >= 0x10)
    {
      __ICOSLogCreate();
      v35 = @"|---------pars--";
      if ([@"|---------pars--" length] >= 0x15)
      {
        v36 = [@"|---------pars--" substringWithRange:{0, 18}];
        v35 = [v36 stringByAppendingString:@".."];
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"---------"];
      v38 = *v11;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String6 = [(__CFString *)v35 UTF8String];
        *buf = 136446466;
        v94 = uTF8String6;
        v95 = 2114;
        v96 = v37;
        _os_log_impl(&dword_1C6F19000, v38, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [commandCopy getBytes:&v92 range:{12, 4}];
      __ICOSLogCreate();
      v40 = @"(p1)";
      if ([@"(p1)" length] >= 0x15)
      {
        v41 = [@"(p1)" substringWithRange:{0, 18}];
        v40 = [v41 stringByAppendingString:@".."];
      }

      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
      v43 = *v11;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String7 = [(__CFString *)v40 UTF8String];
        *buf = 136446466;
        v94 = uTF8String7;
        v95 = 2114;
        v96 = v42;
        _os_log_impl(&dword_1C6F19000, v43, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if ([commandCopy length] >= 0x14)
    {
      [commandCopy getBytes:&v92 range:{16, 4}];
      __ICOSLogCreate();
      v45 = @"(p2)";
      if ([@"(p2)" length] >= 0x15)
      {
        v46 = [@"(p2)" substringWithRange:{0, 18}];
        v45 = [v46 stringByAppendingString:@".."];
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
      v48 = *v11;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String8 = [(__CFString *)v45 UTF8String];
        *buf = 136446466;
        v94 = uTF8String8;
        v95 = 2114;
        v96 = v47;
        _os_log_impl(&dword_1C6F19000, v48, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if ([commandCopy length] >= 0x18)
    {
      [commandCopy getBytes:&v92 range:{20, 4}];
      __ICOSLogCreate();
      v50 = @"(p3)";
      if ([@"(p3)" length] >= 0x15)
      {
        v51 = [@"(p3)" substringWithRange:{0, 18}];
        v50 = [v51 stringByAppendingString:@".."];
      }

      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
      v53 = *v11;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String9 = [(__CFString *)v50 UTF8String];
        *buf = 136446466;
        v94 = uTF8String9;
        v95 = 2114;
        v96 = v52;
        _os_log_impl(&dword_1C6F19000, v53, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if ([commandCopy length] >= 0x1C)
    {
      [commandCopy getBytes:&v92 range:{24, 4}];
      __ICOSLogCreate();
      v55 = @"(p4)";
      if ([@"(p4)" length] >= 0x15)
      {
        v56 = [@"(p4)" substringWithRange:{0, 18}];
        v55 = [v56 stringByAppendingString:@".."];
      }

      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
      v58 = *v11;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String10 = [(__CFString *)v55 UTF8String];
        *buf = 136446466;
        v94 = uTF8String10;
        v95 = 2114;
        v96 = v57;
        _os_log_impl(&dword_1C6F19000, v58, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if ([commandCopy length] >= 0x20)
    {
      [commandCopy getBytes:&v92 range:{28, 4}];
      __ICOSLogCreate();
      v60 = @"(p5)";
      if ([@"(p5)" length] >= 0x15)
      {
        v61 = [@"(p5)" substringWithRange:{0, 18}];
        v60 = [v61 stringByAppendingString:@".."];
      }

      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v92];
      v63 = *v11;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String11 = [(__CFString *)v60 UTF8String];
        *buf = 136446466;
        v94 = uTF8String11;
        v95 = 2114;
        v96 = v62;
        _os_log_impl(&dword_1C6F19000, v63, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if (dataCopy && [dataCopy length] == 12)
    {
      __ICOSLogCreate();
      v65 = @"|---------data--";
      if ([@"|---------data--" length] >= 0x15)
      {
        v66 = [@"|---------data--" substringWithRange:{0, 18}];
        v65 = [v66 stringByAppendingString:@".."];
      }

      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"---------"];
      v68 = *v11;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String12 = [(__CFString *)v65 UTF8String];
        *buf = 136446466;
        v94 = uTF8String12;
        v95 = 2114;
        v96 = v67;
        _os_log_impl(&dword_1C6F19000, v68, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v90 = 0;
      [dataCopy getBytes:&v90 range:{0, 4}];
      __ICOSLogCreate();
      v70 = @"|-->      length";
      if ([@"|-->      length" length] >= 0x15)
      {
        v71 = [@"|-->      length" substringWithRange:{0, 18}];
        v70 = [v71 stringByAppendingString:@".."];
      }

      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v90];
      v73 = *v11;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String13 = [(__CFString *)v70 UTF8String];
        *buf = 136446466;
        v94 = uTF8String13;
        v95 = 2114;
        v96 = v72;
        _os_log_impl(&dword_1C6F19000, v73, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [dataCopy getBytes:&v90 range:{4, 4}];
      __ICOSLogCreate();
      v75 = @"|-->  propertyID";
      if ([@"|-->  propertyID" length] >= 0x15)
      {
        v76 = [@"|-->  propertyID" substringWithRange:{0, 18}];
        v75 = [v76 stringByAppendingString:@".."];
      }

      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v90];
      v78 = *v11;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String14 = [(__CFString *)v75 UTF8String];
        *buf = 136446466;
        v94 = uTF8String14;
        v95 = 2114;
        v96 = v77;
        _os_log_impl(&dword_1C6F19000, v78, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [dataCopy getBytes:&v90 range:{8, 4}];
      __ICOSLogCreate();
      v80 = @"|--> propertyVal";
      if ([@"|--> propertyVal" length] >= 0x15)
      {
        v81 = [@"|--> propertyVal" substringWithRange:{0, 18}];
        v80 = [v81 stringByAppendingString:@".."];
      }

      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", v90];
      v83 = *v11;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String15 = [(__CFString *)v80 UTF8String];
        *buf = 136446466;
        v94 = uTF8String15;
        v95 = 2114;
        v96 = v82;
        _os_log_impl(&dword_1C6F19000, v83, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    __ICOSLogCreate();
    v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n"];
    v86 = __ICLogTypeEnabled();
    v87 = *v11;
    v88 = v87;
    if (v86)
    {
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v94 = v85;
        _os_log_impl(&dword_1C6F19000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      __34__ICCameraDevice_requestSyncClock__block_invoke_cold_1();
    }
  }

  v89 = *MEMORY[0x1E69E9840];
}

- (void)requestSendPTPCommand:(NSData *)command outData:(NSData *)data sendCommandDelegate:(id)sendCommandDelegate didSendCommandSelector:(SEL)selector contextInfo:(void *)contextInfo
{
  v12 = command;
  v13 = data;
  v14 = sendCommandDelegate;
  hasOpenSession = [(ICDevice *)self hasOpenSession];
  if (selector && v14 && v12 && hasOpenSession)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__ICCameraDevice_requestSendPTPCommand_outData_sendCommandDelegate_didSendCommandSelector_contextInfo___block_invoke;
    v16[3] = &unk_1E829D360;
    v17 = v14;
    v19 = selector;
    v18 = v12;
    v20 = contextInfo;
    [(ICCameraDevice *)self requestSendPTPCommand:v18 outData:v13 completion:v16];
  }
}

void __103__ICCameraDevice_requestSendPTPCommand_outData_sendCommandDelegate_didSendCommandSelector_contextInfo___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__ICCameraDevice_requestSendPTPCommand_outData_sendCommandDelegate_didSendCommandSelector_contextInfo___block_invoke_2;
  block[3] = &unk_1E829D298;
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v17 = v10;
  v22 = v11;
  v18 = v12;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v23 = *(a1 + 56);
  v13 = v9;
  v14 = v8;
  v15 = v7;
  ICPerformBlockOnMainThread(block);
}

- (NSString)productVersion
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"ProductVersion"];

  return v3;
}

- (NSString)appleSerialNumber
{
  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];
  v3 = [mobdevProperties objectForKeyedSubscript:@"AppleSerialNumber"];

  return v3;
}

- (BOOL)updateAppleProperties:(id)properties
{
  v47 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (![(ICDevice *)self isAppleDevice])
  {
    v17 = 0;
    goto LABEL_47;
  }

  v5 = [propertiesCopy objectForKeyedSubscript:@"mobdevProps"];

  if (v5)
  {
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v6 = @"mobdev";
      if ([@"mobdev" length] >= 0x15)
      {
        v7 = [@"mobdev" substringWithRange:{0, 18}];
        v6 = [v7 stringByAppendingString:@".."];
      }

      v8 = MEMORY[0x1E696AEC0];
      v9 = [propertiesCopy objectForKeyedSubscript:@"mobdevProps"];
      v10 = [v8 stringWithFormat:@"%@", v9];

      v11 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v6;
        v13 = v11;
        *buf = 136446466;
        uTF8String = [(__CFString *)v6 UTF8String];
        v45 = 2114;
        v46 = v10;
        _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = [propertiesCopy objectForKeyedSubscript:@"mobdevProps"];
  if (v14 && (-[ICCameraDevice mobdevProperties](self, "mobdevProperties"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqualToDictionary:v15], v15, (v16 & 1) == 0))
  {
    [(ICCameraDevice *)self willChangeValueForKey:@"mobdevProperties"];
    [(ICCameraDevice *)self setMobdevProperties:v14];
    [(ICCameraDevice *)self didChangeValueForKey:@"mobdevProperties"];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [propertiesCopy objectForKeyedSubscript:@"iCloudPhotosEnabled"];

  if (v18)
  {
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    if (unsignedIntegerValue != [(ICCameraDevice *)self iCloudPhotosEnabled])
    {
      [(ICCameraDevice *)self setICloudPhotosEnabled:unsignedIntegerValue != 0];
    }
  }

  mobdevProperties = [(ICCameraDevice *)self mobdevProperties];

  if (mobdevProperties && (-[ICCameraDevice mobdevProperties](self, "mobdevProperties"), v21 = objc_claimAutoreleasedReturnValue(), [v21 objectForKeyedSubscript:@"DevicePairedState"], v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
  {
    if ([v22 BOOLValue])
    {
      v23 = 0;
    }

    else
    {
      v23 = 4;
    }
  }

  else
  {
    v24 = [propertiesCopy objectForKeyedSubscript:@"deviceIsPairedWithThisHost"];
    if (!v24)
    {
      v23 = 0;
      goto LABEL_28;
    }

    v22 = v24;
    if ([v24 BOOLValue])
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_28:
  v25 = [propertiesCopy objectForKeyedSubscript:@"deviceIsEnumerating"];
  v26 = [propertiesCopy objectForKeyedSubscript:@"deviceIsPasscodeLocked"];
  v27 = v26;
  if (v26 && ![v26 BOOLValue])
  {
    v23 |= 2uLL;
LABEL_34:
    [(ICCameraDevice *)self setAccessRestriction:v23];
    if (!v25)
    {
      goto LABEL_43;
    }

LABEL_35:
    bOOLValue = [v25 BOOLValue];
    if (bOOLValue != [(ICCameraDevice *)self isEnumeratingContent])
    {
      __ICOSLogCreate();
      v29 = @"library";
      if ([@"library" length] >= 0x15)
      {
        v30 = [@"library" substringWithRange:{0, 18}];
        v29 = [v30 stringByAppendingString:@".."];
      }

      v31 = MEMORY[0x1E696AEC0];
      bOOLValue2 = [v25 BOOLValue];
      v33 = @"√ Complete";
      if (bOOLValue2)
      {
        v33 = @"- Enumerating";
      }

      v34 = [v31 stringWithFormat:@"%@", v33];
      v35 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v36 = v29;
        v37 = v35;
        uTF8String2 = [(__CFString *)v29 UTF8String];
        *buf = 136446466;
        uTF8String = uTF8String2;
        v45 = 2114;
        v46 = v34;
        _os_log_impl(&dword_1C6F19000, v37, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [(ICCameraDevice *)self willChangeValueForKey:@"isEnumeratingContent"];
      self->_isEnumeratingContent = [v25 BOOLValue];
      [(ICCameraDevice *)self didChangeValueForKey:@"isEnumeratingContent"];
      v17 = 1;
    }

    goto LABEL_43;
  }

  if (v23)
  {
    goto LABEL_34;
  }

  if (v25)
  {
    goto LABEL_35;
  }

LABEL_43:
  v39 = [propertiesCopy objectForKeyedSubscript:@"deviceMediaPresentation"];

  if (v39)
  {
    intValue = [v39 intValue];
    if ([(ICCameraDevice *)self mediaPresentation]!= intValue)
    {
      [(ICCameraDevice *)self setDefaultMediaPresentation:intValue];
    }
  }

LABEL_47:
  v41 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)requestUploadFile:(NSURL *)fileURL options:(NSDictionary *)options uploadDelegate:(id)uploadDelegate didUploadSelector:(SEL)selector contextInfo:(void *)contextInfo
{
  v10 = fileURL;
  v11 = uploadDelegate;
  v12 = v11;
  if (v11 && selector)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__ICCameraDevice_requestUploadFile_options_uploadDelegate_didUploadSelector_contextInfo___block_invoke;
    v13[3] = &unk_1E829D388;
    v14 = v11;
    v16 = selector;
    v15 = v10;
    v17 = contextInfo;
    ICPerformBlockOnMainThread(v13);
  }
}

void __89__ICCameraDevice_requestUploadFile_options_uploadDelegate_didUploadSelector_contextInfo___block_invoke(uint64_t a1)
{
  v2 = ICMakeLocalizedError(-9935);
  [*(a1 + 32) *(a1 + 48)];
}

- (void)requestTakePicture
{
  if ([(ICDevice *)self hasOpenSession])
  {
    if ([(ICCameraDevice *)self tetheredCaptureEnabled])
    {
      v3 = [objc_alloc(MEMORY[0x1E69A8AF8]) initWithOperationCode:4110 transactionID:0 dataPhaseInfo:1 parameter1:0 parameter2:0];
      contentForUSB = [v3 contentForUSB];
      data = [contentForUSB data];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __36__ICCameraDevice_requestTakePicture__block_invoke;
      v6[3] = &unk_1E829D3B0;
      v6[4] = self;
      [(ICCameraDevice *)self requestSendPTPCommand:data outData:0 completion:v6];
    }
  }
}

void __36__ICCameraDevice_requestTakePicture__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A8B00]) initWithUSBBuffer:{objc_msgSend(v8, "bytes")}];
    v11 = v10;
    if (v10 && [v10 responseCode] == 8193)
    {
      __ICOSLogCreate();
      v12 = [*(a1 + 32) name];
      if ([v12 length] >= 0x15)
      {
        v13 = [v12 substringWithRange:{0, 18}];
        v14 = [v13 stringByAppendingString:@".."];

        v12 = v14;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Issued a PTP capture event successfully."];
      v16 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v12;
        v18 = v16;
        v20 = 136446466;
        v21 = [v12 UTF8String];
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&dword_1C6F19000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v20, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __30__ICCameraDevice_remoteCamera__block_invoke_cold_1(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C6F19000, v6, v7, "%{public}20s ! %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setMediaPresentation:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1C6F19000, v0, OS_LOG_TYPE_ERROR, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __34__ICCameraDevice_requestSyncClock__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1C6F19000, v0, OS_LOG_TYPE_DEBUG, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end