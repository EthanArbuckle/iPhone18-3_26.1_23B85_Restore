@interface BKLibraryDataSource
- (BKLibraryManager)libraryManager;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetsWithCompletion:(id)a3;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSource

- (void)fetchAssetsWithCompletion:(id)a3
{
  v3 = a3;
  [NSException raise:NSInvalidArgumentException format:@"This is an abstract class. Don't call this method"];
  v5 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
  v4 = objc_retainBlock(v3);

  if (v4)
  {
    v4[2](v4, 0, v5);
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v6 = v4;
    v5 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
    v6[2](v6, 0, v5);

    v4 = v6;
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v7 = v5;
    v6 = [NSError errorWithDomain:@"kBKLibraryDataSourceDomain" code:kBKLibraryDataSourceErrorAbstractMethodError userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v6);

    v5 = v7;
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
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