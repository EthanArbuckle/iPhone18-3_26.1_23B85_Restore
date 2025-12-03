@interface NSFileProviderExtension
+ (id)_relativeComponentsOfURL:(id)l fromBaseURL:(id)rL;
+ (id)_resourceIDOfURL:(id)l outError:(id *)error;
- (BOOL)_fp_itemsMightBeTheSame:(id)same otherItem:(id)item url:(id)url;
- (FPXExtensionContext)extensionContext;
- (NSFileProviderExtension)init;
- (NSFileProviderItemIdentifier)persistentIdentifierForItemAtURL:(NSURL *)url;
- (NSProgress)fetchThumbnailsForItemIdentifiers:(NSArray *)itemIdentifiers requestedSize:(CGSize)size perThumbnailCompletionHandler:(void *)perThumbnailCompletionHandler completionHandler:(void *)completionHandler;
- (NSString)providerIdentifier;
- (NSURL)URLForItemWithPersistentIdentifier:(NSFileProviderItemIdentifier)identifier;
- (NSURL)documentStorageURL;
- (id)description;
- (id)disconnectWithOptions:(unint64_t)options completionHandler:(id)handler;
- (id)enumeratorForContainerItemIdentifier:(NSFileProviderItemIdentifier)containerItemIdentifier error:(NSError *)error;
- (id)enumeratorForSearchQuery:(id)query error:(id *)error;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version completionHandler:(id)handler;
- (id)fetchPublishingURLForItemIdentifier:(id)identifier completionHandler:(id)handler;
- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)_withRequest:(id)request execute:(id)execute;
- (void)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler;
- (void)createDirectoryWithName:(NSString *)directoryName inParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler;
- (void)deleteItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options completionHandler:(id)handler;
- (void)evictItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)importDocumentAtURL:(NSURL *)fileURL toParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler;
- (void)itemChanged:(id)changed baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents completionHandler:(id)handler;
- (void)itemChangedAtURL:(NSURL *)url;
- (void)providePlaceholderAtURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)renameItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toName:(NSString *)itemName completionHandler:(void *)completionHandler;
- (void)reparentItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toParentItemWithIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier newName:(NSString *)newName completionHandler:(void *)completionHandler;
- (void)setFavoriteRank:(NSNumber *)favoriteRank forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)setLastUsedDate:(NSDate *)lastUsedDate forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)setTagData:(NSData *)tagData forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)startProvidingItemAtURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)trashItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)untrashItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler;
@end

@implementation NSFileProviderExtension

- (NSFileProviderExtension)init
{
  v10.receiver = self;
  v10.super_class = NSFileProviderExtension;
  v2 = [(NSFileProviderExtension *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("serial dispatch queue for extension requests", v3);
    extensionDispatchQueue = v2->_extensionDispatchQueue;
    v2->_extensionDispatchQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("NSFileProviderExtension member sync queue", v6);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v7;
  }

  return v2;
}

- (NSString)providerIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  memberQueue = [(NSFileProviderExtension *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__NSFileProviderExtension_providerIdentifier__block_invoke;
  v6[3] = &unk_1E793AD20;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__NSFileProviderExtension_providerIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v2 = *(*(a1 + 32) + 48);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v2);
}

- (NSURL)documentStorageURL
{
  domain = [(NSFileProviderExtension *)self domain];
  v3 = [NSFileProviderManager managerForDomain:domain];
  documentStorageURL = [v3 documentStorageURL];

  return documentStorageURL;
}

- (NSURL)URLForItemWithPersistentIdentifier:(NSFileProviderItemIdentifier)identifier
{
  v3 = identifier;
  v4 = +[NSFileProviderManager legacyDefaultManager];
  documentStorageURL = [v4 documentStorageURL];

  if ([(NSString *)v3 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
  {
    v6 = documentStorageURL;
  }

  else
  {
    v6 = [documentStorageURL URLByAppendingPathComponent:v3];
  }

  v7 = v6;

  return v7;
}

+ (id)_resourceIDOfURL:(id)l outError:(id *)error
{
  v6 = 0;
  [l getResourceValue:&v6 forKey:*MEMORY[0x1E695DB00] error:error];
  v4 = v6;

  return v4;
}

+ (id)_relativeComponentsOfURL:(id)l fromBaseURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  array = [MEMORY[0x1E695DF70] array];
  v24 = lCopy;
  v10 = [lCopy copy];
  v25 = rLCopy;
  v26 = 0;
  v11 = [NSFileProviderExtension _resourceIDOfURL:rLCopy outError:&v26];
  v12 = v26;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    i = 0;
    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderExtension.m" lineNumber:192 description:{@"%s cannot resolve the resource ID of the URL (%@). Error: %@", "+[NSFileProviderExtension _relativeComponentsOfURL:fromBaseURL:]", v25, v13}];
  for (i = 0; ; ++i)
  {

LABEL_8:
    v17 = v10;
    v18 = [NSFileProviderExtension _resourceIDOfURL:v10 outError:0];
    currentHandler = v18;
    if (v18)
    {
      if ([v18 isEqual:v11])
      {
        break;
      }
    }

    lastPathComponent = [v10 lastPathComponent];
    if (!lastPathComponent)
    {
      v22 = v24;
      NSLog(&cfstr_TheLastCompone.isa, v24);
      [array removeAllObjects];
      goto LABEL_19;
    }

    v20 = lastPathComponent;
    [array insertObject:lastPathComponent atIndex:0];
    uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
    if ([uRLByDeletingLastPathComponent isEqual:v10])
    {
      v22 = v24;
LABEL_17:
      [array removeAllObjects];

      goto LABEL_19;
    }

    v10 = uRLByDeletingLastPathComponent;

    if (i >= 0x64)
    {
      v22 = v24;
      NSLog(&cfstr_TheUrlCannotBe.isa, v24, 100);
      v17 = v10;
      goto LABEL_17;
    }
  }

  v22 = v24;
LABEL_19:

  return array;
}

- (NSFileProviderItemIdentifier)persistentIdentifierForItemAtURL:(NSURL *)url
{
  v3 = url;
  v4 = +[NSFileProviderManager legacyDefaultManager];
  documentStorageURL = [v4 documentStorageURL];

  if ([documentStorageURL fp_relationshipToItemAtURL:v3] == 1)
  {
    v6 = @"NSFileProviderRootContainerItemIdentifier";
  }

  else
  {
    v7 = [NSFileProviderExtension _relativeComponentsOfURL:v3 fromBaseURL:documentStorageURL];
    if ([v7 count])
    {
      v6 = [v7 componentsJoinedByString:@"/"];
    }

    else
    {
      NSLog(&cfstr_SIsCalledWithA.isa, "[NSFileProviderExtension persistentIdentifierForItemAtURL:]", v3, documentStorageURL);
      v6 = 0;
    }
  }

  return v6;
}

- (void)providePlaceholderAtURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderExtension.m" lineNumber:248 description:{@"%@ must implement method %@ and not call super", v6, v7}];
}

- (void)startProvidingItemAtURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderExtension.m" lineNumber:254 description:{@"%@ must implement method %@ and not call super", v6, v7}];
}

- (void)itemChangedAtURL:(NSURL *)url
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderExtension.m" lineNumber:260 description:{@"%@ must implement method %@ and not call super", v5, v6}];
}

- (void)evictItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileProviderExtension.m" lineNumber:279 description:{@"%@ must implement method %@ and not call super", v6, v7}];
}

- (void)itemChanged:(id)changed baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents completionHandler:(id)handler
{
  changedCopy = changed;
  versionCopy = version;
  contentsCopy = contents;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSFileProviderExtension itemChanged:baseVersion:changedFields:contents:completionHandler:];
  }

  itemIdentifier = [changedCopy itemIdentifier];
  v20 = 0;
  v17 = [(NSFileProviderExtension *)self itemForIdentifier:itemIdentifier error:&v20];
  v18 = v20;

  if (v17)
  {
    if (hasConflictingVersion(v17, versionCopy, fields))
    {
      handlerCopy[2](handlerCopy, v17, 0);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_extensionContext);
      [WeakRetained applyFieldChangesToItem:changedCopy baseVersion:versionCopy changedFields:fields contents:contentsCopy lastKnownVendorItem:v17 extensionInstance:self completionHandler:handlerCopy];
    }
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v18);
  }
}

- (void)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__NSFileProviderExtension_changeItem_baseVersion_changedFields_contents_options_completionHandler___block_invoke;
  v15[3] = &unk_1E793BAB8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(NSFileProviderExtension *)self itemChanged:item baseVersion:version changedFields:fields contents:contents completionHandler:v15];
}

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  handlerCopy = handler;
  v11 = [(NSFileProviderExtension *)self URLForItemWithPersistentIdentifier:identifierCopy];
  if (!v11)
  {
    v17 = [MEMORY[0x1E696ABC0] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);

    v18 = objc_opt_new();
    goto LABEL_14;
  }

  if (!versionCopy)
  {
    goto LABEL_11;
  }

  v30[0] = 0;
  v12 = [(NSFileProviderExtension *)self itemForIdentifier:identifierCopy error:v30];
  v13 = v30[0];
  if (v12)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = v13;
      goto LABEL_10;
    }

    v29 = v13;
    v14 = [(NSFileProviderExtension *)self itemForIdentifier:identifierCopy error:&v29];
    v15 = v29;

    itemVersion = [v14 itemVersion];
    if ([itemVersion isEqual:versionCopy])
    {

LABEL_10:
LABEL_11:
      v18 = objc_opt_new();
      [v18 setTotalUnitCount:1];
      [v18 setCancellable:1];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke;
      v27[3] = &unk_1E79390B8;
      v27[4] = self;
      v19 = v11;
      v28 = v19;
      [v18 setCancellationHandler:v27];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke_2;
      v22[3] = &unk_1E793D910;
      v26 = handlerCopy;
      v22[4] = self;
      v23 = v19;
      v24 = identifierCopy;
      v25 = versionCopy;
      [(NSFileProviderExtension *)self providePlaceholderAtURL:v23 completionHandler:v22];

      goto LABEL_14;
    }

    v20 = [MEMORY[0x1E696ABC0] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);

    v18 = objc_opt_new();
    v13 = v15;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
    v18 = objc_opt_new();
  }

LABEL_14:

  return v18;
}

void __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke_3;
    v13[3] = &unk_1E793D910;
    v16 = *(a1 + 64);
    v12 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v12;
    *(&v11 + 1) = v7;
    v14 = v11;
    v15 = v10;
    [v5 startProvidingItemAtURL:v6 completionHandler:v13];
  }
}

void __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v18 = 0;
    v7 = [v5 itemForIdentifier:v6 error:&v18];
    v4 = v18;
    if (v7)
    {
      if (*(a1 + 48) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [v7 itemVersion];
        if (([v8 isEqual:*(a1 + 48)] & 1) == 0)
        {
          v13 = *(a1 + 64);
          v14 = [MEMORY[0x1E696ABC0] fileProviderErrorForNonExistentItemWithIdentifier:*(a1 + 40)];
          (*(v13 + 16))(v13, 0, 0, v14);

          goto LABEL_11;
        }
      }

      v9 = *(a1 + 56);
      v10 = [v9 lastPathComponent];
      v11 = [*(a1 + 32) memberQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __88__NSFileProviderExtension_fetchContentsForItemWithIdentifier_version_completionHandler___block_invoke_4;
      v15[3] = &unk_1E793D8E8;
      v17 = *(a1 + 64);
      v16 = v7;
      v12 = [v9 fp_copyToTempFolderWithFilename:v10 queue:v11 precomputedItemSize:0 completion:v15];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }

LABEL_11:

    goto LABEL_12;
  }

  v4 = v3;
  (*(*(a1 + 64) + 16))();
LABEL_12:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  domain = [(NSFileProviderExtension *)self domain];
  identifier = [domain identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p for %@>", v4, self, identifier];

  return v7;
}

- (void)_withRequest:(id)request execute:(id)execute
{
  requestCopy = request;
  executeCopy = execute;
  objc_storeStrong(&self->_currentRequest, request);
  executeCopy[2](executeCopy);
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (FPXExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

- (void)importDocumentAtURL:(NSURL *)fileURL toParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)createDirectoryWithName:(NSString *)directoryName inParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)renameItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toName:(NSString *)itemName completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)reparentItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toParentItemWithIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier newName:(NSString *)newName completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v8 = FPNotSupportedError();
  v6[2](v6, 0, v8);
}

- (void)trashItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v6 = FPNotSupportedError();
  v4[2](v4, 0, v6);
}

- (void)untrashItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier toParentItemIdentifier:(NSFileProviderItemIdentifier)parentItemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)deleteItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NSFileProviderExtension(NSFileProviderActions) importDocumentAtURL:toParentItemIdentifier:completionHandler:];
  }

  v6 = FPNotSupportedError();
  v4[2](v4, v6);
}

- (void)setLastUsedDate:(NSDate *)lastUsedDate forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)setTagData:(NSData *)tagData forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (void)setFavoriteRank:(NSNumber *)favoriteRank forItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, 0, v7);
}

- (id)fetchPublishingURLForItemIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  v6 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, 0, v6);

  v7 = objc_opt_new();

  return v7;
}

- (id)disconnectWithOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  v6 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v6);

  v7 = objc_opt_new();

  return v7;
}

- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ must implement method %@ and not call super (action identifier: %@)", &v17, 0x20u);
  }

  v10 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v10);

  v11 = objc_opt_new();
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  handlerCopy[2](handlerCopy);
}

- (NSProgress)fetchThumbnailsForItemIdentifiers:(NSArray *)itemIdentifiers requestedSize:(CGSize)size perThumbnailCompletionHandler:(void *)perThumbnailCompletionHandler completionHandler:(void *)completionHandler
{
  v7 = completionHandler;
  v8 = FPNotSupportedError();
  (*(completionHandler + 2))(v7, v8);

  return 0;
}

- (id)enumeratorForContainerItemIdentifier:(NSFileProviderItemIdentifier)containerItemIdentifier error:(NSError *)error
{
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (id)enumeratorForSearchQuery:(id)query error:(id *)error
{
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderExtension(NSFileProviderActions) setLastUsedDate:forItemIdentifier:completionHandler:];
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  }

  return 0;
}

- (BOOL)_fp_itemsMightBeTheSame:(id)same otherItem:(id)item url:(id)url
{
  v72[5] = *MEMORY[0x1E69E9840];
  sameCopy = same;
  itemCopy = item;
  urlCopy = url;
  v11 = contentTypeOfItem(sameCopy);
  v12 = contentTypeOfItem(itemCopy);
  v13 = v11;
  v14 = v12;
  v15 = isFolderContentType(v13);
  if (v15 != isFolderContentType(v14) || (areCompatibleContentTypes(v13, v14, *MEMORY[0x1E6982FF8]) & 1) == 0)
  {

LABEL_28:
    v48 = fp_current_or_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [NSFileProviderExtension(CreateItem) _fp_itemsMightBeTheSame:otherItem:url:];
    }

    goto LABEL_30;
  }

  v16 = areCompatibleContentTypes(v13, v14, *MEMORY[0x1E6982C80]);

  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = isFolderContentType(v13);
  if ((fpfs_supports_parent_mtime_iopolicy() & 1) != 0 || !v17)
  {
    contentModificationDate = [sameCopy contentModificationDate];
    [contentModificationDate timeIntervalSince1970];
    v20 = v19;

    contentModificationDate2 = [itemCopy contentModificationDate];
    [contentModificationDate2 timeIntervalSince1970];
    v23 = v22;

    if (trunc(v20) != trunc(v23))
    {
      v48 = fp_current_or_default_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [NSFileProviderExtension(CreateItem) _fp_itemsMightBeTheSame:otherItem:url:];
      }

LABEL_30:

      v49 = 0;
      goto LABEL_31;
    }
  }

  if ((v17 & 1) == 0)
  {
    v63 = 0;
    if (urlCopy)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [urlCopy path];
      [defaultManager fileExistsAtPath:path isDirectory:&v63];

      if (v63)
      {
        itemIdentifier = [itemCopy itemIdentifier];
        v27 = [(NSFileProviderExtension *)self URLForItemWithPersistentIdentifier:itemIdentifier];

        v28 = urlCopy;
        v29 = v27;
        memset(&v70, 0, sizeof(v70));
        memset(&v69, 0, sizeof(v69));
        path2 = [v28 path];
        v31 = lstat([path2 fileSystemRepresentation], &v70);

        if ((v31 & 0x80000000) == 0)
        {
          path3 = [v29 path];
          v33 = lstat([path3 fileSystemRepresentation], &v69);

          if ((v33 & 0x80000000) == 0 && (v70.st_mode & 0xF000) == 0x4000 && (v69.st_mode & 0xF000) == 0x4000 && v70.st_mtimespec.tv_sec == v69.st_mtimespec.tv_sec)
          {
            v68 = 0;
            path4 = [v28 path];
            if ((fpfs_num_entries([path4 fileSystemRepresentation], 0, &v68 + 1) & 0x80000000) == 0)
            {
              v56 = v28;
              path5 = [v29 path];
              v36 = fpfs_num_entries([path5 fileSystemRepresentation], 0, &v68);

              if (v36 < 0 || HIDWORD(v68) != v68)
              {
              }

              else
              {
                v37 = *MEMORY[0x1E695DA98];
                v72[0] = *MEMORY[0x1E695DB50];
                v72[1] = v37;
                v38 = *MEMORY[0x1E695DBC8];
                v72[2] = *MEMORY[0x1E695DB78];
                v72[3] = v38;
                v72[4] = *MEMORY[0x1E695DBB8];
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:5];
                defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                v60 = v39;
                v41 = [defaultManager2 enumeratorAtURL:v56 includingPropertiesForKeys:v39 options:16 errorHandler:0];

                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                obj = v41;
                v59 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
                if (v59)
                {
                  v58 = *v65;
                  while (2)
                  {
                    for (i = 0; i != v59; ++i)
                    {
                      if (*v65 != v58)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v43 = *(*(&v64 + 1) + 8 * i);
                      relativePath = [v43 relativePath];
                      v62 = [v29 URLByAppendingPathComponent:relativePath];

                      v61 = [v43 resourceValuesForKeys:v60 error:0];
                      v45 = [v62 resourceValuesForKeys:v60 error:0];
                      v46 = [v61 isEqual:v45];

                      if (!v46)
                      {
                        v47 = 0;
                        goto LABEL_48;
                      }
                    }

                    v59 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
                    if (v59)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v47 = 1;
LABEL_48:

                if (v47)
                {
                  goto LABEL_45;
                }
              }

LABEL_42:
              v55 = fp_current_or_default_log();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                [NSFileProviderExtension(CreateItem) _fp_itemsMightBeTheSame:otherItem:url:];
              }

LABEL_45:
              v49 = 1;
LABEL_46:

              goto LABEL_31;
            }
          }
        }

        goto LABEL_42;
      }
    }

    documentSize = [sameCopy documentSize];
    documentSize2 = [itemCopy documentSize];
    v54 = [documentSize isEqual:documentSize2];

    if ((v54 & 1) == 0)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [NSFileProviderExtension(CreateItem) _fp_itemsMightBeTheSame:otherItem:url:];
      }

      v49 = 0;
      goto LABEL_46;
    }
  }

  v49 = 1;
LABEL_31:

  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler
{
  templateCopy = template;
  contentsCopy = contents;
  handlerCopy = handler;
  v16 = templateCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSFileProviderExtension(CreateItem) createItemBasedOnTemplate:a2 fields:? contents:? options:? completionHandler:?];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__NSFileProviderExtension_CreateItem__createItemBasedOnTemplate_fields_contents_options_completionHandler___block_invoke;
  aBlock[3] = &unk_1E793D960;
  optionsCopy = options;
  aBlock[4] = self;
  v17 = v16;
  v48 = v17;
  v18 = contentsCopy;
  v49 = v18;
  v19 = handlerCopy;
  v50 = v17;
  v51 = v19;
  v53 = a2;
  fieldsCopy = fields;
  v20 = _Block_copy(aBlock);
  if ([v17 isFolder] && (objc_msgSend(v17, "isPackage") & 1) == 0)
  {
    filename = [v17 filename];
    parentItemIdentifier = [v17 parentItemIdentifier];
    [(NSFileProviderExtension *)self createDirectoryWithName:filename inParentItemIdentifier:parentItemIdentifier completionHandler:v20];

    goto LABEL_21;
  }

  typeIdentifier = [v17 typeIdentifier];
  v22 = [typeIdentifier isEqualToString:*MEMORY[0x1E69638A0]];
  if (v18 || (v22 & 1) == 0)
  {

    goto LABEL_13;
  }

  symlinkTargetPath = [v17 symlinkTargetPath];

  if (!symlinkTargetPath)
  {
LABEL_15:
    if ((options & 1) == 0)
    {
      [NSFileProviderExtension(CreateItem) createItemBasedOnTemplate:a2 fields:self contents:? options:? completionHandler:?];
    }

    (*(v19 + 2))(v19, 0, 0);
    goto LABEL_20;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fp_secureTempDirectoryIgnoringPersona = [MEMORY[0x1E695DFF8] fp_secureTempDirectoryIgnoringPersona];
  v46 = 0;
  v26 = [defaultManager createDirectoryAtURL:fp_secureTempDirectoryIgnoringPersona withIntermediateDirectories:1 attributes:0 error:&v46];
  v27 = v46;
  if ((v26 & 1) == 0)
  {
    (*(v19 + 2))(v19, 0, v27);

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v43 = defaultManager;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v30 = fp_secureTempDirectoryIgnoringPersona;
  v31 = uUIDString;
  v42 = v30;
  v32 = [v30 URLByAppendingPathComponent:uUIDString];

  symlinkTargetPath2 = [v17 symlinkTargetPath];
  LODWORD(v31) = symlink([symlinkTargetPath2 fileSystemRepresentation], objc_msgSend(v32, "fileSystemRepresentation"));

  v41 = v31;
  if (v31)
  {
    v34 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];

    v35 = v43;
    [v43 removeItemAtURL:v32 error:0];
    v27 = v34;
    (*(v19 + 2))(v19, 0, v34);
    v18 = 0;
  }

  else
  {
    v18 = v32;
    v35 = v43;
  }

  if (!v41)
  {
LABEL_13:
    if (v18)
    {
      WeakRetained = objc_loadWeakRetained(&self->_extensionContext);
      parentItemIdentifier2 = [v17 parentItemIdentifier];
      filename2 = [v17 filename];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __107__NSFileProviderExtension_CreateItem__createItemBasedOnTemplate_fields_contents_options_completionHandler___block_invoke_353;
      v44[3] = &unk_1E793D988;
      v45 = v20;
      [WeakRetained importDocumentAtURL:v18 intoFolderWithIdentifier:parentItemIdentifier2 originalName:filename2 extensionInstance:self reply:v44];

      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_21:
}

void __107__NSFileProviderExtension_CreateItem__createItemBasedOnTemplate_fields_contents_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ((*(a1 + 72) & 1) != 0 && [v6 fp_isFileProviderError:-1001])
    {
      v8 = [v7 fp_userInfoItem];
      v9 = v8;
      if (v8 && [v8 conformsToProtocol:&unk_1F1FCDA80] && objc_msgSend(*(a1 + 32), "_fp_itemsMightBeTheSame:otherItem:url:", *(a1 + 40), v9, *(a1 + 48)))
      {
        (*(*(a1 + 64) + 16))();
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  else if (v5)
  {
    v10 = contentTypeOfItem(v5);
    v9 = [v10 identifier];

    if (![v9 length] && (dyld_program_sdk_at_least() & 1) == 0)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Working around missing type identifier for item created by legacy file provider", buf, 2u);
      }

      v12 = [*(a1 + 40) typeIdentifier];

      v9 = v12;
    }

    v13 = [FPItem alloc];
    v14 = [*(a1 + 56) providerDomainID];
    v15 = [v5 itemIdentifier];
    v16 = [v5 parentItemIdentifier];
    v17 = [v5 filename];
    v18 = [(FPItem *)v13 initWithProviderDomainID:v14 itemIdentifier:v15 parentItemIdentifier:v16 filename:v17 typeIdentifier:v9];

    if (!v18)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"NSFileProviderExtension.m" lineNumber:896 description:{@"item %@ was returned with incomplete properties", v5}];
    }

    v20 = [*(a1 + 56) lastUsedDate];
    [(FPItem *)v18 setLastUsedDate:v20];

    v21 = [*(a1 + 56) tags];
    [(FPItem *)v18 setTags:v21];

    v22 = [*(a1 + 56) favoriteRank];
    [(FPItem *)v18 setFavoriteRank:v22];

    v23 = [*(a1 + 56) creationDate];
    [(FPItem *)v18 setCreationDate:v23];

    v24 = [*(a1 + 56) contentModificationDate];
    [(FPItem *)v18 setContentModificationDate:v24];

    -[FPItem setFileSystemFlags:](v18, "setFileSystemFlags:", [*(a1 + 56) fileSystemFlags]);
    v25 = [*(a1 + 56) extendedAttributes];
    [(FPItem *)v18 setExtendedAttributes:v25];

    v26 = [*(a1 + 56) quarantineBlob];
    [(FPItem *)v18 setQuarantineBlob:v26];

    -[FPItem setContentZoneRoot:](v18, "setContentZoneRoot:", [*(a1 + 56) isContentZoneRoot]);
    -[FPItem setTypeAndCreator:](v18, "setTypeAndCreator:", [*(a1 + 56) typeAndCreator]);
    v27 = *(a1 + 88) & 0xFFFFFFFFFFFFFFF8;
    if (v27)
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [v5 itemVersion];
      }

      else
      {
        v28 = objc_opt_new();
      }

      v29 = v28;
      v30 = *(a1 + 32);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __107__NSFileProviderExtension_CreateItem__createItemBasedOnTemplate_fields_contents_options_completionHandler___block_invoke_346;
      v31[3] = &unk_1E793D938;
      v32 = v5;
      v33 = *(a1 + 64);
      [v30 changeItem:v18 baseVersion:v29 changedFields:v27 contents:0 options:0x10000 completionHandler:v31];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_25;
  }

  (*(*(a1 + 64) + 16))();
LABEL_26:
}

void __107__NSFileProviderExtension_CreateItem__createItemBasedOnTemplate_fields_contents_options_completionHandler___block_invoke_346(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  if (!v8)
  {
LABEL_6:
    v14 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

  v9 = dyld_program_sdk_at_least();
  v10 = fp_current_or_default_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v8 fp_prettyDescription];
      v19 = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ created, but the provider failed to apply properties afterwards. Returning error: %@", &v19, 0x16u);
    }

    goto LABEL_6;
  }

  if (v11)
  {
    v15 = *(a1 + 32);
    v16 = [v8 fp_prettyDescription];
    v19 = 138412546;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ created, but the provider failed to apply properties afterwards. Error ignored: %@", &v19, 0x16u);
  }

  v17 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 16);
LABEL_10:
  v14();

  v18 = *MEMORY[0x1E69E9840];
}

- (void)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__22;
  v26 = __Block_byref_object_dispose__22;
  v27 = 0;
  obj = 0;
  v13 = [(NSFileProviderExtension *)self itemForIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v27, obj);
  if (v13)
  {
    if (options >> 31 || !hasConflictingVersion(v13, versionCopy, 1uLL))
    {
      if ((options & 1) != 0 || ([v13 childItemCount], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "longValue"), v15, !v16))
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __102__NSFileProviderExtension_DeleteItem__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke;
        v17[3] = &unk_1E793D9B0;
        v17[4] = self;
        v19 = handlerCopy;
        v18 = identifierCopy;
        v20 = &v22;
        [(NSFileProviderExtension *)self deleteItemWithIdentifier:v18 completionHandler:v17];

        goto LABEL_11;
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1007 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v14);
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] fileProviderErrorForRejectedDeletionOfItem:v13];
      (*(handlerCopy + 2))(handlerCopy, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v23[5]);
  }

LABEL_11:
  _Block_object_dispose(&v22, 8);
}

void __102__NSFileProviderExtension_DeleteItem__deleteItemWithIdentifier_baseVersion_options_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v5 = [WeakRetained usesFPFS];

  if (v3 || (v5 & 1) == 0)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = *(a1[7] + 8);
    obj = *(v8 + 40);
    v9 = [v6 itemForIdentifier:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    v10 = a1[6];
    if (v9)
    {
      v11 = [MEMORY[0x1E696ABC0] fileProviderErrorForRejectedDeletionOfItem:v9];
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      (*(v10 + 16))(v10, 0);
    }
  }
}

- (void)itemChanged:baseVersion:changedFields:contents:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  objc_opt_class();
  v4 = OUTLINED_FUNCTION_4_5();
  v5 = NSStringFromSelector(v4);
  [v6 handleFailureInMethod:v0 object:v3 file:@"NSFileProviderExtension.m" lineNumber:339 description:{@"%@ %@ called with object of unexpected class %@.", v1, v5, objc_opt_class()}];
}

@end