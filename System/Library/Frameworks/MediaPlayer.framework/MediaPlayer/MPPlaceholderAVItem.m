@interface MPPlaceholderAVItem
- (BOOL)isValidPlayerSubstituteForItem:(id)a3;
- (MPPlaceholderAVItem)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setAlbum:(id)a3;
- (void)setArtist:(id)a3;
- (void)setDurationFromExternalMetadata:(double)a3;
- (void)setExplicitTrack:(BOOL)a3;
- (void)setMainTitle:(id)a3;
- (void)setStoreItemInt64ID:(int64_t)a3;
- (void)setSupportsLikedState:(BOOL)a3;
@end

@implementation MPPlaceholderAVItem

- (BOOL)isValidPlayerSubstituteForItem:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)setSupportsLikedState:(BOOL)a3
{
  if (*(&self->_supportsLikedState + 5) != a3)
  {
    *(&self->_supportsLikedState + 5) = a3;
  }
}

- (void)setStoreItemInt64ID:(int64_t)a3
{
  if (self->_storeItemInt64ID != a3)
  {
    self->_storeItemInt64ID = a3;
  }
}

- (void)setMainTitle:(id)a3
{
  v4 = a3;
  mainTitle = self->_mainTitle;
  if (mainTitle != v4)
  {
    v10 = v4;
    v6 = [(NSString *)mainTitle isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_mainTitle;
      self->_mainTitle = v7;

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      v4 = v10;
    }
  }
}

- (void)setExplicitTrack:(BOOL)a3
{
  if (*(&self->_supportsLikedState + 3) != a3)
  {
    *(&self->_supportsLikedState + 3) = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"MPAVItemIsExplicitDidChangeNotification" object:self];
  }
}

- (void)setDurationFromExternalMetadata:(double)a3
{
  if (vabdd_f64(self->_durationFromExternalMetadata, a3) > 2.22044605e-16)
  {
    self->_durationFromExternalMetadata = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"MPAVItemDurationAvailableNotification" object:self];
  }
}

- (void)setArtist:(id)a3
{
  v4 = a3;
  artist = self->_artist;
  if (artist != v4)
  {
    v10 = v4;
    v6 = [(NSString *)artist isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_artist;
      self->_artist = v7;

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      v4 = v10;
    }
  }
}

- (void)setAlbum:(id)a3
{
  v4 = a3;
  album = self->_album;
  if (album != v4)
  {
    v10 = v4;
    v6 = [(NSString *)album isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_album;
      self->_album = v7;

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"MPAVItemTitlesDidChangeNotification" object:self];

      v4 = v10;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPlaceholderAVItem;
  v4 = [(MPAVItem *)&v8 description];
  v5 = [(MPPlaceholderAVItem *)self mainTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MPPlaceholderAVItem *)self album];
  v6 = v4[68];
  v4[68] = v5;

  v7 = [(MPPlaceholderAVItem *)self artist];
  v8 = v4[69];
  v4[69] = v7;

  [(MPPlaceholderAVItem *)self durationFromExternalMetadata];
  v4[70] = v9;
  *(v4 + 541) = [(MPPlaceholderAVItem *)self isExplicitTrack];
  *(v4 + 542) = [(MPPlaceholderAVItem *)self isLikedStateEnabled];
  v10 = [(MPPlaceholderAVItem *)self mainTitle];
  v11 = v4[71];
  v4[71] = v10;

  *(v4 + 543) = [(MPPlaceholderAVItem *)self supportsLikedState];
  v4[72] = [(MPPlaceholderAVItem *)self storeItemInt64ID];
  v12 = [(MPPlaceholderAVItem *)self artworkCatalogBlock];
  v13 = v4[73];
  v4[73] = v12;

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