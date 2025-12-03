@interface PHAssetID
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadFromAsset:(id)asset;
- (void)prepareForReuse;
@end

@implementation PHAssetID

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHAssetID);
  uuid = [(PHAssetID *)self uuid];
  [(PHAssetID *)v4 setUuid:uuid];

  directory = [(PHAssetID *)self directory];
  [(PHAssetID *)v4 setDirectory:directory];

  filename = [(PHAssetID *)self filename];
  [(PHAssetID *)v4 setFilename:filename];

  libraryID = [(PHAssetID *)self libraryID];
  [(PHAssetID *)v4 setLibraryID:libraryID];

  [(PHAssetID *)v4 setBundleScope:[(PHAssetID *)self bundleScope]];
  return v4;
}

- (void)prepareForReuse
{
  uuid = self->_uuid;
  self->_uuid = 0;

  directory = self->_directory;
  self->_directory = 0;

  filename = self->_filename;
  self->_filename = 0;

  libraryID = self->_libraryID;
  self->_libraryID = 0;

  self->_bundleScope = 0;
}

- (void)loadFromAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v6 = [uuid copy];
  uuid = self->_uuid;
  self->_uuid = v6;

  directory = [assetCopy directory];
  v9 = [directory copy];
  directory = self->_directory;
  self->_directory = v9;

  filename = [assetCopy filename];
  v12 = [filename copy];
  filename = self->_filename;
  self->_filename = v12;

  libraryID = [assetCopy libraryID];
  v15 = [libraryID copy];
  libraryID = self->_libraryID;
  self->_libraryID = v15;

  LOWORD(libraryID) = [assetCopy bundleScope];
  self->_bundleScope = libraryID;
}

@end