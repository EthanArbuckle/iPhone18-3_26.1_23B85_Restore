@interface AVTImageStore
+ (id)resourceURLForItem:(id)a3 scope:(id)a4 baseURL:(id)a5 encoder:(id)a6;
+ (void)clearContentAtLocation:(id)a3 logger:(id)a4;
- (AVTImageStore)initWithEnvironment:(id)a3 validateImages:(BOOL)a4 location:(id)a5;
- (AVTImageStore)initWithEnvironment:(id)a3 validateImages:(BOOL)a4 location:(id)a5 encoder:(id)a6;
- (BOOL)applyFileProtectionForResourceAtURL:(id)a3 error:(id *)a4;
- (BOOL)copyImagesForPersistentIdentifierPrefix:(id)a3 toPersistentIdentifierPrefix:(id)a4 error:(id *)a5;
- (BOOL)createDirectoryIfNeeded:(id *)a3;
- (BOOL)deleteImagesForItemsWithPersistentIdentifierPrefix:(id)a3 error:(id *)a4;
- (BOOL)resourceExistsInCacheForItem:(id)a3 scope:(id)a4;
- (BOOL)saveImage:(id)a3 withImageData:(id)a4 forItem:(id)a5 scope:(id)a6 error:(id *)a7;
- (id)_imageForItem:(id)a3 scope:(id)a4 cacheMissHandler:(id)a5;
- (id)imageForItem:(id)a3 scope:(id)a4 error:(id *)a5;
- (id)resourceURLForItem:(id)a3 scope:(id)a4;
- (void)performStateWork:(id)a3;
@end

@implementation AVTImageStore

+ (void)clearContentAtLocation:(id)a3 logger:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v13 = 0;
  v9 = [v8 removeItemAtURL:v7 error:&v13];

  v10 = v13;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = [v10 description];
    [v5 logFileSystemError:v12];
  }
}

+ (id)resourceURLForItem:(id)a3 scope:(id)a4 baseURL:(id)a5 encoder:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [a3 persistentIdentifierForScope:a4];
  v12 = [v10 URLByAppendingPathComponent:v11];

  v13 = [v9 fileExtension];

  v14 = [v12 URLByAppendingPathExtension:v13];

  return v14;
}

- (AVTImageStore)initWithEnvironment:(id)a3 validateImages:(BOOL)a4 location:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(AVTATXImageIOImageEncoder);
  v11 = [(AVTImageStore *)self initWithEnvironment:v9 validateImages:v5 location:v8 encoder:v10];

  return v11;
}

- (AVTImageStore)initWithEnvironment:(id)a3 validateImages:(BOOL)a4 location:(id)a5 encoder:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = AVTImageStore;
  v13 = [(AVTImageStore *)&v26 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v13->_fileManager;
    v13->_fileManager = v14;

    v16 = [v11 copy];
    location = v13->_location;
    v13->_location = v16;

    objc_storeStrong(&v13->_imageEncoder, a6);
    v18 = [v10 lockProvider];
    v19 = (v18)[2](v18, "com.apple.AvatarUI.AVTImageStore.stateLock");
    stateLock = v13->_stateLock;
    v13->_stateLock = v19;

    v21 = [v10 logger];
    logger = v13->_logger;
    v13->_logger = v21;

    v23 = v13->_logger;
    v24 = [(NSURL *)v13->_location path];
    [(AVTUILogger *)v23 logCreatingImageStoreForPath:v24];

    v13->_validateImages = a4;
  }

  return v13;
}

- (void)performStateWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTImageStore *)self stateLock];
  dispatch_sync(v5, v4);
}

- (BOOL)createDirectoryIfNeeded:(id *)a3
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
  if (a3 && (v14[3] & 1) == 0)
  {
    *a3 = v8[5];
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

- (id)resourceURLForItem:(id)a3 scope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(AVTImageStore *)self location];
  v10 = [(AVTImageStore *)self imageEncoder];
  v11 = [v8 resourceURLForItem:v7 scope:v6 baseURL:v9 encoder:v10];

  return v11;
}

- (BOOL)saveImage:(id)a3 withImageData:(id)a4 forItem:(id)a5 scope:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(AVTImageStore *)self createDirectoryIfNeeded:a7])
  {
    v16 = [(AVTImageStore *)self resourceURLForItem:v14 scope:v15];
    v17 = [(AVTImageStore *)self logger];
    v18 = [v16 path];
    [v17 logImageStoreBeginSavingImageForPath:v18];

    if ([(AVTImageStore *)self validateImages])
    {
      v19 = +[AVTImageValidator sharedValidator];
      v20 = v19;
      if (v19)
      {
        v37 = 0;
        v21 = [v19 validateImageIsNotTransparent:v12 error:&v37];
        v22 = v37;
        v23 = v22;
        if ((v21 & 1) == 0)
        {
          if (a7)
          {
            v34 = v22;
            v25 = 0;
            *a7 = v23;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_22;
        }

        v35 = v22;
        v24 = 0;
        if (v13)
        {
LABEL_12:
          v36 = v20;
          if (objc_opt_respondsToSelector())
          {
            v27 = [v14 persistentDataHashForScope:v15];
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

          v28 = [v16 absoluteString];
          v29 = [v36 validateImageDataIsNotDuplicate:v13 forFileName:v28 avatarDataHash:v27];

          if ((v29 & 1) == 0)
          {
            if (a7)
            {
              [MEMORY[0x1E698E338] errorWithCode:607 userInfo:0];
              *a7 = v25 = 0;
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
          if ([v14 requiresEncryption])
          {
            v30 = AVTDefaultFileProtectionDataWritingOptions() | 1;
          }

          else
          {
            v30 = 1;
          }

          v25 = [v13 writeToURL:v16 options:v30 error:a7];
          v31 = [(AVTImageStore *)self logger];
          v32 = [v16 path];
          [v31 logImageStoreDoneSavingImageForPath:v32];

          goto LABEL_21;
        }

LABEL_11:
        v26 = [(AVTImageStore *)self imageEncoder];
        v13 = [v26 dataFromImage:v12];

        if (!v13)
        {
          if (a7)
          {
            [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
            v13 = 0;
            *a7 = v25 = 0;
          }

          else
          {
            v13 = 0;
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
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25 = 0;
LABEL_23:

  return v25;
}

- (BOOL)deleteImagesForItemsWithPersistentIdentifierPrefix:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AVTImageStore *)self fileManager];
  v8 = [(AVTImageStore *)self location];
  v9 = [v8 path];
  v10 = [v7 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [(AVTImageStore *)self logger];
    [v11 logDeletingImagesWithIdentifierPrefix:v6];

    v12 = [(AVTImageStore *)self fileManager];
    v13 = [(AVTImageStore *)self location];
    v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:a4];

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
            v21 = [v20 lastPathComponent];
            v22 = [v21 hasPrefix:v6];

            if (v22)
            {
              v23 = [(AVTImageStore *)self fileManager];
              v24 = [v23 removeItemAtURL:v20 error:a4];

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

- (BOOL)copyImagesForPersistentIdentifierPrefix:(id)a3 toPersistentIdentifierPrefix:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35 = a4;
  v9 = [(AVTImageStore *)self fileManager];
  v10 = [(AVTImageStore *)self location];
  v11 = [v10 path];
  v12 = [v9 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [(AVTImageStore *)self fileManager];
    v14 = [(AVTImageStore *)self location];
    v15 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:a5];

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
      v34 = a5;
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
          v23 = [v22 lastPathComponent];
          v24 = [v23 hasPrefix:v8];

          if (v24)
          {
            v25 = [v22 lastPathComponent];
            v26 = [v25 stringByReplacingOccurrencesOfString:v8 withString:v35];

            v27 = [v22 URLByDeletingLastPathComponent];
            v28 = [v27 URLByAppendingPathComponent:v26];

            v29 = [(AVTImageStore *)self fileManager];
            v30 = [v29 copyItemAtURL:v22 toURL:v28 error:v34];

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
      a5 = v34;
      if (v19)
      {
        v31 = 1;
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      *a5 = v31 = 0;
    }

    else
    {
LABEL_22:
      v31 = 0;
    }

LABEL_23:
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    *a5 = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)imageForItem:(id)a3 scope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(AVTImageStore *)self resourceURLForItem:v8 scope:a4];
  v10 = [v8 requiresEncryption];

  if (v10 && ![(AVTImageStore *)self applyFileProtectionForResourceAtURL:v9 error:a5])
  {
    v12 = 0;
  }

  else
  {
    v11 = [(AVTImageStore *)self imageEncoder];
    v12 = [v11 imageFromURL:v9 error:a5];
  }

  return v12;
}

- (BOOL)applyFileProtectionForResourceAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTImageStore *)self fileManager];
  v8 = [v6 path];
  v9 = [v7 attributesOfItemAtPath:v8 error:a4];

  if (v9)
  {
    v10 = *MEMORY[0x1E696A3A0];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
    v12 = AVTDefaultFileProtectionType();
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) != 0 || (v14 = [v9 mutableCopy], AVTDefaultFileProtectionType(), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setObject:forKeyedSubscript:", v15, v10), v15, -[AVTImageStore fileManager](self, "fileManager"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "setAttributes:ofItemAtPath:error:", v14, v17, a4), v17, v16, v14, v18))
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

- (id)_imageForItem:(id)a3 scope:(id)a4 cacheMissHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v11 = v8;
    v22 = v11;
    v12 = v9;
    v23 = v12;
    v24 = v10;
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
        v16 = [(AVTImageStore *)self logger];
        v17 = [v15 description];
        [v16 logImageStoreSavingError:v17 code:{objc_msgSend(v15, "code")}];
      }
    }

    v18 = v32[5];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else if (v10)
  {
    v18 = (*(v10 + 2))(v10, v8, v9);
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

- (BOOL)resourceExistsInCacheForItem:(id)a3 scope:(id)a4
{
  v5 = [(AVTImageStore *)self resourceURLForItem:a3 scope:a4];
  v6 = [(AVTImageStore *)self fileManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  return v8;
}

@end