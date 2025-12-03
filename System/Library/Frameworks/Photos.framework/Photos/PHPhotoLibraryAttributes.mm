@interface PHPhotoLibraryAttributes
- (BOOL)isCloudSyncEnabled;
- (PHPhotoLibraryAttributes)initWithLibraryIdentifier:(id)identifier cplSettings:(id)settings;
- (unsigned)cloudResourcePrefetchMode;
@end

@implementation PHPhotoLibraryAttributes

- (unsigned)cloudResourcePrefetchMode
{
  cplSettings = [(PHPhotoLibraryAttributes *)self cplSettings];
  prefetchMode = [cplSettings prefetchMode];

  if (prefetchMode == 1)
  {
    return 2;
  }

  else
  {
    return prefetchMode == 0;
  }
}

- (BOOL)isCloudSyncEnabled
{
  cplSettings = [(PHPhotoLibraryAttributes *)self cplSettings];
  isICPLEnabled = [cplSettings isICPLEnabled];

  return isICPLEnabled;
}

- (PHPhotoLibraryAttributes)initWithLibraryIdentifier:(id)identifier cplSettings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = PHPhotoLibraryAttributes;
  v9 = [(PHPhotoLibraryAttributes *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pl_libraryIdentifier, identifier);
    objc_storeStrong(&v10->_cplSettings, settings);
    name = [(PLPhotoLibraryIdentifier *)v10->_pl_libraryIdentifier name];
    name = v10->_name;
    v10->_name = name;

    userDescription = [(PLPhotoLibraryIdentifier *)v10->_pl_libraryIdentifier userDescription];
    userDescription = v10->_userDescription;
    v10->_userDescription = userDescription;
  }

  return v10;
}

@end