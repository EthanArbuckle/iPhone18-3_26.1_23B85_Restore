@interface MPPlaceholderAVItem
- (BOOL)isValidPlayerSubstituteForItem:(id)item;
- (MPPlaceholderAVItem)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setAlbum:(id)album;
- (void)setArtist:(id)artist;
- (void)setDurationFromExternalMetadata:(double)metadata;
- (void)setExplicitTrack:(BOOL)track;
- (void)setMainTitle:(id)title;
- (void)setStoreItemInt64ID:(int64_t)d;
- (void)setSupportsLikedState:(BOOL)state;
@end

@implementation MPPlaceholderAVItem

- (BOOL)isValidPlayerSubstituteForItem:(id)item
{
  if (self == item)
  {
    return 1;
  }

  itemCopy = item;
  v4 = [itemCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)setSupportsLikedState:(BOOL)state
{
  if (*(&self->_supportsLikedState + 5) != state)
  {
    *(&self->_supportsLikedState + 5) = state;
  }
}

- (void)setStoreItemInt64ID:(int64_t)d
{
  if (self->_storeItemInt64ID != d)
  {
    self->_storeItemInt64ID = d;
  }
}

- (void)setMainTitle:(id)title
{
  titleCopy = title;
  mainTitle = self->_mainTitle;
  if (mainTitle != titleCopy)
  {
    v10 = titleCopy;
    v6 = [(NSString *)mainTitle isEqualToString:titleCopy];
    titleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_mainTitle;
      self->_mainTitle = v7;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      titleCopy = v10;
    }
  }
}

- (void)setExplicitTrack:(BOOL)track
{
  if (*(&self->_supportsLikedState + 3) != track)
  {
    *(&self->_supportsLikedState + 3) = track;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVItemIsExplicitDidChangeNotification" object:self];
  }
}

- (void)setDurationFromExternalMetadata:(double)metadata
{
  if (vabdd_f64(self->_durationFromExternalMetadata, metadata) > 2.22044605e-16)
  {
    self->_durationFromExternalMetadata = metadata;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVItemDurationAvailableNotification" object:self];
  }
}

- (void)setArtist:(id)artist
{
  artistCopy = artist;
  artist = self->_artist;
  if (artist != artistCopy)
  {
    v10 = artistCopy;
    v6 = [(NSString *)artist isEqualToString:artistCopy];
    artistCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_artist;
      self->_artist = v7;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      artistCopy = v10;
    }
  }
}

- (void)setAlbum:(id)album
{
  albumCopy = album;
  album = self->_album;
  if (album != albumCopy)
  {
    v10 = albumCopy;
    v6 = [(NSString *)album isEqualToString:albumCopy];
    albumCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_album;
      self->_album = v7;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      albumCopy = v10;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPlaceholderAVItem;
  v4 = [(MPAVItem *)&v8 description];
  mainTitle = [(MPPlaceholderAVItem *)self mainTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, mainTitle];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  album = [(MPPlaceholderAVItem *)self album];
  v6 = v4[68];
  v4[68] = album;

  artist = [(MPPlaceholderAVItem *)self artist];
  v8 = v4[69];
  v4[69] = artist;

  [(MPPlaceholderAVItem *)self durationFromExternalMetadata];
  v4[70] = v9;
  *(v4 + 541) = [(MPPlaceholderAVItem *)self isExplicitTrack];
  *(v4 + 542) = [(MPPlaceholderAVItem *)self isLikedStateEnabled];
  mainTitle = [(MPPlaceholderAVItem *)self mainTitle];
  v11 = v4[71];
  v4[71] = mainTitle;

  *(v4 + 543) = [(MPPlaceholderAVItem *)self supportsLikedState];
  v4[72] = [(MPPlaceholderAVItem *)self storeItemInt64ID];
  artworkCatalogBlock = [(MPPlaceholderAVItem *)self artworkCatalogBlock];
  v13 = v4[73];
  v4[73] = artworkCatalogBlock;

  return v4;
}

- (MPPlaceholderAVItem)init
{
  v7.receiver = self;
  v7.super_class = MPPlaceholderAVItem;
  v2 = [(MPAVItem *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v4 = [v3 localizedStringForKey:@"LOADING_AUDIO_LABEL" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    mainTitle = v2->_mainTitle;
    v2->_mainTitle = v4;
  }

  return v2;
}

@end