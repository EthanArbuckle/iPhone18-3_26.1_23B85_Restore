@interface PHAssetID
- (id)copyWithZone:(_NSZone *)a3;
- (void)loadFromAsset:(id)a3;
- (void)prepareForReuse;
@end

@implementation PHAssetID

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PHAssetID);
  v5 = [(PHAssetID *)self uuid];
  [(PHAssetID *)v4 setUuid:v5];

  v6 = [(PHAssetID *)self directory];
  [(PHAssetID *)v4 setDirectory:v6];

  v7 = [(PHAssetID *)self filename];
  [(PHAssetID *)v4 setFilename:v7];

  v8 = [(PHAssetID *)self libraryID];
  [(PHAssetID *)v4 setLibraryID:v8];

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

- (void)loadFromAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 copy];
  uuid = self->_uuid;
  self->_uuid = v6;

  v8 = [v4 directory];
  v9 = [v8 copy];
  directory = self->_directory;
  self->_directory = v9;

  v11 = [v4 filename];
  v12 = [v11 copy];
  filename = self->_filename;
  self->_filename = v12;

  v14 = [v4 libraryID];
  v15 = [v14 copy];
  libraryID = self->_libraryID;
  self->_libraryID = v15;

  LOWORD(v14) = [v4 bundleScope];
  self->_bundleScope = v14;
}

@end