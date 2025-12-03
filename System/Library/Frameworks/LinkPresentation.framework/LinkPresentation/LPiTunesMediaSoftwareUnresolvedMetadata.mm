@interface LPiTunesMediaSoftwareUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaSoftwareUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaSoftwareMetadata);
  [(LPiTunesMediaSoftwareMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaSoftwareMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaSoftwareMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaSoftwareMetadata *)v3 setSubtitle:self->_subtitle];
  [(LPiTunesMediaSoftwareMetadata *)v3 setGenre:self->_genre];
  [(LPiTunesMediaSoftwareMetadata *)v3 setPlatform:self->_platform];
  if ([(NSNumber *)self->_hasMessagesExtension BOOLValue])
  {
    bOOLValue = [(NSNumber *)self->_isHiddenFromSpringboard BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(LPiTunesMediaSoftwareMetadata *)v3 setIsMessagesOnlyApp:bOOLValue];
  if (self->_screenshots)
  {
    [(LPiTunesMediaSoftwareMetadata *)v3 setScreenshots:MEMORY[0x1E695E0F0]];
  }

  return v3;
}

- (id)assetsToFetch
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self->_icon, 0}];
  v4 = v3;
  if (self->_messagesAppIcon)
  {
    [v3 addObject:?];
  }

  if ([(NSArray *)self->_screenshots count])
  {
    firstObject = [(NSArray *)self->_screenshots firstObject];
    [v4 addObject:firstObject];
  }

  if (self->_previewVideo)
  {
    [v4 addObject:?];
  }

  return v4;
}

@end