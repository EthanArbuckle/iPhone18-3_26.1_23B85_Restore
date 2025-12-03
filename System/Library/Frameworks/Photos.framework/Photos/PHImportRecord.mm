@interface PHImportRecord
- (BOOL)canReference;
- (NSString)rawAssetIdentifier;
- (PHImportRecord)initWithImportAsset:(id)asset;
- (id)allAssetIdentifiers;
- (id)allImportAssets;
- (id)allImportRecords;
- (id)description;
- (id)descriptionWithPrefix:(id)prefix;
- (id)recordForAsset:(id)asset;
- (void)addRelatedRecord:(id)record;
- (void)cleanupAfterFailure;
@end

@implementation PHImportRecord

- (BOOL)canReference
{
  canReference = [(PHImportAsset *)self->_importAsset canReference];
  if (canReference)
  {
    source = [(PHImportAsset *)self->_importAsset source];
    canReference2 = [source canReference];

    LOBYTE(canReference) = canReference2;
  }

  return canReference;
}

- (id)allImportRecords
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  relatedRecords = [(PHImportRecord *)self relatedRecords];
  v5 = [relatedRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(relatedRecords);
        }

        allImportRecords = [*(*(&v11 + 1) + 8 * i) allImportRecords];
        [v3 addObjectsFromArray:allImportRecords];
      }

      v6 = [relatedRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allImportAssets
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  importAsset = [(PHImportRecord *)self importAsset];
  [v3 addObject:importAsset];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  relatedRecords = [(PHImportRecord *)self relatedRecords];
  v6 = [relatedRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(relatedRecords);
        }

        allImportAssets = [*(*(&v12 + 1) + 8 * i) allImportAssets];
        [v3 addObjectsFromArray:allImportAssets];
      }

      v7 = [relatedRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)recordForAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  selfCopy = self;
  importAsset = [(PHImportRecord *)selfCopy importAsset];

  if (importAsset != assetCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    relatedRecords = [(PHImportRecord *)selfCopy relatedRecords];
    v8 = [relatedRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;

      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(relatedRecords);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) recordForAsset:assetCopy];
          if (v12)
          {
            selfCopy = v12;
            goto LABEL_12;
          }
        }

        v9 = [relatedRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      selfCopy = 0;
    }

LABEL_12:
  }

  return selfCopy;
}

- (void)addRelatedRecord:(id)record
{
  recordCopy = record;
  relatedRecords = self->_relatedRecords;
  v8 = recordCopy;
  if (!relatedRecords)
  {
    v6 = objc_opt_new();
    v7 = self->_relatedRecords;
    self->_relatedRecords = v6;

    recordCopy = v8;
    relatedRecords = self->_relatedRecords;
  }

  [(NSMutableArray *)relatedRecords addObject:recordCopy];
  [v8 setImportType:{-[PHImportRecord importType](self, "importType")}];
}

- (NSString)rawAssetIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  rawAssetIdentifier = self->_rawAssetIdentifier;
  if (!rawAssetIdentifier)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    relatedRecords = [(PHImportRecord *)self relatedRecords];
    v5 = [relatedRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    v7 = *v15;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(relatedRecords);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        importAsset = [v9 importAsset];
        if ([importAsset isRAW])
        {
          assetIdentifier = [v9 assetIdentifier];

          if (!assetIdentifier)
          {
            continue;
          }

          assetIdentifier2 = [v9 assetIdentifier];
          importAsset = self->_rawAssetIdentifier;
          self->_rawAssetIdentifier = assetIdentifier2;
        }
      }

      v6 = [relatedRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v6)
      {
LABEL_13:

        rawAssetIdentifier = self->_rawAssetIdentifier;
        break;
      }
    }
  }

  return rawAssetIdentifier;
}

- (id)allAssetIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  assetIdentifier = [(PHImportRecord *)self assetIdentifier];

  if (assetIdentifier)
  {
    assetIdentifier2 = [(PHImportRecord *)self assetIdentifier];
    [v3 addObject:assetIdentifier2];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  relatedRecords = [(PHImportRecord *)self relatedRecords];
  v7 = [relatedRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(relatedRecords);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        assetIdentifier3 = [v11 assetIdentifier];

        if (assetIdentifier3)
        {
          assetIdentifier4 = [v11 assetIdentifier];
          [v3 addObject:assetIdentifier4];
        }
      }

      v8 = [relatedRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)cleanupAfterFailure
{
  v16 = *MEMORY[0x1E69E9840];
  downloadedPath = [(PHImportRecord *)self downloadedPath];

  if (downloadedPath)
  {
    downloadedPath2 = [(PHImportRecord *)self downloadedPath];
    v5 = [PHImporter removeItemAtPath:downloadedPath2 type:0 recursive:0];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_relatedRecords;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) cleanupAfterFailure];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)descriptionWithPrefix:(id)prefix
{
  v43 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v5 = MEMORY[0x1E696AEC0];
  importAsset = [(PHImportRecord *)self importAsset];
  fileName = [importAsset fileName];
  assetIdentifier = [(PHImportRecord *)self assetIdentifier];
  v9 = assetIdentifier;
  if (assetIdentifier)
  {
    v10 = assetIdentifier;
  }

  else
  {
    v10 = &stru_1F0FC60C8;
  }

  v11 = [v5 stringWithFormat:@"\n%@Asset: %@ <%@>", prefixCopy, fileName, v10];

  importAsset2 = [(PHImportRecord *)self importAsset];
  v13 = [importAsset2 url];
  path = [v13 path];
  v15 = path;
  if (path)
  {
    v16 = path;
  }

  else
  {
    v16 = &stru_1F0FC60C8;
  }

  v17 = [v11 stringByAppendingFormat:@"\n%@Source Path: %@", prefixCopy, v16];

  downloadedPath = [(PHImportRecord *)self downloadedPath];
  v19 = downloadedPath;
  if (downloadedPath)
  {
    v20 = downloadedPath;
  }

  else
  {
    v20 = &stru_1F0FC60C8;
  }

  v21 = [v17 stringByAppendingFormat:@"\n%@Destination Path: %@", prefixCopy, v20];

  importAsset3 = [(PHImportRecord *)self importAsset];
  metadata = [importAsset3 metadata];
  v24 = [v21 stringByAppendingFormat:@"\n%@Metadata: <%p>", prefixCopy, metadata];

  relatedRecords = [(PHImportRecord *)self relatedRecords];
  v26 = [relatedRecords count];

  if (v26)
  {
    prefixCopy = [v24 stringByAppendingFormat:@"\n%@Additional Assets:\n", prefixCopy];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    relatedRecords2 = [(PHImportRecord *)self relatedRecords];
    v29 = [relatedRecords2 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      do
      {
        v32 = 0;
        v33 = prefixCopy;
        do
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(relatedRecords2);
          }

          v34 = *(*(&v38 + 1) + 8 * v32);
          prefixCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t", prefixCopy];
          v36 = [v34 descriptionWithPrefix:prefixCopy2];
          prefixCopy = [v33 stringByAppendingString:v36];

          ++v32;
          v33 = prefixCopy;
        }

        while (v30 != v32);
        v30 = [relatedRecords2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v30);
    }

    v24 = prefixCopy;
  }

  return v24;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PHImportRecord *)self descriptionWithPrefix:&stru_1F0FC60C8];
  exceptions = [(PHImportExceptionRecorder *)self exceptions];
  v5 = [exceptions count];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nExceptions:"];
    v7 = [v3 stringByAppendingString:v6];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    exceptions2 = [(PHImportExceptionRecorder *)self exceptions];
    v9 = [exceptions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(exceptions2);
          }

          v7 = [v13 stringByAppendingFormat:@"\n\t%@", *(*(&v15 + 1) + 8 * v12)];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [exceptions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v3 = v7;
  }

  return v3;
}

- (PHImportRecord)initWithImportAsset:(id)asset
{
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = PHImportRecord;
  v6 = [(PHImportExceptionRecorder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importAsset, asset);
    v8 = [PHImportTimerCollection alloc];
    if ([assetCopy isImage])
    {
      v9 = 1;
    }

    else if ([assetCopy isMovie])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = -[PHImportTimerCollection initForMediaType:fileSize:](v8, "initForMediaType:fileSize:", v9, [assetCopy fileSize]);
    timers = v7->_timers;
    v7->_timers = v10;
  }

  return v7;
}

@end