@interface PHImportLibrarySource
+ (BOOL)_isValidPhotoLibrary:(id)a3 error:(id *)a4;
+ (id)importLibrarySourceForURL:(id)a3 exceptions:(id *)a4;
+ (id)supportedImportLibraryTypes;
- (BOOL)_isValidPhotoLibraryWithError:(id *)a3;
- (PHImportLibrarySource)initWithURLs:(id)a3;
- (id)_resourcePathsByUuidForPaths:(id)a3;
- (id)assetsByProcessingItem:(id)a3;
- (id)name;
- (void)beginProcessingWithCompletion:(id)a3;
- (void)loadSidecarsFor:(id)a3;
@end

@implementation PHImportLibrarySource

- (BOOL)_isValidPhotoLibraryWithError:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69BE688];
  v5 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  v6 = [v4 sharedAssetsdClientForPhotoLibraryURL:v5];

  v7 = [v6 libraryClient];
  v13 = 0;
  v8 = [v7 isLibraryReadyForImportWithError:&v13];
  v9 = v13;

  if (a3 && (v8 & 1) == 0)
  {
    *a3 = PHErrorFromPLError(v9);
    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a3;
      *buf = 136446466;
      v15 = "[PHImportLibrarySource _isValidPhotoLibraryWithError:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "ERROR: %{public}s Library not valid for import. Error: %@", buf, 0x16u);
    }
  }

  return v8;
}

- (id)name
{
  v2 = [(PHImportUrlSource *)self prefix];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  return v4;
}

- (void)loadSidecarsFor:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[PHImportLibrarySource loadSidecarsFor:]";
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%s should never be called on an PHImportLibrarySource", &v4, 0xCu);
  }
}

- (id)assetsByProcessingItem:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHImportUrlSource *)self resourcePathsByIdentifier];
  v37 = v4;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
        v15 = [(PHImportAsset *)PHImportLibraryAsset assetFileForURL:v14 source:self withUuid:0];

        if (v15)
        {
          if ([v15 isSidecar])
          {
            [v8 insertObject:v15 atIndex:0];
          }

          else
          {
            [v8 addObject:v15];
          }
        }

        else
        {
          v16 = [v13 lastPathComponent];
          v17 = [(PHImportExceptionRecorder *)self addExceptionWithType:1 path:v16 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportLibrarySource.m" line:132];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v10);
  }

  v18 = [(NSDictionary *)self->_renderResourcePathsByIdentifier objectForKeyedSubscript:v37];
  v19 = [v18 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = v19;
  v20 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v35);
        }

        v24 = *(*(&v38 + 1) + 8 * j);
        v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v24];
        v26 = [(PHImportAsset *)PHImportLibraryAsset assetFileForURL:v25 source:self withUuid:v37];

        if (!v26)
        {
          v27 = [v24 lastPathComponent];
          v28 = [(PHImportExceptionRecorder *)self addExceptionWithType:1 path:v27 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportLibrarySource.m" line:158];

          goto LABEL_31;
        }

        if ([v26 isSidecar])
        {
          [v8 insertObject:v26 atIndex:0];
          goto LABEL_31;
        }

        if ([v26 isImage])
        {
          v29 = [v26 isBase] == 0;
          v30 = 5;
          v31 = 8;
LABEL_26:
          if (v29)
          {
            v32 = v30;
          }

          else
          {
            v32 = v31;
          }

          [v26 setResourceType:v32];
          goto LABEL_30;
        }

        if ([v26 isMovie])
        {
          v29 = [v26 isBase] == 0;
          v30 = 6;
          v31 = 12;
          goto LABEL_26;
        }

LABEL_30:
        [v8 addObject:v26];
LABEL_31:
      }

      v21 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v21);
  }

  if ([v8 count])
  {
    v33 = [(PHImportSource *)self processAssets:v8];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)beginProcessingWithCompletion:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  pathManager = self->_pathManager;
  v5 = a3;
  v6 = [(PLPhotoLibraryPathManager *)pathManager photoDirectoryWithType:4];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [(PHImportUrlSource *)self resourcePathsInUrls:v8];

  v10 = [(PHImportLibrarySource *)self _resourcePathsByUuidForPaths:v9];
  [(PHImportUrlSource *)self setResourcePathsByIdentifier:v10];

  v11 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:9];
  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v23 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v14 = [(PHImportUrlSource *)self resourcePathsInUrls:v13];

  v15 = [(PHImportLibrarySource *)self _resourcePathsByUuidForPaths:v14];
  renderResourcePathsByIdentifier = self->_renderResourcePathsByIdentifier;
  self->_renderResourcePathsByIdentifier = v15;

  v17 = [(PHImportUrlSource *)self resourcePathsByIdentifier];
  v18 = [v17 allKeys];
  v19 = [v18 mutableCopy];
  [(PHImportSource *)self setItems:v19];

  v20 = [(PHImportSource *)self items];
  v21 = [v20 count];
  v22 = [(PHImportSource *)self progress];
  [v22 setTotalUnitCount:v21];

  v5[2](v5);
}

- (id)_resourcePathsByUuidForPaths:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MEMORY[0x1E69BF298];
        v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:{v10, v16}];
        v13 = [v11 uuidFromURL:v12];

        v14 = [v4 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count") >> 1}];
          [v4 setObject:v14 forKeyedSubscript:v13];
        }

        [v14 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (PHImportLibrarySource)initWithURLs:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] == 1 && (v11.receiver = self, v11.super_class = PHImportLibrarySource, (self = -[PHImportUrlSource initWithURLs:](&v11, sel_initWithURLs_, v4)) != 0))
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    libraryURL = self->_libraryURL;
    self->_libraryURL = v5;

    v7 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:self->_libraryURL];
    pathManager = self->_pathManager;
    self->_pathManager = v7;

    [(PHImportUrlSource *)self setIsReadonlyVolume:1];
  }

  else
  {
    v9 = PLImportGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Unexpected: Attempting to create a library import source with more than on URL: %@", buf, 0xCu);
    }

    self = 0;
  }

  return self;
}

+ (BOOL)_isValidPhotoLibrary:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69BE688] sharedAssetsdClientForPhotoLibraryURL:a3];
  v6 = [v5 libraryClient];
  v12 = 0;
  v7 = [v6 isLibraryReadyForImportWithError:&v12];
  v8 = v12;

  if (a4 && (v7 & 1) == 0)
  {
    *a4 = PHErrorFromPLError(v8);
    v9 = PLImportGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *a4;
      *buf = 136446466;
      v14 = "+[PHImportLibrarySource _isValidPhotoLibrary:error:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "ERROR: %{public}s Library not valid for import. Error: %@", buf, 0x16u);
    }
  }

  return v7;
}

+ (id)supportedImportLibraryTypes
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C08F0] photosLibraryType];
  v3 = [MEMORY[0x1E69C08F0] apertureLibraryType];
  v7[1] = v3;
  v4 = [MEMORY[0x1E69C08F0] iPhotoLibraryType];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)importLibrarySourceForURL:(id)a3 exceptions:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v22 = 0;
  v8 = [a1 _isValidPhotoLibrary:v6 error:&v22];
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    v11 = [PHImportLibrarySource alloc];
    v26[0] = v6;
    v12 = v26;
  }

  else
  {
    if ([v9 code] != 6209)
    {
      if (a4)
      {
        v17 = [PHImportException alloc];
        v18 = [v6 path];
        v19 = [v18 lastPathComponent];
        v20 = [(PHImportException *)v17 initWithType:7 path:v19 underlyingError:v10 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportLibrarySource.m" line:51];
        [v7 addObject:v20];

        v14 = 0;
        *a4 = [v7 copy];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_12;
    }

    v11 = [PHImportLegacyLibrarySource alloc];
    v25 = v6;
    v12 = &v25;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v14 = [(PHImportLibrarySource *)v11 initWithURLs:v13];

  if (v14)
  {
    v15 = PLImportGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromClass(a1);
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "Attempting to import library with %@", buf, 0xCu);
    }
  }

LABEL_12:

  return v14;
}

@end