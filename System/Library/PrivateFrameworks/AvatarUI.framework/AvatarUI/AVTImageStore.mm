@interface AVTImageStore
+ (id)resourceURLForItem:(id)item scope:(id)scope baseURL:(id)l encoder:(id)encoder;
+ (void)clearContentAtLocation:(id)location logger:(id)logger;
- (AVTImageStore)initWithEnvironment:(id)environment validateImages:(BOOL)images location:(id)location;
- (AVTImageStore)initWithEnvironment:(id)environment validateImages:(BOOL)images location:(id)location encoder:(id)encoder;
- (BOOL)applyFileProtectionForResourceAtURL:(id)l error:(id *)error;
- (BOOL)copyImagesForPersistentIdentifierPrefix:(id)prefix toPersistentIdentifierPrefix:(id)identifierPrefix error:(id *)error;
- (BOOL)createDirectoryIfNeeded:(id *)needed;
- (BOOL)deleteImagesForItemsWithPersistentIdentifierPrefix:(id)prefix error:(id *)error;
- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope;
- (BOOL)saveImage:(id)image withImageData:(id)data forItem:(id)item scope:(id)scope error:(id *)error;
- (id)_imageForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler;
- (id)imageForItem:(id)item scope:(id)scope error:(id *)error;
- (id)resourceURLForItem:(id)item scope:(id)scope;
- (void)performStateWork:(id)work;
@end

@implementation AVTImageStore

+ (void)clearContentAtLocation:(id)location logger:(id)logger
{
  loggerCopy = logger;
  v6 = MEMORY[0x1E696AC08];
  locationCopy = location;
  v8 = objc_alloc_init(v6);
  v13 = 0;
  v9 = [v8 removeItemAtURL:locationCopy error:&v13];

  v10 = v13;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = [v10 description];
    [loggerCopy logFileSystemError:v12];
  }
}

+ (id)resourceURLForItem:(id)item scope:(id)scope baseURL:(id)l encoder:(id)encoder
{
  encoderCopy = encoder;
  lCopy = l;
  v11 = [item persistentIdentifierForScope:scope];
  v12 = [lCopy URLByAppendingPathComponent:v11];

  fileExtension = [encoderCopy fileExtension];

  v14 = [v12 URLByAppendingPathExtension:fileExtension];

  return v14;
}

- (AVTImageStore)initWithEnvironment:(id)environment validateImages:(BOOL)images location:(id)location
{
  imagesCopy = images;
  locationCopy = location;
  environmentCopy = environment;
  v10 = objc_alloc_init(AVTATXImageIOImageEncoder);
  v11 = [(AVTImageStore *)self initWithEnvironment:environmentCopy validateImages:imagesCopy location:locationCopy encoder:v10];

  return v11;
}

- (AVTImageStore)initWithEnvironment:(id)environment validateImages:(BOOL)images location:(id)location encoder:(id)encoder
{
  environmentCopy = environment;
  locationCopy = location;
  encoderCopy = encoder;
  v26.receiver = self;
  v26.super_class = AVTImageStore;
  v13 = [(AVTImageStore *)&v26 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v13->_fileManager;
    v13->_fileManager = v14;

    v16 = [locationCopy copy];
    location = v13->_location;
    v13->_location = v16;

    objc_storeStrong(&v13->_imageEncoder, encoder);
    lockProvider = [environmentCopy lockProvider];
    v19 = (lockProvider)[2](lockProvider, "com.apple.AvatarUI.AVTImageStore.stateLock");
    stateLock = v13->_stateLock;
    v13->_stateLock = v19;

    logger = [environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    v23 = v13->_logger;
    path = [(NSURL *)v13->_location path];
    [(AVTUILogger *)v23 logCreatingImageStoreForPath:path];

    v13->_validateImages = images;
  }

  return v13;
}

- (void)performStateWork:(id)work
{
  workCopy = work;
  stateLock = [(AVTImageStore *)self stateLock];
  dispatch_sync(stateLock, workCopy);
}

- (BOOL)createDirectoryIfNeeded:(id *)needed
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AVTImageStore_createDirectoryIfNeeded___block_invoke;
  v6[3] = &unk_1E7F3D4F8;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(AVTImageStore *)self performStateWork:v6];
  v4 = *(v14 + 24);
  if (needed && (v14[3] & 1) == 0)
  {
    *needed = v8[5];
    v4 = *(v14 + 24);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4 & 1;
}

void __41__AVTImageStore_createDirectoryIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileManager];
  v3 = [*(a1 + 32) location];
  v4 = [v3 path];
  v5 = [v2 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) fileManager];
    v7 = [*(a1 + 32) location];
    v8 = [v7 path];
    v12 = 0;
    v9 = [v6 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v12];
    v10 = v12;
    v11 = v12;
    *(*(*(a1 + 40) + 8) + 24) = v9;

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
    }
  }
}

- (id)resourceURLForItem:(id)item scope:(id)scope
{
  scopeCopy = scope;
  itemCopy = item;
  v8 = objc_opt_class();
  location = [(AVTImageStore *)self location];
  imageEncoder = [(AVTImageStore *)self imageEncoder];
  v11 = [v8 resourceURLForItem:itemCopy scope:scopeCopy baseURL:location encoder:imageEncoder];

  return v11;
}

- (BOOL)saveImage:(id)image withImageData:(id)data forItem:(id)item scope:(id)scope error:(id *)error
{
  imageCopy = image;
  dataCopy = data;
  itemCopy = item;
  scopeCopy = scope;
  if ([(AVTImageStore *)self createDirectoryIfNeeded:error])
  {
    v16 = [(AVTImageStore *)self resourceURLForItem:itemCopy scope:scopeCopy];
    logger = [(AVTImageStore *)self logger];
    path = [v16 path];
    [logger logImageStoreBeginSavingImageForPath:path];

    if ([(AVTImageStore *)self validateImages])
    {
      v19 = +[AVTImageValidator sharedValidator];
      v20 = v19;
      if (v19)
      {
        v37 = 0;
        v21 = [v19 validateImageIsNotTransparent:imageCopy error:&v37];
        v22 = v37;
        v23 = v22;
        if ((v21 & 1) == 0)
        {
          if (error)
          {
            v34 = v22;
            v25 = 0;
            *error = v23;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_22;
        }

        v35 = v22;
        v24 = 0;
        if (dataCopy)
        {
LABEL_12:
          v36 = v20;
          if (objc_opt_respondsToSelector())
          {
            v27 = [itemCopy persistentDataHashForScope:scopeCopy];
            if (v24)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v27 = 0;
            if (v24)
            {
              goto LABEL_17;
            }
          }

          absoluteString = [v16 absoluteString];
          v29 = [v36 validateImageDataIsNotDuplicate:dataCopy forFileName:absoluteString avatarDataHash:v27];

          if ((v29 & 1) == 0)
          {
            if (error)
            {
              [MEMORY[0x1E698E338] errorWithCode:607 userInfo:0];
              *error = v25 = 0;
            }

            else
            {
              v25 = 0;
            }

LABEL_21:
            v23 = v35;

            v20 = v36;
LABEL_22:

            goto LABEL_23;
          }

LABEL_17:
          if ([itemCopy requiresEncryption])
          {
            v30 = AVTDefaultFileProtectionDataWritingOptions() | 1;
          }

          else
          {
            v30 = 1;
          }

          v25 = [dataCopy writeToURL:v16 options:v30 error:error];
          logger2 = [(AVTImageStore *)self logger];
          path2 = [v16 path];
          [logger2 logImageStoreDoneSavingImageForPath:path2];

          goto LABEL_21;
        }

LABEL_11:
        imageEncoder = [(AVTImageStore *)self imageEncoder];
        dataCopy = [imageEncoder dataFromImage:imageCopy];

        if (!dataCopy)
        {
          if (error)
          {
            [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
            dataCopy = 0;
            *error = v25 = 0;
          }

          else
          {
            dataCopy = 0;
            v25 = 0;
          }

          v23 = v35;
          goto LABEL_22;
        }

        goto LABEL_12;
      }

      v35 = 0;
    }

    else
    {
      v35 = 0;
      v20 = 0;
    }

    v24 = 1;
    if (dataCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25 = 0;
LABEL_23:

  return v25;
}

- (BOOL)deleteImagesForItemsWithPersistentIdentifierPrefix:(id)prefix error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  fileManager = [(AVTImageStore *)self fileManager];
  location = [(AVTImageStore *)self location];
  path = [location path];
  v10 = [fileManager fileExistsAtPath:path];

  if (v10)
  {
    logger = [(AVTImageStore *)self logger];
    [logger logDeletingImagesWithIdentifierPrefix:prefixCopy];

    fileManager2 = [(AVTImageStore *)self fileManager];
    location2 = [(AVTImageStore *)self location];
    v14 = [fileManager2 contentsOfDirectoryAtURL:location2 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:error];

    if (v14)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v27 = v14;
        v18 = *v29;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            lastPathComponent = [v20 lastPathComponent];
            v22 = [lastPathComponent hasPrefix:prefixCopy];

            if (v22)
            {
              fileManager3 = [(AVTImageStore *)self fileManager];
              v24 = [fileManager3 removeItemAtURL:v20 error:error];

              if (!v24)
              {
                v25 = 0;
                goto LABEL_16;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v25 = 1;
LABEL_16:
        v14 = v27;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

- (BOOL)copyImagesForPersistentIdentifierPrefix:(id)prefix toPersistentIdentifierPrefix:(id)identifierPrefix error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  identifierPrefixCopy = identifierPrefix;
  fileManager = [(AVTImageStore *)self fileManager];
  location = [(AVTImageStore *)self location];
  path = [location path];
  v12 = [fileManager fileExistsAtPath:path];

  if (v12)
  {
    fileManager2 = [(AVTImageStore *)self fileManager];
    location2 = [(AVTImageStore *)self location];
    v15 = [fileManager2 contentsOfDirectoryAtURL:location2 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:error];

    if (!v15)
    {
      goto LABEL_22;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v33 = v15;
      errorCopy = error;
      v19 = 0;
      v20 = *v37;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          lastPathComponent = [v22 lastPathComponent];
          v24 = [lastPathComponent hasPrefix:prefixCopy];

          if (v24)
          {
            lastPathComponent2 = [v22 lastPathComponent];
            v26 = [lastPathComponent2 stringByReplacingOccurrencesOfString:prefixCopy withString:identifierPrefixCopy];

            uRLByDeletingLastPathComponent = [v22 URLByDeletingLastPathComponent];
            v28 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v26];

            fileManager3 = [(AVTImageStore *)self fileManager];
            v30 = [fileManager3 copyItemAtURL:v22 toURL:v28 error:errorCopy];

            if ((v30 & 1) == 0)
            {

              v31 = 0;
              v15 = v33;
              goto LABEL_23;
            }

            v19 = 1;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v15 = v33;
      error = errorCopy;
      if (v19)
      {
        v31 = 1;
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      *error = v31 = 0;
    }

    else
    {
LABEL_22:
      v31 = 0;
    }

LABEL_23:
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    *error = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)imageForItem:(id)item scope:(id)scope error:(id *)error
{
  itemCopy = item;
  v9 = [(AVTImageStore *)self resourceURLForItem:itemCopy scope:scope];
  requiresEncryption = [itemCopy requiresEncryption];

  if (requiresEncryption && ![(AVTImageStore *)self applyFileProtectionForResourceAtURL:v9 error:error])
  {
    v12 = 0;
  }

  else
  {
    imageEncoder = [(AVTImageStore *)self imageEncoder];
    v12 = [imageEncoder imageFromURL:v9 error:error];
  }

  return v12;
}

- (BOOL)applyFileProtectionForResourceAtURL:(id)l error:(id *)error
{
  lCopy = l;
  fileManager = [(AVTImageStore *)self fileManager];
  path = [lCopy path];
  v9 = [fileManager attributesOfItemAtPath:path error:error];

  if (v9)
  {
    v10 = *MEMORY[0x1E696A3A0];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
    v12 = AVTDefaultFileProtectionType();
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) != 0 || (v14 = [v9 mutableCopy], AVTDefaultFileProtectionType(), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setObject:forKeyedSubscript:", v15, v10), v15, -[AVTImageStore fileManager](self, "fileManager"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "setAttributes:ofItemAtPath:error:", v14, v17, error), v17, v16, v14, v18))
    {
      LOBYTE(v18) = 1;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (id)_imageForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler
{
  itemCopy = item;
  scopeCopy = scope;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__22;
    v35 = __Block_byref_object_dispose__22;
    v36 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__AVTImageStore__imageForItem_scope_cacheMissHandler___block_invoke;
    v21[3] = &unk_1E7F3D520;
    v25 = &v31;
    v21[4] = self;
    v11 = itemCopy;
    v22 = v11;
    v12 = scopeCopy;
    v23 = v12;
    v24 = handlerCopy;
    v26 = &v27;
    [(AVTImageStore *)self performStateWork:v21];
    if (*(v28 + 24) == 1)
    {
      v13 = v32[5];
      v20 = 0;
      v14 = [(AVTImageStore *)self saveImage:v13 forItem:v11 scope:v12 error:&v20];
      v15 = v20;
      if (!v14)
      {
        logger = [(AVTImageStore *)self logger];
        v17 = [v15 description];
        [logger logImageStoreSavingError:v17 code:{objc_msgSend(v15, "code")}];
      }
    }

    v18 = v32[5];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else if (handlerCopy)
  {
    v18 = (*(handlerCopy + 2))(handlerCopy, itemCopy, scopeCopy);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __54__AVTImageStore__imageForItem_scope_cacheMissHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v21 = 0;
  v5 = [v2 imageForItem:v3 scope:v4 error:&v21];
  v6 = v21;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = [*(a1 + 32) logger];
  if (v9)
  {
    v11 = [*(a1 + 40) description];
    [v10 logImageStoreCacheHitForItemDescription:v11 sizeCost:{objc_msgSend(*(a1 + 48), "cacheableResourceAssociatedCost")}];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [*(a1 + 40) persistentIdentifierForScope:*(a1 + 48)];
    v14 = [v12 stringWithFormat:@"source %@ error %@", v13, v6];
    [v10 logImageStoreCacheMiss:v14];

    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = (*(v15 + 16))(v15, *(a1 + 40), *(a1 + 48));
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = [*(a1 + 32) resourceExistsInCacheForItem:*(a1 + 40) scope:*(a1 + 48)];
      v20 = *(*(a1 + 72) + 8);
      if (v19)
      {
        *(v20 + 24) = 0;
      }

      else
      {
        *(v20 + 24) = 1;
      }
    }
  }
}

- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope
{
  v5 = [(AVTImageStore *)self resourceURLForItem:item scope:scope];
  fileManager = [(AVTImageStore *)self fileManager];
  path = [v5 path];
  v8 = [fileManager fileExistsAtPath:path];

  return v8;
}

@end