@interface QLThumbnailAddition
+ (BOOL)_removeAdditionsOnURLDirectly:(id)a3 error:(id *)a4;
+ (BOOL)_removeAdditionsOnURLUsingDaemon:(id)a3 error:(id *)a4;
+ (BOOL)_removedAdditionsOnURLUsingDaemon:(id)a3;
+ (BOOL)associateImage:(CGImage *)a3 metadata:(id)a4 automaticallyGenerated:(BOOL)a5 withURL:(id)a6 error:(id *)a7;
+ (BOOL)associateThumbnailImagesDictionary:(id)a3 serializedQuickLookMetadata:(id)a4 withImmutableDocument:(BOOL)a5 atURL:(id)a6 error:(id *)a7;
+ (BOOL)associateThumbnailsForDocumentAtURL:(id)a3 withDocumentAtURL:(id)a4 error:(id *)a5;
+ (BOOL)associateThumbnailsForDocumentAtURL:(id)a3 withImmutableDocument:(BOOL)a4 atURL:(id)a5 error:(id *)a6;
+ (BOOL)hasThumbnailOnImmutableDocumentAtURL:(id)a3;
+ (BOOL)imageContainsAlpha:(CGImage *)a3;
+ (BOOL)imageContainsAlphaForOtherImages:(CGImage *)a3;
+ (BOOL)makeAdditionFromStagingURL:(id)a3 metadata:(id)a4 inStorage:(id)a5 error:(id *)a6;
+ (BOOL)removeAdditionsOnURL:(id)a3 error:(id *)a4;
+ (BOOL)removeExtendedAttributeNamed:(const char *)a3 flags:(unint64_t)a4 onFileDescriptor:(int)a5 error:(id *)a6;
+ (BOOL)removeThumbnailsStoredInExtendedAttributesOnURL:(id)a3 error:(id *)a4;
+ (BOOL)setPropertyList:(id)a3 forExtendedAttributeNamed:(const char *)a4 flags:(unint64_t)a5 onFileDescriptor:(int)a6 error:(id *)a7;
+ (BOOL)setThumbnailsDictionary:(id)a3 forURL:(id)a4 error:(id *)a5;
+ (BOOL)shouldUseXattrsToStoreThumbnailsOnURL:(id)a3;
+ (BOOL)storeThumbnailDataDictionary:(id)a3 metadata:(id)a4 asExtendedAttributeOnURL:(id)a5 error:(id *)a6;
+ (id)additionCreationInfo;
+ (id)imageNameFor1024ThumbnailAtURL:(id)a3 metadataDictionary:(id)a4;
+ (id)imageNameFor1024ThumbnailData:(id)a3 metadataDictionary:(id)a4;
+ (id)imageNameFor1024ThumbnailInMetadataDictionary:(id)a3;
+ (id)imageNameForThumbnailInImageSource:(CGImageSource *)a3;
+ (id)metadataForGeneratedThumbnailForURL:(id)a3 maximumDimension:(double)a4;
+ (id)plistInExtendedAttributeNamed:(const char *)a3 flags:(unint64_t)a4 onFileDescriptor:(int)a5 error:(id *)a6;
+ (id)thumbnailsDictionaryForURL:(id)a3 error:(id *)a4;
+ (unint64_t)sizeOfAdditionsPresentOnURL:(id)a3;
+ (void)_hitAdditionsOnURL:(id)a3 size:(unint64_t)a4 completionHandler:(id)a5;
+ (void)adjustFileProtectionForThumbnail:(id)a3 fromOriginalDocument:(id)a4;
+ (void)downloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4;
+ (void)downloadOrGenerateThumbnailAtURL:(id)a3 completionHandler:(id)a4;
+ (void)fpfsDownloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4;
+ (void)noteCloudDocsDownloadedFileAtURL:(id)a3 completionHandler:(id)a4;
+ (void)preFPFSDownloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4;
+ (void)preFPFSDownloadThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4;
- (BOOL)_initWithAdditionsPresentOnURLDirectly:(id)a3 error:(id *)a4;
- (BOOL)_initWithAdditionsPresentOnURLUsingDaemon:(id)a3 error:(id *)a4;
- (BOOL)_initWithXattrsPresentOnURL:(id)a3 error:(id *)a4;
- (BOOL)shouldBeInvalidatedByThumbnailVersion:(id)a3;
- (CGImage)thumbnailWithMaximumDimension:(double)a3 contentRect:(CGRect *)a4 properties:(id *)a5;
- (QLThumbnailAddition)initWithAdditionsPresentOnURL:(id)a3 includingExtendedAttributes:(BOOL)a4 error:(id *)a5;
- (QLThumbnailVersion)thumbnailVersion;
- (id)allImageURLs;
- (id)thumbnailDataForKey:(id)a3;
- (id)thumbnailURLForKey:(id)a3;
- (id)thumbnailsDictionaryWithError:(id *)a3;
- (unint64_t)additionSize;
- (void)dealloc;
@end

@implementation QLThumbnailAddition

- (void)dealloc
{
  if (self->_additionURLSandboxToken)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = QLThumbnailAddition;
  [(QLThumbnailAddition *)&v3 dealloc];
}

- (BOOL)shouldBeInvalidatedByThumbnailVersion:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailAddition *)self thumbnailVersion];
  v6 = _log_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailAddition shouldBeInvalidatedByThumbnailVersion:];
  }

  if (v5)
  {
    v7 = [v5 shouldBeInvalidatedByThumbnailWithVersion:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)thumbnailURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailAddition *)self metadata];
  v6 = [v5 objectForKey:@"QLThumbnailMetadataFileNamesDictionaryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:v4];

    if (v7)
    {
      v8 = [(QLThumbnailAddition *)self additionURL];
      v9 = [v6 objectForKey:v4];
      v10 = v8;
      v11 = v9;
      goto LABEL_7;
    }
  }

  if ([v4 isEqualToString:*MEMORY[0x1E695DA70]])
  {
    v12 = [(QLThumbnailAddition *)self metadata];
    v8 = [v12 objectForKey:@"QLThumbnailMetadataFileNameKey"];

    if (!v8)
    {
      v13 = 0;
LABEL_8:

      if (v13)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v10 = [(QLThumbnailAddition *)self additionURL];
    v9 = v10;
    v11 = v8;
LABEL_7:
    v13 = [v10 URLByAppendingPathComponent:v11 isDirectory:0];

    goto LABEL_8;
  }

LABEL_9:
  v14 = _log_0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [QLThumbnailAddition thumbnailURLForKey:?];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)thumbnailDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_thumbnailDataDictionary objectForKey:v4];
  if (!v5)
  {
    v6 = [(QLThumbnailAddition *)self thumbnailURLForKey:v4];
    if (v6)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:1 error:0];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_initWithAdditionsPresentOnURLDirectly:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 checkResourceIsReachableAndReturnError:a4])
  {
    v7 = +[QLThumbnailAdditionCache sharedInstance];
    v17 = 0;
    v8 = [v7 thumbnailAdditionForItemAtURL:v6 error:&v17];
    v9 = v17;
    addition = self->_addition;
    self->_addition = v8;

    v11 = self->_addition;
    v12 = v11 != 0;
    if (v11)
    {
      v13 = [(GSAddition *)v11 url];
      [(QLThumbnailAddition *)self setAdditionURL:v13];

      v14 = [(GSAddition *)self->_addition userInfo];
      v15 = [v14 objectForKey:@"QLThumbnailAdditionMetadataKey"];
      [(QLThumbnailAddition *)self setMetadata:v15];
    }

    else
    {
      setErrorWrappingUnderlyingError(v9, @"QLThumbnailErrorDomain", 102, a4);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_initWithAdditionsPresentOnURLUsingDaemon:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[QLThumbnailServiceProxy sharedInstance];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke;
    v20[3] = &unk_1E836A288;
    v22 = &v23;
    v9 = v8;
    v21 = v9;
    v10 = [v7 remoteObjectProxyWithErrorHandler:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_95;
    v17[3] = &unk_1E836A2B0;
    v17[4] = self;
    v19 = &v23;
    v11 = v9;
    v18 = v11;
    [v10 thumbnailsStoreURLForURL:v6 completionBlock:v17];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v24[5];
    if (v12)
    {
      if ([v12 code])
      {
        v13 = 101;
      }

      else
      {
        v13 = 102;
      }

      setErrorWrappingUnderlyingError(v24[5], @"QLThumbnailErrorDomain", v13, a4);
    }

    else if (a4)
    {
      *a4 = 0;
    }

    v15 = [(QLThumbnailAddition *)self additionURL];
    v14 = v15 != 0;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v9)
  {
    [a4 UTF8String];
    [*(a1 + 32) setAdditionURLSandboxToken:sandbox_extension_consume()];
    [*(a1 + 32) setAdditionURL:v9];
    [*(a1 + 32) setMetadata:v10];
  }

  else
  {
    v12 = _log_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_95_cold_1();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)plistInExtendedAttributeNamed:(const char *)a3 flags:(unint64_t)a4 onFileDescriptor:(int)a5 error:(id *)a6
{
  v8 = xattr_name_with_flags(a3, a4);
  if (!v8)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a6 = v12 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = fgetxattr(a5, v8, 0, 0, 0, 0);
  v11 = v10;
  if (a6 && v10 < 0)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
LABEL_14:
    free(v9);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
    goto LABEL_14;
  }

  v13 = malloc_type_malloc(v10, 0x6F92B0F2uLL);
  v14 = fgetxattr(a5, v9, v13, v11, 0, 0);
  if (v14 < 0)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    }

    free(v13);
    goto LABEL_14;
  }

  v15 = v14;
  free(v9);
  if (v13)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v13 length:v15 freeWhenDone:1];
    v12 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:0 error:a6];

    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  return v12;
}

+ (BOOL)setPropertyList:(id)a3 forExtendedAttributeNamed:(const char *)a4 flags:(unint64_t)a5 onFileDescriptor:(int)a6 error:(id *)a7
{
  v11 = a3;
  v12 = xattr_name_with_flags(a4, a5);
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:a7];
    v15 = v14;
    if (v14)
    {
      if (!fsetxattr(a6, v13, [v14 bytes], objc_msgSend(v14, "length"), 0, 0))
      {
        v17 = 1;
        goto LABEL_13;
      }

      if (a7)
      {
        *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      }

      v16 = _log_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition setPropertyList:forExtendedAttributeNamed:flags:onFileDescriptor:error:];
      }
    }

    v17 = 0;
LABEL_13:
    free(v13);

    goto LABEL_14;
  }

  if (a7)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    *a7 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  return v17;
}

+ (BOOL)removeExtendedAttributeNamed:(const char *)a3 flags:(unint64_t)a4 onFileDescriptor:(int)a5 error:(id *)a6
{
  v8 = xattr_name_with_flags(a3, a4);
  if (v8)
  {
    v9 = v8;
    if (fremovexattr(a5, v8, 0) && *__error() != 93)
    {
      if (a6)
      {
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      }

      v10 = _log_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition removeExtendedAttributeNamed:flags:onFileDescriptor:error:];
      }
    }

    free(v9);
  }

  else if (a6)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return 0;
}

- (BOOL)_initWithXattrsPresentOnURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (QLThumbnailAdditionSimulateOneSlowIOForTesting == 1)
  {
    [QLThumbnailAddition _initWithXattrsPresentOnURL:error:];
  }

  v7 = open([v6 fileSystemRepresentation], 4);
  if ((v7 & 0x80000000) != 0)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a4 = v13 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [objc_opt_class() plistInExtendedAttributeNamed:QLThumbnailDictionaryXattrName flags:3 onFileDescriptor:v7 error:a4];
  thumbnailDataDictionary = self->_thumbnailDataDictionary;
  self->_thumbnailDataDictionary = v9;

  if (self->_thumbnailDataDictionary)
  {
    v11 = [objc_opt_class() plistInExtendedAttributeNamed:QLThumbnailMetadataXattrName flags:3 onFileDescriptor:v8 error:a4];
    metadata = self->_metadata;
    self->_metadata = v11;
  }

  close(v8);
  if (!self->_thumbnailDataDictionary)
  {
    goto LABEL_10;
  }

  v13 = self->_metadata != 0;
LABEL_11:

  return v13;
}

+ (unint64_t)sizeOfAdditionsPresentOnURL:(id)a3
{
  v4 = a3;
  v5 = xattr_name_with_flags(QLThumbnailDictionaryXattrName, 3uLL);
  if (!v5 || (v6 = v5, v7 = getxattr([v4 fileSystemRepresentation], v5, 0, 0, 0, 0), free(v6), v7 <= 0))
  {
    v8 = [[a1 alloc] initWithAdditionsPresentOnURL:v4 includingExtendedAttributes:0 error:0];
    v9 = v8;
    if (v8)
    {
      v7 = [v8 additionSize];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (QLThumbnailAddition)initWithAdditionsPresentOnURL:(id)a3 includingExtendedAttributes:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v20.receiver = self;
  v20.super_class = QLThumbnailAddition;
  v9 = [(QLThumbnailAddition *)&v20 init];
  v10 = v9;
  if (v9)
  {
    if (v6)
    {
      v19 = 0;
      v11 = [(QLThumbnailAddition *)v9 _initWithXattrsPresentOnURL:v8 error:&v19];
      v12 = v19;
      v13 = v12;
      if (v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      if ([v12 code] != 93)
      {
        if (a5)
        {
          v14 = [v13 domain];
          if ([v14 isEqualToString:*MEMORY[0x1E696A798]])
          {
            v15 = [v13 code];

            if (v15 == 2)
            {
              v16 = v13;
              *a5 = v13;
              goto LABEL_17;
            }
          }

          else
          {
          }

          setErrorWrappingUnderlyingError(v13, @"QLThumbnailErrorDomain", 102, a5);
        }

LABEL_17:

        v10 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
    }

    getpid();
    v17 = *MEMORY[0x1E69E9BD0];
    if (sandbox_check())
    {
      if ([(QLThumbnailAddition *)v10 _initWithAdditionsPresentOnURLUsingDaemon:v8 error:a5, "com.apple.revisiond"])
      {
        goto LABEL_18;
      }
    }

    else if ([(QLThumbnailAddition *)v10 _initWithAdditionsPresentOnURLDirectly:v8 error:a5, "com.apple.revisiond"])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:

  return v10;
}

- (QLThumbnailVersion)thumbnailVersion
{
  thumbnailVersion = self->_thumbnailVersion;
  if (!thumbnailVersion)
  {
    v4 = [(QLThumbnailAddition *)self metadata];
    v5 = [v4 valueForKey:@"QLThumbnailMetadataFileVersionKey.2"];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [[QLThumbnailVersion alloc] initWithDictionaryRepresentation:v5];
        v7 = self->_thumbnailVersion;
        self->_thumbnailVersion = v6;
      }
    }

    thumbnailVersion = self->_thumbnailVersion;
  }

  return thumbnailVersion;
}

- (CGImage)thumbnailWithMaximumDimension:(double)a3 contentRect:(CGRect *)a4 properties:(id *)a5
{
  v32[4] = *MEMORY[0x1E69E9840];
  v9 = [(QLThumbnailAddition *)self thumbnailDataForKey:*MEMORY[0x1E695DA70]];
  v10 = v9;
  if (v9)
  {
    v11 = CGImageSourceCreateWithData(v9, 0);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(QLThumbnailAddition *)self metadata];
  v13 = [v12 valueForKey:@"QLThumbnailMetadataMaximumDimensionKey"];
  [v13 doubleValue];
  v15 = v14;

  if (!v11)
  {
    goto LABEL_17;
  }

  v16 = 1024.0;
  if (v15 != 0.0)
  {
    v16 = v15;
  }

  if (v16 <= a3)
  {
    v29 = *MEMORY[0x1E696E0B8];
    v30 = MEMORY[0x1E695E118];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, v20);
  }

  else
  {
    v17 = MEMORY[0x1E695E118];
    v18 = *MEMORY[0x1E696DFE8];
    v31[0] = *MEMORY[0x1E696E000];
    v31[1] = v18;
    v32[0] = MEMORY[0x1E695E118];
    v32[1] = MEMORY[0x1E695E118];
    v31[2] = *MEMORY[0x1E696E100];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v31[3] = *MEMORY[0x1E696E0B8];
    v32[2] = v19;
    v32[3] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];

    ImageAtIndex = CGImageSourceCreateThumbnailAtIndex(v11, 0, v20);
  }

  v22 = ImageAtIndex;

  CFRelease(v11);
  if (v22)
  {
    if (a5)
    {
      v23 = [(QLThumbnailAddition *)self metadata];
      *a5 = [v23 valueForKey:@"QLThumbnailMetadataQLPropertiesKey"];
    }

    v24 = [(QLThumbnailAddition *)self metadata];
    v25 = [v24 valueForKey:@"QLThumbnailMetadataContentRectKey"];

    if (a4 && v25)
    {
      *a4 = NSRectFromString(v25);
    }

    v26 = CFAutorelease(v22);
  }

  else
  {
LABEL_17:
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)additionCreationInfo
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A0778];
  v7[0] = *MEMORY[0x1E69A0770];
  v7[1] = v2;
  v8[0] = @"com.apple.thumbnails";
  v8[1] = &unk_1F49E74C0;
  v7[2] = *MEMORY[0x1E69A0768];
  v3 = [MEMORY[0x1E69A07B0] makeNameForUser:getuid() name:@"QLThumbnailAdditionName"];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)_hitAdditionsOnURL:(id)a3 size:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v22 = 0;
  v9 = [QLThumbnailServiceProxy sharedInstanceWithError:&v22];
  v10 = v22;
  if (v9)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke;
    v18[3] = &unk_1E836A2D8;
    v11 = v8;
    v19 = v11;
    v12 = [v9 remoteObjectProxyWithErrorHandler:v18];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104;
    v13[3] = &unk_1E836A350;
    v15 = v11;
    v16 = v20;
    v17 = a4;
    v14 = v7;
    [v12 askThumbnailAdditionIndex:v13];

    _Block_object_dispose(v20, 8);
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [*(a1 + 32) path];
    v6 = [v4 fileURLWithPath:v5];

    v24 = 0;
    v7 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v6 extensionClass:"com.apple.quicklook.readonly" error:&v24];
    v8 = v24;
    if (v8)
    {
      v9 = _log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailServiceProxy touchOrAddThumbnailAddition:forURL:];
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_106;
    v22[3] = &unk_1E836A2D8;
    v23 = *(a1 + 40);
    v10 = [v3 remoteObjectProxyWithErrorHandler:v22];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_107;
    v17[3] = &unk_1E836A328;
    v18 = v10;
    v19 = v7;
    v21 = *(a1 + 56);
    v16 = *(a1 + 40);
    v11 = v16;
    v20 = v16;
    v12 = v7;
    v13 = v10;
    [v13 hasThumbnailForURLWrapper:v12 updateLastHitDate:1 andSize:v21 completion:v17];
  }

  else
  {
    v14 = _log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104_cold_2();
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }
  }
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_106_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_107(void *a1, char a2)
{
  if (a2)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v4 = a1[6];
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_2;
    v11[3] = &unk_1E836A300;
    v10 = *(a1 + 3);
    v9 = v10;
    v12 = v10;
    [v6 addThumbnailForURLWrapper:v7 size:v8 completion:v11];
  }
}

uint64_t __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

+ (BOOL)storeThumbnailDataDictionary:(id)a3 metadata:(id)a4 asExtendedAttributeOnURL:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = open([a5 fileSystemRepresentation], 4);
  if ((v12 & 0x80000000) != 0)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a6 = v14 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  if (([a1 setPropertyList:v10 forExtendedAttributeNamed:QLThumbnailDictionaryXattrName flags:3 onFileDescriptor:v12 error:a6] & 1) == 0)
  {
    close(v13);
    goto LABEL_7;
  }

  v14 = [a1 setPropertyList:v11 forExtendedAttributeNamed:QLThumbnailMetadataXattrName flags:3 onFileDescriptor:v13 error:a6];
  close(v13);
LABEL_8:

  return v14;
}

+ (BOOL)removeThumbnailsStoredInExtendedAttributesOnURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = open([a3 fileSystemRepresentation], 4);
  if ((v8 & 0x80000000) != 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    }
  }

  else
  {
    v9 = v8;
    if ([a1 removeExtendedAttributeNamed:QLThumbnailDictionaryXattrName flags:3 onFileDescriptor:v8 error:a4])
    {
      v10 = [a1 removeExtendedAttributeNamed:QLThumbnailMetadataXattrName flags:3 onFileDescriptor:v9 error:a4];
      close(v9);
      return v10;
    }

    close(v9);
  }

  return 0;
}

+ (id)imageNameFor1024ThumbnailInMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"QLThumbnailMetadataFileNamesDictionaryKey"];
  v5 = [v4 objectForKey:*MEMORY[0x1E695DA70]];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v3 objectForKey:@"QLThumbnailMetadataFileNameKey"];
  }

  v7 = v6;

  return v7;
}

+ (id)imageNameForThumbnailInImageSource:(CGImageSource *)a3
{
  Type = CGImageSourceGetType(a3);
  if (Type)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:Type];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 preferredFilenameExtension];
      if (v6)
      {
        v7 = [@"thumbnail" stringByAppendingPathExtension:v6];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)imageNameFor1024ThumbnailAtURL:(id)a3 metadataDictionary:(id)a4
{
  v6 = a3;
  v7 = [a1 imageNameFor1024ThumbnailInMetadataDictionary:a4];
  if (!v7)
  {
    v8 = CGImageSourceCreateWithURL(v6, 0);
    if (v8)
    {
      v9 = v8;
      v7 = [a1 imageNameForThumbnailInImageSource:v8];
      CFRelease(v9);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = v7;

  return v10;
}

+ (id)imageNameFor1024ThumbnailData:(id)a3 metadataDictionary:(id)a4
{
  v6 = a3;
  v7 = [a1 imageNameFor1024ThumbnailInMetadataDictionary:a4];
  if (!v7)
  {
    v8 = CGImageSourceCreateWithData(v6, 0);
    if (v8)
    {
      v9 = v8;
      v7 = [a1 imageNameForThumbnailInImageSource:v8];
      CFRelease(v9);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = v7;

  return v10;
}

+ (BOOL)associateThumbnailImagesDictionary:(id)a3 serializedQuickLookMetadata:(id)a4 withImmutableDocument:(BOOL)a5 atURL:(id)a6 error:(id *)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = [v10 allValues];
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v66;
    v18 = *MEMORY[0x1E695DB50];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        v64 = 0;
        if ([v20 getResourceValue:&v64 forKey:v18 error:0])
        {
          v16 += [v64 unsignedIntegerValue];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v21 = *MEMORY[0x1E695DA70];
  v22 = [v10 objectForKey:*MEMORY[0x1E695DA70]];
  v23 = v22;
  if (v22)
  {
    v63 = 0;
    v24 = [v22 checkResourceIsReachableAndReturnError:&v63];
    v25 = v63;
    v26 = v25;
    if ((v24 & 1) == 0)
    {
      v30 = _log_0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:];
      }

      if (a7)
      {
        v31 = v26;
        v29 = 0;
        *a7 = v26;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_51;
    }

    v58 = v25;
    if (v11)
    {
      v27 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:0];
    }

    else
    {
      v27 = 0;
    }

    v32 = [a1 imageNameFor1024ThumbnailAtURL:v23 metadataDictionary:v27];
    v33 = v32;
    if (!v32)
    {
      v37 = _log_0();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:];
      }

      if (a7)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        *a7 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      v43 = v27;
      goto LABEL_50;
    }

    v55 = v32;
    v56 = v11;
    v71 = v21;
    v72 = v32;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v35 = [[QLThumbnailVersion alloc] initWithFileURL:v12 automaticallyGenerated:0];
    v36 = [(QLThumbnailVersion *)v35 dictionaryRepresentation];
    if (v27)
    {
      v57 = [v27 mutableCopy];
      [v57 setObject:v34 forKeyedSubscript:@"QLThumbnailMetadataFileNamesDictionaryKey"];
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v69 = @"QLThumbnailMetadataFileNamesDictionaryKey";
      v70 = v34;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v57 = [v38 mutableCopy];

      if (!v36)
      {
LABEL_38:

        [a1 _hitAdditionsOnURL:v12 size:v16 completionHandler:0];
        if (a5)
        {
          v40 = [MEMORY[0x1E695DF90] dictionary];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __120__QLThumbnailAddition_associateThumbnailImagesDictionary_serializedQuickLookMetadata_withImmutableDocument_atURL_error___block_invoke;
          v61[3] = &unk_1E836A378;
          v62 = v40;
          v41 = v40;
          [v10 enumerateKeysAndObjectsUsingBlock:v61];
          v42 = a1;
          v43 = v57;
          v29 = [v42 storeThumbnailDataDictionary:v41 metadata:v57 asExtendedAttributeOnURL:v12 error:a7];
          [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7];

          v11 = v56;
        }

        else
        {
          v44 = [MEMORY[0x1E69A07C0] manager];
          v45 = [v44 permanentStorageForItemAtURL:v12 allocateIfNone:1 error:a7];

          v11 = v56;
          if (v45)
          {
            v46 = [v45 stagingURLforCreatingAdditionWithError:a7];
            v47 = v46;
            if (v46)
            {
              v48 = [v46 URLByAppendingPathComponent:@"thumbnail.qlthumbnail"];
              v49 = [v48 URLByAppendingPathComponent:v55 isDirectory:0];
              v50 = [MEMORY[0x1E696AC08] defaultManager];
              [v50 createDirectoryAtURL:v48 withIntermediateDirectories:0 attributes:0 error:0];

              v11 = v56;
              v51 = [MEMORY[0x1E696AC08] defaultManager];
              [v51 moveItemAtURL:v23 toURL:v49 error:0];

              [a1 adjustFileProtectionForThumbnail:v49 fromOriginalDocument:v12];
              v52 = a1;
              v43 = v57;
              v29 = [v52 makeAdditionFromStagingURL:v48 metadata:v57 inStorage:v45 error:a7];
            }

            else
            {
              v29 = 0;
              v43 = v57;
            }
          }

          else
          {
            v29 = 0;
            v43 = v57;
          }
        }

        v33 = v55;
LABEL_50:

        v26 = v58;
LABEL_51:

        goto LABEL_52;
      }
    }

    v39 = [v57 objectForKeyedSubscript:@"QLThumbnailMetadataFileVersionKey.2"];

    if (!v39)
    {
      [v57 setObject:v36 forKeyedSubscript:@"QLThumbnailMetadataFileVersionKey.2"];
    }

    goto LABEL_38;
  }

  v28 = _log_0();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    +[QLThumbnailAddition associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:];
  }

  if (a7)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *a7 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_52:

  v53 = *MEMORY[0x1E69E9840];
  return v29;
}

void __120__QLThumbnailAddition_associateThumbnailImagesDictionary_serializedQuickLookMetadata_withImmutableDocument_atURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v5 options:1 error:0];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKey:v7];
    }
  }
}

void __120__QLThumbnailAddition_associateThumbnailImagesDictionary_serializedQuickLookMetadata_withImmutableDocument_atURL_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    [v3 removeItemAtURL:v4 error:0];
  }
}

+ (void)adjustFileProtectionForThumbnail:(id)a3 fromOriginalDocument:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v19 = 0;
    v8 = *MEMORY[0x1E695DAF0];
    v18 = 0;
    v9 = [v6 getResourceValue:&v19 forKey:v8 error:&v18];
    v10 = v19;
    v11 = v18;
    v12 = v11;
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = _log_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition adjustFileProtectionForThumbnail:fromOriginalDocument:];
      }

      v16 = v12;
    }

    else
    {
      v17 = v11;
      v15 = [v5 setResourceValue:v10 forKey:v8 error:&v17];
      v16 = v17;

      if (v15)
      {
        goto LABEL_14;
      }

      v14 = _log_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition adjustFileProtectionForThumbnail:fromOriginalDocument:];
      }
    }

LABEL_14:
  }
}

+ (BOOL)hasThumbnailOnImmutableDocumentAtURL:(id)a3
{
  v3 = [a3 fileSystemRepresentation];
  v4 = xattr_name_with_flags(QLThumbnailDictionaryXattrName, 3uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = getxattr(v3, v4, 0, 0, 0, 0) >= 0;
  free(v5);
  return v6;
}

+ (BOOL)makeAdditionFromStagingURL:(id)a3 metadata:(id)a4 inStorage:(id)a5 error:(id *)a6
{
  v45[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_opt_class() additionCreationInfo];
  v13 = [v12 mutableCopy];

  if (v10)
  {
    v44 = @"QLThumbnailAdditionMetadataKey";
    v45[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [v13 setObject:v14 forKey:*MEMORY[0x1E69A0790]];
  }

  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__3;
  v40[3] = __Block_byref_object_dispose__3;
  v41 = 0;
  obj = 0;
  v15 = [v11 prepareAdditionCreationWithItemAtURL:v9 byMoving:1 creationInfo:v13 error:&obj];
  objc_storeStrong(&v41, obj);
  if (v15)
  {
    v16 = [v11 documentURL];
    v37 = 0;
    v17 = [v16 getResourceValue:&v37 forKey:*MEMORY[0x1E695DAB8] error:0];
    v18 = v37;

    if ((v17 & 1) == 0)
    {

      v18 = 0;
    }

    v19 = dispatch_semaphore_create(0);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__QLThumbnailAddition_makeAdditionFromStagingURL_metadata_inStorage_error___block_invoke;
    v28[3] = &unk_1E836A3C0;
    v31 = &v33;
    v20 = v18;
    v29 = v20;
    v32 = &v39;
    v21 = v19;
    v30 = v21;
    [v11 createAdditionStagedAtURL:v15 creationInfo:v13 completionHandler:v28];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    if (v34[3])
    {
      v22 = _log_0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v11;
        _os_log_impl(&dword_1CA1E7000, v22, OS_LOG_TYPE_INFO, "Saved addition in storage %@", buf, 0xCu);
      }
    }

    else
    {
      v25 = _log_0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [QLThumbnailAddition makeAdditionFromStagingURL:v9 metadata:v40 inStorage:? error:?];
      }

      setErrorWrappingUnderlyingError(*(v40[0] + 40), @"QLThumbnailErrorDomain", 101, a6);
    }

    v24 = *(v34 + 24);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v23 = _log_0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [QLThumbnailAddition makeAdditionFromStagingURL:v9 metadata:v40 inStorage:? error:?];
    }

    setErrorWrappingUnderlyingError(*(v40[0] + 40), @"QLThumbnailErrorDomain", 101, a6);
    v24 = 0;
  }

  _Block_object_dispose(&v39, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

void __75__QLThumbnailAddition_makeAdditionFromStagingURL_metadata_inStorage_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = v9 != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_6;
    }

    v6 = +[QLThumbnailAdditionCache sharedInstance];
    [v6 cacheAddition:v9 forDocumentID:*(a1 + 32)];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = v5;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)imageContainsAlphaForOtherImages:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = CGBitmapContextCreate(0, Width, Height, 8uLL, Width, DeviceGray, 7u);
  CFRelease(DeviceGray);
  if (!v7)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(v7);
  if (CGBitmapContextGetBitsPerPixel(v7) != 8)
  {
    +[QLThumbnailAddition imageContainsAlphaForOtherImages:];
  }

  v15.size.width = Width;
  v15.size.height = Height;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  CGContextDrawImage(v7, v15, a3);
  Data = CGBitmapContextGetData(v7);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v11 = &Data[Width - 8];
      v12 = Data;
      if (Data >= v11)
      {
        goto LABEL_11;
      }

      do
      {
        if (*v12 != -1)
        {
LABEL_14:
          v13 = 1;
          goto LABEL_15;
        }

        v12 += 8;
      }

      while (v12 < v11);
LABEL_11:
      while (v12 < &Data[Width])
      {
        if (*v12 != 255)
        {
          goto LABEL_14;
        }

        ++v12;
      }

      Data += BytesPerRow;
    }
  }

  v13 = 0;
LABEL_15:
  CGContextRelease(v7);
  return v13;
}

+ (BOOL)imageContainsAlpha:(CGImage *)a3
{
  if (CGImageGetBitsPerComponent(a3) != 8)
  {
    goto LABEL_8;
  }

  v5 = CGImageGetBitmapInfo(a3) & 0x1F;
  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  v7 = 0;
  result = 0;
  v9 = BitsPerPixel >> 3;
  if (v5 > 3)
  {
    if ((v5 - 5) < 2)
    {
      return result;
    }

    if (v5 == 4)
    {
      goto LABEL_13;
    }

LABEL_8:

    return [a1 imageContainsAlphaForOtherImages:a3];
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_13;
    }
  }

  else if (!v5)
  {
    return result;
  }

  v7 = v9 - 1;
LABEL_13:
  DataProvider = CGImageGetDataProvider(a3);
  v11 = CGDataProviderCopyData(DataProvider);
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  BytesPerRow = CGImageGetBytesPerRow(a3);
  v15 = [(__CFData *)v11 bytes];
  if (Height)
  {
    v16 = 0;
    v17 = Width * v9;
    while (v17 < 1)
    {
LABEL_19:
      v15 += BytesPerRow;
      if (++v16 == Height)
      {
        goto LABEL_20;
      }
    }

    v18 = v15;
    while (*(v18 + v7) == 255)
    {
      v18 += v9;
      if (v18 >= v15 + v17)
      {
        goto LABEL_19;
      }
    }

    CFRelease(v11);
    return 1;
  }

  else
  {
LABEL_20:
    CFRelease(v11);
    return 0;
  }
}

+ (id)metadataForGeneratedThumbnailForURL:(id)a3 maximumDimension:(double)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [[QLThumbnailVersion alloc] initWithFileURL:v6 automaticallyGenerated:1];

  v9 = [(QLThumbnailVersion *)v8 dictionaryRepresentation];
  [v7 setValue:v9 forKey:@"QLThumbnailMetadataFileVersionKey.2"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v7 setObject:v10 forKey:@"QLThumbnailMetadataMaximumDimensionKey"];

  return v7;
}

+ (BOOL)associateImage:(CGImage *)a3 metadata:(id)a4 automaticallyGenerated:(BOOL)a5 withURL:(id)a6 error:(id *)a7
{
  v9 = a5;
  v59[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = _log_0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[QLThumbnailAddition associateImage:metadata:automaticallyGenerated:withURL:error:];
  }

  v15 = [a1 imageContainsAlpha:a3];
  v16 = [MEMORY[0x1E69A07C0] manager];
  v57 = 0;
  v17 = [v16 permanentStorageForItemAtURL:v13 allocateIfNone:1 error:&v57];
  v18 = v57;

  if (v17)
  {
    v56 = v18;
    v19 = [v17 stagingURLforCreatingAdditionWithError:&v56];
    v53 = v56;

    v54 = v19;
    if (v19)
    {
      v50 = v9;
      v51 = a7;
      Width = CGImageGetWidth(a3);
      Height = CGImageGetHeight(a3);
      if (Width <= Height)
      {
        v22 = Height;
      }

      else
      {
        v22 = Width;
      }

      v23 = v22;
      if (v15)
      {
        v24 = @"jp2";
      }

      else
      {
        v24 = @"jpg";
      }

      v25 = [@"thumbnail" stringByAppendingPathExtension:v24];
      v26 = [MEMORY[0x1E695DF90] dictionary];
      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
      [v26 setObject:v27 forKey:@"QLThumbnailMetadataMaximumDimensionKey"];

      v58 = *MEMORY[0x1E695DA70];
      v59[0] = v25;
      v52 = v25;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [v26 setObject:v28 forKey:@"QLThumbnailMetadataFileNamesDictionaryKey"];

      v29 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      [v26 setObject:v29 forKey:@"QLThumbnailMetadataVersionKey"];

      if (v12)
      {
        [v26 addEntriesFromDictionary:v12];
      }

      v30 = [v26 valueForKey:@"QLThumbnailMetadataFileVersionKey.2"];

      if (!v30)
      {
        v31 = [[QLThumbnailVersion alloc] initWithFileURL:v13 automaticallyGenerated:v50];
        v32 = _log_0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          +[QLThumbnailAddition associateImage:metadata:automaticallyGenerated:withURL:error:];
        }

        v33 = [(QLThumbnailVersion *)v31 dictionaryRepresentation];
        [v26 setValue:v33 forKey:@"QLThumbnailMetadataFileVersionKey.2"];
      }

      v34 = [v54 URLByAppendingPathComponent:@"thumbnail.qlthumbnail"];
      v35 = [MEMORY[0x1E696AC08] defaultManager];
      [v35 createDirectoryAtURL:v34 withIntermediateDirectories:0 attributes:0 error:0];

      v36 = [v34 URLByAppendingPathComponent:v52 isDirectory:0];
      v37 = v36;
      if (v15)
      {
        v38 = CGImageDestinationCreateWithURL(v36, *MEMORY[0x1E6963810], 1uLL, 0);
      }

      else
      {
        v42 = [*MEMORY[0x1E6982E58] identifier];
        v38 = CGImageDestinationCreateWithURL(v37, v42, 1uLL, 0);
      }

      v43 = [MEMORY[0x1E695DF20] dictionaryWithObject:&unk_1F49E74D8 forKey:*MEMORY[0x1E696D338]];
      CGImageDestinationSetProperties(v38, v43);
      CGImageDestinationAddImage(v38, a3, 0);
      CGImageDestinationFinalize(v38);
      CFRelease(v38);
      [a1 adjustFileProtectionForThumbnail:v37 fromOriginalDocument:v13];
      v55 = 0;
      v44 = [(__CFURL *)v37 getResourceValue:&v55 forKey:*MEMORY[0x1E695DB50] error:0];
      v45 = v55;
      v46 = v45;
      v47 = 0;
      if (v44)
      {
        v47 = [v45 unsignedIntegerValue];
      }

      [a1 _hitAdditionsOnURL:v13 size:v47 completionHandler:0];
      v40 = [a1 makeAdditionFromStagingURL:v34 metadata:v26 inStorage:v17 error:v51];

      v18 = v53;
    }

    else
    {
      v41 = _log_0();
      v18 = v53;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        +[QLThumbnailAddition associateImage:metadata:automaticallyGenerated:withURL:error:];
      }

      setErrorWrappingUnderlyingError(v53, @"QLThumbnailErrorDomain", 101, a7);
      v40 = 0;
    }
  }

  else
  {
    v39 = _log_0();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      +[QLThumbnailAddition associateImage:metadata:automaticallyGenerated:withURL:error:];
    }

    setErrorWrappingUnderlyingError(v18, @"QLThumbnailErrorDomain", 101, a7);
    v40 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v40;
}

+ (BOOL)_removeAdditionsOnURLDirectly:(id)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A07C0] manager];
  v32 = 0;
  v7 = [v6 permanentStorageForItemAtURL:v5 allocateIfNone:0 error:&v32];
  v8 = v32;
  v9 = v8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  if (v7)
  {
    v10 = dispatch_semaphore_create(0);
    v33[0] = @"com.apple.thumbnails";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__QLThumbnailAddition__removeAdditionsOnURLDirectly_error___block_invoke;
    v17[3] = &unk_1E836A3E8;
    v20 = &v28;
    v21 = &v22;
    v18 = v5;
    v12 = v10;
    v19 = v12;
    [v7 removeAllAdditionsForNamespaces:v11 completionHandler:v17];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      v13 = v23[5];
      if (v13)
      {
        *a4 = v13;
      }
    }
  }

  else
  {
    v31 = 0;
    setErrorWrappingUnderlyingError(v8, *MEMORY[0x1E696A250], 4, a4);
  }

  v14 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void __59__QLThumbnailAddition__removeAdditionsOnURLDirectly_error___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MEMORY[0x1E696AA08];
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v13 = *v4;
    v14[0] = a2;
    v5 = MEMORY[0x1E695DF20];
    v6 = a2;
    v7 = [v5 dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = 0;
    v7 = +[QLThumbnailAdditionCache sharedInstance];
    [v7 purgeCachedAdditionForItemAtURL:*(a1 + 32)];
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_removeAdditionsOnURLUsingDaemon:(id)a3 error:(id *)a4
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v6 = +[QLThumbnailServiceProxy sharedInstance];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__QLThumbnailAddition__removeAdditionsOnURLUsingDaemon_error___block_invoke;
    v11[3] = &unk_1E836A410;
    v13 = &v21;
    v14 = &v15;
    v8 = v7;
    v12 = v8;
    [v6 removeThumbnailAdditionsOnURL:v5 completionBlock:v11];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v22 + 24))
    {
      v9 = 1;
    }

    else
    {
      setErrorWrappingUnderlyingError(v16[5], *MEMORY[0x1E696A250], 4, a4);
      v9 = *(v22 + 24) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __62__QLThumbnailAddition__removeAdditionsOnURLUsingDaemon_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v5 = _log_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_95_cold_1();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)_removedAdditionsOnURLUsingDaemon:(id)a3
{
  v3 = a3;
  v4 = +[QLThumbnailServiceProxy sharedInstance];
  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__QLThumbnailAddition__removedAdditionsOnURLUsingDaemon___block_invoke;
    v15[3] = &unk_1E836A050;
    v6 = v5;
    v16 = v6;
    v7 = [v4 remoteObjectProxyWithErrorHandler:v15];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__QLThumbnailAddition__removedAdditionsOnURLUsingDaemon___block_invoke_2;
    v11[3] = &unk_1E836A460;
    v8 = v6;
    v12 = v8;
    v13 = v3;
    v14 = &v17;
    [v7 askThumbnailAdditionIndex:v11];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __57__QLThumbnailAddition__removedAdditionsOnURLUsingDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__QLThumbnailAddition__removedAdditionsOnURLUsingDaemon___block_invoke_125;
    v10[3] = &unk_1E836A050;
    v11 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__QLThumbnailAddition__removedAdditionsOnURLUsingDaemon___block_invoke_2_126;
    v7[3] = &unk_1E836A438;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 32);
    [v4 removeThumbnailForURL:v5 completion:v7];
  }

  else
  {
    v6 = _log_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

+ (BOOL)removeAdditionsOnURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  getpid();
  v7 = *MEMORY[0x1E69E9BD0];
  v8 = sandbox_check();
  v9 = _log_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (!v8)
  {
    if (v10)
    {
      +[QLThumbnailAddition removeAdditionsOnURL:error:];
    }

    if ([a1 _removeAdditionsOnURLDirectly:v6 error:{a4, "com.apple.revisiond"}])
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (v10)
  {
    +[QLThumbnailAddition removeAdditionsOnURL:error:];
  }

  if (![a1 _removeAdditionsOnURLUsingDaemon:v6 error:{a4, "com.apple.revisiond"}])
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = [a1 _removedAdditionsOnURL:v6];
LABEL_10:

  return v11;
}

- (id)thumbnailsDictionaryWithError:(id *)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = QLTImageClassWithError(a3);
  if (v4)
  {
    v5 = [(QLThumbnailAddition *)self thumbnailWithMaximumDimension:0 contentRect:0 properties:1024.0];
    if (v5)
    {
      v9 = *MEMORY[0x1E695DA70];
      v6 = [v4 imageWithCGImage:v5];
      v10[0] = v6;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)thumbnailsDictionaryForURL:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v7 = [[a1 alloc] initWithAdditionsPresentOnURL:v6 error:&v27];
  v8 = v27;
  v9 = v8;
  if (!v7)
  {
    v13 = [v8 domain];
    if ([v13 isEqualToString:@"QLThumbnailErrorDomain"])
    {
      v14 = [v9 code];

      if (v14 == 102)
      {
        v15 = _log_0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v6;
          _os_log_impl(&dword_1CA1E7000, v15, OS_LOG_TYPE_INFO, "No thumbnail present for %@, pondering generation", buf, 0xCu);
        }

        if (thumbnailsDictionaryForURL_error__once != -1)
        {
          +[QLThumbnailAddition thumbnailsDictionaryForURL:error:];
        }

        v16 = thumbnailsDictionaryForURL_error__sDownloadingQueue;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2;
        v24[3] = &unk_1E836A488;
        v25 = v6;
        v26 = a1;
        dispatch_async(v16, v24);

LABEL_19:
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v17 = _log_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[QLThumbnailAddition thumbnailsDictionaryForURL:error:];
    }

    if (a4)
    {
      v18 = v9;
      v12 = 0;
      *a4 = v9;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v10 = _log_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_1CA1E7000, v10, OS_LOG_TYPE_INFO, "Retrieved thumbnail addition for %@", buf, 0xCu);
  }

  if (thumbnailsDictionaryForURL_error__once_130 != -1)
  {
    +[QLThumbnailAddition thumbnailsDictionaryForURL:error:];
  }

  v11 = thumbnailsDictionaryForURL_error__hitAdditionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2_135;
  block[3] = &unk_1E836A488;
  v23 = a1;
  v22 = v6;
  dispatch_async(v11, block);

  v12 = [v7 thumbnailsDictionaryWithError:a4];
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.quicklook.thumbnailretrieval", v0);
  v2 = thumbnailsDictionaryForURL_error__sDownloadingQueue;
  thumbnailsDictionaryForURL_error__sDownloadingQueue = v1;
}

void __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A07C0] manager];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 mayPermanentStorageBeSupportedAtURL:v3 error:&v9];
  v5 = v9;
  if (v4)
  {

LABEL_4:
    v7 = *(a1 + 40);
    [objc_opt_class() downloadOrGenerateThumbnailAtURL:*(a1 + 32) completionHandler:0];
    goto LABEL_8;
  }

  v6 = [*(a1 + 40) shouldUseXattrsToStoreThumbnailsOnURL:*(a1 + 32)];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = _log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2_cold_1();
  }

LABEL_8:
}

void __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_131()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.quicklook.thumbnails-maintenance", v2);
  v1 = thumbnailsDictionaryForURL_error__hitAdditionsQueue;
  thumbnailsDictionaryForURL_error__hitAdditionsQueue = v0;
}

uint64_t __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2_135(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);

  return [v3 _hitAdditionsOnURL:v4 size:0 completionHandler:0];
}

+ (void)downloadOrGenerateThumbnailAtURL:(id)a3 completionHandler:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 startAccessingSecurityScopedResource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__QLThumbnailAddition_downloadOrGenerateThumbnailAtURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E836A4B0;
  v29 = v8;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = _Block_copy(aBlock);
  if (_CFURLIsItemPromiseAtURL())
  {
    v12 = _log_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[QLThumbnailAddition downloadOrGenerateThumbnailAtURL:completionHandler:];
    }

    v13 = _CFURLCopyLogicalURLOfPromiseAtURL();
    if (v13)
    {
LABEL_5:
      [a1 downloadOrGenerateThumbnailAtTaggedURL:v13 completionHandler:v11];
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    v14 = _CFURLPromiseCopyPhysicalURL();
    v15 = _log_0();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (!v14)
    {
      if (v16)
      {
        +[QLThumbnailAddition downloadOrGenerateThumbnailAtURL:completionHandler:];
      }

      v13 = objc_alloc_init(MEMORY[0x1E696ABF8]);
      v17 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v9 options:4];
      v30[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __74__QLThumbnailAddition_downloadOrGenerateThumbnailAtURL_completionHandler___block_invoke_139;
      v22[3] = &unk_1E836A4D8;
      v25 = a1;
      v23 = v17;
      v24 = v11;
      v20 = v17;
      [v13 coordinateAccessWithIntents:v18 queue:v19 byAccessor:v22];

      goto LABEL_15;
    }

    if (v16)
    {
      +[QLThumbnailAddition downloadOrGenerateThumbnailAtURL:completionHandler:];
    }

    v13 = v9;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  if (v11)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:0];
    (*(v11 + 2))(v11, v13);
    goto LABEL_15;
  }

LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __74__QLThumbnailAddition_downloadOrGenerateThumbnailAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x1EEE66BB8]();
}

void __74__QLThumbnailAddition_downloadOrGenerateThumbnailAtURL_completionHandler___block_invoke_139(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) URL];
  [v2 downloadOrGenerateThumbnailAtTaggedURL:v3 completionHandler:*(a1 + 40)];
}

+ (void)downloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (_FPIsCloudDocsWithFPFSEnabled())
  {
    [a1 fpfsDownloadOrGenerateThumbnailAtTaggedURL:v7 completionHandler:v6];
  }

  else
  {
    [a1 preFPFSDownloadOrGenerateThumbnailAtTaggedURL:v7 completionHandler:v6];
  }
}

+ (void)preFPFSDownloadThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = *MEMORY[0x1E695DB78];
  v36[0] = *MEMORY[0x1E695DBD8];
  v7 = v36[0];
  v36[1] = v8;
  v37 = *MEMORY[0x1E695DBA0];
  v9 = v37;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v30 = 0;
  v11 = [v5 promisedItemResourceValuesForKeys:v10 error:&v30];
  v12 = v30;

  v13 = [v11 objectForKeyedSubscript:v7];
  LOBYTE(v7) = [v13 BOOLValue];

  v14 = [v11 objectForKeyedSubscript:v9];
  LODWORD(v9) = [v14 BOOLValue];

  v15 = [v11 objectForKeyedSubscript:v8];
  LODWORD(v14) = [v15 BOOLValue];

  v16 = _log_0();
  v17 = v16;
  if (((v11 != 0) & v7 & (v14 ^ 1 | v9)) != 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1CA1E7000, v17, OS_LOG_TYPE_INFO, "Downloading thumbnail for %@", &buf, 0xCu);
    }

    v35 = v5;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77__QLThumbnailAddition_preFPFSDownloadThumbnailAtTaggedURL_completionHandler___block_invoke;
    v27[3] = &unk_1E836A500;
    v28 = v5;
    v29 = v6;
    v19 = v18;
    v20 = v27;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v21 = getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr;
    v34 = getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr;
    if (!getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v39 = __getBRStartDownloadForItemsWithOptionsSymbolLoc_block_invoke;
      v40 = &unk_1E8369C70;
      v41 = &v31;
      v22 = CloudDocsLibrary();
      v23 = dlsym(v22, "BRStartDownloadForItemsWithOptions");
      *(v41[1] + 24) = v23;
      getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr = *(v41[1] + 24);
      v21 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (!v21)
    {
      +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
      __break(1u);
    }

    v21(v19, 2, v20);
  }

  else
  {
    v24 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v24)
      {
        +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
      }

      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:102 userInfo:0];
      (*(v6 + 2))(v6, v25);
    }

    else
    {
      if (v24)
      {
        +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
      }

      (*(v6 + 2))(v6, v12);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __77__QLThumbnailAddition_preFPFSDownloadThumbnailAtTaggedURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _log_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__QLThumbnailAddition_preFPFSDownloadThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(v3, a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)preFPFSDownloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:v6 size:4 scale:1024.0 representationTypes:1024.0, 1.0];
  v20 = 0;
  v9 = [MEMORY[0x1E695DFF8] _QLCreateTemporaryReplacementURLForOriginalFileAtURL:v6 withExtension:@"jpg" temporaryDirectoryURL:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = +[QLThumbnailGenerator sharedGenerator];
    v12 = *MEMORY[0x1E6982E58];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__QLThumbnailAddition_preFPFSDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke;
    v14[3] = &unk_1E836A528;
    v15 = v6;
    v16 = v10;
    v19 = a1;
    v18 = v7;
    v17 = v9;
    [v11 saveBestRepresentationForRequest:v8 toFileAtURL:v17 asContentType:v12 allowingThumbnailDownloads:0 completionHandler:v14];

    v13 = v15;
LABEL_5:

    goto LABEL_6;
  }

  if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:0];
    (*(v7 + 2))(v7, v13);
    goto LABEL_5;
  }

LABEL_6:
}

void __87__QLThumbnailAddition_preFPFSDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v7 = (a1 + 32);
    v6 = *(a1 + 32);
    v8 = _CFURLPromiseCopyPhysicalURL();
    v9 = v8;
    if (!v8)
    {
      v9 = *v7;
    }

    v10 = v9;

    v11 = *(a1 + 48);
    v23 = *MEMORY[0x1E695DA70];
    v24 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = 0;
    v13 = [QLThumbnailAddition associateThumbnailImagesDictionary:v12 serializedQuickLookMetadata:0 withDocumentAtURL:v10 error:&v22];
    v14 = v22;

    if (v13)
    {
      [*(a1 + 32) removeCachedResourceValueForKey:*MEMORY[0x1E695DC50]];
      [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
      v15 = _log_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *v7;
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_1CA1E7000, v15, OS_LOG_TYPE_INFO, "downloadOrGenerateThumbnailAtTaggedURL associated thumbnail with %@", buf, 0xCu);
      }

      v17 = *(a1 + 56);
      if (!v17)
      {
        goto LABEL_17;
      }

      v18 = *(v17 + 16);
    }

    else
    {
      v19 = _log_0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __87__QLThumbnailAddition_preFPFSDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1((a1 + 32));
      }

      [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
      v20 = *(a1 + 56);
      if (!v20)
      {
        goto LABEL_17;
      }

      v18 = *(v20 + 16);
    }

    v18();
LABEL_17:

    goto LABEL_18;
  }

  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_INFO, "Could not save thumbnail for %@: %@", buf, 0x16u);
  }

  [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
  [*(a1 + 64) preFPFSDownloadThumbnailAtTaggedURL:*(a1 + 32) completionHandler:*(a1 + 56)];
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)fpfsDownloadOrGenerateThumbnailAtTaggedURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:v5 size:4 scale:1024.0 representationTypes:1024.0, 1.0];
  v18 = 0;
  v8 = [MEMORY[0x1E695DFF8] _QLCreateTemporaryReplacementURLForOriginalFileAtURL:v5 withExtension:@"jpg" temporaryDirectoryURL:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = +[QLThumbnailGenerator sharedGenerator];
    v11 = *MEMORY[0x1E6982E58];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke;
    v13[3] = &unk_1E836A550;
    v14 = v5;
    v15 = v9;
    v17 = v6;
    v16 = v8;
    [v10 saveBestRepresentationForRequest:v7 toFileAtURL:v16 asContentType:v11 allowingThumbnailDownloads:1 completionHandler:v13];

    v12 = v14;
LABEL_5:

    goto LABEL_6;
  }

  if (v6)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:0];
    (*(v6 + 2))(v6, v12);
    goto LABEL_5;
  }

LABEL_6:
}

void __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v6 = *(a1 + 48);
    v21 = *MEMORY[0x1E695DA70];
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = *(a1 + 32);
    v18 = 0;
    v9 = [QLThumbnailAddition associateThumbnailImagesDictionary:v7 serializedQuickLookMetadata:0 withDocumentAtURL:v8 error:&v18];
    v10 = v18;

    if (v9)
    {
      [*(a1 + 32) removeCachedResourceValueForKey:*MEMORY[0x1E695DC50]];
      [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
      v11 = _log_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_1CA1E7000, v11, OS_LOG_TYPE_INFO, "downloadOrGenerateThumbnailAtTaggedURL associated thumbnail with %@", buf, 0xCu);
      }

      v13 = *(a1 + 56);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = *(v13 + 16);
    }

    else
    {
      v15 = _log_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_2((a1 + 32));
      }

      [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
      v16 = *(a1 + 56);
      if (!v16)
      {
        goto LABEL_16;
      }

      v14 = *(v16 + 16);
    }

    v14();
LABEL_16:

    goto LABEL_17;
  }

  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(a1);
  }

  [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:*(a1 + 40)];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)setThumbnailsDictionary:(id)a3 forURL:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v8)
    {
      v12 = 0;
    }

    else
    {
      v11 = [v8 valueForKey:*MEMORY[0x1E695DA70]];
      v12 = v11;
      if (v11)
      {
        v13 = v11 == v10;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        if (QLTImageClassWithError(a5))
        {
          v14 = [v12 CGImage];
          v15 = _log_0();
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v9;
              _os_log_impl(&dword_1CA1E7000, v16, OS_LOG_TYPE_INFO, "Associating thumbnail for %@", buf, 0xCu);
            }

            v17 = [a1 associateImage:v14 metadata:0 automaticallyGenerated:0 withURL:v9 error:a5];
            v18 = dispatch_get_global_queue(-2, 0);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __60__QLThumbnailAddition_setThumbnailsDictionary_forURL_error___block_invoke;
            block[3] = &unk_1E8369F88;
            v24 = v9;
            dispatch_async(v18, block);

            goto LABEL_17;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            +[QLThumbnailAddition setThumbnailsDictionary:forURL:error:];
          }

          if (a5)
          {
            [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:100 userInfo:0];
            *a5 = v17 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          v22 = _log_0();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            +[QLThumbnailAddition setThumbnailsDictionary:forURL:error:];
          }
        }

        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v19 = _log_0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_1CA1E7000, v19, OS_LOG_TYPE_INFO, "Setting image to nil on %@ -> removing any preexisting thumbnails", buf, 0xCu);
    }

    v17 = [a1 removeAdditionsOnURL:v9 error:a5];
    goto LABEL_17;
  }

  v17 = 1;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void __60__QLThumbnailAddition_setThumbnailsDictionary_forURL_error___block_invoke(uint64_t a1)
{
  if (_FPURLMightBeInFileProvider(*(a1 + 32)) && (_FPIsCloudDocsWithFPFSEnabled() & 1) == 0)
  {
    v2 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__QLThumbnailAddition_setThumbnailsDictionary_forURL_error___block_invoke_2;
    v9[3] = &unk_1E836A050;
    v10 = v2;
    v3 = v10;
    v4 = v9;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v5 = getBRThumbnailChangedAtURLSymbolLoc_ptr;
    v19 = getBRThumbnailChangedAtURLSymbolLoc_ptr;
    if (!getBRThumbnailChangedAtURLSymbolLoc_ptr)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getBRThumbnailChangedAtURLSymbolLoc_block_invoke;
      v14 = &unk_1E8369C70;
      v15 = &v16;
      v6 = CloudDocsLibrary();
      v7 = dlsym(v6, "BRThumbnailChangedAtURL");
      *(v15[1] + 24) = v7;
      getBRThumbnailChangedAtURLSymbolLoc_ptr = *(v15[1] + 24);
      v5 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v5)
    {
      v8 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(v8);
    }

    v5(v3, v4);
  }
}

void __60__QLThumbnailAddition_setThumbnailsDictionary_forURL_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _log_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_DEFAULT, "Error when notifying BR the thumbnail changed at %@: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldUseXattrsToStoreThumbnailsOnURL:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    CloudDocsLibrary();
  }

  v4 = [MEMORY[0x1E69A07C0] manager];
  if ([v4 isItemAtURLInsidePermanentStorage:v3 error:0])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 br_isInCloudDocsPrivateStorages];
  }

  return v5;
}

+ (BOOL)associateThumbnailsForDocumentAtURL:(id)a3 withDocumentAtURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [a1 associateThumbnailsForDocumentAtURL:v9 withImmutableDocument:objc_msgSend(a1 atURL:"shouldUseXattrsToStoreThumbnailsOnURL:" error:{v8), v8, a5}];

  return a5;
}

+ (BOOL)associateThumbnailsForDocumentAtURL:(id)a3 withImmutableDocument:(BOOL)a4 atURL:(id)a5 error:(id *)a6
{
  v8 = a4;
  v77[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = _log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    LODWORD(v73) = v8;
    _os_log_debug_impl(&dword_1CA1E7000, v11, OS_LOG_TYPE_DEBUG, "Copying thumbnails from %@ to %@ (immutable: %d)", buf, 0x1Cu);
  }

  v12 = [[QLThumbnailAddition alloc] initWithAdditionsPresentOnURL:v9 error:a6];
  if (v12)
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 1;
    v13 = [[QLThumbnailVersion alloc] initWithFileURL:v9 automaticallyGenerated:1];
    if ([(QLThumbnailAddition *)v12 shouldBeInvalidatedByThumbnailVersion:v13])
    {
      v14 = _log_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&dword_1CA1E7000, v14, OS_LOG_TYPE_DEFAULT, "Not copying thumbnails from %@ to %@ because it was outdated for the source already", buf, 0x16u);
      }

      if (!a6)
      {
        LOBYTE(v16) = 0;
LABEL_45:

        _Block_object_dispose(&v62, 8);
        goto LABEL_46;
      }

      v16 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A980];
      v77[0] = v9;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      [v16 errorWithDomain:@"QLThumbnailErrorDomain" code:115 userInfo:v15];
      *a6 = LOBYTE(v16) = 0;
LABEL_44:

      goto LABEL_45;
    }

    v15 = [(QLThumbnailAddition *)v12 thumbnailDataDictionary];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v73 = __Block_byref_object_copy__3;
    v74 = __Block_byref_object_dispose__3;
    v75 = 0;
    v17 = [(QLThumbnailAddition *)v12 metadata];
    v18 = [v17 mutableCopy];

    v19 = [QLThumbnailVersion alloc];
    v20 = [(QLThumbnailAddition *)v12 thumbnailVersion];
    v54 = -[QLThumbnailVersion initWithFileURL:automaticallyGenerated:](v19, "initWithFileURL:automaticallyGenerated:", v10, [v20 isAutomaticallyGenerated]);

    v21 = [(QLThumbnailVersion *)v54 dictionaryRepresentation];
    [v18 setObject:v21 forKeyedSubscript:@"QLThumbnailMetadataFileVersionKey.2"];

    if (v8)
    {
      if (!v15)
      {
        v22 = [(QLThumbnailAddition *)v12 metadata];
        v23 = [v22 objectForKey:@"QLThumbnailMetadataFileNamesDictionaryKey"];

        if (!v23)
        {
          v24 = [@"thumbnail" stringByAppendingPathExtension:@"jpg"];
          v70 = *MEMORY[0x1E695DA70];
          v71 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        }

        v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __93__QLThumbnailAddition_associateThumbnailsForDocumentAtURL_withImmutableDocument_atURL_error___block_invoke;
        v56[3] = &unk_1E836A578;
        v57 = v12;
        v26 = v23;
        v58 = v26;
        v60 = buf;
        v61 = &v62;
        v27 = v25;
        v59 = v27;
        [v26 enumerateKeysAndObjectsUsingBlock:v56];
        v28 = v59;
        v15 = v27;
      }

      if (*(v63 + 24) == 1)
      {
        v29 = [a1 storeThumbnailDataDictionary:v15 metadata:v18 asExtendedAttributeOnURL:v10 error:a6];
        *(v63 + 24) = v29;
      }

      else if (a6)
      {
        *a6 = *(*&buf[8] + 40);
      }

LABEL_40:
      v47 = [(QLThumbnailAddition *)v12 additionSize];
      if (*(v63 + 24) == 1)
      {
        [a1 _hitAdditionsOnURL:v10 size:v47 completionHandler:0];
        LOBYTE(v16) = *(v63 + 24);
        goto LABEL_43;
      }

LABEL_42:
      LOBYTE(v16) = 0;
      goto LABEL_43;
    }

    v30 = [MEMORY[0x1E69A07C0] manager];
    v31 = [v30 permanentStorageForItemAtURL:v10 allocateIfNone:1 error:a6];

    if (!v31)
    {
      goto LABEL_42;
    }

    v52 = [v31 stagingURLforCreatingAdditionWithError:a6];
    if (!v52)
    {

      goto LABEL_42;
    }

    v32 = *MEMORY[0x1E695DA70];
    v51 = [v15 objectForKey:*MEMORY[0x1E695DA70]];
    v53 = [v52 URLByAppendingPathComponent:@"thumbnail.qlthumbnail"];
    if (v51)
    {
      v33 = [a1 imageNameFor1024ThumbnailData:v51 metadataDictionary:v18];
      v50 = v33;
      if (!v33)
      {
        v41 = _log_0();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          +[QLThumbnailAddition associateThumbnailsForDocumentAtURL:withImmutableDocument:atURL:error:];
        }

        if (a6)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
          *a6 = LODWORD(v16) = 0;
        }

        else
        {
          LODWORD(v16) = 0;
        }

LABEL_39:

        if (!v16)
        {
LABEL_43:

          _Block_object_dispose(buf, 8);
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v68 = v32;
      v69 = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v35 = v34;
      if (v18)
      {
        [v18 setObject:v34 forKeyedSubscript:@"QLThumbnailMetadataFileNamesDictionaryKey"];
      }

      else
      {
        v66 = @"QLThumbnailMetadataFileNamesDictionaryKey";
        v67 = v34;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v18 = [v42 mutableCopy];
      }

      v43 = [MEMORY[0x1E696AC08] defaultManager];
      [v43 createDirectoryAtURL:v53 withIntermediateDirectories:0 attributes:0 error:0];

      v44 = [v53 URLByAppendingPathComponent:v50 isDirectory:0];
      v45 = [v51 writeToURL:v44 options:0 error:a6];
      *(v63 + 24) = v45;
      [a1 adjustFileProtectionForThumbnail:v44 fromOriginalDocument:v9];
    }

    else
    {
      v36 = [(QLThumbnailAddition *)v12 additionURL];
      v37 = v36 == 0;

      if (v37)
      {
        *(v63 + 24) = 0;
      }

      else
      {
        v38 = [MEMORY[0x1E696AC08] defaultManager];
        v39 = [(QLThumbnailAddition *)v12 additionURL];
        v40 = [v38 copyItemAtURL:v39 toURL:v53 error:a6];
        *(v63 + 24) = v40;

        [a1 adjustFileProtectionForThumbnail:v53 fromOriginalDocument:v9];
      }
    }

    if (*(v63 + 24) == 1)
    {
      v46 = [a1 makeAdditionFromStagingURL:v53 metadata:v18 inStorage:v31 error:a6];
      *(v63 + 24) = v46;
      [a1 removeThumbnailsStoredInExtendedAttributesOnURL:v10 error:0];
    }

    LODWORD(v16) = 1;
    goto LABEL_39;
  }

  LOBYTE(v16) = 0;
LABEL_46:

  v48 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void __93__QLThumbnailAddition_associateThumbnailsForDocumentAtURL_withImmutableDocument_atURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) additionURL];
  v8 = [*(a1 + 40) objectForKey:v6];
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];

  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9 options:1 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 48) setObject:v11 forKey:v6];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (void)noteCloudDocsDownloadedFileAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(-32768, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke;
  v10[3] = &unk_1E836A618;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[QLThumbnailServiceProxy sharedInstance];
  if (v2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_146;
    v6[3] = &unk_1E836A5F0;
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v2 askThumbnailAdditionIndex:v6];

    v3 = v8;
LABEL_7:

    goto LABEL_8;
  }

  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:0];
    (*(v5 + 16))(v5, v3);
    goto LABEL_7;
  }

LABEL_8:
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_146(uint64_t a1, void *a2)
{
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_147;
    v20[3] = &unk_1E836A2D8;
    v21 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v20];
    FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [FPSandboxingURLWrapperClass wrapperWithURL:v6 extensionClass:"com.apple.quicklook.readonly" error:&v19];
    v8 = v19;
    if (v8)
    {
      v9 = _log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_146_cold_1((a1 + 32));
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_148;
    v15[3] = &unk_1E836A5C8;
    v16 = *(a1 + 32);
    v10 = *(a1 + 40);
    v17 = v4;
    v18 = v10;
    v11 = v4;
    [v11 hasThumbnailForURLWrapper:v7 updateLastHitDate:0 andSize:0 completion:v15];

    v12 = v21;
    goto LABEL_11;
  }

  v13 = _log_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104_cold_2();
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:107 userInfo:0];
    (*(v14 + 16))(v14, v12);
LABEL_11:
  }
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_147(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_147_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_148(id *a1, int a2)
{
  if (a2)
  {
    v3 = +[QLThumbnailGenerationQueue sharedInstance];
    v4 = a1[4];
    v6 = v3;
    if (a1[6])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_2;
      v7[3] = &unk_1E836A5A0;
      v8 = a1[5];
      v9 = a1[4];
      v10 = a1[6];
      [v6 enqueueThumbnailGenerationIfNeededForDocumentAtURL:v4 atBackgroundPriority:1 completionHandler:v7];

      return;
    }

    [v3 enqueueThumbnailGenerationIfNeededForDocumentAtURL:v4 atBackgroundPriority:1 completionHandler:0];
  }

  else
  {
    v5 = a1[6];
    if (!v5)
    {
      return;
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:104 userInfo:0];
    v5[2](v5, v6);
  }
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a4;
  [v6 updateFileSize:a3 ofThumbnailForURL:v7 completion:0];
  (*(a1[6] + 16))();
}

- (id)allImageURLs
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(QLThumbnailAddition *)self metadata];
  v4 = [v3 objectForKey:@"QLThumbnailMetadataFileNamesDictionaryKey"];
  v5 = [v4 allValues];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(QLThumbnailAddition *)self additionURL];
          v14 = [v13 URLByAppendingPathComponent:v12 isDirectory:0];

          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v15 = [(QLThumbnailAddition *)self metadata];
    v7 = [v15 objectForKey:@"QLThumbnailMetadataFileNameKey"];

    if (v7)
    {
      v16 = [(QLThumbnailAddition *)self additionURL];
      v17 = [v16 URLByAppendingPathComponent:v7 isDirectory:0];
      v24 = v17;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)additionSize
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  thumbnailDataDictionary = self->_thumbnailDataDictionary;
  if (thumbnailDataDictionary)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__QLThumbnailAddition_additionSize__block_invoke;
    v22[3] = &unk_1E836A640;
    v22[4] = &v23;
    [(NSDictionary *)thumbnailDataDictionary enumerateKeysAndObjectsUsingBlock:v22];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(QLThumbnailAddition *)self allImageURLs];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v5)
    {
      v6 = *v19;
      v7 = *MEMORY[0x1E695DB50];
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          v17 = 0;
          v10 = [v9 getResourceValue:&v17 forKey:v7 error:0];
          v11 = v17;
          v12 = v11;
          if (v10)
          {
            v13 = [v11 unsignedIntegerValue];
            v24[3] += v13;
          }

          ++v8;
        }

        while (v5 != v8);
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v5);
    }
  }

  v14 = v24[3];
  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __35__QLThumbnailAddition_additionSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 length];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)shouldBeInvalidatedByThumbnailVersion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_1CA1E7000, v0, v1, "%@ should be invalidated by %@?");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailURLForKey:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a1 additionURL];
  v3 = [a1 metadata];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_1CA1E7000, v4, v5, "Found an addition at %@ without a file name for key %@ in its metadata %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __71__QLThumbnailAddition__initWithAdditionsPresentOnURLUsingDaemon_error___block_invoke_95_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)setPropertyList:forExtendedAttributeNamed:flags:onFileDescriptor:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)removeExtendedAttributeNamed:flags:onFileDescriptor:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_104_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__QLThumbnailAddition__hitAdditionsOnURL_size_completionHandler___block_invoke_106_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "%@ is not reachable: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not determine what type of image %@ [thumbnail for %@] is");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)associateThumbnailImagesDictionary:serializedQuickLookMetadata:withImmutableDocument:atURL:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)adjustFileProtectionForThumbnail:fromOriginalDocument:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to get FileProtection Attributes from document URL %@: error %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)adjustFileProtectionForThumbnail:fromOriginalDocument:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to set FileProtection Attributes on staging URL %@: error %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)makeAdditionFromStagingURL:(uint64_t)a1 metadata:(uint64_t)a2 inStorage:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v3, v4, "Failed to create addition from staging URL %@: error %@");
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)makeAdditionFromStagingURL:(uint64_t)a1 metadata:(uint64_t)a2 inStorage:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v3, v4, "Failed to prepare addition from staging URL %@: error %@");
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)associateImage:metadata:automaticallyGenerated:withURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_1CA1E7000, v0, v1, "associate thumbnail with URL %@ metadata %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)associateImage:metadata:automaticallyGenerated:withURL:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)associateImage:metadata:automaticallyGenerated:withURL:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to associate thumbnail with %@: GenerationalStorage failed to return a staging URL (error: %@)");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)associateImage:metadata:automaticallyGenerated:withURL:error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to associate thumbnail with %@: GenerationalStorage failed to return an additions storage (error: %@)");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)removeAdditionsOnURL:error:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)removeAdditionsOnURL:error:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)thumbnailsDictionaryForURL:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Error %@ retrieving thumbnail for %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __56__QLThumbnailAddition_thumbnailsDictionaryForURL_error___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)downloadOrGenerateThumbnailAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)downloadOrGenerateThumbnailAtURL:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)downloadOrGenerateThumbnailAtURL:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)preFPFSDownloadThumbnailAtTaggedURL:completionHandler:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = _CFURLCopyLogicalURLOfPromiseAtURL();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_1CA1E7000, v1, v2, "Failed to determine if %@ (%@) is ubiquitous: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)preFPFSDownloadThumbnailAtTaggedURL:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)preFPFSDownloadThumbnailAtTaggedURL:completionHandler:.cold.3()
{
  dlerror();
  v0 = abort_report_np();
  return __77__QLThumbnailAddition_preFPFSDownloadThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(v0);
}

void __77__QLThumbnailAddition_preFPFSDownloadThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v3, v4, "Error %@ while downloading thumbnail for %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __87__QLThumbnailAddition_preFPFSDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not associate thumbnail with %@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not download thumbnail for %@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __84__QLThumbnailAddition_fpfsDownloadOrGenerateThumbnailAtTaggedURL_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setThumbnailsDictionary:forURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)setThumbnailsDictionary:forURL:error:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)associateThumbnailsForDocumentAtURL:withImmutableDocument:atURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_146_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not create FPSandboxingURLWrapper with url: %@, error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __74__QLThumbnailAddition_noteCloudDocsDownloadedFileAtURL_completionHandler___block_invoke_147_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end