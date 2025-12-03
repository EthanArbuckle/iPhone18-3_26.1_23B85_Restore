@interface QLExternalThumbnailCache
+ (id)writeThumbnailImage:(CGImage *)image inInboxAtURL:(id)l;
- (BOOL)_createDirectoryWithURL:(id)l error:(id *)error;
- (BOOL)_freeDiskSpaceToSaveThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error;
- (BOOL)_saveOrUpdateCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error;
- (BOOL)_saveToDiskCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error;
- (BOOL)_updateDatabaseWithCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error;
- (BOOL)removeAllThumbnails:(id *)thumbnails;
- (QLExternalThumbnailCache)initWithDirectoryURL:(id)l maximumCacheSize:(unint64_t)size error:(id *)error;
- (QLExternalThumbnailCacheDatabase)db;
- (id)_urlForThumbnailWithFPItem:(id)item originalThumbnailURL:(id)l;
- (id)_urlForThumbnailWithFPItemIdentifier:(id)identifier fileExtension:(id)extension;
- (id)inboxDirectoryURL;
- (id)thumbnailURLForItem:(id)item error:(id *)error;
- (id)writeThumbnailImageInInbox:(CGImage *)inbox;
- (void)dealloc;
- (void)getThumbnailCacheURLWrappersWithCompletion:(id)completion;
- (void)getThumbnailURLForItem:(id)item completion:(id)completion;
- (void)inboxDirectoryURL;
- (void)storeThumbnailAtURL:(id)l forItem:(id)item completion:(id)completion;
@end

@implementation QLExternalThumbnailCache

- (QLExternalThumbnailCache)initWithDirectoryURL:(id)l maximumCacheSize:(unint64_t)size error:(id *)error
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = QLExternalThumbnailCache;
  v10 = [(QLExternalThumbnailCache *)&v18 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v10->_maximumCacheSize = size;
  objc_storeStrong(&v10->_directoryURL, l);
  v12 = [lCopy URLByAppendingPathComponent:@"thumbnails" isDirectory:1];
  thumbnailsDirectoryURL = v11->_thumbnailsDirectoryURL;
  v11->_thumbnailsDirectoryURL = v12;

  v14 = [lCopy URLByAppendingPathComponent:@"thumbnails.db"];
  databaseURL = v11->_databaseURL;
  v11->_databaseURL = v14;

  if (![(QLExternalThumbnailCache *)v11 _createDirectoryWithURL:v11->_thumbnailsDirectoryURL error:error])
  {
    goto LABEL_5;
  }

  if ([(QLExternalThumbnailCache *)v11 _createDirectoryWithURL:v11->_directoryURL error:error])
  {
LABEL_4:
    v16 = v11;
  }

  else
  {
LABEL_5:
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  [(QLExternalThumbnailCache *)self close];
  v3.receiver = self;
  v3.super_class = QLExternalThumbnailCache;
  [(QLExternalThumbnailCache *)&v3 dealloc];
}

- (id)thumbnailURLForItem:(id)item error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = [(QLExternalThumbnailCache *)self db];
  if ([v7 open])
  {
    v15 = 0;
    v8 = [v7 pathExtensionForItem:itemCopy error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      itemIdentifier = [itemCopy itemIdentifier];
      v12 = [(QLExternalThumbnailCache *)self _urlForThumbnailWithFPItemIdentifier:itemIdentifier fileExtension:v8];
    }

    else
    {
      if (v9)
      {
        if (error)
        {
          *error = errorWithCodeAndUnderlyingError(1, v9);
        }

        itemIdentifier = _log_1();
        if (os_log_type_enabled(itemIdentifier, OS_LOG_TYPE_ERROR))
        {
          [QLExternalThumbnailCache thumbnailURLForItem:error:];
        }
      }

      else
      {
        itemIdentifier = _log_1();
        if (os_log_type_enabled(itemIdentifier, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = itemCopy;
          _os_log_impl(&dword_1CA1E7000, itemIdentifier, OS_LOG_TYPE_INFO, "No path extension found from DB for item: %@.", buf, 0xCu);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = errorWithCodeAndUnderlyingError(0, 0);
    }

    v10 = _log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache thumbnailURLForItem:error:];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)storeThumbnailAtURL:(id)l forItem:(id)item completion:(id)completion
{
  v10 = 0;
  completionCopy = completion;
  [(QLExternalThumbnailCache *)self storeThumbnailAtURL:l forItem:item error:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v9);
}

- (void)getThumbnailURLForItem:(id)item completion:(id)completion
{
  v9 = 0;
  completionCopy = completion;
  v7 = [(QLExternalThumbnailCache *)self thumbnailURLForItem:item error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (BOOL)removeAllThumbnails:(id *)thumbnails
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(QLExternalThumbnailCache *)self db];
  if (([v5 open] & 1) == 0)
  {
    if (thumbnails)
    {
      *thumbnails = errorWithCodeAndUnderlyingError(0, 0);
    }

    v7 = _log_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache removeAllThumbnails:v7];
    }

LABEL_17:
    v20 = 0;
    goto LABEL_33;
  }

  v33 = 0;
  v6 = [v5 removeAllThumbnails:&v33];
  v7 = v33;
  if ((v6 & 1) == 0)
  {
    if (thumbnails)
    {
      errorWithCodeAndUnderlyingError(1, v7);
      *thumbnails = v20 = 0;
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  thumbnailsDirectoryURL = self->_thumbnailsDirectoryURL;
  v32 = v7;
  v10 = [defaultManager contentsOfDirectoryAtURL:thumbnailsDirectoryURL includingPropertiesForKeys:0 options:0 error:&v32];
  v11 = v32;

  if (v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      thumbnailsCopy = thumbnails;
      v26 = v10;
      v15 = *v29;
      while (2)
      {
        v16 = 0;
        v17 = v11;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v28 + 1) + 8 * v16);
          v27 = v17;
          v19 = [defaultManager removeItemAtURL:v18 error:&v27];
          v11 = v27;

          if ((v19 & 1) == 0)
          {
            v21 = _log_1();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [QLExternalThumbnailCache removeAllThumbnails:];
            }

            if (thumbnailsCopy)
            {
              errorWithCodeAndUnderlyingError(3, v11);
              *thumbnailsCopy = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_30;
          }

          ++v16;
          v17 = v11;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v20 = 1;
LABEL_30:
      v10 = v26;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v22 = _log_1();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache removeAllThumbnails:];
    }

    if (thumbnails)
    {
      errorWithCodeAndUnderlyingError(3, v11);
      *thumbnails = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  v7 = v11;
LABEL_33:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_saveOrUpdateCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error
{
  itemCopy = item;
  lCopy = l;
  v10 = [(QLExternalThumbnailCache *)self _freeDiskSpaceToSaveThumbnailRepresentingFPItem:itemCopy withFileAtURL:lCopy error:error]&& [(QLExternalThumbnailCache *)self _updateDatabaseWithCachedThumbnailRepresentingFPItem:itemCopy withFileAtURL:lCopy error:error]&& [(QLExternalThumbnailCache *)self _saveToDiskCachedThumbnailRepresentingFPItem:itemCopy withFileAtURL:lCopy error:error];

  return v10;
}

- (BOOL)_freeDiskSpaceToSaveThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  v10 = [(QLExternalThumbnailCache *)self db];
  if (([v10 open] & 1) == 0)
  {
    if (error)
    {
      *error = errorWithCodeAndUnderlyingError(0, 0);
    }

    v15 = _log_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache _freeDiskSpaceToSaveThumbnailRepresentingFPItem:withFileAtURL:error:];
    }

    goto LABEL_11;
  }

  maximumCacheSize = [(QLExternalThumbnailCache *)self maximumCacheSize];
  totalThumbnailsSize = [v10 totalThumbnailsSize];
  _QLFileSize = [lCopy _QLFileSize];
  longLongValue = [_QLFileSize longLongValue];

  if (longLongValue > maximumCacheSize)
  {
    if (error)
    {
      *error = errorWithCodeAndUnderlyingError(4, 0);
    }

    v15 = _log_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache _freeDiskSpaceToSaveThumbnailRepresentingFPItem:withFileAtURL:error:];
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v19 = longLongValue + totalThumbnailsSize - maximumCacheSize;
  if (v19 < 1)
  {
    v16 = 1;
    goto LABEL_13;
  }

  v46 = 0;
  v20 = [v10 deleteOldestThumbnailsToFreeAtLeastSpace:v19 & ~(v19 >> 63) error:&v46];
  v15 = v46;
  if (v20)
  {
    v21 = itemCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v20;
    v22 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v35 = v20;
      errorCopy = error;
      v37 = v10;
      v38 = lCopy;
      v39 = v21;
      v24 = *v43;
      v16 = 1;
      do
      {
        v25 = 0;
        v26 = v15;
        do
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v42 + 1) + 8 * v25);
          itemIdentifier = [v27 itemIdentifier];
          fileExtension = [v27 fileExtension];
          v30 = [(QLExternalThumbnailCache *)self _urlForThumbnailWithFPItemIdentifier:itemIdentifier fileExtension:fileExtension];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v41 = v26;
          v32 = [defaultManager removeItemAtURL:v30 error:&v41];
          v15 = v41;

          if ((v32 & 1) == 0)
          {
            v33 = _log_1();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v49 = v30;
              v50 = 2112;
              v51 = v15;
              _os_log_error_impl(&dword_1CA1E7000, v33, OS_LOG_TYPE_ERROR, "Could not delete cached thumbnail at URL: %@. Error: %@.", buf, 0x16u);
            }

            v16 = 0;
          }

          ++v25;
          v26 = v15;
        }

        while (v23 != v25);
        v23 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v23);
      lCopy = v38;
      itemCopy = v39;
      error = errorCopy;
      v10 = v37;
      v20 = v35;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    obj = _log_1();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = itemCopy;
      v50 = 2112;
      v51 = lCopy;
      v52 = 2112;
      v53 = v15;
      _os_log_error_impl(&dword_1CA1E7000, obj, OS_LOG_TYPE_ERROR, "_freeDiskSpaceToSaveThumbnailRepresentingFPItem (item: %@, url: %@) failed. Error: %@", buf, 0x20u);
    }

    v16 = 0;
  }

  if (error)
  {
    v34 = v15;
    *error = v15;
  }

LABEL_12:
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)_updateDatabaseWithCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  v10 = [(QLExternalThumbnailCache *)self db];
  if ([v10 open])
  {
    _QLFileSize = [lCopy _QLFileSize];
    longLongValue = [_QLFileSize longLongValue];

    date = [MEMORY[0x1E695DF00] date];
    pathExtension = [lCopy pathExtension];
    v21 = 0;
    v15 = [v10 insertOrReplaceThumbnailRepresentingFPItem:itemCopy size:longLongValue modificationDate:date fileExtension:pathExtension error:&v21];
    v16 = v21;

    if ((v15 & 1) == 0)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      v18 = _log_1();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v23 = itemCopy;
        v24 = 2112;
        v25 = lCopy;
        v26 = 2112;
        v27 = v16;
        _os_log_error_impl(&dword_1CA1E7000, v18, OS_LOG_TYPE_ERROR, "_updateDatabaseWithCachedThumbnailRepresentingFPItem (item: %@, url: %@) failed. Error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (error)
    {
      *error = errorWithCodeAndUnderlyingError(0, 0);
    }

    v16 = _log_1();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache _updateDatabaseWithCachedThumbnailRepresentingFPItem:withFileAtURL:error:];
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_saveToDiskCachedThumbnailRepresentingFPItem:(id)item withFileAtURL:(id)l error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = [(QLExternalThumbnailCache *)self _urlForThumbnailWithFPItem:item originalThumbnailURL:lCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v9 path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    v26 = 0;
    v13 = [defaultManager removeItemAtURL:v9 error:&v26];
    v14 = v26;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      v17 = _log_1();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [QLExternalThumbnailCache _saveToDiskCachedThumbnailRepresentingFPItem:withFileAtURL:error:];
      }

LABEL_14:

      v21 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v15;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = v15;
  v20 = [defaultManager2 moveItemAtURL:lCopy toURL:v9 error:&v25];
  v15 = v25;

  if ((v20 & 1) == 0)
  {
    if (error)
    {
      v22 = v15;
      *error = v15;
    }

    v17 = _log_1();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v28 = lCopy;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v15;
      _os_log_error_impl(&dword_1CA1E7000, v17, OS_LOG_TYPE_ERROR, "Could not save thumbnail at url: %@ to external cache url: %@. Error: %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v21 = 1;
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_createDirectoryWithURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v7 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = _log_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCache _createDirectoryWithURL:error:];
    }

    if (error)
    {
      *error = errorWithCodeAndUnderlyingError(2, v8);
    }
  }

  return v7;
}

- (id)_urlForThumbnailWithFPItem:(id)item originalThumbnailURL:(id)l
{
  lCopy = l;
  itemIdentifier = [item itemIdentifier];
  pathExtension = [lCopy pathExtension];

  v9 = [(QLExternalThumbnailCache *)self _urlForThumbnailWithFPItemIdentifier:itemIdentifier fileExtension:pathExtension];

  return v9;
}

- (id)_urlForThumbnailWithFPItemIdentifier:(id)identifier fileExtension:(id)extension
{
  thumbnailsDirectoryURL = self->_thumbnailsDirectoryURL;
  extensionCopy = extension;
  v7 = [identifier stringByReplacingOccurrencesOfString:@"/" withString:@"-"];
  v8 = [(NSURL *)thumbnailsDirectoryURL URLByAppendingPathComponent:v7];
  v9 = [v8 URLByAppendingPathExtension:extensionCopy];

  return v9;
}

- (QLExternalThumbnailCacheDatabase)db
{
  db = self->_db;
  if (!db)
  {
    v4 = [[QLExternalThumbnailCacheDatabase alloc] initWithURL:self->_databaseURL];
    v5 = self->_db;
    self->_db = v4;

    db = self->_db;
  }

  return db;
}

- (id)inboxDirectoryURL
{
  v2 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:@"inbox"];
  if (([v2 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = 0;
    v4 = [defaultManager createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
    v5 = v8;

    if ((v4 & 1) == 0)
    {
      v6 = _log_1();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [QLExternalThumbnailCache inboxDirectoryURL];
      }
    }
  }

  return v2;
}

- (void)getThumbnailCacheURLWrappersWithCompletion:(id)completion
{
  completionCopy = completion;
  FPSandboxingURLWrapperClass = getFPSandboxingURLWrapperClass();
  inboxDirectoryURL = [(QLExternalThumbnailCache *)self inboxDirectoryURL];
  v7 = [FPSandboxingURLWrapperClass wrapperWithURL:inboxDirectoryURL readonly:0 error:0];
  v8 = getFPSandboxingURLWrapperClass();
  thumbnailsDirectoryURL = [(QLExternalThumbnailCache *)self thumbnailsDirectoryURL];
  v10 = [v8 wrapperWithURL:thumbnailsDirectoryURL readonly:1 error:0];
  (*(completion + 2))(completionCopy, v7, v10);
}

+ (id)writeThumbnailImage:(CGImage *)image inInboxAtURL:(id)l
{
  lCopy = l;
  if (writeThumbnailImage_inInboxAtURL__once != -1)
  {
    +[QLExternalThumbnailCache writeThumbnailImage:inInboxAtURL:];
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v7 = [MEMORY[0x1E695DFF8] _QLTemporaryURLWithExtension:writeThumbnailImage_inInboxAtURL__fileExtension openingFileHandle:0 inDirectoryAtURL:lCopy];
  v8 = CGImageDestinationCreateWithURL(v7, writeThumbnailImage_inInboxAtURL__encodingUTI, 1uLL, 0);
  if (v8)
  {
    v9 = v8;
    CGImageDestinationAddImage(v8, image, 0);
    if (!CGImageDestinationFinalize(v9))
    {
      v10 = _log_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[QLExternalThumbnailCache writeThumbnailImage:inInboxAtURL:];
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtURL:v7 error:0];

      v7 = 0;
    }

    CFRelease(v9);
    if (startAccessingSecurityScopedResource)
    {
      goto LABEL_9;
    }
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtURL:v7 error:0];

    v7 = 0;
    if (startAccessingSecurityScopedResource)
    {
LABEL_9:
      [lCopy stopAccessingSecurityScopedResource];
    }
  }

  return v7;
}

void __61__QLExternalThumbnailCache_writeThumbnailImage_inInboxAtURL___block_invoke()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = [*MEMORY[0x1E6982E00] identifier];
  v31 = v1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v2 = getAVFileTypeAVCISymbolLoc_ptr;
  v29 = getAVFileTypeAVCISymbolLoc_ptr;
  if (!getAVFileTypeAVCISymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getAVFileTypeAVCISymbolLoc_block_invoke;
    v24 = &unk_1E8369C70;
    v25 = &v26;
    v3 = AVFoundationLibrary();
    v27[3] = dlsym(v3, "AVFileTypeAVCI");
    getAVFileTypeAVCISymbolLoc_ptr = *(v25[1] + 24);
    v2 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v2)
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    __break(1u);
  }

  v32 = *v2;
  v4 = *MEMORY[0x1E6982E58];
  v5 = v32;
  v6 = [v4 identifier];
  v33 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([(__CFArray *)v0 containsObject:v12, v17])
        {
          objc_storeStrong(&writeThumbnailImage_inInboxAtURL__encodingUTI, v12);
          v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:writeThumbnailImage_inInboxAtURL__encodingUTI];
          v14 = [v13 preferredFilenameExtension];
          v15 = writeThumbnailImage_inInboxAtURL__fileExtension;
          writeThumbnailImage_inInboxAtURL__fileExtension = v14;

          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (!writeThumbnailImage_inInboxAtURL__fileExtension)
  {
    __61__QLExternalThumbnailCache_writeThumbnailImage_inInboxAtURL___block_invoke_cold_1();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)writeThumbnailImageInInbox:(CGImage *)inbox
{
  v5 = objc_opt_class();
  inboxDirectoryURL = [(QLExternalThumbnailCache *)self inboxDirectoryURL];
  v7 = [v5 writeThumbnailImage:inbox inInboxAtURL:inboxDirectoryURL];

  return v7;
}

- (void)thumbnailURLForItem:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Could not obtain path extension from DB for item: %@ because could not open DB.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailURLForItem:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not obtain path extension from DB for item: %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeAllThumbnails:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not delete cached thumbnail at URL: %@. Error: %@.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeAllThumbnails:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Could not delete thumbnails from cache because did not obtain the URLs of the thumbnails returned nil. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_freeDiskSpaceToSaveThumbnailRepresentingFPItem:withFileAtURL:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "_freeDiskSpaceToSaveThumbnailRepresentingFPItem for item: %@ failed because could not open DB.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_freeDiskSpaceToSaveThumbnailRepresentingFPItem:withFileAtURL:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "_freeDiskSpaceToSaveThumbnailRepresentingFPItem for item: %@ failed because the thumbnails is too large to fit the maximum cache size.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateDatabaseWithCachedThumbnailRepresentingFPItem:withFileAtURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Can't save thumbnail at url: %@ for FPItem: %@ because could not open database.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_saveToDiskCachedThumbnailRepresentingFPItem:withFileAtURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not remove existing thumbnail from external cache at url: %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createDirectoryWithURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not create directory at url %@ to store thumbnails on the device (error %@).");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)inboxDirectoryURL
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "could not create inbox directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)writeThumbnailImage:inInboxAtURL:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Failed storing thumbnail as %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end