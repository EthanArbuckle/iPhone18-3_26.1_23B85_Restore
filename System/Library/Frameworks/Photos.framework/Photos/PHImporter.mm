@interface PHImporter
+ (id)removeItemAtPath:(id)path type:(unint64_t)type recursive:(BOOL)recursive;
+ (void)dumpImageData:(id)data;
+ (void)dumpMetadataForData:(id)data;
+ (void)importAssets:(id)assets fromImportSource:(id)source intoLibrary:(id)library withOptions:(id)options progress:(id *)progress delegate:(id)delegate atEnd:(id)end;
- (BOOL)handleErrorsForRecord:(id)record batch:(id)batch file:(char *)file line:(int)line;
- (BOOL)shouldImportRecordAsReference:(id)reference;
- (PHImporter)initWithLibrary:(id)library options:(id)options source:(id)source delegate:(id)delegate completionHandler:(id)handler;
- (id)_importRecord:(id)record createdAlbumIdentifiers:(id)identifiers createdFolderIdentifiers:(id)folderIdentifiers;
- (id)_recordsToImportWithCount:(unint64_t)count;
- (id)beginImport:(id)import;
- (id)createAlbumForPath:(id)path inFolder:(id)folder error:(id *)error;
- (id)createFolderForPath:(id)path inFolder:(id)folder error:(id *)error;
- (id)folderChangeRequestForFolder:(id)folder;
- (id)getDestinationUrlForImportAsset:(id)asset;
- (id)makeDownloadUrlForParentFolderPath:(id)path;
- (id)relativePathComponentsForAlbumPath:(id)path fromRootPath:(id)rootPath;
- (id)removeImportDirectoryForLibrary:(id)library;
- (void)_applyFastVideoModernizationToRecord:(id)record;
- (void)addDescriptionPropertiesFromImportAsset:(id)asset toCreationRequest:(id)request;
- (void)addLibraryPropertiesFromImportAssetBundleAsset:(id)asset toCreationRequest:(id)request;
- (void)addRecordToResults:(id)results;
- (void)cancellationHandler;
- (void)downloadNextAssetInRecord:(id)record toURL:(id)l subRecordEnumerator:(id)enumerator completionHandler:(id)handler;
- (void)ensureContainersExistForAlbumPath:(id)path forAsset:(id)asset completion:(id)completion;
- (void)ensureEnoughDiskSpaceAvailableIfNeededForAssets:(id)assets completion:(id)completion;
- (void)finishImport;
- (void)importNextAsset:(id)asset;
- (void)importRecords:(id)records;
- (void)importRecords:(id)records completionHandler:(id)handler;
- (void)importedBurstAsset:(id)asset;
- (void)performLegacyDiskSpaceCheckForRequiredBytes:(int64_t)bytes forPath:(id)path withCompletion:(id)completion;
- (void)updateAlbumCacheWithAlbumIdentifiers:(id)identifiers;
- (void)updateFolderCacheWithFolders:(id)folders;
- (void)validateSourceForAsset:(id)asset;
@end

@implementation PHImporter

- (id)removeImportDirectoryForLibrary:(id)library
{
  v31 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  isUBF = [pathManager isUBF];

  if (isUBF)
  {
    pathManager2 = [libraryCopy pathManager];
    v29 = 0;
    v8 = [pathManager2 externalDirectoryWithSubType:1 leafType:1 additionalPathComponents:0 createIfNeeded:0 error:&v29];
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
          path = [v19 path];
          LODWORD(importFileManager) = [(PLImportFileManager *)importFileManager removeUnusedDCIMDirectoryAtPath:path];

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

- (void)importedBurstAsset:(id)asset
{
  assetCopy = asset;
  importedBurstUUIDs = self->_importedBurstUUIDs;
  v9 = assetCopy;
  if (!importedBurstUUIDs)
  {
    v6 = objc_opt_new();
    v7 = self->_importedBurstUUIDs;
    self->_importedBurstUUIDs = v6;

    assetCopy = v9;
    importedBurstUUIDs = self->_importedBurstUUIDs;
  }

  burstUUID = [assetCopy burstUUID];
  [(NSMutableSet *)importedBurstUUIDs addObject:burstUUID];
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

- (id)createAlbumForPath:(id)path inFolder:(id)folder error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  folderCopy = folder;
  lastPathComponent = [pathCopy lastPathComponent];
  v11 = [PHAssetCollectionChangeRequest creationRequestForAssetCollectionWithTitle:lastPathComponent];

  placeholderForCreatedAssetCollection = [v11 placeholderForCreatedAssetCollection];
  if (placeholderForCreatedAssetCollection)
  {
    [(NSMutableDictionary *)self->_albumByAlbumPath setObject:placeholderForCreatedAssetCollection forKeyedSubscript:pathCopy];
    localIdentifier = [placeholderForCreatedAssetCollection localIdentifier];
    if (localIdentifier)
    {
      [(NSMutableDictionary *)self->_containerPathByLocalIdentifier setObject:pathCopy forKeyedSubscript:localIdentifier];
    }

    v14 = [(PHImporter *)self folderChangeRequestForFolder:folderCopy];
    v22[0] = placeholderForCreatedAssetCollection;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v14 addChildCollections:v15];

    v16 = 0;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    localIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"No error was returned from -[PHPhotoLibrary performChangesAndWait:error:] but the album local identifier was nil for %@", pathCopy];
    v21 = localIdentifier;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v17 errorWithDomain:@"com.apple.ImportErrorDomain" code:-6 userInfo:v14];
  }

  if (error)
  {
    v18 = v16;
    *error = v16;
  }

  return v11;
}

- (void)ensureContainersExistForAlbumPath:(id)path forAsset:(id)asset completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  assetCopy = asset;
  completionCopy = completion;
  v11 = [(NSMutableDictionary *)self->_albumByAlbumPath objectForKeyedSubscript:pathCopy];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v11)
  {
    albumRequestsByAlbumId = self->_albumRequestsByAlbumId;
    localIdentifier = [v11 localIdentifier];
    prefix = [(NSMutableDictionary *)albumRequestsByAlbumId objectForKeyedSubscript:localIdentifier];

    if (!prefix)
    {
      prefix = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:v11];
      localIdentifier2 = [v11 localIdentifier];
      if (localIdentifier2)
      {
        [(NSMutableDictionary *)self->_albumRequestsByAlbumId setObject:prefix forKeyedSubscript:localIdentifier2];
      }
    }

    v58 = assetCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [prefix addAssets:v16];
LABEL_7:
    placeholderForCreatedAssetCollection2 = 0;
    goto LABEL_42;
  }

  prefix = [(PHImportSource *)self->_source prefix];
  v18 = [(NSMutableDictionary *)self->_folderByFolderPath objectForKeyedSubscript:prefix];
  if (!v18)
  {
    v16 = PLImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [prefix lastPathComponent];
      *buf = 138412290;
      v61 = lastPathComponent;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Failed to create root folder '%@'", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v46 = completionCopy;
  v19 = v18;
  v20 = [(PHImporter *)self relativePathComponentsForAlbumPath:pathCopy fromRootPath:prefix];
  v21 = prefix;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v54 objects:v64 count:16];
  v50 = v22;
  v47 = assetCopy;
  v48 = pathCopy;
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

        placeholderForCreatedCollectionList = [(NSMutableDictionary *)self->_folderByFolderPath objectForKeyedSubscript:v21];

        if (!placeholderForCreatedCollectionList)
        {
          v53 = 0;
          selfCopy = self;
          v32 = [(PHImporter *)self createFolderForPath:v21 inFolder:v29 error:&v53];
          v33 = v53;
          if (v33)
          {
            v37 = v33;
            localIdentifier4 = PLImportGetLog();
            if (os_log_type_enabled(localIdentifier4, OS_LOG_TYPE_ERROR))
            {
              lastPathComponent2 = [v21 lastPathComponent];
              *buf = 138412546;
              v61 = lastPathComponent2;
              v62 = 2112;
              v63 = v37;
              _os_log_impl(&dword_19C86F000, localIdentifier4, OS_LOG_TYPE_ERROR, "Failed to create folder '%@' (%@)", buf, 0x16u);
            }

            placeholderForCreatedAssetCollection2 = 0;
            v19 = v26;
            goto LABEL_40;
          }

          placeholderForCreatedCollectionList = [v32 placeholderForCreatedCollectionList];
          localIdentifier3 = [placeholderForCreatedCollectionList localIdentifier];
          if (localIdentifier3)
          {
            [v51 addObject:localIdentifier3];
            [(NSMutableDictionary *)selfCopy->_folderRequestByFolderId setObject:v32 forKeyedSubscript:localIdentifier3];
          }

          else
          {
            v35 = PLImportGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              localizedTitle = [placeholderForCreatedCollectionList localizedTitle];
              *buf = 138412290;
              v61 = localizedTitle;
              _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Failed to get a valid local identifier for collection '%@'", buf, 0xCu);
            }

            v26 = v50;
          }

          self = selfCopy;
        }

        v19 = placeholderForCreatedCollectionList;

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
      assetCopy = v47;
      pathCopy = v48;
      goto LABEL_32;
    }

    placeholderForCreatedAssetCollection2 = 0;
  }

  else
  {

LABEL_32:
    v52 = 0;
    [(PHImporter *)self createAlbumForPath:pathCopy inFolder:v19 error:&v52];
    v32 = v40 = self;
    v37 = v52;
    if (v37)
    {
      localIdentifier4 = PLImportGetLog();
      if (os_log_type_enabled(localIdentifier4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = pathCopy;
        v62 = 2112;
        v63 = v37;
        _os_log_impl(&dword_19C86F000, localIdentifier4, OS_LOG_TYPE_ERROR, "Failed to lookup or create folder path to album '%@' (%@)", buf, 0x16u);
      }

      placeholderForCreatedAssetCollection2 = 0;
    }

    else
    {
      v41 = v40;
      v59 = assetCopy;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [v32 addAssets:v42];

      placeholderForCreatedAssetCollection = [v32 placeholderForCreatedAssetCollection];
      localIdentifier4 = [placeholderForCreatedAssetCollection localIdentifier];

      if (localIdentifier4)
      {
        [(NSMutableDictionary *)v41->_albumRequestsByAlbumId setObject:v32 forKeyedSubscript:localIdentifier4];
      }

      placeholderForCreatedAssetCollection2 = [v32 placeholderForCreatedAssetCollection];
    }

    v29 = v19;
LABEL_40:
  }

  assetCopy = v47;
  pathCopy = v48;
  completionCopy = v46;

  prefix = v45;
  v11 = 0;
  v16 = v50;
LABEL_42:

  if (completionCopy)
  {
    localIdentifier5 = [placeholderForCreatedAssetCollection2 localIdentifier];
    completionCopy[2](completionCopy, localIdentifier5, v51);
  }
}

- (id)relativePathComponentsForAlbumPath:(id)path fromRootPath:(id)rootPath
{
  pathCopy = path;
  rootPathCopy = rootPath;
  if (pathCopy && (v7 = [pathCopy length], v7 > objc_msgSend(rootPathCopy, "length")))
  {
    v8 = [pathCopy substringFromIndex:{objc_msgSend(rootPathCopy, "length") + 1}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 componentsSeparatedByString:@"/"];

  return v9;
}

- (void)addRecordToResults:(id)results
{
  importQueue = self->_importQueue;
  resultsCopy = results;
  dispatch_assert_queue_V2(importQueue);
  results = [(PHImporter *)self results];
  [results addImportRecord:resultsCopy];

  progress = [(PHImporter *)self progress];
  [progress setCompletedUnitCount:{objc_msgSend(progress, "completedUnitCount") + 1}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completedImportRecord:resultsCopy];
}

- (void)updateFolderCacheWithFolders:(id)folders
{
  v28 = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
  v6 = [PHCollectionList fetchCollectionListsWithLocalIdentifiers:foldersCopy options:v5];

  v19 = v6;
  fetchedObjects = [v6 fetchedObjects];
  if (![fetchedObjects count])
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = foldersCopy;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "no PHCollectionLists for %@", buf, 0xCu);
    }
  }

  v20 = foldersCopy;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = fetchedObjects;
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
        localIdentifier = [v14 localIdentifier];
        v17 = [(NSMutableDictionary *)containerPathByLocalIdentifier objectForKeyedSubscript:localIdentifier];

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

- (void)updateAlbumCacheWithAlbumIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
  v6 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:identifiersCopy options:v5];

  v19 = v6;
  fetchedObjects = [v6 fetchedObjects];
  v8 = fetchedObjects;
  v20 = identifiersCopy;
  if (fetchedObjects)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [fetchedObjects countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          localIdentifier = [v13 localIdentifier];
          v16 = [(NSMutableDictionary *)containerPathByLocalIdentifier objectForKeyedSubscript:localIdentifier];

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
      v26 = identifiersCopy;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "no PHAssetCollection for identifiers: %@", buf, 0xCu);
    }
  }
}

- (id)folderChangeRequestForFolder:(id)folder
{
  v15 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  folderRequestByFolderId = self->_folderRequestByFolderId;
  localIdentifier = [folderCopy localIdentifier];
  v7 = [(NSMutableDictionary *)folderRequestByFolderId objectForKeyedSubscript:localIdentifier];

  if (!v7)
  {
    v7 = [PHCollectionListChangeRequest changeRequestForCollectionList:folderCopy];
    localIdentifier2 = [folderCopy localIdentifier];
    if (localIdentifier2 && v7)
    {
      [(NSMutableDictionary *)self->_folderRequestByFolderId setObject:v7 forKeyedSubscript:localIdentifier2];
    }

    else
    {
      v9 = PLImportGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        v12 = localIdentifier2;
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to get a local identifier (%p) or request (%p) for collection", &v11, 0x16u);
      }
    }
  }

  return v7;
}

- (id)createFolderForPath:(id)path inFolder:(id)folder error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  folderCopy = folder;
  if (pathCopy)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    v11 = [PHCollectionListChangeRequest creationRequestForCollectionListWithTitle:lastPathComponent];

    placeholderForCreatedCollectionList = [v11 placeholderForCreatedCollectionList];
    if (placeholderForCreatedCollectionList)
    {
      pathCopy = [(PHImporter *)self folderChangeRequestForFolder:folderCopy];
      v26[0] = placeholderForCreatedCollectionList;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [pathCopy addChildCollections:v14];

      [(NSMutableDictionary *)self->_folderByFolderPath setObject:placeholderForCreatedCollectionList forKeyedSubscript:pathCopy];
      localIdentifier = [placeholderForCreatedCollectionList localIdentifier];
      if (localIdentifier)
      {
        containerPathByLocalIdentifier = self->_containerPathByLocalIdentifier;
        localIdentifier2 = [placeholderForCreatedCollectionList localIdentifier];
        [(NSMutableDictionary *)containerPathByLocalIdentifier setObject:pathCopy forKeyedSubscript:localIdentifier2];
      }

      else
      {
        localIdentifier2 = PLImportGetLog();
        if (os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = pathCopy;
          _os_log_impl(&dword_19C86F000, localIdentifier2, OS_LOG_TYPE_ERROR, "Failed to get a local identifier for collection created for %@", buf, 0xCu);
        }
      }

      v19 = 0;
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"folder local identifier was nil for %@", pathCopy];
      v23 = pathCopy;
      localIdentifier = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v19 = [v18 errorWithDomain:@"com.apple.ImportErrorDomain" code:-6 userInfo:localIdentifier];
    }

    if (error)
    {
      v20 = v19;
      *error = v19;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)validateSourceForAsset:(id)asset
{
  assetCopy = asset;
  source = [assetCopy source];
  isAvailable = [source isAvailable];

  if ((isAvailable & 1) == 0)
  {
    results = [(PHImporter *)self results];
    source2 = [assetCopy source];
    name = [source2 name];
    v9 = [results addExceptionWithType:3 path:name underlyingError:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:979];

    self->_isCanceled = 1;
  }
}

- (BOOL)handleErrorsForRecord:(id)record batch:(id)batch file:(char *)file line:(int)line
{
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  exceptions = [recordCopy exceptions];
  v9 = [exceptions count];

  if (v9)
  {
    importAsset = [recordCopy importAsset];

    if (importAsset)
    {
      v11 = PLImportGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        exceptions2 = [recordCopy exceptions];
        if ([exceptions2 count] <= 1)
        {
          v13 = @"]";
        }

        else
        {
          v13 = @"S]\n";
        }

        v14 = [PHImportException logForAllExceptions:recordCopy];
        v17 = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[IMPORT ERROR%@ %@", &v17, 0x16u);
      }

      importAsset2 = [recordCopy importAsset];
      [(PHImporter *)self validateSourceForAsset:importAsset2];

      [recordCopy cleanupAfterFailure];
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
      progress = [(PHImporter *)self progress];
      totalUnitCount = [progress totalUnitCount];
      progress2 = [(PHImporter *)self progress];
      [progress2 setCompletedUnitCount:totalUnitCount];
    }

    self->_importState = 3;
    if ([(NSMutableSet *)self->_importedBurstUUIDs count])
    {
      mEMORY[0x1E69BE290] = [MEMORY[0x1E69BE290] sharedAssetsSaver];
      allObjects = [(NSMutableSet *)self->_importedBurstUUIDs allObjects];
      photoLibraryURL = [(PHPhotoLibrary *)self->_library photoLibraryURL];
      v15 = [mEMORY[0x1E69BE290] validateAvalanches:allObjects inLibraryWithURL:photoLibraryURL];

      destinationAlbum = [(PHImportOptions *)self->_options destinationAlbum];
      if (destinationAlbum)
      {
        v17 = destinationAlbum;
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
              destinationAlbum2 = [(PHImportOptions *)self->_options destinationAlbum];
              localizedTitle = [destinationAlbum2 localizedTitle];
              *buf = 138412546;
              v46 = localizedTitle;
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

    results = [(PHImporter *)self results];
    [results logPMR];

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      results2 = [(PHImporter *)self results];
      completionHandler[2](completionHandler, results2);
    }

    v30 = PLImportGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      results3 = [(PHImporter *)self results];
      importedCount = [results3 importedCount];
      results4 = [(PHImporter *)self results];
      importSource = [results4 importSource];
      v35 = objc_opt_class();
      results5 = [(PHImporter *)self results];
      importSource2 = [results5 importSource];
      *buf = 134218498;
      v46 = importedCount;
      v47 = 2114;
      v48 = v35;
      v49 = 2048;
      v50 = importSource2;
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

- (void)addLibraryPropertiesFromImportAssetBundleAsset:(id)asset toCreationRequest:(id)request
{
  requestCopy = request;
  assetBundle = [asset assetBundle];
  videoComplementVisibilityState = [assetBundle videoComplementVisibilityState];
  if (videoComplementVisibilityState)
  {
    [requestCopy setPhotoIrisVisibilityState:videoComplementVisibilityState];
  }

  creationDate = [requestCopy creationDate];

  if (!creationDate)
  {
    libraryCreationDate = [assetBundle libraryCreationDate];
    if (libraryCreationDate)
    {
      [requestCopy setCreationDate:libraryCreationDate];
      libraryCreationDateTimeZone = [assetBundle libraryCreationDateTimeZone];
      if (libraryCreationDateTimeZone)
      {
        [requestCopy setTimeZone:libraryCreationDateTimeZone withDate:libraryCreationDate];
      }
    }
  }

  location = [requestCopy location];

  if (!location)
  {
    libraryLocation = [assetBundle libraryLocation];
    if (libraryLocation)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [requestCopy setLocation:libraryLocation];
      }
    }
  }

  if ([assetBundle spatialOvercaptureResourcesPurgeable])
  {
    [requestCopy trashAllSpatialOverCaptureResources];
  }
}

- (void)addDescriptionPropertiesFromImportAsset:(id)asset toCreationRequest:(id)request
{
  assetCopy = asset;
  requestCopy = request;
  title = [requestCopy title];

  if (!title)
  {
    title2 = [assetCopy title];
    if (title2)
    {
      [requestCopy setTitle:title2];
    }
  }

  keywordTitles = [requestCopy keywordTitles];

  if (!keywordTitles)
  {
    keywordTitles2 = [assetCopy keywordTitles];
    if (keywordTitles2)
    {
      [requestCopy setKeywordTitles:keywordTitles2];
    }
  }

  assetDescription = [requestCopy assetDescription];

  if (!assetDescription)
  {
    assetDescription2 = [assetCopy assetDescription];
    if (assetDescription2)
    {
      [requestCopy setAssetDescription:assetDescription2];
    }
  }

  accessibilityDescription = [requestCopy accessibilityDescription];

  if (!accessibilityDescription)
  {
    accessibilityDescription2 = [assetCopy accessibilityDescription];
    if (accessibilityDescription2)
    {
      [requestCopy setAccessibilityDescription:accessibilityDescription2];
    }
  }
}

- (void)_applyFastVideoModernizationToRecord:(id)record
{
  v29 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  importAsset = [recordCopy importAsset];
  timers = [recordCopy timers];
  v7 = [timers startTiming:10 subtype:0];

  if ([importAsset isMovie] && !-[PHImporter shouldImportRecordAsReference:](self, "shouldImportRecordAsReference:", recordCopy))
  {
    metadata = [importAsset metadata];
    contentTypeFromFastModernizeVideoMedia = [metadata contentTypeFromFastModernizeVideoMedia];

    if (contentTypeFromFastModernizeVideoMedia)
    {
      contentType = [importAsset contentType];
      v11 = [contentType isEqual:contentTypeFromFastModernizeVideoMedia];

      if ((v11 & 1) == 0)
      {
        preferredFilenameExtension = [contentTypeFromFastModernizeVideoMedia preferredFilenameExtension];
        downloadedPath = [recordCopy downloadedPath];
        stringByDeletingPathExtension = [downloadedPath stringByDeletingPathExtension];
        v25 = preferredFilenameExtension;
        v15 = [stringByDeletingPathExtension stringByAppendingPathExtension:preferredFilenameExtension];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v17 = MEMORY[0x1E695DFF8];
        downloadedPath2 = [recordCopy downloadedPath];
        v19 = [v17 fileURLWithPath:downloadedPath2];
        v24 = v15;
        v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
        v26 = 0;
        LOBYTE(v17) = [defaultManager moveItemAtURL:v19 toURL:v20 error:&v26];
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

        [recordCopy setDownloadedPath:v24];
      }
    }
  }

  timers2 = [recordCopy timers];
  [timers2 stopTiming:v7];
}

- (id)_importRecord:(id)record createdAlbumIdentifiers:(id)identifiers createdFolderIdentifiers:(id)folderIdentifiers
{
  v65 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  identifiersCopy = identifiers;
  folderIdentifiersCopy = folderIdentifiers;
  importAsset = [recordCopy importAsset];
  [(PHImporter *)self _applyFastVideoModernizationToRecord:recordCopy];
  v49 = identifiersCopy;
  if ([importAsset shouldPreserveUUID])
  {
    uuid = [importAsset uuid];
    v12 = [PHAssetCreationRequest creationRequestForAssetWithUUID:uuid];
  }

  else
  {
    v12 = [PHAssetCreationRequest creationRequestForAssetWithUUID:0];
  }

  [v12 setImportSessionID:{self->_importSessionID, v49}];
  [v12 setImportedBy:{-[PHImportOptions importedBy](self->_options, "importedBy")}];
  v53 = importAsset;
  customAssetProperties = [importAsset customAssetProperties];
  [v12 setCustomAssetProperties:customAssetProperties];

  v51 = recordCopy;
  [recordCopy allImportRecords];
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
        importAsset2 = [v17 importAsset];
        [(PHImporter *)self addDescriptionPropertiesFromImportAsset:importAsset2 toCreationRequest:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PHImporter *)self addLibraryPropertiesFromImportAssetBundleAsset:importAsset2 toCreationRequest:v12];
        }

        v19 = objc_alloc_init(PHAssetResourceCreationOptions);
        v20 = [(PHImporter *)self shouldImportRecordAsReference:v17];
        if (v20)
        {
          [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:0];
          importAsset3 = [v17 importAsset];
          -[PHAssetResourceCreationOptions setShouldIngestInPlace:](v19, "setShouldIngestInPlace:", [importAsset3 hasOriginalResourceType]);
        }

        else
        {
          pathManager = [(PHPhotoLibrary *)self->_library pathManager];
          isUBF = [pathManager isUBF];

          if (isUBF)
          {
            [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:1];
            [(PHAssetResourceCreationOptions *)v19 setShouldIngestInPlace:0];
          }

          else
          {
            importAsset4 = [v17 importAsset];
            [(PHAssetResourceCreationOptions *)v19 setShouldIngestInPlace:[(PHImporter *)self shouldIngestInPlace:importAsset4]];

            [(PHAssetResourceCreationOptions *)v19 setShouldMoveFile:[(PHAssetResourceCreationOptions *)v19 shouldIngestInPlace]^ 1];
          }
        }

        createdFileName = [importAsset2 createdFileName];
        if (createdFileName)
        {
          [(PHAssetResourceCreationOptions *)v19 setOriginalFilename:createdFileName];
        }

        else
        {
          fileName = [importAsset2 fileName];
          [(PHAssetResourceCreationOptions *)v19 setOriginalFilename:fileName];
        }

        contentType = [importAsset2 contentType];
        identifier = [contentType identifier];
        [(PHAssetResourceCreationOptions *)v19 setUniformTypeIdentifier:identifier];

        fileCreationDate = [importAsset2 fileCreationDate];
        [(PHAssetResourceCreationOptions *)v19 setAlternateImportImageDate:fileCreationDate];

        -[PHAssetResourceCreationOptions setBurstPickType:](v19, "setBurstPickType:", [importAsset2 burstPickType]);
        if (!v20)
        {
          downloadedPath = [v17 downloadedPath];

          if (downloadedPath)
          {
            v32 = MEMORY[0x1E695DFF8];
            downloadedPath2 = [v17 downloadedPath];
            v30 = [v32 fileURLWithPath:downloadedPath2];

            if (!v30)
            {
              goto LABEL_27;
            }

LABEL_24:
            [v12 addResourceWithType:objc_msgSend(importAsset2 fileURL:"resourceType") options:{v30, v19}];
          }

          else
          {
            v30 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Importing as copy. Expected record to have a download path."];
            fileName2 = [importAsset2 fileName];
            v35 = [v17 addExceptionWithType:0 path:fileName2 underlyingError:v30 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:785];
          }

          goto LABEL_27;
        }

        v30 = [importAsset2 url];
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

  placeholderForCreatedAsset = [v12 placeholderForCreatedAsset];
  v37 = placeholderForCreatedAsset;
  if (!placeholderForCreatedAsset)
  {
    stringByDeletingLastPathComponent = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to get a placeholder object for asset"];
    fileName3 = [v53 fileName];
    v39 = v51;
    v44 = [v51 addExceptionWithType:0 path:fileName3 underlyingError:stringByDeletingLastPathComponent file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:810];
    goto LABEL_33;
  }

  localIdentifier = [placeholderForCreatedAsset localIdentifier];
  v39 = v51;
  [v51 setAssetIdentifier:localIdentifier];

  destinationAlbum = [(PHImportOptions *)self->_options destinationAlbum];

  if (destinationAlbum)
  {
    destinationAlbum2 = [(PHImportOptions *)self->_options destinationAlbum];
    stringByDeletingLastPathComponent = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:destinationAlbum2];

    v63 = v37;
    fileName3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    [stringByDeletingLastPathComponent addAssets:fileName3];
LABEL_33:

    goto LABEL_34;
  }

  if ([v53 canPreserveFolderStructure] && -[PHImportOptions preserveFolderStructure](self->_options, "preserveFolderStructure"))
  {
    v47 = [v53 url];
    path = [v47 path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __77__PHImporter__importRecord_createdAlbumIdentifiers_createdFolderIdentifiers___block_invoke;
    v56[3] = &unk_1E75A7958;
    v57 = v50;
    v58 = folderIdentifiersCopy;
    [(PHImporter *)self ensureContainersExistForAlbumPath:stringByDeletingLastPathComponent forAsset:v37 completion:v56];

    fileName3 = v57;
    goto LABEL_33;
  }

LABEL_34:
  placeholderForCreatedAsset2 = [v12 placeholderForCreatedAsset];

  return placeholderForCreatedAsset2;
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

- (void)importRecords:(id)records completionHandler:(id)handler
{
  recordsCopy = records;
  handlerCopy = handler;
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
  library = [(PHImporter *)self library];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__PHImporter_importRecords_completionHandler___block_invoke;
  v16[3] = &unk_1E75A9D58;
  v17 = recordsCopy;
  selfCopy = self;
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
  v10 = handlerCopy;
  v13 = v10;
  [library performChanges:v16 completionHandler:v11];

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

- (id)_recordsToImportWithCount:(unint64_t)count
{
  v5 = [(NSMutableArray *)self->_downloadedRecords subarrayWithRange:0, count];
  [(NSMutableArray *)self->_downloadedRecords removeObjectsInRange:0, count];

  return v5;
}

- (void)importRecords:(id)records
{
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_importQueue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__PHImporter_importRecords___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v7 = recordsCopy;
  selfCopy = self;
  v5 = recordsCopy;
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

- (void)downloadNextAssetInRecord:(id)record toURL:(id)l subRecordEnumerator:(id)enumerator completionHandler:(id)handler
{
  recordCopy = record;
  lCopy = l;
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_importQueue);
  nextObject = [enumeratorCopy nextObject];
  if (!nextObject)
  {
    importQueue = self->_importQueue;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke;
    v39[3] = &unk_1E75AADE8;
    v40 = handlerCopy;
    dispatch_async(importQueue, v39);
    v23 = v40;
    goto LABEL_7;
  }

  if (-[PHImporter shouldImportRecordAsReference:](self, "shouldImportRecordAsReference:", nextObject) || ![nextObject needsDownload])
  {
    v22 = self->_importQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_105;
    block[3] = &unk_1E75AAB40;
    block[4] = self;
    v27 = recordCopy;
    v28 = lCopy;
    v29 = enumeratorCopy;
    v30 = handlerCopy;
    dispatch_async(v22, block);

    v23 = v27;
LABEL_7:

    goto LABEL_8;
  }

  timers = [nextObject timers];
  v16 = [timers startTiming:1 subtype:0];

  importAsset = [nextObject importAsset];
  fileName = [importAsset fileName];
  uppercaseString = [fileName uppercaseString];
  v19 = [lCopy URLByAppendingPathComponent:uppercaseString];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__PHImporter_downloadNextAssetInRecord_toURL_subRecordEnumerator_completionHandler___block_invoke_2;
  v31[3] = &unk_1E75A78E0;
  v31[4] = self;
  v32 = nextObject;
  v33 = v16;
  v34 = recordCopy;
  v38 = handlerCopy;
  v35 = importAsset;
  v36 = lCopy;
  v37 = enumeratorCopy;
  v20 = importAsset;
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

- (BOOL)shouldImportRecordAsReference:(id)reference
{
  referenceCopy = reference;
  if ([(PHImportOptions *)self->_options shouldImportAsReferenced])
  {
    canReference = [referenceCopy canReference];
  }

  else
  {
    canReference = 0;
  }

  return canReference;
}

- (void)importNextAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_importQueue);
  if (!self->_isCanceled)
  {
    nextObject = [assetCopy nextObject];
    v7 = nextObject;
    if (nextObject)
    {
      importRecordForPrimaryAsset = [nextObject importRecordForPrimaryAsset];
      if ([(PHImporter *)self handleErrorsForRecord:importRecordForPrimaryAsset batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:502])
      {
        [(PHImporter *)self addRecordToResults:importRecordForPrimaryAsset];
        importQueue = self->_importQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __30__PHImporter_importNextAsset___block_invoke;
        block[3] = &unk_1E75AAEB0;
        block[4] = self;
        v28 = assetCopy;
        dispatch_async(importQueue, block);

LABEL_18:
        goto LABEL_19;
      }

LABEL_11:
      isCanceled = [(PHImporter *)self getDestinationUrlForImportAsset:v7, v20, isCanceled];
      if (isCanceled)
      {
        allImportRecords = [importRecordForPrimaryAsset allImportRecords];
        objectEnumerator = [allImportRecords objectEnumerator];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __30__PHImporter_importNextAsset___block_invoke_3;
        v22[3] = &unk_1E75AB248;
        v22[4] = self;
        v23 = importRecordForPrimaryAsset;
        v24 = assetCopy;
        [(PHImporter *)self downloadNextAssetInRecord:v23 toURL:isCanceled subRecordEnumerator:objectEnumerator completionHandler:v22];
      }

      else
      {
        v13 = MEMORY[0x1E696ABC0];
        fileName = [v7 fileName];
        v15 = [v13 ph_genericErrorWithLocalizedDescription:{@"Unable to get a downloadPath for %@", fileName}];

        v16 = [v7 url];
        path = [v16 path];
        v18 = [importRecordForPrimaryAsset addExceptionWithType:0 path:path underlyingError:v15 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:511];

        [(PHImporter *)self handleErrorsForRecord:importRecordForPrimaryAsset batch:0 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:512];
        [(PHImporter *)self addRecordToResults:importRecordForPrimaryAsset];
        v19 = self->_importQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __30__PHImporter_importNextAsset___block_invoke_2;
        v25[3] = &unk_1E75AAEB0;
        v25[4] = self;
        v26 = assetCopy;
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
      importRecordForPrimaryAsset = [(PHImporter *)self _recordsToImportWithCount:[(NSMutableArray *)self->_downloadedRecords count]];
      [(PHImporter *)self importRecords:importRecordForPrimaryAsset];
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

- (id)getDestinationUrlForImportAsset:(id)asset
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  pathManager = [(PHPhotoLibrary *)self->_library pathManager];
  isUBF = [pathManager isUBF];

  parentFolderPath = [assetCopy parentFolderPath];
  v8 = parentFolderPath;
  if (isUBF)
  {
    if (parentFolderPath)
    {
      v9 = [(PHImporter *)self makeDownloadUrlForParentFolderPath:parentFolderPath];
    }

    else
    {
      v16 = PLImportGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = assetCopy;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Didn't get a parent folder for asset %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    importIdentifier = [assetCopy importIdentifier];
    v11 = [(NSMutableDictionary *)self->_downloadFolderUrlByImportIdentifier objectForKeyedSubscript:importIdentifier];
    if (v11)
    {
      v9 = v11;
      pathManager2 = [(PHPhotoLibrary *)self->_library pathManager];
      v22 = 0;
      v13 = [pathManager2 externalDirectoryWithSubType:1 createIfNeeded:1 error:&v22];
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
        [(NSMutableDictionary *)self->_downloadFolderUrlByImportIdentifier setObject:v9 forKeyedSubscript:importIdentifier];
      }
    }

    else
    {
      v20 = PLImportGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        uuid = [assetCopy uuid];
        *buf = 138412290;
        v24 = uuid;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Didn't get a parent folder for asset %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)makeDownloadUrlForParentFolderPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_parentFolderMapping objectForKeyedSubscript:pathCopy];
  if (!v5)
  {
    pathManager = [(PHPhotoLibrary *)self->_library pathManager];
    if ([pathManager isUBF])
    {
      v17 = 0;
      v7 = &v17;
      v8 = [pathManager externalDirectoryWithSubType:1 leafType:1 additionalPathComponents:pathCopy createIfNeeded:1 error:&v17];
    }

    else
    {
      v16 = 0;
      v7 = &v16;
      v8 = [pathManager externalDirectoryWithSubType:1 createIfNeeded:1 error:&v16];
    }

    v9 = v8;
    v10 = *v7;
    if (v9)
    {
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:1];
      if (v11)
      {
        v5 = v11;
        [(NSMutableDictionary *)self->_parentFolderMapping setObject:v11 forKeyedSubscript:pathCopy];
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

- (void)ensureEnoughDiskSpaceAvailableIfNeededForAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
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

    completionCopy[2](completionCopy, 1);
    goto LABEL_17;
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0x200000;
  v10 = [assetsCopy count];
  if (PHImportConcurrencyLimit_onceToken != -1)
  {
    dispatch_once(&PHImportConcurrencyLimit_onceToken, &__block_literal_global_4847);
  }

  v11 = PHImportConcurrencyLimit_concurrencyLimit;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke;
  v25[3] = &unk_1E75A7868;
  v26 = assetsCopy;
  v27 = buf;
  PHImportDispatchApply(v10, v11, 0, v25);
  photoLibraryURL = [(PHPhotoLibrary *)self->_library photoLibraryURL];
  path = [photoLibraryURL path];

  LOBYTE(photoLibraryURL) = [MEMORY[0x1E69BE2D0] hasEntitlementsForCacheDelete];
  pathManager = [(PHPhotoLibrary *)self->_library pathManager];
  capabilities = [pathManager capabilities];
  isNetworkVolume = [capabilities isNetworkVolume];

  if (isNetworkVolume & 1 | ((photoLibraryURL & 1) == 0))
  {
    v17 = PLImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Performing Cache Delete requests from this process is NOT POSSIBLE due to entitlements or network volume, so falling back to just checking for available disk space, and failing if not.", v24, 2u);
    }

    v18 = atomic_load(v29 + 3);
    [(PHImporter *)self performLegacyDiskSpaceCheckForRequiredBytes:v18 forPath:path withCompletion:completionCopy];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69BE2D0]) initWithQoSClass:25 pathForVolume:path callbackQueue:self->_importQueue];
    [(PHImporter *)self setCacheDeleteClient:v19];

    cacheDeleteClient = [(PHImporter *)self cacheDeleteClient];
    v21 = atomic_load(v29 + 3);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __73__PHImporter_ensureEnoughDiskSpaceAvailableIfNeededForAssets_completion___block_invoke_80;
    v22[3] = &unk_1E75A7890;
    v22[4] = self;
    v23 = completionCopy;
    [cacheDeleteClient requestDiskSpaceAvailabilityOfSize:v21 completion:v22];
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

- (void)performLegacyDiskSpaceCheckForRequiredBytes:(int64_t)bytes forPath:(id)path withCompletion:(id)completion
{
  v25[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  completionCopy = completion;
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
    v11 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:pathCopy];
    v12 = bytes - v11;
    if (bytes >= v11)
    {
      v13 = v11;
      v24[0] = *MEMORY[0x1E696A278];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:bytes];
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
      v17 = [v14 stringWithFormat:@"Not enough storage space available for import. Bytes required: %@. Bytes available: %@", v15, v16];
      v24[1] = @"MoreSpaceRequired";
      v25[0] = v17;
      v18 = [MEMORY[0x1E696AAF0] stringFromByteCount:v12 countStyle:0];
      v25[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ImportErrorDomain" code:-5 userInfo:v19];
      results = [(PHImporter *)self results];
      v22 = [results addExceptionWithType:5 path:0 underlyingError:v20 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImporter.m" line:339];

      [(NSProgress *)self->_progress cancel];
      completionCopy[2](completionCopy, 0);

      goto LABEL_8;
    }
  }

  completionCopy[2](completionCopy, 1);
LABEL_8:
}

- (id)beginImport:(id)import
{
  v57[1] = *MEMORY[0x1E69E9840];
  importCopy = import;
  pathManager = [(PHPhotoLibrary *)self->_library pathManager];
  isUBF = [pathManager isUBF];

  if (isUBF)
  {
    v7 = [(PHImporter *)self removeImportDirectoryForLibrary:self->_library];
  }

  options = [(PHImporter *)self options];
  sortDescriptor = [options sortDescriptor];

  if (sortDescriptor)
  {
    options2 = [(PHImporter *)self options];
    sortDescriptor2 = [options2 sortDescriptor];
    v57[0] = sortDescriptor2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    v13 = [importCopy sortedArrayUsingDescriptors:v12];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = [importCopy mutableCopy];
  }

  if ([importCopy count])
  {
    v15 = [importCopy objectAtIndexedSubscript:0];
    canPreserveFolderStructure = [v15 canPreserveFolderStructure];

    if (canPreserveFolderStructure)
    {
      if ([(PHImportOptions *)self->_options preserveFolderStructure])
      {
        prefix = [(PHImportSource *)self->_source prefix];
        v18 = prefix == 0;

        if (!v18)
        {
          destinationFolder = [(PHImportOptions *)self->_options destinationFolder];
          if (!destinationFolder)
          {
            v20 = [PHFetchOptions fetchOptionsWithPhotoLibrary:self->_library orObject:0];
            v21 = [PHCollectionList fetchRootAlbumCollectionListWithOptions:v20];

            destinationFolder = [v21 firstObject];
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
          v23 = destinationFolder;
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
              prefix2 = [(PHImportSource *)self->_source prefix];
              v28 = v52[5];
              *buf = 138412546;
              v47 = prefix2;
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
              prefix3 = [(PHImportSource *)self->_source prefix];
              *buf = 138412546;
              v47 = prefix3;
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

- (PHImporter)initWithLibrary:(id)library options:(id)options source:(id)source delegate:(id)delegate completionHandler:(id)handler
{
  libraryCopy = library;
  optionsCopy = options;
  sourceCopy = source;
  delegateCopy = delegate;
  handlerCopy = handler;
  v66.receiver = self;
  v66.super_class = PHImporter;
  v18 = [(PHImporter *)&v66 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_library, library);
    if (optionsCopy)
    {
      v20 = optionsCopy;
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

    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    importSessionID = v19->_importSessionID;
    v19->_importSessionID = uUIDString;

    v19->_importState = 0;
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INITIATED, -1);
    v28 = dispatch_queue_create("com.photos.import.serviceimporter", v27);
    importQueue = v19->_importQueue;
    v19->_importQueue = v28;

    pathManager = [libraryCopy pathManager];
    LODWORD(v27) = [pathManager isDCIM];

    v31 = 0x1E695D000;
    v32 = 0x1E695D000;
    if (v27)
    {
      v33 = objc_alloc(MEMORY[0x1E69BF268]);
      photoLibraryBundle = [libraryCopy photoLibraryBundle];
      [photoLibraryBundle pathManager];
      sourceCopy2 = source;
      v36 = optionsCopy;
      v37 = libraryCopy;
      v38 = handlerCopy;
      v39 = delegateCopy;
      v41 = v40 = sourceCopy;
      v42 = v33;
      v32 = 0x1E695D000uLL;
      v43 = [v42 initWithPathManager:v41];
      importFileManager = v19->_importFileManager;
      v19->_importFileManager = v43;

      sourceCopy = v40;
      delegateCopy = v39;
      handlerCopy = v38;
      libraryCopy = v37;
      optionsCopy = v36;
      source = sourceCopy2;
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
    objc_storeStrong(&v19->_source, source);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v53 = [handlerCopy copy];
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

+ (void)dumpMetadataForData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CGImageSourceCreateWithData(data, 0);
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

+ (void)dumpImageData:(id)data
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E696E0E8];
  v3 = v13;
  v4 = MEMORY[0x1E695E118];
  v14[0] = MEMORY[0x1E695E118];
  v5 = MEMORY[0x1E695DF20];
  dataCopy = data;
  v7 = [v5 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = CGImageSourceCreateWithData(dataCopy, v7);

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

+ (id)removeItemAtPath:(id)path type:(unint64_t)type recursive:(BOOL)recursive
{
  v39[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v9 = [defaultManager attributesOfItemAtPath:pathCopy error:&v33];
  v10 = v33;
  if (!v9)
  {
    goto LABEL_21;
  }

  fileType = [v9 fileType];
  v12 = fileType;
  if (type || fileType != *MEMORY[0x1E696A3E8])
  {
    fileType2 = [v9 fileType];

    if (type != 1 || fileType2 != *MEMORY[0x1E696A3E0])
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v34[0] = *MEMORY[0x1E696A368];
      v34[1] = v25;
      v35[0] = pathCopy;
      v26 = @"file";
      if (type)
      {
        v26 = @"folder";
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to delete '%@' as a %@", pathCopy, v26];
      v35[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v29 = [v24 errorWithDomain:@"com.apple.PHImport" code:2 userInfo:v28];

      v10 = v29;
      goto LABEL_21;
    }
  }

  else
  {

    fileType2 = *MEMORY[0x1E696A3E0];
  }

  fileType3 = [v9 fileType];

  if (fileType3 == fileType2)
  {
    v15 = [defaultManager enumeratorAtPath:pathCopy];
    if (!v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v38[0] = *MEMORY[0x1E696A368];
      v38[1] = v17;
      v39[0] = pathCopy;
      v39[1] = @"Can't get a directory enumerator";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v19 = [v16 errorWithDomain:@"com.apple.PHImport" code:1 userInfo:v18];

      v10 = v19;
    }

    if (!v10)
    {
      nextObject = [v15 nextObject];

      if (nextObject)
      {
        if (!recursive)
        {
          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A578];
          v36[0] = *MEMORY[0x1E696A368];
          v36[1] = v22;
          v37[0] = pathCopy;
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
    [defaultManager removeItemAtPath:pathCopy error:&v32];
    v10 = v32;
  }

LABEL_21:
  v30 = v10;

  return v10;
}

+ (void)importAssets:(id)assets fromImportSource:(id)source intoLibrary:(id)library withOptions:(id)options progress:(id *)progress delegate:(id)delegate atEnd:(id)end
{
  v39 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  sourceCopy = source;
  libraryCopy = library;
  optionsCopy = options;
  delegateCopy = delegate;
  endCopy = end;
  v18 = PLImportGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = objc_opt_class();
    v37 = 2048;
    v38 = sourceCopy;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "Importing assets from %{public}@ <%p>", buf, 0x16u);
  }

  if ([assetsCopy count])
  {
    v19 = [[PHImporter alloc] initWithLibrary:libraryCopy options:optionsCopy source:sourceCopy delegate:delegateCopy completionHandler:endCopy];
    if (progress)
    {
      if (*progress)
      {
        v20 = *progress;
        [v20 setTotalUnitCount:{objc_msgSend(assetsCopy, "count")}];
      }

      else
      {
        v20 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(assetsCopy, "count")}];
        v24 = v20;
        *progress = v20;
      }
    }

    else
    {
      v20 = 0;
    }

    [v20 setCancellable:{1, optionsCopy}];
    objc_initWeak(buf, v19);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke;
    v33[3] = &unk_1E75A9A90;
    objc_copyWeak(&v34, buf);
    [v20 setCancellationHandler:v33];
    v25 = libraryCopy;
    [(PHImporter *)v19 setProgress:v20];
    importQueue = v19->_importQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PHImporter_importAssets_fromImportSource_intoLibrary_withOptions_progress_delegate_atEnd___block_invoke_2;
    block[3] = &unk_1E75AA870;
    v30 = v19;
    v31 = assetsCopy;
    v32 = endCopy;
    v23 = v19;
    dispatch_async(importQueue, block);

    libraryCopy = v25;
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);

LABEL_14:
    goto LABEL_15;
  }

  if (endCopy)
  {
    v21 = PLImportGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      name = [sourceCopy name];
      *buf = 138543362;
      v36 = name;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_INFO, "Nothing to import from '%{public}@'", buf, 0xCu);
    }

    v23 = objc_alloc_init(PHImportResults);
    (*(endCopy + 2))(endCopy, v23);
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