@interface PHImportRecord
- (BOOL)canReference;
- (NSString)rawAssetIdentifier;
- (PHImportRecord)initWithImportAsset:(id)a3;
- (id)allAssetIdentifiers;
- (id)allImportAssets;
- (id)allImportRecords;
- (id)description;
- (id)descriptionWithPrefix:(id)a3;
- (id)recordForAsset:(id)a3;
- (void)addRelatedRecord:(id)a3;
- (void)cleanupAfterFailure;
@end

@implementation PHImportRecord

- (BOOL)canReference
{
  v3 = [(PHImportAsset *)self->_importAsset canReference];
  if (v3)
  {
    v4 = [(PHImportAsset *)self->_importAsset source];
    v5 = [v4 canReference];

    LOBYTE(v3) = v5;
  }

  return v3;
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
  v4 = [(PHImportRecord *)self relatedRecords];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) allImportRecords];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allImportAssets
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(PHImportRecord *)self importAsset];
  [v3 addObject:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PHImportRecord *)self relatedRecords];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) allImportAssets];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)recordForAsset:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = [(PHImportRecord *)v5 importAsset];

  if (v6 != v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(PHImportRecord *)v5 relatedRecords];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) recordForAsset:v4];
          if (v12)
          {
            v5 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v5 = 0;
    }

LABEL_12:
  }

  return v5;
}

- (void)addRelatedRecord:(id)a3
{
  v4 = a3;
  relatedRecords = self->_relatedRecords;
  v8 = v4;
  if (!relatedRecords)
  {
    v6 = objc_opt_new();
    v7 = self->_relatedRecords;
    self->_relatedRecords = v6;

    v4 = v8;
    relatedRecords = self->_relatedRecords;
  }

  [(NSMutableArray *)relatedRecords addObject:v4];
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
    v4 = [(PHImportRecord *)self relatedRecords];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 importAsset];
        if ([v10 isRAW])
        {
          v11 = [v9 assetIdentifier];

          if (!v11)
          {
            continue;
          }

          v12 = [v9 assetIdentifier];
          v10 = self->_rawAssetIdentifier;
          self->_rawAssetIdentifier = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(PHImportRecord *)self assetIdentifier];

  if (v4)
  {
    v5 = [(PHImportRecord *)self assetIdentifier];
    [v3 addObject:v5];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PHImportRecord *)self relatedRecords];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 assetIdentifier];

        if (v12)
        {
          v13 = [v11 assetIdentifier];
          [v3 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)cleanupAfterFailure
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PHImportRecord *)self downloadedPath];

  if (v3)
  {
    v4 = [(PHImportRecord *)self downloadedPath];
    v5 = [PHImporter removeItemAtPath:v4 type:0 recursive:0];
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

- (id)descriptionWithPrefix:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PHImportRecord *)self importAsset];
  v7 = [v6 fileName];
  v8 = [(PHImportRecord *)self assetIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F0FC60C8;
  }

  v11 = [v5 stringWithFormat:@"\n%@Asset: %@ <%@>", v4, v7, v10];

  v12 = [(PHImportRecord *)self importAsset];
  v13 = [v12 url];
  v14 = [v13 path];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F0FC60C8;
  }

  v17 = [v11 stringByAppendingFormat:@"\n%@Source Path: %@", v4, v16];

  v18 = [(PHImportRecord *)self downloadedPath];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1F0FC60C8;
  }

  v21 = [v17 stringByAppendingFormat:@"\n%@Destination Path: %@", v4, v20];

  v22 = [(PHImportRecord *)self importAsset];
  v23 = [v22 metadata];
  v24 = [v21 stringByAppendingFormat:@"\n%@Metadata: <%p>", v4, v23];

  v25 = [(PHImportRecord *)self relatedRecords];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [v24 stringByAppendingFormat:@"\n%@Additional Assets:\n", v4];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = [(PHImportRecord *)self relatedRecords];
    v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      do
      {
        v32 = 0;
        v33 = v27;
        do
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v38 + 1) + 8 * v32);
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t", v4];
          v36 = [v34 descriptionWithPrefix:v35];
          v27 = [v33 stringByAppendingString:v36];

          ++v32;
          v33 = v27;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v30);
    }

    v24 = v27;
  }

  return v24;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PHImportRecord *)self descriptionWithPrefix:&stru_1F0FC60C8];
  v4 = [(PHImportExceptionRecorder *)self exceptions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nExceptions:"];
    v7 = [v3 stringByAppendingString:v6];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(PHImportExceptionRecorder *)self exceptions];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          v7 = [v13 stringByAppendingFormat:@"\n\t%@", *(*(&v15 + 1) + 8 * v12)];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v3 = v7;
  }

  return v3;
}

- (PHImportRecord)initWithImportAsset:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PHImportRecord;
  v6 = [(PHImportExceptionRecorder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importAsset, a3);
    v8 = [PHImportTimerCollection alloc];
    if ([v5 isImage])
    {
      v9 = 1;
    }

    else if ([v5 isMovie])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = -[PHImportTimerCollection initForMediaType:fileSize:](v8, "initForMediaType:fileSize:", v9, [v5 fileSize]);
    timers = v7->_timers;
    v7->_timers = v10;
  }

  return v7;
}

@end