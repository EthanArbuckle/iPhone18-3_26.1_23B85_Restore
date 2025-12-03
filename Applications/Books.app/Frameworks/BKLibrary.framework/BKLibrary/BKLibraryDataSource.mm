@interface BKLibraryDataSource
- (BKLibraryManager)libraryManager;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetsWithCompletion:(id)completion;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
@end

@implementation BKLibraryDataSource

- (void)fetchAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  [NSException raise:NSInvalidArgumentException format:@"This is an abstract class. Don't call this method"];
  v5 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
  v4 = objc_retainBlock(completionCopy);

  if (v4)
  {
    v4[2](v4, 0, v5);
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v6 = v4;
    v5 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
    v6[2](v6, 0, v5);

    v4 = v6;
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v7 = v5;
    v6 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v6);

    v5 = v7;
  }
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v7 = v5;
    v6 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
    v7[2](v7, 0, v6);

    v5 = v7;
  }
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end