@interface AVFragmentedMovie
- (AVFragmentedMovie)initWithURL:(id)a3 options:(id)a4;
- (AVFragmentedMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)isAssociatedWithFragmentMinder;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3;
@end

@implementation AVFragmentedMovie

- (AVFragmentedMovie)initWithURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = v9;
  [v9 setValue:*MEMORY[0x1E695E4D0] forKey:0x1F0A8DA50];
  v13.receiver = self;
  v13.super_class = AVFragmentedMovie;
  v11 = [(AVMovie *)&v13 initWithURL:v6 options:v10];

  return v11;
}

- (NSArray)tracks
{
  v4.receiver = self;
  v4.super_class = AVFragmentedMovie;
  v2 = [(AVMovie *)&v4 tracks];

  return v2;
}

- (AVFragmentedMovieTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 trackWithTrackID:*&trackID];

  return v3;
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaType:mediaType];

  return v3;
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v5.receiver = self;
  v5.super_class = AVFragmentedMovie;
  v3 = [(AVMovie *)&v5 tracksWithMediaCharacteristic:mediaCharacteristic];

  return v3;
}

- (BOOL)isAssociatedWithFragmentMinder
{
  v2 = [(AVMovie *)self _assetInspectorLoader];
  v3 = [v2 isAssociatedWithFragmentMinder];

  return v3;
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVMovie *)self _assetInspectorLoader];
  [v4 _setIsAssociatedWithFragmentMinder:v3];
}

@end