@interface PHPhotoLibraryAttributes
- (BOOL)isCloudSyncEnabled;
- (PHPhotoLibraryAttributes)initWithLibraryIdentifier:(id)a3 cplSettings:(id)a4;
- (unsigned)cloudResourcePrefetchMode;
@end

@implementation PHPhotoLibraryAttributes

- (unsigned)cloudResourcePrefetchMode
{
  v2 = [(PHPhotoLibraryAttributes *)self cplSettings];
  v3 = [v2 prefetchMode];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return v3 == 0;
  }
}

- (BOOL)isCloudSyncEnabled
{
  v2 = [(PHPhotoLibraryAttributes *)self cplSettings];
  v3 = [v2 isICPLEnabled];

  return v3;
}

- (PHPhotoLibraryAttributes)initWithLibraryIdentifier:(id)a3 cplSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PHPhotoLibraryAttributes;
  v9 = [(PHPhotoLibraryAttributes *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pl_libraryIdentifier, a3);
    objc_storeStrong(&v10->_cplSettings, a4);
    v11 = [(PLPhotoLibraryIdentifier *)v10->_pl_libraryIdentifier name];
    name = v10->_name;
    v10->_name = v11;

    v13 = [(PLPhotoLibraryIdentifier *)v10->_pl_libraryIdentifier userDescription];
    userDescription = v10->_userDescription;
    v10->_userDescription = v13;
  }

  return v10;
}

@end