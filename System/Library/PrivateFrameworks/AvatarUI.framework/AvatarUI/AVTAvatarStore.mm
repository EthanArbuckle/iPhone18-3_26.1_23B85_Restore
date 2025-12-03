@interface AVTAvatarStore
+ (id)defaultImageGeneratorForEnvironment:(id)environment;
- (AVTAvatarStore)init;
- (AVTAvatarStore)initWithImageGenerator:(id)generator environment:(id)environment;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store imageGenerator:(id)generator environment:(id)environment;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store imageGenerator:(id)generator imageStore:(id)imageStore environment:(id)environment;
- (AVTStickerBackendDelegate)stickerBackendDelegate;
- (BOOL)canCreateAvatar;
- (BOOL)canCreateAvatarWithError:(id *)error;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)generateThumbnailsForAvatarRecord:(id)record avatar:(id)avatar error:(id *)error;
- (BOOL)generateThumbnailsForAvatarRecords:(id)records error:(id *)error;
- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)record originalRecord:(id)originalRecord error:(id *)error;
- (id)avatarsForFetchRequest:(id)request error:(id *)error;
- (id)recentStickersForFetchRequest:(id)request error:(id *)error;
- (void)clearContentAtLocation:(id)location;
- (void)deleteAvatar:(id)avatar completionHandler:(id)handler;
- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)deleteImagesForAvatarRecordIdentifier:(id)identifier error:(id *)error;
- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler;
- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)duplicateAvatar:(id)avatar completionBlock:(id)block;
- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler;
- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock;
- (void)setStickerBackendDelegate:(id)delegate;
- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider;
@end

@implementation AVTAvatarStore

+ (id)defaultImageGeneratorForEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [AVTImageStore alloc];
  coreEnvironment = [environmentCopy coreEnvironment];
  imageStoreLocation = [environmentCopy imageStoreLocation];
  v7 = [(AVTImageStore *)v4 initWithEnvironment:coreEnvironment validateImages:1 location:imageStoreLocation];

  renderer = [environmentCopy renderer];
  v9 = [[AVTAvatarRecordImageGenerator alloc] initWithImageStore:v7 renderer:renderer environment:environmentCopy];

  return v9;
}

- (AVTAvatarStore)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E348]);
  v4 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v3];

  return v4;
}

- (AVTAvatarStore)initWithImageGenerator:(id)generator environment:(id)environment
{
  v6 = MEMORY[0x1E698E348];
  environmentCopy = environment;
  generatorCopy = generator;
  v9 = objc_alloc_init(v6);
  v10 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v9 imageGenerator:generatorCopy environment:environmentCopy];

  return v10;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store
{
  storeCopy = store;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [objc_opt_class() defaultImageGeneratorForEnvironment:v5];
  v7 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:storeCopy imageGenerator:v6 environment:v5];

  return v7;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store imageGenerator:(id)generator environment:(id)environment
{
  environmentCopy = environment;
  generatorCopy = generator;
  storeCopy = store;
  v11 = [AVTImageStore alloc];
  coreEnvironment = [environmentCopy coreEnvironment];
  stickerImageStoreLocation = [environmentCopy stickerImageStoreLocation];
  v14 = [(AVTImageStore *)v11 initWithEnvironment:coreEnvironment validateImages:0 location:stickerImageStoreLocation];

  v15 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:storeCopy imageGenerator:generatorCopy imageStore:v14 environment:environmentCopy];
  return v15;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)store imageGenerator:(id)generator imageStore:(id)imageStore environment:(id)environment
{
  storeCopy = store;
  generatorCopy = generator;
  imageStoreCopy = imageStore;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = AVTAvatarStore;
  v15 = [(AVTAvatarStore *)&v19 init];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [storeCopy setImageHandlingDelegate:v15];
    }

    objc_storeStrong(&v15->_persistenceAvatarStore, store);
    objc_storeStrong(&v15->_imageGenerator, generator);
    objc_storeStrong(&v15->_imageStore, imageStore);
    logger = [environmentCopy logger];
    logger = v15->_logger;
    v15->_logger = logger;
  }

  return v15;
}

- (BOOL)canCreateAvatar
{
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  canCreateAvatar = [persistenceAvatarStore canCreateAvatar];

  return canCreateAvatar;
}

- (BOOL)canCreateAvatarWithError:(id *)error
{
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  LOBYTE(error) = [persistenceAvatarStore canCreateAvatarWithError:error];

  return error;
}

- (id)avatarsForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  v8 = [persistenceAvatarStore avatarsForFetchRequest:requestCopy error:error];

  return v8;
}

- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  [persistenceAvatarStore fetchAvatarsForFetchRequest:requestCopy completionHandler:handlerCopy];
}

- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  avatarCopy = avatar;
  recordCopy = record;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  [persistenceAvatarStore saveAvatarRecord:recordCopy thumbnailAvatar:avatarCopy completionBlock:blockCopy thumbnailGenerationCompletionBlock:completionBlockCopy];
}

- (void)deleteAvatar:(id)avatar completionHandler:(id)handler
{
  handlerCopy = handler;
  avatarCopy = avatar;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  [persistenceAvatarStore deleteAvatar:avatarCopy completionHandler:handlerCopy];
}

- (void)duplicateAvatar:(id)avatar completionBlock:(id)block
{
  blockCopy = block;
  avatarCopy = avatar;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  [persistenceAvatarStore duplicateAvatar:avatarCopy completionBlock:blockCopy];
}

- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  persistenceAvatarStore = [(AVTAvatarStore *)self persistenceAvatarStore];
  [persistenceAvatarStore deleteAvatarWithIdentifier:identifierCopy completionBlock:blockCopy];
}

- (void)clearContentAtLocation:(id)location
{
  locationCopy = location;
  logger = [(AVTAvatarStore *)self logger];
  [AVTImageStore clearContentAtLocation:locationCopy logger:logger];
}

- (BOOL)generateThumbnailsForAvatarRecord:(id)record avatar:(id)avatar error:(id *)error
{
  avatarCopy = avatar;
  recordCopy = record;
  imageGenerator = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(error) = [imageGenerator generateThumbnailsForAvatarRecord:recordCopy avatar:avatarCopy error:error];

  return error;
}

- (BOOL)generateThumbnailsForAvatarRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  imageGenerator = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(error) = [imageGenerator generateThumbnailsForAvatarRecords:recordsCopy error:error];

  return error;
}

- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)record originalRecord:(id)originalRecord error:(id *)error
{
  originalRecordCopy = originalRecord;
  recordCopy = record;
  imageGenerator = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(error) = [imageGenerator generateThumbnailsForDuplicateAvatarRecord:recordCopy originalRecord:originalRecordCopy error:error];

  return error;
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  imageGenerator = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(error) = [imageGenerator deleteThumbnailsForAvatarRecordsWithIdentifiers:identifiersCopy error:error];

  return error;
}

- (void)deleteImagesForAvatarRecordIdentifier:(id)identifier error:(id *)error
{
  error = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:identifier, error];
  imageStore = [(AVTAvatarStore *)self imageStore];
  [imageStore deleteImagesForItemsWithPersistentIdentifierPrefix:error error:0];
}

- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider
{
  providerCopy = provider;
  trackerCopy = tracker;
  imageGenerator = [(AVTAvatarStore *)self imageGenerator];
  [imageGenerator updateThumbnailsForChangesWithTracker:trackerCopy recordProvider:providerCopy];
}

- (void)setStickerBackendDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalStore = [(AVTAvatarStore *)self internalStore];
  [internalStore setStickerBackendDelegate:delegateCopy];
}

- (AVTStickerBackendDelegate)stickerBackendDelegate
{
  internalStore = [(AVTAvatarStore *)self internalStore];
  stickerBackendDelegate = [internalStore stickerBackendDelegate];

  return stickerBackendDelegate;
}

- (id)recentStickersForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  internalStore = [(AVTAvatarStore *)self internalStore];
  v8 = [internalStore recentStickersForFetchRequest:requestCopy error:error];

  return v8;
}

- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  internalStore = [(AVTAvatarStore *)self internalStore];
  [internalStore didUseStickerWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  internalStore = [(AVTAvatarStore *)self internalStore];
  [internalStore deleteRecentStickersWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler
{
  handlerCopy = handler;
  trackerCopy = tracker;
  internalStore = [(AVTAvatarStore *)self internalStore];
  [internalStore deleteRecentStickersForChangeTracker:trackerCopy completionHandler:handlerCopy];
}

@end