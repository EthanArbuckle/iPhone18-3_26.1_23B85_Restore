@interface PHImporter
+ (id)removeItemAtPath:(id)a3 type:(unint64_t)a4 recursive:(BOOL)a5;
+ (void)dumpImageData:(id)a3;
+ (void)dumpMetadataForData:(id)a3;
+ (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibrary:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 atEnd:(id)a9;
- (BOOL)handleErrorsForRecord:(id)a3 batch:(id)a4 file:(char *)a5 line:(int)a6;
- (BOOL)shouldImportRecordAsReference:(id)a3;
- (PHImporter)initWithLibrary:(id)a3 options:(id)a4 source:(id)a5 delegate:(id)a6 completionHandler:(id)a7;
- (id)_importRecord:(id)a3 createdAlbumIdentifiers:(id)a4 createdFolderIdentifiers:(id)a5;
- (id)_recordsToImportWithCount:(unint64_t)a3;
- (id)beginImport:(id)a3;
- (id)createAlbumForPath:(id)a3 inFolder:(id)a4 error:(id *)a5;
- (id)createFolderForPath:(id)a3 inFolder:(id)a4 error:(id *)a5;
- (id)folderChangeRequestForFolder:(id)a3;
- (id)getDestinationUrlForImportAsset:(id)a3;
- (id)makeDownloadUrlForParentFolderPath:(id)a3;
- (id)relativePathComponentsForAlbumPath:(id)a3 fromRootPath:(id)a4;
- (id)removeImportDirectoryForLibrary:(id)a3;
- (void)_applyFastVideoModernizationToRecord:(id)a3;
- (void)addDescriptionPropertiesFromImportAsset:(id)a3 toCreationRequest:(id)a4;
- (void)addLibraryPropertiesFromImportAssetBundleAsset:(id)a3 toCreationRequest:(id)a4;
- (void)addRecordToResults:(id)a3;
- (void)cancellationHandler;
- (void)downloadNextAssetInRecord:(id)a3 toURL:(id)a4 subRecordEnumerator:(id)a5 completionHandler:(id)a6;
- (void)ensureContainersExistForAlbumPath:(id)a3 forAsset:(id)a4 completion:(id)a5;
- (void)ensureEnoughDiskSpaceAvailableIfNeededForAssets:(id)a3 completion:(id)a4;
- (void)finishImport;
- (void)importNextAsset:(id)a3;
- (void)importRecords:(id)a3;
- (void)importRecords:(id)a3 completionHandler:(id)a4;
- (void)importedBurstAsset:(id)a3;
- (void)performLegacyDiskSpaceCheckForRequiredBytes:(int64_t)a3 forPath:(id)a4 withCompletion:(id)a5;
- (void)updateAlbumCacheWithAlbumIdentifiers:(id)a3;
- (void)updateFolderCacheWithFolders:(id)a3;
- (void)validateSourceForAsset:(id)a3;
@end

@implementation PHImporter

- (id)removeImportDirectoryForLibrary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pathManager];
  v6 = [v5 isUBF];

  if (v6)
  {
    v7 = [v4 pathManager];
    v29 = 0;
    v8 = [v7 externalDirectoryWithSubType:1 leafType:1 additionalPathComponents:0 createIfNeeded:0 error:&v29];
    v9 = v29;

    if (v8)
    {
      v10 = [objc_opt_class() removeItemAtPath:v8 type:1 recursive:1];

      v9 = v10;
    }
  }

  else
  {
    dispatch_assert_queue_V2(self->_importQueue);
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_parentFolderMapping, "count")}];
    parentFolderMapping = self->_parentFolderMapping;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__PHImporter_removeImportDirectoryForLibrary___block_invoke;
    v27[3] = &unk_1E75A7980;
    v27[4] = self;
    v28 = v11;
    v13 = v11;
    [(NSMutableDictionary *)parentFolderMapping enumerateKeysAndObjectsUsingBlock:v27];
    [(NSMutableDictionary *)self->_parentFolderMapping removeObjectsForKeys:v13];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_additionalDcimImportFolders, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_additionalDcimImportFolders;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          importFileManager = self->_importFileManager;
          v21 = [v19 path];
          LODWORD(importFileManager) = [(PLImportFileManager *)importFileManager removeUnusedDCIMDirectoryAtPath:v21];

          if (importFileManager)
          {
            [v8 addObject:v19];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v16);
    }

    [(NSMutableArray *)self->_additionalDcimImportFolders removeObjectsInArray:v8];
    v9 = 0;
  }

  return v9;
}

void __46__PHImporter_removeImportDirectoryForLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(*(a1 + 32) + 40);
  v6 = [a3 path];
  LODWORD(v5) = [v5 removeUnusedDCIMDirectoryAtPath:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (void)importedBurstAsset:(id)a3
{
  v4 = a3;
  importedBurstUUIDs = self->_importedBurstUUIDs;
  v9 = v4;
  if (!importedBurstUUIDs)
  {
    v6 = objc_opt_new();
    v7 = self->_importedBurstUUIDs;
    self->_importedBurstUUIDs = v6;

    v4 = v9;
    importedBurstUUIDs = self->_importedBurstUUIDs;
  }

  v8 = [v4 burstUUID];
  [(NSMutableSet *)importedBurstUUIDs addObject:v8];
}

- (void)cancellationHandler
{
  importQueue = self->_importQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PHImporter_cancellationHandler__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_async(importQueue, block);
}

void *__33__PHImporter_cancellationHandler__block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 80) & 1) == 0)
  {
    v2 = result;
    *(v1 + 80) = 1;
    [*(result[4] + 152) setResult:3];
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "IMPORT CANCELLED: during download, finishing", v6, 2u);
    }

    v4 = [v2[4] cacheDeleteClient];

    if (v4)
    {
      v5 = [v2[4] cacheDeleteClient];
      [v5 cancelDiskSpaceAvailabilityRequest];
    }

    result = v2[4];
    if (!*(result + 32))
    {
      return [result finishImport];
    }
  }

  return result;
}

- (id)createAlbumForPath:(id)a3 inFolder:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 lastPathComponent];
  v11 = [PHAssetCollectionChangeRequest creationRequestForAssetCollectionWithTitle:v10];

  v12 = [v11 placeholderForCreatedAssetCollection];
  if (v12)
  {
    [(NSMutableDictionary *)self->_albumByAlbumPath setObject:v12 forKeyedSubscript:v8];
    v13 = [v12 localIdentifier];
    if (v13)
    {
      [(NSMutableDictionary *)self->_containerPathByLocalIdentifier setObject:v8 forKeyedSubscript:v13];
    }

    v14 = [(PHImporter *)self folderChangeRequestForFolder:v9];
    v22[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v14 addChildCollections:v15];

    v16 = 0;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No error was returned from -[PHPhotoLibrary performChangesAndWait:error:] but the album local identifier was nil for %@", v8];
    v21 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v17 errorWithDomain:@"com.apple.ImportErrorDomain" code:-6 userInfo:v14];
  }

  if (a5)
  {
    v18 = v16;
    *a5 = v16;
  }

  return v11;
}

- (void)ensureContainersExistForAlbumPath:(id)a3 forAsset:(id)a4 completion:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_albumByAlbumPath objectForKeyedSubscript:v8];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v11)
  {
    albumRequestsByAlbumId = self->_albumRequestsByAlbumId;
    v13 = [v11 localIdentifier];
    v14 = [(NSMutableDictionary *)albumRequestsByAlbumId objectForKeyedSubscript:v13];

    if (!v14)
    {
      v14 = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:v11];
      v15 = [v11 localIdentifier];
      if (v15)
      {
        [(NSMutableDictionary *)self->_albumRequestsByAlbumId setObject:v14 forKeyedSubscript:v15];
      }
    }

    v58 = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [v14 addAssets:v16];
LABEL_7:
    v17 = 0;
    goto LABEL_42;
  }

  v14 = [(PHImportSource *)self->_source prefix];
  v18 = [(NSMutableDictionary *)self->_folderByFolderPath objectForKeyedSubscript:v14];
  if (!v18)
  {
    v16 = PLImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v36 = [v14 lastPathComponent];
      *buf = 138412290;
      v61 = v36;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Failed to create root folder '%@'", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v46 = v10;
  v19 = v18;
  v20 = [(PHImporter *)self relativePathComponentsForAlbumPath:v8 fromRootPath:v14];
  v21 = v14;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v54 objects:v64 count:16];
  v50 = v22;
  v47 = v9;
  v48 = v8;
  v45 = v21;
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    v26 = v22;
    while (2)
    {
      v27 = 0;
      v28 = v21;
      v29 = v19;
      do
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v26);
        }

        v21 = [v28 stringByAppendingPathComponent:*(*(&v54 + 1) + 8 * v27)];

        v30 = [(NSMutableDictionary *)self->_folderByFolderPath objectForKeyedSubscript:v21];

        if (!v30)
        {
          v53 = 0;
          v31 = self;
          v32 = [(PHImporter *)self createFolderForPath:v21 inFolder:v29 error:&v53];
          v33 = v53;
          if (v33)
          {
            v37 = v33;
            v38 = PLImportGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = [v21 lastPathComponent];
              *buf = 138412546;
              v61 = v39;
              v62 = 2112;
              v63 = v37;
              _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "Failed to create folder '%@' (%@)", buf, 0x16u);
            }

            v17 = 0;
            v19 = v26;
            goto LABEL_40;
          }

          v30 = [v32 placeholderForCreatedCollectionList];
          v34 = [v30 localIdentifier];
          if (v34)
          {
            [v51 addObject:v34];
            [(NSMutableDictionary *)v31->_folderRequestByFolderId setObject:v32 forKeyedSubscript:v34];
          }

          else
          {
            v35 = PLImportGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v49 = [v30 localizedTitle];
              *buf = 138412290;
              v61 = v49;
              _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Failed to get a valid local identifier for collection '%@'", buf, 0xCu);
            }

            v26 = v50;
          }

          self = v31;
        }

        v19 = v30;

        ++v27;
        v28 = v21;
        v29 = v19;
      }

      while (v24 != v27);
      v24 = [v26 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    if (v19)
    {
      v9 = v47;
      v8 = v48;
      goto LABEL_32;
    }

    v17 = 0;
  }

  else
  {

LABEL_32:
    v52 = 0;
    [(PHImporter *)self createAlbumForPath:v8 inFolder:v19 error:&v52];
    v32 = v40 = self;
    v37 = v52;
    if (v37)
    {
      v38 = PLImportGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = v8;
        v62 = 2112;
        v63 = v37;
        _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "Failed to lookup or create folder path to album '%@' (%@)", buf, 0x16u);
      }

      v17 = 0;
    }

    else
    {
      v41 = v40;
      v59 = v9;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [v32 addAssets:v42];

      v43 = [v32 placeholderForCreatedAssetCollection];
      v38 = [v43 localIdentifier];

      if (v38)
      {
        [(NSMutableDictionary *)v41->_albumRequestsByAlbumId setObject:v32 forKeyedSubscript:v38];
      }

      v17 = [v32 placeholderForCreatedAssetCollection];
    }

    v29 = v19;
LABEL_40:
  }

  v9 = v47;
  v8 = v48;
  v10 = v46;

  v14 = v45;
  v11 = 0;
  v16 = v50;
LABEL_42:

  if (v10)
  {
    v44 = [v17 localIdentifier];
    v10[2](v10, v44, v51);
  }
}

- (id)relativePathComponentsForAlbumPath:(id)a3 fromRootPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (v7 = [v5 length], v7 > objc_msgSend(v6, "length")))
  {
    v8 = [v5 substringFromIndex:{objc_msgSend(v6, "length") + 1}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 componentsSeparatedByString:@"/"];

  return v9;
}

- (void)addRecordToResults:(id)a3
{
  importQueue = self->_importQueue;
  v5 = a3;
  dispatch_assert_queue_V2(importQueue);
  v6 = [(PHImporter *)self results];
  [v6 addImportRecord:v5];

  v7 = [(PHImporter *)self progress];
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completedImportRecord:v5];
}

- (void)updateFolderCacheWithFolders:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
  v6 = [PHCollectionList fetchCollectionListsWithLocalIdentifiers:v4 options:v5];

  v19 = v6;
  v7 = [v6 fetchedObjects];
  if (![v7 count])
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "no PHCollectionLists for %@", buf, 0xCu);
    }
  }

  v20 = v4;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        containerPathByLocalIdentifier = self->_containerPathByLocalIdentifier;
        v16 = [v14 localIdentifier];
        v17 = [(NSMutableDictionary *)containerPathByLocalIdentifier objectForKeyedSubscript:v16];

        if (v17)
        {
          [(NSMutableDictionary *)self->_folderByFolderPath setObject:v14 forKeyedSubscript:v17];
        }

        else
        {
          v18 = PLImportGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "pathKey should have existed unless we are trying to update a container that did not previously have a cached placeholder", buf, 2u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)updateAlbumCacheWithAlbumIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
  v6 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v4 options:v5];

  v19 = v6;
  v7 = [v6 fetchedObjects];
  v8 = v7;
  v20 = v4;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          containerPathByLocalIdentifier = self->_containerPathByLocalIdentifier;
          v15 = [v13 localIdentifier];
          v16 = [(NSMutableDictionary *)containerPathByLocalIdentifier objectForKeyedSubscript:v15];

          if (v16)
          {
            [(NSMutableDictionary *)self->_albumByAlbumPath setObject:v13 forKeyedSubscript:v16];
          }

          else
          {
            v17 = PLImportGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "pathKey should have existed unless we are trying to update a container that did not previously have a cached placeholder", buf, 2u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v18 = PLImportGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "no PHAssetCollection for identifiers: %@", buf, 0xCu);
    }
  }
}

- (id)folderChangeRequestForFolder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  folderRequestByFolderId = self->_folderRequestByFolderId;
  v6 = [v4 localIdentifier];
  v7 = [(NSMutableDictionary *)folderRequestByFolderId objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [PHCollectionListChangeRequest changeRequestForCollectionList:v4];
    v8 = [v4 localIdentifier];
    if (v8 && v7)
    {
      [(NSMutableDictionary *)self->_folderRequestByFolderId setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      v9 = PLImportGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        v12 = v8;
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to get a local identifier (%p) or request (%p) for collection", &v11, 0x16u);
      }
    }
  }

  return v7;
}

- (id)createFolderForPath:(id)a3 inFolder:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 lastPathComponent];
    v11 = [PHCollectionListChangeRequest creationRequestForCollectionListWithTitle:v10];

    v12 = [v11 placeholderForCreatedCollectionList];
    if (v12)
    {
      v13 = [(PHImporter *)self folderChangeRequestForFolder:v9];
      v26[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v13 addChildCollections:v14];

      [(NSMutableDictionary *)self->_folderByFolderPath setObject:v12 forKeyedSubscript:v8];
      v15 = [v12 localIdentifier];
      if (v15)
      {
        containerPathByLocalIdentifier = self->_containerPathByLocalIdentifier;
        v17 = [v12 localIdentifier];
        [(NSMutableDictionary *)containerPathByLocalIdentifier setObject:v8 forKeyedSubscript:v17];
      }

      else
      {
        v17 = PLImportGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v8;
          _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Failed to get a local identifier for collection created for %@", buf, 0xCu);
        }
      }

      v19 = 0;
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"folder local identifier was nil for %@", v8];
      v23 = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v19 = [v18 errorWithDomain:@"com.apple.ImportErrorDomain" code:-6 userInfo:v15];
    }

    if (a5)
    {
      v20 = v19;
      *a5 = v19;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)validateSourceForAsset:(id)a3
{
  v10 = a3;
  v4 = [v10 source];
  v5 = [v4 isAvailable];

  if ((v5 & 1) == 0)
  {
    v6 = [(PHImporter *)self results];
    v7 = [v10 source];
    v8 = [v7 name];
    v9 = [v6 addExceptionWithType:3 path:v8 underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:979];

    self->_isCanceled = 1;
  }
}

- (BOOL)handleErrorsForRecord:(id)a3 batch:(id)a4 file:(char *)a5 line:(int)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 exceptions];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v7 importAsset];

    if (v10)
    {
      v11 = PLImportGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v7 exceptions];
        if ([v12 count] <= 1)
        {
          v13 = @"]";
        }

        else
        {
          v13 = @"S]\n";
        }

        v14 = [PHImportException logForAllExceptions:v7];
        v17 = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[IMPORT ERROR%@ %@", &v17, 0x16u);
      }

      v15 = [v7 importAsset];
      [(PHImporter *)self validateSourceForAsset:v15];

      [v7 cleanupAfterFailure];
    }
  }

  return v9 != 0;
}

- (void)finishImport
{
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_importQueue);
  if (self->_importState <= 2u)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "IMPORT FINISHED", buf, 2u);
    }

    if (self->_isCanceled)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v4 = self->_downloadedRecords;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v42;
        do
        {
          v8 = 0;
          do
          {
            if (*v42 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v41 + 1) + 8 * v8++) cleanupAfterFailure];
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v6);
      }

      [(NSMutableArray *)self->_downloadedRecords removeAllObjects];
    }

    else
    {
      v9 = [(PHImporter *)self progress];
      v10 = [v9 totalUnitCount];
      v11 = [(PHImporter *)self progress];
      [v11 setCompletedUnitCount:v10];
    }

    self->_importState = 3;
    if ([(NSMutableSet *)self->_importedBurstUUIDs count])
    {
      v12 = [MEMORY[0x1E69BE290] sharedAssetsSaver];
      v13 = [(NSMutableSet *)self->_importedBurstUUIDs allObjects];
      v14 = [(PHPhotoLibrary *)self->_library photoLibraryURL];
      v15 = [v12 validateAvalanches:v13 inLibraryWithURL:v14];

      v16 = [(PHImportOptions *)self->_options destinationAlbum];
      if (v16)
      {
        v17 = v16;
        v18 = [v15 count];

        if (v18)
        {
          library = self->_library;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __26__PHImporter_finishImport__block_invoke;
          v39[3] = &unk_1E75AAEB0;
          v39[4] = self;
          v40 = v15;
          v38 = 0;
          v20 = [(PHPhotoLibrary *)library performChangesAndWait:v39 error:&v38];
          v21 = v38;
          if (!v20)
          {
            v22 = PLImportGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [(PHImportOptions *)self->_options destinationAlbum];
              v24 = [v23 localizedTitle];
              *buf = 138412546;
              v46 = v24;
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Error adding bursts to album '%@': %@", buf, 0x16u);
            }
          }
        }
      }
    }

    v25 = [(PHImporter *)self removeImportDirectoryForLibrary:self->_library];
    if (v25)
    {
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v25;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Error removing empyt DCIM folder: %@", buf, 0xCu);
      }
    }

    v27 = [(PHImporter *)self results];
    [v27 logPMR];

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      v29 = [(PHImporter *)self results];
      completionHandler[2](completionHandler, v29);
    }

    v30 = PLImportGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(PHImporter *)self results];
      v32 = [v31 importedCount];
      v33 = [(PHImporter *)self results];
      v34 = [v33 importSource];
      v35 = objc_opt_class();
      v36 = [(PHImporter *)self results];
      v37 = [v36 importSource];
      *buf = 134218498;
      v46 = v32;
      v47 = 2114;
      v48 = v35;
      v49 = 2048;
      v50 = v37;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "Finished importing %lu assets from %{public}@ <%p>", buf, 0x20u);
    }
  }
}

void __26__PHImporter_finishImport__block_invoke(uint64_t a1)
{
  v6 = [PHFetchOptions fetchOptionsWithPhotoLibrary:*(*(a1 + 32) + 160) orObject:0];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", *(a1 + 40)];
  [v6 setPredicate:v2];

  v3 = [PHAsset fetchAssetsWithOptions:v6];
  if ([v3 count])
  {
    v4 = [*(*(a1 + 32) + 144) destinationAlbum];
    v5 = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:v4];

    [v5 addAssets:v3];
  }
}

- (void)addLibraryPropertiesFromImportAssetBundleAsset:(id)a3 toCreationRequest:(id)a4
{
  v12 = a4;
  v5 = [a3 assetBundle];
  v6 = [v5 videoComplementVisibilityState];
  if (v6)
  {
    [v12 setPhotoIrisVisibilityState:v6];
  }

  v7 = [v12 creationDate];

  if (!v7)
  {
    v8 = [v5 libraryCreationDate];
    if (v8)
    {
      [v12 setCreationDate:v8];
      v9 = [v5 libraryCreationDateTimeZone];
      if (v9)
      {
        [v12 setTimeZone:v9 withDate:v8];
      }
    }
  }

  v10 = [v12 location];

  if (!v10)
  {
    v11 = [v5 libraryLocation];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v12 setLocation:v11];
      }
    }
  }

  if ([v5 spatialOvercaptureResourcesPurgeable])
  {
    [v12 trashAllSpatialOverCaptureResources];
  }
}

- (void)addDescriptionPropertiesFromImportAsset:(id)a3 toCreationRequest:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 title];

  if (!v6)
  {
    v7 = [v14 title];
    if (v7)
    {
      [v5 setTitle:v7];
    }
  }

  v8 = [v5 keywordTitles];

  if (!v8)
  {
    v9 = [v14 keywordTitles];
    if (v9)
    {
      [v5 setKeywordTitles:v9];
    }
  }

  v10 = [v5 assetDescription];

  if (!v10)
  {
    v11 = [v14 assetDescription];
    if (v11)
    {
      [v5 setAssetDescription:v11];
    }
  }

  v12 = [v5 accessibilityDescription];

  if (!v12)
  {
    v13 = [v14 accessibilityDescription];
    if (v13)
    {
      [v5 setAccessibilityDescription:v13];
    }
  }
}

- (void)_applyFastVideoModernizationToRecord:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 importAsset];
  v6 = [v4 timers];
  v7 = [v6 startTiming:10 subtype:0];

  if ([v5 isMovie] && !-[PHImporter shouldImportRecordAsReference:](self, "shouldImportRecordAsReference:", v4))
  {
    v8 = [v5 metadata];
    v9 = [v8 contentTypeFromFastModernizeVideoMedia];

    if (v9)
    {
      v10 = [v5 contentType];
      v11 = [v10 isEqual:v9];

      if ((v11 & 1) == 0)
      {
        v12 = [v9 preferredFilenameExtension];
        v13 = [v4 downloadedPath];
        v14 = [v13 stringByDeletingPathExtension];
        v25 = v12;
        v15 = [v14 stringByAppendingPathExtension:v12];

        v16 = [MEMORY[0x1E696AC08] defaultManager];
        v17 = MEMORY[0x1E695DFF8];
        v18 = [v4 downloadedPath];
        v19 = [v17 fileURLWithPath:v18];
        v24 = v15;
        v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
        v26 = 0;
        LOBYTE(v17) = [v16 moveItemAtURL:v19 toURL:v20 error:&v26];
        v21 = v26;

        if ((v17 & 1) == 0)
        {
          v22 = PLImportGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v21;
            _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Error renaming file for fast modernization: %@", buf, 0xCu);
          }
        }

        [v4 setDownloadedPath:v24];
      }
    }
  }

  v23 = [v4 timers];
  [v23 stopTiming:v7];
}

- (id)_importRecord:(id)a3 createdAlbumIdentifiers:(id)a4 createdFolderIdentifiers:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v52 = a5;
  v10 = [v8 importAsset];
  [(PHImporter *)self _applyFastVideoModernizationToRecord:v8];
  v49 = v9;
  if ([v10 shouldPreserveUUID])
  {
    v11 = [v10 uuid];
    v12 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v11];
  }

  else
  {
    v12 = [PHAssetCreationRequest creationRequestForAssetWithUUID:0];
  }

  [v12 setImportSessionID:{self->_importSessionID, v49}];
  [v12 setImportedBy:{-[PHImportOptions importedBy](self->_options, "importedBy")}];
  v53 = v10;
  v13 = [v10 customAssetProperties];
  [v12 setCustomAssetProperties:v13];

  v51 = v8;
  [v8 allImportRecords];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v14 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v55 = *v60;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v59 + 1) + 8 * i);
        v18 = [v17 importAsset];
        [(PHImporter *)self addDescriptionPropertiesFromImportAsset:v18 toCreationRequest:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PHImporter *)self addLibraryPropertiesFromImportAssetBundleAsset:v18 toCreationRequest:v12];
        }

        v19 = objc_alloc_init(PHAssetResourceCreationOptions);
        v20 = [(PHImporter *)self shouldImportRecordAsReference:v17];
        if (v20)
        {
          [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:0];
          v21 = [v17 importAsset];
          -[PHAssetResourceCreationOptions setShouldIngestInPlace:](v19, "setShouldIngestInPlace:", [v21 hasOriginalResourceType]);
        }

        else
        {
          v22 = [(PHPhotoLibrary *)self->_library pathManager];
          v23 = [v22 isUBF];

          if (v23)
          {
            [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:1];
            [(PHAssetResourceCreationOptions *)v19 setShouldIngestInPlace:0];
          }

          else
          {
            v24 = [v17 importAsset];
            [(PHAssetResourceCreationOptions *)v19 setShouldIngestInPlace:[(PHImporter *)self shouldIngestInPlace:v24]];

            [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:[(PHAssetResourceCreationOptions *)v19 shouldIngestInPlace]^ 1];
          }
        }

        v25 = [v18 createdFileName];
        if (v25)
        {
          [(PHAssetResourceCreationOptions *)v19 setOriginalFilename:v25];
        }

        else
        {
          v26 = [v18 fileName];
          [(PHAssetResourceCreationOptions *)v19 setOriginalFilename:v26];
        }

        v27 = [v18 contentType];
        v28 = [v27 identifier];
        [(PHAssetResourceCreationOptions *)v19 setUniformTypeIdentifier:v28];

        v29 = [v18 fileCreationDate];
        [(PHAssetResourceCreationOptions *)v19 setAlternateImportImageDate:v29];

        -[PHAssetResourceCreationOptions setBurstPickType:](v19, "setBurstPickType:", [v18 burstPickType]);
        if (!v20)
        {
          v31 = [v17 downloadedPath];

          if (v31)
          {
            v32 = MEMORY[0x1E695DFF8];
            v33 = [v17 downloadedPath];
            v30 = [v32 fileURLWithPath:v33];

            if (!v30)
            {
              goto LABEL_27;
            }

LABEL_24:
            [v12 addResourceWithType:objc_msgSend(v18 fileURL:"resourceType") options:{v30, v19}];
          }

          else
          {
            v30 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Importing as copy. Expected record to have a download path."];
            v34 = [v18 fileName];
            v35 = [v17 addExceptionWithType:0 path:v34 underlyingError:v30 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:785];
          }

          goto LABEL_27;
        }

        v30 = [v18 url];
        if (v30)
        {
          goto LABEL_24;
        }

LABEL_27:
      }

      v15 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v15);
  }

  v36 = [v12 placeholderForCreatedAsset];
  v37 = v36;
  if (!v36)
  {
    v42 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to get a placeholder object for asset"];
    v43 = [v53 fileName];
    v39 = v51;
    v44 = [v51 addExceptionWithType:0 path:v43 underlyingError:v42 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:810];
    goto LABEL_33;
  }

  v38 = [v36 localIdentifier];
  v39 = v51;
  [v51 setAssetIdentifier:v38];

  v40 = [(PHImportOptions *)self->_options destinationAlbum];

  if (v40)
  {
    v41 = [(PHImportOptions *)self->_options destinationAlbum];
    v42 = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:v41];

    v63 = v37;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [v42 addAssets:v43];
LABEL_33:

    goto LABEL_34;
  }

  if ([v53 canPreserveFolderStructure] && -[PHImportOptions preserveFolderStructure](self->_options, "preserveFolderStructure"))
  {
    v47 = [v53 url];
    v48 = [v47 path];
    v42 = [v48 stringByDeletingLastPathComponent];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __77__PHImporter__importRecord_createdAlbumIdentifiers_createdFolderIdentifiers___block_invoke;
    v56[3] = &unk_1E75A7958;
    v57 = v50;
    v58 = v52;
    [(PHImporter *)self ensureContainersExistForAlbumPath:v42 forAsset:v37 completion:v56];

    v43 = v57;
    goto LABEL_33;
  }

LABEL_34:
  v45 = [v12 placeholderForCreatedAsset];

  return v45;
}

void __77__PHImporter__importRecord_createdAlbumIdentifiers_createdFolderIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  [*(a1 + 40) addObjectsFromArray:v5];
}

- (void)importRecords:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_importQueue);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__26894;
  v23[4] = __Block_byref_object_dispose__26895;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__26894;
  v21[4] = __Block_byref_object_dispose__26895;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(PHImporter *)self library];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__PHImporter_importRecords_completionHandler___block_invoke;
  v16[3] = &unk_1E75A9D58;
  v17 = v6;
  v18 = self;
  v19 = v23;
  v20 = v21;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PHImporter_importRecords_completionHandler___block_invoke_2;
  v11[3] = &unk_1E75A7930;
  v11[4] = self;
  v14 = v23;
  v15 = v21;
  v9 = v17;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performChanges:v16 completionHandler:v11];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
}

void __46__PHImporter_importRecords_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _importRecord:*(*(&v12 + 1) + 8 * v6) createdAlbumIdentifiers:*(*(*(a1 + 48) + 8) + 40) createdFolderIdentifiers:{*(*(*(a1 + 56) + 8) + 40), v12}];
        v8 = [*(*(a1 + 40) + 144) libraryScope];

        if (v8)
        {
          v9 = [*(*(a1 + 40) + 144) libraryScope];
          v10 = [PHLibraryScopeChangeRequest changeRequestForLibraryScope:v9];

          v16 = v7;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
          [v10 moveToSharedLibrary:v11];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v4);
  }
}

void __46__PHImporter_importRecords_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PHImporter_importRecords_completionHandler___block_invoke_3;
  block[3] = &unk_1E75A7908;
  v15 = a2;
  block[4] = v7;
  v14 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, block);
}

uint64_t __46__PHImporter_importRecords_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) == 1)
  {
    [*(*(a1 + 32) + 112) removeAllObjects];
    [*(*(v1 + 32) + 120) removeAllObjects];
    if ([*(*(*(v1 + 64) + 8) + 40) count])
    {
      [*(v1 + 32) updateAlbumCacheWithAlbumIdentifiers:*(*(*(v1 + 64) + 8) + 40)];
    }

    if ([*(*(*(v1 + 72) + 8) + 40) count])
    {
      [*(v1 + 32) updateFolderCacheWithFolders:*(*(*(v1 + 72) + 8) + 40)];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(v1 + 40);
    v2 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v30;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v30 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(*(&v29 + 1) + 8 * i) importAsset];
          v7 = [v6 burstUUID];

          if (v7)
          {
            [*(v1 + 32) importedBurstAsset:v6];
          }
        }

        v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v3);
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = *(a1 + 40);
    v23 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v23)
    {
      v21 = *v26;
      v22 = v1;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * j);
          v10 = [v9 importAsset];
          v11 = MEMORY[0x1E696AEC0];
          v12 = [v10 fileName];
          v13 = [v10 rawAsset];
          if (v13)
          {
            v14 = MEMORY[0x1E696AEC0];
            v15 = [v10 rawAsset];
            v16 = [v15 fileName];
            v17 = [v14 stringWithFormat:@", %@", v16];
            v18 = [v11 stringWithFormat:@"%@%@", v12, v17];
          }

          else
          {
            v18 = [v11 stringWithFormat:@"%@%@", v12, &stru_1F0FC60C8];
          }

          v1 = v22;
          v19 = [v9 addExceptionWithType:0 path:v18 underlyingError:*(v22 + 48) file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:730];
        }

        v23 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v23);
    }
  }

  return (*(*(v1 + 56) + 16))();
}

- (id)_recordsToImportWithCount:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_downloadedRecords subarrayWithRange:0, a3];
  [(NSMutableArray *)self->_downloadedRecords removeObjectsInRange:0, a3];

  return v5;
}

- (void)importRecords:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_importQueue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__PHImporter_importRecords___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PHImporter *)self importRecords:v5 completionHandler:v6];
}

void __28__PHImporter_importRecords___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        [*(a1 + 40) handleErrorsForRecord:v7 batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:638];
        [*(a1 + 40) addRecordToResults:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  if (*(v8 + 80))
  {
    goto LABEL_9;
  }

  v9 = [*(v8 + 72) count];
  v10 = *(a1 + 40);
  v11 = *(v10 + 128);
  if (v9 >= v11)
  {
    goto LABEL_17;
  }

  v12 = *(v10 + 32);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return;
      }

      goto LABEL_22;
    }

    v13 = [*(v10 + 72) count];
    v14 = *(a1 + 40);
    if (!v13)
    {
      v8 = *(a1 + 40);
LABEL_9:
      [v8 finishImport];
      return;
    }

    v11 = [*(v14 + 72) count];
    v10 = v14;
LABEL_17:
    v15 = [v10 _recordsToImportWithCount:v11];
    [*(a1 + 40) importRecords:v15];

    return;
  }

  if (v12 == 1)
  {
    *(v10 + 32) = 0;
    return;
  }

  if (!*(v10 + 32))
  {
LABEL_22:
    if (v12 - 1 > 2)
    {
      v16 = @"Downloading";
    }

    else
    {
      v16 = off_1E75A79A0[(v12 - 1)];
    }

    v16;
    v17 = _PFAssertFailHandler();
    [(PHImporter *)v17 downloadNextAssetInRecord:v18 toURL:v19 subRecordEnumerator:v20 completionHandler:v21, v22];
  }
}

- (void)downloadNextAssetInRecord:(id)a3 toURL:(id)a4 subRecordEnumerator:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_importQueue);
  v14 = [v12 nextObject];
  if (!v14)
  {
    importQueue = self->_importQueue;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke;
    v39[3] = &unk_1E75AADE8;
    v40 = v13;
    dispatch_async(importQueue, v39);
    v23 = v40;
    goto LABEL_7;
  }

  if (-[PHImporter shouldImportRecordAsReference:](self, "shouldImportRecordAsReference:", v14) || ![v14 needsDownload])
  {
    v22 = self->_importQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_105;
    block[3] = &unk_1E75AAB40;
    block[4] = self;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    dispatch_async(v22, block);

    v23 = v27;
LABEL_7:

    goto LABEL_8;
  }

  v15 = [v14 timers];
  v16 = [v15 startTiming:1 subtype:0];

  v17 = [v14 importAsset];
  v25 = [v17 fileName];
  v18 = [v25 uppercaseString];
  v19 = [v11 URLByAppendingPathComponent:v18];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_2;
  v31[3] = &unk_1E75A78E0;
  v31[4] = self;
  v32 = v14;
  v33 = v16;
  v34 = v10;
  v38 = v13;
  v35 = v17;
  v36 = v11;
  v37 = v12;
  v20 = v17;
  v21 = v16;
  [v20 copyToURL:v19 completionHandler:v31];

LABEL_8:
}

void __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_3;
  block[3] = &unk_1E75A78B8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v20 = *(a1 + 32);
  v10 = *(a1 + 56);
  *&v11 = v20;
  *(&v11 + 1) = v10;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v22 = v12;
  v23 = v11;
  v24 = v5;
  v25 = v6;
  v13 = *(a1 + 88);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  *&v16 = *(a1 + 80);
  *(&v16 + 1) = v13;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v26 = v17;
  v27 = v16;
  v18 = v6;
  v19 = v5;
  dispatch_async(v7, block);
}

void __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) timers];
  [v2 stopTiming:*(a1 + 40)];

  if (*(*(a1 + 48) + 32) == 3)
  {
    v3 = PLImportGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 56);
      *buf = 138412290;
      v41 = v4;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "IMPORT CANCELLED: download completed after cancellation: %@", buf, 0xCu);
    }

    v5 = [*(a1 + 64) path];
    [*(a1 + 32) setDownloadedPath:v5];

    [*(a1 + 56) cleanupAfterFailure];
    v6 = [*(a1 + 48) removeImportDirectoryForLibrary:*(*(a1 + 48) + 160)];
    return;
  }

  if (!*(a1 + 72))
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 64) path];
      v10 = *(a1 + 80);
      *buf = 138412546;
      v41 = v9;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "IMPORT DOWNLOAD: completed to path: %@, for asset: %@", buf, 0x16u);
    }

    if ([*(a1 + 80) isTIFF])
    {
      v11 = [*(a1 + 80) url];

      if (!v11)
      {
        [PHImportAsset determineIfTIFFIsRAW:*(a1 + 80) url:*(a1 + 64)];
      }
    }

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [*(a1 + 64) path];
    v37 = 0;
    v14 = [v12 attributesOfItemAtPath:v13 error:&v37];
    v15 = v37;

    if (v14)
    {
      v16 = *MEMORY[0x1E696A370];
      v17 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696A370]];
      v18 = [v17 integerValue];

      if ((v18 & 0x80) != 0)
      {
LABEL_24:
        v26 = MEMORY[0x1E69BF230];
        v27 = [*(*(a1 + 48) + 160) photoLibrary];
        v28 = [v27 managedObjectContextStoreUUID];
        [v26 persistString:v28 forKey:*MEMORY[0x1E69BFD58] fileURL:*(a1 + 64)];

        v29 = [*(a1 + 64) path];
        [*(a1 + 32) setDownloadedPath:v29];

        v30 = [*(a1 + 80) metadata];
        if (!v30)
        {
          goto LABEL_29;
        }

        v31 = v30;
        if ((![*(a1 + 80) isJPEG] || objc_msgSend(*(a1 + 80), "isRender")) && (objc_msgSend(*(a1 + 80), "isHEIF") & 1) == 0)
        {

          goto LABEL_32;
        }

        v32 = [*(a1 + 80) source];
        v33 = [v32 isAppleDevice];

        if ((v33 & 1) == 0)
        {
LABEL_29:
          v34 = [*(a1 + 80) validateMetadataForImportRecord:*(a1 + 32)];
          if (v34)
          {
            v35 = v34;
            (*(*(a1 + 104) + 16))();

LABEL_33:
            return;
          }
        }

LABEL_32:
        [*(a1 + 48) downloadNextAssetInRecord:*(a1 + 56) toURL:*(a1 + 88) subRecordEnumerator:*(a1 + 96) completionHandler:*(a1 + 104)];
        goto LABEL_33;
      }

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = v16;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 | 0x80];
      v39 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v22 = [*(a1 + 64) path];
      v36 = v15;
      v23 = [v19 setAttributes:v21 ofItemAtPath:v22 error:&v36];
      v24 = v36;

      if (v23)
      {
        v15 = v24;
        goto LABEL_24;
      }

      v25 = PLImportGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v24;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unable to make read-only imported file writeable with error: %@", buf, 0xCu);
      }

      v15 = v24;
    }

    else
    {
      v25 = PLImportGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unable to read file attributes at import downloaded file url, error: %@", buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  [*(a1 + 56) addException:?];
  v7 = *(*(a1 + 104) + 16);

  v7();
}

- (BOOL)shouldImportRecordAsReference:(id)a3
{
  v4 = a3;
  if ([(PHImportOptions *)self->_options shouldImportAsReferenced])
  {
    v5 = [v4 canReference];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)importNextAsset:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_importQueue);
  if (!self->_isCanceled)
  {
    v6 = [v5 nextObject];
    v7 = v6;
    if (v6)
    {
      v3 = [v6 importRecordForPrimaryAsset];
      if ([(PHImporter *)self handleErrorsForRecord:v3 batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:502])
      {
        [(PHImporter *)self addRecordToResults:v3];
        importQueue = self->_importQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __30__PHImporter_importNextAsset___block_invoke;
        block[3] = &unk_1E75AAEB0;
        block[4] = self;
        v28 = v5;
        dispatch_async(importQueue, block);

LABEL_18:
        goto LABEL_19;
      }

LABEL_11:
      v10 = [(PHImporter *)self getDestinationUrlForImportAsset:v7, v20, isCanceled];
      if (v10)
      {
        v11 = [v3 allImportRecords];
        v12 = [v11 objectEnumerator];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __30__PHImporter_importNextAsset___block_invoke_3;
        v22[3] = &unk_1E75AB248;
        v22[4] = self;
        v23 = v3;
        v24 = v5;
        [(PHImporter *)self downloadNextAssetInRecord:v23 toURL:v10 subRecordEnumerator:v12 completionHandler:v22];
      }

      else
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = [v7 fileName];
        v15 = [v13 ph_genericErrorWithLocalizedDescription:{@"Unable to get a downloadPath for %@", v14}];

        v16 = [v7 url];
        v17 = [v16 path];
        v18 = [v3 addExceptionWithType:0 path:v17 underlyingError:v15 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:511];

        [(PHImporter *)self handleErrorsForRecord:v3 batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:512];
        [(PHImporter *)self addRecordToResults:v3];
        v19 = self->_importQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __30__PHImporter_importNextAsset___block_invoke_2;
        v25[3] = &unk_1E75AAEB0;
        v25[4] = self;
        v26 = v5;
        dispatch_async(v19, v25);
      }

      goto LABEL_18;
    }

    importState = self->_importState;
    if (!self->_importState)
    {
      if (![(NSMutableArray *)self->_downloadedRecords count])
      {
        [(PHImporter *)self finishImport];
        goto LABEL_19;
      }

      self->_importState = 2;
      v3 = [(PHImporter *)self _recordsToImportWithCount:[(NSMutableArray *)self->_downloadedRecords count]];
      [(PHImporter *)self importRecords:v3];
      goto LABEL_18;
    }

    if (importState == 1)
    {
      self->_importState = 2;
    }

    else if ((importState - 2) < 2)
    {
      v20 = off_1E75A79A0[(importState - 1)];
      isCanceled = self->_isCanceled;
      _PFAssertFailHandler();
      goto LABEL_11;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!self->_importState)
  {
    [(PHImporter *)self finishImport];
  }

LABEL_20:
}

uint64_t __30__PHImporter_importNextAsset___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) handleErrorsForRecord:*(a1 + 40) batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:519];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 addRecordToResults:*(a1 + 40)];
LABEL_3:
    v4 = *(a1 + 32);
    goto LABEL_9;
  }

  [v3[9] addObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  if ((*(v4 + 80) & 1) == 0)
  {
    v5 = *(v4 + 32);
    if (*(v4 + 32))
    {
      if ((v5 - 2) >= 2)
      {
        goto LABEL_9;
      }

      v10 = off_1E75A79A0[(v5 - 1)];
      v11 = *(*(a1 + 32) + 80);
      v4 = _PFAssertFailHandler();
    }

    v6 = [*(v4 + 72) count];
    v4 = *(a1 + 32);
    if (v6 >= *(v4 + 128))
    {
      *(v4 + 32) = 1;
      v9 = [*(a1 + 32) _recordsToImportWithCount:*(*(a1 + 32) + 128)];
      [*(a1 + 32) importRecords:v9];

      goto LABEL_3;
    }
  }

LABEL_9:
  v7 = *(a1 + 48);

  return [v4 importNextAsset:v7];
}

- (id)getDestinationUrlForImportAsset:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_library pathManager];
  v6 = [v5 isUBF];

  v7 = [v4 parentFolderPath];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(PHImporter *)self makeDownloadUrlForParentFolderPath:v7];
    }

    else
    {
      v16 = PLImportGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Didn't get a parent folder for asset %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = [v4 importIdentifier];
    v11 = [(NSMutableDictionary *)self->_downloadFolderUrlByImportIdentifier objectForKeyedSubscript:v10];
    if (v11)
    {
      v9 = v11;
      v12 = [(PHPhotoLibrary *)self->_library pathManager];
      v22 = 0;
      v13 = [v12 externalDirectoryWithSubType:1 createIfNeeded:1 error:&v22];
      v14 = v22;

      if (v13)
      {
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1];

        if (v15)
        {
          [(NSMutableArray *)self->_additionalDcimImportFolders addObject:v15];
          v9 = v15;
        }

        else
        {
          v18 = PLImportGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Didn't get a url from the bundle path", buf, 2u);
          }

          v9 = 0;
        }
      }

      else
      {
        v17 = PLImportGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Didn't get a bundle path from path manager (%@)", buf, 0xCu);
        }
      }
    }

    else if (v8)
    {
      v9 = [(PHImporter *)self makeDownloadUrlForParentFolderPath:v8];
      if (v9)
      {
        [(NSMutableDictionary *)self->_downloadFolderUrlByImportIdentifier setObject:v9 forKeyedSubscript:v10];
      }
    }

    else
    {
      v20 = PLImportGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v4 uuid];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Didn't get a parent folder for asset %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)makeDownloadUrlForParentFolderPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_parentFolderMapping objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(PHPhotoLibrary *)self->_library pathManager];
    if ([v6 isUBF])
    {
      v17 = 0;
      v7 = &v17;
      v8 = [v6 externalDirectoryWithSubType:1 leafType:1 additionalPathComponents:v4 createIfNeeded:1 error:&v17];
    }

    else
    {
      v16 = 0;
      v7 = &v16;
      v8 = [v6 externalDirectoryWithSubType:1 createIfNeeded:1 error:&v16];
    }

    v9 = v8;
    v10 = *v7;
    if (v9)
    {
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:1];
      if (v11)
      {
        v5 = v11;
        [(NSMutableDictionary *)self->_parentFolderMapping setObject:v11 forKeyedSubscript:v4];
LABEL_14:

        goto LABEL_15;
      }

      v12 = PLImportGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        v13 = "Didn't get a url from the bundle path";
        goto LABEL_12;
      }
    }

    else
    {
      v12 = PLImportGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        v13 = "Didn't get a bundle path from path manager";
LABEL_12:
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, v13, v15, 2u);
      }
    }

    v5 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (void)ensureEnoughDiskSpaceAvailableIfNeededForAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_importQueue);
  if (MEMORY[0x19EAF1E50]())
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Skipping disk space check, as we are in a unit test environment.";
LABEL_7:
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(PHImportOptions *)self->_options skipDiskSpaceCheck])
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Skipping disk space check, as specified by importer options.";
      goto LABEL_7;
    }

LABEL_8:

    v7[2](v7, 1);
    goto LABEL_17;
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0x200000;
  v10 = [v6 count];
  if (PHImportConcurrencyLimit_onceToken != -1)
  {
    dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
  }

  v11 = PHImportConcurrencyLimit_concurrencyLimit;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke;
  v25[3] = &unk_1E75A7868;
  v26 = v6;
  v27 = buf;
  PHImportDispatchApply(v10, v11, 0, v25);
  v12 = [(PHPhotoLibrary *)self->_library photoLibraryURL];
  v13 = [v12 path];

  LOBYTE(v12) = [MEMORY[0x1E69BE2D0] hasEntitlementsForCacheDelete];
  v14 = [(PHPhotoLibrary *)self->_library pathManager];
  v15 = [v14 capabilities];
  v16 = [v15 isNetworkVolume];

  if (v16 & 1 | ((v12 & 1) == 0))
  {
    v17 = PLImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Performing Cache Delete requests from this process is NOT POSSIBLE due to entitlements or network volume, so falling back to just checking for available disk space, and failing if not.", v24, 2u);
    }

    v18 = atomic_load(v29 + 3);
    [(PHImporter *)self performLegacyDiskSpaceCheckForRequiredBytes:v18 forPath:v13 withCompletion:v7];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69BE2D0]) initWithQoSClass:25 pathForVolume:v13 callbackQueue:self->_importQueue];
    [(PHImporter *)self setCacheDeleteClient:v19];

    v20 = [(PHImporter *)self cacheDeleteClient];
    v21 = atomic_load(v29 + 3);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke_80;
    v22[3] = &unk_1E75A7890;
    v22[4] = self;
    v23 = v7;
    [v20 requestDiskSpaceAvailabilityOfSize:v21 completion:v22];
  }

  _Block_object_dispose(buf, 8);
LABEL_17:
}

void __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  atomic_fetch_add((*(*(a1 + 40) + 8) + 24), [v3 approximateBytesRequiredToImport]);
}

void __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke_80(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = PLImportGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    *buf = 138544130;
    if (a2)
    {
      v11 = @"YES";
    }

    v28 = v11;
    v29 = 2048;
    v30 = a3;
    v31 = 2048;
    v32 = a4;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "Requesting disk space succeeded: %{public}@. Bytes purged: %llu, Additional bytes required: %llu, Error: %@", buf, 0x2Au);
  }

  if (v9)
  {
    v12 = [v9 code];
    if (a2)
    {
      goto LABEL_14;
    }

    v13 = v12;
    if ([v9 code] == 3)
    {
      v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:a4 countStyle:0];
      v25[0] = *MEMORY[0x1E696A278];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not enough storage space available for import. Additional space required: %@]", v14];
      v25[1] = @"MoreSpaceRequired";
      v26[0] = v15;
      v26[1] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImportErrorDomain" code:-5 userInfo:v16];
      v18 = [*(a1 + 32) results];
      v19 = [v18 addExceptionWithType:5 path:0 underlyingError:v17 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:397];
    }

    else
    {
      if (v13 == 1)
      {
LABEL_14:
        (*(*(a1 + 40) + 16))();
        goto LABEL_15;
      }

      v20 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696AA08];
      v24 = v9;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v14 = [v20 errorWithDomain:@"com.apple.ImportErrorDomain" code:-8 userInfo:v21];

      v16 = [*(a1 + 32) results];
      v22 = [v16 addExceptionWithType:6 path:0 underlyingError:v14 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:402];
    }

    goto LABEL_14;
  }

  if (a2)
  {
    goto LABEL_14;
  }

LABEL_15:
}

- (void)performLegacyDiskSpaceCheckForRequiredBytes:(int64_t)a3 forPath:(id)a4 withCompletion:(id)a5
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_importQueue);
  if (MEMORY[0x19EAF1E50]())
  {
    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "Skipping disk space check, as we are in a unit test environment.", buf, 2u);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:v8];
    v12 = a3 - v11;
    if (a3 >= v11)
    {
      v13 = v11;
      v24[0] = *MEMORY[0x1E696A278];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
      v17 = [v14 stringWithFormat:@"Not enough storage space available for import. Bytes required: %@. Bytes available: %@", v15, v16];
      v24[1] = @"MoreSpaceRequired";
      v25[0] = v17;
      v18 = [MEMORY[0x1E696AAF0] stringFromByteCount:v12 countStyle:0];
      v25[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImportErrorDomain" code:-5 userInfo:v19];
      v21 = [(PHImporter *)self results];
      v22 = [v21 addExceptionWithType:5 path:0 underlyingError:v20 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:339];

      [(NSProgress *)self->_progress cancel];
      v9[2](v9, 0);

      goto LABEL_8;
    }
  }

  v9[2](v9, 1);
LABEL_8:
}

- (id)beginImport:(id)a3
{
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_library pathManager];
  v6 = [v5 isUBF];

  if (v6)
  {
    v7 = [(PHImporter *)self removeImportDirectoryForLibrary:self->_library];
  }

  v8 = [(PHImporter *)self options];
  v9 = [v8 sortDescriptor];

  if (v9)
  {
    v10 = [(PHImporter *)self options];
    v11 = [v10 sortDescriptor];
    v57[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    v13 = [v4 sortedArrayUsingDescriptors:v12];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = [v4 mutableCopy];
  }

  if ([v4 count])
  {
    v15 = [v4 objectAtIndexedSubscript:0];
    v16 = [v15 canPreserveFolderStructure];

    if (v16)
    {
      if ([(PHImportOptions *)self->_options preserveFolderStructure])
      {
        v17 = [(PHImportSource *)self->_source prefix];
        v18 = v17 == 0;

        if (!v18)
        {
          v19 = [(PHImportOptions *)self->_options destinationFolder];
          if (!v19)
          {
            v20 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
            v21 = [PHCollectionList fetchRootAlbumCollectionListWithOptions:v20];

            v19 = [v21 firstObject];
          }

          v51 = 0;
          v52 = &v51;
          v53 = 0x3032000000;
          v54 = __Block_byref_object_copy__26894;
          v55 = __Block_byref_object_dispose__26895;
          v56 = 0;
          v44[0] = 0;
          v44[1] = v44;
          v44[2] = 0x3032000000;
          v44[3] = __Block_byref_object_copy__26894;
          v44[4] = __Block_byref_object_dispose__26895;
          v45 = 0;
          v38 = 0;
          v39 = &v38;
          v40 = 0x3032000000;
          v41 = __Block_byref_object_copy__26894;
          v42 = __Block_byref_object_dispose__26895;
          v43 = 0;
          library = self->_library;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __26__PHImporter_beginImport___block_invoke;
          v33[3] = &unk_1E75A9238;
          v35 = v44;
          v33[4] = self;
          v23 = v19;
          v34 = v23;
          v36 = &v38;
          v37 = &v51;
          v32 = 0;
          [(PHPhotoLibrary *)library performChangesAndWait:v33 error:&v32];
          v24 = v32;
          if (v39[5])
          {
            v50 = v39[5];
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
            [(PHImporter *)self updateFolderCacheWithFolders:v25];
          }

          if (v52[5])
          {
            v26 = PLImportGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = [(PHImportSource *)self->_source prefix];
              v28 = v52[5];
              *buf = 138412546;
              v47 = v27;
              v48 = 2112;
              v49 = v28;
              _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Failed to create folder '%@' for import (%@)", buf, 0x16u);
            }
          }

          if (v24)
          {
            v29 = PLImportGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [(PHImportSource *)self->_source prefix];
              *buf = 138412546;
              v47 = v30;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "Failed to create folder '%@' for import (%@)", buf, 0x16u);
            }
          }

          _Block_object_dispose(&v38, 8);
          _Block_object_dispose(v44, 8);

          _Block_object_dispose(&v51, 8);
        }
      }
    }
  }

  return v14;
}

void __26__PHImporter_beginImport___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2[23] prefix];
  v4 = a1[5];
  v15 = 0;
  v5 = [v2 createFolderForPath:v3 inFolder:v4 error:&v15];
  v6 = v15;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = [*(*(a1[6] + 8) + 40) placeholderForCreatedCollectionList];
  v10 = [v9 localIdentifier];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (PHImporter)initWithLibrary:(id)a3 options:(id)a4 source:(id)a5 delegate:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v66.receiver = self;
  v66.super_class = PHImporter;
  v18 = [(PHImporter *)&v66 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_library, a3);
    if (v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = objc_alloc_init(PHImportOptions);
    }

    options = v19->_options;
    v19->_options = v20;

    v22 = objc_opt_new();
    results = v19->_results;
    v19->_results = v22;

    v24 = [MEMORY[0x1E69BF320] UUIDString];
    importSessionID = v19->_importSessionID;
    v19->_importSessionID = v24;

    v19->_importState = 0;
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INITIATED, -1);
    v28 = dispatch_queue_create("com.photos.import.serviceimporter", v27);
    importQueue = v19->_importQueue;
    v19->_importQueue = v28;

    v30 = [v13 pathManager];
    LODWORD(v27) = [v30 isDCIM];

    v31 = 0x1E695D000;
    v32 = 0x1E695D000;
    if (v27)
    {
      v33 = objc_alloc(MEMORY[0x1E69BF268]);
      v34 = [v13 photoLibraryBundle];
      [v34 pathManager];
      v35 = a5;
      v36 = v14;
      v37 = v13;
      v38 = v17;
      v39 = v16;
      v41 = v40 = v15;
      v42 = v33;
      v32 = 0x1E695D000uLL;
      v43 = [v42 initWithPathManager:v41];
      importFileManager = v19->_importFileManager;
      v19->_importFileManager = v43;

      v15 = v40;
      v16 = v39;
      v17 = v38;
      v13 = v37;
      v14 = v36;
      a5 = v35;
      v31 = 0x1E695D000uLL;

      v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
      downloadFolderUrlByImportIdentifier = v19->_downloadFolderUrlByImportIdentifier;
      v19->_downloadFolderUrlByImportIdentifier = v45;

      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      additionalDcimImportFolders = v19->_additionalDcimImportFolders;
      v19->_additionalDcimImportFolders = v47;
    }

    v49 = objc_alloc_init(*(v31 + 3984));
    parentFolderMapping = v19->_parentFolderMapping;
    v19->_parentFolderMapping = v49;

    v51 = objc_alloc_init(*(v32 + 3952));
    downloadedRecords = v19->_downloadedRecords;
    v19->_downloadedRecords = v51;

    v19->_isCanceled = 0;
    objc_storeStrong(&v19->_source, a5);
    objc_storeWeak(&v19->_delegate, v16);
    v53 = [v17 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v53;

    v55 = objc_alloc_init(*(v31 + 3984));
    containerPathByLocalIdentifier = v19->_containerPathByLocalIdentifier;
    v19->_containerPathByLocalIdentifier = v55;

    v57 = objc_alloc_init(*(v31 + 3984));
    folderByFolderPath = v19->_folderByFolderPath;
    v19->_folderByFolderPath = v57;

    v59 = objc_alloc_init(*(v31 + 3984));
    albumByAlbumPath = v19->_albumByAlbumPath;
    v19->_albumByAlbumPath = v59;

    v61 = objc_alloc_init(*(v31 + 3984));
    albumRequestsByAlbumId = v19->_albumRequestsByAlbumId;
    v19->_albumRequestsByAlbumId = v61;

    v63 = objc_alloc_init(*(v31 + 3984));
    folderRequestByFolderId = v19->_folderRequestByFolderId;
    v19->_folderRequestByFolderId = v63;

    v19->_importBatchSize = 1;
  }

  return v19;
}

+ (void)dumpMetadataForData:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CGImageSourceCreateWithData(a3, 0);
  v4 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_INFO, "properties %@", &v6, 0xCu);
  }

  CFRelease(v3);
}

+ (void)dumpImageData:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E696E0E8];
  v3 = v13;
  v4 = MEMORY[0x1E695E118];
  v14[0] = MEMORY[0x1E695E118];
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = CGImageSourceCreateWithData(v6, v7);

  v11 = v3;
  v12 = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v9);

  if (ImageAtIndex)
  {
    CFAutorelease(ImageAtIndex);
  }

  CFRelease(v8);
  CGImageWriteToFile();
}

+ (id)removeItemAtPath:(id)a3 type:(unint64_t)a4 recursive:(BOOL)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v9 = [v8 attributesOfItemAtPath:v7 error:&v33];
  v10 = v33;
  if (!v9)
  {
    goto LABEL_21;
  }

  v11 = [v9 fileType];
  v12 = v11;
  if (a4 || v11 != *MEMORY[0x1E696A3E8])
  {
    v13 = [v9 fileType];

    if (a4 != 1 || v13 != *MEMORY[0x1E696A3E0])
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v34[0] = *MEMORY[0x1E696A368];
      v34[1] = v25;
      v35[0] = v7;
      v26 = @"file";
      if (a4)
      {
        v26 = @"folder";
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to delete '%@' as a %@", v7, v26];
      v35[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v29 = [v24 errorWithDomain:@"com.apple.PHImport" code:2 userInfo:v28];

      v10 = v29;
      goto LABEL_21;
    }
  }

  else
  {

    v13 = *MEMORY[0x1E696A3E0];
  }

  v14 = [v9 fileType];

  if (v14 == v13)
  {
    v15 = [v8 enumeratorAtPath:v7];
    if (!v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v38[0] = *MEMORY[0x1E696A368];
      v38[1] = v17;
      v39[0] = v7;
      v39[1] = @"Can't get a directory enumerator";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v19 = [v16 errorWithDomain:@"com.apple.PHImport" code:1 userInfo:v18];

      v10 = v19;
    }

    if (!v10)
    {
      v20 = [v15 nextObject];

      if (v20)
      {
        if (!a5)
        {
          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A578];
          v36[0] = *MEMORY[0x1E696A368];
          v36[1] = v22;
          v37[0] = v7;
          v37[1] = @"Directory is not empty";
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
          v10 = [v21 errorWithDomain:@"com.apple.PHImport" code:2 userInfo:v23];
        }
      }
    }

    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else if (!v10)
  {
LABEL_17:
    v32 = 0;
    [v8 removeItemAtPath:v7 error:&v32];
    v10 = v32;
  }

LABEL_21:
  v30 = v10;

  return v10;
}

+ (void)importAssets:(id)a3 fromImportSource:(id)a4 intoLibrary:(id)a5 withOptions:(id)a6 progress:(id *)a7 delegate:(id)a8 atEnd:(id)a9
{
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v27 = a6;
  v28 = a8;
  v17 = a9;
  v18 = PLImportGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = objc_opt_class();
    v37 = 2048;
    v38 = v15;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "Importing assets from %{public}@ <%p>", buf, 0x16u);
  }

  if ([v14 count])
  {
    v19 = [[PHImporter alloc] initWithLibrary:v16 options:v27 source:v15 delegate:v28 completionHandler:v17];
    if (a7)
    {
      if (*a7)
      {
        v20 = *a7;
        [v20 setTotalUnitCount:{objc_msgSend(v14, "count")}];
      }

      else
      {
        v20 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v14, "count")}];
        v24 = v20;
        *a7 = v20;
      }
    }

    else
    {
      v20 = 0;
    }

    [v20 setCancellable:{1, v27}];
    objc_initWeak(buf, v19);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke;
    v33[3] = &unk_1E75A9A90;
    objc_copyWeak(&v34, buf);
    [v20 setCancellationHandler:v33];
    v25 = v16;
    [(PHImporter *)v19 setProgress:v20];
    importQueue = v19->_importQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke_2;
    block[3] = &unk_1E75AA870;
    v30 = v19;
    v31 = v14;
    v32 = v17;
    v23 = v19;
    dispatch_async(importQueue, block);

    v16 = v25;
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);

LABEL_14:
    goto LABEL_15;
  }

  if (v17)
  {
    v21 = PLImportGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v15 name];
      *buf = 138543362;
      v36 = v22;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_INFO, "Nothing to import from '%{public}@'", buf, 0xCu);
    }

    v23 = objc_alloc_init(PHImportResults);
    (*(v17 + 2))(v17, v23);
    goto LABEL_14;
  }

LABEL_15:
}

void __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancellationHandler];
}

void __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) beginImport:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke_3;
  v5[3] = &unk_1E75A7838;
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 ensureEnoughDiskSpaceAvailableIfNeededForAssets:v4 completion:v5];
}

void __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v4 = [*(a1 + 40) objectEnumerator];
    [v2 importNextAsset:?];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) results];
    (*(v3 + 16))(v3);
  }
}

@end