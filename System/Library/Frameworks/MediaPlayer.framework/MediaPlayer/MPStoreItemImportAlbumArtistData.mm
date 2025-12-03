@interface MPStoreItemImportAlbumArtistData
- (MPStoreItemImportAlbumArtistData)initWithAlbumArtistImportElements:(id)elements;
@end

@implementation MPStoreItemImportAlbumArtistData

- (MPStoreItemImportAlbumArtistData)initWithAlbumArtistImportElements:(id)elements
{
  elementsCopy = elements;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__MPStoreItemImportAlbumArtistData_initWithAlbumArtistImportElements___block_invoke;
  v13[3] = &unk_1E7677B50;
  v15 = a2;
  selfCopy = self;
  v14 = selfCopy;
  v7 = [elementsCopy msv_compactMap:v13];
  v12.receiver = selfCopy;
  v12.super_class = MPStoreItemImportAlbumArtistData;
  v8 = [(ML3StoreItemAlbumArtistData *)&v12 initWithLookupItems:v7];
  if (v8)
  {
    v9 = [elementsCopy copy];
    importElements = v8->_importElements;
    v8->_importElements = v9;
  }

  return v8;
}

id __70__MPStoreItemImportAlbumArtistData_initWithAlbumArtistImportElements___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 storeItem];
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPStoreItemImportAlbumArtistData.m" lineNumber:22 description:@"we should have a complete set of metadata here."];
  }

  return v3;
}

@end