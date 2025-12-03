@interface FPItemManager
+ (id)defaultManager;
+ (void)_promoteItemToAppLibraryIfNeeded:(id)needed;
- (BOOL)_isValidDestination:(id)destination;
- (BOOL)_itemIsOfArchiveType:(id)type;
- (BOOL)isItemInTrash:(id)trash;
- (FPItemManager)init;
- (id)appLibraryCollectionForProviderDomain:(id)domain;
- (id)appLibraryCollectionForProviderDomainID:(id)d;
- (id)collectionForFolderItem:(id)item;
- (id)eligibleActionsForDroppingItems:(id)items underItem:(id)item;
- (id)eligibleActionsForDroppingUTIs:(id)is underItem:(id)item;
- (id)eligibleActionsForItems:(id)items domainCachePolicy:(unint64_t)policy;
- (id)eligibleActionsForItems:(id)items providerDomain:(id)domain;
- (id)evictItemAtURL:(id)l completionHandler:(id)handler;
- (id)itemForURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newCollectionForProvider:(id)provider;
- (id)newCollectionForTag:(id)tag;
- (id)newCollectionWithItemAtURL:(id)l skipValidation:(BOOL)validation error:(id *)error;
- (id)newCollectionWithItemID:(id)d;
- (id)newEvictableCollection;
- (id)newFavoritesCollection;
- (id)newNonAutoEvictableCollection;
- (id)newRecentsCollection;
- (id)newSharedItemsCollection;
- (id)newTagCollection;
- (id)newTrashCollection;
- (id)operationForAction:(id)action items:(id)items;
- (id)pathComponentsForURL:(id)l error:(id *)error;
- (id)rootCollectionForProviderDomain:(id)domain;
- (id)serverCollectionForFolderItem:(id)item;
- (id)servicesForItemAtURL:(id)l error:(id *)error;
- (id)thumbnailsFetchOperationForItem:(id)item withVersions:(id)versions withSize:(CGSize)size scale:(double)scale;
- (id)thumbnailsFetchOperationForItems:(id)items withSize:(CGSize)size scale:(double)scale;
- (id)trashCollectionForProviderDomain:(id)domain;
- (void)_fetchHierarchyForItemID:(id)d recursively:(BOOL)recursively depth:(unint64_t)depth completionHandler:(id)handler;
- (void)_fetchItemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)_fetchPathComponentsForURL:(id)l synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)extendBookmarkForItem:(id)item receivingBundleID:(id)d completionHandler:(id)handler;
- (void)fetchAllParentsForItem:(id)item completionHandler:(id)handler;
- (void)fetchDefaultLocationForApplication:(id)application defaultProviderDomain:(id)domain completionHandler:(id)handler;
- (void)fetchDefaultLocationForApplicationRecord:(id)record defaultProviderDomain:(id)domain completionHandler:(id)handler;
- (void)fetchIndexPropertiesForItemAtURL:(id)l completionHandler:(id)handler;
- (void)fetchItemForItemID:(id)d completionHandler:(id)handler;
- (void)fetchOperationServiceForProviderDomainID:(id)d handler:(id)handler;
- (void)fetchParentForItem:(id)item completionHandler:(id)handler;
- (void)fetchRemoteDomainForProviderDomainID:(id)d handler:(id)handler;
- (void)fetchRootItemForProviderDomain:(id)domain completionHandler:(id)handler;
- (void)fetchServicesWithName:(id)name itemAtURL:(id)l synchronously:(BOOL)synchronously handler:(id)handler;
- (void)fetchVendorServiceForProviderDomainID:(id)d handler:(id)handler;
- (void)recursivelyExportItem:(id)item toURL:(id)l completionHandler:(id)handler;
- (void)scheduleAction:(id)action;
@end

@implementation FPItemManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[FPItemManager defaultManager];
  }

  v3 = defaultManager_defaultManager_0;

  return v3;
}

uint64_t __31__FPItemManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager_0 = objc_alloc_init(FPItemManager);

  return MEMORY[0x1EEE66BB8]();
}

- (FPItemManager)init
{
  v14.receiver = self;
  v14.super_class = FPItemManager;
  v2 = [(FPItemManager *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"FPItemManager operation queue"];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("FPItemManager completion queue", v5);
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("FPItemManager.notificationQueue", v8);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v9;

    v11 = objc_opt_new();
    activeCollections = v2->_activeCollections;
    v2->_activeCollections = v11;
  }

  return v2;
}

- (id)newTrashCollection
{
  v2 = FPItemPredicate(&__block_literal_global_41_1);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  [(FPQueryCollection *)v3 setDescriptionName:@"trashed items (CS)"];
  v4 = [[FPTrashUnionCollection alloc] initWithQueryCollection:v3];

  return v4;
}

- (id)newRecentsCollection
{
  v2 = FPItemPredicate(&__block_literal_global_65);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  fp_sortDescriptorByLastUsedDate = [MEMORY[0x1E695DEC8] fp_sortDescriptorByLastUsedDate];
  [(FPItemCollection *)v3 reorderItemsWithSortDescriptors:fp_sortDescriptorByLastUsedDate];

  [(FPQueryCollection *)v3 setDescriptionName:@"recent files"];
  return v3;
}

- (id)newFavoritesCollection
{
  v2 = FPItemPredicate(&__block_literal_global_34_0);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  [(FPQueryCollection *)v3 setDescriptionName:@"favorited items"];

  return v3;
}

- (id)newSharedItemsCollection
{
  v2 = FPItemPredicate(&__block_literal_global_85_0);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  [(FPQueryCollection *)v3 setDescriptionName:@"all shared items"];

  return v3;
}

uint64_t __37__FPItemManager_newRecentsCollection__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = FPRecencyQualifyingAttributes();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v2 valueForKey:{*(*(&v12 + 1) + 8 * v7), v12}];

        if (!v8)
        {

          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([v2 isTrashed])
  {
LABEL_12:
    v9 = 0;
  }

  else
  {
    v9 = [v2 isFolder] ^ 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)rootCollectionForProviderDomain:(id)domain
{
  identifier = [domain identifier];
  v5 = [FPItemID rootItemIDWithProviderDomainID:identifier];

  v6 = [(FPItemManager *)self newCollectionWithItemID:v5];

  return v6;
}

- (id)collectionForFolderItem:(id)item
{
  itemID = [item itemID];
  v5 = [(FPItemManager *)self newCollectionWithItemID:itemID];

  return v5;
}

- (id)serverCollectionForFolderItem:(id)item
{
  itemCopy = item;
  if ([itemCopy state])
  {
    [(FPItemManager *)a2 serverCollectionForFolderItem:?];
  }

  formerItemID = [itemCopy formerItemID];
  v7 = [(FPItemManager *)self newCollectionWithItemID:formerItemID];

  return v7;
}

- (id)trashCollectionForProviderDomain:(id)domain
{
  domainCopy = domain;
  v4 = objc_opt_new();
  v5 = [FPItemID alloc];
  identifier = [domainCopy identifier];

  v7 = [(FPItemID *)v5 initWithProviderDomainID:identifier itemIdentifier:@"NSFileProviderTrashContainerItemIdentifier"];
  [v4 setEnumeratedItemID:v7];

  v8 = [[FPExtensionCollection alloc] initWithSettings:v4];

  return v8;
}

- (id)newCollectionWithItemID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  [v4 setEnumeratedItemID:dCopy];

  v5 = [[FPExtensionCollection alloc] initWithSettings:v4];
  return v5;
}

- (id)newCollectionWithItemAtURL:(id)l skipValidation:(BOOL)validation error:(id *)error
{
  v30[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (validation)
  {
LABEL_15:
    if (![lCopy checkResourceIsReachableAndReturnError:error])
    {
      v20 = 0;
      goto LABEL_19;
    }

    fp_lmdURL = objc_opt_new();
    [fp_lmdURL setEnumeratedURL:lCopy];
    [fp_lmdURL setRequireSandboxAccess:1];
    v20 = [[FPExtensionCollection alloc] initWithSettings:fp_lmdURL];
  }

  else
  {
    fp_lmdURL = [MEMORY[0x1E695DFF8] fp_lmdURL];
    v9 = [fp_lmdURL URLByAppendingPathComponent:@"com~apple~CloudDocs" isDirectory:1];
    fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
    v11 = [fp_homeDirectory URLByAppendingPathComponent:@"Desktop" isDirectory:1];
    v12 = [fp_homeDirectory URLByAppendingPathComponent:@"Documents" isDirectory:1];
    v30[0] = fp_lmdURL;
    v30[1] = v9;
    v23 = v11;
    v24 = v9;
    v30[2] = v11;
    v30[3] = v12;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v28 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [lCopy fp_relativePathWithRealpath:*(*(&v25 + 1) + 8 * v17)];
          v19 = v18;
          if (v18 && ![v18 length])
          {

            goto LABEL_15;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22];
    }

    v20 = 0;
  }

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)appLibraryCollectionForProviderDomain:(id)domain
{
  identifier = [domain identifier];
  v5 = [(FPItemManager *)self appLibraryCollectionForProviderDomainID:identifier];

  return v5;
}

- (id)appLibraryCollectionForProviderDomainID:(id)d
{
  dCopy = d;
  v4 = [[FPItemID alloc] initWithProviderDomainID:dCopy itemIdentifier:@"NSFileProviderRootContainerItemIdentifier"];

  v5 = objc_opt_new();
  [v5 setBuildAndFilterAppLibraries:1];
  [v5 setEnumeratedItemID:v4];
  v6 = [(FPExtensionCollection *)[FPAppLibraryCollection alloc] initWithSettings:v5];

  return v6;
}

uint64_t __39__FPItemManager_newFavoritesCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 favoriteRank];
  if (v3 && ([v2 isTrashed] & 1) == 0)
  {
    v4 = [v2 isFolder];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newEvictableCollection
{
  v2 = FPItemPredicate(&__block_literal_global_48_0);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  fp_sortDescriptorByLastUsedDate = [MEMORY[0x1E695DEC8] fp_sortDescriptorByLastUsedDate];
  v5 = [fp_sortDescriptorByLastUsedDate fp_map:&__block_literal_global_52_0];
  [(FPItemCollection *)v3 reorderItemsWithSortDescriptors:v5];

  [(FPQueryCollection *)v3 setDescriptionName:@"evictable files"];
  return v3;
}

- (id)newNonAutoEvictableCollection
{
  v2 = FPItemPredicate(&__block_literal_global_57_0);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  fp_sortDescriptorByDocumentSize = [MEMORY[0x1E695DEC8] fp_sortDescriptorByDocumentSize];
  v5 = [fp_sortDescriptorByDocumentSize fp_map:&__block_literal_global_60_0];
  [(FPItemCollection *)v3 reorderItemsWithSortDescriptors:v5];

  [(FPQueryCollection *)v3 setDescriptionName:@"all files that aren't autoevictable"];
  return v3;
}

- (id)newCollectionForProvider:(id)provider
{
  providerCopy = provider;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__FPItemManager_newCollectionForProvider___block_invoke;
  v13 = &unk_1E793EA68;
  v14 = providerCopy;
  v4 = providerCopy;
  v5 = FPItemPredicate(&v10);
  v6 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v5];
  fp_sortDescriptorByLastUsedDate = [MEMORY[0x1E695DEC8] fp_sortDescriptorByLastUsedDate];
  [(FPItemCollection *)v6 reorderItemsWithSortDescriptors:fp_sortDescriptorByLastUsedDate];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"all items for %@", v4, v10, v11, v12, v13];
  [(FPQueryCollection *)v6 setDescriptionName:v8];

  return v6;
}

uint64_t __42__FPItemManager_newCollectionForProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 providerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)newTagCollection
{
  v2 = FPItemPredicate(&__block_literal_global_76);
  v3 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v2];
  [(FPQueryCollection *)v3 setDescriptionName:@"all tagged files"];

  return v3;
}

BOOL __33__FPItemManager_newTagCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tags];
  v3 = v2 != 0;

  return v3;
}

- (id)newCollectionForTag:(id)tag
{
  tagCopy = tag;
  lowercaseString = [tagCopy lowercaseString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __37__FPItemManager_newCollectionForTag___block_invoke;
  v13 = &unk_1E793EA68;
  v14 = lowercaseString;
  v5 = lowercaseString;
  v6 = FPItemPredicate(&v10);
  v7 = [[FPQueryCollection alloc] initWithQueryDescriptorClass:objc_opt_class() predicate:v6];
  [(FPQueryCollection *)v7 setTagIdentifier:tagCopy];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"files tagged %@", tagCopy, v10, v11, v12, v13];

  [(FPQueryCollection *)v7 setDescriptionName:v8];
  return v7;
}

uint64_t __37__FPItemManager_newCollectionForTag___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 tagData];
  v4 = FPGetTagsFromTagsData(v3);

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * v8) label];
        v10 = [v9 lowercaseString];
        v11 = [v10 isEqualToString:*(a1 + 32)];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __41__FPItemManager_newSharedItemsCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTrashed])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isShared];
  }

  return v3;
}

- (id)thumbnailsFetchOperationForItems:(id)items withSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  itemsCopy = items;
  scale = [[FPFetchThumbnailsOperation alloc] initWithItems:itemsCopy desiredSize:self screenScale:width itemManager:height, scale];

  return scale;
}

- (id)thumbnailsFetchOperationForItem:(id)item withVersions:(id)versions withSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  versionsCopy = versions;
  itemCopy = item;
  scale = [[FPFetchThumbnailsOperation alloc] initWithItem:itemCopy versions:versionsCopy desiredSize:self screenScale:width itemManager:height, scale];

  return scale;
}

void __80__FPItemManager_fetchURLForItem_creatingPlaceholderIfMissing_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v7 = a4;
  if (v8 && (a3 & 1) == 0)
  {
    [*(a1 + 32) setFileURL:v8];
  }

  (*(*(a1 + 40) + 16))();
}

void __91__FPItemManager__fetchURLForItemID_creatingPlaceholderIfMissing_completionHandlerWithInfo___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = [a2 url];
  if (v8)
  {
    FPMarkAsFileProviderBookmark(v8, 1);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)evictItemAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = +[FPDaemonConnection sharedConnection];
  v8 = [v7 evictItemAtURL:lCopy evenIfEnumeratingFP:1 andClearACLForConsumer:0 completionHandler:handlerCopy];

  return v8;
}

- (void)fetchIndexPropertiesForItemAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [FPItemManager fetchIndexPropertiesForItemAtURL:lCopy completionHandler:?];
  }

  v9 = __FPMakeAsyncCompletionBlock(&self->super.isa, handlerCopy);

  v10 = FPNotSupportedError();
  (v9)[2](v9, 0, 0, 0, v10);
}

+ (void)_promoteItemToAppLibraryIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy isFolder])
  {
    parentItemIdentifier = [neededCopy parentItemIdentifier];
    v4 = [parentItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

    if (v4)
    {
      v5 = +[FPAppRegistry sharedRegistry];
      v6 = [v5 promoteItemToAppLibraryIfNeeded:neededCopy];
    }
  }
}

- (void)_fetchItemForURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ((options & 0x80000000) == 0)
  {
    v10 = __FPMakeAsyncCompletionBlock(&self->super.isa, handlerCopy);

    handlerCopy = v10;
  }

  if ((options & 0x100000000) == 0)
  {
    v20 = 0;
    [lCopy getResourceValue:&v20 forKey:@"FPOriginalDocumentURL" error:0];
    v11 = v20;
    if (v11)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [FPItemManager _fetchItemForURL:options:completionHandler:];
      }

      v13 = v11;
      lCopy = v13;
    }

    if (!FPURLMightBeInFileProvider(lCopy))
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_13;
    }
  }

  FPPrecheckTCCReadAccess(lCopy);
  v11 = +[FPDaemonConnection sharedConnection];
  connectionProxy = [v11 connectionProxy];
  v15 = connectionProxy;
  if ((options & 0x80000000) != 0)
  {
    synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];

    v15 = synchronousRemoteObjectProxy;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FPItemManager__fetchItemForURL_options_completionHandler___block_invoke;
  v17[3] = &unk_1E7939508;
  lCopy = lCopy;
  v18 = lCopy;
  v19 = handlerCopy;
  [v15 itemForURL:lCopy options:options completionHandler:v17];

LABEL_13:
}

void __60__FPItemManager__fetchItemForURL_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v14 uploadingError];
  v7 = v6;
  if (v6 && [v6 fp_isFileProviderInternalError:28])
  {
    v8 = [v14 isFolder];
    v9 = FPErrorVariantFolder;
    if (!v8)
    {
      v9 = FPErrorVariantFile;
    }

    v10 = *v9;
    v11 = [*(a1 + 32) lastPathComponent];
    v12 = [*(a1 + 32) path];
    v13 = [v7 fp_annotatedErrorWithName:v11 path:v12 variant:v10];
    [v14 setUploadingError:v13];
  }

  [FPItemManager _promoteItemToAppLibraryIfNeeded:v14];
  (*(*(a1 + 40) + 16))();
}

- (id)itemForURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__29;
  v23 = __Block_byref_object_dispose__29;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__FPItemManager_itemForURL_options_error___block_invoke;
  v12[3] = &unk_1E793B2A0;
  v12[4] = &v19;
  v12[5] = &v13;
  [(FPItemManager *)self _fetchItemForURL:lCopy options:options | 0x80000000 completionHandler:v12];
  v9 = v20[5];
  if (error && !v9)
  {
    *error = v14[5];
    v9 = v20[5];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __42__FPItemManager_itemForURL_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)extendBookmarkForItem:(id)item receivingBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  itemCopy = item;
  v10 = __FPMakeAsyncCompletionBlock(&self->super.isa, handler);
  if (!itemCopy)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] cannot extend bookmark for nil item", v15, 2u);
    }

    v12 = FPItemNotFoundError(0);
    (v10)[2](v10, 0, v12);
  }

  v13 = +[FPDaemonConnection sharedConnectionProxy];
  itemID = [itemCopy itemID];

  [v13 extendBookmarkForItemID:itemID consumerID:dCopy completionHandler:v10];
}

void __70__FPItemManager__fetchParentsForItemID_recursively_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 count];
  v7 = *(a1 + 32);
  if (v6 < 2)
  {
    (*(v7 + 16))(v7, MEMORY[0x1E695E0F0], v5);
  }

  else
  {
    v8 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)_fetchHierarchyForItemID:(id)d recursively:(BOOL)recursively depth:(unint64_t)depth completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    if (depth < 6)
    {
      providerDomainID = [dCopy providerDomainID];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke;
      v31[3] = &unk_1E793EB08;
      v34 = handlerCopy;
      recursivelyCopy = recursively;
      v32 = dCopy;
      selfCopy = self;
      depthCopy = depth;
      [(FPItemManager *)self fetchOperationServiceForProviderDomainID:providerDomainID handler:v31];

      goto LABEL_9;
    }

    v19 = NSStringFromSelector(a2);
    fp_simulate_crash(@"Recursion too deep in %@", v20, v21, v22, v23, v24, v25, v26, v19);

    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [FPItemManager _fetchHierarchyForItemID:a2 recursively:? depth:? completionHandler:?];
    }

    v28 = @"depth";
  }

  else
  {
    v28 = @"itemID";
  }

  v29 = FPInvalidParameterError(v28, 0, v12, v13, v14, v15, v16, v17);
  (*(handlerCopy + 2))(handlerCopy, 0, v29);

LABEL_9:
}

void __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v6 = [a2 remoteObjectProxy];
    v7 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_2;
    v11[3] = &unk_1E793EAE0;
    v14 = v7;
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11[4] = *(a1 + 40);
    v13 = v8;
    v12 = v9;
    [v6 fetchHierarchyForItemID:v10 recursively:v7 ignoreAlternateContentURL:0 reply:v11];
  }
}

void __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] >= 2)
  {
    v7 = [v5 objectAtIndex:{objc_msgSend(v5, "count") - 2}];
    [FPItemManager _promoteItemToAppLibraryIfNeeded:v7];
  }

  v8 = [v5 lastObject];
  v9 = v8;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_8;
  }

  v10 = [v8 fp_parentDomainIdentifier];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v9 fp_parentDomainIdentifier];
  v13 = [v9 domainIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (v6 || (v14 & 1) != 0)
  {
LABEL_8:
    if (v5)
    {
      v23 = v5;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v23, v6);
  }

  else
  {
    v15 = [FPItemID alloc];
    v16 = [v9 providerID];
    v17 = [v9 fp_parentDomainIdentifier];
    v18 = [v9 parentItemIdentifier];
    v19 = [(FPItemID *)v15 initWithProviderID:v16 domainIdentifier:v17 itemIdentifier:v18];

    v20 = *(a1 + 56);
    v21 = *(a1 + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_3;
    v24[3] = &unk_1E793BCF8;
    v22 = *(a1 + 32);
    v26 = *(a1 + 40);
    v25 = v5;
    [v22 _fetchHierarchyForItemID:v19 recursively:v20 depth:v21 + 1 completionHandler:v24];
  }
}

void __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_3_cold_1(a1);
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) arrayByAddingObjectsFromArray:v5];
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)fetchParentForItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemID = [item itemID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__FPItemManager_fetchParentForItem_completionHandler___block_invoke;
  v9[3] = &unk_1E793DB98;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(FPItemManager *)self _fetchParentsForItemID:itemID recursively:0 completionHandler:v9];
}

void __54__FPItemManager_fetchParentForItem_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchAllParentsForItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemID = [item itemID];
  [(FPItemManager *)self _fetchParentsForItemID:itemID recursively:1 completionHandler:handlerCopy];
}

- (void)_fetchPathComponentsForURL:(id)l synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  lCopy = l;
  handlerCopy = handler;
  if (!synchronouslyCopy)
  {
    v10 = __FPMakeAsyncCompletionBlock(&self->super.isa, handlerCopy);

    handlerCopy = v10;
  }

  v20 = 0;
  [lCopy getResourceValue:&v20 forKey:@"FPOriginalDocumentURL" error:0];
  v11 = v20;
  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPItemManager _fetchItemForURL:options:completionHandler:];
    }

    v13 = v11;
    lCopy = v13;
  }

  if (FPURLMightBeInFileProvider(lCopy))
  {
    v14 = +[FPDaemonConnection sharedConnection];
    connectionProxy = [v14 connectionProxy];
    v16 = connectionProxy;
    if (synchronouslyCopy)
    {
      synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];

      v16 = synchronousRemoteObjectProxy;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__FPItemManager__fetchPathComponentsForURL_synchronously_completionHandler___block_invoke;
    v18[3] = &unk_1E793DB98;
    v19 = handlerCopy;
    [v16 fetchPathComponentsForURL:lCopy completionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)pathComponentsForURL:(id)l error:(id *)error
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__29;
  v21 = __Block_byref_object_dispose__29;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__FPItemManager_pathComponentsForURL_error___block_invoke;
  v10[3] = &unk_1E793C830;
  v10[4] = &v17;
  v10[5] = &v11;
  [(FPItemManager *)self _fetchPathComponentsForURL:lCopy synchronously:1 completionHandler:v10];
  v7 = v18[5];
  if (error && !v7)
  {
    *error = v12[5];
    v7 = v18[5];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __44__FPItemManager_pathComponentsForURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchItemForItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  v7 = __FPMakeAsyncCompletionBlock(&self->super.isa, handler);
  providerDomainID = [dCopy providerDomainID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__FPItemManager_fetchItemForItemID_completionHandler___block_invoke;
  v11[3] = &unk_1E793EB30;
  v12 = dCopy;
  v13 = v7;
  v9 = v7;
  v10 = dCopy;
  [(FPItemManager *)self fetchOperationServiceForProviderDomainID:providerDomainID handler:v11];
}

void __54__FPItemManager_fetchItemForItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v10 = [*(a1 + 32) identifier];
      v7 = FPItemNotFoundError(v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 remoteObjectProxy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FPItemManager_fetchItemForItemID_completionHandler___block_invoke_2;
    v11[3] = &unk_1E793B460;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v8 fetchItemID:v9 reply:v11];

    v7 = v12;
  }
}

void __54__FPItemManager_fetchItemForItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [FPItemManager _promoteItemToAppLibraryIfNeeded:v6];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchRootItemForProviderDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [domain identifier];
  v8 = [FPItemID rootItemIDWithProviderDomainID:identifier];

  [(FPItemManager *)self fetchItemForItemID:v8 completionHandler:handlerCopy];
}

- (void)fetchDefaultLocationForApplication:(id)application defaultProviderDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  correspondingApplicationRecord = [application correspondingApplicationRecord];
  [(FPItemManager *)self fetchDefaultLocationForApplicationRecord:correspondingApplicationRecord defaultProviderDomain:domainCopy completionHandler:handlerCopy];
}

- (void)fetchDefaultLocationForApplicationRecord:(id)record defaultProviderDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  recordCopy = record;
  v11 = [[FPFetchDefaultContainerOperation alloc] initForApplicationRecord:recordCopy providerDomain:domainCopy];

  [v11 setFetchCompletionBlock:handlerCopy];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

- (id)eligibleActionsForItems:(id)items providerDomain:(id)domain
{
  v67 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  domainCopy = domain;
  if (![itemsCopy count])
  {
    v13 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_116;
  }

  v55 = objc_opt_new();
  v7 = objc_opt_new();
  v53 = objc_opt_new();
  v8 = domainCopy;
  if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
    if (([v8 isReadOnly] & 1) == 0)
    {
      if (([firstObject capabilities] & 8) != 0)
      {
        [v55 addObject:@"Rename"];
      }

      if ([firstObject isFolder] && (objc_msgSend(firstObject, "capabilities") & 2) != 0)
      {
        [v55 addObject:@"Import"];
      }
    }

    if (([firstObject capabilities] & 0x40000000) != 0)
    {
      [v55 addObject:@"FetchPublishingURL"];
    }
  }

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Archive", @"Unarchive", @"Copy", 0}];
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Delete", @"Trash", @"Untrash", @"Favorite", @"Tag", @"ModifyFlags", @"ExcludeFromSync", @"Unignore", 0}];
  v12 = v55;
  v49 = v10;
  [v55 unionSet:v10];
  if ([v8 isReadOnly])
  {
    [v7 addObject:@"Archive"];
    [v7 addObject:@"Unarchive"];
  }

  else
  {
    [v55 unionSet:v11];
  }

  v46 = v11;
  v47 = domainCopy;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v48 = itemsCopy;
  obj = itemsCopy;
  v14 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (!v14)
  {
    parentItemIdentifier = 0;
    v52 = 0;
    providerDomainID = 0;
    goto LABEL_105;
  }

  v15 = v14;
  parentItemIdentifier = 0;
  v52 = 0;
  providerDomainID = 0;
  v18 = *v59;
  v50 = *v59;
  do
  {
    v19 = 0;
    v51 = v15;
    do
    {
      if (*v59 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v58 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      if (![v20 isActionable])
      {
        [MEMORY[0x1E695DFD8] set];
        v13 = v38 = v12;
        objc_autoreleasePoolPop(v21);

        domainCopy = v47;
        itemsCopy = v48;
        v39 = v46;
        goto LABEL_115;
      }

      if ([v20 isBusy])
      {
        v52 = 1;
        goto LABEL_96;
      }

      itemIdentifier = [v20 itemIdentifier];
      if ([itemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
      {

LABEL_27:
        [v7 addObject:@"Tag"];
        [v7 addObject:@"Favorite"];
        [v7 addObject:@"Archive"];
        [v7 addObject:@"Unarchive"];
        [v7 addObject:@"Rename"];
        [v7 addObject:@"Trash"];
        [v7 addObject:@"Delete"];
        [v7 addObject:@"ModifyFlags"];
        [v7 addObject:@"Pin"];
        goto LABEL_28;
      }

      itemIdentifier2 = [v20 itemIdentifier];
      v24 = [itemIdentifier2 isEqualToString:@"NSFileProviderTrashContainerItemIdentifier"];

      if (v24)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (([v20 capabilities] & 1) == 0)
      {
        [v7 unionSet:v49];
      }

      if (![(FPItemManager *)self _itemIsOfArchiveType:v20])
      {
        [v7 addObject:@"Unarchive"];
      }

      if (!providerDomainID)
      {
        providerDomainID = [v20 providerDomainID];
      }

      providerDomainID = providerDomainID;

      if (!parentItemIdentifier)
      {
        parentItemIdentifier = [v20 parentItemIdentifier];
      }

      parentItemIdentifier = parentItemIdentifier;

      if (!v8 || ([v20 providerDomainID], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqualToString:", v26), v26, v25, (v27 & 1) == 0))
      {
        v57 = 0;
        v28 = [FPProviderDomain providerDomainWithID:providerDomainID cachePolicy:1 error:&v57];
        v29 = v57;

        if (!v28)
        {
          v30 = fp_current_or_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            fp_prettyDescription = [v29 fp_prettyDescription];
            *buf = 138412546;
            v63 = v20;
            v64 = 2112;
            v65 = fp_prettyDescription;
            _os_log_error_impl(&dword_1AAAE1000, v30, OS_LOG_TYPE_ERROR, "[ERROR] Failed to fetch domain for FPItem %@, error: %@", buf, 0x16u);
          }
        }

        v8 = v28;
      }

      providerDomainID2 = [v20 providerDomainID];
      [v53 addObject:providerDomainID2];

      v12 = v55;
      v18 = v50;
      v15 = v51;
      if ([v20 isCloudItem])
      {
        if (([v20 capabilities] & 0x40) != 0)
        {
          [v55 addObject:@"Evict"];
        }

        if (![v20 isDownloaded] || objc_msgSend(v20, "isEvictedWithClone"))
        {
          if ([v20 allowsContextualMenuDownloadEntry])
          {
            v32 = @"Download";
          }

          else
          {
            v32 = @"DownloadNoContextMenu";
          }

          [v55 addObject:v32];
        }

        if ([v20 isFolder] && (!objc_msgSend(v20, "isRecursivelyDownloaded") || objc_msgSend(v20, "isEvictedWithClone")))
        {
          if ([v20 allowsContextualMenuDownloadEntry])
          {
            v33 = @"DownloadRecursively";
          }

          else
          {
            v33 = @"DownloadRecursivelyNoContextMenu";
          }

          [v55 addObject:v33];
        }
      }

      if (FPPinningSupportedForItem(v20))
      {
        [v55 addObject:@"Pin"];
      }

      if (([v20 capabilities] & 0x8000000) != 0)
      {
        [v55 addObject:@"Unpin"];
      }

      if (([v20 isFolder] & 1) == 0)
      {
        [v7 addObject:@"Favorite"];
      }

      if ([v20 isContainer])
      {
        [v7 addObject:@"ModifyFlags"];
      }

      if (([v20 exclusionType] & 1) != 0 || (objc_msgSend(v7, "addObject:", @"Unignore"), (objc_msgSend(v20, "capabilities") & 0x80) == 0))
      {
        [v7 addObject:@"ExcludeFromSync"];
      }

      if (![v20 exclusionType] && objc_msgSend(v20, "isExcludedFromSync"))
      {
        [v7 addObject:@"Unignore"];
        [v7 addObject:@"ExcludeFromSync"];
      }

      if ([v20 exclusionType] || objc_msgSend(v20, "isExcludedFromSync"))
      {
        [v7 addObject:@"Evict"];
        [v7 addObject:@"Pin"];
        [v7 addObject:@"Download"];
        [v7 addObject:@"DownloadRecursively"];
      }

      if ([v20 isCollaborationInvitation])
      {
        [v7 addObject:@"Copy"];
        [v7 addObject:@"Tag"];
      }

      if (([v20 capabilities] & 0x10) == 0)
      {
        goto LABEL_79;
      }

      if ([(FPItemManager *)self isItemInTrash:v20])
      {
        [v7 addObject:@"Trash"];
        [v7 addObject:@"Favorite"];
        [v7 addObject:@"Unarchive"];
        [v7 addObject:@"Archive"];
        [v7 addObject:@"ModifyFlags"];
        [v7 addObject:@"Pin"];
        v34 = v55;
        v35 = @"Delete";
        goto LABEL_83;
      }

      if (v8 && ([v8 supportsSyncingTrash] & 1) == 0)
      {
LABEL_79:
        [v7 addObject:@"Trash"];
      }

      v34 = v7;
      v35 = @"Untrash";
LABEL_83:
      [v34 addObject:v35];
      if (([v20 capabilities] & 4) == 0)
      {
        [v7 addObject:@"Move"];
      }

      if (([v20 capabilities] & 0x20) == 0 && !-[FPItemManager isItemInTrash:](self, "isItemInTrash:", v20))
      {
        [v7 addObject:@"Delete"];
      }

      if (([v20 capabilities] & 0x20000000) == 0)
      {
        [v7 addObject:@"Tag"];
      }

      if (([v20 capabilities] & 2) == 0)
      {
        [v7 addObject:@"ModifyFlags"];
      }

      if (([v20 capabilities] & 0x4000000) == 0)
      {
        [v7 addObject:@"DownloadRecursively"];
      }

      if (([v20 capabilities] & 0x40) == 0)
      {
        [v7 addObject:@"Evict"];
      }

LABEL_96:
      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while (v15 != v19);
    v37 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    v15 = v37;
  }

  while (v37);
LABEL_105:

  if ([obj count] == 1)
  {
    v40 = [v7 containsObject:@"Unarchive"];
    domainCopy = v47;
    itemsCopy = v48;
    v39 = v46;
    v41 = @"Archive";
    v42 = v52;
    if (v40)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v41 = @"Unarchive";
    domainCopy = v47;
    itemsCopy = v48;
    v39 = v46;
    v42 = v52;
  }

  [v7 addObject:v41];
LABEL_110:
  if ([v53 count] >= 2)
  {
    [v7 addObject:@"Move"];
  }

  [v12 minusSet:v7];
  if (v42)
  {
    v43 = [MEMORY[0x1E695DFD8] setWithObject:@"Delete"];
    [v55 intersectSet:v43];

    v12 = v55;
  }

  v38 = v12;
  v13 = v12;
LABEL_115:

LABEL_116:
  v44 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)eligibleActionsForItems:(id)items domainCachePolicy:(unint64_t)policy
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    firstObject = [itemsCopy firstObject];
    providerDomainID = [firstObject providerDomainID];
    v14 = 0;
    v9 = [FPProviderDomain providerDomainWithID:providerDomainID cachePolicy:policy error:&v14];
    v10 = v14;
    if (!v9)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(FPItemManager *)firstObject eligibleActionsForItems:v10 domainCachePolicy:v11];
      }
    }

    v12 = [(FPItemManager *)self eligibleActionsForItems:itemsCopy providerDomain:v9];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  return v12;
}

- (BOOL)_itemIsOfArchiveType:(id)type
{
  v3 = _itemIsOfArchiveType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    [FPItemManager _itemIsOfArchiveType:];
  }

  v5 = _itemIsOfArchiveType__archiveTypes;
  typeIdentifier = [typeCopy typeIdentifier];

  v7 = [v5 containsObject:typeIdentifier];
  return v7;
}

void __38__FPItemManager__itemIsOfArchiveType___block_invoke()
{
  v6[11] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E69830D0] identifier];
  v1 = [*MEMORY[0x1E6982DF0] identifier];
  v6[1] = v1;
  v2 = [*MEMORY[0x1E6982CE8] identifier];
  v6[2] = v2;
  v6[3] = @"public.cpio-archive";
  v6[4] = @"com.apple.bom-compressed-cpio";
  v6[5] = @"org.gnu.gnu-tar-archive";
  v6[6] = @"public.tar-archive";
  v6[7] = @"org.gnu.gnu-zip-tar-archive";
  v6[8] = @"com.pkware.zip-archive";
  v6[9] = @"com.apple.archive";
  v6[10] = @"com.apple.encrypted-archive";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:11];
  v4 = _itemIsOfArchiveType__archiveTypes;
  _itemIsOfArchiveType__archiveTypes = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isValidDestination:(id)destination
{
  destinationCopy = destination;
  if (([destinationCopy isPending] & 1) != 0 || !objc_msgSend(destinationCopy, "isFolder"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ([destinationCopy capabilities] >> 1) & 1;
  }

  return v4;
}

- (id)eligibleActionsForDroppingItems:(id)items underItem:(id)item
{
  v37 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  providerDomainID = [itemCopy providerDomainID];
  if ([itemsCopy count] && -[FPItemManager _isValidDestination:](self, "_isValidDestination:", itemCopy))
  {
    v8 = [MEMORY[0x1E695DFA8] setWithObjects:{@"Move", @"Copy", @"Untrash", 0}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = itemsCopy;
    v30 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v30)
    {
      v27 = itemsCopy;
      obj = v9;
      v29 = *v33;
      v10 = 1;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        if ([v12 isPending])
        {
          v24 = [MEMORY[0x1E695DFD8] set];

          itemsCopy = v27;
          goto LABEL_37;
        }

        providerDomainID2 = [v12 providerDomainID];
        v14 = [providerDomainID2 isEqualToString:providerDomainID];

        if ((v14 & 1) == 0)
        {
          [v8 removeObject:@"Move"];
          [v8 removeObject:@"Untrash"];
        }

        if (([v12 capabilities] & 0x20) != 0)
        {
          goto LABEL_17;
        }

        providerDomainID3 = [v12 providerDomainID];
        if ([providerDomainID3 isEqualToString:providerDomainID])
        {
          isExcludedFromSync = [itemCopy isExcludedFromSync];

          if ((isExcludedFromSync & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        [v8 removeObject:@"Move"];
        [v8 removeObject:@"Untrash"];
LABEL_17:
        itemID = [v12 itemID];
        itemID2 = [itemCopy itemID];
        v19 = [itemID isEqualToItemID:itemID2];

        if (v19)
        {
          [v8 removeObject:@"Move"];
          [v8 removeObject:@"Copy"];
        }

        if (([v12 capabilities] & 4) == 0)
        {
          [v8 removeObject:@"Move"];
        }

        if (([v12 capabilities] & 1) == 0)
        {
          [v8 removeObject:@"Copy"];
        }

        if ([(FPItemManager *)self isItemInTrash:v12])
        {
          v20 = @"Move";
        }

        else
        {
          v20 = @"Untrash";
        }

        [v8 removeObject:v20];
        parentItemID = [v12 parentItemID];
        itemID3 = [itemCopy itemID];
        v23 = [parentItemID isEqualToItemID:itemID3];

        v10 &= v23;
        if (v30 == ++v11)
        {
          v9 = obj;
          v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v30)
          {
            goto LABEL_5;
          }

          itemsCopy = v27;
          if (!v10)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }

LABEL_33:
    [v8 removeObject:@"Move"];
LABEL_34:
    if ([v8 count])
    {
      FPFilterActionsForDroppingItems(v9, itemCopy, v8);
    }

    v24 = v8;
LABEL_37:
  }

  else
  {
    v24 = [MEMORY[0x1E695DFD8] set];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)eligibleActionsForDroppingUTIs:(id)is underItem:(id)item
{
  isCopy = is;
  itemCopy = item;
  if ([(FPItemManager *)self _isValidDestination:itemCopy])
  {
    v8 = FPAreUTIsImportable(isCopy, itemCopy);
    v9 = MEMORY[0x1E695DFD8];
    if (v8)
    {
      v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Move", @"Copy", 0}];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
  }

  v10 = [v9 set];
LABEL_6:
  v11 = v10;

  return v11;
}

- (id)operationForAction:(id)action items:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  itemsCopy = items;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [itemsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(itemsCopy);
        }

        if ([*(*(&v23 + 1) + 8 * v12) state])
        {
          [FPItemManager operationForAction:a2 items:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [itemsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([actionCopy isEqualToString:@"Delete"])
  {
    v13 = FPDeleteOperation;
LABEL_12:
    v14 = [[v13 alloc] initWithItems:itemsCopy];
LABEL_13:
    v15 = v14;
    goto LABEL_19;
  }

  if ([actionCopy isEqualToString:@"Download"])
  {
    v16 = [[FPDownloadOperation alloc] initWithItems:itemsCopy];
    v15 = v16;
    v17 = 0;
LABEL_18:
    [(FPDownloadOperation *)v16 setRecursively:v17];
    goto LABEL_19;
  }

  if ([actionCopy isEqualToString:@"DownloadRecursively"])
  {
    v16 = [[FPDownloadOperation alloc] initWithItems:itemsCopy];
    v15 = v16;
    v17 = 1;
    goto LABEL_18;
  }

  if ([actionCopy isEqualToString:@"Evict"])
  {
    v13 = FPEvictOperation;
    goto LABEL_12;
  }

  if ([actionCopy isEqualToString:@"Trash"])
  {
    v13 = FPTrashOperation;
    goto LABEL_12;
  }

  if ([actionCopy isEqualToString:@"Untrash"])
  {
    v14 = [[FPUntrashOperation alloc] initWithItems:itemsCopy restoreDirectory:0];
    goto LABEL_13;
  }

  if ([actionCopy isEqualToString:@"FetchPublishingURL"])
  {
    v20 = [FPFetchPublishingURLOperation alloc];
    firstObject = [itemsCopy firstObject];
    v15 = [(FPFetchPublishingURLOperation *)v20 initWithItem:firstObject];
  }

  else
  {
    if ([actionCopy isEqualToString:@"ExcludeFromSync"])
    {
      v13 = FPIgnoreItemsOperation;
      goto LABEL_12;
    }

    if ([actionCopy isEqualToString:@"Unignore"])
    {
      v13 = FPUnignoreItemsOperation;
      goto LABEL_12;
    }

    if ([actionCopy isEqualToString:@"Pin"])
    {
      v13 = FPPinOperation;
      goto LABEL_12;
    }

    if ([actionCopy isEqualToString:@"Unpin"])
    {
      v13 = FPUnpinOperation;
      goto LABEL_12;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemManager.m" lineNumber:1233 description:{@"UNREACHABLE: build your own %@ operation!", actionCopy}];

    v15 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)scheduleAction:(id)action
{
  actionCopy = action;
  section = __fp_create_section();
  v7 = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FPItemManager *)actionCopy scheduleAction:v6];
  }

  [actionCopy presendNotifications];
  [(NSOperationQueue *)self->_operationQueue addOperation:actionCopy];
  __fp_leave_section_Debug(&v7);
}

- (void)recursivelyExportItem:(id)item toURL:(id)l completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!itemCopy)
  {
    [FPItemManager recursivelyExportItem:a2 toURL:self completionHandler:?];
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
LABEL_3:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemManager.m" lineNumber:1255 description:{@"%s must be called with completion handler", "-[FPItemManager recursivelyExportItem:toURL:completionHandler:]"}];
  }

LABEL_4:
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  lastPathComponent = [lCopy lastPathComponent];
  v16 = [FPCopyOperation alloc];
  v26[0] = itemCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v18 = [(FPMoveOperation *)v16 initWithItems:v17 destinationURL:uRLByDeletingLastPathComponent];

  v24 = itemCopy;
  v25 = lastPathComponent;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(FPMoveOperation *)v18 setTargetFilenamesByItem:v19];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__FPItemManager_recursivelyExportItem_toURL_completionHandler___block_invoke;
  v22[3] = &unk_1E7939100;
  v23 = v12;
  v20 = v12;
  [(FPActionOperation *)v18 setActionCompletionBlock:v22];
  [(FPItemManager *)self scheduleAction:v18];

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)isItemInTrash:(id)trash
{
  trashCopy = trash;
  if ([trashCopy isTrashed])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    providerID = [trashCopy providerID];
    v4 = [providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"];

    itemID = [trashCopy itemID];
    isDiskIdentifier = [itemID isDiskIdentifier];

    if ((isDiskIdentifier & 1) != 0 || v4)
    {
      fileURL = [trashCopy fileURL];
      pathComponents = [fileURL pathComponents];
      LOBYTE(v4) = [pathComponents containsObject:@".Trash"];
    }
  }

  return v4;
}

- (void)fetchRemoteDomainForProviderDomainID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[FPDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__FPItemManager_fetchRemoteDomainForProviderDomainID_handler___block_invoke;
  v9[3] = &unk_1E793EB58;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 fetchDomainServicerForProviderDomainID:dCopy handler:v9];
}

void __62__FPItemManager_fetchRemoteDomainForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = a2;
  v10 = [a3 fp_obfuscatedProviderDomainID];
  v11 = NSStringFromProtocol(&unk_1F1FF3948);
  v13 = [v7 stringWithFormat:@"proxy to %@ for interface %@", v10, v11];

  v12 = [[FPXPCAutomaticErrorProxy alloc] initWithConnection:v9 protocol:&unk_1F1FF3948 orError:0 name:v13 requestPid:0];
  [(FPXPCAutomaticErrorProxy *)v12 setGenerateSignposts:1];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchOperationServiceForProviderDomainID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[FPDaemonConnection sharedConnectionProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__FPItemManager_fetchOperationServiceForProviderDomainID_handler___block_invoke;
  v9[3] = &unk_1E793EB80;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 startAccessingOperationServiceForProviderDomainID:dCopy handler:v9];
}

void __66__FPItemManager_fetchOperationServiceForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v19 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14 && v19 | v11)
  {
    v15 = [FPService alloc];
    v16 = FPXOperationServiceXPCInterface();
    if (v19)
    {
      v17 = [(FPService *)v15 initWithProxy:v19 interface:v16 lifetimeExtender:v12 providerDomainID:v13];
    }

    else
    {
      v17 = [(FPService *)v15 initWithEndpoint:v11 interface:v16 lifetimeExtender:v12 providerDomainID:v13];
    }

    v18 = v17;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchVendorServiceForProviderDomainID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[FPDaemonConnection sharedConnectionProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__FPItemManager_fetchVendorServiceForProviderDomainID_handler___block_invoke;
  v9[3] = &unk_1E793EBA8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 startAccessingExtensionForProviderDomainID:dCopy handler:v9];
}

void __63__FPItemManager_fetchVendorServiceForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  if (!v14 || a5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = [FPService alloc];
    v12 = FPXVendorXPCInterface();
    v13 = [(FPService *)v11 initWithEndpoint:v14 interface:v12 lifetimeExtender:v9 providerDomainID:v10];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchServicesWithName:(id)name itemAtURL:(id)l synchronously:(BOOL)synchronously handler:(id)handler
{
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  lCopy = l;
  nameCopy = name;
  FPPrecheckTCCReadAccess(lCopy);
  if (synchronouslyCopy)
  {
    +[FPDaemonConnection synchronousSharedConnectionProxy];
  }

  else
  {
    +[FPDaemonConnection sharedConnectionProxy];
  }
  v12 = ;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__FPItemManager_fetchServicesWithName_itemAtURL_synchronously_handler___block_invoke;
  v14[3] = &unk_1E793EBD0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v12 startAccessingServiceWithName:nameCopy itemURL:lCopy completionHandler:v14];
}

void __71__FPItemManager_fetchServicesWithName_itemAtURL_synchronously_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v17 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v17 || a6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = [FPService alloc];
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FCF918];
    v16 = [(FPService *)v14 initWithEndpoint:v17 interface:v15 lifetimeExtender:v11 providerDomainID:v12];

    (*(*(a1 + 32) + 16))();
  }
}

- (id)servicesForItemAtURL:(id)l error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__29;
  v51 = __Block_byref_object_dispose__29;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__29;
  v45 = __Block_byref_object_dispose__29;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__29;
  v39 = __Block_byref_object_dispose__29;
  v40 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __44__FPItemManager_servicesForItemAtURL_error___block_invoke;
  v31 = &unk_1E793EBF8;
  v32 = &v41;
  v33 = &v35;
  v34 = &v47;
  v22 = lCopy;
  [FPItemManager fetchServicesWithName:"fetchServicesWithName:itemAtURL:synchronously:handler:" itemAtURL:0 synchronously:? handler:?];
  if (v42[5] && v36[5] && !v48[5])
  {
    v8 = dispatch_group_create();
    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v10 = [v9 initWithCapacity:{objc_msgSend(v36[5], "count")}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v36[5];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v53 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = objc_alloc(MEMORY[0x1E696AC18]);
          remoteObjectProxyCreating = [v42[5] remoteObjectProxyCreating];
          v18 = [v16 initWithName:v15 endpointCreatingProxy:remoteObjectProxyCreating requestFinishedGroup:v8];

          [v10 setObject:v18 forKeyedSubscript:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v53 count:16];
      }

      while (v12);
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__FPItemManager_servicesForItemAtURL_error___block_invoke_2;
    block[3] = &unk_1E793A2E8;
    block[4] = &v41;
    dispatch_group_notify(v8, v19, block);

    v7 = [v10 copy];
  }

  else
  {
    v7 = 0;
    if (error)
    {
      *error = v48[5];
    }
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

void __44__FPItemManager_servicesForItemAtURL_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)serverCollectionForFolderItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemManager.m" lineNumber:143 description:@"this operation isn't supported for placeholder items"];
}

- (void)fetchIndexPropertiesForItemAtURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_6(&dword_1AAAE1000, v2, v3, "[CRIT] Deprecated method fetchIndexPropertiesForItemAtURL used for %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_fetchItemForURL:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] found %@ as original URL to %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_fetchHierarchyForItemID:(const char *)a1 recursively:depth:completionHandler:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_6(&dword_1AAAE1000, v2, v3, "[SIMCRASH] Recursion too deep in %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __78__FPItemManager__fetchHierarchyForItemID_recursively_depth_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG] adding %@ to %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)eligibleActionsForItems:(NSObject *)a3 domainCachePolicy:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Failed to fetch domain for FPItem %@, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)operationForAction:(uint64_t)a1 items:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemManager.m" lineNumber:1204 description:@"this operation isn't supported for placeholder items"];
}

- (void)scheduleAction:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┏%llx scheduling action: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)recursivelyExportItem:(uint64_t)a1 toURL:(uint64_t)a2 completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemManager.m" lineNumber:1254 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end