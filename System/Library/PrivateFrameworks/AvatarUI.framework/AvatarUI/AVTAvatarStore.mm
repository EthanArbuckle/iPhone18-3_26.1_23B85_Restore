@interface AVTAvatarStore
+ (id)defaultImageGeneratorForEnvironment:(id)a3;
- (AVTAvatarStore)init;
- (AVTAvatarStore)initWithImageGenerator:(id)a3 environment:(id)a4;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3 imageGenerator:(id)a4 environment:(id)a5;
- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3 imageGenerator:(id)a4 imageStore:(id)a5 environment:(id)a6;
- (AVTStickerBackendDelegate)stickerBackendDelegate;
- (BOOL)canCreateAvatar;
- (BOOL)canCreateAvatarWithError:(id *)a3;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)generateThumbnailsForAvatarRecord:(id)a3 avatar:(id)a4 error:(id *)a5;
- (BOOL)generateThumbnailsForAvatarRecords:(id)a3 error:(id *)a4;
- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)a3 originalRecord:(id)a4 error:(id *)a5;
- (id)avatarsForFetchRequest:(id)a3 error:(id *)a4;
- (id)recentStickersForFetchRequest:(id)a3 error:(id *)a4;
- (void)clearContentAtLocation:(id)a3;
- (void)deleteAvatar:(id)a3 completionHandler:(id)a4;
- (void)deleteAvatarWithIdentifier:(id)a3 completionBlock:(id)a4;
- (void)deleteImagesForAvatarRecordIdentifier:(id)a3 error:(id *)a4;
- (void)deleteRecentStickersForChangeTracker:(id)a3 completionHandler:(id)a4;
- (void)deleteRecentStickersWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4 completionHandler:(id)a5;
- (void)didUseStickerWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4 completionHandler:(id)a5;
- (void)duplicateAvatar:(id)a3 completionBlock:(id)a4;
- (void)fetchAvatarsForFetchRequest:(id)a3 completionHandler:(id)a4;
- (void)saveAvatarRecord:(id)a3 thumbnailAvatar:(id)a4 completionBlock:(id)a5 thumbnailGenerationCompletionBlock:(id)a6;
- (void)setStickerBackendDelegate:(id)a3;
- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4;
@end

@implementation AVTAvatarStore

+ (id)defaultImageGeneratorForEnvironment:(id)a3
{
  v3 = a3;
  v4 = [AVTImageStore alloc];
  v5 = [v3 coreEnvironment];
  v6 = [v3 imageStoreLocation];
  v7 = [(AVTImageStore *)v4 initWithEnvironment:v5 validateImages:1 location:v6];

  v8 = [v3 renderer];
  v9 = [[AVTAvatarRecordImageGenerator alloc] initWithImageStore:v7 renderer:v8 environment:v3];

  return v9;
}

- (AVTAvatarStore)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E348]);
  v4 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v3];

  return v4;
}

- (AVTAvatarStore)initWithImageGenerator:(id)a3 environment:(id)a4
{
  v6 = MEMORY[0x1E698E348];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v9 imageGenerator:v8 environment:v7];

  return v10;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3
{
  v4 = a3;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [objc_opt_class() defaultImageGeneratorForEnvironment:v5];
  v7 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v4 imageGenerator:v6 environment:v5];

  return v7;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3 imageGenerator:(id)a4 environment:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [AVTImageStore alloc];
  v12 = [v8 coreEnvironment];
  v13 = [v8 stickerImageStoreLocation];
  v14 = [(AVTImageStore *)v11 initWithEnvironment:v12 validateImages:0 location:v13];

  v15 = [(AVTAvatarStore *)self initWithPersistenceAvatarStore:v10 imageGenerator:v9 imageStore:v14 environment:v8];
  return v15;
}

- (AVTAvatarStore)initWithPersistenceAvatarStore:(id)a3 imageGenerator:(id)a4 imageStore:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = AVTAvatarStore;
  v15 = [(AVTAvatarStore *)&v19 init];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 setImageHandlingDelegate:v15];
    }

    objc_storeStrong(&v15->_persistenceAvatarStore, a3);
    objc_storeStrong(&v15->_imageGenerator, a4);
    objc_storeStrong(&v15->_imageStore, a5);
    v16 = [v14 logger];
    logger = v15->_logger;
    v15->_logger = v16;
  }

  return v15;
}

- (BOOL)canCreateAvatar
{
  v2 = [(AVTAvatarStore *)self persistenceAvatarStore];
  v3 = [v2 canCreateAvatar];

  return v3;
}

- (BOOL)canCreateAvatarWithError:(id *)a3
{
  v4 = [(AVTAvatarStore *)self persistenceAvatarStore];
  LOBYTE(a3) = [v4 canCreateAvatarWithError:a3];

  return a3;
}

- (id)avatarsForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTAvatarStore *)self persistenceAvatarStore];
  v8 = [v7 avatarsForFetchRequest:v6 error:a4];

  return v8;
}

- (void)fetchAvatarsForFetchRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self persistenceAvatarStore];
  [v8 fetchAvatarsForFetchRequest:v7 completionHandler:v6];
}

- (void)saveAvatarRecord:(id)a3 thumbnailAvatar:(id)a4 completionBlock:(id)a5 thumbnailGenerationCompletionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(AVTAvatarStore *)self persistenceAvatarStore];
  [v14 saveAvatarRecord:v13 thumbnailAvatar:v12 completionBlock:v11 thumbnailGenerationCompletionBlock:v10];
}

- (void)deleteAvatar:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self persistenceAvatarStore];
  [v8 deleteAvatar:v7 completionHandler:v6];
}

- (void)duplicateAvatar:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self persistenceAvatarStore];
  [v8 duplicateAvatar:v7 completionBlock:v6];
}

- (void)deleteAvatarWithIdentifier:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self persistenceAvatarStore];
  [v8 deleteAvatarWithIdentifier:v7 completionBlock:v6];
}

- (void)clearContentAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarStore *)self logger];
  [AVTImageStore clearContentAtLocation:v4 logger:v5];
}

- (BOOL)generateThumbnailsForAvatarRecord:(id)a3 avatar:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(a5) = [v10 generateThumbnailsForAvatarRecord:v9 avatar:v8 error:a5];

  return a5;
}

- (BOOL)generateThumbnailsForAvatarRecords:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(a4) = [v7 generateThumbnailsForAvatarRecords:v6 error:a4];

  return a4;
}

- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)a3 originalRecord:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(a5) = [v10 generateThumbnailsForDuplicateAvatarRecord:v9 originalRecord:v8 error:a5];

  return a5;
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTAvatarStore *)self imageGenerator];
  LOBYTE(a4) = [v7 deleteThumbnailsForAvatarRecordsWithIdentifiers:v6 error:a4];

  return a4;
}

- (void)deleteImagesForAvatarRecordIdentifier:(id)a3 error:(id *)a4
{
  v6 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:a3, a4];
  v5 = [(AVTAvatarStore *)self imageStore];
  [v5 deleteImagesForItemsWithPersistentIdentifierPrefix:v6 error:0];
}

- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self imageGenerator];
  [v8 updateThumbnailsForChangesWithTracker:v7 recordProvider:v6];
}

- (void)setStickerBackendDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarStore *)self internalStore];
  [v5 setStickerBackendDelegate:v4];
}

- (AVTStickerBackendDelegate)stickerBackendDelegate
{
  v2 = [(AVTAvatarStore *)self internalStore];
  v3 = [v2 stickerBackendDelegate];

  return v3;
}

- (id)recentStickersForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTAvatarStore *)self internalStore];
  v8 = [v7 recentStickersForFetchRequest:v6 error:a4];

  return v8;
}

- (void)didUseStickerWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTAvatarStore *)self internalStore];
  [v11 didUseStickerWithAvatarIdentifier:v10 stickerIdentifier:v9 completionHandler:v8];
}

- (void)deleteRecentStickersWithAvatarIdentifier:(id)a3 stickerIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTAvatarStore *)self internalStore];
  [v11 deleteRecentStickersWithAvatarIdentifier:v10 stickerIdentifier:v9 completionHandler:v8];
}

- (void)deleteRecentStickersForChangeTracker:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarStore *)self internalStore];
  [v8 deleteRecentStickersForChangeTracker:v7 completionHandler:v6];
}

@end