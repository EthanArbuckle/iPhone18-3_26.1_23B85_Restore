@interface LPiTunesMediaRadioUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaRadioUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaRadioMetadata);
  [(LPiTunesMediaRadioMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaRadioMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaRadioMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaRadioMetadata *)v3 setCurator:self->_curator];
  metadata = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaRadioMetadata *)v3 setArtworkMetadata:metadata];

  return v3;
}

- (id)assetsToFetch
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_artwork)
  {
    v4[0] = self->_artwork;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end